
Ext.define("iBOSe.view.customer.StatementCharges",{
    extend: "Ext.panel.Panel",

    requires: [
        "iBOSe.view.customer.StatementChargesController",
        "iBOSe.view.customer.StatementChargesModel"
    ],
    xtype: "ibosestatementcharges",
    title: "eStatementCharges",
    padding: "0 0 20 0",
    closable: true,
    collapsible: true,

    controller: "customer-statementcharges",
    viewModel: {
        type: "customer-statementcharges"
    },

    html: "Hello, eStatementCharges!!"
});
