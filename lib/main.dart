import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

void main() {
  return runApp(const AllDayPanelBackground());
}

class AllDayPanelBackground extends StatelessWidget {
  const AllDayPanelBackground({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BackgroundColor(),
    );
  }
}

class BackgroundColor extends StatefulWidget {
  const BackgroundColor({Key? key}) : super(key: key);
  @override
  BackgroundColorState createState() => BackgroundColorState();
}

class BackgroundColorState extends State<BackgroundColor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SfCalendar(
              allowedViews: const [CalendarView.day,CalendarView.workWeek,CalendarView.week],
              timeSlotViewSettings: const TimeSlotViewSettings(allDayPanelColor: Colors.deepPurple),
              dataSource: _getCalendarDataSource(),
              view: CalendarView.day,
            )));
  }

  _DataSource _getCalendarDataSource() {
    List<Meeting> appointments = <Meeting>[];
    appointments.add(Meeting(
        from: DateTime.now(),
        to: DateTime.now().add(const Duration(minutes: 20)),
        content: 'Meeting',
        background: Colors.greenAccent,
        isAllDay: true
    ));
    appointments.add(Meeting(
      from: DateTime.now().add(const Duration(days: 1)),
      to: DateTime.now().add(const Duration(hours: 2, days: 1)),
      content: 'Planning',
      background: Colors.deepPurple,
    ));

    appointments.add(Meeting(
      from: DateTime.now().add(const Duration(days: -2, hours: 2)),
      to: DateTime.now().add(const Duration(hours: 3, days: -2)),
      content: 'Retrospective',
      background: Colors.amber,
    ));

    appointments.add(Meeting(
        from: DateTime.now().add(const Duration(days: -5, hours: 2)),
        to: DateTime.now().add(const Duration(hours: 3, days: -5)),
        content: 'Anniversary',
        background: Colors.green,
        isAllDay: true));

    appointments.add(Meeting(
      from: DateTime.now().add(const Duration(days: -2, hours: 5)),
      to: DateTime.now().add(const Duration(hours: 6, days: -2)),
      content: 'Sprint planning',
      background: Colors.red,
    ));

    return _DataSource(appointments);
  }
}

class _DataSource extends CalendarDataSource {
  _DataSource(List<Meeting> source) {
    appointments = source;
  }

  @override
  DateTime getStartTime(int index) {
    return appointments![index].from as DateTime;
  }

  @override
  DateTime getEndTime(int index) {
    return appointments![index].to as DateTime;
  }

  @override
  String getSubject(int index) {
    return appointments![index].content as String;
  }

  @override
  Color getColor(int index) {
    return appointments![index].background as Color;
  }

  @override
  bool isAllDay(int index) {
    return appointments![index].isAllDay;
  }
}

class Meeting {
  Meeting(
      {this.content = '',
        required this.from,
        required this.to,
        required this.background,
        this.isAllDay = false});

  String content;
  DateTime from;
  DateTime to;
  Color background;
  bool isAllDay;
}
