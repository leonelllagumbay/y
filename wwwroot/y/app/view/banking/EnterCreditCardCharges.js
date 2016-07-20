
Ext.define("iBOSe.view.banking.EnterCreditCardCharges",{
    extend: "Ext.panel.Panel",

    requires: [
        "iBOSe.view.banking.EnterCreditCardChargesController",
        "iBOSe.view.banking.EnterCreditCardChargesModel"
    ],
    xtype: "iboseentercreditcardcharges",
    title: "eEnterCreditCardCharges",
    padding: "0 0 20 0",
    closable: true,
    collapsible: true,

    controller: "banking-entercreditcardcharges",
    viewModel: {
        type: "banking-entercreditcardcharges"
    },

    html: "Hello, eEnterCreditCardCharges!!"
});
