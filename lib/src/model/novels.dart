import 'package:freezed_annotation/freezed_annotation.dart';

import '../constants.dart';
import 'novel.dart';

part 'novels.freezed.dart';
part 'novels.g.dart';

@freezed
class Novels with _$Novels {
  factory Novels({
    required List<Novel> novels,
    required String? nextUrl,
  }) = _Novels;

  factory Novels.fromJson(JsonMap json) => _$NovelsFromJson(json);
}
