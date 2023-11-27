class address {
  String? streat1;
  String? streat2;
  String? city;
  String? state;
  String? country;
  Map<String, dynamic>? json = {};
  address.tojson(
      this.streat1, this.streat2, this.city, this.state, this.country) {
    json!['streat1'] = streat1;
    json!['streat2'] = streat2;
    json!['city'] = city;
    json!['state'] = state;
    json!['country'] = country;
  }
  address.fromjson(Map<String, dynamic>? json) {
    streat1 = json!['streat1'];
    streat2 = json['streat2'];
    city = json['city'];
    state = json['state'];
    country = json['country'];
  }
}
