import 'package:code_competence_1/screen/contact_us.dart';
import 'package:flutter/material.dart';

import '../widgets/fiture_1.dart';
import '../widgets/fiture_2.dart';
import '../widgets/fiture_3.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: const Text('AboutUs'),
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
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ContactUs()),
                  );
                },
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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            SizedBox(height: 50),
            Text(
              'Select the features below',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 10),
            Icon(
              Icons.arrow_drop_down_outlined,
              size: 35,
            ),
            SizedBox(height: 25),
            FitureOne(),
            FitureTwo(),
            FitureTree(),
          ],
        ),
      ),
    );
  }
}
