import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'userkitchenlist_widget.dart' show UserkitchenlistWidget;
import 'package:flutter/material.dart';

class UserkitchenlistModel extends FlutterFlowModel<UserkitchenlistWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<KitchenusersRecord> simpleSearchResults = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
