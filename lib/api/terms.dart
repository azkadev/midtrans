// ignore_for_file: non_constant_identifier_names
import "json_dart.dart";
// import "dart:convert";



class Terms extends JsonDart {

  
  Terms(super.rawData);
   
  static Map get defaultData {
    return {"@type":"Terms","bni":[3,6,12],"mandiri":[3,6,12],"cimb":[3],"bca":[3,6,12],"offline":[6,12]};
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


  
  List<int> get bni {
    try {
      if (rawData["bni"] is List == false){
        return [];
      }
      return (rawData["bni"] as List).cast<int>();
    } catch (e) {
      return [];
    }
  }


  
  List<int> get mandiri {
    try {
      if (rawData["mandiri"] is List == false){
        return [];
      }
      return (rawData["mandiri"] as List).cast<int>();
    } catch (e) {
      return [];
    }
  }


  
  List<int> get cimb {
    try {
      if (rawData["cimb"] is List == false){
        return [];
      }
      return (rawData["cimb"] as List).cast<int>();
    } catch (e) {
      return [];
    }
  }


  
  List<int> get bca {
    try {
      if (rawData["bca"] is List == false){
        return [];
      }
      return (rawData["bca"] as List).cast<int>();
    } catch (e) {
      return [];
    }
  }


  
  List<int> get offline {
    try {
      if (rawData["offline"] is List == false){
        return [];
      }
      return (rawData["offline"] as List).cast<int>();
    } catch (e) {
      return [];
    }
  }


  
  static Terms create({

    String? special_type,
      List<int>? bni,
      List<int>? mandiri,
      List<int>? cimb,
      List<int>? bca,
      List<int>? offline,
})  {
    Terms terms = Terms({
  
      "@type": special_type,
      "bni": bni,
      "mandiri": mandiri,
      "cimb": cimb,
      "bca": bca,
      "offline": offline,


  });


return terms;

      }
}