Ext.define('iBOSe.store.recruitment.applicant.GenderStore', {
	extend: 'Ext.data.Store',
	alias: 'store.ibosegenderstore',
	model: 'iBOSe.model.recruitment.applicant.GenderModel',
	autoLoad: false,
	proxy: {
		type: 'direct',
		directFn: 'Ext.administrator.Lookup.getGender',
		reader: {
            rootProperty: 'topics',
            totalProperty: 'totalCount'
        }
	}
});
