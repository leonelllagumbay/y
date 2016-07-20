
Ext.define("iBOSe.view.employee.PayEmployees",{
    extend: "Ext.panel.Panel",

    requires: [
        "iBOSe.view.employee.PayEmployeesController",
        "iBOSe.view.employee.PayEmployeesModel"
    ],
    xtype: "ibosepayemployees",
    title: "ePayEmployees",
    padding: "0 0 20 0",
    closable: true,
    collapsible: true,

    controller: "employee-payemployees",
    viewModel: {
        type: "employee-payemployees"
    },

    html: "Hello, ePayEmployees!!"
});
