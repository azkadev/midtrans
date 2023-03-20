// ignore_for_file: non_constant_identifier_names
import "json_dart.dart";
// import "dart:convert";



class CustomExpiry extends JsonDart {

  
  CustomExpiry(super.rawData);
   
  static Map get defaultData {
    return {"@type":"custom_expiry","expiry_duration":60,"unit":"minute"};
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


  
  int? get expiry_duration {
    try {
      if (rawData["expiry_duration"] is int == false){
        return null;
      }
      return rawData["expiry_duration"] as int;
    } catch (e) {
      return null;
    }
  }


  
  String? get unit {
    try {
      if (rawData["unit"] is String == false){
        return null;
      }
      return rawData["unit"] as String;
    } catch (e) {
      return null;
    }
  }


  
  static CustomExpiry create({

    String? special_type,
    int? expiry_duration,
    String? unit,
})  {
    CustomExpiry customExpiry = CustomExpiry({
  
      "@type": special_type,
      "expiry_duration": expiry_duration,
      "unit": unit,


  });


return customExpiry;

      }
}