import 'package:flutter/material.dart';

class TimePickerButton extends StatelessWidget {
  final String buttonText;

  const TimePickerButton({
    super.key,
    this.buttonText = "Select Time",
  });

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (pickedTime != null) {
      /// 🔹 Console output
      print("Selected Time: ${pickedTime.format(context)}");
      print("Hour: ${pickedTime.hour}, Minute: ${pickedTime.minute}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => _selectTime(context),
      child: Text(buttonText),
    );
  }
}
