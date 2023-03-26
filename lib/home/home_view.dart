import 'package:flutter/material.dart';
import 'package:lamp_app/model/lamp_model.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu, color: Colors.white),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.shopping_bag, color: Colors.white),
            ),
          ]),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/lamp1.jpg'), fit: BoxFit.fill)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(),
            Row(
              children: [
                Column(
                  children: [
                    const Text("19", style: TextStyle(color: Colors.white)),
                    Container(
                      height: 100,
                      width: 1,
                      margin: const EdgeInsets.symmetric(vertical: 2),
                      color: Colors.white,
                    ),
                    const Text("16", style: TextStyle(color: Colors.white))
                  ],
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                          text: const TextSpan(
                              text: "Lamp",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 54),
                              children: [
                            TextSpan(
                                text: '\nKartinova',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 44,
                                    fontWeight: FontWeight.w300))
                          ])),
                      const Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Popular Lamps",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'See All',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ))
              ],
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 170,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (ctx, index) {
                    return Column(
                      children: [
                        Container(
                          height: 130,
                          width: 110,
                          alignment: Alignment.topRight,
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage(list[index].image),
                              )),
                          child: IconButton(
                              onPressed: () {
                                list[index].isFavorite =
                                    !list[index].isFavorite;
                                setState(() {});
                              },
                              icon: Icon(
                                Icons.favorite,
                                color: list[index].isFavorite
                                    ? Colors.red
                                    : Colors.white,
                              )),
                        ),
                        RichText(
                            text: TextSpan(
                                text: "\$",
                                style: const TextStyle(color: Colors.red),
                                children: [
                              TextSpan(
                                  text: list[index].price,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 24,
                                      fontWeight: FontWeight.w600))
                            ]))
                      ],
                    );
                  },
                  separatorBuilder: (ctx, index) => const SizedBox(width: 10),
                  itemCount: list.length),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 50,
        width: 50,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.orange),
        child: const Text(
          "ALL",
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
