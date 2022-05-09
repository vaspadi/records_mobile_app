import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_app/constants/paddings.dart';
import 'package:mobile_app/controllers/records_controller.dart';
import 'package:mobile_app/widgets/controls/datepicker.dart';
import 'package:mobile_app/widgets/controls/input.dart';

class RecordCreatingScreen extends StatelessWidget {
  const RecordCreatingScreen({Key? key}) : super(key: key);

  RecordsController get contoller => Get.put(RecordsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create record'),
      ),
      body: Container(
        padding: AppPaddings.screenPaddings,
        child: Column(
          children: [
            const Input(
              label: 'First name',
              padding: AppPaddings.verticalListGap,
            ),
            const Input(
              label: 'Second name',
              padding: AppPaddings.verticalListGap,
            ),
            const Input(
              label: 'Category',
              padding: AppPaddings.verticalListGap,
            ),
            const Input(
              label: 'Price',
              padding: AppPaddings.verticalListGap,
              keyboardType: TextInputType.number,
            ),
            const Input(
              label: 'Discount %',
              padding: AppPaddings.verticalListGap,
              keyboardType: TextInputType.number,
            ),
            Datepicker(
              label: 'Date',
            ),
          ],
        ),
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
