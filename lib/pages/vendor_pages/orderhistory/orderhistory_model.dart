import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/components/navbars/vendor_bottom_navbar_component/vendor_bottom_navbar_component_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'orderhistory_widget.dart' show OrderhistoryWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OrderhistoryModel extends FlutterFlowModel<OrderhistoryWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for VendorBottomNavbarComponent component.
  late VendorBottomNavbarComponentModel vendorBottomNavbarComponentModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    vendorBottomNavbarComponentModel =
        createModel(context, () => VendorBottomNavbarComponentModel());
  }

  void dispose() {
    unfocusNode.dispose();
    vendorBottomNavbarComponentModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
