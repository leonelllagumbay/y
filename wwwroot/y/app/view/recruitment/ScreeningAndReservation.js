
Ext.define("iBOSe.view.recruitment.ScreeningAndReservation",{
    extend: "Ext.panel.Panel",

    requires: [
        "iBOSe.view.recruitment.ScreeningAndReservationController",
        "iBOSe.view.recruitment.ScreeningAndReservationModel"
    ],
    xtype: "ibosescreeningandreservation",
    title: "eScreeningAndReservation",
    padding: "0 0 20 0",
    closable: true,
    collapsible: true,

    controller: "recruitment-screeningandreservation",
    viewModel: {
        type: "recruitment-screeningandreservation"
    },

    html: "Hello, eScreeningAndReservation!!"
});
