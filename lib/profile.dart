import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login/login-register/data.dart';



class ProfilePages extends StatelessWidget {
final Data useData;

ProfilePages({required this.useData});


@override
Widget build(BuildContext context) {
  return Scaffold(
    body: Padding(
      padding:  EdgeInsets.all(20),
      child: Column(
        children: [
            SizedBox(height: 40,),

          CircleAvatar(
            radius:70,
            backgroundImage: AssetImage(''),
          ),
          
           SizedBox(height: 20,),
          itemProfile('Nama', useData.nama, CupertinoIcons.person),
           SizedBox(height: 10,),
          itemProfile ('Email', useData.email, CupertinoIcons.person),
           SizedBox(height: 10,),
          itemProfile ("Alamat", "jL.Ikan Wijinongko Sobo Wonosari", CupertinoIcons.person),
           SizedBox(height: 10,),
          itemProfile ("Phone", "081917133962", CupertinoIcons.person)
        ],
      ),
    ),
  );
}

            
itemProfile (String nama, String email, IconData IconData) {

  return Container(
    decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                offset: const Offset(0, 5),
                color: Colors.deepOrange.withOpacity(.2),
                spreadRadius: 2,
                blurRadius: 10
    ),
              ],
            ),


            child: ListTile(
              title: Text(nama),
              subtitle: Text(email),
              leading:  Icon(IconData),
              trailing: Icon(Icons.arrow_forward, color: Colors.grey),
              tileColor: Colors.white,
              
            ),
          );
}
}