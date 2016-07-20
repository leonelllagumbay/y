Ext.define('iBOSe.store.recruitment.applicant.SchoolFieldStore', {
	extend: 'Ext.data.Store',
	alias: 'store.iboseschoolfieldstore',
	model: 'iBOSe.model.recruitment.applicant.SchoolModel',
	autoLoad: false,
	proxy: {
		type: 'direct',
		directFn: 'Ext.administrator.Lookup.getField',
		reader: {
            rootProperty: 'topics',
            totalProperty: 'totalCount'
        }
	}
});
