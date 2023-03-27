import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:intl/intl.dart';

import '../models/contact.dart';

class Advance extends StatefulWidget {
  const Advance({super.key});

  @override
  State<Advance> createState() => _AdvanceFormS();
}

class _AdvanceFormS extends State<Advance> {
  var inputNameController = TextEditingController();
  var inputPhoneController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  int selectedIndex = -1;

  DateTime _dueDate = DateTime.now();
  final currentDate = DateTime.now();
  Color _currentColor = Colors.orange;

  @override
  void dispose() {
    inputNameController.dispose();
    inputPhoneController.dispose();
    super.dispose();
  }

  List<Contact> contacts = List.empty(growable: true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Contacts',
        ),
        centerTitle: true,
      ),
      // body: SingleChildScrollView(
      body: Form(
        key: formKey,
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.fromLTRB(30, 10, 30, 0),
              height: 150,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Image(
                      image: AssetImage('assets/icon_form.png'),
                    ),
                    Text(
                      'Create New Contacts',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black87,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      'A dialog is a type of modal window that appears in front of app content to provide critical information, or prompt for a decision to be made. ',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black54,
                      ),
                    ),
                    Divider(
                      height: 10,
                      color: Colors.black54,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 132,
              // height: 172,
              margin: const EdgeInsets.fromLTRB(30, 5, 30, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextFormField(
                    textCapitalization: TextCapitalization.none,
                    controller: inputNameController,
                    decoration: const InputDecoration(
                      hintText: 'Input your name...',
                      labelText: 'Full Name',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
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
                  const SizedBox(height: 10),
                  TextFormField(
                    textCapitalization: TextCapitalization.none,
                    keyboardType: TextInputType.number,
                    controller: inputPhoneController,
                    decoration: const InputDecoration(
                      hintText: '+62...',
                      labelText: 'Phone',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
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
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              height: 110,
              child: Center(
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    buildDatePicker(context),
                    const SizedBox(
                      height: 5,
                    ),
                    buildColorPicker(context),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(30, 0, 30, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Container(
                  //   height: 40,
                  //   width: 90,
                  //   margin: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                  //   child: TextButton(
                  //     style: TextButton.styleFrom(
                  //       backgroundColor: Colors.blue,
                  //       shape: RoundedRectangleBorder(
                  //         borderRadius: BorderRadius.circular(20),
                  //       ),
                  //     ),
                  //     child: const Text(
                  //       'Update',
                  //       style: TextStyle(fontSize: 15, color: Colors.white),
                  //     ),
                  //     onPressed: () {
                  //       if (formKey.currentState!.validate()) {
                  //         String nameContact = inputNameController.text.trim();
                  //         String phoneContact = inputPhoneController.text.trim();
                  //         if (nameContact.isNotEmpty && phoneContact.isNotEmpty) {
                  //           setState(() {
                  //             inputNameController.text = '';
                  //             inputPhoneController.text = '';
                  //             contacts[selectedIndex].name = nameContact;
                  //             contacts[selectedIndex].phone = phoneContact;
                  //             selectedIndex = -1;
                  //           });
                  //         }
                  //       }
                  //     },
                  //   ),
                  // ),
                  buildFilePicker(context),
                  SizedBox(
                    height: 40,
                    width: 90,
                    // margin: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: const Text(
                        'Submit',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          String nameContact = inputNameController.text.trim();
                          String phoneContact =
                              inputPhoneController.text.trim();
                          if (nameContact.isNotEmpty &&
                              phoneContact.isNotEmpty) {
                            setState(() {
                              inputNameController.text = '';
                              inputPhoneController.text = '';
                              contacts.add(Contact(
                                  name: nameContact, phone: phoneContact));
                            });
                          }
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
            contacts.isEmpty
                ? const Text(
                    'Not yet contact in your phone...',
                    style: TextStyle(fontSize: 15),
                  )
                : Expanded(
                    child: ListView.builder(
                      itemCount: contacts.length,
                      itemBuilder: (context, index) => getRow(index),
                    ),
                  ),
          ],
        ),
      ),
    );
  }

  Widget buildDatePicker(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text('Date : '),
            Text(
              DateFormat('dd-MM-yyyy').format(_dueDate),
            ),
            const SizedBox(
              width: 170,
            ),
            TextButton(
              onPressed: () async {
                final selectDate = await showDatePicker(
                  context: context,
                  initialDate: currentDate,
                  firstDate: DateTime(1990),
                  lastDate: DateTime(currentDate.year + 5),
                );
                setState(() {
                  if (selectDate != null) {
                    _dueDate = selectDate;
                  }
                });
              },
              child: const Text('Select'),
            )
          ],
        ),
      ],
    );
  }

  Widget buildColorPicker(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // const Text('Color'),
        // const SizedBox(
        //   height: 10,
        // ),
        // Container(
        //   height: 100,
        //   width: double.infinity,
        //   color: _currentColor,
        // ),
        ElevatedButton(
          onPressed: (() {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: const Text('Pick your color'),
                  content: SingleChildScrollView(
                    child: ColorPicker(
                      pickerColor: _currentColor,
                      onColorChanged: (color) {
                        setState(() {
                          _currentColor = color;
                        });
                      },
                    ),
                  ),
                  actions: [
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('Save'))
                  ],
                );
              },
            );
          }),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(_currentColor),
          ),
          child: const Text('Pick Color'),
        ),
      ],
    );
  }

  Widget buildFilePicker(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // const Text('Pick Files'),
        Center(
          child: ElevatedButton(
            onPressed: () {
              // _pickFile();
            },
            child: const Text('Pick and Open File'),
          ),
        )
      ],
    );
  }

  Widget getRow(int index) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          child: Text(
            contacts[index].name[0].toUpperCase(),
            style: const TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.black26,
        ),
        title: Text(
          contacts[index].name,
        ),
        subtitle: Text(
          contacts[index].phone,
        ),
        trailing: SizedBox(
          width: 200,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(index % 2 == 0 ? '27-03-2023' : '05-04-2023'),
              const SizedBox(width: 10),
              Icon(Icons.circle,
                  color:
                      index % 2 == 0 ? Colors.orange : Colors.deepPurpleAccent),
              const SizedBox(width: 10),
              InkWell(
                onTap: () {
                  inputNameController.text = contacts[index].name;
                  inputPhoneController.text = contacts[index].phone;
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: const Icon(Icons.edit),
              ),
              const SizedBox(width: 10),
              InkWell(
                onTap: () {
                  setState(() {
                    contacts.removeAt(index);
                  });
                },
                child: const Icon(Icons.delete),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
