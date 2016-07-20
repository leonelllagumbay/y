/**
 * This class is the main view for the application. It is specified in app.js as the
 * "mainView" property. That setting automatically applies the "viewport"
 * plugin causing this view to become the body element (i.e., the viewport).
 *
 * TODO - Replace this content of this view to suite the needs of your application. 
 */
Ext.define('iBOSe.view.main.Main', {
    extend: 'Ext.tab.Panel',
    xtype: 'app-main',

    requires: [
        'Ext.plugin.Viewport',
        'Ext.window.MessageBox',
        'iBOSe.view.main.MainController',
        'iBOSe.view.main.MainModel',
        'iBOSe.view.dashboard.DashboardView',
        'iBOSe.view.myapps.AppsView',
        'iBOSe.view.workspace.Workspace',
        'iBOSe.view.home.HomeView'
    ],

    controller: 'main',
    viewModel: 'main',
    autoScroll: true,

    ui: 'navigation',

    tabBarHeaderPosition: 1,
    titleRotation: 0,
    tabRotation: 0,

    header: {
        layout: {
            align: 'stretchmax'
        },
        title: {
            bind: {
                text: '{name}'
            },
            flex: 0
        },
        iconCls: 'ibose-icon'
    },

    tabBar: { 
        flex: 1,
        layout: {
            align: 'stretch',
            overflowHandler: 'none'
        }
    },

    responsiveConfig: {
        tall: {
            headerPosition: 'top'
        },
        wide: {
            headerPosition: 'left'
        },
        'width < 400': {
        	headerPosition: 'bottom'
        }
    },

    defaults: {
        bodyPadding: 20,
        tabConfig: {
            plugins: 'responsive',
            responsiveConfig: {
                wide: {
                    iconAlign: 'left',
                    textAlign: 'left'
                },
                tall: {
                    iconAlign: 'top',
                    textAlign: 'center',
                    width: 90
                },
                'width < 400': {
                	iconAlign: 'left',
                    textAlign: 'left',
                    width: 50
                }
            }
        }
    },

    listeners: {
    	tabchange: 'onTabChange'
    },
    
    items: [{
        title: 'Home',
        iconCls: 'ibose-home',
        autoScroll: true,
        items: [{
            xtype: 'homeview'
        }]
    }, {
        title: 'Dashboard',
        iconCls: 'ibose-dashboard',
        items: [{
        	xtype: 'dashboardview'
        }]
    }, {
        title: 'Apps',
        iconCls: 'ibose-apps',
        items: [{
        	xtype: 'iboseappsview'
        }]
    },{
        title: 'Workspace',
        id: 'iboseworkspace',
        iconCls: 'ibose-workspace',
        autoScroll: true,
        items: [{
            xtype: 'iboseworkspace'
        }]
    }]
});
