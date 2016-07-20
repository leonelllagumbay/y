
Ext.define("iBOSe.view.payroll.Payroll",{
    extend: "Ext.panel.Panel",

    requires: [
        "iBOSe.view.payroll.PayrollController",
        "iBOSe.view.payroll.PayrollModel"
    ],
    xtype: "ibosepayroll",
    title: "ePayroll",
    padding: "0 0 20 0",
    closable: true,
    collapsible: true,

    controller: "payroll-payroll",
    viewModel: {
        type: "payroll-payroll"
    },

    html: "Hello, ePayroll!!"
});
