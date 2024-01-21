import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;
  const Failure(this.errorMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMessage);
  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(
          'Connection timed out with ApiServer',
        );
      case DioExceptionType.sendTimeout:
        return ServerFailure(
          'Send timed out with ApiServer',
        );
      case DioExceptionType.receiveTimeout:
        return ServerFailure(
          'Receiver timed out with ApiServer',
        );

      case DioExceptionType.badResponse:
        return ServerFailure.fromBadResponse(
            dioException.response!.statusCode!, dioException.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure(
          'Request with ApiServer was canceled',
        );
      case DioExceptionType.connectionError:
        return ServerFailure(
          'Connection error',
        );
      case DioExceptionType.unknown:
        if (dioException.message!.contains('SocketException')) {
          return ServerFailure('No Internet connection');
        }
        return ServerFailure(
          'Unexpected error, please try later',
        );
      case DioExceptionType.badCertificate:
        return ServerFailure(
          'Somthing went wrong',
        );
      default:
        return ServerFailure('OOPS! Something went wrong, please try later.');
    }
  }
  factory ServerFailure.fromBadResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your request not found, please try later.');
    } else if (statusCode == 500) {
      return ServerFailure('Internal server error, please try later.');
    } else {
      return ServerFailure('OOPS! Something went wrong, please try later.');
    }
  }
}
