
Ext.define("iBOSe.view.customer.Statements",{
    extend: "Ext.panel.Panel",

    requires: [
        "iBOSe.view.customer.StatementsController",
        "iBOSe.view.customer.StatementsModel"
    ],
    xtype: "ibosestatements",
    title: "eStatements",
    padding: "0 0 20 0",
    closable: true,
    collapsible: true,

    controller: "customer-statements",
    viewModel: {
        type: "customer-statements"
    },

    html: "Hello, eStatements!!"
});
