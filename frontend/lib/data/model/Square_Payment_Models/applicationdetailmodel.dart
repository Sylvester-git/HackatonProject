class ApplicationDetails {
  String? squareProduct;
  String? applicationId;

  ApplicationDetails({this.squareProduct, this.applicationId});

  ApplicationDetails.fromJson(Map<String, dynamic> json) {
    squareProduct = json['square_product'];
    applicationId = json['application_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['square_product'] = this.squareProduct;
    data['application_id'] = this.applicationId;
    return data;
  }
}
