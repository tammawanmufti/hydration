import 'package:flutter_test/flutter_test.dart';
import 'package:hive/hive.dart';
import 'package:hydration/core/localstorage/repository/drink_record_repository.dart';
import 'package:hydration/core/localstorage/storage/models/drink_record.dart';
import 'package:mocktail/mocktail.dart';

class MockHive extends Mock implements HiveInterface {}

class MockBox extends Mock implements Box {}

void main() {
  const boxName = 'DrinkRecordTest';
  late DrinkRecordRepository repo;
  late MockHive mockHive;
  late MockBox mockBox;

  setUp(() {
    mockHive = MockHive();
    mockBox = MockBox();
  });

  arrange({required DrinkRecord? boxContent, required bool empty}) {
    when(() => mockHive.openBox(boxName)).thenAnswer((invocation) => Future.value(mockBox));
    when(() => mockBox.containsKey(0)).thenReturn(!empty);
    when(() => mockBox.close()).thenAnswer((invocation) => Future.value());
  }
}
