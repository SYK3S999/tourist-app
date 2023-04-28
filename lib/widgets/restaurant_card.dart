import 'package:flutter/material.dart';

class RestoCard extends StatefulWidget {
  final String imageUrl;

  final String title;

  final String livraison;

  final String repasSurPlace;

  final String vente;

  final String adress;

  final String phoneNumber;

  const RestoCard(
      {super.key,
      required this.title,
      required this.livraison,
      required this.repasSurPlace,
      required this.vente,
      required this.adress,
      required this.phoneNumber,
      required this.imageUrl});

  @override
  State<RestoCard> createState() => _RestoCardState();
}

var yes = false;

class _RestoCardState extends State<RestoCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      height: 312,
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
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20)),
              child: Image.asset(
                widget.imageUrl,
                fit: BoxFit.cover,
                width: 150,
                height: 312,
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
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 50.0),
                        child: Text(
                          "${widget.title} ",
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          bottom: 5.0,
                        ),
                        child: IconButton(
                          icon: yes
                              ? const Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                  size: 30,
                                )
                              : const Icon(
                                  Icons.favorite_border,
                                  color: Color.fromARGB(255, 20, 91, 150),
                                  size: 30,
                                ),
                          onPressed: () {
                            setState(() {
                              yes = !yes;
                            });
                          },
                        ),
                      )
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text(
                        "livraison ",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 12),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 5.0, left: 5.0),
                        child: Icon(
                          Icons.check_rounded,
                          color: Colors.green,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: const [
                      Text(
                        "repas sur place",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 12),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 5.0, left: 5.0),
                        child: Icon(
                          Icons.check_rounded,
                          color: Colors.green,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: const [
                      Text(
                        "vente a emporter",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 12),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 5.0, left: 5.0),
                        child: Icon(
                          Icons.check_rounded,
                          color: Colors.green,
                        ),
                      )
                    ],
                  ),
                  Text(
                    "adress : ${widget.adress} ",
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 12),
                  ),
                  Text(
                    "phone number : ${widget.phoneNumber} ",
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 12),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
