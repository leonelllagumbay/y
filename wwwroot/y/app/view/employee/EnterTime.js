
Ext.define("iBOSe.view.employee.EnterTime",{
    extend: "Ext.panel.Panel",

    requires: [
        "iBOSe.view.employee.EnterTimeController",
        "iBOSe.view.employee.EnterTimeModel"
    ],
    xtype: "iboseentertime",
    title: "eEnterTime",
    padding: "0 0 20 0",
    closable: true,
    collapsible: true,

    controller: "employee-entertime",
    viewModel: {
        type: "employee-entertime"
    },

    html: "Hello, eEnterTime!!"
});
