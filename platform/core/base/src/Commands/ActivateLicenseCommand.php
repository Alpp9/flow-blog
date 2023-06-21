<?php

namespace Botble\Base\Commands;

use Botble\Base\Commands\Traits\ValidateCommandInput;
use Botble\Base\Exceptions\LicenseIsAlreadyActivatedException;
use Botble\Base\Supports\Core;
use Illuminate\Console\Command;
use Symfony\Component\Console\Attribute\AsCommand;
use Throwable;

#[AsCommand('cms:license:activate', 'Activate license')]
class ActivateLicenseCommand extends Command
{
    use ValidateCommandInput;

    public function __construct(protected Core $core)
    {
        parent::__construct();
    }

    public function handle(): int
    {
        $buyer = $this->askWithValidate('Enter username', 'required|min:2|max:60');

        if (filter_var($buyer, FILTER_VALIDATE_URL)) {
            $buyer = explode('/', $buyer);
            $username = end($buyer);

            $this->components->error(sprintf('Envato username must not a URL. Please try with username <comment>%s</comment>!', $username));

            return self::FAILURE;
        }

        $purchasedCode = $this->askWithValidate('Enter purchase code', 'required|min:19|max:36');

        try {
            return $this->performUpdate($purchasedCode, $buyer);
        } catch (LicenseIsAlreadyActivatedException) {
            $this->core->revokeLicense($purchasedCode, $buyer);

            return tap(
                $this->performUpdate($purchasedCode, $buyer),
                fn () => $this->components->warn('Your license on the previous domain has been revoked!')
            );
        } catch (Throwable $exception) {
            $this->components->error($exception->getMessage());

            return self::FAILURE;
        }
    }

    protected function performUpdate(string $purchasedCode, string $buyer): int
    {
        $status = $this->core->activateLicense($purchasedCode, $buyer);

        if (! $status) {
            $this->components->error('This license is invalid.');

            return self::FAILURE;
        }

        setting()
            ->set(['licensed_to' => $buyer])
            ->save();

        $this->components->info('This license has been activated successfully.');

        return self::SUCCESS;
    }
}
