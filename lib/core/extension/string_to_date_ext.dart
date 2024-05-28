extension StringToDate on String{
  String removeZFromDateTime(DateTime dateTime) {
    String formattedDateTime = dateTime.toIso8601String();
    if (formattedDateTime.endsWith('Z')) {
      formattedDateTime =
          formattedDateTime.substring(0, formattedDateTime.length - 1);
    }
    return formattedDateTime;
  }
}

