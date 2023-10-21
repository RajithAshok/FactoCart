import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'create_profile_vendor_model.dart';
export 'create_profile_vendor_model.dart';

class CreateProfileVendorWidget extends StatefulWidget {
  const CreateProfileVendorWidget({Key? key}) : super(key: key);

  @override
  _CreateProfileVendorWidgetState createState() =>
      _CreateProfileVendorWidgetState();
}

class _CreateProfileVendorWidgetState extends State<CreateProfileVendorWidget> {
  late CreateProfileVendorModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreateProfileVendorModel());

    _model.shopNameController ??= TextEditingController();
    _model.shopNameFocusNode ??= FocusNode();
    _model.phoneNumberController ??= TextEditingController();
    _model.phoneNumberFocusNode ??= FocusNode();
    _model.shopAddressController ??= TextEditingController();
    _model.shopAddressFocusNode ??= FocusNode();
    _model.gstInNumberController ??= TextEditingController();
    _model.gstInNumberFocusNode ??= FocusNode();
    _model.panCardNumberController ??= TextEditingController();
    _model.panCardNumberFocusNode ??= FocusNode();
    _model.bankAccNumberController ??= TextEditingController();
    _model.bankAccNumberFocusNode ??= FocusNode();
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
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 16.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 14.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 8.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 0.0, 0.0),
                                child: FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 30.0,
                                  borderWidth: 1.0,
                                  buttonSize: 50.0,
                                  icon: Icon(
                                    Icons.arrow_back_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 30.0,
                                  ),
                                  onPressed: () async {
                                    context.pop();
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 0.0, 0.0),
                          child: Text(
                            'Create your Shop Profile',
                            style: FlutterFlowTheme.of(context)
                                .headlineMedium
                                .override(
                                  fontFamily: 'Urbanist',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontSize: 22.0,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Stack(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          children: [
                            if (_model.uploadedFileUrl != null &&
                                _model.uploadedFileUrl != '')
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    2.0, 2.0, 2.0, 2.0),
                                child: Container(
                                  width: 90.0,
                                  height: 90.0,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: CachedNetworkImage(
                                    fadeInDuration: Duration(milliseconds: 500),
                                    fadeOutDuration:
                                        Duration(milliseconds: 500),
                                    imageUrl: _model.uploadedFileUrl,
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                              ),
                            if (_model.uploadedFileUrl == null ||
                                _model.uploadedFileUrl == '')
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  final selectedMedia =
                                      await selectMediaWithSourceBottomSheet(
                                    context: context,
                                    maxWidth: 1000.00,
                                    maxHeight: 1000.00,
                                    imageQuality: 70,
                                    allowPhoto: true,
                                    backgroundColor:
                                        FlutterFlowTheme.of(context)
                                            .backgroundComponents,
                                    textColor:
                                        FlutterFlowTheme.of(context).lineColor,
                                  );
                                  if (selectedMedia != null &&
                                      selectedMedia.every((m) =>
                                          validateFileFormat(
                                              m.storagePath, context))) {
                                    setState(
                                        () => _model.isDataUploading = true);
                                    var selectedUploadedFiles =
                                        <FFUploadedFile>[];

                                    var downloadUrls = <String>[];
                                    try {
                                      selectedUploadedFiles = selectedMedia
                                          .map((m) => FFUploadedFile(
                                                name: m.storagePath
                                                    .split('/')
                                                    .last,
                                                bytes: m.bytes,
                                                height: m.dimensions?.height,
                                                width: m.dimensions?.width,
                                                blurHash: m.blurHash,
                                              ))
                                          .toList();

                                      downloadUrls = (await Future.wait(
                                        selectedMedia.map(
                                          (m) async => await uploadData(
                                              m.storagePath, m.bytes),
                                        ),
                                      ))
                                          .where((u) => u != null)
                                          .map((u) => u!)
                                          .toList();
                                    } finally {
                                      _model.isDataUploading = false;
                                    }
                                    if (selectedUploadedFiles.length ==
                                            selectedMedia.length &&
                                        downloadUrls.length ==
                                            selectedMedia.length) {
                                      setState(() {
                                        _model.uploadedLocalFile =
                                            selectedUploadedFiles.first;
                                        _model.uploadedFileUrl =
                                            downloadUrls.first;
                                      });
                                    } else {
                                      setState(() {});
                                      return;
                                    }
                                  }
                                },
                                child: Container(
                                  width: 100.0,
                                  height: 100.0,
                                  decoration: BoxDecoration(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: Image.network(
                                        'https://as2.ftcdn.net/v2/jpg/04/10/43/77/1000_F_410437733_hdq4Q3QOH9uwh0mcqAhRFzOKfrCR24Ta.jpg',
                                      ).image,
                                    ),
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 16.0),
                    child: TextFormField(
                      controller: _model.shopNameController,
                      focusNode: _model.shopNameFocusNode,
                      textCapitalization: TextCapitalization.words,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Shop Name',
                        labelStyle: FlutterFlowTheme.of(context).labelMedium,
                        hintStyle: FlutterFlowTheme.of(context).labelMedium,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).alternate,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).primary,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        filled: true,
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        contentPadding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 24.0, 0.0, 24.0),
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium,
                      validator: _model.shopNameControllerValidator
                          .asValidator(context),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 16.0),
                    child: TextFormField(
                      controller: _model.phoneNumberController,
                      focusNode: _model.phoneNumberFocusNode,
                      textCapitalization: TextCapitalization.words,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Phone Number',
                        labelStyle: FlutterFlowTheme.of(context).labelMedium,
                        hintStyle: FlutterFlowTheme.of(context).labelMedium,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).alternate,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).primary,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        filled: true,
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        contentPadding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 24.0, 0.0, 24.0),
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium,
                      validator: _model.phoneNumberControllerValidator
                          .asValidator(context),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 16.0),
                    child: TextFormField(
                      controller: _model.shopAddressController,
                      focusNode: _model.shopAddressFocusNode,
                      textCapitalization: TextCapitalization.words,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Shop Address',
                        labelStyle: FlutterFlowTheme.of(context).labelMedium,
                        hintStyle: FlutterFlowTheme.of(context).labelMedium,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).alternate,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).primary,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        filled: true,
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        contentPadding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 24.0, 0.0, 24.0),
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium,
                      validator: _model.shopAddressControllerValidator
                          .asValidator(context),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 16.0),
                    child: TextFormField(
                      controller: _model.gstInNumberController,
                      focusNode: _model.gstInNumberFocusNode,
                      textCapitalization: TextCapitalization.words,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'GST Number',
                        labelStyle: FlutterFlowTheme.of(context).labelMedium,
                        hintStyle: FlutterFlowTheme.of(context).labelMedium,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).alternate,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).primary,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        filled: true,
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        contentPadding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 24.0, 0.0, 24.0),
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium,
                      validator: _model.gstInNumberControllerValidator
                          .asValidator(context),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 16.0),
                    child: TextFormField(
                      controller: _model.panCardNumberController,
                      focusNode: _model.panCardNumberFocusNode,
                      textCapitalization: TextCapitalization.words,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Pan Card Number',
                        labelStyle: FlutterFlowTheme.of(context).labelMedium,
                        hintStyle: FlutterFlowTheme.of(context).labelMedium,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).alternate,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).primary,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        filled: true,
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        contentPadding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 24.0, 0.0, 24.0),
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium,
                      validator: _model.panCardNumberControllerValidator
                          .asValidator(context),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 16.0),
                    child: TextFormField(
                      controller: _model.bankAccNumberController,
                      focusNode: _model.bankAccNumberFocusNode,
                      textCapitalization: TextCapitalization.words,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Bank Account Number',
                        labelStyle: FlutterFlowTheme.of(context).labelMedium,
                        hintStyle: FlutterFlowTheme.of(context).labelMedium,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).alternate,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).primary,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        filled: true,
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        contentPadding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 24.0, 0.0, 24.0),
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium,
                      validator: _model.bankAccNumberControllerValidator
                          .asValidator(context),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.00, 0.05),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          await currentUserReference!
                              .update(createUserRecordData(
                            displayName: _model.shopNameController.text,
                            photoUrl: _model.uploadedFileUrl,
                            phoneNumber: _model.phoneNumberController.text,
                            shopAddr: _model.shopAddressController.text,
                            gstIn: _model.gstInNumberController.text,
                            panCard: _model.panCardNumberController.text,
                            bankAcc: int.tryParse(
                                _model.bankAccNumberController.text),
                          ));

                          context.pushNamed(
                            'vendorHomepage',
                            extra: <String, dynamic>{
                              kTransitionInfoKey: TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.scale,
                                alignment: Alignment.bottomCenter,
                                duration: Duration(milliseconds: 500),
                              ),
                            },
                          );
                        },
                        text: 'Save Changes',
                        options: FFButtonOptions(
                          width: 270.0,
                          height: 50.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primary,
                          textStyle:
                              FlutterFlowTheme.of(context).titleMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                  ),
                          elevation: 2.0,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
