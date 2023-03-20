// ignore_for_file: non_constant_identifier_names
import "json_dart.dart";
// import "dart:convert";



class ItemDetail extends JsonDart {

  
  ItemDetail(super.rawData);
   
  static Map get defaultData {
    return {"@type":"item_detail","id":"pil-001","name":"Pillow","price":95000,"quantity":2,"brand":"Midtrans","category":"Furniture","merchant_name":"PT. Midtrans"};
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


  
  String? get id {
    try {
      if (rawData["id"] is String == false){
        return null;
      }
      return rawData["id"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get name {
    try {
      if (rawData["name"] is String == false){
        return null;
      }
      return rawData["name"] as String;
    } catch (e) {
      return null;
    }
  }


  
  int? get price {
    try {
      if (rawData["price"] is int == false){
        return null;
      }
      return rawData["price"] as int;
    } catch (e) {
      return null;
    }
  }


  
  int? get quantity {
    try {
      if (rawData["quantity"] is int == false){
        return null;
      }
      return rawData["quantity"] as int;
    } catch (e) {
      return null;
    }
  }


  
  String? get brand {
    try {
      if (rawData["brand"] is String == false){
        return null;
      }
      return rawData["brand"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get category {
    try {
      if (rawData["category"] is String == false){
        return null;
      }
      return rawData["category"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get merchant_name {
    try {
      if (rawData["merchant_name"] is String == false){
        return null;
      }
      return rawData["merchant_name"] as String;
    } catch (e) {
      return null;
    }
  }


  
  static ItemDetail create({

    String? special_type,
    String? id,
    String? name,
    int? price,
    int? quantity,
    String? brand,
    String? category,
    String? merchant_name,
})  {
    ItemDetail itemDetail = ItemDetail({
  
      "@type": special_type,
      "id": id,
      "name": name,
      "price": price,
      "quantity": quantity,
      "brand": brand,
      "category": category,
      "merchant_name": merchant_name,


  });


return itemDetail;

      }
}