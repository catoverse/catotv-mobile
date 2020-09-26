import 'package:cato_feed/customplugins/customclock/widgets/slider/double_circular_slider.dart';
import 'package:cato_feed/customplugins/customclock/widgets/slider/drop_path_clipper.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:kt_dart/kt.dart';
import 'package:vector_math/vector_math_64.dart' show radians;

typedef OnClockUpdate = void Function(String startTime, String endTime);

class ClockInternalWidget extends StatefulWidget {
  final Color tickColor;
  final double unit;
  final String startTime;
  final String endTime;
  final OnClockUpdate onUpdate;

  ClockInternalWidget({
    Key key,
    @required this.tickColor,
    @required this.unit,
    this.startTime = "-1",
    this.endTime = "-1",
    @required this.onUpdate,
  }) : super(key: key);

  @override
  _ClockInternalWidgetState createState() =>
      _ClockInternalWidgetState(startTime, endTime, onUpdate);
}

class _ClockInternalWidgetState extends State<ClockInternalWidget> {
  var startClock = _ClockTiming(hour: 0, minutes: 6);
  var endClock = _ClockTiming(hour: 7, minutes: 9);
  bool isStartSelected = true;
  OnClockUpdate onUpdate;

  _ClockInternalWidgetState(String startTime, String endTime, this.onUpdate) {
    if (startTime != null && startTime != "-1") {
      startClock = _ClockTiming.fromString(startTime);
    }
    if (endTime != null && endTime != "-1") {
      endClock = _ClockTiming.fromString(endTime);
    }
    onUpdate(startClock.to24HrTime(), endClock.to24HrTime());
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: _getSlider(),
    );
  }

  Widget _getClockCircle() {
    var white = Colors.white;
    var whiteOpacity = white.withOpacity(0.5);
    var selectedTimeFontSize = KtPair(19.0, 17.0);
    var unSelectedTimeFontSize = KtPair(18.0, 15.0);
    return Center(
      child: Container(
        width: 20 * widget.unit,
        height: 20 * widget.unit,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: widget.tickColor, width: 1)),
        child: Stack(
          children: [
            Center(
              child: Container(
                width: 15 * widget.unit,
                height: 15 * widget.unit,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: widget.tickColor,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: startClock.getTime(),
                        style: TextStyle(
                          color: (isStartSelected) ? white : whiteOpacity,
                          fontSize: (isStartSelected)
                              ? selectedTimeFontSize.first
                              : unSelectedTimeFontSize.first,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            setState(() {
                              isStartSelected = true;
                            });
                          },
                        children: [
                          TextSpan(text: '  '),
                          TextSpan(
                            text: startClock.getTimeSuffix(),
                            style: TextStyle(
                                fontSize: (isStartSelected)
                                    ? selectedTimeFontSize.second
                                    : unSelectedTimeFontSize.second),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                setState(() {
                                  startClock.changeSuffix();
                                  isStartSelected = true;
                                  onUpdate(startClock.to24HrTime(), endClock.to24HrTime());
                                });
                              },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'to',
                      style: TextStyle(
                        color: whiteOpacity,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    RichText(
                      text: TextSpan(
                        text: endClock.getTime(),
                        style: TextStyle(
                          color: (!isStartSelected) ? white : whiteOpacity,
                          fontSize: (!isStartSelected)
                              ? selectedTimeFontSize.first
                              : unSelectedTimeFontSize.first,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            setState(() {
                              isStartSelected = false;
                            });
                          },
                        children: [
                          TextSpan(text: ' '),
                          TextSpan(
                            text: endClock.getTimeSuffix(),
                            style: TextStyle(
                              fontSize: (!isStartSelected)
                                  ? selectedTimeFontSize.second
                                  : unSelectedTimeFontSize.second,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                setState(() {
                                  endClock.changeSuffix();
                                  isStartSelected = false;
                                  onUpdate(startClock.to24HrTime(), endClock.to24HrTime());
                                });
                              },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            for (var i = 0; i < 12; i++)
              Center(
                child: Transform.rotate(
                  angle: radians(0 + 360 / 12 * i),
                  child: Transform.translate(
                    offset: Offset(0, -9.2 * widget.unit),
                    child: Container(
                      color: widget.tickColor,
                      height: 1.5 * widget.unit,
                      width: 0.3 * widget.unit,
                    ),
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }

  DoubleCircularSlider _getSlider() {
    return DoubleCircularSlider(
      12,
      (isStartSelected) ? startClock.hour : endClock.hour,
      (isStartSelected) ? startClock.minutes : endClock.minutes,
      key: (isStartSelected) ? startClock.key : endClock.key,
      height: 25 * widget.unit,
      width: 25 * widget.unit,
      baseColor: Colors.white,
      handlerColor: widget.tickColor,
      handlerOutterRadius: 12,
      selectionColor: widget.tickColor,
      sliderStrokeWidth: 3,
      child: _getClockCircle(),
      onSelectionChange: (init, end, laps) {
        setState(() {
          if (isStartSelected) {
            startClock.hour = init;
            startClock.minutes = end;
            onUpdate(startClock.to24HrTime(), endClock.to24HrTime());
          } else {
            endClock.hour = init;
            endClock.minutes = end;
            onUpdate(startClock.to24HrTime(), endClock.to24HrTime());
          }
        });
      },
    );
  }
}

class _ClockTiming {
  int hour; // values from 0-11 (0 representing 12)
  int minutes; // values from 0-11 (*5) minutes
  TIME_SUFFIX timeSuffix;
  Key key = UniqueKey();

  _ClockTiming(
      {@required this.hour,
      @required this.minutes,
      this.timeSuffix = TIME_SUFFIX.PM});

  factory _ClockTiming.fromString(String time) {
    // time should be in format of "HH:MM::SS" and SS always 00
    var splits = time.split(":");
    if (splits.length != 3) return _ClockTiming(hour: 0, minutes: 6);
    try {
      var hour = int.parse(splits[0]);
      var minutes = int.parse(splits[1]) / 5;
      var suffix;
      var finalHour = hour;
      if (hour > 12) {
        finalHour = hour - 12;
      }
      if (hour >= 12) {
        suffix = TIME_SUFFIX.PM;
      } else {
        suffix = TIME_SUFFIX.AM;
      }
      return _ClockTiming(
          hour: finalHour, minutes: minutes.toInt(), timeSuffix: suffix);
    } catch (e) {
      return _ClockTiming(hour: 0, minutes: 6);
    }
  }

  String to24HrTime() {
    var hour = this.hour;
    var minute = this.minutes * 5;
    var finalHour = hour;

    if (timeSuffix == TIME_SUFFIX.PM) {
      if (hour != 12) {
        // 1PM = 13 and so on
        finalHour = hour + 12;
      }
    } else {
      if (hour == 12) {
        // 12 AM = 00
        finalHour = 0;
      }
    }
    var stringHour = "$finalHour";
    if (finalHour < 10) {
      stringHour = "0" + stringHour;
    }
    var stringMinute = "$minute";
    if(minute < 10) {
      stringMinute = "0" + stringMinute;
    }
    return "$stringHour:$stringMinute:00";
  }

  String getHour() {
    if (hour == 0) return "12";
    if (hour < 10) return "0$hour";
    return "$hour";
  }

  String getMinutes() {
    if (minutes > 11) return "59";
    if (minutes == 0) return "00";
    var m = minutes * 5;
    if (m < 10) return "0$m";
    return "$m";
  }

  String getTimeSuffix() {
    if (timeSuffix == TIME_SUFFIX.PM) return "PM";
    return "AM";
  }

  String getTime() {
    return getHour() + ":" + getMinutes();
  }

  String changeSuffix() {
    if (timeSuffix == TIME_SUFFIX.AM) {
      timeSuffix = TIME_SUFFIX.PM;
    } else {
      timeSuffix = TIME_SUFFIX.AM;
    }
  }
}

enum TIME_SUFFIX { AM, PM }
