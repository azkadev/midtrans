// ignore_for_file: non_constant_identifier_names
import "json_dart.dart";
// import "dart:convert";



class CustomerDetails extends JsonDart {

  
  CustomerDetails(super.rawData);
   
  static Map get defaultData {
    return {"@type":"customer_details","first_name":"Budi","last_name":"Utomo","email":"budi.utomo@midtrans.com","phone":"081223323423","notes":"Thank you for your purchase. Please follow the instructions to pay.","customer_details_required_fields":["first_name","phone","email"]};
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


  
  String? get first_name {
    try {
      if (rawData["first_name"] is String == false){
        return null;
      }
      return rawData["first_name"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get last_name {
    try {
      if (rawData["last_name"] is String == false){
        return null;
      }
      return rawData["last_name"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get email {
    try {
      if (rawData["email"] is String == false){
        return null;
      }
      return rawData["email"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get phone {
    try {
      if (rawData["phone"] is String == false){
        return null;
      }
      return rawData["phone"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get notes {
    try {
      if (rawData["notes"] is String == false){
        return null;
      }
      return rawData["notes"] as String;
    } catch (e) {
      return null;
    }
  }


  
  List<String> get customer_details_required_fields {
    try {
      if (rawData["customer_details_required_fields"] is List == false){
        return [];
      }
      return (rawData["customer_details_required_fields"] as List).cast<String>();
    } catch (e) {
      return [];
    }
  }


  
  static CustomerDetails create({

    String? special_type,
    String? first_name,
    String? last_name,
    String? email,
    String? phone,
    String? notes,
      List<String>? customer_details_required_fields,
})  {
    CustomerDetails customerDetails = CustomerDetails({
  
      "@type": special_type,
      "first_name": first_name,
      "last_name": last_name,
      "email": email,
      "phone": phone,
      "notes": notes,
      "customer_details_required_fields": customer_details_required_fields,


  });


return customerDetails;

      }
}