import 'package:flutter/material.dart';
import 'package:frontend/urls.dart';
import 'package:http/http.dart';

class UpdatePage extends StatefulWidget {
  final Client client;
  final int id;
  final String note;
  const UpdatePage(
      {super.key, required this.client, required this.id, required this.note});

  @override
  State<UpdatePage> createState() => _UpdatePageState();
}

class _UpdatePageState extends State<UpdatePage> {
  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    controller.text = widget.note;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Update"),
      ),
      body: Column(
        children: [
          TextField(
            controller: controller,
          ),
          ElevatedButton(
              onPressed: () {
                widget.client
                    .put(updateUrl(widget.id), body: {'body': controller.text});
                Navigator.pop(context);
              },
              child: Text("Update Note"))
        ],
      ),
    );
  }
}
