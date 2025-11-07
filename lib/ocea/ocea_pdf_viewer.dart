// ignore_for_file: use_build_context_synchronously, deprecated_member_use

import 'dart:io';
import 'package:evervue/ocea/ocea_page.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:share_plus/share_plus.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class OceaPDFViewer extends StatefulWidget {
  const OceaPDFViewer({
    super.key,
    required this.pdfTitle,
    required this.pdfSpecs,
  });
  final String pdfTitle;
  final String pdfSpecs;

  @override
  State<OceaPDFViewer> createState() => _SpecsViewerState();
}

class _SpecsViewerState extends State<OceaPDFViewer> {
  late PdfViewerController _pdfViewerController;

  @override
  void initState() {
    _pdfViewerController = PdfViewerController();
    super.initState();
  }

  Future<void> _downloadPdf() async {
    try {
      var status = await Permission.storage.request();
      if (!status.isGranted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Storage permission denied')),
        );
        return;
      }

      final dir = Platform.isAndroid
          ? await getExternalStorageDirectory()
          : await getApplicationDocumentsDirectory();

      final savePath =
          '${dir!.path}/${widget.pdfTitle.replaceAll(' ', '_')}.pdf';

      if (widget.pdfSpecs.startsWith('assets/')) {
        final byteData =
            await DefaultAssetBundle.of(context).load(widget.pdfSpecs);
        final file = File(savePath);
        await file.writeAsBytes(byteData.buffer.asUint8List());

        if (Platform.isIOS) {
          await Share.shareXFiles([XFile(file.path)], text: 'Download PDF');
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('PDF saved to ${file.path}')),
          );
        }
      } else if (widget.pdfSpecs.startsWith('http')) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              content: Text('PDF download from network not yet implemented')),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to download PDF: $e')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          scrolledUnderElevation: 0.0,
          backgroundColor: Colors.white,
          leading: Container(
            margin: const EdgeInsets.only(top: 5),
            child: Material(
              elevation: 0,
              shape: const CircleBorder(),
              color: Colors.white,
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: Colors.black,
                ),
                onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const OceaPage(),
            ),
          ),
              ),
            ),
          ),
          title: Container(
            margin: const EdgeInsets.only(top: 5),
            child: Text(
              widget.pdfTitle,
              textAlign: TextAlign.left,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(10.0),
            child: Divider(
              height: 10,
              indent: 15,
              endIndent: 15,
              thickness: 0.5,
              color: Color(0xff650000),
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.download_rounded, color: Colors.black),
              onPressed: () async {
                await _downloadPdf();
              },
            )
          ],
        ),
        body: SfPdfViewerTheme(
          data: const SfPdfViewerThemeData(
            scrollHeadStyle: PdfScrollHeadStyle(
              backgroundColor: Color.fromARGB(255, 100, 100, 100),
              pageNumberTextStyle: TextStyle(fontSize: 12, color: Colors.white),
            ),
            backgroundColor: Colors.white,
          ),
          child: SfPdfViewer.asset(
            widget.pdfSpecs,
            controller: _pdfViewerController,
            enableDoubleTapZooming: true,
            pageLayoutMode: PdfPageLayoutMode.single,
            canShowScrollHead: true,
            scrollDirection: PdfScrollDirection.horizontal,
          ),
        ),
      ),
    );
  }
}
