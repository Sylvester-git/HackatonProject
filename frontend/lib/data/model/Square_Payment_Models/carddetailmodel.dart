
import 'cardmodel.dart';
import 'cardpaymentmodel.dart';

class CardDetails {
  String? status;
  Card? card;
  String? entryMethod;
  String? cvvStatus;
  String? avsStatus;
  String? authResultCode;
  String? statementDescription;
  CardPaymentTimeline? cardPaymentTimeline;

  CardDetails(
      {this.status,
      this.card,
      this.entryMethod,
      this.cvvStatus,
      this.avsStatus,
      this.authResultCode,
      this.statementDescription,
      this.cardPaymentTimeline});

  CardDetails.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    card = json['card'] != null ? Card.fromJson(json['card']) : null;
    entryMethod = json['entry_method'];
    cvvStatus = json['cvv_status'];
    avsStatus = json['avs_status'];
    authResultCode = json['auth_result_code'];
    statementDescription = json['statement_description'];
    cardPaymentTimeline = json['card_payment_timeline'] != null
        ? CardPaymentTimeline.fromJson(json['card_payment_timeline'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  Map<String, dynamic>();
    data['status'] = status;
    if (card != null) {
      data['card'] = card!.toJson();
    }
    data['entry_method'] = entryMethod;
    data['cvv_status'] = cvvStatus;
    data['avs_status'] = avsStatus;
    data['auth_result_code'] = authResultCode;
    data['statement_description'] = statementDescription;
    if (cardPaymentTimeline != null) {
      data['card_payment_timeline'] = cardPaymentTimeline!.toJson();
    }
    return data;
  }
}