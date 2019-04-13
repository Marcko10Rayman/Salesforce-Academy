@isTest
private class TestRestrictContactByName {

    static testmethod void testRestrictContactByName() {
      
      List<Contact> listContact = new List<Contact>();
      
          Contact testContact = new Contact (FirstName = 'Jean',
                                             LastName = 'Baptiste');
          Contact testContact1 = new Contact (LastName = 'INVALIDNAME');
          
          listContact.add(testContact);
          listContact.add(testContact1);
      
      
       Test.startTest();
       insert listContact;
       Test.stopTest();
        
    }
    
}