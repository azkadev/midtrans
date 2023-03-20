// ignore_for_file: non_constant_identifier_names
import "json_dart.dart";
// import "dart:convert";

import "installment.dart";


class CreditCard extends JsonDart {

  
  CreditCard(super.rawData);
   
  static Map get defaultData {
    return {"@type":"CreditCard","secure":true,"bank":"bca","installment":{"@type":"Installment","required":false,"terms":{"@type":"Terms","bni":[3,6,12],"mandiri":[3,6,12],"cimb":[3],"bca":[3,6,12],"offline":[6,12]}}};
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


  
  bool? get secure {
    try {
      if (rawData["secure"] is bool == false){
        return null;
      }
      return rawData["secure"] as bool;
    } catch (e) {
      return null;
    }
  }


  
  String? get bank {
    try {
      if (rawData["bank"] is String == false){
        return null;
      }
      return rawData["bank"] as String;
    } catch (e) {
      return null;
    }
  }


  
  Installment get installment {
    try {
      if (rawData["installment"] is Map == false){
        return Installment({}); 
      }
      return Installment(rawData["installment"] as Map);
    } catch (e) {  
      return Installment({}); 
    }
  }


  
  static CreditCard create({

    String? special_type,
    bool? secure,
    String? bank,
      Installment? installment,
})  {
    CreditCard creditCard = CreditCard({
  
      "@type": special_type,
      "secure": secure,
      "bank": bank,
      "installment": (installment != null)?installment.toJson(): null,


  });


return creditCard;

      }
}