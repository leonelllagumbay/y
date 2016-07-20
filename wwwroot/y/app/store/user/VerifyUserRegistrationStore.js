Ext.define('iBOSe.store.user.VerifyUserRegistrationStore', {
    extend: 'Ext.data.Store',
    alias: 'store.iboseverfiyuserregistrationstore',
  
    fields: [ 
        'utype', 'utypevalue'
    ],
    
    data : [{
    	"utype":"Guest", 
    	"utypevalue":"guest"
    },{
    	"utype":"Employee", 
    	"utypevalue":"employee"
    },{
    	"utype":"Applicant", 
    	"utypevalue":"applicant"
    },{
    	"utype":"Recruiter", 
    	"utypevalue":"recruiter"
    },{
    	"utype":"Student", 
    	"utypevalue":"student"
    },{
    	"utype":"Buyer", 
    	"utypevalue":"buyer"
    },{
    	"utype":"Seller", 
    	"utypevalue":"seller"
    }]
});
