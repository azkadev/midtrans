// ignore_for_file: unnecessary_brace_in_string_interps

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:midtrans_dart/api/create_invoice.dart';
import "api/api.dart" as midtrans_api;
import "scheme/scheme.dart" as midtrans_scheme;

class Midtrans {
  String api_key = "";

  Midtrans({
    required String apiKey,
  }) {
    api_key = apiKey;
  }

  Future<Map> invoke({
    required String method_api,
    Map? parameters,
    String method = "post",
    bool isSandbox = false,
    String? apiKey,
  }) async {
    parameters ??= {};
    apiKey ??= api_key;
    Uri url_api = Uri.parse("https://api.midtrans.com/v1").replace(
      host: (isSandbox) ? "api.sandbox.midtrans.com" : null,
      path: method_api,
    );

    Map<String, String> headers = {
      "Accept": "application/json",
      "Content-Type": "application/json",
      "Authorization": "Basic ${base64.encode(utf8.encode("${apiKey}:"))}",
    };

    late http.Response response;
    if (method == "get") {
      response = await http.get(url_api, headers: headers);
    } else if (method == "delete") {
      response = await http.delete(url_api, headers: headers, body: json.encode(parameters));
    } else if (method == "patch") {
      response = await http.patch(url_api, headers: headers, body: json.encode(parameters));
    } else if (method == "put") {
      response = await http.put(url_api, headers: headers, body: json.encode(parameters));
    } else if (method == "head") {
      response = await http.head(url_api, headers: headers);
    } else {
      response = await http.post(url_api, headers: headers, body: json.encode(parameters));
    }
    Map result_data = {"@type": "error"};
    try {
      result_data = {"@type": "ok", ...json.decode(response.body)};
    } catch (e) {
      if (e is FormatException) {
        result_data["message"] = "format_bad";
      } else {}
    }
    if (response.statusCode == 200) {
      result_data["@type"] = "ok";
    } else {

      result_data["@type"] = "error";
    }

    return result_data;
  }

  Future<Map> createInvoice({
    required midtrans_api.CreateInvoice createInvoice,
    bool isSandbox = false,
    String? apiKey,
  }) async {
    return await invoke(
      method_api: "/v1/payment-links",
      parameters: createInvoice.toJson(),
      method: "post",
      isSandbox: isSandbox,
      apiKey: apiKey,
    );
  }

  Future<Map> revokeInvoice({
    required String invoiceId,
    bool isSandbox = false,
    String? apiKey,
  }) async {
    return await invoke(
      method_api: "/v1/payment-links/${invoiceId}",
      method: "delete",
      isSandbox: isSandbox,
      apiKey: apiKey,
    );
  }

  Future<Map> createPayout({
    required midtrans_api.CreateInvoice createInvoice,
    bool isSandbox = false,
    String? apiKey,
  }) async {
    return await invoke(
      method_api: "/v1/payment-links",
      parameters: createInvoice.toJson(),
      method: "post",
      isSandbox: isSandbox,
      apiKey: apiKey,
    );
  }

  Future<Map> getInvoice({
    required String order_id_or_transaction_id,
    bool isSandbox = false,
    String? apiKey,
  }) async {
    return await invoke(
      method_api: "/v2/${order_id_or_transaction_id}/status",
      method: "get",
      isSandbox: isSandbox,
      apiKey: apiKey,
    );
  }

  Future<Map> getBalance({
    bool isSandbox = false,
    String? apiKey,
  }) async {
    return await invoke(
      method_api: "/v1/balance",
      method: "get",
      isSandbox: isSandbox,
      apiKey: apiKey,
    );
  }
}
