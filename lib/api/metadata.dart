// ignore_for_file: non_constant_identifier_names
import "json_dart.dart";
// import "dart:convert";



class Metadata extends JsonDart {

  
  Metadata(super.rawData);
   
  static Map get defaultData {
    return {"@type":"metadata","you":"can","put":"any","parameter":"you like"};
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


  
  String? get you {
    try {
      if (rawData["you"] is String == false){
        return null;
      }
      return rawData["you"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get put {
    try {
      if (rawData["put"] is String == false){
        return null;
      }
      return rawData["put"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get parameter {
    try {
      if (rawData["parameter"] is String == false){
        return null;
      }
      return rawData["parameter"] as String;
    } catch (e) {
      return null;
    }
  }


  
  static Metadata create({

    String? special_type,
    String? you,
    String? put,
    String? parameter,
})  {
    Metadata metadata = Metadata({
  
      "@type": special_type,
      "you": you,
      "put": put,
      "parameter": parameter,


  });


return metadata;

      }
}