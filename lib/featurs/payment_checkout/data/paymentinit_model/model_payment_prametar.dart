class PaymentinitModelPrametar {
  String? amount;
  String? eccurance;
  String? customrid;

  PaymentinitModelPrametar({this.amount, this.eccurance, this.customrid});
  tojson() {
    return {'amount': amount, 'currency': eccurance, 'customer': customrid};
  }
}
