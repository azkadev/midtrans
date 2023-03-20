import 'dart:io';

import 'package:galaxeus_lib/galaxeus_lib.dart';
import 'package:path/path.dart' as path;

void main(List<String> args) async {
  List<Map> scripts_origin = [
    {
      "@type": "CreateInvoice",
      "transaction_details": {
        "@type": "TransactionDetails",
        "order_id": "001",
        "gross_amount": 190000,
        "payment_link_id": "for-payment-123",
      },
      "customer_required": true,
      "credit_card": {
        "@type": "CreditCard",
        "secure": true,
        "bank": "bca",
        "installment": {
          "@type": "Installment",
          "required": false,
          "terms": {
            "@type": "Terms",
            "bni": [3, 6, 12],
            "mandiri": [3, 6, 12],
            "cimb": [3],
            "bca": [3, 6, 12],
            "offline": [6, 12]
          }
        }
      },
      "usage_limit": 1,
      "expiry": {
        "@type": "expiry",
        "start_time": "2022-04-01 18:00 +0700",
        "duration": 20,
        "unit": "days",
      },
      "enabled_payments": ["credit_card", "bca_va", "indomaret"],
      "item_details": [
        {
          "@type": "item_detail",
          "id": "pil-001",
          "name": "Pillow",
          "price": 95000,
          "quantity": 2,
          "brand": "Midtrans",
          "category": "Furniture",
          "merchant_name": "PT. Midtrans",
        }
      ],
      "customer_details": {
        "@type": "customer_details",
        "first_name": "John",
        "last_name": "Doe",
        "email": "john.doe@midtrans.com",
        "phone": "+62181000000000",
        "notes": "Thank you for your purchase. Please follow the instructions to pay.",
        "customer_details_required_fields": ["first_name", "phone", "email"]
      },
      "custom_field1": "custom field 1 content",
      "custom_field2": "custom field 2 content",
      "custom_field3": "custom field 3 content"
    }
  ];
  await jsonToScripts(scripts_origin, directory: Directory(path.join(Directory.current.path, "lib", "api")));
}
