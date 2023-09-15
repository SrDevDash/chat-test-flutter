import 'package:chat_t/pages/chat/widgets/her_meesage_bubble.dart';
import 'package:chat_t/pages/chat/widgets/my_message_bubble.dart';
import 'package:chat_t/shared/message_field_form.dart';
import 'package:flutter/material.dart';

void main() => runApp(const ChatScreen());

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dorian 😎', style: TextStyle(fontWeight: FontWeight.bold),),
        leading:  const Padding(
          padding:  EdgeInsets.all(4.0),
          child:  CircleAvatar(
            backgroundImage:  NetworkImage('https://depor.com/resizer/NKAgOg7m19YU6XDr4cDydH2RMFg=/1200x800/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/MSI3C4HBYBCFDHRGR3UV24QFAM.jpg'),
          ),
        ),
      ),
      body: _chat_view(),
    );
  }
}

class _chat_view extends StatelessWidget {
  const _chat_view({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(child: Container(
              child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
              
                if(index % 2 == 0) return MyMessageBubble();
                return HerMessageBubble();
              },),
            )),
            MessageFieldForm(),
          ],
        ),
      ),
    );
  }
}