import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://scontent.cdninstagram.com/v/t51.29350-15/432003949_1081175189753103_6437442817072452523_n.jpg?stp=dst-jpg_e35&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xNDQweDE0NDAuc2RyLmYyOTM1MCJ9&_nc_ht=scontent.cdninstagram.com&_nc_cat=103&_nc_ohc=uREANoPbU1gQ7kNvgHbhFhR&edm=APs17CUBAAAA&ccb=7-5&ig_cache_key=MzMxOTQwMzI3NDUyNDAyMTk1OA%3D%3D.2-ccb7-5&oh=00_AYCQq7-_s3D4V9ssRjIjTEVtZxdDHRXo4sqMoaIPHEFRaA&oe=6694F27B&_nc_sid=10d13b'),
          ),
        ),
        title: const Text('Alejandra <3'),
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return (index % 2 == 0)
                      ? const HerMessageBubble()
                      : const MyMessageBubble();
                },
              ),
            ),
            Text('data')
          ],
        ),
      ),
    );
  }
}
