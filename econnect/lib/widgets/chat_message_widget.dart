import 'package:flutter/material.dart';
import '../constants.dart';
import '../model/message.dart';

class ChatMessageWidget extends StatelessWidget {
  final Message message;
  ChatMessageWidget(this.message);

  @override
  Widget build(BuildContext context) {
    bool isMe = message.senderNumber == 'user';

    return Container(
      margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
      child: Row(
        mainAxisAlignment:
            isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text(message.text),
            constraints:
                BoxConstraints.loose(MediaQuery.of(context).size * 0.8),
            decoration: BoxDecoration(
                color: isMe
                    ? CustomColors.kChatBackgroundColor
                    : CustomColors.kLightColor),
          ),
        ],
      ),
    );
  }
}
