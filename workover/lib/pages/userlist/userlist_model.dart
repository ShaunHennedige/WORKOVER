import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'userlist_widget.dart' show UserlistWidget;
import 'package:flutter/material.dart';

class UserlistModel extends FlutterFlowModel<UserlistWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Searchfield widget.
  FocusNode? searchfieldFocusNode;
  TextEditingController? searchfieldTextController;
  String? Function(BuildContext, String?)? searchfieldTextControllerValidator;
  List<UsersRecord> simpleSearchResults = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    searchfieldFocusNode?.dispose();
    searchfieldTextController?.dispose();
  }
}
