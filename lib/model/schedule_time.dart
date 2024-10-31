class ScheduleTime {
  final String time;
  final TimeStatus status;

  ScheduleTime({required this.time, required this.status});
}

enum TimeStatus { available, taken, chosen }

final List<ScheduleTime> scheduleTimes = [
  ScheduleTime(time: "14.45 PM", status: TimeStatus.taken),
  ScheduleTime(time: "09.25 AM", status: TimeStatus.taken),
  ScheduleTime(time: "09.45 AM", status: TimeStatus.chosen),
  ScheduleTime(time: "08.55 PM", status: TimeStatus.available),
  ScheduleTime(time: "07.45 PM", status: TimeStatus.available),
  ScheduleTime(time: "14.40 AM", status: TimeStatus.taken),
  ScheduleTime(time: "10.45 AM", status: TimeStatus.taken),
  ScheduleTime(time: "08.40 PM", status: TimeStatus.available),
  ScheduleTime(time: "07.35 AM", status: TimeStatus.available),
];