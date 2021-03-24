(function (window) {
    window.__env = window.__env || {};
    window.__env.HOST_PROD = 'ggdev.giggso.com';
    window.__env.BASE_URL_PROD = 'https://' + window['__env'].HOST_PROD + '/';
    window.__env.SOCKETIO_PROD = 'https://' + window['__env'].HOST_PROD + '/realtime';
    window.__env.SITEURL_PROD = 'https://' + window['__env'].HOST_PROD + '/';
    window.__env.SITESUBURL_PROD = 'https://' + window['__env'].HOST_PROD + '/';
    window.__env.APPSPHPURL_PROD = 'https://' + window['__env'].HOST_PROD + '/app/';
    window.__env.API_BASE_URL_PROD = 'https://' + window['__env'].HOST_PROD+ '/giggso_kc/rest/';
    window.__env.KEYCLOAKURL_PROD = 'https://ggdevkc.giggso.com/auth';
    window.__env.KEYCLOAKREALM_PROD = 'giggso';
    window.__env.KEYCLOAKCLIENTID_PROD = 'angular-cors';

    window.__env.KIBANA_BASE_URL = 'https://' + window['__env'].HOST_PROD + '/kibana/app/kibana#/visualize/';
    window.__env.LOGMANAGEMENT_DASHBOARD_BASE_URL = 'https://' + window['__env'].HOST_PROD + ':30601/kibana/app/kibana#/dashboard/';
    window.__env.BOT_SUPPORT_GROUP = '1';
    window.__env.BOT_USER_EMAIL = 'botuser@giggso.com';
    window.__env.APP_NAME = 'Giggso';
    window.__env.CLIENT_NAME = '';
    window.__env.DIALOGFLOW_TOKEN = 'abd5f6a0dc614b018302d7587f4e3dc3';

}(this));
