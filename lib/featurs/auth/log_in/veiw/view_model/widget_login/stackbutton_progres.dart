import 'package:ecommerca_app/featurs/auth/log_in/veiw/view_model/widget_login/custom_btton.dart';
import 'package:flutter/material.dart';

class stack_button_brogres extends StatelessWidget {
  const stack_button_brogres({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center, children: [
      Opacity(
        opacity: 0.4,
        child: custom_button(
          ontop: () {},
          width: 270.0,
          text: "Sign In",
        ),
      ),
      const Center(child: CircularProgressIndicator.adaptive()),
    ]);
  }
}
