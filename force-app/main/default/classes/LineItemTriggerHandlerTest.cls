@isTest
public class LineItemTriggerHandlerTest {
	
    @isTest
    private static void TestInsertLineItem() {
        Line_Item__c var = new Line_Item__c(Description__c = 'Test',Type__c ='small');
        
        Test.startTest();
        insert var;
        Test.stopTest();
        
        Product_Line_Item__c pli = [select Id, Description__c, Type__c from Product_Line_Item__c where Relationship__c = : var.Id];
        System.assertEquals(pli.Description__c, var.Description__c,'Son Iguales');
    }
    
    
}