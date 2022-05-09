import 'package:mobile_app/models/client.dart';

class Record {
  final String title;
  final String category;
  final double price;
  final int? discount;
  final DateTime? date;
  final DateTime? startTime;
  final DateTime? endTime;
  final Client? client;

  Record({
    this.title = '',
    this.category = '',
    this.price = 0,
    this.discount,
    this.date,
    this.startTime,
    this.endTime,
    this.client,
  });
}
