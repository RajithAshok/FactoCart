import '/auth/firebase_auth/auth_util.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'add_bottom_sheet_model.dart';
export 'add_bottom_sheet_model.dart';

class AddBottomSheetWidget extends StatefulWidget {
  const AddBottomSheetWidget({
    Key? key,
    this.proref,
    this.price,
    this.name,
  }) : super(key: key);

  final DocumentReference? proref;
  final double? price;
  final String? name;

  @override
  _AddBottomSheetWidgetState createState() => _AddBottomSheetWidgetState();
}

class _AddBottomSheetWidgetState extends State<AddBottomSheetWidget> {
  late AddBottomSheetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddBottomSheetModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      height: 250.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 24.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                FlutterFlowIconButton(
                  borderRadius: 20.0,
                  buttonSize: 40.0,
                  icon: Icon(
                    Icons.arrow_back_sharp,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 24.0,
                  ),
                  onPressed: () async {
                    context.safePop();
                  },
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                  child: Text(
                    'Add to cart',
                    style: FlutterFlowTheme.of(context).headlineSmall,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 0.0, 8.0),
              child: Text(
                'Select the desired quantity',
                style: FlutterFlowTheme.of(context).bodySmall,
              ),
            ),
            Container(
              width: double.infinity,
              height: 60.0,
              decoration: BoxDecoration(),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12.0, 8.0, 12.0, 8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Quantity: ',
                      style: FlutterFlowTheme.of(context).titleSmall.override(
                            fontFamily: 'Readex Pro',
                            color: FlutterFlowTheme.of(context).primaryText,
                          ),
                    ),
                    Container(
                      width: 160.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(8.0),
                        shape: BoxShape.rectangle,
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).alternate,
                          width: 2.0,
                        ),
                      ),
                      child: FlutterFlowCountController(
                        decrementIconBuilder: (enabled) => FaIcon(
                          FontAwesomeIcons.minus,
                          color: enabled
                              ? FlutterFlowTheme.of(context).secondaryText
                              : FlutterFlowTheme.of(context).alternate,
                          size: 20.0,
                        ),
                        incrementIconBuilder: (enabled) => FaIcon(
                          FontAwesomeIcons.plus,
                          color: enabled
                              ? FlutterFlowTheme.of(context).primary
                              : FlutterFlowTheme.of(context).alternate,
                          size: 20.0,
                        ),
                        countBuilder: (count) => Text(
                          count.toString(),
                          style: FlutterFlowTheme.of(context).titleLarge,
                        ),
                        count: _model.countControllerValue ??= 0,
                        updateCount: (count) =>
                            setState(() => _model.countControllerValue = count),
                        stepSize: 1,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
              child: Container(
                width: double.infinity,
                height: 60.0,
                decoration: BoxDecoration(),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(12.0, 8.0, 12.0, 8.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FFButtonWidget(
                        onPressed: () async {
                          setState(() {
                            FFAppState().addToCartitem(ShoppingCartStruct(
                              proref: widget.proref,
                              quantity: _model.countControllerValue,
                              userref: currentUserReference,
                              totalPrice:
                                  widget.price! * _model.countControllerValue!,
                              items: ItemDeetsStruct(
                                proref: widget.proref,
                                quantity: _model.countControllerValue,
                              ),
                            ));
                            FFAppState().addToCartsum2(SumRefStruct(
                              totalPrice:
                                  widget.price! * _model.countControllerValue!,
                              userref: currentUserReference,
                            ));
                          });
                          await showDialog(
                            context: context,
                            builder: (alertDialogContext) {
                              return AlertDialog(
                                title: Text('Item Added'),
                                content: Text(
                                    '${widget.name} Has been added to your cart.'),
                                actions: [
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(alertDialogContext),
                                    child: Text('Ok'),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        text: 'Add',
                        options: FFButtonOptions(
                          height: 40.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primary,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                  ),
                          elevation: 3.0,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
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
    );
  }
}
