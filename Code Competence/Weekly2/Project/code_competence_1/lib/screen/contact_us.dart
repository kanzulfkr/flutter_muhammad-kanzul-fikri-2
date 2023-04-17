import 'package:code_competence_1/screen/about_us.dart';
import 'package:flutter/material.dart';

import '../models/contact.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  var formKey = GlobalKey<FormState>();
  var inputFirstNameController = TextEditingController();
  var inputLastNameController = TextEditingController();
  var inputEmailController = TextEditingController();
  var inputHelpController = TextEditingController();

  int selectedIndex = -1;

  @override
  void dispose() {
    inputFirstNameController.dispose();
    inputLastNameController.dispose();
    inputEmailController.dispose();
    inputHelpController.dispose();
    super.dispose();
  }

  List<Contact> contacts = List.empty(growable: true);

  var selectNav = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: const Text('Contact Us'),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: Center(
          child: ListView(
            padding: const EdgeInsets.all(15),
            children: <Widget>[
              const DrawerHeader(
                  child: Image(image: AssetImage('assets/medicine.png'))),
              ListTile(
                title: const Text('Contact Us',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
                contentPadding: const EdgeInsets.fromLTRB(20, 0, 0, 5),
                onTap: () {},
              ),
              ListTile(
                title: const Text('About Us',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
                contentPadding: const EdgeInsets.fromLTRB(20, 0, 0, 5),
                // Within the `FirstRoute` widget
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AboutUs()),
                  );
                },
              ),
              ListTile(
                title: const Text('Settings',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
                contentPadding: const EdgeInsets.fromLTRB(20, 0, 0, 5),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.75,
                padding: const EdgeInsets.all(30),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const <Widget>[
                      Text(
                        'Self Care',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 28,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Image(
                        image: AssetImage(
                          'assets/medicine.png',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.arrow_downward),
                label: const Text('Contact us'),
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: const BorderSide(color: Colors.blue),
                  ),
                ),
              ),
              const SizedBox(height: 60),
              Container(
                padding: const EdgeInsets.all(15),
                height: MediaQuery.of(context).size.height * 0.95,
                child: Column(
                  children: [
                    const SizedBox(height: 40),
                    const Image(
                      image: AssetImage('assets/medicine_small.png'),
                    ),
                    const SizedBox(height: 50),
                    const Text('Contact Us',
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.w500)),
                    const SizedBox(height: 30),
                    Container(
                      padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                      child: const Text(
                          'Need to get in touch with us? Either fill out the form with your inquiry or find the department email youd like to contact below.',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400)),
                    ),
                    const SizedBox(height: 35),
                    Row(
                      children: [
                        SizedBox(
                          width: 175,
                          child: TextFormField(
                            textCapitalization: TextCapitalization.none,
                            controller: inputFirstNameController,
                            decoration: const InputDecoration(
                              hintText: 'Input first name...',
                              labelText: 'First Name',
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
                              if (value.contains(RegExp(r'\d')) ||
                                  value.contains(RegExp(r'[^\w\s]'))) {
                                return 'Nama tidak boleh mengandung angka atau karakter khusus.';
                              }
                              return null;
                            },
                          ),
                        ),
                        const SizedBox(width: 30),
                        SizedBox(
                          width: 175,
                          child: TextFormField(
                            textCapitalization: TextCapitalization.none,
                            controller: inputLastNameController,
                            decoration: const InputDecoration(
                              hintText: 'Input last name...',
                              labelText: 'Last Name',
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
                              if (value.contains(RegExp(r'\d')) ||
                                  value.contains(RegExp(r'[^\w\s]'))) {
                                return 'Nama tidak boleh mengandung angka atau karakter khusus.';
                              }
                              return null;
                            },
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      textCapitalization: TextCapitalization.none,
                      controller: inputEmailController,
                      decoration: const InputDecoration(
                        hintText: 'Input your email...',
                        labelText: 'Email',
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
                        return null;
                      },
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: 60,
                      child: TextFormField(
                        textCapitalization: TextCapitalization.none,
                        controller: inputHelpController,
                        decoration: const InputDecoration(
                          hintText: 'What can we help you with?',
                          labelText: 'Input your problem',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            ),
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Problem harus diisi oleh user.';
                          }
                          return null;
                        },
                      ),
                    ),
                    const SizedBox(height: 70),
                    SizedBox(
                      width: 203,
                      height: 50,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: const Color(0xFF66CA98),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                        ),
                        child: const Text(
                          'Submit',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            String firstNameContact =
                                inputFirstNameController.text.trim();
                            String lastNameContact =
                                inputLastNameController.text.trim();
                            String emailContact =
                                inputEmailController.text.trim();
                            String helpContact =
                                inputHelpController.text.trim();

                            if (firstNameContact.isNotEmpty &&
                                lastNameContact.isNotEmpty &&
                                emailContact.isNotEmpty &&
                                helpContact.isNotEmpty) {
                              setState(
                                () {
                                  inputFirstNameController.text = '';
                                  inputLastNameController.text = '';
                                  inputEmailController.text = '';
                                  inputHelpController.text = '';
                                  contacts.add(Contact(
                                      firstName: firstNameContact,
                                      lastName: lastNameContact,
                                      email: emailContact,
                                      help: helpContact));
                                },
                              );
                            }
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(contacts[0].firstName),
                                      const SizedBox(width: 5),
                                      Text(contacts[0].lastName)
                                    ],
                                  ),
                                  content: Text(contacts[0].help),
                                  actions: <Widget>[
                                    TextButton(
                                      child: const Text('Delete'),
                                      onPressed: () {
                                        contacts.removeAt(0);
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                  ],
                                );
                              },
                            );
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
