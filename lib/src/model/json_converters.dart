import 'package:json_annotation/json_annotation.dart';

import '../constants.dart';
import '../extensions.dart';
import 'enums.dart';
import 'series.dart';

class LocalDateTimeConverter implements JsonConverter<DateTime, String> {
  const LocalDateTimeConverter();

  @override
  DateTime fromJson(String json) {
    return DateTime.parse(json).toLocal();
  }

  @override
  String toJson(DateTime object) {
    return object.toIso8601WithTimezoneString();
  }
}

class AITypeConverter implements JsonConverter<AIType, int> {
  const AITypeConverter();

  @override
  AIType fromJson(int json) {
    return AIType.values[json];
  }

  @override
  int toJson(AIType object) {
    return object.index;
  }
}

// ignore: strict_raw_type
class NovelSeriesConverter implements JsonConverter<Series?, Map?> {
  const NovelSeriesConverter();

  @override
  // ignore: strict_raw_type
  Series? fromJson(Map? json) {
    if (json == null || json.isEmpty) {
      return null;
    } else {
      return Series.fromJson(json as JsonMap);
    }
  }

  @override
  // ignore: strict_raw_type
  Map? toJson(Series? object) {
    if (object == null) {
      return null;
    } else {
      return object.toJson();
    }
  }
}
