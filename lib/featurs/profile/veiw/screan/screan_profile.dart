// ignore_for_file: camel_case_types

import 'package:ecommerca_app/featurs/profile/veiw/screan/widget_profile/list_tile.dart';
import 'package:ecommerca_app/featurs/profile/veiw/screan/widget_profile/row_photo_name.dart';
import 'package:flutter/material.dart';
import '../cubit/cubit_get_user.dart';

// ignore: must_be_immutable
class profile extends StatelessWidget {
  profile({
    super.key,
  });

  GetUser user = GetUser();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            SizedBox(
                height: MediaQuery.of(context).size.height / 5.2,
                child: row_photo_name(
                  photo: user.photo,
                  name: user.name,
                  email: user.email,
                )),
            const SizedBox(
              height: 50,
            ),
            const body_profile()
          ],
        ),
      ),
    );
  }
}

////////////////////////
///
class body_profile extends StatelessWidget {
  const body_profile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        list_tile(
            text: "edit profile",
            icon1: Icon(Icons.edit),
            icon2: Icon(Icons.arrow_right_rounded)),
        SizedBox(
          height: 5,
        ),
        list_tile(
            text: "shiping address",
            icon1: Icon(Icons.add_location_sharp),
            icon2: Icon(Icons.arrow_right_rounded)),
        SizedBox(
          height: 5,
        ),
        list_tile(
            text: "order history",
            icon1: Icon(Icons.history),
            icon2: Icon(Icons.arrow_right_rounded)),
        SizedBox(
          height: 5,
        ),
        list_tile(
            text: "cards",
            icon1: Icon(Icons.credit_card),
            icon2: Icon(Icons.arrow_right_rounded)),
        SizedBox(
          height: 5,
        ),
        list_tile(
            text: "notfication",
            icon1: Icon(Icons.notification_important),
            icon2: Icon(Icons.arrow_right_rounded)),
        SizedBox(
          height: 5,
        ),
        list_tile(
            text: "Log out",
            icon1: Icon(Icons.logout_outlined),
            icon2: Icon(Icons.arrow_right_rounded)),
      ],
    );
  }
}
