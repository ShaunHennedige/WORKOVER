import '/flutter_flow/flutter_flow_util.dart';
import 'handover_widget.dart' show HandoverWidget;
import 'package:flutter/material.dart';

class HandoverModel extends FlutterFlowModel<HandoverWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for ownerh widget.
  FocusNode? ownerhFocusNode;
  TextEditingController? ownerhTextController;
  String? Function(BuildContext, String?)? ownerhTextControllerValidator;
  // State field(s) for departmenth widget.
  FocusNode? departmenthFocusNode;
  TextEditingController? departmenthTextController;
  String? Function(BuildContext, String?)? departmenthTextControllerValidator;
  // State field(s) for descriptionh widget.
  FocusNode? descriptionhFocusNode;
  TextEditingController? descriptionhTextController;
  String? Function(BuildContext, String?)? descriptionhTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    ownerhFocusNode?.dispose();
    ownerhTextController?.dispose();

    departmenthFocusNode?.dispose();
    departmenthTextController?.dispose();

    descriptionhFocusNode?.dispose();
    descriptionhTextController?.dispose();
  }
}
