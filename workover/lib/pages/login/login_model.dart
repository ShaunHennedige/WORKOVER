import '/flutter_flow/flutter_flow_util.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for SignupSelection widget.
  TabController? signupSelectionController;
  int get signupSelectionCurrentIndex =>
      signupSelectionController != null ? signupSelectionController!.index : 0;

  // State field(s) for Email widget.
  FocusNode? emailFocusNode1;
  TextEditingController? emailTextController1;
  String? Function(BuildContext, String?)? emailTextController1Validator;
  // State field(s) for Password widget.
  FocusNode? passwordFocusNode1;
  TextEditingController? passwordTextController1;
  late bool passwordVisibility1;
  String? Function(BuildContext, String?)? passwordTextController1Validator;
  // State field(s) for M_Passkey widget.
  FocusNode? mPasskeyFocusNode;
  TextEditingController? mPasskeyTextController;
  String? Function(BuildContext, String?)? mPasskeyTextControllerValidator;
  // State field(s) for Email widget.
  FocusNode? emailFocusNode2;
  TextEditingController? emailTextController2;
  String? Function(BuildContext, String?)? emailTextController2Validator;
  // State field(s) for Password widget.
  FocusNode? passwordFocusNode2;
  TextEditingController? passwordTextController2;
  late bool passwordVisibility2;
  String? Function(BuildContext, String?)? passwordTextController2Validator;

  @override
  void initState(BuildContext context) {
    passwordVisibility1 = false;
    passwordVisibility2 = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    signupSelectionController?.dispose();
    emailFocusNode1?.dispose();
    emailTextController1?.dispose();

    passwordFocusNode1?.dispose();
    passwordTextController1?.dispose();

    mPasskeyFocusNode?.dispose();
    mPasskeyTextController?.dispose();

    emailFocusNode2?.dispose();
    emailTextController2?.dispose();

    passwordFocusNode2?.dispose();
    passwordTextController2?.dispose();
  }
}
