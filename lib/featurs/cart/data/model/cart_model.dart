// class model_categorise {
//   String? type;
//   String? photo;

//   model_categorise.fromjson(Map<String, dynamic> json) {
//     type = json['type'];
//     photo = json['photo'];
//   }
// }

// class model_cart {
//   int? price;
//   String? details;
//   String? name;
//   String? type;
//   String? image;
//   int? size;
//   String? color;
//   List<Object>? list_cart;
//   model_cart.fromjson(Map<String, dynamic>? json) {
//     if (json == null) return;

//     price = json['price'];
//     details = json['details'];
//     name = json['name'];
//     type = json['categoris_name'];
//     image = json['image'];
//     size = json['size'];
//     color = json['color'];
//   }
//   model_cart.tojson(
//     int? price,
//     String? details,
//     String? name,
//     String? type,
//     String? image,
//     int? size,
//     String? color,
//   ) {
//     list_cart?.add(price!);
//     list_cart?.add(details!);
//     list_cart?.add(name!);
//     list_cart?.add(type!);
//     list_cart?.add(image!);
//     list_cart?.add(size!);
//     list_cart?.add(color!);
//     print(list_cart);
//   }
// }
