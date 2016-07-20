/**
 * This is the {@link Ext.data.Record Record} specification for calendar event data used by the
 * {@link Ext.calendar.CalendarPanel CalendarPanel}'s underlying store. It can be overridden as 
 * necessary to customize the fields supported by events, although the existing column names should
 * not be altered. If your model fields are named differently you should update the <b>mapping</b>
 * configs accordingly.
 *
 * The only required fields when creating a new event record instance are StartDate and
 * EndDate.  All other fields are either optional are will be defaulted if blank.
 *
 * Here is a basic example for how to create a new record of this type:
 *
 *      rec = new Ext.calendar.data.EventModel({
 *          StartDate: '2101-01-12 12:00:00',
 *          EndDate: '2101-01-12 13:30:00',
 *          Title: 'My cool event',
 *          Notes: 'Some notes'
 *      });
 *
 * If you have overridden any of the record's data mappings via the Ext.calendar.data.EventMappings object
 * you may need to set the values using this alternate syntax to ensure that the fields match up correctly:
 *
 *      var M = Ext.calendar.data.EventMappings;
 *
 *      rec = new Ext.calendar.data.EventModel();
 *      rec.data[M.StartDate.name] = '2101-01-12 12:00:00';
 *      rec.data[M.EndDate.name] = '2101-01-12 13:30:00';
 *      rec.data[M.Title.name] = 'My cool event';
 *      rec.data[M.Notes.name] = 'Some notes';
 */
Ext.define('iBOSe.view.reminder.src.data.EventModel', {
    extend: 'Ext.data.Model',
    fields: [{
        name: 'EventId',
        mapping: 'id',
        type: 'string'
    },{
        name: 'CalendarId',
        mapping: 'cid',
        type: 'int'
    },{
        name: 'Title',
        mapping: 'title',
        type: 'string'
    },{
        name: 'StartDate',
        mapping: 'start',
        type: 'date',
        dateFormat: 'c'
    },{
        name: 'EndDate',
        mapping: 'end',
        type: 'date',
        dateFormat: 'c'
    },{
        name: 'Location',
        mapping: 'loc',
        type: 'string'
    },{
        name: 'Notes',
        mapping: 'notes',
        type: 'string'
    },{
        name: 'Url',
        mapping: 'url',
        type: 'string'
    },{
        name: 'IsAllDay',
        mapping: 'ad',
        type: 'boolean'
    },{
        name: 'Reminder',
        mapping: 'rem',
        type: 'string'
    },{
        name: 'IsNew',
        mapping: 'n',
        type: 'boolean'
    },{
        name: 'TheQuery',
        mapping: 'dquery',
        type: 'string'
    }]
});
