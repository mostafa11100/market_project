class model_categorise {
  String? type;
  String? photo;

  model_categorise.fromjson(Map<String, dynamic> json) {
    type = json['type'];
    photo = json['photo'];
  }
}

class model_product {
  int? price = 1;
  String? details = "dsd";
  String? name = "ds";
  String? type = "ds";
  String? image =
      "https://firebasestorage.googleapis.com/v0/b/ecommerca-e559a.appspot.com/o/iphone.PNG?alt=media&token=2f99dbb8-92c7-4ef6-a41d-dc2eb1dd9331&_gl=1*1cwv49s*_ga*MjA2NjM4ODM1OC4xNjg2OTk1MDE4*_ga_CW55HF8NVT*MTY5NjQzMTk0NC42Mi4xLjE2OTY0MzI4OTIuMy4wLjA.";
  int? size = 33;
  String? color = "sd";
  int count = 1;
  model_product.fromjson(Map<String, dynamic>? json) {
    if (json == null) return;

    details = json['details'];
    type = json['categoris_name'];
    name = json['name'];
    price = json['price'];
    size = json['size'];
    image = json['image'];
    color = json['color'];
    count = json['count'];
  }
  List? list_cart = [];
  model_product.tojson(int? price1, String? details1, String? name1,
      String? type1, String? image1, int? size1, String? color1, int count) {
    list_cart!.add(name1!);
    list_cart?.add(details1!);
    list_cart!.add(count);

    list_cart?.add(image1!);
    list_cart!.add(color1!);
    list_cart!.add(price1!);
    list_cart!.add(size1!);
    list_cart!.add(type1!);
  }
}
