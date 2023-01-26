import 'package:freezed_annotation/freezed_annotation.dart';

import '../constants.dart';

part 'tag.freezed.dart';
part 'tag.g.dart';

@freezed
class Tag with _$Tag {
  factory Tag({
    required String name,
    String? translatedName,
    bool? addedByUploadedUser,
  }) = _Tag;

  factory Tag.fromJson(JsonMap json) => _$TagFromJson(json);
}
