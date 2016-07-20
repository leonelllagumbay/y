
Ext.define("iBOSe.view.user.User",{
    extend: "Ext.panel.Panel",

    requires: [
        "iBOSe.view.user.UserController",
        "iBOSe.view.user.UserModel"
    ],
    xtype: "iboseuser",
    title: "eUser",
    padding: "0 0 20 0",
    closable: true,
    collapsible: true,

    controller: "user-user",
    viewModel: {
        type: "user-user"
    },

    html: "Hello, eUser!!"
});
