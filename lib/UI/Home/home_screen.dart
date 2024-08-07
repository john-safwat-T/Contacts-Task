import 'package:contacts_task/Models/contact.dart';
import 'package:contacts_task/UI/Home/Widgets/contact_card.dart';
import 'package:contacts_task/UI/Home/Widgets/input_from.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "/";

  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final formKey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  List<Contact> contacts = [
    Contact("", ""),
    Contact("", ""),
    Contact("", ""),
  ];

  int pointer = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Contacts App",
        ),
      ),
      body:  SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            InputFrom(nameValidation , phoneValidation , formKey,
              nameController,
              phoneController
            ),
            const SizedBox(height: 16,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               Expanded(
                 child: ElevatedButton(
                     onPressed: (){
                       addContact();
                     },
                     child: const Text("Add")
                 ),
               ),
               const SizedBox(width: 8,),
               Expanded(
                 child: ElevatedButton(
                     onPressed: (){
                       deleteContact();
                     },
                     style: ButtonStyle(
                       backgroundColor: WidgetStateProperty.all(Colors.red)
                     ),
                     child: const Text("Delete")
                 ),
               )
             ],
            ),
            const SizedBox(height: 16,),
            ContactCard(contacts[0]),
            const SizedBox(height: 16,),
            ContactCard(contacts[1]),
            const SizedBox(height: 16,),
            ContactCard(contacts[2]),
          ],
        ),
      ),
    );
  }

  String? nameValidation(String value){
    if(RegExp(r'[!@#<>?":_`~;[\]\\|=+)(*&^%0-9-]').hasMatch(value)){
      return "Enter Valid Name";
    }else if(value.isEmpty){
      return "Name Can't be Empty";
    }
    return null;
  }

  String? phoneValidation(String value){
    String pattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
    RegExp regExp = RegExp(pattern);
    if (value.isEmpty) {
      return 'Please enter mobile number';
    }
    else if (!regExp.hasMatch(value)) {
      return 'Please enter valid mobile number';
    }
    return null;
  }

  addContact(){
    if(pointer == 3){
      return;
    }
    if(formKey.currentState!.validate()){
      contacts[pointer].name = nameController.text;
      contacts[pointer].phone = phoneController.text;
      contacts[pointer].visible = true;
      phoneController.clear();
      nameController.clear();
      pointer++;
    }
    setState(() {});
  }

  deleteContact(){
    if(pointer == 0){
      return;
    }
    pointer--;
    contacts[pointer].visible = false;
    setState(() {

    });
  }

}

