import 'package:dio/dio.dart';

class DioErrorHandler {
  static String getErrorMessage(DioException error) {
    if (error.response != null) {
      switch (error.response?.statusCode) {
        case 400:
          return "Bad request, please check your data.";
        case 401:
          return "Unauthorized, please check your credentials.";
        case 500:
          return "Internal server error.";
        default:
          return "Unexpected server error.";
      }
    } else if (error.type == DioExceptionType.connectionTimeout ||
        error.type == DioExceptionType.receiveTimeout ||
        error.type == DioExceptionType.sendTimeout) {
      return "Connection timeout.";
    } else if (error.type == DioExceptionType.connectionError) {
      return "No internet connection.";
    }
    return "Unexpected error occurred.";
  }


  static String handleDioError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
        return "Connection timeout. Please try again.";
      case DioExceptionType.receiveTimeout:
        return "Receive timeout. Please try again.";
      case DioExceptionType.sendTimeout:
        return "Send timeout. Please try again.";
      case DioExceptionType.badResponse:
        return _handleBadResponse(error.response);
      case DioExceptionType.cancel:
        return "Request cancelled.";
      case DioExceptionType.unknown:
      default:
        return "Unexpected error occurred.";
    }
  }

  static String _handleBadResponse(Response<dynamic>? response) {
    if (response == null) return "No response from server.";
    switch (response.statusCode) {
      case 400:
        return "Bad request.";
      case 401:
        return "Unauthorized. Please login again.";
      case 403:
        return "Forbidden access.";
      case 404:
        return "Data not found.";
      case 500:
        return "Internal server error.";
      default:
        return "Something went wrong.";
    }
  }
}