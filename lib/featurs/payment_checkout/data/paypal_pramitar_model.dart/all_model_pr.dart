import 'package:ecommerca_app/featurs/payment_checkout/data/paypal_pramitar_model.dart/amount_pr_model/amount_prmodel/amount_prmodel.dart';
import 'package:ecommerca_app/featurs/payment_checkout/data/paypal_pramitar_model.dart/itemlist_pr_model/item_list.dart';

class all_pr_model {
  // ignore: non_constant_identifier_names
  final AmountPrmodel amount_model2;
  final String id;
  final String secret;
  final ItemList list;
  all_pr_model(
      {required this.id,
      required this.secret,
      required this.amount_model2,
      required this.list});
}
