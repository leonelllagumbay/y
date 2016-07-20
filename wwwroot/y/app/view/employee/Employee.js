
Ext.define("iBOSe.view.employee.Employee",{
    extend: "Ext.panel.Panel",

    requires: [
        "iBOSe.view.employee.EmployeeController",
        "iBOSe.view.employee.EmployeeModel"
    ],
    xtype: "iboseemployees",
    title: "eEmployees",
    padding: "0 0 20 0",
    closable: true,
    collapsible: true,

    controller: "employee-employee",
    viewModel: {
        type: "employee-employee"
    },

    html: "Hello, eEmployees!!"
});
