public class AnimalLocator {
    public static String getAnimalNameById (Integer Id){
       
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/'+Id);
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        
        String name = '';//Para obtener mas valores del response, se debe generar una variable
        //string says = '';
        //string alldata= '';
        
        // If the request is successful, parse the JSON response.
        if (response.getStatusCode() == 200) {
            // Deserializes the JSON string into collections of primitive data types.
            Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
            // Cast the values in the 'animals' key as a list
            Map<String,Object> animals = (Map<String,Object>)results.get('animal');
            System.debug('Received the following animals:');
            name = string.valueof(animals.get('name'));//obtiene especificamente el valor del string seleccionado
            //says = string.valueof(animals.get('says')); se llama la variable creada para mostrar otro dato mas
            System.debug('name >' + name);
        }
        //alldata -=name + '' + says + ''; une todo y lo envia en el string
        return name;
    }
}