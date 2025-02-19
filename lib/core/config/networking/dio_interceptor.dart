import 'package:dio/dio.dart';

class DioInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers.addAll(
      {
        "Authorization": "Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJhMDY0ZTJiOGViN2ZmNDNlYjUyMDZlYzg1OGNiYmYzOCIsIm5iZiI6MTYzMTE2MDIyNC42MDksInN1YiI6IjYxMzk4N2EwNTI1OGFlMDA0NGE4NmEwOCIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.DRnETRomg1mym-2OS0sV_dt2GT0gUgjHihMo00YQ4oA",
        "Content-Type": "application/json",
      }
    );

    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    super.onError(err, handler);
  }
}