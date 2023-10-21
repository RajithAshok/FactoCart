import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/dropdown_menu/dropdown_menu_widget.dart';
import '/components/navbars/vendor_bottom_navbar_component/vendor_bottom_navbar_component_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'orderhistory_model.dart';
export 'orderhistory_model.dart';

class OrderhistoryWidget extends StatefulWidget {
  const OrderhistoryWidget({Key? key}) : super(key: key);

  @override
  _OrderhistoryWidgetState createState() => _OrderhistoryWidgetState();
}

class _OrderhistoryWidgetState extends State<OrderhistoryWidget> {
  late OrderhistoryModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OrderhistoryModel());

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

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 100.0),
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            constraints: BoxConstraints(
                              maxWidth: 1170.0,
                            ),
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              shape: BoxShape.rectangle,
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 16.0, 16.0, 0.0),
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 16.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Vendor Dashboard',
                                            style: FlutterFlowTheme.of(context)
                                                .displaySmall,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Text(
                                      'Order History',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            fontSize: 34.0,
                                          ),
                                    ),
                                    Text(
                                      'Pending Orders',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                    ),
                                    AuthUserStreamWidget(
                                      builder: (context) =>
                                          StreamBuilder<List<OrdersRecord>>(
                                        stream: queryOrdersRecord(
                                          queryBuilder: (ordersRecord) =>
                                              ordersRecord
                                                  .where(
                                                    'vendor_name',
                                                    isEqualTo:
                                                        currentUserDisplayName,
                                                  )
                                                  .orderBy('created_at',
                                                      descending: true),
                                        ),
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
                                                    FlutterFlowTheme.of(context)
                                                        .lineColor,
                                                  ),
                                                ),
                                              ),
                                            );
                                          }
                                          List<OrdersRecord>
                                              listViewOrdersRecordList =
                                              snapshot.data!;
                                          return ListView.separated(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 16.0),
                                            shrinkWrap: true,
                                            scrollDirection: Axis.vertical,
                                            itemCount:
                                                listViewOrdersRecordList.length,
                                            separatorBuilder: (_, __) =>
                                                SizedBox(height: 16.0),
                                            itemBuilder:
                                                (context, listViewIndex) {
                                              final listViewOrdersRecord =
                                                  listViewOrdersRecordList[
                                                      listViewIndex];
                                              return Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 12.0),
                                                child: Container(
                                                  width: double.infinity,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                12.0,
                                                                12.0,
                                                                12.0,
                                                                12.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Expanded(
                                                              child: Text(
                                                                listViewOrdersRecord
                                                                    .name,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineMedium,
                                                              ),
                                                            ),
                                                            Text(
                                                              listViewOrdersRecord
                                                                  .amount
                                                                  .toString(),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .headlineSmall,
                                                            ),
                                                            Builder(
                                                              builder:
                                                                  (context) =>
                                                                      Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            16.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                child:
                                                                    FlutterFlowIconButton(
                                                                  borderColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .alternate,
                                                                  borderRadius:
                                                                      20.0,
                                                                  borderWidth:
                                                                      1.0,
                                                                  buttonSize:
                                                                      40.0,
                                                                  fillColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  hoverColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .alternate,
                                                                  hoverIconColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                  icon: Icon(
                                                                    Icons
                                                                        .more_vert,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    size: 24.0,
                                                                  ),
                                                                  onPressed:
                                                                      () async {
                                                                    await showAlignedDialog(
                                                                      barrierColor:
                                                                          Colors
                                                                              .transparent,
                                                                      context:
                                                                          context,
                                                                      isGlobal:
                                                                          false,
                                                                      avoidOverflow:
                                                                          true,
                                                                      targetAnchor: AlignmentDirectional(
                                                                              -1.0,
                                                                              1.0)
                                                                          .resolve(
                                                                              Directionality.of(context)),
                                                                      followerAnchor: AlignmentDirectional(
                                                                              -1.0,
                                                                              -1.0)
                                                                          .resolve(
                                                                              Directionality.of(context)),
                                                                      builder:
                                                                          (dialogContext) {
                                                                        return Material(
                                                                          color:
                                                                              Colors.transparent,
                                                                          child:
                                                                              GestureDetector(
                                                                            onTap: () => _model.unfocusNode.canRequestFocus
                                                                                ? FocusScope.of(context).requestFocus(_model.unfocusNode)
                                                                                : FocusScope.of(context).unfocus(),
                                                                            child:
                                                                                DropdownMenuWidget(
                                                                              orderRef: listViewOrdersRecord,
                                                                            ),
                                                                          ),
                                                                        );
                                                                      },
                                                                    ).then((value) =>
                                                                        setState(
                                                                            () {}));
                                                                  },
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      4.0,
                                                                      0.0,
                                                                      8.0),
                                                          child: Text(
                                                            'Ordered on: ${dateTimeFormat('MMMEd', listViewOrdersRecord.createdAt)}',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .labelMedium,
                                                          ),
                                                        ),
                                                        Divider(
                                                          thickness: 1.0,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .alternate,
                                                        ),
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          4.0,
                                                                          0.0,
                                                                          8.0),
                                                              child: Text(
                                                                'Number of Items: ${listViewOrdersRecord.itemsordered.length.toString()}',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium,
                                                              ),
                                                            ),
                                                            Container(
                                                              height: 32.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: () {
                                                                  if (listViewOrdersRecord
                                                                          .status ==
                                                                      'Pending') {
                                                                    return FlutterFlowTheme.of(
                                                                            context)
                                                                        .accent3;
                                                                  } else if (listViewOrdersRecord
                                                                          .status ==
                                                                      'Accepted') {
                                                                    return FlutterFlowTheme.of(
                                                                            context)
                                                                        .accent2;
                                                                  } else {
                                                                    return FlutterFlowTheme.of(
                                                                            context)
                                                                        .accent1;
                                                                  }
                                                                }(),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                                border:
                                                                    Border.all(
                                                                  color: () {
                                                                    if (listViewOrdersRecord
                                                                            .status ==
                                                                        'Pending') {
                                                                      return FlutterFlowTheme.of(
                                                                              context)
                                                                          .tertiary;
                                                                    } else if (listViewOrdersRecord
                                                                            .status ==
                                                                        'Accepted') {
                                                                      return FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondary;
                                                                    } else {
                                                                      return FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary;
                                                                    }
                                                                  }(),
                                                                  width: 2.0,
                                                                ),
                                                              ),
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0.00,
                                                                      0.00),
                                                              child: Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        0.0,
                                                                        16.0,
                                                                        0.0),
                                                                child: Text(
                                                                  listViewOrdersRecord
                                                                      .status,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Readex Pro',
                                                                        color:
                                                                            () {
                                                                          if (listViewOrdersRecord.status ==
                                                                              'Pending') {
                                                                            return FlutterFlowTheme.of(context).tertiary;
                                                                          } else if (listViewOrdersRecord.status ==
                                                                              'Accepted') {
                                                                            return FlutterFlowTheme.of(context).secondary;
                                                                          } else {
                                                                            return FlutterFlowTheme.of(context).primary;
                                                                          }
                                                                        }(),
                                                                        fontWeight:
                                                                            FontWeight.w500,
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
                                              );
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.00, 1.00),
                  child: wrapWithModel(
                    model: _model.vendorBottomNavbarComponentModel,
                    updateCallback: () => setState(() {}),
                    child: VendorBottomNavbarComponentWidget(
                      selectedPageIndex: 7,
                      hidden: false,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
