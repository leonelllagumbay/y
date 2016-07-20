Ext.define('iBOSe.store.recruitment.applicant.ExamStore', {
	extend: 'Ext.data.Store',
	alias: 'store.iboseexamstore',
	model: 'iBOSe.model.recruitment.applicant.ExamModel',
	autoLoad: false,
	pageSize: 30,
	proxy: {
		type: 'direct',
		directFn: 'Ext.administrator.Lookup.getExam',
		reader: {
            rootProperty: 'topics',
            totalProperty: 'totalCount'
        }
	}
});
