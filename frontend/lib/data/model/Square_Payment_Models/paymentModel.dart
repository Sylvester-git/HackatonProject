import 'amountmoneymodel.dart';
import 'applicationdetailmodel.dart';
import 'carddetailmodel.dart';
import 'riskevaluationmodel.dart';

class PaymentModel {
  Payment? payment;

  PaymentModel({this.payment});

  PaymentModel.fromJson(Map<String, dynamic> json) {
    payment =
        json['payment'] != null ? Payment.fromJson(json['payment']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (payment != null) {
      data['payment'] = payment!.toJson();
    }
    return data;
  }
}

class Payment {
  String? id;
  String? createdAt;
  String? updatedAt;
  AmountMoney? amountMoney;
  AmountMoney? appFeeMoney;
  String? status;
  String? delayDuration;
  String? sourceType;
  CardDetails? cardDetails;
  String? locationId;
  String? orderId;
  String? referenceId;
  RiskEvaluation? riskEvaluation;
  String? note;
  String? customerId;
  AmountMoney? totalMoney;
  AmountMoney? approvedMoney;
  String? receiptNumber;
  String? receiptUrl;
  String? delayAction;
  String? delayedUntil;
  ApplicationDetails? applicationDetails;
  String? versionToken;

  Payment(
      {this.id,
      this.createdAt,
      this.updatedAt,
      this.amountMoney,
      this.appFeeMoney,
      this.status,
      this.delayDuration,
      this.sourceType,
      this.cardDetails,
      this.locationId,
      this.orderId,
      this.referenceId,
      this.riskEvaluation,
      this.note,
      this.customerId,
      this.totalMoney,
      this.approvedMoney,
      this.receiptNumber,
      this.receiptUrl,
      this.delayAction,
      this.delayedUntil,
      this.applicationDetails,
      this.versionToken});

  Payment.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    amountMoney = json['amount_money'] != null
        ? AmountMoney.fromJson(json['amount_money'])
        : null;
    appFeeMoney = json['app_fee_money'] != null
        ? AmountMoney.fromJson(json['app_fee_money'])
        : null;
    status = json['status'];
    delayDuration = json['delay_duration'];
    sourceType = json['source_type'];
    cardDetails = json['card_details'] != null
        ?  CardDetails.fromJson(json['card_details'])
        : null;
    locationId = json['location_id'];
    orderId = json['order_id'];
    referenceId = json['reference_id'];
    riskEvaluation = json['risk_evaluation'] != null
        ?  RiskEvaluation.fromJson(json['risk_evaluation'])
        : null;
    note = json['note'];
    customerId = json['customer_id'];
    totalMoney = json['total_money'] != null
        ? AmountMoney.fromJson(json['total_money'])
        : null;
    approvedMoney = json['approved_money'] != null
        ? AmountMoney.fromJson(json['approved_money'])
        : null;
    receiptNumber = json['receipt_number'];
    receiptUrl = json['receipt_url'];
    delayAction = json['delay_action'];
    delayedUntil = json['delayed_until'];
    applicationDetails = json['application_details'] != null
        ? ApplicationDetails.fromJson(json['application_details'])
        : null;
    versionToken = json['version_token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  Map<String, dynamic>();
    data['id'] = id;
    data['created_at'] =createdAt;
    data['updated_at'] = updatedAt;
    if (amountMoney != null) {
      data['amount_money'] = amountMoney!.toJson();
    }
    if (appFeeMoney != null) {
      data['app_fee_money'] = appFeeMoney!.toJson();
    }
    data['status'] =status;
    data['delay_duration'] = delayDuration;
    data['source_type'] = sourceType;
    if (cardDetails != null) {
      data['card_details'] = this.cardDetails!.toJson();
    }
    data['location_id'] = this.locationId;
    data['order_id'] = this.orderId;
    data['reference_id'] = this.referenceId;
    if (this.riskEvaluation != null) {
      data['risk_evaluation'] = this.riskEvaluation!.toJson();
    }
    data['note'] = this.note;
    data['customer_id'] = this.customerId;
    if (this.totalMoney != null) {
      data['total_money'] = this.totalMoney!.toJson();
    }
    if (this.approvedMoney != null) {
      data['approved_money'] = this.approvedMoney!.toJson();
    }
    data['receipt_number'] = this.receiptNumber;
    data['receipt_url'] = this.receiptUrl;
    data['delay_action'] = this.delayAction;
    data['delayed_until'] = this.delayedUntil;
    if (this.applicationDetails != null) {
      data['application_details'] = this.applicationDetails!.toJson();
    }
    data['version_token'] = versionToken;
    return data;
  }
}









