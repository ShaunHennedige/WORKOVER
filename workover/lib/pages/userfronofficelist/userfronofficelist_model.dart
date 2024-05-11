import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'userfronofficelist_widget.dart' show UserfronofficelistWidget;
import 'package:flutter/material.dart';

class UserfronofficelistModel
    extends FlutterFlowModel<UserfronofficelistWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<FrontofficeusersRecord> simpleSearchResults = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
