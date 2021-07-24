import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';

class EditorPage extends StatelessWidget {
  QuillController _controller = QuillController.basic();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          QuillToolbar.basic(controller: _controller),
          Expanded(
            child: Container(
              child: QuillEditor.basic(
                controller: _controller,
                readOnly: false, // true for view only mode
              ),
            ),
          )
        ],
      ),
    );
  }
}
