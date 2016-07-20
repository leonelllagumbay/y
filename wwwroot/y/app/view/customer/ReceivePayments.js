
Ext.define("iBOSe.view.customer.ReceivePayments",{
    extend: "Ext.panel.Panel",

    requires: [
        "iBOSe.view.customer.ReceivePaymentsController",
        "iBOSe.view.customer.ReceivePaymentsModel"
    ],
    xtype: "ibosereceivepayments",
    title: "eReceivePayments",
    padding: "0 0 20 0",
    closable: true,
    collapsible: true,

    controller: "customer-receivepayments",
    viewModel: {
        type: "customer-receivepayments"
    },

    html: "Hello, eReceivePayments!!"
});
