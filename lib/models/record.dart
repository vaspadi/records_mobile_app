import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:mobile_app/models/client.dart';

part 'record.g.dart';

@HiveType(typeId: 0)
class Record {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String category;
  @HiveField(2)
  final double price;
  @HiveField(3)
  final int? discount;
  @HiveField(4)
  final DateTime? date;
  @HiveField(5)
  final TimeOfDay? startTime;
  @HiveField(6)
  final TimeOfDay? endTime;
  @HiveField(7)
  final Client client;

  const Record({
    this.title = '',
    this.category = '',
    this.price = 0,
    this.discount,
    this.date,
    this.startTime,
    this.endTime,
    this.client = const Client(),
  });

  Record copyWith({
    String? title,
    String? category,
    double? price,
    int? discount,
    DateTime? date,
    TimeOfDay? startTime,
    TimeOfDay? endTime,
    Client? client,
  }) {
    return Record(
      title: title ?? this.title,
      category: category ?? this.category,
      price: price ?? this.price,
      discount: discount ?? this.discount,
      date: date ?? this.date,
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
      client: client ?? this.client,
    );
  }
}
