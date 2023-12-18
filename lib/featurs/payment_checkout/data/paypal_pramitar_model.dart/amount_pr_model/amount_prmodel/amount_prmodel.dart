import 'details.dart';

class AmountPrmodel {
  String? total;
  String? currency;
  Details? details;

  AmountPrmodel({this.total, this.currency, this.details});

  factory AmountPrmodel.fromJson(Map<String, dynamic> json) => AmountPrmodel(
        total: json['total'] as String?,
        currency: json['currency'] as String?,
        details: json['details'] == null
            ? null
            : Details.fromJson(json['details'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'total': total,
        'currency': currency,
        'details': details?.toJson(),
      };
}
