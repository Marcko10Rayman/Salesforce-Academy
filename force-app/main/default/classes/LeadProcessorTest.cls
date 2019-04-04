@isTest
private class LeadProcessorTest {
    @testSetup 
    static void setup() {
        List<Lead> leads = new List<Lead>();

        // insert 200 accounts
        for (Integer i=0;i<200;i++) {
           leads.add(new Lead(LastName = 'Test' + i , Company = 'Apple', MobilePhone = '1-234-567-891' +i,  Status = 'Open - Not Contacted', LeadSource = 'Web'));
        }
        insert leads;
    }
    
    static testmethod void Leadtest() {        
        Test.startTest();
        LeadProcessor lu = new LeadProcessor();
        Id batchId = Database.executeBatch(lu);
        Test.stopTest();
        
        // after the testing stops, assert records were updated properly
        System.assertEquals(200, [select count() from Lead where LeadSource = 'DreamForce']);
    }
    
}