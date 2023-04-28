import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../widgets/restaurant_card.dart';

class RestaurantsPage extends StatefulWidget {
  const RestaurantsPage({super.key});

  @override
  State<RestaurantsPage> createState() => _RestaurantsPageState();
}

class _RestaurantsPageState extends State<RestaurantsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu_rounded,
                size: 30,
              )),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search_rounded,
                        size: 30,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.notifications_rounded,
                        size: 30,
                      )),
                ],
              ),
            )
          ],
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          toolbarHeight: 70,
          title: const Text(
            "ENJOY IN ALGERIA",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                gradient: LinearGradient(colors: [
                  Color.fromARGB(255, 20, 91, 150),
                  Color.fromARGB(255, 24, 126, 209)
                ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
          ),
          systemOverlayStyle: SystemUiOverlayStyle.light,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Text('ENJOY IN ANNABA',
                    style: TextStyle(
                        fontFamily: 'Grandstander',
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold,
                        fontSize: 29,
                        color: Color.fromARGB(255, 14, 70, 115))),
                const SizedBox(
                  height: 10,
                ),
                const Text('RESTAURANTS',
                    style: TextStyle(
                        color: Color.fromARGB(255, 20, 91, 150),
                        fontWeight: FontWeight.bold)),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: InkWell(
                        child: Container(
                          height: 40,
                          width: 150,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: const Color.fromARGB(255, 20, 91, 150),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 0,
                                  blurRadius: 4,
                                  offset: const Offset(
                                      3, 5), // changes position of shadow
                                ),
                              ]),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              Icon(
                                Icons.location_on_outlined,
                                color: Color.fromARGB(255, 20, 91, 150),
                              ),
                              Text(
                                'CHECK THE MAP ',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 20, 91, 150),
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 70,
                      child: IconButton(
                        icon: const Icon(
                          Icons.maps_home_work_outlined,
                          color: Color.fromARGB(255, 20, 91, 150),
                          size: 30,
                        ),
                        onPressed: () {},
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const RestoCard(
                    title: 'MEGA PIZZA',
                    livraison: '',
                    repasSurPlace: '',
                    vente: '',
                    adress: '1 bd fellah rachid ...',
                    phoneNumber: '05577226001',
                    imageUrl: 'assets/Rectangle 17.png'),
                const RestoCard(
                    title: 'MEGA PIZZA',
                    livraison: '',
                    repasSurPlace: '',
                    vente: '',
                    adress: '1 bd fellah rachid ...',
                    phoneNumber: '05577226001',
                    imageUrl: 'assets/Rectangle 17.png'),
                const RestoCard(
                    title: 'MEGA PIZZA',
                    livraison: 'hahahh&hahahahah',
                    repasSurPlace: '',
                    vente: '',
                    adress: '',
                    phoneNumber: '05577226001',
                    imageUrl: 'assets/Rectangle 17.png'),
                const RestoCard(
                    title: 'MEGA PIZZA',
                    livraison: '',
                    repasSurPlace: '',
                    vente: '',
                    adress: '1 bd fellah rachid ...',
                    phoneNumber: '05577226001',
                    imageUrl: 'assets/Rectangle 17.png'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
