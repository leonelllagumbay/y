
Ext.define("iBOSe.view.employee.HREssentialsAndInsurance",{
    extend: "Ext.panel.Panel",

    requires: [
        "iBOSe.view.employee.HREssentialsAndInsuranceController",
        "iBOSe.view.employee.HREssentialsAndInsuranceModel"
    ],
    xtype: "ibosehressentialsandinsurance",
    title: "eHREssentialsAndInsurance",
    padding: "0 0 20 0",
    closable: true,
    collapsible: true,

    controller: "employee-hressentialsandinsurance",
    viewModel: {
        type: "employee-hressentialsandinsurance"
    },

    html: "Hello, eHREssentialsAndInsurance!!"
});
