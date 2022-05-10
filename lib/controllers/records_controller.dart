import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mobile_app/models/client.dart';
import 'package:mobile_app/models/record.dart';

class RecordsController extends GetxController {
  final _recordDto = Rx<Record>(Record.empty());

  final Box<Record> _recordsBox;

  final _records = RxList<Record>([]);

  RecordsController(this._recordsBox) {
    _records.value = _recordsBox.values.toList();
  }

  Client get client => _recordDto.value.client;

  set client(Client v) =>
      _recordDto.value = _recordDto.value.copyWith(client: v);

  Record get recordDto => _recordDto.value;

  set recordDto(Record v) => _recordDto.value = v;

  List<Record> get records => _records;

  void addRecord() {
    _recordsBox.add(_recordDto.value);
    _records.value = _recordsBox.values.toList();
    _recordDto.value = Record.empty();
  }

  List<Record> getRecords() => _recordsBox.values.toList();
}
