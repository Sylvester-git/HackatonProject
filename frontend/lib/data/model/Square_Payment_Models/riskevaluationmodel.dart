class RiskEvaluation {
  String? createdAt;
  String? riskLevel;

  RiskEvaluation({this.createdAt, this.riskLevel});

  RiskEvaluation.fromJson(Map<String, dynamic> json) {
    createdAt = json['created_at'];
    riskLevel = json['risk_level'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['created_at'] = this.createdAt;
    data['risk_level'] = this.riskLevel;
    return data;
  }
}
