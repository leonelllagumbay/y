
Ext.define("iBOSe.view.mail.Mail",{
    extend: "Ext.panel.Panel",

    requires: [
        "iBOSe.view.mail.MailController",
        "iBOSe.view.mail.MailModel"
    ],
    xtype: "ibosemail",
    title: "eMail",
    padding: "0 0 20 0",
    closable: true,
    collapsible: true,

    controller: "mail-mail",
    viewModel: {
        type: "mail-mail"
    },

    html: "Hello, Mail!!"
});
