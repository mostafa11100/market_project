class modecl_user {
  String? name;
  String? photo;
  String? email;
  modecl_user.fromjson(Map<String, dynamic> json) {
    name = json['name'];
    photo = json['photo'];
    email = json['email'];
  }
  modecl_user.tojson(
    this.name,
    this.photo,
    this.email,
  );
}
