
Ext.define("iBOSe.view.administrator.Administrator",{
    extend: "Ext.panel.Panel",

    requires: [
        "iBOSe.view.administrator.AdministratorController",
        "iBOSe.view.administrator.AdministratorModel"
    ],
    xtype: "iboseadministrator",
    closable: true,
    collapsible: true,
    title: "eAdmin",
    padding: "0 0 20 0",

    controller: "administrator-administrator",
    viewModel: {
        type: "administrator-administrator"
    },

    items: [{
    	xtype: 'textfield',
    	fieldLabel: 'eAdmin'
    }]
});
