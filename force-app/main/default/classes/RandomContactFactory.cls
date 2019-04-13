public class RandomContactFactory {

    public static List<Contact> generateRandomContacts(Integer numberContact, String lastName) {
        
        List<Contact> listContact = new List<Contact>();
        	
        FOR(Integer cont = 0; cont < numberContact; cont++) {
            Contact con = new Contact (FirstName = 'Test'+cont,
                                       LastName = lastName);
            listContact.add(con);
           
        }
        	
        return listContact;
    }

}