import 'package:hive/hive.dart';

part 'person.g.dart';

@HiveType(typeId: 0)
class Person {
  @HiveField(0)
  String fn;

  @HiveField(1)
  String address;

  @HiveField(2)
  String email;

  Person({
    required this.fn,
    required this.address,
    this.email = "",
  });
}
