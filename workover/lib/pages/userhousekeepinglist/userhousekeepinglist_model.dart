import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'userhousekeepinglist_widget.dart' show UserhousekeepinglistWidget;
import 'package:flutter/material.dart';

class UserhousekeepinglistModel
    extends FlutterFlowModel<UserhousekeepinglistWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<HousekkepingusersRecord> simpleSearchResults = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
