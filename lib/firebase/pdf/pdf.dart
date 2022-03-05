import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class pdf extends StatefulWidget {
  @override
  _pdfState createState() => _pdfState();
}

class _pdfState extends State<pdf> {
  String url = "https://www.bzu.edu.pk/adv/prospectus%20pdf%20final%202021.pdf";
  String pdfasset = "image/bzu.pdf";
  late PDFDocument _doc;
  late bool _loading;

  @override
  void initState() {
    super.initState();
    _initPdf();
  }

  _initPdf() async {
    setState(() {
      _loading = true;
    });
    //final doc = await PDFDocument.fromAsset(pdfasset);
    final doc = await PDFDocument.fromURL(url);
    setState(() {
      _doc=doc;
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bzu Prospectus"),
        backgroundColor: Colors.blueGrey,
        automaticallyImplyLeading: true,),
      body: _loading ? Center(child: CircularProgressIndicator(),) : PDFViewer(document: _doc,
        indicatorBackground: Colors.red,
        // showIndicator: false,
        // showPicker: false,
      ),
    );
  }
}
