import 'dart:async';

import 'package:contact/screens/contact_create.dart';
import 'package:contact/screens/contact_empty.dart';
// import 'package:contact/screens/contact_eror.dart';
import 'package:contact/screens/contact_loading.dart';
import 'package:contact/screens/contact_update.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../animations/slide_page_route.dart';
import '../bloc/contact_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const String route = '/';

  @override
  Widget build(BuildContext context) {
    final dataBloc = BlocProvider.of<ContactBloc>(context);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            'Contact List with Bloc State Management',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          centerTitle: true,
        ),
        body: BlocBuilder<ContactBloc, ContactState>(
          bloc: dataBloc,
          builder: (context, state) {
            if (state is Loading) {
              return const ContactLoading();
            } else if (state.contacts.isEmpty) {
              return const ContactEmpty();
            } else if (state is ContactLoaded || state is ContactInitial) {
              return ListView.separated(
                separatorBuilder: (_, index) => const SizedBox(height: 16),
                itemCount: state.contacts.length,
                padding: const EdgeInsets.all(16),
                itemBuilder: (_, index) {
                  final contact = state.contacts[index];
                  return ListTile(
                      leading: CircleAvatar(
                        child: Text(contact.name[0]),
                      ),
                      title: Text(contact.name),
                      subtitle: Text(contact.phone),
                      tileColor: const Color.fromARGB(97, 144, 202, 222),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      trailing: SizedBox(
                        width: 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (context) => const SimpleDialog(
                                    backgroundColor:
                                        Color.fromARGB(0, 255, 193, 7),
                                    children: [
                                      Image(
                                          image: AssetImage(
                                              'assets/loading_2.gif'))
                                    ],
                                  ),
                                );
                                Timer(
                                  const Duration(seconds: 3),
                                  () {
                                    Navigator.pop(context);
                                    Navigator.pushNamed(
                                        context, ContactUpdate.route);
                                  },
                                );
                              },
                              icon: const Icon(
                                Icons.edit,
                                // color: Colors.red,
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                context
                                    .read<ContactBloc>()
                                    .add(DeleteContact(contact: contact));
                              },
                              icon: const Icon(
                                Icons.delete,
                                // color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                      ));
                },
              );
            } else {
              return const ContactEmpty();
            }
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Navigator.pushNamed(context, ContactCreate.route);

            // Navigator.push(
            //   context,
            //   SlidePageRoute(
            //     widget: const ContactCreate(),
            //     isRightToLeft: false,
            //   ),
            // );

            showDialog(
              context: context,
              builder: (context) => const SimpleDialog(
                backgroundColor: Color.fromARGB(0, 255, 193, 7),
                children: [Image(image: AssetImage('assets/loading_2.gif'))],
              ),
            );
            Timer(
              const Duration(seconds: 1),
              () {
                Navigator.pop(context);
                Navigator.pushNamed(context, ContactCreate.route);
              },
            );
          },
          backgroundColor: Colors.blue,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
