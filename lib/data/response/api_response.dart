import 'status.dart';

class ApiResponse<T> {
  Status? status;
  T? data;
  String? message;

  ApiResponse(this.status, this.data, this.message);

  ApiResponse.loading() : status = Status.LOADING;

  ApiResponse.completed(this.data) : status = Status.COMPLETED;

  ApiResponse.error(this.message) : status = Status.ERROR;

  ApiResponse.offline(this.message) : status = Status.OFFLINE;

  ApiResponse.none() : status = Status.NONE;

  @override
  String toString() {
    return "Status : $status \n Message : $message \n Data : $data";
  }
}
