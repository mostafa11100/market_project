class save_model {
  String? name;
  String? email;
  String? photo;
  String? uid;
  save_model(this.name, this.email, this.photo, this.uid);
  save_model.fromjson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    photo = json['photo'];
    uid = json['uid'];
  }

  tojson() {
    Map<String, dynamic> json = {
      'name': name,
      'email': email,
      'photo': photo,
      'uid': uid
    };
    return json;
  }
}
