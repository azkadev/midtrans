// ignore_for_file: non_constant_identifier_names
import "json_dart.dart";
// import "dart:convert";

import "terms.dart";


class Installment extends JsonDart {

  
  Installment(super.rawData);
   
  static Map get defaultData {
    return {"@type":"Installment","required":false,"terms":{"@type":"Terms","bni":[3,6,12],"mandiri":[3,6,12],"cimb":[3],"bca":[3,6,12],"offline":[6,12]}};
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


  
  bool? get required {
    try {
      if (rawData["required"] is bool == false){
        return null;
      }
      return rawData["required"] as bool;
    } catch (e) {
      return null;
    }
  }


  
  Terms get terms {
    try {
      if (rawData["terms"] is Map == false){
        return Terms({}); 
      }
      return Terms(rawData["terms"] as Map);
    } catch (e) {  
      return Terms({}); 
    }
  }


  
  static Installment create({

    String? special_type,
    bool? required,
      Terms? terms,
})  {
    Installment installment = Installment({
  
      "@type": special_type,
      "required": required,
      "terms": (terms != null)?terms.toJson(): null,


  });


return installment;

      }
}