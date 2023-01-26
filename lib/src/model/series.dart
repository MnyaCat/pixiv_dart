import 'package:freezed_annotation/freezed_annotation.dart';

import '../constants.dart';

part 'series.freezed.dart';
part 'series.g.dart';

@freezed
class Series with _$Series {
  factory Series({
    required int id,
    required String title,
  }) = _Series;

  factory Series.fromJson(JsonMap json) => _$SeriesFromJson(json);
}
