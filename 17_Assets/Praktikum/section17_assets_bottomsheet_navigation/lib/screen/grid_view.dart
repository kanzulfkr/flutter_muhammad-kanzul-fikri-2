import 'package:flutter/material.dart';
import 'package:section17_assets_bottomsheet_navigation/screen/new_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyGridView(),
    );
  }
}

class MyGridView extends StatefulWidget {
  const MyGridView({super.key});

  @override
  State<MyGridView> createState() => _MyGridViewState();
}

class _MyGridViewState extends State<MyGridView> {
  final List<String> images = [
    "https://picsum.photos/200/300",
    "https://picsum.photos/200/301",
    "https://picsum.photos/200/302",
    "https://picsum.photos/200/303",
    "https://picsum.photos/200/304",
    "https://picsum.photos/200/305",
    "https://picsum.photos/200/306",
    "https://picsum.photos/200/307",
    "https://picsum.photos/200/308",
    "https://picsum.photos/200/309",
    "https://picsum.photos/200/310",
    "https://picsum.photos/200/311",
    "https://picsum.photos/200/312",
    "https://picsum.photos/200/313",
    "https://picsum.photos/200/314",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid View Gallery'),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
        child: GridView.builder(
          itemCount: images.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            //       crossAxisCount: 3,
            mainAxisSpacing: 15,
            childAspectRatio: 1,
            crossAxisSpacing: 15,
          ),
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) => SizedBox(
                    height: 450,
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Bottom Sheet View',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w400),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: CircleAvatar(
                                  backgroundColor: Colors.grey.withOpacity(0.2),
                                  child: const Icon(
                                    Icons.close,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 25),
                          GestureDetector(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: const Center(
                                      child: Text(
                                        'Do you want to next Page?',
                                        style: TextStyle(
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                    actions: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          TextButton(
                                            style: TextButton.styleFrom(
                                              textStyle: Theme.of(context)
                                                  .textTheme
                                                  .labelLarge,
                                            ),
                                            child: const Text('Yes'),
                                            onPressed: () {
                                              // Biar showDialog ke Continue
                                              Navigator.of(context).pop();

                                              // Routes
                                              // Navigator.pushNamed(
                                              //   context,
                                              //   '/second',
                                              // );

                                              //Navigation
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) => NewPage(
                                                      imageUrl: images[index]),
                                                ),
                                              );
                                            },
                                          ),
                                          TextButton(
                                            style: TextButton.styleFrom(
                                              textStyle: Theme.of(context)
                                                  .textTheme
                                                  .labelLarge,
                                            ),
                                            child: const Text('No'),
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                          ),
                                        ],
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                            child: Image.network(
                              images[index],
                              fit: BoxFit.scaleDown,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
              child: Image.network(
                images[index],
                fit: BoxFit.cover,
              ),
            );
          },
        ),
      ),
    );
  }
}
