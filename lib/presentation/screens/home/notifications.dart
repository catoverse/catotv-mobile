import 'package:cato_feed/presentation/widgets/notification_tile.dart';
import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      key: PageStorageKey('notifications'),
      children: [
        Container(
          height: 75,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(bottom: 8),
              child: Text(
                'Notifications',
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
            ),
          ),
        ),
        Expanded(
          child: MediaQuery.removePadding(
            context: context,
            removeTop: true,
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (_, index) {
                return NotificationTile();
              },
            ),
          ),
        ),
      ],
    );
  }
}
