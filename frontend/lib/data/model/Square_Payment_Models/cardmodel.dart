class Card {
  String? cardBrand;
  String? last4;
  int? expMonth;
  int? expYear;
  String? fingerprint;
  String? cardType;
  String? prepaidType;
  String? bin;

  Card(
      {cardBrand,
      last4,
      expMonth,
      expYear,
      fingerprint,
      cardType,
      prepaidType,
      bin});

  Card.fromJson(Map<String, dynamic> json) {
    cardBrand = json['card_brand'];
    last4 = json['last_4'];
    expMonth = json['exp_month'];
    expYear = json['exp_year'];
    fingerprint = json['fingerprint'];
    cardType = json['card_type'];
    prepaidType = json['prepaid_type'];
    bin = json['bin'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['card_brand'] = cardBrand;
    data['last_4'] = last4;
    data['exp_month'] = expMonth;
    data['exp_year'] = expYear;
    data['fingerprint'] = fingerprint;
    data['card_type'] = cardType;
    data['prepaid_type'] = prepaidType;
    data['bin'] = bin;
    return data;
  }
}