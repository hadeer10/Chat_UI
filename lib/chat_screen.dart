
import 'package:flutter/material.dart';
import 'package:flutter_app_chat/chat_details.dart';

class chatscreen extends StatelessWidget {
  final List<person> persondetails = [
    person(
        name: 'Hadeer',),
    person(
        name: 'Malak',),
    person(
        name: 'Passant',),
    person(
      name: 'Yousef',),
    person(
      name: 'Ahmed',),
    person(
      name: 'Mohamed',),
    person(
      name: 'Hossam',),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: persondetails.length,
        itemBuilder:  (context, i) =>  InkWell(
          onTap: (){
            Navigator.pushNamed(context, chatdetails.id  ,
                arguments: {'name': persondetails[i].name});
          },
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 25.0,
                  backgroundImage: NetworkImage(
                      'https://image.shutterstock.com/image-photo/closeup-photo-amazing-short-hairdo-260nw-1617540484.jpg'
                  ),
                ),
                SizedBox(width: 15.0),
                Text(persondetails[i].name ,style: TextStyle(fontWeight: FontWeight.bold , height: 1.4) ,)
              ],
            ),
          ),
        ),
    );
  }
}
class person{
  final String name;
  person({this.name,});
}

