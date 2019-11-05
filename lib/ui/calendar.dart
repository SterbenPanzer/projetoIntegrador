import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:flutter_your_pet/ui/horario.dart';

class CalendarPage extends StatefulWidget {
  @override
  _CalendarPageState createState() => _CalendarPageState();
}



class _CalendarPageState extends State<CalendarPage> {

    var _calendarController = CalendarController();
    String day;

  @override
  void initState() {
    super.initState();
    _calendarController = CalendarController();
  }

  @override
  void dispose(){
    _calendarController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calendário"),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 20.0),
        child: Column(
          children: <Widget>[
            TableCalendar(
                onDaySelected: _onDaySelected,
                calendarController: _calendarController
            ),
            Padding(
              padding: EdgeInsets.only(right: 10.0, left: 10.0, top: 20.0),
              child: Container(
                height: 50.0,
                child: RaisedButton(
                  padding: EdgeInsets.symmetric(horizontal: 30.0),
                  elevation: 10.0,
                  shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  onPressed: () {
                   _irParaHorarios();
                  },
                  color: Colors.deepOrange,
                  child: Text(
                    "Proximo",
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                ),
              ),
            ),
          ],
        )
      ),
    );
  }
    void _onDaySelected(DateTime day1, List events) {
      print('CALLBACK: _onDaySelected' + day.toString());
      day = day1.toString();
    }

    void _irParaHorarios(){
      Navigator.push(context, MaterialPageRoute(
          builder: (context) => HorarioPage(day
          )));
    }
}

