// ignore_for_file: unnecessary_brace_in_string_interps

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:midtrans_dart/api/create_invoice.dart';
import "api/api.dart" as midtrans_api;

class Midtrans {
  String api_key = "";

  Midtrans({
    required String apiKey,
  }) {
    api_key = apiKey;
  }

  Future<http.Response> invoke({
    required String method_api,
    Map? parameters,
    bool isSandbox = false,
    String? apiKey,
  }) async {
    parameters ??= {};
    apiKey ??= api_key;
    Uri url_api = Uri.parse("https://api.midtrans.com/v1").replace(
      host: (isSandbox) ? "api.sandbox.midtrans.com" : null,
      path: "/v1/${method_api}",
    );

    Map<String, String> headers = {
      "Accept": "application/json",
      "Content-Type": "application/json",
      "Authorization": "Basic ${base64.encode(utf8.encode("${apiKey}:"))}",
    };

    late http.Response response;
    response = await http.post(url_api, headers: headers, body: json.encode(parameters));

    if (response.statusCode == 200){

    }else {
      
    }
    return response;
  }

 
  Future<http.Response>  createInvoice({
    required midtrans_api.CreateInvoice createInvoice,
    bool isSandbox = false,
    String? apiKey,
  }) async {
  return  await invoke(
      method_api: "payment-links",
      parameters: createInvoice.toJson(),
      isSandbox: isSandbox,
      apiKey: apiKey,
    );
  }
}
