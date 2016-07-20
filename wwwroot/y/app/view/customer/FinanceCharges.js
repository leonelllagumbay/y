
Ext.define("iBOSe.view.customer.FinanceCharges",{
    extend: "Ext.panel.Panel",

    requires: [
        "iBOSe.view.customer.FinanceChargesController",
        "iBOSe.view.customer.FinanceChargesModel"
    ],
    xtype: "ibosefinancecharges",
    title: "eFinanceCharges",
    padding: "0 0 20 0",
    closable: true,
    collapsible: true,

    controller: "customer-financecharges",
    viewModel: {
        type: "customer-financecharges"
    },

    html: "Hello, eFinanceCharges!!"
});
