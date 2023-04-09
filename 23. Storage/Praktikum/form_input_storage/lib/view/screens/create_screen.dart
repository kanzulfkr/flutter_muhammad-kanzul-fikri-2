import 'package:flutter/material.dart';
import 'package:form_input_storage/view/screens/home_screen.dart';
import 'package:provider/provider.dart';

import '../../models/contact.dart';
import '../../models/db_manager.dart';

class CreateContactScreen extends StatefulWidget {
  static const String route = '/createContactScreen';
  final Contact? contact;
  const CreateContactScreen({Key? key, this.contact}) : super(key: key);

  @override
  State<CreateContactScreen> createState() => _CreateContactScreenState();
}

class _CreateContactScreenState extends State<CreateContactScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();

  bool _isUpdate = false;

  @override
  void initState() {
    super.initState();
    if (widget.contact != null) {
      _nameController.text = widget.contact!.name;
      _phoneController.text = widget.contact!.phone;
      _isUpdate = true;
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, HomeScreen.route);
          },
        ),
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
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        'A dialog is a type of modal window that appears in front of app content to provide critical information, or prompt for a decision to be made. ',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(height: 35),
                  ],
                ),
                buildNameField(),
                const SizedBox(height: 16),
                buildPhoneField(),
                const SizedBox(height: 30),
                Container(
                  height: 50,
                  width: 250,
                  margin: const EdgeInsets.all(5),
                  child: buildButtonCreate(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildNameField() {
    return TextFormField(
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
      // validator: (value) {
      //   if (value!.isEmpty) {
      //     return 'Nama harus diisi oleh user.';
      //   }
      //   if (value.split(' ').length < 2) {
      //     return 'Nama harus terdiri dari minimal 2 kata.';
      //   }
      //   if (!value.contains(RegExp(r'^[A-Z]'))) {
      //     return 'Setiap kata harus dimulai dengan huruf kapital.';
      //   }
      //   if (value.contains(RegExp(r'\d')) ||
      //       value.contains(RegExp(r'[^\w\s]'))) {
      //     return 'Nama tidak boleh mengandung angka atau karakter khusus.';
      //   }
      //   return null;
      // },
    );
  }

  Widget buildPhoneField() {
    return TextFormField(
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
      // validator: (value) {
      //   if (value!.isEmpty) {
      //     return 'Nomor telepon harus diisi oleh user.';
      //   }
      //   if (!value.contains(RegExp(r'^\d+$'))) {
      //     return 'Nomor telepon harus terdiri dari angka saja.';
      //   }
      //   if (value.length < 8 || value.length > 15) {
      //     return 'Panjang nomor telepon harus minimal 8 digit dan maksimal 15 digit.';
      //   }
      //   if (!value.startsWith('0')) {
      //     return 'Nomor telepon harus dimulai dengan angka 0.';
      //   }
      //   return null;
      // },
    );
  }

  Widget buildButtonCreate() {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: Colors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
      child: const Text(
        'Create',
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
      onPressed: () {
        if (!_isUpdate) {
          final contactList = Contact(
            name: _nameController.text,
            phone: _phoneController.text,
          );
          Provider.of<DbManager>(context, listen: false)
              .addContact(contactList);
        } else {
          final contactList = Contact(
            id: widget.contact!.id,
            name: _nameController.text,
            phone: _phoneController.text,
          );
          Provider.of<DbManager>(context, listen: false)
              .updateContact(contactList);
        }
        Navigator.pop(context);
        Navigator.pushNamed(context, HomeScreen.route);

        // final isValidForm = formKey.currentState!.validate();

        // String username = _usernameController.text;
        // String email = _emailController.text;
        // if (isValidForm) {
        //   logindata.setBool('login', false);
        //   logindata.setString('username', username);
        //   logindata.setString('email', email);
        //   Navigator.pushAndRemoveUntil(
        //       context,
        //       MaterialPageRoute(
        //         builder: (context) => const HomeScreen(),
        //       ),
        //       (route) => false);
        // }
      },
    );
  }
}
