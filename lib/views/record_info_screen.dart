import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_app/constants/paddings.dart';
import 'package:mobile_app/models/record.dart';

class RecordInfoScreen extends StatelessWidget {
  final Record record;

  const RecordInfoScreen(
    this.record, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Record info'),
      ),
      body: Padding(
        padding: AppPaddings.screenPaddings,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Title: ${record.title}'),
            Text('Category: ${record.category}'),
            Text('Price: ${record.price}'),
            Text('Discount: ${record.discount ?? 0}%'),
            Text('Date: ${record.formattedDate ?? '...'}'),
            Text('Start time: ${record.formattedStartTime ?? '...'}'),
            Text('End time: ${record.formattedEndTime ?? '...'}'),
          ],
        ),
      ),
    );
  }

  static void goHere(
    BuildContext context, {
    required Record record,
  }) {
    Navigator.push(
      context,
      GetPageRoute(
        page: () => RecordInfoScreen(record),
      ),
    );
  }
}
