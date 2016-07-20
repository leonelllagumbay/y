
Ext.define("iBOSe.view.customer.CreateSalesReceipts",{
    extend: "Ext.panel.Panel",

    requires: [
        "iBOSe.view.customer.CreateSalesReceiptsController",
        "iBOSe.view.customer.CreateSalesReceiptsModel"
    ],
    xtype: "ibosecreatesalesreceipts",
    title: "eCreateSalesReceipts",
    padding: "0 0 20 0",
    closable: true,
    collapsible: true,

    controller: "customer-createsalesreceipts",
    viewModel: {
        type: "customer-createsalesreceipts"
    },

    html: "Hello, eCreateSalesReceipts!!"
});
