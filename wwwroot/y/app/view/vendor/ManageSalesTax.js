
Ext.define("iBOSe.view.vendor.ManageSalesTax",{
    extend: "Ext.panel.Panel",

    requires: [
        "iBOSe.view.vendor.ManageSalesTaxController",
        "iBOSe.view.vendor.ManageSalesTaxModel"
    ],
    xtype: "ibosemanagesalestax",
    title: "eManageSalesTax",
    padding: "0 0 20 0",
    closable: true,
    collapsible: true,

    controller: "vendor-managesalestax",
    viewModel: {
        type: "vendor-managesalestax"
    },

    html: "Hello, eManageSalesTax!!"
});
