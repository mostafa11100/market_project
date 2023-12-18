import 'package:ecommerca_app/classes/stripe_prametar.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

void intializeservice() async {
  WidgetsFlutterBinding
      .ensureInitialized(); //علشن تضمن ان التطبيق يتعمل ليه انشياليذ لكل  مكوناته  وضمان ان ميحصلش اخطاء
  Stripe.publishableKey = puplishKey;
  await Firebase.initializeApp(); //اعمل انشيالذ ل الفاي ر بيز
}
