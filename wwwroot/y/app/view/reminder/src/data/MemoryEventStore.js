Ext.define('iBOSe.view.reminder.src.data.MemoryEventStore', {
    extend: 'Ext.data.Store',
    model: 'iBOSe.view.reminder.src.data.EventModel',
    
    requires: ['iBOSe.view.reminder.src.data.EventMappings'],
    autoDestroy: true,
    autoLoad: true,
    autoSync: false,
    proxy: {
        type: 'direct',
        api: {
        	update  : Ext.administrator.Reminder.eventUpdate,
			create  : Ext.administrator.Reminder.eventCreate,
			read    : Ext.administrator.Reminder.eventRead,
			destroy : Ext.administrator.Reminder.eventDestroy
		},
        reader: {
            type: 'json',
            rootProperty: 'data'
        },
        
        writer: {
            type: 'json'
        },
        
        listeners: {
            exception: function(proxy, response, operation, options){
                var msg = response.message ? response.message : Ext.decode(response.responseText).message;
                // ideally an app would provide a less intrusive message display
                Ext.Msg.alert('Server Error', msg);
            }
        }
    }
});
