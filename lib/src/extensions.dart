extension DateTimeExtension on DateTime {
  // Reference: https://gist.github.com/apgapg/84d855e41c0134a34ff8b2cf034ad249
  String toIso8601WithTimezoneString() {
    final duration = timeZoneOffset.abs();

    final timeZoneSign = duration.isNegative ? '-' : '+';
    final timeZoneHours = duration.inHours.toString().padLeft(2, '0');
    final timeZoneMinutes = (duration.inMinutes - (duration.inHours * 60))
        .toString()
        .padLeft(2, '0');
    final timeZone = '$timeZoneSign$timeZoneHours:$timeZoneMinutes';

    final isoString = toIso8601String().replaceAll('Z', '');
    return '${isoString.substring(0, isoString.indexOf('.'))}$timeZone';
  }
}
