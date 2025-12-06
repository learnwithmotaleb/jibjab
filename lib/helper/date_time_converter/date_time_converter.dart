import 'package:intl/intl.dart';

class DateConverter {
  static String estimatedDate(DateTime dateTime) {
    return DateFormat('dd MMM yyyy').format(dateTime);
  }

  static String hourMinit(DateTime utcDateTime) {
    DateTime localDateTime = utcDateTime.toLocal();
    String output = DateFormat('hh:mm a').format(localDateTime);
    return output;
  }

  static DateTime convertStringToDatetime() {
    DateTime now = DateTime.now();
    return now.toUtc();
  }

  ///=============== Calculate Time of Day ===============

  static String getTimePeriod() {
    // Get the current hour of the day
    int currentHour = DateTime.now().hour;

    // Define the boundaries for morning, noon, and evening
    int morningBoundary = 6;
    int noonBoundary = 12;
    int eveningBoundary = 18;

    // Determine the time period based on the current hour
    if (currentHour >= morningBoundary && currentHour < noonBoundary) {
      return "Good Morning";
    } else if (currentHour >= noonBoundary && currentHour < eveningBoundary) {
      return "Good Noon";
    } else {
      return "Good Evening";
    }
  }

  ///======================= Calculate CreatedAt time and show it =========================

  static String formatTimeAgo(String dateTimeString) {
    // Parse the string into a DateTime object
    DateTime dateTime = DateTime.parse(dateTimeString);

    final now = DateTime.now();
    final difference = now.difference(dateTime);

    if (difference.inDays > 1) {
      // If the time is more than 1 day ago, return the date in "dd MMM yyyy" format
      return '${dateTime.day} ${_getMonthName(dateTime.month)} ${dateTime.year}';
    } else if (difference.inDays == 1) {
      // If the time is 1 day ago, return "Yesterday"
      return 'Yesterday';
    } else if (difference.inHours >= 1) {
      // If the time is today but more than an hour ago, return in hours ago format
      return '${difference.inHours}h ago';
    } else if (difference.inMinutes >= 1) {
      // If the time is less than an hour ago, return in minutes ago format
      return '${difference.inMinutes}m ago';
    } else {
      // If the time is less than a minute ago, return "Just now"
      return 'Just now';
    }
  }

  // Helper method to get month name
  static String _getMonthName(int month) {
    const months = [
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'May',
      'Jun',
      'Jul',
      'Aug',
      'Sep',
      'Oct',
      'Nov',
      'Dec'
    ];
    return months[month - 1];
  }
}
