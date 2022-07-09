import 'package:medicinesystem/app/components/navbartop.dart';
import 'package:sizer/sizer.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:flutter/material.dart';

class DesktopBody extends StatelessWidget {
  const DesktopBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CalendarFormat _calendarFormat = CalendarFormat.month;
    DateTime _focusedDay = DateTime.now();
    DateTime? _selectedDay;
    return Navbartop(
        widget: Column(
      children: [
        Row(
          children: [
            Container(
              width: 60.w,
              child: TableCalendar(
                firstDay: DateTime.utc(2010, 10, 16),
                lastDay: DateTime.utc(2030, 3, 14),
                focusedDay: DateTime.now(),
                calendarFormat: _calendarFormat,
                selectedDayPredicate: (day) {
                  return isSameDay(_selectedDay, day);
                },
              ),
            ),
            Column(
              children: [
                Container(
                  width: 20.w,
                 
                  child: TableCalendar(
                    rowHeight: 30,
                    
                    firstDay: DateTime.utc(2010, 10, 16),
                    lastDay: DateTime.utc(2030, 3, 14),
                    focusedDay: DateTime.now(),
                    calendarFormat: _calendarFormat,
                    selectedDayPredicate: (day) {
                      return isSameDay(_selectedDay, day);
                    },
                  ),
                ),
                ElevatedButton(onPressed: (){

                }, child: Text("Agrear cita médica")),
                ElevatedButton(onPressed: (){

                }, child: Text("Agrear cita personal"))
              ],
            )
          ],
        ),
      ],
    ));
  }
}
