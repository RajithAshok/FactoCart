import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'edit_product_page_widget.dart' show EditProductPageWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditProductPageModel extends FlutterFlowModel<EditProductPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for nameTextField widget.
  FocusNode? nameTextFieldFocusNode;
  TextEditingController? nameTextFieldController;
  String? Function(BuildContext, String?)? nameTextFieldControllerValidator;
  // State field(s) for descTextField widget.
  FocusNode? descTextFieldFocusNode;
  TextEditingController? descTextFieldController;
  String? Function(BuildContext, String?)? descTextFieldControllerValidator;
  // State field(s) for stockTextField widget.
  FocusNode? stockTextFieldFocusNode;
  TextEditingController? stockTextFieldController;
  String? Function(BuildContext, String?)? stockTextFieldControllerValidator;
  // State field(s) for priceTextField widget.
  FocusNode? priceTextFieldFocusNode;
  TextEditingController? priceTextFieldController;
  String? Function(BuildContext, String?)? priceTextFieldControllerValidator;
  // State field(s) for SwitchListTile widget.
  bool? switchListTileValue;
  // State field(s) for discPriceTextField widget.
  FocusNode? discPriceTextFieldFocusNode;
  TextEditingController? discPriceTextFieldController;
  String? Function(BuildContext, String?)?
      discPriceTextFieldControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    nameTextFieldFocusNode?.dispose();
    nameTextFieldController?.dispose();

    descTextFieldFocusNode?.dispose();
    descTextFieldController?.dispose();

    stockTextFieldFocusNode?.dispose();
    stockTextFieldController?.dispose();

    priceTextFieldFocusNode?.dispose();
    priceTextFieldController?.dispose();

    discPriceTextFieldFocusNode?.dispose();
    discPriceTextFieldController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
