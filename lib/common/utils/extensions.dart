extension DateTimeExtension on DateTime {
  DateTime makeHoursRound() => DateTime(
        year,
        month,
        day,
        minute < 30 ? hour : hour + 1,
      );
}
