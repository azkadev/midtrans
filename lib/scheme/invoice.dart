// ignore_for_file: non_constant_identifier_names
import "json_dart.dart";
// import "dart:convert";



class Invoice extends JsonDart {

  
  Invoice(super.rawData);
   
  static Map get defaultData {
    return {"@type":"invoice"};
  }

  
  String? get special_type {
    try {
      if (rawData["@type"] is String == false){
        return null;
      }
      return rawData["@type"] as String;
    } catch (e) {
      return null;
    }
  }


  
  static Invoice create({

    String? special_type,
})  {
    Invoice invoice = Invoice({
  
      "@type": special_type,


  });


return invoice;

      }
}