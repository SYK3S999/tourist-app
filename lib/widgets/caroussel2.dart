import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:getwidget/getwidget.dart';
import 'package:expandable_text/expandable_text.dart';

final List<String> imageList = [
  "https://cdn.pixabay.com/photo/2017/12/03/18/04/christmas-balls-2995437_960_720.jpg",
  "https://cdn.pixabay.com/photo/2017/12/13/00/23/christmas-3015776_960_720.jpg",
  "https://cdn.pixabay.com/photo/2019/12/19/10/55/christmas-market-4705877_960_720.jpg",
  "https://cdn.pixabay.com/photo/2019/12/20/00/03/road-4707345_960_720.jpg",
  "https://cdn.pixabay.com/photo/2019/12/22/04/18/x-mas-4711785__340.jpg",
  "https://cdn.pixabay.com/photo/2016/11/22/07/09/spruce-1848543__340.jpg"
];

class Caroussel2 extends StatefulWidget {
  const Caroussel2({super.key});

  @override
  State<Caroussel2> createState() => _Caroussel2State();
}

class _Caroussel2State extends State<Caroussel2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child: Column(children: [
          GFCarousel(
            hasPagination: true,
            activeIndicator: Colors.white,
            passiveIndicator: Colors.grey.shade400,
            items: imageList.map(
              (url) {
                return Container(
                  margin:
                      const EdgeInsets.only(top: 8.0, right: 8.0, left: 8.0),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                    child: Image.network(url, fit: BoxFit.cover, width: 1300),
                  ),
                );
              },
            ).toList(),
            onPageChanged: (index) {
              setState(() {
                index;
              });
            },
          ),
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
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            height: 250,
            decoration: const BoxDecoration(
                border: Border(
              bottom: BorderSide(
                  width: 1.0, color: Color.fromARGB(255, 14, 70, 115)),
            )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.48,
                  child: const Expanded(
                    child: SingleChildScrollView(
                      child: ExpandableText(
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1),
                        'Annaba is a smaformerly known as Bon, Bona and Bône, is a seaport city in the northeastern corner of Algeria, close to the border with Tunisia. Annaba is near the small Seybouse river and is in the Annaba province. clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit ametsssssssssssssssssssssssssssssssssssssssssss.',
                        expandText: 'show more',
                        collapseText: 'show less',
                        maxLines: 9,
                        linkColor: Color.fromARGB(255, 14, 70, 115),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                    height: 160,
                    width: 160,
                    child: Image(image: AssetImage('assets/image 6.png'))),
              ],
            ),
          ),
          const SizedBox(
            height: 22,
          ),
          const Text('DISCOVER',
              style: TextStyle(
                  fontFamily: 'Grandstander',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.bold,
                  fontSize: 29,
                  color: Color.fromARGB(255, 14, 70, 115))),
          const SizedBox(
            height: 15,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            height: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 0,
                                    blurRadius: 4,
                                    offset: const Offset(
                                        3, 5), // changes position of shadow
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(35),
                                border: Border.all(width: 3.5)),
                            child: Image.asset(
                              'assets/image 1.png',
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'HOTELS',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 0,
                                    blurRadius: 4,
                                    offset: const Offset(
                                        3, 5), // changes position of shadow
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(35),
                                border: Border.all(width: 3.5)),
                            child: Image.asset(
                              'assets/image 4.png',
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'MONUMENTS',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 0,
                                    blurRadius: 4,
                                    offset: const Offset(
                                        3, 5), // changes position of shadow
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(35),
                                border: Border.all(width: 3.5)),
                            child: Image.asset(
                              'assets/image 7.png',
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'COFFEESHOPS',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 0,
                                    blurRadius: 4,
                                    offset: const Offset(
                                        3, 5), // changes position of shadow
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(35),
                                border: Border.all(width: 3.5)),
                            child: Image.asset(
                              'assets/image 3.png',
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'RESTAURANTS',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 12),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 0,
                                    blurRadius: 4,
                                    offset: const Offset(
                                        3, 5), // changes position of shadow
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(35),
                                border: Border.all(width: 3.5)),
                            child: Image.asset(
                              'assets/image 5.png',
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'EVENTS',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 0,
                                    blurRadius: 4,
                                    offset: const Offset(
                                        3, 5), // changes position of shadow
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(35),
                                border: Border.all(width: 3.5)),
                            child: Image.asset(
                              'assets/image 8.png',
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'SHOPPING',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 200,
          )
        ]),
      ),
    );
  }
}
