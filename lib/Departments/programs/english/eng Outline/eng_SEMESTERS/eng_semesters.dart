import 'package:bzu_lodhran_off/Departments/programs/english/eng_info/eng_2nd_info.dart';
import 'package:bzu_lodhran_off/Departments/programs/english/eng_info/eng_3rd_info.dart';
import 'package:bzu_lodhran_off/Departments/programs/english/eng_info/eng_4th_info.dart';
import 'package:bzu_lodhran_off/Departments/programs/english/eng_info/eng_5th_info.dart';
import 'package:bzu_lodhran_off/Departments/programs/english/eng_info/eng_6th_info.dart';
import 'package:bzu_lodhran_off/Departments/programs/english/eng_info/eng_7th_info.dart';
import 'package:bzu_lodhran_off/Departments/programs/english/eng_info/eng_8th_info.dart';
import 'package:bzu_lodhran_off/Departments/programs/english/eng_info/eng_ist_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class eng_semesters extends StatefulWidget {
  const eng_semesters({Key? key}) : super(key: key);

  @override
  _eng_semestersState createState() => _eng_semestersState();
}

class _eng_semestersState extends State<eng_semesters> {
  // This holds a list of fiction users
  // You can use data fetched from a database or a server as well
  final List<Map<String, dynamic>> _allUsers = [
    {"id": 1, "name": "1st SEMESTER",},
    {"id": 2, "name": "2nd SEMESTER",},
    {"id": 3, "name": "3rd SEMESTER",},
    {"id": 4, "name": "4th SEMESTER",},
    {"id": 5, "name": "5th SEMESTER",},
    {"id": 6, "name": "6th SEMESTER",},
    {"id": 7, "name": "7th SEMESTER",},
    {"id": 8, "name": "8th SEMESTER",},
  ];

  // This list holds the data for the list view
  List<Map<String, dynamic>> _foundUsers = [];
  @override
  initState() {
    // at the beginning, all users are shown
    _foundUsers = _allUsers;
    super.initState();
  }

  // This function is called whenever the text field changes
  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = _allUsers;
    } else {
      results = _allUsers
          .where((user) =>
          user["name"].toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
      // we use the toLowerCase() method to make it case-insensitive
    }

    // Refresh the UI
    setState(() {
      _foundUsers = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('English Department'),
        backgroundColor: Colors.indigo,
        automaticallyImplyLeading: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            TextField(
              onChanged: (value) => _runFilter(value),
              decoration: const InputDecoration(
                  labelText: 'Search', suffixIcon: Icon(Icons.search)),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: _foundUsers.isNotEmpty
                  ? ListView.builder(
                itemCount: _foundUsers.length,
                itemBuilder: (context, index) => Card(
                  key: ValueKey(_foundUsers[index]["id"]),
                  color: Colors.white70,
                  elevation: 4,
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: ListTile(
                    leading: Text(
                      _foundUsers[index]["id"].toString(),
                      style: const TextStyle(fontSize: 24),
                    ),
                    title: Text(_foundUsers[index]['name']),
                    //subtitle: Text(_foundUsers[index]['address']),
                    onTap: (){
                      print(_foundUsers[index]['name']);
                      if (_foundUsers[index]["id"]==1){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>eng_1st_info()));}
                      else if(_foundUsers[index]["id"]==2){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>eng_2nd_info()));
                      }
                      else if(_foundUsers[index]["id"]==3){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>eng_3rd_info()));
                      }
                      else if(_foundUsers[index]["id"]==4){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>eng_4th_info()));
                      }
                      else if(_foundUsers[index]["id"]==5){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>eng_5th_info()));
                      }
                      else if(_foundUsers[index]["id"]==6){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>eng_6th_info()));
                      }
                      else if(_foundUsers[index]["id"]==7){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>eng_7th_info()));
                      }
                      else if(_foundUsers[index]["id"]==8){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>eng_8th_info()));
                      }
                    },
                  ),
                ),
              )
                  : const Text(
                'No results found',
                style: TextStyle(fontSize: 24),
              ),
            ),
          ],
        ),
      ),
    );
  }
}