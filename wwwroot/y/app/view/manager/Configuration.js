
Ext.define("iBOSe.view.manager.Configuration",{
    extend: "Ext.panel.Panel",

    requires: [
        "iBOSe.view.manager.ConfigurationController",
        "iBOSe.view.manager.ConfigurationModel"
    ],
    xtype: "iboseconfiguration",
    title: "eConfiguration",
    padding: "0 0 20 0",
    closable: true,
    collapsible: true,

    controller: "manager-configuration",
    viewModel: {
        type: "manager-configuration"
    },

    html: "Hello, eConfiguration!!"
});
