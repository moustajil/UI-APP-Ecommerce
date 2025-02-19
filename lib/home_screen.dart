import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: ("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: ("Home"),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Search",
                      prefixIcon: const Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      fillColor: Colors.grey[200],
                      filled: true,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                const Icon(Icons.menu),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              "Categories",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildCategory(Icons.laptop, "Laptop"),
                  _buildCategory(Icons.phone, "Phone"),
                  _buildCategory(Icons.electric_bike, "Electric"),
                  _buildCategory(Icons.card_giftcard, "Gifts"),
                  _buildCategory(Icons.electric_car, "Cars"),
                ],
              ),
            ),
            const Text(
              "Best Selling",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              child: GridView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.75,
                ),
                children: [
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Image.asset(
                              "assets/images/i1.jpg",
                              fit: BoxFit.fill,
                            ),
                          ),
                          Text(
                            "Camera Canon X3",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "New Version Of Camera Canon With Hight Qualit",
                            style: TextStyle(color: Colors.grey, fontSize: 10),
                          ),
                          Text(
                            "1300 DH",
                            style: TextStyle(
                                color: Colors.amber,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Image.asset(
                              "assets/images/i2.jfif",
                              fit: BoxFit.fill,
                            ),
                          ),
                          Text(
                            "Camera Canon X3",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "New Version Of Camera Canon With Hight Qualit",
                            style: TextStyle(color: Colors.grey, fontSize: 10),
                          ),
                          Text(
                            "1300 DH",
                            style: TextStyle(
                                color: Colors.amber,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Image.asset(
                              "assets/images/p3.jfif",
                              fit: BoxFit.fill,
                            ),
                          ),
                          Text(
                            "Camera Canon X3",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "New Version Of Camera Canon With Hight Qualit",
                            style: TextStyle(color: Colors.grey, fontSize: 10),
                          ),
                          Text(
                            "1300 DH",
                            style: TextStyle(
                                color: Colors.amber,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Image.asset(
                                "assets/images/i3.jfif",
                                fit: BoxFit.fill,
                              ),
                            ),
                            Text(
                              "Camera Canon X3",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "New Version Of Camera Canon With Hight Qualit",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 10),
                            ),
                            Text(
                              "1300 DH",
                              style: TextStyle(
                                  color: Colors.amber,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategory(IconData icon, String label) {
    return Container(
      margin: const EdgeInsets.only(right: 20),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(500),
            ),
            padding: const EdgeInsets.all(10),
            child: Icon(icon, size: 40),
          ),
          const SizedBox(height: 10),
          Text(
            label,
            style: const TextStyle(
              color: Color.fromARGB(255, 117, 117, 117),
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
