// ignore_for_file: non_constant_identifier_names
import "json_dart.dart";
// import "dart:convert";

import "transaction_details.dart";
import "customer_details.dart";
import "custom_expiry.dart";
import "metadata.dart";


class ChargeTransaction extends JsonDart {

  
  ChargeTransaction(super.rawData);
   
  static Map get defaultData {
    return {"@type":"ChargeTransaction","payment_type":"gopay","transaction_details":{"@type":"transaction_details","order_id":"order-id-123","gross_amount":100000},"customer_details":{"@type":"customer_details","first_name":"Budi","last_name":"Utomo","email":"budi.utomo@midtrans.com","phone":"081223323423"},"custom_field1":"custom field 1 content","custom_field2":"custom field 2 content","custom_field3":"custom field 3 content","custom_expiry":{"@type":"custom_expiry","expiry_duration":60,"unit":"minute"},"metadata":{"@type":"metadata","you":"can","put":"any","parameter":"you like"}};
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


  
  String? get payment_type {
    try {
      if (rawData["payment_type"] is String == false){
        return null;
      }
      return rawData["payment_type"] as String;
    } catch (e) {
      return null;
    }
  }


  
  TransactionDetails get transaction_details {
    try {
      if (rawData["transaction_details"] is Map == false){
        return TransactionDetails({}); 
      }
      return TransactionDetails(rawData["transaction_details"] as Map);
    } catch (e) {  
      return TransactionDetails({}); 
    }
  }


  
  CustomerDetails get customer_details {
    try {
      if (rawData["customer_details"] is Map == false){
        return CustomerDetails({}); 
      }
      return CustomerDetails(rawData["customer_details"] as Map);
    } catch (e) {  
      return CustomerDetails({}); 
    }
  }


  
  String? get custom_field1 {
    try {
      if (rawData["custom_field1"] is String == false){
        return null;
      }
      return rawData["custom_field1"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get custom_field2 {
    try {
      if (rawData["custom_field2"] is String == false){
        return null;
      }
      return rawData["custom_field2"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get custom_field3 {
    try {
      if (rawData["custom_field3"] is String == false){
        return null;
      }
      return rawData["custom_field3"] as String;
    } catch (e) {
      return null;
    }
  }


  
  CustomExpiry get custom_expiry {
    try {
      if (rawData["custom_expiry"] is Map == false){
        return CustomExpiry({}); 
      }
      return CustomExpiry(rawData["custom_expiry"] as Map);
    } catch (e) {  
      return CustomExpiry({}); 
    }
  }


  
  Metadata get metadata {
    try {
      if (rawData["metadata"] is Map == false){
        return Metadata({}); 
      }
      return Metadata(rawData["metadata"] as Map);
    } catch (e) {  
      return Metadata({}); 
    }
  }


  
  static ChargeTransaction create({

    String? special_type,
    String? payment_type,
      TransactionDetails? transaction_details,
      CustomerDetails? customer_details,
    String? custom_field1,
    String? custom_field2,
    String? custom_field3,
      CustomExpiry? custom_expiry,
      Metadata? metadata,
})  {
    ChargeTransaction chargeTransaction = ChargeTransaction({
  
      "@type": special_type,
      "payment_type": payment_type,
      "transaction_details": (transaction_details != null)?transaction_details.toJson(): null,
      "customer_details": (customer_details != null)?customer_details.toJson(): null,
      "custom_field1": custom_field1,
      "custom_field2": custom_field2,
      "custom_field3": custom_field3,
      "custom_expiry": (custom_expiry != null)?custom_expiry.toJson(): null,
      "metadata": (metadata != null)?metadata.toJson(): null,


  });


return chargeTransaction;

      }
}