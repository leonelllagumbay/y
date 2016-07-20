
Ext.define("iBOSe.view.customer.RefundsAndCredits",{
    extend: "Ext.panel.Panel",

    requires: [
        "iBOSe.view.customer.RefundsAndCreditsController",
        "iBOSe.view.customer.RefundsAndCreditsModel"
    ],
    xtype: "iboserefundsandcredits",
    title: "eRefundsAndCredits",
    padding: "0 0 20 0",
    closable: true,
    collapsible: true,

    controller: "customer-refundsandcredits",
    viewModel: {
        type: "customer-refundsandcredits"
    },

    html: "Hello, eRefundsAndCredits!!"
});
