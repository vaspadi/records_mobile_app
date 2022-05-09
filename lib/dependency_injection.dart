import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mobile_app/controllers/records_controller.dart';
import 'package:mobile_app/models/client.dart';
import 'package:mobile_app/models/record.dart';

class DependencyInjection {
  static Future<void> init() async {
    await Hive.initFlutter();
    await _initDb();
    final recordsBox = await Hive.openBox<Record>('records');

    Get.put(RecordsController(recordsBox));
  }

  static Future<void> _initDb() async {
    Hive.registerAdapter(RecordAdapter());
    Hive.registerAdapter(ClientAdapter());
  }
}
