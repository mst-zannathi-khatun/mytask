import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mytask/ui/widgets/elevatedbuttonwidget.dart';
import '../style/coustom_colors.dart';
import '../widgets/textformfieldwidget.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class CreateTaskScreen extends StatefulWidget {
  const CreateTaskScreen({super.key});

  @override
  State<CreateTaskScreen> createState() => _CreateTaskScreenState();
}

class _CreateTaskScreenState extends State<CreateTaskScreen> {
  TimeOfDay? _selectedTime;

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? selectedTime12Hour = await showTimePicker(
      context: context,
      initialTime: const TimeOfDay(hour: 10, minute: 47),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: Theme.of(context).copyWith(
            timePickerTheme: TimePickerThemeData(
              dayPeriodTextColor: WidgetStateColor.resolveWith((states) {
                if (states.contains(WidgetState.selected)) {
                  return Colors.green; // Text color when selected
                }
                return Colors.black; // Default text color when not selected
              }),
              dayPeriodColor: WidgetStateColor.resolveWith((states) {
                if (states.contains(WidgetState.selected)) {
                  return Colors.green
                      .withOpacity(0.2); // Background color when selected
                }
                return Colors
                    .transparent; // Default background color when not selected
              }),
              dayPeriodShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: const BorderSide(color: Colors.green),
              ),
            ),
          ),
          child: child!,
        );
      },
    );

    if (selectedTime12Hour != null) {
      setState(() {
        _selectedTime = selectedTime12Hour;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            Center(
              child: SfDateRangePicker(
                selectionMode: DateRangePickerSelectionMode.range,
                view: DateRangePickerView.year,
                todayHighlightColor: MyTaskThemeColor.primaryColor,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    _selectedTime != null
                        ? 'Selected time: ${_selectedTime!.format(context)}'
                        : 'No time selected',
                    style: const TextStyle(fontSize: 24, color: Colors.white),
                  ),
                  const SizedBox(height: 4),
                  TextButton(
                    onPressed: () => _selectTime(context),
                    child: const Text(
                      'Select Time',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            const TextFormFieldWidget(
              prefixIcons: Icon(Icons.subject),
              hintText: "Write your subject",
            ),
            const SizedBox(
              height: 8,
            ),
            const TextFormFieldWidget(
              prefixIcons: Icon(Icons.note),
              hintText: "Write your description",
              hintTextAlign: TextAlign.justify,
              maxLines: 8,
            ),
            const SizedBox(
              height: 32,
            ),
            SizedBox(
                height: 50,
                width: double.infinity,
                child:
                    ElevatedButtonWidget(onPressed: () {}, buttonText: "SAVE")),
          ],
        ),
      ),
    );
  }
}
