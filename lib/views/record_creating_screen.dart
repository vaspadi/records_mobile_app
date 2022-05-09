import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_app/constants/paddings.dart';
import 'package:mobile_app/constants/text.dart';
import 'package:mobile_app/controllers/records_controller.dart';
import 'package:mobile_app/models/client.dart';
import 'package:mobile_app/models/record.dart';
import 'package:mobile_app/widgets/controls/date_picker.dart';
import 'package:mobile_app/widgets/controls/input.dart';
import 'package:mobile_app/widgets/controls/time_picker.dart';

class RecordCreatingScreen extends StatelessWidget {
  const RecordCreatingScreen({Key? key}) : super(key: key);

  Client get client => controller.client;

  RecordsController get controller => Get.find<RecordsController>();

  Record get record => controller.recordDto;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create record'),
      ),
      body: ListView(
        padding: AppPaddings.screenPaddings,
        children: [
          const Text(
            'Client data',
            style: AppText.h2,
          ),
          Input(
            label: 'First name',
            padding: AppPaddings.verticalListGap,
            onChanged: (v) {
              controller.client = client.copyWith(firstName: v);
            },
          ),
          Input(
            label: 'Second name',
            padding: AppPaddings.verticalListGap,
            onChanged: (v) {
              controller.client = client.copyWith(secondName: v);
            },
          ),
          Input(
            label: 'Personal code',
            padding: AppPaddings.verticalListGap,
            onChanged: (v) {
              controller.client = client.copyWith(personalCode: v);
            },
          ),
          Input(
            label: 'Phone',
            padding: AppPaddings.verticalListGap,
            onChanged: (v) {
              controller.client = client.copyWith(phone: v);
            },
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 10, top: 16),
            child: Text(
              'Record data',
              style: AppText.h2,
            ),
          ),
          Input(
            label: 'Category',
            padding: AppPaddings.verticalListGap,
            onChanged: (v) {
              controller.recordDto = record.copyWith(category: v);
            },
          ),
          Input(
            label: 'Price',
            suffixIcon: const Icon(Icons.euro),
            padding: AppPaddings.verticalListGap,
            keyboardType: TextInputType.number,
            onChanged: (v) {
              controller.recordDto = record.copyWith(price: double.parse(v));
            },
          ),
          Input(
            label: 'Discount',
            suffixIcon: const Icon(Icons.percent),
            padding: AppPaddings.verticalListGap,
            keyboardType: TextInputType.number,
            onChanged: (v) {
              controller.recordDto = record.copyWith(discount: int.parse(v));
            },
          ),
          DatePicker(
            label: 'Date',
            padding: AppPaddings.verticalListGap,
            onChanged: (v) {
              controller.recordDto = record.copyWith(date: v);
            },
          ),
          TimePicker(
            label: 'Start time',
            padding: AppPaddings.verticalListGap,
          ),
          TimePicker(
            label: 'End time',
            padding: AppPaddings.verticalListGap,
          ),
          ElevatedButton(
            child: const Text(
              'Create',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onPressed: () {
              controller.addRecord();
            },
          )
        ],
      ),
    );
  }

  static void goHere(BuildContext context) {
    Navigator.push(
      context,
      GetPageRoute(
        page: () => const RecordCreatingScreen(),
      ),
    );
  }
}
