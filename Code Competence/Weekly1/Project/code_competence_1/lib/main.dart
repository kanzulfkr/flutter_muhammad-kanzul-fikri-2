import 'package:code_competence_1/models/contact.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CodeCompetence());
}

class CodeCompetence extends StatefulWidget {
  const CodeCompetence({super.key});

  @override
  State<CodeCompetence> createState() => _CodeCompetenceState();
}

class _CodeCompetenceState extends State<CodeCompetence> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: buildMaterialColor(const Color(0xFF66CA98)),
        primaryColor: buildMaterialColor(const Color(0xFFF4A3EC)),
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Self Care Apps'),
    );
  }
}

MaterialColor buildMaterialColor(Color color) {
  List strengths = <double>[.05];
  Map<int, Color> swatch = {};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  strengths.forEach((strength) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  });
  return MaterialColor(color.value, swatch);
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
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
                onTap: () {},
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
                height: MediaQuery.of(context).size.height * 0.72,
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
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(15),
                height: MediaQuery.of(context).size.height * 0.9,
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
