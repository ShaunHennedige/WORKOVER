import '/flutter_flow/flutter_flow_util.dart';
import 'profilechange_widget.dart' show ProfilechangeWidget;
import 'package:flutter/material.dart';

class ProfilechangeModel extends FlutterFlowModel<ProfilechangeWidget> {
  ///  State fields for stateful widgets in this component.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode;
  TextEditingController? yourNameTextController;
  String? Function(BuildContext, String?)? yourNameTextControllerValidator;
  // State field(s) for yournumber widget.
  FocusNode? yournumberFocusNode;
  TextEditingController? yournumberTextController;
  String? Function(BuildContext, String?)? yournumberTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    yourNameFocusNode?.dispose();
    yourNameTextController?.dispose();

    yournumberFocusNode?.dispose();
    yournumberTextController?.dispose();
  }
}
