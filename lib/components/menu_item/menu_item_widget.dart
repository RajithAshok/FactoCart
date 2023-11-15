import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'menu_item_model.dart';
export 'menu_item_model.dart';

class MenuItemWidget extends StatefulWidget {
  const MenuItemWidget({
    Key? key,
    required this.item,
  }) : super(key: key);

  final ShoppingCartStruct? item;

  @override
  _MenuItemWidgetState createState() => _MenuItemWidgetState();
}

class _MenuItemWidgetState extends State<MenuItemWidget>
    with TickerProviderStateMixin {
  late MenuItemModel _model;

  final animationsMap = {
    'radioButtonOnActionTriggerAnimation': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 1.0,
          end: 0.0,
        ),
      ],
    ),
  };

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MenuItemModel());

    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

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

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
      child: StreamBuilder<ProductRecord>(
        stream: ProductRecord.getDocument(widget.item!.proref!),
        builder: (context, snapshot) {
          // Customize what your widget looks like when it's loading.
          if (!snapshot.hasData) {
            return Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).lineColor,
                  ),
                ),
              ),
            );
          }
          final menuItemProductRecord = snapshot.data!;
          return Container(
            width: MediaQuery.sizeOf(context).width * 1.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              boxShadow: [
                BoxShadow(
                  blurRadius: 0.0,
                  color: FlutterFlowTheme.of(context).alternate,
                  offset: Offset(0.0, 1.0),
                )
              ],
              borderRadius: BorderRadius.circular(0.0),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 12.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 1.0, 1.0, 1.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12.0),
                          child: Image.network(
                            menuItemProductRecord.image,
                            width: 70.0,
                            height: 70.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              8.0, 0.0, 4.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                menuItemProductRecord.name,
                                style: FlutterFlowTheme.of(context).titleLarge,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                        child: Text(
                          formatNumber(
                            menuItemProductRecord.price,
                            formatType: FormatType.decimal,
                            decimalType: DecimalType.automatic,
                            currency: '₹',
                          ),
                          textAlign: TextAlign.end,
                          style: FlutterFlowTheme.of(context).titleLarge,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 12.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    'Quantity: ',
                                    style: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                  ),
                                  Text(
                                    valueOrDefault<String>(
                                      widget.item?.quantity?.toString(),
                                      '-',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                  ),
                                ],
                              ),
                              if (responsiveVisibility(
                                context: context,
                                phone: false,
                                tablet: false,
                                tabletLandscape: false,
                                desktop: false,
                              ))
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    setState(() {
                                      FFAppState().removeFromCartitem(
                                          ShoppingCartStruct(
                                        proref: widget.item?.proref,
                                        quantity: widget.item?.quantity,
                                        userref: widget.item?.userref,
                                        totalPrice: widget.item?.totalPrice,
                                        vendorsname: widget.item?.vendorsname,
                                      ));
                                      FFAppState()
                                          .removeFromCartsum2(SumRefStruct(
                                        totalPrice: widget.item?.totalPrice,
                                        userref: widget.item?.userref,
                                      ));
                                    });
                                    if ((widget.item?.proref?.id != null &&
                                            widget.item?.proref?.id != '') &&
                                        (widget.item?.userref?.id ==
                                            currentUserReference?.id)) {
                                      // RmFromPostCheck
                                      setState(() {
                                        FFAppState().removeFromPostCheck(
                                            ShoppingCartStruct(
                                          proref: widget.item?.proref,
                                          quantity: widget.item?.quantity,
                                          userref: widget.item?.userref,
                                          totalPrice: widget.item?.totalPrice,
                                          vendorsname: widget.item?.vendorsname,
                                        ));
                                      });
                                    }
                                  },
                                  child: Icon(
                                    Icons.delete_outline,
                                    color: FlutterFlowTheme.of(context).error,
                                    size: 24.0,
                                  ),
                                ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 16.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    'Total Price: ',
                                    style:
                                        FlutterFlowTheme.of(context).titleLarge,
                                  ),
                                  Text(
                                    formatNumber(
                                      widget.item!.totalPrice,
                                      formatType: FormatType.decimal,
                                      decimalType: DecimalType.automatic,
                                      currency: '₹',
                                    ),
                                    style:
                                        FlutterFlowTheme.of(context).titleLarge,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    FlutterFlowRadioButton(
                      options: ['Buy', 'Delete'].toList(),
                      onChanged: (val) async {
                        setState(() {});
                        if (_model.radioButtonValue == 'Buy') {
                          // AddToPostCheck
                          setState(() {
                            FFAppState().addToPostCheck(ShoppingCartStruct(
                              proref: widget.item?.proref,
                              quantity: widget.item?.quantity,
                              userref: widget.item?.userref,
                              totalPrice: widget.item?.totalPrice,
                              vendorsname: widget.item?.vendorsname,
                              createdAt: getCurrentTimestamp,
                              userAddress: widget.item?.userAddress,
                            ));
                          });
                          if (animationsMap[
                                  'radioButtonOnActionTriggerAnimation'] !=
                              null) {
                            await animationsMap[
                                    'radioButtonOnActionTriggerAnimation']!
                                .controller
                                .forward(from: 0.0);
                          }
                        } else {
                          setState(() {
                            FFAppState().removeFromCartitem(ShoppingCartStruct(
                              proref: widget.item?.proref,
                              quantity: widget.item?.quantity,
                              userref: widget.item?.userref,
                              totalPrice: widget.item?.totalPrice,
                              vendorsname: widget.item?.vendorsname,
                            ));
                            FFAppState().removeFromCartsum2(SumRefStruct(
                              totalPrice: widget.item?.totalPrice,
                              userref: widget.item?.userref,
                            ));
                          });
                          if (animationsMap[
                                  'radioButtonOnActionTriggerAnimation'] !=
                              null) {
                            await animationsMap[
                                    'radioButtonOnActionTriggerAnimation']!
                                .controller
                                .forward(from: 0.0);
                          }
                        }
                      },
                      controller: _model.radioButtonValueController ??=
                          FormFieldController<String>(null),
                      optionHeight: 32.0,
                      textStyle: FlutterFlowTheme.of(context).labelMedium,
                      selectedTextStyle:
                          FlutterFlowTheme.of(context).bodyMedium,
                      buttonPosition: RadioButtonPosition.left,
                      direction: Axis.vertical,
                      radioButtonColor: FlutterFlowTheme.of(context).primary,
                      inactiveRadioButtonColor:
                          FlutterFlowTheme.of(context).secondaryText,
                      toggleable: false,
                      horizontalAlignment: WrapAlignment.start,
                      verticalAlignment: WrapCrossAlignment.start,
                    ).animateOnActionTrigger(
                      animationsMap['radioButtonOnActionTriggerAnimation']!,
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
