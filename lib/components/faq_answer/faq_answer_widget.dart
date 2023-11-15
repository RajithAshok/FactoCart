import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'faq_answer_model.dart';
export 'faq_answer_model.dart';

class FaqAnswerWidget extends StatefulWidget {
  const FaqAnswerWidget({
    Key? key,
    required this.faqref,
  }) : super(key: key);

  final DocumentReference? faqref;

  @override
  _FaqAnswerWidgetState createState() => _FaqAnswerWidgetState();
}

class _FaqAnswerWidgetState extends State<FaqAnswerWidget> {
  late FaqAnswerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FaqAnswerModel());

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

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        StreamBuilder<FaqRecord>(
          stream: FaqRecord.getDocument(widget.faqref!),
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
            final cardFaqRecord = snapshot.data!;
            return Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              color: FlutterFlowTheme.of(context).secondaryBackground,
              elevation: 4.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Container(
                width: double.infinity,
                height: 100.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          cardFaqRecord.question,
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                        Divider(
                          thickness: 1.0,
                          color: FlutterFlowTheme.of(context).lineColor,
                        ),
                        Text(
                          cardFaqRecord.answer,
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
