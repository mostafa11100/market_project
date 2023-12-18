import 'package:ecommerca_app/approuter.dart';
import 'package:ecommerca_app/featurs/auth/sign_up/veiw/veiw_model/signup_widget/body_section.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class sign_up extends StatelessWidget {
  const sign_up({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(top: 50, left: 5, right: 5),
      child: ListView(
        //  crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: IconButton(
                onPressed: () {
                  GoRouter.of(context).pushReplacement(AppRouter.loGin);
                },
                icon: const Icon(Icons.arrow_back_ios)),
          ),
          const SizedBox(
            height: 50,
          ),
          body_sign_section()
        ],
      ),
    ));
  }
}
