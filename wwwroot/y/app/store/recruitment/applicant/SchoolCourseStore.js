Ext.define('iBOSe.store.recruitment.applicant.SchoolCourseStore', {
	extend: 'Ext.data.Store',
	alias: 'store.iboseschoolcoursestore',
	model: 'iBOSe.model.recruitment.applicant.SchoolCourseModel',
	autoLoad: false,
	pageSize: 30,
	proxy: {
		type: 'direct',
		directFn: 'Ext.administrator.Lookup.getSchoolCourse',
		reader: {
            rootProperty: 'topics',
            totalProperty: 'totalCount'
        }
	}
});
