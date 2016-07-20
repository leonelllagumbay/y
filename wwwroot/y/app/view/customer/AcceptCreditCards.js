
Ext.define("iBOSe.view.customer.AcceptCreditCards",{
    extend: "Ext.panel.Panel",

    requires: [
        "iBOSe.view.customer.AcceptCreditCardsController",
        "iBOSe.view.customer.AcceptCreditCardsModel"
    ],
    xtype: "iboseacceptcreditcards",
    title: "eAcceptCreditCards",
    padding: "0 0 20 0",
    closable: true,
    collapsible: true,

    controller: "customer-acceptcreditcards",
    viewModel: {
        type: "customer-acceptcreditcards"
    },

    html: "Hello, eAcceptCreditCards!!"
});
