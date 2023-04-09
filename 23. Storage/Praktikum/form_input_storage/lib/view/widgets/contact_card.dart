import 'package:flutter/material.dart';

import '../../models/contact.dart';

class ContactCard extends StatelessWidget {
  const ContactCard({
    super.key,
    required this.contactTask,
    required this.onPressed,
  });
  final Contact contactTask;

  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(
          20,
        ),
      ),
      child: ListTile(
        leading: CircleAvatar(
          child: Text(
            contactTask.name[0],
            style: const TextStyle(fontSize: 23, fontWeight: FontWeight.w400),
          ),
        ),
        title: Text(
          contactTask.name,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        subtitle: Text(
          contactTask.phone,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
        ),
        tileColor: const Color.fromARGB(96, 198, 225, 235),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        trailing: SizedBox(
          width: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.edit,
                ),
              ),
              IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      content: const Text(
                        'Are you sure?',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text(
                            'No',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: onPressed,
                          child: const Text(
                            'Yes',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                icon: const Icon(Icons.delete),
                color: Color.fromARGB(255, 212, 24, 10),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
