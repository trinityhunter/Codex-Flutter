// import 'package:flutter/material.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// import 'package:timezone/data/latest.dart' as tz;
// import 'package:timezone/timezone.dart' as tz;

// import 'package:table_calendar/table_calendar.dart';
// import 'package:todo_app/main.dart';
// import '../utils.dart';

// class TableEventsExample extends StatefulWidget {
//   @override
//   _TableEventsExampleState createState() => _TableEventsExampleState();
// }

// class _TableEventsExampleState extends State<TableEventsExample> {
//   late final ValueNotifier<List<Event>> _selectedEvents;
//   CalendarFormat _calendarFormat = CalendarFormat.month;
//   RangeSelectionMode _rangeSelectionMode = RangeSelectionMode
//       .toggledOff; // Can be toggled on/off by longpressing a date
//   DateTime _focusedDay = DateTime.now();
//   DateTime? _selectedDay;
//   DateTime? _rangeStart;
//   DateTime? _rangeEnd;

//   @override
//   void initState() {
//     super.initState();

//     tz.initializeTimeZones(); // Initialize timezone data

//     _selectedDay = _focusedDay;
//     _selectedEvents = ValueNotifier(_getEventsForDay(_selectedDay!));
//   }

//   @override
//   void dispose() {
//     _selectedEvents.dispose();
//     super.dispose();
//   }

//   List<Event> _getEventsForDay(DateTime day) {
//     return kEvents[day] ?? [];
//   }

//   List<Event> _getEventsForRange(DateTime start, DateTime end) {
//     final days = daysInRange(start, end);

//     return [
//       for (final d in days) ..._getEventsForDay(d),
//     ];
//   }

//   void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
//     if (!isSameDay(_selectedDay, selectedDay)) {
//       setState(() {
//         _selectedDay = selectedDay;
//         _focusedDay = focusedDay;
//         _rangeStart = null;
//         _rangeEnd = null;
//         _rangeSelectionMode = RangeSelectionMode.toggledOff;
//       });

//       _selectedEvents.value = _getEventsForDay(selectedDay);
//     }
//   }

//   void _onRangeSelected(DateTime? start, DateTime? end, DateTime focusedDay) {
//     setState(() {
//       _selectedDay = null;
//       _focusedDay = focusedDay;
//       _rangeStart = start;
//       _rangeEnd = end;
//       _rangeSelectionMode = RangeSelectionMode.toggledOn;
//     });

//     if (start != null && end != null) {
//       _selectedEvents.value = _getEventsForRange(start, end);
//     } else if (start != null) {
//       _selectedEvents.value = _getEventsForDay(start);
//     } else if (end != null) {
//       _selectedEvents.value = _getEventsForDay(end);
//     }
//   }

//   void _openAddTaskDialog(BuildContext context) {
//     final _taskController = TextEditingController();
//     DateTime? selectedDate;
//     TimeOfDay? selectedTime;

//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: Text('Add Task'),
//           content: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               TextField(
//                 controller: _taskController,
//                 decoration: InputDecoration(labelText: 'Task'),
//               ),
//               SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: () async {
//                   final pickedDate = await showDatePicker(
//                     context: context,
//                     initialDate: DateTime.now(),
//                     firstDate: DateTime(2000),
//                     lastDate: DateTime(2101),
//                   );
//                   if (pickedDate != null) {
//                     selectedDate = pickedDate;
//                   }
//                 },
//                 child: Text('Select Date'),
//               ),
//               ElevatedButton(
//                 onPressed: () async {
//                   final pickedTime = await showTimePicker(
//                     context: context,
//                     initialTime: TimeOfDay.now(),
//                   );
//                   if (pickedTime != null) {
//                     selectedTime = pickedTime;
//                   }
//                 },
//                 child: Text('Select Time'),
//               ),
//             ],
//           ),
//           actions: [
//             TextButton(
//               onPressed: () {
//                 Navigator.pop(context);
//               },
//               child: Text('Cancel'),
//             ),
//             TextButton(
//               onPressed: () {
//                 if (selectedDate != null &&
//                     selectedTime != null &&
//                     _taskController.text.isNotEmpty) {
//                   final taskDateTime = DateTime(
//                     selectedDate!.year,
//                     selectedDate!.month,
//                     selectedDate!.day,
//                     selectedTime!.hour,
//                     selectedTime!.minute,
//                   );

//                   _addTask(taskDateTime, _taskController.text);

//                   Navigator.pop(context);
//                 }
//               },
//               child: Text('Add Task'),
//             ),
//           ],
//         );
//       },
//     );
//   }

//   void _addTask(DateTime dateTime, String taskTitle) {
//     final taskEvent = Event(taskTitle);

//     setState(() {
//       if (kEvents[dateTime] != null) {
//         kEvents[dateTime]?.add(taskEvent);
//       } else {
//         kEvents[dateTime] = [taskEvent];
//       }
//       _selectedEvents.value = _getEventsForDay(_selectedDay!);

//       // Schedule the notification
//       print(dateTime);
//       _scheduleNotification(dateTime, taskTitle);
//     });
//   }

//   Future<void> _scheduleNotification(
//       DateTime scheduledDateTime, String taskTitle) async {
//     final androidPlatformChannelSpecifics = AndroidNotificationDetails(
//       'task_channel_id', // Channel ID
//       'Task Notifications', // Channel name
//       channelDescription: 'Notification channel for task reminders',
//       importance: Importance.max,
//       priority: Priority.high,
//     );

//     final platformChannelSpecifics = NotificationDetails(
//       android: androidPlatformChannelSpecifics,
//     );

//     // Convert DateTime to TZDateTime
//     final tz.TZDateTime tzScheduledDateTime = tz.TZDateTime(
//       tz.local,
//       scheduledDateTime.year,
//       scheduledDateTime.month,
//       scheduledDateTime.day,
//       scheduledDateTime.hour,
//       scheduledDateTime.minute,
//     );

//     await flutterLocalNotificationsPlugin.zonedSchedule(
//       0,
//       'Task Reminder',
//       'Your task "$taskTitle" is due soon.',
//       tzScheduledDateTime.subtract(Duration(
//           minutes: 10)), // Schedule 10 minutes before the task due time
//       platformChannelSpecifics,
//       androidAllowWhileIdle: true,
//       uiLocalNotificationDateInterpretation:
//           UILocalNotificationDateInterpretation.absoluteTime,
//       matchDateTimeComponents: DateTimeComponents.time,
//     );
//   }

//   void _deleteTask(DateTime dateTime, Event event) {
//     setState(() {
//       kEvents[dateTime]?.remove(event);
//       if (kEvents[dateTime]?.isEmpty ?? true) {
//         kEvents.remove(dateTime);
//       }
//       _selectedEvents.value = _getEventsForDay(_selectedDay!);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     print(kEvents[_selectedDay]);
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('TableCalendar - Events'),
//       ),
//       body: Column(
//         children: [
//           TableCalendar<Event>(
//             firstDay: kFirstDay,
//             lastDay: kLastDay,
//             focusedDay: _focusedDay,
//             selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
//             rangeStartDay: _rangeStart,
//             rangeEndDay: _rangeEnd,
//             calendarFormat: _calendarFormat,
//             rangeSelectionMode: _rangeSelectionMode,
//             eventLoader: _getEventsForDay,
//             startingDayOfWeek: StartingDayOfWeek.monday,
//             calendarStyle: CalendarStyle(
//               outsideDaysVisible: false,
//             ),
//             onDaySelected: _onDaySelected,
//             onRangeSelected: _onRangeSelected,
//             onFormatChanged: (format) {
//               if (_calendarFormat != format) {
//                 setState(() {
//                   _calendarFormat = format;
//                 });
//               }
//             },
//             onPageChanged: (focusedDay) {
//               _focusedDay = focusedDay;
//             },
//           ),
//           const SizedBox(height: 8.0),
//           Expanded(
//             child: ValueListenableBuilder<List<Event>>(
//               valueListenable: _selectedEvents,
//               builder: (context, value, _) {
//                 return ListView.builder(
//                   itemCount: value.length,
//                   itemBuilder: (context, index) {
//                     return Container(
//                         margin: const EdgeInsets.symmetric(
//                           horizontal: 12.0,
//                           vertical: 4.0,
//                         ),
//                         decoration: BoxDecoration(
//                           border: Border.all(),
//                           borderRadius: BorderRadius.circular(12.0),
//                         ),
//                         child: ListTile(
//                           onTap: () => print('${value[index]}'),
//                           title: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Text('${value[index]}'),
//                               InkWell(
//                                   onTap: () {
//                                     // _deleteTask(_selectedDay!, Event());
//                                   },
//                                   child: Icon(Icons.delete))
//                             ],
//                           ),
//                         ));
//                   },
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () => _openAddTaskDialog(context),
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:todo_app/main.dart';
import '../utils.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

class TableEventsExample extends StatefulWidget {
  @override
  _TableEventsExampleState createState() => _TableEventsExampleState();
}

class _TableEventsExampleState extends State<TableEventsExample> {
  late final ValueNotifier<List<Event>> _selectedEvents;
  CalendarFormat _calendarFormat = CalendarFormat.week;
  RangeSelectionMode _rangeSelectionMode = RangeSelectionMode.toggledOff;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  DateTime? _rangeStart;
  DateTime? _rangeEnd;

  @override
  void initState() {
    super.initState();

    _selectedDay = _focusedDay;
    _selectedEvents = ValueNotifier(_getEventsForDay(_selectedDay!));
  }

  @override
  void dispose() {
    _selectedEvents.dispose();
    super.dispose();
  }

  List<Event> _getEventsForDay(DateTime day) {
    return kEvents[day] ?? [];
  }

  List<Event> _getEventsForRange(DateTime start, DateTime end) {
    final days = daysInRange(start, end);
    return [for (final d in days) ..._getEventsForDay(d)];
  }

  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    if (!isSameDay(_selectedDay, selectedDay)) {
      setState(() {
        _selectedDay = selectedDay;
        _focusedDay = focusedDay;
        _rangeStart = null;
        _rangeEnd = null;
        _rangeSelectionMode = RangeSelectionMode.toggledOff;
      });

      _selectedEvents.value = _getEventsForDay(selectedDay);
    }
  }

  void _onRangeSelected(DateTime? start, DateTime? end, DateTime focusedDay) {
    setState(() {
      _selectedDay = null;
      _focusedDay = focusedDay;
      _rangeStart = start;
      _rangeEnd = end;
      _rangeSelectionMode = RangeSelectionMode.toggledOn;
    });

    if (start != null && end != null) {
      _selectedEvents.value = _getEventsForRange(start, end);
    } else if (start != null) {
      _selectedEvents.value = _getEventsForDay(start);
    } else if (end != null) {
      _selectedEvents.value = _getEventsForDay(end);
    }
  }

  void _openAddTaskDialog(BuildContext context) {
    final _taskController = TextEditingController();
    DateTime? selectedDate;
    TimeOfDay? selectedTime;

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Add Task'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: _taskController,
                decoration: InputDecoration(labelText: 'Task'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () async {
                  final pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2101),
                  );
                  if (pickedDate != null) {
                    selectedDate = pickedDate;
                  }
                },
                child: Text('Select Date'),
              ),
              ElevatedButton(
                onPressed: () async {
                  final pickedTime = await showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                  );
                  if (pickedTime != null) {
                    selectedTime = pickedTime;
                  }
                },
                child: Text('Select Time'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                if (selectedDate == null || selectedTime == null) {
                  _showAlertDialog(
                      context, 'Please select both date and time.');
                } else if (_taskController.text.isEmpty) {
                  _showAlertDialog(context, 'Please enter a task title.');
                } else {
                  final taskDateTime = DateTime(
                    selectedDate!.year,
                    selectedDate!.month,
                    selectedDate!.day,
                    selectedTime!.hour,
                    selectedTime!.minute,
                  );

                  _addTask(taskDateTime, _taskController.text);

                  Navigator.pop(context);
                }
              },
              child: Text('Add Task'),
            ),
          ],
        );
      },
    );
  }

  void _showAlertDialog(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Error'),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  void _addTask(DateTime dateTime, String taskTitle) {
    final taskEvent = Event(taskTitle);

    setState(() {
      if (kEvents[dateTime] != null) {
        kEvents[dateTime]?.add(taskEvent);
      } else {
        kEvents[dateTime] = [taskEvent];
      }
      _selectedEvents.value = _getEventsForDay(_selectedDay!);

      _scheduleNotification(dateTime, taskTitle);
      _checkPendingNotifications();
    });
  }

  void _deleteTask(DateTime dateTime, Event event) {
    setState(() {
      kEvents[dateTime]?.remove(event);
      if (kEvents[dateTime]?.isEmpty ?? true) {
        kEvents.remove(dateTime);
      }
      _selectedEvents.value = _getEventsForDay(_selectedDay!);
    });
  }

  Future<void> _scheduleNotification(
      DateTime scheduledDateTime, String taskTitle) async {
    final androidPlatformChannelSpecifics = AndroidNotificationDetails(
      'task_channel_id',
      'Task Notifications',
      channelDescription: 'Notification channel for task reminders',
      importance: Importance.max,
      priority: Priority.high,
    );

    final platformChannelSpecifics = NotificationDetails(
      android: androidPlatformChannelSpecifics,
    );

    final tz.TZDateTime tzScheduledDateTime = tz.TZDateTime(
      tz.local,
      scheduledDateTime.year,
      scheduledDateTime.month,
      scheduledDateTime.day,
      scheduledDateTime.hour,
      scheduledDateTime.minute,
    );

    await flutterLocalNotificationsPlugin.zonedSchedule(
      0,
      'Task Reminder',
      'Your task "$taskTitle" is due soon.',
      tzScheduledDateTime.subtract(Duration(minutes: 10)),

      platformChannelSpecifics,
      androidAllowWhileIdle: true,
      uiLocalNotificationDateInterpretation:
          UILocalNotificationDateInterpretation.absoluteTime,
      matchDateTimeComponents: DateTimeComponents.time,
    );

    print("task scheduled");
  }

  Future<void> _checkPendingNotifications() async {
    final List<PendingNotificationRequest> pendingNotificationRequests =
        await flutterLocalNotificationsPlugin.pendingNotificationRequests();

    for (var request in pendingNotificationRequests) {
      print(
          'Pending Notification: ${request.id}, ${request.title}, ${request.body}');
    }
  }

  @override
  Widget build(BuildContext context) {
    final DateTime now = DateTime.now();
    final DateTime scheduledDateTime =
        now.add(Duration(seconds: 5)); // 5 seconds from now

    _scheduleNotification(scheduledDateTime, 'Test Notification');
    _checkPendingNotifications();

    return Scaffold(
      appBar: AppBar(
        title: Text('TableCalendar - Events'),
      ),
      body: Column(
        children: [
          TableCalendar<Event>(
            firstDay: kFirstDay,
            lastDay: kLastDay,
            focusedDay: _focusedDay,
            selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
            rangeStartDay: _rangeStart,
            rangeEndDay: _rangeEnd,
            calendarFormat: _calendarFormat,
            rangeSelectionMode: _rangeSelectionMode,
            eventLoader: _getEventsForDay,
            startingDayOfWeek: StartingDayOfWeek.monday,
            calendarStyle: CalendarStyle(
              outsideDaysVisible: false,
            ),
            onDaySelected: _onDaySelected,
            onRangeSelected: _onRangeSelected,
            onFormatChanged: (format) {
              if (_calendarFormat != format) {
                setState(() {
                  _calendarFormat = format;
                });
              }
            },
            onPageChanged: (focusedDay) {
              _focusedDay = focusedDay;
            },
          ),
          const SizedBox(height: 8.0),
          Expanded(
            child: ValueListenableBuilder<List<Event>>(
              valueListenable: _selectedEvents,
              builder: (context, value, _) {
                return ListView.builder(
                  itemCount: value.length,
                  itemBuilder: (context, index) {
                    final event = value[index];
                    return Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 12.0,
                        vertical: 4.0,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: ListTile(
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(event.toString(), style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                            InkWell(
                              onTap: () => _deleteTask(_selectedDay!, event),
                              child: Icon(Icons.delete),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _openAddTaskDialog(context),
        child: Icon(Icons.add),
      ),
    );
  }
}
