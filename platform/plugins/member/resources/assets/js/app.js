/**
 * First we will load all of this project's JavaScript dependencies which
 * includes Vue and other libraries. It is a great starting point when
 * building robust, powerful web applications using Vue and Laravel.
 */

import Botble from './utils';
import ActivityLogComponent from './components/dashboard/ActivityLogComponent';

require('./bootstrap');

/**
 * Next, we will create a fresh Vue application instance and attach it to
 * the page. Then, you may begin adding components to this application
 * or customize the JavaScript scaffolding to fit your unique needs.
 */

vueApp.booting(vue => {
    vue.component('activity-log-component', ActivityLogComponent);
});

require('./form');
require('./avatar');

$(document).ready(() => {
    if (window.noticeMessages) {
        window.noticeMessages.forEach(message => {
            Botble.showNotice(message.type, message.message, message.type === 'error' ? _.get(window.trans, 'notices.error') : _.get(window.trans, 'notices.success'));
        });
    }
});
