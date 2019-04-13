public class StringArrayTest {
    
    public static List<String> generateStringArray(Integer num){
        
        List<String> lista = new List<String>();
        	
            for(integer i=0; i<num; i++) {
                
                lista.add('Test ' + i);
                system.debug(lista[i]);
               
            }
         return lista;
    }

}