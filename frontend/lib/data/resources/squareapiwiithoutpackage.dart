import 'dart:convert';
import 'dart:io';

import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

class SquareApi {
  static Future<String> makepayment() async {
    debugPrint('Square api ');

    // final Map<String, String> headers = {
    //   HttpHeaders.contentTypeHeader: 'application/json',
    //   HttpHeaders.authorizationHeader:
    //       'Bearer EAAAEPCpHEdlTyh_7YSVfUJaji6vqDXUm12OX5bNxT8seq96gRJF2gNxQcmvHg8I',
    //   HttpHeaders.accessControlAllowOriginHeader: '*',
    //   HttpHeaders.accessControlAllowCredentialsHeader: 'true',
    //   HttpHeaders.accessControlAllowMethodsHeader: 'POST',
    // };
    var uri = Uri.parse('https://connect.squareupsandbox.com/v2/payments');
    var response = await http.post(uri,
        headers: {
          'Square-Version': '2023-05-17',
          'Authorization':
              'Bearer EAAAEPCpHEdlTyh_7YSVfUJaji6vqDXUm12OX5bNxT8seq96gRJF2gNxQcmvHg8I',
          'Content-Type': 'application/json',
          "Access-Control-Allow-Origin": "*",
          HttpHeaders.authorizationHeader:
              'Bearer EAAAEPCpHEdlTyh_7YSVfUJaji6vqDXUm12OX5bNxT8seq96gRJF2gNxQcmvHg8I',
        },
        body: jsonEncode({
          "idempotency_key": "8f5df2a4-2b67-4c67-ad31-5112f08dfbbd",
          "source_id": "cnon:card-nonce-ok",
          "accept_partial_authorization": true,
          "amount_money": {"currency": "USD", "amount": 600},
          "app_fee_money": {"currency": "USD", "amount": 10},
          "customer_id": "XUD-JENS",
          "location_id": "L4JHCSYH2KWW7",
          "note": "Test payment"
        }));
    String data = response.statusCode.toString();
    if (data == '200') {
      data = response.statusCode.toString();
      print(data);
    }

    return data;
  }
}
