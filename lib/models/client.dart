import 'package:hive_flutter/hive_flutter.dart';

part 'client.g.dart';

@HiveType(typeId: 2)
class Client {
  @HiveField(0)
  final String? firstName;
  @HiveField(1)
  final String? secondName;
  @HiveField(2)
  final String? personalCode;
  @HiveField(3)
  final String? phone;

  const Client({
    this.firstName,
    this.secondName,
    this.personalCode,
    this.phone,
  });

  Client copyWith({
    String? firstName,
    String? secondName,
    String? personalCode,
    String? phone,
  }) {
    return Client(
      firstName: firstName ?? this.firstName,
      secondName: secondName ?? this.secondName,
      personalCode: personalCode ?? this.personalCode,
      phone: phone ?? this.phone,
    );
  }
}
