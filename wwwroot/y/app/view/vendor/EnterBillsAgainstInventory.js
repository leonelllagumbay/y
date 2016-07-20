
Ext.define("iBOSe.view.vendor.EnterBillsAgainstInventory",{
    extend: "Ext.panel.Panel",

    requires: [
        "iBOSe.view.vendor.EnterBillsAgainstInventoryController",
        "iBOSe.view.vendor.EnterBillsAgainstInventoryModel"
    ],
    xtype: "iboseenterbillsagainstinventory",
    title: "eEnterBillsAgainstInventory",
    padding: "0 0 20 0",
    closable: true,
    collapsible: true,

    controller: "vendor-enterbillsagainstinventory",
    viewModel: {
        type: "vendor-enterbillsagainstinventory"
    },

    html: "Hello, eEnterBillsAgainstInventory!!"
});
