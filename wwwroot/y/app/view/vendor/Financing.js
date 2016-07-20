
Ext.define("iBOSe.view.vendor.Financing",{
    extend: "Ext.panel.Panel",

    requires: [
        "iBOSe.view.vendor.FinancingController",
        "iBOSe.view.vendor.FinancingModel"
    ],
    xtype: "ibosefinancing",
    title: "iBOS/e Financing",
    padding: "0 0 20 0",
    closable: true,
    collapsible: true,

    controller: "vendor-financing",
    viewModel: {
        type: "vendor-financing"
    },

    html: "Hello, iBOS/e Financing!!"
});
