import 'package:bzu_lodhran_off/firebase/api/firebase_apii.dart';
import 'package:bzu_lodhran_off/firebase/model/firebase_file.dart';
import 'package:bzu_lodhran_off/firebase/page/image_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class eng_5th extends StatefulWidget {
  const eng_5th({Key? key}) : super(key: key);

  @override
  _eng_5thState createState() => _eng_5thState();
}

class _eng_5thState extends State<eng_5th> {
  late Future<List<FirebaseFile>> futureFiles;

  @override
  void initState() {
    super.initState();

    futureFiles = FirebaseApii.listAll('Eng_5th/');
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.indigo,
      title: Text('Eng 5th OUTLINE'),
      centerTitle: true,
    ),
    body: FutureBuilder<List<FirebaseFile>>(
      future: futureFiles,
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.waiting:
            return Center(child: CircularProgressIndicator());
          default:
            if (snapshot.hasError) {
              return Center(child: Text('Some error occurred!'));
            } else {
              final files = snapshot.data!;

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildHeader(files.length),
                  const SizedBox(height: 12),
                  Expanded(
                    child: ListView.builder(
                      itemCount: files.length,
                      itemBuilder: (context, index) {
                        final file = files[index];

                        return buildFile(context, file);
                      },
                    ),
                  ),
                ],
              );
            }
        }
      },
    ),
  );

  Widget buildFile(BuildContext context, FirebaseFile file) => ListTile(
    leading: ClipOval(
      child: Image.network(
        file.url,
        width: 52,
        height: 52,
        fit: BoxFit.cover,
      ),
    ),
    title: Text(
      file.name,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        decoration: TextDecoration.underline,
        color: Colors.blue,
      ),
    ),
    onTap: () => Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => ImagePage(file: file),
    )),
  );

  Widget buildHeader(int length) => ListTile(
    tileColor: Colors.indigo[400],
    leading: Container(
      width: 52,
      height: 52,
      child: Icon(
        Icons.file_copy,
        color: Colors.white,
      ),
    ),
    title: Text(
      '$length Files',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
        color: Colors.white,
      ),
    ),
  );
}
