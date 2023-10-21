import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'create_profile_vendor_widget.dart' show CreateProfileVendorWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateProfileVendorModel
    extends FlutterFlowModel<CreateProfileVendorWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for shopName widget.
  FocusNode? shopNameFocusNode;
  TextEditingController? shopNameController;
  String? Function(BuildContext, String?)? shopNameControllerValidator;
  // State field(s) for phoneNumber widget.
  FocusNode? phoneNumberFocusNode;
  TextEditingController? phoneNumberController;
  String? Function(BuildContext, String?)? phoneNumberControllerValidator;
  // State field(s) for shopAddress widget.
  FocusNode? shopAddressFocusNode;
  TextEditingController? shopAddressController;
  String? Function(BuildContext, String?)? shopAddressControllerValidator;
  // State field(s) for gstInNumber widget.
  FocusNode? gstInNumberFocusNode;
  TextEditingController? gstInNumberController;
  String? Function(BuildContext, String?)? gstInNumberControllerValidator;
  // State field(s) for panCardNumber widget.
  FocusNode? panCardNumberFocusNode;
  TextEditingController? panCardNumberController;
  String? Function(BuildContext, String?)? panCardNumberControllerValidator;
  // State field(s) for bankAccNumber widget.
  FocusNode? bankAccNumberFocusNode;
  TextEditingController? bankAccNumberController;
  String? Function(BuildContext, String?)? bankAccNumberControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    shopNameFocusNode?.dispose();
    shopNameController?.dispose();

    phoneNumberFocusNode?.dispose();
    phoneNumberController?.dispose();

    shopAddressFocusNode?.dispose();
    shopAddressController?.dispose();

    gstInNumberFocusNode?.dispose();
    gstInNumberController?.dispose();

    panCardNumberFocusNode?.dispose();
    panCardNumberController?.dispose();

    bankAccNumberFocusNode?.dispose();
    bankAccNumberController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
