class model_categorise {
  String? type;
  String? photo;

  model_categorise.fromjson(Map<String, dynamic> json) {
    type = json['type'];
    photo = json['photo'];
  }
}

class model_product {
  int? price;
  String? details = "";
  String? name = "";
  String? type = "";
  String? image = "";
  int? size;
  String? color = "";
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
  model_product.tojson(this.price, this.details, this.name, this.type,
      this.image, this.size, this.color, int count) {
    list_cart!.add(name!);
    list_cart?.add(details!);
    list_cart!.add(count);

    list_cart?.add(image!);
    list_cart!.add(color!);
    list_cart!.add(price!);
    list_cart!.add(size!);
    list_cart!.add(type!);
  }
}
