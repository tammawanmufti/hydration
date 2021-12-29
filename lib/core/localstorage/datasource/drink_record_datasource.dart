import 'package:dartz/dartz.dart';
import 'package:hydration/core/constants/failure/failure.dart';
import 'package:hydration/core/localstorage/localstorage.dart';
import 'package:hydration/core/localstorage/storage/models/drink_record.dart';
import 'package:hydration/core/utils/extension/date_time_extensions.dart';

abstract class DrinkRecordLocalDataSource {
  Future<Either<Failure, DrinkRecord>> save(DrinkRecord record);
  Future<Either<Failure, bool>> delete(DrinkRecord record);
  Future<Either<Failure, List<DrinkRecord>>> getAllRecord();
  Future<Either<Failure, List<DrinkRecord>>> getRecordByDate(DateTime dateTime);
}

class DrinkRecordLocalDataSourceImplementation implements DrinkRecordLocalDataSource {
  final LocalStorage localStorage;

  DrinkRecordLocalDataSourceImplementation(this.localStorage);

  @override
  Future<Either<Failure, DrinkRecord>> save(DrinkRecord record) async {
    try {
      await localStorage.drinkRecords.add(record);
      return Right(record);
    } catch (e) {
      return Left(SaveRecordFailure());
    }
  }

  @override
  Future<Either<Failure, bool>> delete(DrinkRecord record) async {
    try {
      await localStorage.drinkRecords.delete(record);
      return right(true);
    } catch (e) {
      return Left(SaveRecordFailure());
    }
  }

  @override
  Future<Either<Failure, List<DrinkRecord>>> getAllRecord() async {
    try {
      final List<DrinkRecord> result = await localStorage.drinkRecords.getAll() as List<DrinkRecord>;
      return Right(result);
    } catch (e) {
      return Left(LoadRecordFailure());
    }
  }

  @override
  Future<Either<Failure, List<DrinkRecord>>> getRecordByDate(DateTime dateTime) async {
    try {
      final response = await getAllRecord();
      return response.fold((l) => throw LoadRecordFailure(), (r) {
        final result = r.where((e) => e.drinkAt.isSameDate(dateTime)).toList();
        return Right(result);
      });
    } catch (e) {
      return Left(LoadRecordFailure());
    }
  }
}
