import 'package:feed/ui/global/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class GreetingWidget extends HookWidget {
  const GreetingWidget(
      {Key? key, required this.userName, required this.userImage})
      : super(key: key);

  final String userName, userImage;

  @override
  Widget build(BuildContext context) {
    final dateTime = useState(DateTime.now());

    String getGreeting() {
      var h = dateTime.value.hour;
      if (h < 12) {
        return "Good Morning,";
      } else if (h < 17) {
        return "Good Afternoon,";
      } else if (h < 22) {
        return "Good Evening,";
      } else {
        return "Good Night,";
      }
    }

    return ListTile(
      leading: Container(
        margin: const EdgeInsets.all(8),
        width: 40,
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          image: DecorationImage(
            image: NetworkImage(userImage),
            fit: BoxFit.cover,
          ),
        ),
      ),
      title: Text.rich(TextSpan(children: [
        TextSpan(
            text: getGreeting(),
            style: const TextStyle(color: AppColors.textSecondary)),
        const TextSpan(
          text: "\n",
        ),
        TextSpan(text: userName, style: const TextStyle(fontSize: 18)),
      ])),
    );
  }
}
