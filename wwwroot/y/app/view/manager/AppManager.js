
Ext.define("iBOSe.view.manager.AppManager",{
    extend: "Ext.panel.Panel",

    requires: [
        "iBOSe.view.manager.AppManagerController",
        "iBOSe.view.manager.AppManagerModel"
    ],
    xtype: "iboseappmanager",
    title: "eAppManager",
    padding: "0 0 20 0",
    closable: true,
    collapsible: true,

    controller: "manager-appmanager",
    viewModel: {
        type: "manager-appmanager"
    },

    html: "Hello, eAppManager!!"
});
