Ext.define('iBOSe.store.recruitment.applicant.SchoolStore', {
	extend: 'Ext.data.Store',
	alias: 'store.iboseschoolstore',
	model: 'iBOSe.model.recruitment.applicant.SchoolModel',
	autoLoad: false,
	pageSize: 30,
	proxy: {
		type: 'direct',
		directFn: 'Ext.administrator.Lookup.getSchool',
		reader: {
            rootProperty: 'topics',
            totalProperty: 'totalCount'
        }
	}
});
