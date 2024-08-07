import 'package:contacts_task/Models/contact.dart';
import 'package:flutter/material.dart';

class ContactCard extends StatelessWidget {
  final Contact contact;
  const ContactCard(this.contact,{super.key});

  @override
  Widget build(BuildContext context) {
    return  Visibility(
      visible: contact.visible,
      child: Container(
        width: double.infinity,
        padding:const EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Name: ${contact.name}"),
            const SizedBox(height: 8,),
            Text("Phone: ${contact.phone}"),
          ],
        ),
      ),
    );
  }
}
