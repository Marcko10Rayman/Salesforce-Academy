public class ContactSearch {

    public static List<Contact> searchForContacts (String lastname, String mailpost){
     
        List<Contact> listContact = [SELECT Id, Name FROM Contact WHERE LastName =: lastname AND MailingPostalCode =: mailpost];
        return listContact;
    }
    
}