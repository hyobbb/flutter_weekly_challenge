import 'package:weekly_challenge/src/models/models.dart';

List<Week> generateWeeks(int year) {
  List<Week> weeks = [];
  DateTime startDate = DateTime(year, 1, 1);
  while (startDate.weekday != 1) {
    // find first monday
    startDate = startDate.add(const Duration(days: 1));
  }

  int order = 1;
  while (startDate.year == year) {
    final endDate = startDate.add(const Duration(
      days: 6,
      hours: 23,
      minutes: 59,
      seconds: 59,
    ));
    weeks.add(Week(
      id: year.toString() + order.toString(),
      order: order,
      startDate: startDate,
      endDate: endDate,
    ));
    startDate = endDate;
    order++;
  }
  return weeks;
}

Week whatWeekIsToday() {
  final today = DateTime.now();
  final weeks = generateWeeks(today.year);
  return weeks.firstWhere((w) => w.startDate.isBefore(today) && w.endDate.isAfter(today));
}

String weekToString(Week week) {
  final start = week.startDate;
  final end = week.endDate;
  final from = [
    start.year,
    start.month.toString().padLeft(2, '0'),
    start.day.toString().padLeft(2, '0')
  ].join('-');
  final to = [
    end.year,
    end.month.toString().padLeft(2, '0'),
    end.day.toString().padLeft(2, '0')
  ].join('-');
  return [from, to].join(' ~ ');
}
