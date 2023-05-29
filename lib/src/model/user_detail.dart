import 'package:freezed_annotation/freezed_annotation.dart';

import '../constants.dart';
import 'enums.dart';
import 'user_info.dart';

part 'user_detail.freezed.dart';
part 'user_detail.g.dart';

@freezed
class Profile with _$Profile {
  factory Profile({
    required String? webpage,
    required String gender,
    required String birth,
    required String birthDay,
    required int birthYear,
    required String region,
    required int addressId,
    required String countryCode,
    required String job,
    required int jobId,
    required int totalFollowUsers,
    required int totalMypixivUsers,
    required int totalIllusts,
    required int totalManga,
    required int totalNovels,
    required int totalIllustBookmarksPublic,
    required int totalIllustSeries,
    required int totalNovelSeries,
    required String? backgroundImageUrl,
    required String twitterAccount,
    required String? twitterUrl,
    required String? pawooUrl,
    required bool isPremium,
    required bool isUsingCustomProfileImage,
  }) = _Profile;

  factory Profile.fromJson(JsonMap json) => _$ProfileFromJson(json);
}

@freezed
class ProfilePublicity with _$ProfilePublicity {
  factory ProfilePublicity({
    required Privacy gender,
    required Privacy region,
    required Privacy birthDay,
    required Privacy birthYear,
    required Privacy job,
    required bool pawoo,
  }) = _ProfilePublicity;

  factory ProfilePublicity.fromJson(JsonMap json) =>
      _$ProfilePublicityFromJson(json);
}

@freezed
class Workspace with _$Workspace {
  factory Workspace({
    required String pc,
    required String monitor,
    required String tool,
    required String scanner,
    required String tablet,
    required String mouse,
    required String printer,
    required String desktop,
    required String music,
    required String desk,
    required String chair,
    required String comment,
    required String? workspaceImageUrl,
  }) = _Workspace;

  factory Workspace.fromJson(JsonMap json) => _$WorkspaceFromJson(json);
}

@freezed
class UserDetail with _$UserDetail {
  factory UserDetail({
    required UserInfo user,
    required Profile profile,
    required ProfilePublicity profilePublicity,
    required Workspace workspace,
  }) = _UserDetail;

  factory UserDetail.fromJson(JsonMap json) => _$UserDetailFromJson(json);
}
