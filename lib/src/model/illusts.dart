import 'package:freezed_annotation/freezed_annotation.dart';

import '../constants.dart';
import 'illust.dart';

part 'illusts.freezed.dart';
part 'illusts.g.dart';

@freezed
class Illusts with _$Illusts {
  factory Illusts({
    required List<Illust> illusts,
    required String? nextUrl,
  }) = _Illusts;

  factory Illusts.fromJson(JsonMap json) => _$IllustsFromJson(json);
}
