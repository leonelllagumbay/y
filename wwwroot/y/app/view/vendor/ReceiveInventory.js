
Ext.define("iBOSe.view.vendor.ReceiveInventory",{
    extend: "Ext.panel.Panel",

    requires: [
        "iBOSe.view.vendor.ReceiveInventoryController",
        "iBOSe.view.vendor.ReceiveInventoryModel"
    ],
    xtype: "ibosereceiveinventory",
    title: "eReceiveInventory",
    padding: "0 0 20 0",
    closable: true,
    collapsible: true,

    controller: "vendor-receiveinventory",
    viewModel: {
        type: "vendor-receiveinventory"
    },

    html: "Hello, eReceiveInventory!!"
});
