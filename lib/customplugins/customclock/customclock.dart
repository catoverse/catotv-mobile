import 'package:cato_feed/customplugins/customclock/widgets/clock_internal_widget.dart';
import 'package:flutter/material.dart';
import 'package:vector_math/vector_math_64.dart' show radians;

// Distance for the minute hand
final radiansPerTick = radians(360 / 60);
// Distance for the hour hand
final radiansPerHour = radians(360 / 12);

class CustomClock extends StatefulWidget {
  @override
  _CustomClockState createState() => _CustomClockState();
}

class _CustomClockState extends State<CustomClock> {
  @override
  Widget build(BuildContext context) {
    final unit = 8.0;
    return Container(
      padding: EdgeInsets.all(1.5*unit),
      child: ClockInternalWidget(tickColor: Color(0xFF212121), unit: unit),
    );
  }
}
