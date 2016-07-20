Ext.define('iBOSe.store.AppsStore', {
    extend: 'Ext.data.Store',

    alias: 'store.iboseappstore',

    fields: [
        'appgroup', 'appname'
    ],

    data: { 
    	items: [{ 
    		appgroup: 'KnowledgeWARE', 
    		appname: "<a href='#workspace/mycalendar'>My Calendar</a>"
    	},{ 
    		appgroup: 'KnowledgeWARE', 
    		appname: "<a href='#workspace/ibosereminder'>eReminders</a>"
    	},{ 
    		appgroup: 'Admin', 
    		appname: "<a href='#workspace/iboseuser'>eUser</a>"
    	},{ 
    		appgroup: 'Admin', 
    		appname: "<a href='#workspace/iboseregisteruser'>eRegisterUser</a>"
    	},{ 
    		appgroup: 'Admin', 
    		appname: "<a href='?vc=test#workspace/iboseverifyuserregistration'>eVerifyUserRegistration</a>"
    	},{ 
    		appgroup: 'KnowledgeWARE', 
    		appname: "<a href='#workspace/iboselogin'>Login</a>"
    	},{ 
    		appgroup: 'KnowledgeWARE', 
    		appname: "<a href='#workspace/ibosestickynotes'>eNotes</a>"
    	},{ 
    		appgroup: 'KnowledgeWARE', 
    		appname: "<a href='#workspace/ibosegallery'>eGallery</a>"
    	},{ 
    		appgroup: 'KnowledgeWARE', 
    		appname: "<a href='#workspace/iboserooms'>eRooms</a>"
    	},{ 
    		appgroup: 'System', 
    		appname: "<a href='#workspace/iboseadministrator'>eAdmin</a>"
    	},{ 
    		appgroup: 'KnowledgeWARE', 
    		appname: "<a href='#workspace/ibosebooks'>eBooks</a>"
    	},{ 
    		appgroup: 'HR', 
    		appname: "<a href='#workspace/iboseclearance'>eClearance</a>"
    	},{ 
    		appgroup: 'KnowledgeWARE', 
    		appname: "<a href='#workspace/ibosemail'>eMail</a>"
    	},{ 
    		appgroup: 'KnowledgeWARE', 
    		appname: "<a href='#workspace/ibosefiles'>eFiles</a>"
    	},{ 
    		appgroup: 'HR', 
    		appname: "<a href='#workspace/iboseforms'>eForms</a>"
    	},{ 
    		appgroup: 'KnowledgeWARE', 
    		appname: "<a href='#workspace/iboseforum'>eForum</a>"
    	},{ 
    		appgroup: 'HR', 
    		appname: "<a href='#workspace/ibosejobs'>eJobs</a>"
    	},{ 
    		appgroup: 'HR', 
    		appname: "<a href='#workspace/ibosepayroll'>ePayroll</a>"
    	},{ 
    		appgroup: 'System', 
    		appname: "<a href='#workspace/ibosequeries'>eQueries</a>"
    	},{ 
    		appgroup: 'HR', 
    		appname: "<a href='#workspace/iboserecruitment'>eRecruitment</a>"
    	},{ 
    		appgroup: 'HR', 
    		appname: "<a href='#workspace/ibosereports'>eReports</a>"
    	},{ 
    		appgroup: 'System', 
    		appname: "<a href='#workspace/ibosequeries'>eQueries</a>"
    	},{ 
    		appgroup: 'Accounting', 
    		appname: "<a href='#workspace/ibosevendors'>eVendors</a>"
    	},{ 
    		appgroup: 'HR', 
    		appname: "<a href='#workspace/iboseworksked'>eWorksked</a>"
    	},{ 
    		appgroup: 'HR', 
    		appname: "<a href='#workspace/ibosedtr'>eDTR</a>"
    	},{ 
    		appgroup: 'Accounting', 
    		appname: "<a href='#workspace/ibosecustomers'>eCustomers</a>"
    	},{ 
    		appgroup: 'Accounting', 
    		appname: "<a href='#workspace/iboseemployees'>eEmployees</a>"
    	},{ 
    		appgroup: 'Accounting', 
    		appname: "<a href='#workspace/ibosecompany'>eCompany</a>"
    	},{ 
    		appgroup: 'Accounting', 
    		appname: "<a href='#workspace/ibosebanking'>eBanking</a>"
    	},{ 
    		appgroup: 'Accounting', 
    		appname: "<a href='#workspace/ibosepurchaseorder'>ePurchaseOrders</a>"
    	},{ 
    		appgroup: 'Accounting', 
    		appname: "<a href='#workspace/ibosereceiveinventory'>eReceiveInventory</a>"
    	},{ 
    		appgroup: 'Accounting', 
    		appname: "<a href='#workspace/iboseenterbillsagainstinventory'>eEnterBillsAgainstInventory</a>"
    	},{ 
    		appgroup: 'Accounting', 
    		appname: "<a href='#workspace/ibosefinancing'>iBOS/e Financing</a>"
    	},{ 
    		appgroup: 'Accounting', 
    		appname: "<a href='#workspace/ibosemanagesalestax'>eManageSalesTax</a>"
    	},{ 
    		appgroup: 'Accounting', 
    		appname: "<a href='#workspace/iboseenterbills'>eEnterBills</a>"
    	},{ 
    		appgroup: 'Accounting', 
    		appname: "<a href='#workspace/ibosepaybills'>ePayBills</a>"
    	},{ 
    		appgroup: 'Accounting', 
    		appname: "<a href='#workspace/iboseestimates'>eEstimates</a>"
    	},{ 
    		appgroup: 'Accounting', 
    		appname: "<a href='#workspace/ibosecreateinvoices'>eCreateInvoices</a>"
    	},{ 
    		appgroup: 'Accounting', 
    		appname: "<a href='#workspace/iboseacceptcreditcards'>eAcceptCreditCards</a>"
    	},{ 
    		appgroup: 'Accounting', 
    		appname: "<a href='#workspace/ibosecreatesalesreceipts'>eCreateSalesReceipts</a>"
    	},{ 
    		appgroup: 'Accounting', 
    		appname: "<a href='#workspace/ibosereceivepayments'>eReceivePayments</a>"
    	},{ 
    		appgroup: 'Accounting', 
    		appname: "<a href='#workspace/ibosestatementcharges'>eStatementCharges</a>"
    	},{ 
    		appgroup: 'Accounting', 
    		appname: "<a href='#workspace/ibosefinancecharges'>eFinanceCharges</a>"
    	},{ 
    		appgroup: 'Accounting', 
    		appname: "<a href='#workspace/ibosestatements'>eStatements</a>"
    	},{ 
    		appgroup: 'Accounting', 
    		appname: "<a href='#workspace/iboserefundsandcredits'>eRefundsAndCredits</a>"
    	},{ 
    		appgroup: 'Accounting', 
    		appname: "<a href='#workspace/ibosepayrollcenter'>ePayrollCenter</a>"
    	},{ 
    		appgroup: 'Accounting', 
    		appname: "<a href='#workspace/iboseentertime'>eEnterTime</a>"
    	},{ 
    		appgroup: 'Accounting', 
    		appname: "<a href='#workspace/ibosepayemployees'>ePayEmployees</a>"
    	},{ 
    		appgroup: 'Accounting', 
    		appname: "<a href='#workspace/ibosepayliabilities'>ePayLiabilities</a>"
    	},{ 
    		appgroup: 'Accounting', 
    		appname: "<a href='#workspace/iboseprocesspayrollforms'>eProcessPayrollForms</a>"
    	},{ 
    		appgroup: 'Accounting', 
    		appname: "<a href='#workspace/ibosehressentialsandinsurance'>eHREssentialsAndInsurance</a>"
    	},{ 
    		appgroup: 'Accounting', 
    		appname: "<a href='#workspace/ibosechartofaccounts'>eChartOfAccounts</a>"
    	},{ 
    		appgroup: 'Accounting', 
    		appname: "<a href='#workspace/iboseitemsandservices'>eItemsAndServices</a>"
    	},{ 
    		appgroup: 'Accounting', 
    		appname: "<a href='#workspace/iboseinventoryactivities'>eInventoryActivities</a>"
    	},{ 
    		appgroup: 'Accounting', 
    		appname: "<a href='#workspace/iboseorderchecks'>eOrderChecks</a>"
    	},{ 
    		appgroup: 'Accounting', 
    		appname: "<a href='#workspace/ibosecompanycalendar'>eCompanyCalendar</a>"
    	},{ 
    		appgroup: 'Accounting', 
    		appname: "<a href='#workspace/iboserecorddeposits'>eRecordDeposits</a>"
    	},{ 
    		appgroup: 'Accounting', 
    		appname: "<a href='#workspace/ibosereconcile'>eReconcile</a>"
    	},{ 
    		appgroup: 'Accounting', 
    		appname: "<a href='#workspace/ibosewritechecks'>eWriteChecks</a>"
    	},{ 
    		appgroup: 'Accounting', 
    		appname: "<a href='#workspace/ibosecheckregister'>eCheckRegister</a>"
    	},{ 
    		appgroup: 'Accounting', 
    		appname: "<a href='#workspace/iboseprintchecks'>ePrintChecks</a>"
    	},{ 
    		appgroup: 'Accounting', 
    		appname: "<a href='#workspace/iboseentercreditcardcharges'>eEnterCreditCardCharges</a>"
    	},{ 
    		appgroup: 'System', 
    		appname: "<a href='#workspace/ibosepermissions'>ePermissions</a>"
    	},{ 
    		appgroup: 'System', 
    		appname: "<a href='#workspace/iboseappmanager'>eAppManager</a>"
    	},{ 
    		appgroup: 'HR', 
    		appname: "<a href='#workspace/iboseapplicationonline'>eApplicationOnline</a>"
    	},{ 
    		appgroup: 'HR', 
    		appname: "<a href='#workspace/ibosemrfstatus'>eMRFStatus</a>"
    	},{ 
    		appgroup: 'HR', 
    		appname: "<a href='#workspace/ibosescreeningandreservation'>eScreeningAndReservation</a>"
    	},{ 
    		appgroup: 'HR', 
    		appname: "<a href='#workspace/ibosejobposting'>eJobPosting</a>"
    	},{ 
    		appgroup: 'System', 
    		appname: "<a href='#workspace/ibosescheduler'>eScheduler</a>"
    	},{ 
    		appgroup: 'System', 
    		appname: "<a href='#workspace/iboseconfiguration'>eConfiguration</a>"
    	}]
    },

    proxy: {
        type: 'memory',
        reader: {
            type: 'json',
            rootProperty: 'items'
        }
    }
});
