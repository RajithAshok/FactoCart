import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/add_bottom_sheet/add_bottom_sheet_widget.dart';
import '/components/navbars/bottom_navbar_component/bottom_navbar_component_widget.dart';
import '/components/navbars/top_nav_customer_component/top_nav_customer_component_widget.dart';
import '/components/rating_bar/rating_bar_widget.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import '/flutter_flow/custom_functions.dart' as functions;
import 'offerspage_widget.dart' show OfferspageWidget;
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';

class OfferspageModel extends FlutterFlowModel<OfferspageWidget> {
  ///  Local state fields for this page.

  bool searchBool = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for inputsearch widget.
  final inputsearchKey = GlobalKey();
  FocusNode? inputsearchFocusNode;
  TextEditingController? inputsearchController;
  String? inputsearchSelectedOption;
  String? Function(BuildContext, String?)? inputsearchControllerValidator;
  List<ProductRecord> simpleSearchResults = [];
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
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
    inputsearchFocusNode?.dispose();

    bottomNavbarComponentModel.dispose();
    topNavCustomerComponentModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
