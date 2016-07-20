
Ext.define("iBOSe.view.forum.Forum",{
    extend: "Ext.panel.Panel",

    requires: [
        "iBOSe.view.forum.ForumController",
        "iBOSe.view.forum.ForumModel"
    ],
    xtype: "iboseforum",
    title: "eForum",
    padding: "0 0 20 0",
    closable: true,
    collapsible: true,

    controller: "forum-forum",
    viewModel: {
        type: "forum-forum"
    },

    html: "Hello, eForum!!"
});
