import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/navbars/vendor_bottom_navbar_component/vendor_bottom_navbar_component_widget.dart';
import '/components/rating_bar/rating_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'vendor_homepage_widget.dart' show VendorHomepageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class VendorHomepageModel extends FlutterFlowModel<VendorHomepageWidget> {
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
