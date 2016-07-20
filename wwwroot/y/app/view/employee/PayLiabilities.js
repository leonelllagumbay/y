
Ext.define("iBOSe.view.employee.PayLiabilities",{
    extend: "Ext.panel.Panel",

    requires: [
        "iBOSe.view.employee.PayLiabilitiesController",
        "iBOSe.view.employee.PayLiabilitiesModel"
    ],
    xtype: "ibosepayliabilities",
    title: "ePayLiabilities",
    padding: "0 0 20 0",
    closable: true,
    collapsible: true,

    controller: "employee-payliabilities",
    viewModel: {
        type: "employee-payliabilities"
    },

    html: "Hello, ePayLiabilities!!"
});
