import '/backend/backend.dart';
import '/components/faq_answer/faq_answer_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'faq_page_model.dart';
export 'faq_page_model.dart';

class FaqPageWidget extends StatefulWidget {
  const FaqPageWidget({Key? key}) : super(key: key);

  @override
  _FaqPageWidgetState createState() => _FaqPageWidgetState();
}

class _FaqPageWidgetState extends State<FaqPageWidget> {
  late FaqPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FaqPageModel());

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
        backgroundColor: Color(0xFFF1F4F8),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30.0,
                      buttonSize: 60.0,
                      icon: Icon(
                        Icons.arrow_back_rounded,
                        color: Color(0xFF101213),
                        size: 30.0,
                      ),
                      onPressed: () async {
                        context.safePop();
                      },
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                      child: Text(
                        'FAQs',
                        style: FlutterFlowTheme.of(context)
                            .headlineMedium
                            .override(
                              fontFamily: 'Urbanist',
                              color: Color(0xFF101213),
                              fontSize: 28.0,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),
                  ],
                ),
                SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      StreamBuilder<List<FaqRecord>>(
                        stream: queryFaqRecord(),
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
                          List<FaqRecord> listViewFaqRecordList =
                              snapshot.data!;
                          return ListView.separated(
                            padding: EdgeInsets.symmetric(vertical: 16.0),
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: listViewFaqRecordList.length,
                            separatorBuilder: (_, __) => SizedBox(height: 16.0),
                            itemBuilder: (context, listViewIndex) {
                              final listViewFaqRecord =
                                  listViewFaqRecordList[listViewIndex];
                              return Builder(
                                builder: (context) => InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    await showAlignedDialog(
                                      context: context,
                                      isGlobal: true,
                                      avoidOverflow: false,
                                      targetAnchor: AlignmentDirectional(
                                              0.0, 1.0)
                                          .resolve(Directionality.of(context)),
                                      followerAnchor: AlignmentDirectional(
                                              0.0, 0.0)
                                          .resolve(Directionality.of(context)),
                                      builder: (dialogContext) {
                                        return Material(
                                          color: Colors.transparent,
                                          child: GestureDetector(
                                            onTap: () => _model
                                                    .unfocusNode.canRequestFocus
                                                ? FocusScope.of(context)
                                                    .requestFocus(
                                                        _model.unfocusNode)
                                                : FocusScope.of(context)
                                                    .unfocus(),
                                            child: Container(
                                              height: 100.0,
                                              width: double.infinity,
                                              child: FaqAnswerWidget(
                                                faqref:
                                                    listViewFaqRecord.reference,
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ).then((value) => setState(() {}));
                                  },
                                  child: ListTile(
                                    title: Text(
                                      listViewFaqRecord.question,
                                      style: FlutterFlowTheme.of(context)
                                          .titleLarge,
                                    ),
                                    trailing: Icon(
                                      Icons.add,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 20.0,
                                    ),
                                    tileColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    dense: false,
                                    contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            10.0, 10.0, 10.0, 10.0),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16.0),
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ],
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
