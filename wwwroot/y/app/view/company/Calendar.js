
Ext.define("iBOSe.view.company.Calendar",{
    extend: "Ext.panel.Panel",

    requires: [
        "iBOSe.view.company.CalendarController",
        "iBOSe.view.company.CalendarModel"
    ],
    xtype: "ibosecompanycalendar",
    title: "eCompanyCalendar",
    padding: "0 0 20 0",
    closable: true,
    collapsible: true,

    controller: "company-calendar",
    viewModel: {
        type: "company-calendar"
    },

    html: "Hello, eCompanyCalendar!!"
});
