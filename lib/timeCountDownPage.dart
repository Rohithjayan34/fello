import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:circular_countdown/circular_countdown.dart';

class TimeCountdownPage extends StatefulWidget {
  const TimeCountdownPage({
    Key? key,
  }) : super(key: key);
  @override
  _TimeCountdownPageState createState() => _TimeCountdownPageState();
}

class _TimeCountdownPageState extends State<TimeCountdownPage> {
  String description = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Time CountdownPage'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      // backgroundColor: Colors.grey[900],
      body: Center(
        child: Stack(
          children: const <Widget>[
            TimeCircularCountdown(
              countdownRemainingColor: Colors.green,
              strokeWidth: 50,
              gapFactor: 10000,
              countdownTotalColor: Colors.transparent,
              unit: CountdownUnit.second,
              countdownTotal: 15,
              diameter: 200,
              countdownCurrentColor: Colors.green,
              textStyle: TextStyle(
                color: Colors.green,
                fontSize: 50,
              ),
            ),

          ],
        ),
      ),
    );
  }

  String _formatTime(CountdownUnit unit, int remainingTime) =>
      '$remainingTime ${describeEnum(unit)}${remainingTime > 1 ? 's' : ''}';
}