
Ext.define("iBOSe.view.vendor.EnterBills",{
    extend: "Ext.panel.Panel",

    requires: [
        "iBOSe.view.vendor.EnterBillsController",
        "iBOSe.view.vendor.EnterBillsModel"
    ],
    xtype: "iboseenterbills",
    title: "eEnterBills",
    padding: "0 0 20 0",
    closable: true,
    collapsible: true,

    controller: "vendor-enterbills",
    viewModel: {
        type: "vendor-enterbills"
    },

    html: "Hello, eEnterBills!!"
});
