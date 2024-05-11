import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'userfandblist_widget.dart' show UserfandblistWidget;
import 'package:flutter/material.dart';

class UserfandblistModel extends FlutterFlowModel<UserfandblistWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<FnadbuserRecord> simpleSearchResults = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
