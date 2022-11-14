# How to change the alldaypanel background color in the Flutter Calendar?

This example demonstrates how to customize the allday panel background in the Flutter Calendar.


By using the [allDayPanelColor](https://pub.dev/documentation/syncfusion_flutter_calendar/latest/calendar/TimeSlotViewSettings/allDayPanelColor.html) property of the [timeSlotViewSettings](https://pub.dev/documentation/syncfusion_flutter_calendar/latest/calendar/TimeSlotViewSettings/TimeSlotViewSettings.html), you can customize the background colour for the all-day panel in the Flutter Calendar.

```
@override
Widget build(BuildContext context) {
  return MaterialApp(
    home: Scaffold(
      body: Container(
        child: SfCalendar(
          view: CalendarView.week,
          timeSlotViewSettings:
              TimeSlotViewSettings(allDayPanelColor: Colors.green),
        ),
      ),
    ),
  );
}

```

You can also refer our UG documentation to know more about [AlldaypanelCustomization](https://help.syncfusion.com/flutter/calendar/timeslot-views#all-day-panel-background-color).


## Requirements to run the demo
* [VS Code](https://code.visualstudio.com/download)
* [Flutter SDK v1.22+](https://flutter.dev/docs/development/tools/sdk/overview)
* [For more development tools](https://flutter.dev/docs/development/tools/devtools/overview)

## How to run this application
To run this application, you need to first clone or download the ‘create a flutter maps widget in 10 minutes’ repository and open it in your preferred IDE. Then, build and run your project to view the output.

## Further help
For more help, check the [Syncfusion Flutter documentation](https://help.syncfusion.com/flutter/introduction/overview),
 [Flutter documentation](https://flutter.dev/docs/get-started/install).