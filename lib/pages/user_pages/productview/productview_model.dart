import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/navbars/add_bottom_sheet/add_bottom_sheet_widget.dart';
import '/components/navbars/bottom_navbar_component/bottom_navbar_component_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import 'productview_widget.dart' show ProductviewWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';

class ProductviewModel extends FlutterFlowModel<ProductviewWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for BottomNavbarComponent component.
  late BottomNavbarComponentModel bottomNavbarComponentModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    bottomNavbarComponentModel =
        createModel(context, () => BottomNavbarComponentModel());
  }

  void dispose() {
    bottomNavbarComponentModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
