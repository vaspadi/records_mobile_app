import 'package:get/get.dart';
import 'package:mobile_app/models/record.dart';

class RecordsController extends GetxController {
  final _recordDto = Rx<Record>(Record());

  RecordsController();

  Record get recordDto => _recordDto.value;

  set recordDto(Record v) => _recordDto.value = v;
}
