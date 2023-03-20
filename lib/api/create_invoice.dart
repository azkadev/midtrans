// ignore_for_file: non_constant_identifier_names
import "json_dart.dart";
// import "dart:convert";

import "transaction_details.dart";
import "credit_card.dart";
import "expiry.dart";
import "item_detail.dart";
import "customer_details.dart";


class CreateInvoice extends JsonDart {

  
  CreateInvoice(super.rawData);
   
  static Map get defaultData {
    return {"@type":"CreateInvoice","transaction_details":{"@type":"TransactionDetails","order_id":"001","gross_amount":190000,"payment_link_id":"for-payment-123"},"customer_required":true,"credit_card":{"@type":"CreditCard","secure":true,"bank":"bca","installment":{"@type":"Installment","required":false,"terms":{"@type":"Terms","bni":[3,6,12],"mandiri":[3,6,12],"cimb":[3],"bca":[3,6,12],"offline":[6,12]}}},"usage_limit":1,"expiry":{"@type":"expiry","start_time":"2022-04-01 18:00 +0700","duration":20,"unit":"days"},"enabled_payments":["credit_card","bca_va","indomaret"],"item_details":[{"@type":"item_detail","id":"pil-001","name":"Pillow","price":95000,"quantity":2,"brand":"Midtrans","category":"Furniture","merchant_name":"PT. Midtrans"}],"customer_details":{"@type":"customer_details","first_name":"John","last_name":"Doe","email":"john.doe@midtrans.com","phone":"+62181000000000","notes":"Thank you for your purchase. Please follow the instructions to pay.","customer_details_required_fields":["first_name","phone","email"]},"custom_field1":"custom field 1 content","custom_field2":"custom field 2 content","custom_field3":"custom field 3 content"};
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


  
  bool? get customer_required {
    try {
      if (rawData["customer_required"] is bool == false){
        return null;
      }
      return rawData["customer_required"] as bool;
    } catch (e) {
      return null;
    }
  }


  
  CreditCard get credit_card {
    try {
      if (rawData["credit_card"] is Map == false){
        return CreditCard({}); 
      }
      return CreditCard(rawData["credit_card"] as Map);
    } catch (e) {  
      return CreditCard({}); 
    }
  }


  
  int? get usage_limit {
    try {
      if (rawData["usage_limit"] is int == false){
        return null;
      }
      return rawData["usage_limit"] as int;
    } catch (e) {
      return null;
    }
  }


  
  Expiry get expiry {
    try {
      if (rawData["expiry"] is Map == false){
        return Expiry({}); 
      }
      return Expiry(rawData["expiry"] as Map);
    } catch (e) {  
      return Expiry({}); 
    }
  }


  
  List<String> get enabled_payments {
    try {
      if (rawData["enabled_payments"] is List == false){
        return [];
      }
      return (rawData["enabled_payments"] as List).cast<String>();
    } catch (e) {
      return [];
    }
  }

  
  List<ItemDetail> get item_details {
    try {
      if (rawData["item_details"] is List == false){
        return [];
      }
      return (rawData["item_details"] as List).map((e) => ItemDetail(e as Map)).toList().cast<ItemDetail>();
    } catch (e) {
      return [];
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


  
  static CreateInvoice create({

    String? special_type,
      TransactionDetails? transaction_details,
    bool? customer_required,
      CreditCard? credit_card,
    int? usage_limit,
      Expiry? expiry,
      List<String>? enabled_payments,
      List<ItemDetail>? item_details,
      CustomerDetails? customer_details,
    String? custom_field1,
    String? custom_field2,
    String? custom_field3,
})  {
    CreateInvoice createInvoice = CreateInvoice({
  
      "@type": special_type,
      "transaction_details": (transaction_details != null)?transaction_details.toJson(): null,
      "customer_required": customer_required,
      "credit_card": (credit_card != null)?credit_card.toJson(): null,
      "usage_limit": usage_limit,
      "expiry": (expiry != null)?expiry.toJson(): null,
      "enabled_payments": enabled_payments,
      "item_details": (item_details != null)? item_details.map((res) => res.toJson()).toList().cast<Map>(): null,
      "customer_details": (customer_details != null)?customer_details.toJson(): null,
      "custom_field1": custom_field1,
      "custom_field2": custom_field2,
      "custom_field3": custom_field3,


  });


return createInvoice;

      }
}