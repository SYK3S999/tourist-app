import 'package:flutter/material.dart';

class MonuCard extends StatelessWidget {
  const MonuCard(
      {super.key,
      required this.imageUrl,
      this.title,
      this.type,
      this.affiliation,
      this.commune});

  final String imageUrl;

  final String? title;

  final String? type;

  final String? affiliation;

  final String? commune;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      height: 80,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 0,
                blurRadius: 4,
                offset: const Offset(3, 5), // changes position of shadow
              ),
            ],
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
                color: const Color.fromARGB(255, 13, 60, 99), width: 0.5)),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                imageUrl,
                fit: BoxFit.cover,
                height: 80,
                width: 80,
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "${title!} ",
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Type: ${type!} ",
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 12),
                  ),
                  Text(
                    "Affiliation:${affiliation!} ",
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 12),
                  ),
                  Text(
                    "Commune: ${commune!} ",
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 12),
                  )
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8.0, right: 8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    children: const [
                      Icon(
                        Icons.map_outlined,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.heart_broken_outlined)
                    ],
                  ),
                  const Icon(Icons.file_upload_outlined),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
