import 'package:flutter/material.dart';

class NotificationTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 112,
      color: Color(0x451592E6),
      child: Row(
        children: [
          SizedBox(
            width: 24,
          ),
          Container(
            width: 62,
            height: 62,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              image: DecorationImage(
                image: AssetImage('assets/images/debug/google.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(
            width: 16,
          ),
          Flexible(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  maxLines: 2,
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                  text: TextSpan(
                      style: TextStyle(color: Colors.black, fontSize: 15),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Marie Winter',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                          text: ' liked your comment',
                        ),
                      ]),
                ),
                SizedBox(
                  height: 8,
                ),
                Text('Happiness is not something ready'),
                SizedBox(
                  height: 6,
                ),
                Text(
                  '9 min',
                  style: TextStyle(color: Color(0x80000000), fontSize: 13),
                )
              ],
            ),
          ),
          SizedBox(
            width: 24,
          )
        ],
      ),
    );
  }
}
