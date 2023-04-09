import 'package:flutter/material.dart';
import 'package:form_input_storage/models/db_manager.dart';
import 'package:form_input_storage/view/screens/create_screen.dart';
import 'package:form_input_storage/view/screens/update_contact.dart';
import 'package:form_input_storage/view/widgets/contact_card.dart';
import 'package:provider/provider.dart';

class ContactList extends StatelessWidget {
  const ContactList({super.key, required this.manager});

  final DbManager manager;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16),
        child: Consumer<DbManager>(
          builder: (context, manager, child) {
            final contactItems = manager.contacts;
            return ListView.separated(
              itemCount: contactItems.length,
              itemBuilder: (context, index) {
                final item = contactItems[index];
                return InkWell(
                  onTap: () async {
                    final selectedContact =
                        await manager.getContactById(item.id!);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => UpdateContact(
                          contact: selectedContact,
                        ),
                      ),
                    );
                  },
                  child: ContactCard(
                    // key: Key(item.id),
                    contactTask: item,
                    onPressed: () {
                      manager.deleteContact(item.id!);
                      Navigator.pop(context);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('${item.name} Deleted')),
                      );
                    },
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(
                  height: 16,
                );
              },
            );
          },
        ));
  }
}
