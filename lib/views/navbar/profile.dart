import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profilepage extends StatefulWidget {
  const Profilepage({super.key});

  @override
  State<Profilepage> createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  @override
  Widget build(BuildContext context) {
    return 
    SafeArea(
      child: Column(
          children:[
            const SizedBox(height: 50,),
            const Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2018/08/28/12/41/avatar-3637425_640.png'),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Rahul Thapa',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'rahulthapa043@gmail.com',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
              ),
            ),
            const SizedBox(height: 20),
            const ListTile(
              leading: Icon(Icons.phone),
              title: Text('Phone'),
              subtitle: Text('+977 9816491822'),
            ),
            const ListTile(
              leading: Icon(Icons.location_on),
              title: Text('Address'),
              subtitle: Text(' '),
            ),
            const ListTile(
              leading: Icon(Icons.calendar_today),
              title: Text('Date of Birth'),
              subtitle: Text(' '),
            ),
            const SizedBox(height: 30,),
            ElevatedButton(onPressed: (){},style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.green)), child: const Text("Submit",style: TextStyle(color: Colors.white),),)
          ],
        ),
    
    
    );
  }
}


