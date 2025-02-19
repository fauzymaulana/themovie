import 'package:watch_me/data/entities/remote/date_response.dart';
import 'package:watch_me/domain/entities/date_entity.dart';

extension DateMapper on DateResponse {
  DateEntity toDateEntity() {
    return DateEntity(
      max: max,
      min: min,
    );
  }
}