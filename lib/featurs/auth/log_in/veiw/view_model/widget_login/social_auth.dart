import 'package:ecommerca_app/consts/style_const/textstyle.dart';
import 'package:ecommerca_app/featurs/auth/log_in/veiw/view_model/widget_login/text_custom.dart';
import 'package:flutter/material.dart';

class social_auth extends StatelessWidget {
  const social_auth({
    super.key,
    required this.icon,
    required this.text,
    required this.ontap,
  });
  final text;
  final icon;
  final Function() ontap;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: TextButton(
          onPressed: ontap,
          child: Row(
            children: [
              Image.asset(
                icon,
                width: 20,
                height: 20,
              ),
              const SizedBox(
                width: 60,
              ),
              custom_text(
                text: text,
                style: text_style.textstyle16,
              )
            ],
          )),
    );
  }
}
