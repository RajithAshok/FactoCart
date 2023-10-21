import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'create_profile_customer_widget.dart' show CreateProfileCustomerWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateProfileCustomerModel
    extends FlutterFlowModel<CreateProfileCustomerWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for userName widget.
  FocusNode? userNameFocusNode;
  TextEditingController? userNameController;
  String? Function(BuildContext, String?)? userNameControllerValidator;
  // State field(s) for phoneNumber widget.
  FocusNode? phoneNumberFocusNode;
  TextEditingController? phoneNumberController;
  String? Function(BuildContext, String?)? phoneNumberControllerValidator;
  // State field(s) for shippingAddress widget.
  FocusNode? shippingAddressFocusNode;
  TextEditingController? shippingAddressController;
  String? Function(BuildContext, String?)? shippingAddressControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    userNameFocusNode?.dispose();
    userNameController?.dispose();

    phoneNumberFocusNode?.dispose();
    phoneNumberController?.dispose();

    shippingAddressFocusNode?.dispose();
    shippingAddressController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
