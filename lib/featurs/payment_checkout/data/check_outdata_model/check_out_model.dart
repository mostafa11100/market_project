class CheckOutModel {
  int? subtotal;
  int discount = 0;
  int shiping = 0;
  int? total;
  CheckOutModel(
      {this.subtotal,
      required this.discount,
      required this.shiping,
      this.total});
}
