import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:section17_assets_bottomsheet_navigation/pages/detail_page.dart';
import 'package:section17_assets_bottomsheet_navigation/widgets/image_cards.dart';
import '../models/image.dart';
import '../provider/image_manager.dart';

class ImageList extends StatelessWidget {
  const ImageList({super.key});

  @override
  Widget build(BuildContext context) {
    final manager = Provider.of<ImageManager>(context, listen: false);
    return Container(
      height: MediaQuery.of(context).size.height * 1,
      padding: const EdgeInsets.fromLTRB(5, 5, 0, 0),
      child: GridView.builder(
        itemCount: imageList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 15,
          childAspectRatio: 1,
          crossAxisSpacing: 15,
        ),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(
                    imageUrl: imageList[index],
                    imageDesc: imageList[index],
                  ),
                ),
              );
            },

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
            // },
            child: ImageCards(
              imageName: imageList[index],
              onTap: () {
                manager.addItem(imageList[index]);
              },
            ),
          );
        },
      ),
    );
  }
}
