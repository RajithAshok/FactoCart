import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'bottom_navbar_component_model.dart';
export 'bottom_navbar_component_model.dart';

class BottomNavbarComponentWidget extends StatefulWidget {
  const BottomNavbarComponentWidget({
    Key? key,
    int? selectedPageIndex,
    bool? hidden,
  })  : this.selectedPageIndex = selectedPageIndex ?? 1,
        this.hidden = hidden ?? false,
        super(key: key);

  final int selectedPageIndex;
  final bool hidden;

  @override
  _BottomNavbarComponentWidgetState createState() =>
      _BottomNavbarComponentWidgetState();
}

class _BottomNavbarComponentWidgetState
    extends State<BottomNavbarComponentWidget> with TickerProviderStateMixin {
  late BottomNavbarComponentModel _model;

  final animationsMap = {
    'dividerOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 200.ms,
          begin: Offset(0.6, 1.0),
          end: Offset(1.0, 1.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 200.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'dividerOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 200.ms,
          begin: Offset(0.6, 1.0),
          end: Offset(1.0, 1.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 200.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'dividerOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 200.ms,
          begin: Offset(0.6, 1.0),
          end: Offset(1.0, 1.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 200.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'dividerOnPageLoadAnimation4': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 200.ms,
          begin: Offset(0.6, 1.0),
          end: Offset(1.0, 1.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 200.ms,
          begin: 0.0,
          end: 1.0,
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
    _model = createModel(context, () => BottomNavbarComponentModel());

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
      padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 16.0),
      child: Container(
        width: double.infinity,
        height: 70.0,
        decoration: BoxDecoration(
          color: Color(0xFF080087),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Opacity(
                  opacity: widget.selectedPageIndex == 1 ? 1.0 : 0.5,
                  child: FlutterFlowIconButton(
                    borderRadius: 30.0,
                    borderWidth: 0.0,
                    buttonSize: 50.0,
                    icon: Icon(
                      Icons.home_outlined,
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      size: 24.0,
                    ),
                    onPressed: () async {
                      context.goNamed(
                        'homepage',
                        extra: <String, dynamic>{
                          kTransitionInfoKey: TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.fade,
                            duration: Duration(milliseconds: 0),
                          ),
                        },
                      );
                    },
                  ),
                ),
                if (widget.selectedPageIndex == 1)
                  SizedBox(
                    width: 30.0,
                    child: Divider(
                      height: 2.0,
                      thickness: 2.0,
                      color: FlutterFlowTheme.of(context).lineColor,
                    ),
                  ).animateOnPageLoad(
                      animationsMap['dividerOnPageLoadAnimation1']!),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Opacity(
                  opacity: widget.selectedPageIndex == 2 ? 1.0 : 0.5,
                  child: FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 30.0,
                    borderWidth: 0.0,
                    buttonSize: 50.0,
                    icon: Icon(
                      Icons.apps,
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      size: 24.0,
                    ),
                    onPressed: () async {
                      context.goNamed(
                        'categories',
                        extra: <String, dynamic>{
                          kTransitionInfoKey: TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.fade,
                            duration: Duration(milliseconds: 0),
                          ),
                        },
                      );
                    },
                  ),
                ),
                if (widget.selectedPageIndex == 2)
                  SizedBox(
                    width: 30.0,
                    child: Divider(
                      height: 2.0,
                      thickness: 2.0,
                      color: FlutterFlowTheme.of(context).lineColor,
                    ),
                  ).animateOnPageLoad(
                      animationsMap['dividerOnPageLoadAnimation2']!),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Opacity(
                  opacity: widget.selectedPageIndex == 3 ? 1.0 : 0.5,
                  child: FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 30.0,
                    borderWidth: 0.0,
                    buttonSize: 50.0,
                    icon: Icon(
                      Icons.shopping_cart_outlined,
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      size: 24.0,
                    ),
                    onPressed: () async {
                      context.goNamed(
                        'shoppingCart',
                        extra: <String, dynamic>{
                          kTransitionInfoKey: TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.fade,
                            duration: Duration(milliseconds: 0),
                          ),
                        },
                      );
                    },
                  ),
                ),
                if (widget.selectedPageIndex == 3)
                  SizedBox(
                    width: 30.0,
                    child: Divider(
                      height: 2.0,
                      thickness: 2.0,
                      color: FlutterFlowTheme.of(context).lineColor,
                    ),
                  ).animateOnPageLoad(
                      animationsMap['dividerOnPageLoadAnimation3']!),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Opacity(
                  opacity: widget.selectedPageIndex == 4 ? 1.0 : 0.5,
                  child: FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 30.0,
                    borderWidth: 0.0,
                    buttonSize: 50.0,
                    icon: Icon(
                      Icons.person_outlined,
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      size: 24.0,
                    ),
                    onPressed: () async {
                      context.goNamed(
                        'profile',
                        extra: <String, dynamic>{
                          kTransitionInfoKey: TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.fade,
                            duration: Duration(milliseconds: 0),
                          ),
                        },
                      );
                    },
                  ),
                ),
                if (widget.selectedPageIndex == 4)
                  SizedBox(
                    width: 30.0,
                    child: Divider(
                      height: 2.0,
                      thickness: 2.0,
                      color: FlutterFlowTheme.of(context).lineColor,
                    ),
                  ).animateOnPageLoad(
                      animationsMap['dividerOnPageLoadAnimation4']!),
              ],
            ),
          ].divide(SizedBox(width: 16.0)).around(SizedBox(width: 16.0)),
        ),
      ),
    );
  }
}
