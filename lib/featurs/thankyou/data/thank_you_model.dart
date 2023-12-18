class ThankYouModel {
  String? total;
  String cardtype = "MastrCard*********";
  DateTime? dataTime;
  String? Time = "";
  String? date = "";

  ThankYouModel({required this.cardtype, this.dataTime, this.total}) {
    if (dataTime!.hour > 12) {
      Time =
          "${dataTime!.millisecond / 1000}:${dataTime!.minute}:${(dataTime!.hour - 12)} AM";
    } else {
      Time =
          "${dataTime!.millisecond / 1000}:${dataTime!.minute}:${dataTime!.hour} PM";
    }
    date = "${dataTime!.day}:${dataTime!.month}:${dataTime!.year}";
  }
}
