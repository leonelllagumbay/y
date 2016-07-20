
Ext.define("iBOSe.view.company.ItemsAndServices",{
    extend: "Ext.panel.Panel",

    requires: [
        "iBOSe.view.company.ItemsAndServicesController",
        "iBOSe.view.company.ItemsAndServicesModel"
    ],
    xtype: "iboseitemsandservices",
    title: "eItemsAndServices",
    padding: "0 0 20 0",
    closable: true,
    collapsible: true,

    controller: "company-itemsandservices",
    viewModel: {
        type: "company-itemsandservices"
    },

    html: "Hello, eItemsAndServices!!"
});
