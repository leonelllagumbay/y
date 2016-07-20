
Ext.define("iBOSe.view.query.Query",{
    extend: "Ext.panel.Panel",

    requires: [
        "iBOSe.view.query.QueryController",
        "iBOSe.view.query.QueryModel"
    ],
    xtype: "ibosequeries",
    title: "eQueries",
    padding: "0 0 20 0",
    closable: true,
    collapsible: true,

    controller: "query-query",
    viewModel: {
        type: "query-query"
    },

    html: "Hello, eQueries!!"
});
