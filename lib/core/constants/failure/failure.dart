abstract class Failure {}

class LocalStorageFailure extends Failure {}

class SaveRecordFailure extends LocalStorageFailure {}

class LoadRecordFailure extends LocalStorageFailure {}

class DeleteRecordFailure extends LocalStorageFailure {}
