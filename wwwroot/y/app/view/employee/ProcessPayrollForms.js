
Ext.define("iBOSe.view.employee.ProcessPayrollForms",{
    extend: "Ext.panel.Panel",

    requires: [
        "iBOSe.view.employee.ProcessPayrollFormsController",
        "iBOSe.view.employee.ProcessPayrollFormsModel"
    ],
    xtype: "iboseprocesspayrollforms",
    title: "eProcessPayrollForms",
    padding: "0 0 20 0",
    closable: true,
    collapsible: true,

    controller: "employee-processpayrollforms",
    viewModel: {
        type: "employee-processpayrollforms"
    },

    html: "Hello, eProcessPayrollForms!!"
});
