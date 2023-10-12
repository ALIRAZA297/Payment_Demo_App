import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Calender extends StatefulWidget {
  const Calender({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CalenderState createState() => _CalenderState();
}

class _CalenderState extends State<Calender> {
  final TextEditingController _controller = TextEditingController();

  DateTime _selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                height: 60,
                width: 168,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(1, 1),
                        color: Colors.grey.shade200,
                        spreadRadius: 1,
                        blurRadius: 30,
                      )
                    ]),
                child: TextFormField(
                  style: const TextStyle(color: Color(0xFFAAAAAA)),
                  controller: _controller,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(20),
                    prefixIcon: Icon(
                      Icons.calendar_month_outlined,
                      color: Color(0xFFAAAAAA),
                    ),
                  ),
                  onTap: () {
                    _selectDate(context);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2050),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
      _controller.text = DateFormat("MM/yy").format(_selectedDate);
    }
  }
}
