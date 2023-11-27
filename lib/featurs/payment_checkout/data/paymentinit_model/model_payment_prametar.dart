class paymentinit_model_prametar {
  String? amount;
  String? eccurance;

  paymentinit_model_prametar({this.amount, this.eccurance});
  tojson() {
    return {'amount': amount, 'currency': eccurance};
  }
}
