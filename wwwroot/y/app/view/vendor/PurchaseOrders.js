
Ext.define("iBOSe.view.vendor.PurchaseOrders",{
    extend: "Ext.panel.Panel",

    requires: [
        "iBOSe.view.vendor.PurchaseOrdersController",
        "iBOSe.view.vendor.PurchaseOrdersModel"
    ],
    xtype: "ibosepurchaseorder",
    title: "ePurchaseOrders",
    padding: "0 0 20 0",
    closable: true,
    collapsible: true,

    controller: "vendor-purchaseorders",
    viewModel: {
        type: "vendor-purchaseorders"
    },

    html: "Hello, ePurchaseOrders!!"
});
