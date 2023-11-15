import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'checkout_copy_model.dart';
export 'checkout_copy_model.dart';

class CheckoutCopyWidget extends StatefulWidget {
  const CheckoutCopyWidget({
    Key? key,
    required this.vendorName,
    required this.proref,
  }) : super(key: key);

  final String? vendorName;
  final List<DocumentReference>? proref;

  @override
  _CheckoutCopyWidgetState createState() => _CheckoutCopyWidgetState();
}

class _CheckoutCopyWidgetState extends State<CheckoutCopyWidget> {
  late CheckoutCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CheckoutCopyModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        top: true,
        child: Align(
          alignment: AlignmentDirectional(0.00, -1.00),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30.0,
                      borderWidth: 1.0,
                      buttonSize: 60.0,
                      icon: Icon(
                        Icons.arrow_back_rounded,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 30.0,
                      ),
                      onPressed: () async {
                        context.pop();
                      },
                    ),
                    Text(
                      'Checkout',
                      style: FlutterFlowTheme.of(context).headlineLarge,
                    ),
                  ],
                ),
                Align(
                  alignment: AlignmentDirectional(0.00, 0.00),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
                    child: Container(
                      constraints: BoxConstraints(
                        maxWidth: 770.0,
                      ),
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4.0,
                            color: Color(0x33000000),
                            offset: Offset(0.0, 2.0),
                          )
                        ],
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 16.0, 16.0, 16.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Your Cart',
                              style: FlutterFlowTheme.of(context).titleLarge,
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 4.0, 0.0, 12.0),
                              child: Text(
                                'Below is the list of items in your cart.',
                                style: FlutterFlowTheme.of(context).labelMedium,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 12.0),
                              child: Builder(
                                builder: (context) {
                                  final items = FFAppState()
                                      .cartitem
                                      .where((e) =>
                                          e.userref?.id ==
                                          currentUserReference?.id)
                                      .toList();
                                  return ListView.builder(
                                    padding: EdgeInsets.zero,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    itemCount: items.length,
                                    itemBuilder: (context, itemsIndex) {
                                      final itemsItem = items[itemsIndex];
                                      return Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 12.0),
                                        child: StreamBuilder<ProductRecord>(
                                          stream: ProductRecord.getDocument(
                                              itemsItem.proref!),
                                          builder: (context, snapshot) {
                                            // Customize what your widget looks like when it's loading.
                                            if (!snapshot.hasData) {
                                              return Center(
                                                child: SizedBox(
                                                  width: 50.0,
                                                  height: 50.0,
                                                  child:
                                                      CircularProgressIndicator(
                                                    valueColor:
                                                        AlwaysStoppedAnimation<
                                                            Color>(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .lineColor,
                                                    ),
                                                  ),
                                                ),
                                              );
                                            }
                                            final menuItemProductRecord =
                                                snapshot.data!;
                                            return Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  1.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 0.0,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                    offset: Offset(0.0, 1.0),
                                                  )
                                                ],
                                                borderRadius:
                                                    BorderRadius.circular(0.0),
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 4.0,
                                                                0.0, 12.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      1.0,
                                                                      1.0,
                                                                      1.0),
                                                          child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12.0),
                                                            child:
                                                                Image.network(
                                                              menuItemProductRecord
                                                                  .image,
                                                              width: 70.0,
                                                              height: 70.0,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          flex: 3,
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8.0,
                                                                        0.0,
                                                                        4.0,
                                                                        0.0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  menuItemProductRecord
                                                                      .name,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleLarge,
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      8.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Text(
                                                            formatNumber(
                                                              menuItemProductRecord
                                                                  .price,
                                                              formatType:
                                                                  FormatType
                                                                      .decimal,
                                                              decimalType:
                                                                  DecimalType
                                                                      .automatic,
                                                              currency: '₹',
                                                            ),
                                                            textAlign:
                                                                TextAlign.end,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .titleLarge,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 12.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Text(
                                                              'Quantity: ',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .labelMedium,
                                                            ),
                                                            Text(
                                                              itemsItem.quantity
                                                                  .toString(),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .labelMedium,
                                                            ),
                                                          ],
                                                        ),
                                                        InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            setState(() {
                                                              FFAppState()
                                                                  .removeFromCartitem(
                                                                      ShoppingCartStruct(
                                                                proref:
                                                                    itemsItem
                                                                        .proref,
                                                                quantity:
                                                                    itemsItem
                                                                        .quantity,
                                                                userref:
                                                                    itemsItem
                                                                        .userref,
                                                                totalPrice:
                                                                    itemsItem
                                                                        .totalPrice,
                                                                vendorsname:
                                                                    itemsItem
                                                                        .vendorsname,
                                                              ));
                                                              FFAppState()
                                                                  .removeFromCartsum2(
                                                                      SumRefStruct(
                                                                totalPrice:
                                                                    itemsItem
                                                                        .totalPrice,
                                                                userref:
                                                                    itemsItem
                                                                        .userref,
                                                              ));
                                                            });
                                                          },
                                                          child: Icon(
                                                            Icons
                                                                .delete_outline,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            size: 24.0,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 16.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Text(
                                                          'Total Price: ',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .titleLarge,
                                                        ),
                                                        Text(
                                                          formatNumber(
                                                            itemsItem
                                                                .totalPrice,
                                                            formatType:
                                                                FormatType
                                                                    .decimal,
                                                            decimalType:
                                                                DecimalType
                                                                    .automatic,
                                                            currency: '₹',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .titleLarge,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            );
                                          },
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 12.0, 0.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Order Summary',
                                    style:
                                        FlutterFlowTheme.of(context).titleLarge,
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 4.0, 0.0, 0.0),
                                    child: Text(
                                      'Below is a list of your items.',
                                      style: FlutterFlowTheme.of(context)
                                          .labelMedium,
                                    ),
                                  ),
                                  Divider(
                                    height: 32.0,
                                    thickness: 2.0,
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 8.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 8.0, 0.0, 8.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    'Total',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleMedium
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          fontSize: 20.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                  ),
                                                  FlutterFlowIconButton(
                                                    borderColor:
                                                        Colors.transparent,
                                                    borderRadius: 30.0,
                                                    borderWidth: 1.0,
                                                    buttonSize: 36.0,
                                                    icon: Icon(
                                                      Icons.info_outlined,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 18.0,
                                                    ),
                                                    onPressed: () async {
                                                      await showDialog(
                                                        context: context,
                                                        builder:
                                                            (alertDialogContext) {
                                                          return AlertDialog(
                                                            title: Text('info'),
                                                            content: Text(
                                                                'The total bill amount'),
                                                            actions: [
                                                              TextButton(
                                                                onPressed: () =>
                                                                    Navigator.pop(
                                                                        alertDialogContext),
                                                                child:
                                                                    Text('Ok'),
                                                              ),
                                                            ],
                                                          );
                                                        },
                                                      );
                                                    },
                                                  ),
                                                ],
                                              ),
                                              Text(
                                                formatNumber(
                                                  functions.priceSummary(
                                                      FFAppState()
                                                          .cartsum2
                                                          .where((e) =>
                                                              e.userref?.id ==
                                                              currentUserReference
                                                                  ?.id)
                                                          .toList()
                                                          .map((e) =>
                                                              e.totalPrice)
                                                          .toList()),
                                                  formatType:
                                                      FormatType.decimal,
                                                  decimalType:
                                                      DecimalType.automatic,
                                                  currency: '₹',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .displaySmall,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 16.0),
                                    child: FFButtonWidget(
                                      onPressed: () {
                                        print('Button pressed ...');
                                      },
                                      text: 'Continue to Payment',
                                      options: FFButtonOptions(
                                        width: double.infinity,
                                        height: 50.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall,
                                        elevation: 2.0,
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(50.0),
                                        hoverColor: FlutterFlowTheme.of(context)
                                            .accent1,
                                        hoverBorderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 1.0,
                                        ),
                                        hoverTextColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
