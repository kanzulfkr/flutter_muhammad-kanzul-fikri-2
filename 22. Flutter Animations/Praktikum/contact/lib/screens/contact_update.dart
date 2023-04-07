import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/contact_bloc.dart';
import '../models/contact.dart';

class ContactUpdate extends StatefulWidget {
  const ContactUpdate({super.key});

  static const String route = '/updateContact';

  @override
  State<ContactUpdate> createState() => _ContactUpdateState();
}

class _ContactUpdateState extends State<ContactUpdate> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text('Create Contact'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 10),
                  const Icon(Icons.security_update_good_outlined),
                  const SizedBox(height: 10),
                  Column(
                    children: const [
                      Text(
                        'Update Contacts',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 24.0,
                        ),
                      ),
                      SizedBox(height: 35),
                    ],
                  ),
                  TextFormField(
                    textCapitalization: TextCapitalization.none,
                    controller: _nameController,
                    decoration: const InputDecoration(
                      hintText: 'Input your name...',
                      labelText: 'Full Name',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Nama harus diisi oleh user.';
                      }
                      if (value.split(' ').length < 2) {
                        return 'Nama harus terdiri dari minimal 2 kata.';
                      }
                      if (!value.contains(RegExp(r'^[A-Z]'))) {
                        return 'Setiap kata harus dimulai dengan huruf kapital.';
                      }
                      if (value.contains(RegExp(r'\d')) ||
                          value.contains(RegExp(r'[^\w\s]'))) {
                        return 'Nama tidak boleh mengandung angka atau karakter khusus.';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    textCapitalization: TextCapitalization.none,
                    keyboardType: TextInputType.phone,
                    controller: _phoneController,
                    decoration: const InputDecoration(
                      hintText: '+62...',
                      labelText: 'Phone',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Nomor telepon harus diisi oleh user.';
                      }
                      if (!value.contains(RegExp(r'^\d+$'))) {
                        return 'Nomor telepon harus terdiri dari angka saja.';
                      }
                      if (value.length < 8 || value.length > 15) {
                        return 'Panjang nomor telepon harus minimal 8 digit dan maksimal 15 digit.';
                      }
                      if (!value.startsWith('0')) {
                        return 'Nomor telepon harus dimulai dengan angka 0.';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 30),
                  BlocBuilder<ContactBloc, ContactState>(
                    builder: (context, state) {
                      return ElevatedButton(
                        onPressed: () {
                          final isValid = _formKey.currentState!.validate();
                          if (!isValid) {
                            return;
                          }
                          final contact = Contact(
                            name: _nameController.text,
                            phone: _phoneController.text,
                          );
                          final duplicate = state.contacts
                              .where(
                                  (element) => element.phone == contact.phone)
                              .isNotEmpty;
                          if (duplicate) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Contact already exists'),
                              ),
                            );
                            return;
                          }
                          context
                              .read<ContactBloc>()
                              .add(CreateContact(contact: contact));
                          return Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(double.minPositive, 20),
                          backgroundColor: Colors.blue,
                          padding: const EdgeInsets.all(15),
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        child: const SizedBox(
                          width: 120,
                          child: Center(
                            child: Text(
                              'Update',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

                  // Material(
                  //   shadowColor: Colors.black54,
                  //   elevation: 5,
                  //   borderRadius: const BorderRadius.all(
                  //     Radius.circular(20),
                  //   ),
                  //   child: TextFormField(
                  //     controller: _nameController,
                  //     keyboardType: TextInputType.name,
                  //     decoration: const InputDecoration(
                  //       fillColor: Colors.white,
                  //       labelText: 'Username',
                  //       prefixIcon: Icon(Icons.person),
                  //       prefixIconColor: Colors.black,
                  //       border: UnderlineInputBorder(
                  //         borderRadius: BorderRadius.all(
                  //           Radius.circular(20),
                  //         ),
                  //         borderSide: BorderSide(
                  //           color: Colors.white,
                  //           style: BorderStyle.none,
                  //         ),
                  //       ),
                  //       filled: true,
                  //       contentPadding: EdgeInsets.all(15),
                  //     ),
                  //   ),
                  // ),