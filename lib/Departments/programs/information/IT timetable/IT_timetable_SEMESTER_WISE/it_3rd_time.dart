import 'package:bzu_lodhran_off/firebase/api/firebase_apii.dart';
import 'package:bzu_lodhran_off/firebase/model/firebase_file.dart';
import 'package:bzu_lodhran_off/firebase/page/image_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
/*class it_books extends StatefulWidget {
  const it_books({Key? key}) : super(key: key);

  @override
  _it_booksState createState() => _it_booksState();
}

class _it_booksState extends State<it_books> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("BZU LODHRAN OFFCIAL"),
        backgroundColor: Colors.blue[700],
      ),
    );
  }
}*/
class it_3rd_time extends StatefulWidget {
  const it_3rd_time({Key? key}) : super(key: key);

  @override
  _it_3rd_timeState createState() => _it_3rd_timeState();
}

class _it_3rd_timeState extends State<it_3rd_time> {
  late Future<List<FirebaseFile>> futureFiles;

  @override
  void initState() {
    super.initState();

    futureFiles = FirebaseApii.listAll('it_3rd_time/');
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.indigo,
      title: Text('IT 3rd Time Table'),
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
