
Ext.define("iBOSe.view.permission.Permission",{
    extend: "Ext.panel.Panel",

    requires: [
        "iBOSe.view.permission.PermissionController",
        "iBOSe.view.permission.PermissionModel"
    ],
    xtype: "ibosepermissions",
    title: "ePermissions",
    padding: "0 0 20 0",
    closable: true,
    collapsible: true,

    controller: "permission-permission",
    viewModel: {
        type: "permission-permission"
    },

    html: "Hello, ePermissions!!"
});
