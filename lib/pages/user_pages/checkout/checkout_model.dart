import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/components/menu_item/menu_item_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'checkout_widget.dart' show CheckoutWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CheckoutModel extends FlutterFlowModel<CheckoutWidget> {
  ///  Local state fields for this page.

  bool isChecking = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Checkbox widget.

  Map<ShoppingCartStruct, bool> checkboxValueMap = {};
  List<ShoppingCartStruct> get checkboxCheckedItems =>
      checkboxValueMap.entries.where((e) => e.value).map((e) => e.key).toList();

  // Models for MenuItem dynamic component.
  late FlutterFlowDynamicModels<MenuItemModel> menuItemModels;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    menuItemModels = FlutterFlowDynamicModels(() => MenuItemModel());
  }

  void dispose() {
    unfocusNode.dispose();
    menuItemModels.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
