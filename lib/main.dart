import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
  // runApp(MaterialApp(
  //   home: MyApp(),
  // ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              const Text(
                "FOOD",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 25),
                  decoration: BoxDecoration(
                    // color: Colors.black12,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const TextField(
                    style: TextStyle(fontSize: 14),
                    decoration: InputDecoration(
                      hintText: 'Search...',
                      border: InputBorder.none,
                      // contentPadding: EdgeInsets.symmetric(vertical: 16),
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Container(
              // color: Colors.amber,
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    child: const Text(
                      'Katalog Resep Makanan',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Icon(
                      Icons.settings,
                      color: Colors.orange[600],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              // color: Colors.blue[50],
              height: 35,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 20),
                      child: ElevatedButton.icon(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              backgroundColor: Colors.orange[800],
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          icon: const Icon(Icons.fastfood_rounded),
                          label: const Text(
                            'All',
                            style: TextStyle(fontSize: 14),
                          ))),
                  Container(
                      margin: EdgeInsets.only(left: 10),
                      child: ElevatedButton.icon(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              side: const BorderSide(
                                width: 1.0,
                                color: Colors.orange,
                              ),
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          icon: const Icon(Icons.fastfood_rounded,
                              color: Colors.orange),
                          label: const Text(
                            'Makanan',
                            style: TextStyle(fontSize: 14),
                          ))),
                  Container(
                      margin: EdgeInsets.only(left: 10),
                      child: ElevatedButton.icon(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              side: const BorderSide(
                                width: 1.0,
                                color: Colors.orange,
                              ),
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          icon: const Icon(Icons.ramen_dining_outlined,
                              color: Colors.orange),
                          label: const Text(
                            'Kuah',
                            style: TextStyle(fontSize: 14),
                          ))),
                  Container(
                      margin: EdgeInsets.only(left: 10),
                      child: ElevatedButton.icon(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              side: const BorderSide(
                                width: 1.0,
                                color: Colors.orange,
                              ),
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          icon: const Icon(Icons.local_drink_rounded,
                              color: Colors.orange),
                          label: const Text(
                            'Minuman',
                            style: TextStyle(fontSize: 14),
                          ))),
                ],
              ),
            ),
            Expanded(
              child: GridView(
                padding: const EdgeInsets.all(20),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    mainAxisExtent: 210),
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.grey,
                      ),
                    ),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10)),
                          child: Image.asset(
                            "images/pie.jpg",
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: 125,
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.all(5),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    child: const Text(
                                      "Apple Pie",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      child: Icon(
                                        Icons.timer_outlined,
                                        color: Colors.orange[600],
                                        size: 20,
                                      ),
                                    ),
                                    Container(
                                      child: const Text(
                                        '50 Menit',
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      child: TextButton(
                                        child: Text(
                                          'Makanan',
                                          style: TextStyle(fontSize: 10),
                                        ),
                                        onPressed: () {},
                                        style: TextButton.styleFrom(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 3, vertical: 10),
                                            minimumSize: const Size(5, 10),
                                            side: const BorderSide(
                                              color: Colors.orange,
                                            ),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                            foregroundColor: Colors.white,
                                            backgroundColor: Colors.orange),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ))
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.grey,
                      ),
                    ),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10)),
                          child: Image.asset(
                            "images/burger.jpg",
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: 125,
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.all(5),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    child: const Text(
                                      "Burger",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      child: Icon(
                                        Icons.timer_outlined,
                                        color: Colors.orange[600],
                                        size: 20,
                                      ),
                                    ),
                                    Container(
                                      child: const Text(
                                        '10 Menit',
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      child: TextButton(
                                        child: Text(
                                          'Makanan',
                                          style: TextStyle(fontSize: 10),
                                        ),
                                        onPressed: () {},
                                        style: TextButton.styleFrom(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 3, vertical: 10),
                                            minimumSize: const Size(5, 10),
                                            side: const BorderSide(
                                              color: Colors.orange,
                                            ),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                            foregroundColor: Colors.white,
                                            backgroundColor: Colors.orange),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ))
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.grey,
                      ),
                    ),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10)),
                          child: Image.asset(
                            "images/ramen.jpeg",
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: 125,
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.all(5),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    child: const Text(
                                      "Ramen",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      child: Icon(
                                        Icons.timer_outlined,
                                        color: Colors.orange[600],
                                        size: 20,
                                      ),
                                    ),
                                    Container(
                                      child: const Text(
                                        '12 Menit',
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      child: TextButton(
                                        child: Text(
                                          'Kuah',
                                          style: TextStyle(fontSize: 10),
                                        ),
                                        onPressed: () {},
                                        style: TextButton.styleFrom(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 3, vertical: 10),
                                            minimumSize: const Size(5, 10),
                                            side: const BorderSide(
                                              color: Colors.orange,
                                            ),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                            foregroundColor: Colors.white,
                                            backgroundColor: Colors.red),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ))
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.grey,
                      ),
                    ),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10)),
                          child: Image.asset(
                            "images/karage.jpg",
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: 125,
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.all(5),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    child: const Text(
                                      "Karage",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      child: Icon(
                                        Icons.timer_outlined,
                                        color: Colors.orange[600],
                                        size: 20,
                                      ),
                                    ),
                                    Container(
                                      child: const Text(
                                        '10 Menit',
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      child: TextButton(
                                        child: Text(
                                          'Makanan',
                                          style: TextStyle(fontSize: 10),
                                        ),
                                        onPressed: () {},
                                        style: TextButton.styleFrom(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 3, vertical: 10),
                                            minimumSize: const Size(5, 10),
                                            side: const BorderSide(
                                              color: Colors.orange,
                                            ),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                            foregroundColor: Colors.white,
                                            backgroundColor: Colors.orange),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ))
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.grey,
                      ),
                    ),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10)),
                          child: Image.asset(
                            "images/tako.jpg",
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: 125,
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.all(5),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    child: const Text(
                                      "Takoyaki",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      child: Icon(
                                        Icons.timer_outlined,
                                        color: Colors.orange[600],
                                        size: 20,
                                      ),
                                    ),
                                    Container(
                                      child: const Text(
                                        '20 Menit',
                                        style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      child: TextButton(
                                        child: Text(
                                          'Makanan',
                                          style: TextStyle(fontSize: 10),
                                        ),
                                        onPressed: () {},
                                        style: TextButton.styleFrom(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 3, vertical: 10),
                                            minimumSize: const Size(5, 10),
                                            side: const BorderSide(
                                              color: Colors.orange,
                                            ),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                            foregroundColor: Colors.white,
                                            backgroundColor: Colors.orange),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.red,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
          child: const Icon(Icons.add, color: Colors.white),
        ),
      ),
    );
  }
}
