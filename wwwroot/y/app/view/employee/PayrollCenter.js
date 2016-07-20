
Ext.define("iBOSe.view.employee.PayrollCenter",{
    extend: "Ext.panel.Panel",

    requires: [
        "iBOSe.view.employee.PayrollCenterController",
        "iBOSe.view.employee.PayrollCenterModel"
    ],
    xtype: "ibosepayrollcenter",
    title: "ePayrollCenter",
    padding: "0 0 20 0",
    closable: true,
    collapsible: true,

    controller: "employee-payrollcenter",
    viewModel: {
        type: "employee-payrollcenter"
    },

    html: "Hello, ePayrollCenter!!"
});
