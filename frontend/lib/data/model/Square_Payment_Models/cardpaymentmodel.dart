class CardPaymentTimeline {
  String? authorizedAt;
  String? capturedAt;

  CardPaymentTimeline({this.authorizedAt, this.capturedAt});

  CardPaymentTimeline.fromJson(Map<String, dynamic> json) {
    authorizedAt = json['authorized_at'];
    capturedAt = json['captured_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['authorized_at'] = authorizedAt;
    data['captured_at'] = capturedAt;
    return data;
  }
}