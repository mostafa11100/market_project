import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
bool keyform_state(GlobalKey<FormState>? keform) {
  if (keform!.currentState != null) {
    var kfs = keform.currentState!.validate();

    if (kfs) return true;
  }
  return false;
}
