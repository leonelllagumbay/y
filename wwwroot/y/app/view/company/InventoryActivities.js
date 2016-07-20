
Ext.define("iBOSe.view.company.InventoryActivities",{
    extend: "Ext.panel.Panel",

    requires: [
        "iBOSe.view.company.InventoryActivitiesController",
        "iBOSe.view.company.InventoryActivitiesModel"
    ],
    xtype: "iboseinventoryactivities",
    title: "eInventoryActivities",
    padding: "0 0 20 0",
    closable: true,
    collapsible: true,

    controller: "company-inventoryactivities",
    viewModel: {
        type: "company-inventoryactivities"
    },

    html: "Hello, eInventoryActivities!!"
});
