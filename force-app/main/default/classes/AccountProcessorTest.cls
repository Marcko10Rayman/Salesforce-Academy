@IsTest
public class AccountProcessorTest {
  //@IsTest
    
    public static testmethod void TestAccountProcessorTest(){
    //static void method(){
        
        Account cuenta = new Account();  //Se genera una nueva cuenta
        cuenta.Name = 'Test Account Processor';
        Insert cuenta;					 //Se ingresa la cuenta para el test
        

        List<Contact> contactToInsert = new List<Contact>();
        
        for(integer i =0; i<3; i++){		//Para ingresar mas de un contacto
          Contact contacto = new Contact(); //Se genera un nuevo contacto 
          contacto.FirstName = 'Leticia ' + i;
          contacto.LastName = 'Suarez' + i;
          contacto.AccountId = cuenta.Id ;	  //Se obtiene el id de la cuenta patra el contacto
          contactToInsert.add(contacto);
        }
        Insert contactToInsert;				  //Se ingresa el contacto

        
         
        
        Set<Id> accSetId = new Set<Id>();
        accSetId.add(cuenta.Id);
        
        test.startTest();
        AccountProcessor.countContacts(accSetId);
        test.stopTest();
     
        Account accNew = [select Number_of_Contacts__c from Account where Id =: cuenta.Id LIMIT 1];
        System.assertEquals (Integer.valueOf(accNew.Number_of_Contacts__c) ,3);
        
    }
    
}