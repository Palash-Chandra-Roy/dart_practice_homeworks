//Homework
/*  Problem in homework; 
Create a class and override toString method that will show output like:

Instance of 'ClassName'

Instance created at: Thursday 12:08PM, 21 sep 2023.
*/

import 'dart:core';

class MyClass {
  final DateTime createdAt;

  // Constructor initializes the creation time
  MyClass() : createdAt = DateTime.now();

  // Overriding the toString method
  @override
  String toString() {
    return "Instance of '${runtimeType}'\n"
        "Instance created at: ${_formatDateTime(createdAt)}";
  }

  // Private helper method to format DateTime
  String _formatDateTime(DateTime dateTime) {
    return "${_getWeekday(dateTime.weekday)} "
        "${_formatTime(dateTime)}, "
        "${dateTime.day} ${_getMonth(dateTime.month)} ${dateTime.year}.";
  }

  // Formatting time as HH:MM AM/PM
  String _formatTime(DateTime dateTime) {
    int hour = dateTime.hour > 12 ? dateTime.hour - 12 : dateTime.hour;
    String amPm = dateTime.hour >= 12 ? "PM" : "AM";
    return "${hour == 0 ? 12 : hour}:${dateTime.minute.toString().padLeft(2, '0')}$amPm";
  }

  // Getting weekday name
  String _getWeekday(int weekday) {
    const weekdays = [
      "",
      "Monday",
      "Tuesday",
      "Wednesday",
      "Thursday",
      "Friday",
      "Saturday",
      "Sunday"
    ];
    return weekdays[weekday];
  }

  // Getting month name
  String _getMonth(int month) {
    const months = [
      "",
      "Jan",
      "Feb",
      "Mar",
      "Apr",
      "May",
      "Jun",
      "Jul",
      "Aug",
      "Sep",
      "Oct",
      "Nov",
      "Dec"
    ];
    return months[month];
  }
}

void main() {
  var instance = MyClass();

  print(instance); // Calls the overridden toString() method
}
