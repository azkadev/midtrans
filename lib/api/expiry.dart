// ignore_for_file: non_constant_identifier_names
import "json_dart.dart";
// import "dart:convert";



class Expiry extends JsonDart {

  
  Expiry(super.rawData);
   
  static Map get defaultData {
    return {"@type":"expiry","start_time":"2022-04-01 18:00 +0700","duration":20,"unit":"days"};
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


  
  String? get start_time {
    try {
      if (rawData["start_time"] is String == false){
        return null;
      }
      return rawData["start_time"] as String;
    } catch (e) {
      return null;
    }
  }


  
  int? get duration {
    try {
      if (rawData["duration"] is int == false){
        return null;
      }
      return rawData["duration"] as int;
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


  
  static Expiry create({

    String? special_type,
    String? start_time,
    int? duration,
    String? unit,
})  {
    Expiry expiry = Expiry({
  
      "@type": special_type,
      "start_time": start_time,
      "duration": duration,
      "unit": unit,


  });


return expiry;

      }
}