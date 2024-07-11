import 'package:flutter/material.dart';

class HerMessageBubble extends StatelessWidget {
  const HerMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: color.secondary,
            borderRadius: BorderRadius.circular(15),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: Text(
              "Te amo",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        _ImageBubble(),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        'https://scontent.cdninstagram.com/v/t51.29350-15/432003949_1081175189753103_6437442817072452523_n.jpg?stp=dst-jpg_e35&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xNDQweDE0NDAuc2RyLmYyOTM1MCJ9&_nc_ht=scontent.cdninstagram.com&_nc_cat=103&_nc_ohc=uREANoPbU1gQ7kNvgHbhFhR&edm=APs17CUBAAAA&ccb=7-5&ig_cache_key=MzMxOTQwMzI3NDUyNDAyMTk1OA%3D%3D.2-ccb7-5&oh=00_AYCQq7-_s3D4V9ssRjIjTEVtZxdDHRXo4sqMoaIPHEFRaA&oe=6694F27B&_nc_sid=10d13b',
        width: size.width * 0.7,
        height: 200,
        fit: BoxFit.cover,
      ),
    );
  }
}
