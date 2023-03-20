# Midtans

Midtrans payment gateway indonesia

```bash
dart pub add midtrans_dart
```


```dart
import 'package:midtrans_dart/api/api.dart';
import 'package:midtrans_dart/midtrans_dart.dart'; 

void main(List<String> arguments) async {
  Midtrans midtrans = Midtrans(
    apiKey: "SB-Mid-server-smakmskamsk343p",
  );

  var res = await midtrans.createInvoice(
    createInvoice: CreateInvoice.create(
      transaction_details: TransactionDetails.create(order_id: "order_jasa_dev_slebew", gross_amount: 1000),
      usage_limit: 1,
    ),
    isSandbox: true,
  );
  print(res.body);
}

```


raw request

```dart

  print((await midtrans.invoke(
    method_api: "bank_accounts",
    parameters: {
      
    },
    method: "get",
    isSandbox: true,
    apiKey: "",
  )).body);
```