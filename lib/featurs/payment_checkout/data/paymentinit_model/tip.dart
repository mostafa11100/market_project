class Tip {
  Tip();
  var tip;
  factory Tip.fromJson(Map<String, dynamic> json) {
    return Tip();
  }

  Map<String, dynamic> toJson() {
    throw UnimplementedError();
  }
}
