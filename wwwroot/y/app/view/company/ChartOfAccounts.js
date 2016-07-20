
Ext.define("iBOSe.view.company.ChartOfAccounts",{
    extend: "Ext.panel.Panel",

    requires: [
        "iBOSe.view.company.ChartOfAccountsController",
        "iBOSe.view.company.ChartOfAccountsModel"
    ],
    xtype: "ibosechartofaccounts",
    title: "eChartOfAccounts",
    padding: "0 0 20 0",
    closable: true,
    collapsible: true,

    controller: "company-chartofaccounts",
    viewModel: {
        type: "company-chartofaccounts"
    },

    html: "Hello, eChartOfAccounts!!"
});
