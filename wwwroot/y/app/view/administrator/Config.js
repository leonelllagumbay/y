
Ext.define("iBOSe.view.administrator.Config",{
    extend: "Ext.panel.Panel",
    xtype: "iboseadminconfig",
    title: "Configuration",
    requires: [
        "iBOSe.view.administrator.ConfigController",
        "iBOSe.view.administrator.ConfigModel"
    ],

    controller: "administrator-config",
    viewModel: {
        type: "administrator-config"
    },

    html: "Hello, World!!"
});
