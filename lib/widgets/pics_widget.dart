import 'package:flutter/material.dart';

class PicsWidget extends StatelessWidget {
  const PicsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 330,
      decoration: BoxDecoration(
          border: Border.all(
            color: const Color.fromARGB(255, 14, 70, 115),
            width: 0.5,
          ),
          borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                ),
                child: Image.asset(
                  'assets/image 1.png',
                  fit: BoxFit.cover,
                  height: 40,
                  width: 40,
                ),
              ),
              ClipRRect(
                child: Image.asset(
                  'assets/image 1.png',
                  fit: BoxFit.cover,
                  height: 40,
                  width: 40,
                ),
              ),
              ClipRRect(
                child: Image.asset(
                  'assets/image 1.png',
                  fit: BoxFit.cover,
                  height: 40,
                  width: 40,
                ),
              ),
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(20),
                ),
                child: Image.asset(
                  'assets/image 1.png',
                  fit: BoxFit.cover,
                  height: 40,
                  width: 40,
                ),
              )
            ],
          ),
          Row(
            children: [
              ClipRRect(
                borderRadius:
                    const BorderRadius.only(bottomLeft: Radius.circular(20)),
                child: Image.asset(
                  'assets/image 1.png',
                  fit: BoxFit.cover,
                  height: 40,
                  width: 40,
                ),
              ),
              ClipRRect(
                child: Image.asset(
                  'assets/image 1.png',
                  fit: BoxFit.fill,
                  height: 40,
                  width: 40,
                ),
              ),
              ClipRRect(
                child: Image.asset(
                  'assets/image 1.png',
                  fit: BoxFit.cover,
                  height: 40,
                  width: 40,
                ),
              ),
              ClipRRect(
                borderRadius:
                    const BorderRadius.only(bottomRight: Radius.circular(20)),
                child: Image.asset(
                  'assets/image 1.png',
                  fit: BoxFit.cover,
                  height: 40,
                  width: 40,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
