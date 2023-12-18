import 'package:ecommerca_app/consts/style_const/textstyle.dart';
import 'package:ecommerca_app/featurs/auth/log_in/veiw/view_model/widget_login/text_custom.dart';
import 'package:flutter/material.dart';

class row_photo_name extends StatelessWidget {
  const row_photo_name({super.key, this.photo, this.name, this.email});
  // ignore: prefer_typing_uninitialized_variables
  final photo;
  // ignore: prefer_typing_uninitialized_variables
  final name;
  // ignore: prefer_typing_uninitialized_variables
  final email;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: 100,
          height: 100,
          child: (photo != "" && photo != null)
              ? CircleAvatar(
                  radius: 100,
                  backgroundImage: NetworkImage(
                    photo,
                  ))
              : const CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 100,
                  backgroundImage: AssetImage(
                    "assets/empty.PNG",
                  )),
        ),
        const SizedBox(
          width: 30,
        ),
        SizedBox(
          width: 160,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              custom_text(
                  text: name,
                  style:
                      text_style.textstyle20.copyWith(fontFamily: "comfortaa")),
              custom_text(text: email, style: text_style.textstyle17)
            ],
          ),
        )
      ],
    );
  }
}
