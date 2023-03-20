// ignore_for_file: non_constant_identifier_names
import "json_dart.dart";
// import "dart:convert";



class TransactionDetails extends JsonDart {

  
  TransactionDetails(super.rawData);
   
  static Map get defaultData {
    return {"@type":"transaction_details","order_id":"order-id-123","gross_amount":100000};
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


  
  String? get order_id {
    try {
      if (rawData["order_id"] is String == false){
        return null;
      }
      return rawData["order_id"] as String;
    } catch (e) {
      return null;
    }
  }


  
  int? get gross_amount {
    try {
      if (rawData["gross_amount"] is int == false){
        return null;
      }
      return rawData["gross_amount"] as int;
    } catch (e) {
      return null;
    }
  }


  
  static TransactionDetails create({

    String? special_type,
    String? order_id,
    int? gross_amount,
})  {
    TransactionDetails transactionDetails = TransactionDetails({
  
      "@type": special_type,
      "order_id": order_id,
      "gross_amount": gross_amount,


  });


return transactionDetails;

      }
}