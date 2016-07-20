
Ext.define("iBOSe.view.vendor.PayBills",{
    extend: "Ext.panel.Panel",

    requires: [
        "iBOSe.view.vendor.PayBillsController",
        "iBOSe.view.vendor.PayBillsModel"
    ],
    xtype: "ibosepaybills",
    title: "ePayBills",
    padding: "0 0 20 0",
    closable: true,
    collapsible: true,

    controller: "vendor-paybills",
    viewModel: {
        type: "vendor-paybills"
    },

    html: "Hello, ePayBills!!"
});
