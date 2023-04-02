import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:section17_assets_bottomsheet_navigation/models/image.dart';

import '../provider/image_manager.dart';

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
  @override
  Widget build(BuildContext context) {
    final manager = Provider.of<ImageManager>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid View Gallery'),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
        child: GridView.builder(
          itemCount: imageList.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 15,
            childAspectRatio: 1,
            crossAxisSpacing: 15,
          ),
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                manager.addItem(imageList[index]);
                showModalBottomSheet(
                  context: context,
                  builder: (context) => SizedBox(),
                );
                // showModalBottomSheet(
                //   isScrollControlled: true,
                //   shape: const RoundedRectangleBorder(
                //     borderRadius: BorderRadius.vertical(
                //       top: Radius.circular(20),
                //     ),
                //   ),
                //   context: context,
                //   builder: (context) => SizedBox(
                //     height: MediaQuery.of(context).size.height * 0.6,
                //     child: Padding(
                //       padding: const EdgeInsets.all(15),
                //       child: Column(
                //         children: [
                //           Row(
                //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //             children: [
                //               const Text(
                //                 'Bottom Sheet View',
                //                 style: TextStyle(
                //                     fontSize: 20, fontWeight: FontWeight.w500),
                //               ),
                //               GestureDetector(
                //                 onTap: () {
                //                   Navigator.pop(context);
                //                 },
                //                 child: CircleAvatar(
                //                   backgroundColor: Colors.grey.withOpacity(0.2),
                //                   child: const Icon(
                //                     Icons.close,
                //                     color: Colors.black,
                //                   ),
                //                 ),
                //               ),
                //             ],
                //           ),
                //           const SizedBox(height: 45),
                //           GestureDetector(
                //             onTap: () {
                //               showDialog(
                //                 context: context,
                //                 builder: (BuildContext context) {
                //                   return AlertDialog(
                //                     title: const Center(
                //                       child: Text(
                //                         'Do you want to next Page?',
                //                         style: TextStyle(
                //                           fontSize: 16,
                //                         ),
                //                       ),
                //                     ),
                //                     actions: <Widget>[
                //                       Row(
                //                         mainAxisAlignment:
                //                             MainAxisAlignment.spaceEvenly,
                //                         children: [
                //                           TextButton(
                //                             style: TextButton.styleFrom(
                //                               textStyle: Theme.of(context)
                //                                   .textTheme
                //                                   .labelLarge,
                //                             ),
                //                             child: const Text('Yes'),
                //                             onPressed: () {
                //                               Navigator.of(context).pop();
                //                               Navigator.push(
                //                                 context,
                //                                 MaterialPageRoute(
                //                                   builder: (context) => NewPage(
                //                                       imageUrl: images[index]),
                //                                 ),
                //                               );
                //                             },
                //                           ),
                //                           TextButton(
                //                             style: TextButton.styleFrom(
                //                               textStyle: Theme.of(context)
                //                                   .textTheme
                //                                   .labelLarge,
                //                             ),
                //                             child: const Text('No'),
                //                             onPressed: () {
                //                               Navigator.of(context).pop();
                //                             },
                //                           ),
                //                         ],
                //                       ),
                //                     ],
                //                   );
                //                 },
                //               );
                //             },
                //             child: Image.network(
                //               images[index],
                //               fit: BoxFit.scaleDown,
                //             ),
                //           ),
                //         ],
                //       ),
                //     ),
                //   ),
                // );
              },
              child: Image.network(
                imageList[index],
                fit: BoxFit.cover,
              ),
            );
          },
        ),
      ),
    );
  }
}
