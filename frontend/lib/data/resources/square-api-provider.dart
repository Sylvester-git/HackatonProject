import 'package:another_square/another_square.dart';
import 'package:another_square/services/payments_service.dart';
import 'package:another_square/square_models.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart';

const String _applicationID = 'sandbox-sq0idb-TWGytM1cVsI77LVnK6RODg';
const String _cientID = 'sandbox-sq0idb-TWGytM1cVsI77LVnK6RODg';
const String _clientSecret =
    'sandbox-sq0csb-6tYzrBc1Hqn4VqdOVKEWqa8bl3ORqswMKfbHVh-4IWY';
const String _authToken =
    'EAAAEPCpHEdlTyh_7YSVfUJaji6vqDXUm12OX5bNxT8seq96gRJF2gNxQcmvHg8I';

SquareClient? _squareClient = SquareClient(
  applicationId: _applicationID,
  clientId: _cientID,
  clientSecret: _clientSecret,
);

class SquareApiProvider {
  static Future<Payment> makepayment() async {
    await _squareClient!.initialize();

    try {
      var response = await _squareClient!.createPayment(
        request: CreatePaymentRequest.fromJson(
          {
            "idempotency_key": "7b0f3ec5-086a-4871-8f13-3c81b3875218",
            "amount_money": {"amount": 1000, "currency": "USD"},
            "source_id": "ccof:GaJGNaZa8x4OgDJn4GB",
            "autocomplete": true,
            "customer_id": "W92WH6P11H4Z77CTET0RNTGFW8",
            "location_id": "L4JHCSYH2KWW7",
            "reference_id": "123456",
            "note": "Brief description",
            "app_fee_money": {"amount": 10, "currency": "USD"}
          },
        ),
      );

      debugPrint(response.toJson().toString());
    } on PaymentException catch (e) {
      debugPrint(
        e.message,
      );
    }

    return Payment();
  }
}
