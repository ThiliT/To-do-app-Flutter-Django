import 'package:flutter/material.dart';
import 'package:frontend/urls.dart';
import 'package:http/http.dart';

class CreatePage extends StatefulWidget {
  final Client client;
  const CreatePage({super.key, required this.client});

  @override
  State<CreatePage> createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create"),
      ),
      body: Column(
        children: [
          TextField(
            controller: controller,
          ),
          ElevatedButton(
              onPressed: () {
                widget.client.post(createUrl, body: {'body': controller.text});
                Navigator.pop(context);
              },
              child: Text("Create Note"))
        ],
      ),
    );
  }
}
