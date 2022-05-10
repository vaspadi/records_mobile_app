import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_app/constants/paddings.dart';
import 'package:mobile_app/controllers/records_controller.dart';
import 'package:mobile_app/views/record_creating_screen.dart';
import 'package:mobile_app/views/record_info_screen.dart';
import 'package:mobile_app/widgets/record_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  RecordsController get controller => Get.find<RecordsController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
          actions: [
            IconButton(
              onPressed: () => RecordCreatingScreen.goHere(context),
              icon: const Icon(Icons.add),
            ),
          ],
        ),
        body: Padding(
          padding: AppPaddings.screenPaddings,
          child: controller.records.isEmpty
              ? const Center(
                  child: Text('No data'),
                )
              : ListView(
                  children: controller.records.map((e) {
                    return InkWell(
                      onTap: () => RecordInfoScreen.goHere(
                        context,
                        record: e,
                      ),
                      child: RecordCard(
                        e,
                        padding: AppPaddings.verticalListGap,
                      ),
                    );
                  }).toList(),
                ),
        ),
      ),
    );
  }
}
