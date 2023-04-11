import 'package:flutter/material.dart';

import '../../models/user/user.dart';

class UserCard extends StatelessWidget {
  final User user;
  const UserCard({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(0),
      width: 300,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: Colors.lightBlue[100]),
      child: ListTile(
        leading: CircleAvatar(
          child: Text(
            user.name[0],
            style: const TextStyle(
              fontSize: 25,
            ),
          ),
        ),
        title: Text(
          user.name,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          user.phone,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        tileColor: const Color.fromARGB(97, 144, 202, 222),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        trailing: SizedBox(
          width: 40,
          child: Text(
            'ID : ${user.id.toString()}',
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
