import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/components/navbars/bottom_navbar_component/bottom_navbar_component_widget.dart';
import '/components/navbars/top_nav_customer_component/top_nav_customer_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'shopping_cart_widget.dart' show ShoppingCartWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ShoppingCartModel extends FlutterFlowModel<ShoppingCartWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for BottomNavbarComponent component.
  late BottomNavbarComponentModel bottomNavbarComponentModel;
  // Model for TopNav_customerComponent component.
  late TopNavCustomerComponentModel topNavCustomerComponentModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    bottomNavbarComponentModel =
        createModel(context, () => BottomNavbarComponentModel());
    topNavCustomerComponentModel =
        createModel(context, () => TopNavCustomerComponentModel());
  }

  void dispose() {
    unfocusNode.dispose();
    bottomNavbarComponentModel.dispose();
    topNavCustomerComponentModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
