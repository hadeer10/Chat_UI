
import 'package:flutter/material.dart';

class chatdetails extends StatelessWidget {
  static String id = 'chatdetails';
  @override
  Widget build(BuildContext context) {
    Map args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        backgroundColor:  Colors.teal.withOpacity(0.3),
        title: Row(
        children: [
          CircleAvatar(
            radius: 15.0,
            backgroundImage: NetworkImage(
                'https://image.shutterstock.com/image-photo/closeup-photo-amazing-short-hairdo-260nw-1617540484.jpg'
            ),
          ),
          SizedBox(width: 15.0),
          Text(args['name'] ,style: TextStyle(fontWeight: FontWeight.bold , height: 1.4) ,)
        ],
      ),),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Align(
              alignment: AlignmentDirectional.centerStart,
              child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadiusDirectional.only(
                      bottomEnd: Radius.circular(10),
                      topEnd: Radius.circular(10),
                      topStart: Radius.circular(10),
                    )
                  ),
                  padding: EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal:10,
                  ),
                  child: Text('hello ' + args['name'])),
            ),
            Align(
              alignment: AlignmentDirectional.centerEnd,
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.teal.withOpacity(0.3),
                      borderRadius: BorderRadiusDirectional.only(
                        bottomStart: Radius.circular(10),
                        topEnd: Radius.circular(10),
                        topStart: Radius.circular(10),
                      )
                  ),
                  padding: EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal:10,
                  ),
                  child: Text('hello')),
            ),
            Spacer(),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey[300],
                  width: 1,

                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: '  write your message here'
                      ),
                    ),
                  ),
                  Container(
                    height: 40,
                    child: MaterialButton(
                      minWidth: 1,
                      onPressed: (){},
                      child: Icon(
                      Icons.send,
                      size: 16,
                      color: Colors.teal.withOpacity(0.3) ,
                    ),),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

}
