enum FollowingRestrict { all, public, private }

// Reference: https://stackoverflow.com/questions/1175208/elegant-python-function-to-convert-camelcase-to-snake-case
String _camelCasetoSnakeCase(String string) {
  return string
      .replaceAllMapped(
        RegExp('(.)([A-Z][a-z]+)'),
        (match) => '${match.group(1)}_${match.group(2)}',
      )
      .replaceAllMapped(
        RegExp('([a-z0-9])([A-Z])'),
        (match) => '${match.group(1)}_${match.group(2)}',
      )
      .toLowerCase();
}

enum IllustType { illust, manga, ugoira }

enum AIType { undefined, humanCreated, aiGenerated }

enum IllustRankingMode {
  day,
  dayMale,
  dayFemale,
  weekOriginal,
  weekRookie,
  week,
  month,
  dayR18,
  dayMaleR18,
  dayFemaleR18,
  weekR18,
  weekR18g,
  dayManga,
  weekRookieManga,
  weekManga,
  monthManga,
  dayR18Manga,
  weekR18Manga,
  weekR18gManga,
  dayAI,
  dayR18AI;

  String toSnakeCaseString() => _camelCasetoSnakeCase(name);
}

enum NovelRankingMode {
  day,
  dayMale,
  dayFemale,
  weekRookie,
  week,
  dayR18,
  weekR18,
  dayMaleR18,
  dayFemaleR18,
  weekR18g,
  weekAI,
  weekAIR18;

  String toSnakeCaseString() => _camelCasetoSnakeCase(name);
}

enum Privacy { public, mypixiv, private }

enum Restrict { public, private }
