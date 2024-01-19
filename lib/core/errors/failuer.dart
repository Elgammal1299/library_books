import 'package:dio/dio.dart';

abstract class Failuer {
  final String errMessage;

  const Failuer(this.errMessage);
}

class ServerFailure extends Failuer {
  ServerFailure(super.errMessage);
  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with Api Server');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Sent timeout with Api Server');

      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout with Api Server');

      case DioExceptionType.badCertificate:
        return ServerFailure('Receive timeout to Api Server');

      case DioExceptionType.badResponse:
        ServerFailure.fromResponse(
            dioException.response!.statusCode!, dioException.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('request with Api Server canceld');
      case DioExceptionType.connectionError:
        if (dioException.message!.contains('SocketException')) {
          return ServerFailure('No internrt connection');
        }
      case DioExceptionType.unknown:
        return ServerFailure('request with Api Server canceld');

      default:
        return ServerFailure('oop There was an error , please try later! ');
    }
    return ServerFailure('Unexpected Error, please try later! ');
  }
  factory ServerFailure.fromResponse(int statesCode, dynamic response) {
    if (statesCode == 400 || statesCode == 401 || statesCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statesCode == 404) {
      return ServerFailure('your request not found , please try later! ');
    } else if (statesCode == 500) {
      return ServerFailure('internal Server error , please try later! ');
    } else {
      return ServerFailure('oop There was an error , please try later! ');
    }
  }
}
