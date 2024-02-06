import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_checkbox_group.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'vendor_approval_details_model.dart';
export 'vendor_approval_details_model.dart';

class VendorApprovalDetailsWidget extends StatefulWidget {
  const VendorApprovalDetailsWidget({
    super.key,
    this.vendorSubmission,
    required this.state,
  });

  final DocumentReference? vendorSubmission;
  final String? state;

  @override
  State<VendorApprovalDetailsWidget> createState() =>
      _VendorApprovalDetailsWidgetState();
}

class _VendorApprovalDetailsWidgetState
    extends State<VendorApprovalDetailsWidget> {
  late VendorApprovalDetailsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VendorApprovalDetailsModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'vendorApprovalDetails'});

    _model.firstNameFocusNode ??= FocusNode();

    _model.lastNameFocusNode ??= FocusNode();

    _model.emailFocusNode ??= FocusNode();

    _model.phoneFocusNode ??= FocusNode();

    _model.businessNameFocusNode ??= FocusNode();

    _model.businessAddressFocusNode ??= FocusNode();

    _model.businessTypeFocusNode ??= FocusNode();

    _model.businessCategoryFocusNode ??= FocusNode();

    _model.websiteFocusNode ??= FocusNode();

    _model.licenseNumberController ??= TextEditingController();
    _model.licenseNumberFocusNode ??= FocusNode();

    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textFieldFocusNode2 ??= FocusNode();

    _model.textFieldFocusNode3 ??= FocusNode();

    _model.textFieldFocusNode4 ??= FocusNode();

    _model.textFieldFocusNode5 ??= FocusNode();

    _model.pOSSystemFocusNode ??= FocusNode();

    _model.denialTextFieldController ??= TextEditingController();
    _model.denialTextFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {
          _model.denialTextFieldController?.text =
              'Provide a reason for denying the vendor';
        }));
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

    return StreamBuilder<List<LegalizationRecord>>(
      stream: queryLegalizationRecord(
        queryBuilder: (legalizationRecord) => legalizationRecord.where(
          'State',
          isEqualTo: widget.state,
        ),
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: SpinKitSquareCircle(
                  color: FlutterFlowTheme.of(context).primary,
                  size: 50.0,
                ),
              ),
            ),
          );
        }
        List<LegalizationRecord> vendorApprovalDetailsLegalizationRecordList =
            snapshot.data!;
        // Return an empty Container when the item does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final vendorApprovalDetailsLegalizationRecord =
            vendorApprovalDetailsLegalizationRecordList.isNotEmpty
                ? vendorApprovalDetailsLegalizationRecordList.first
                : null;
        return Title(
            title: 'vendorApprovalDetails',
            color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
            child: GestureDetector(
              onTap: () => _model.unfocusNode.canRequestFocus
                  ? FocusScope.of(context).requestFocus(_model.unfocusNode)
                  : FocusScope.of(context).unfocus(),
              child: Scaffold(
                key: scaffoldKey,
                backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
                appBar: AppBar(
                  backgroundColor: FlutterFlowTheme.of(context).primary,
                  automaticallyImplyLeading: false,
                  leading: FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 30.0,
                    borderWidth: 1.0,
                    buttonSize: 60.0,
                    icon: const Icon(
                      Icons.arrow_back_rounded,
                      color: Colors.white,
                      size: 30.0,
                    ),
                    onPressed: () async {
                      logFirebaseEvent(
                          'VENDOR_APPROVAL_DETAILS_arrow_back_round');
                      logFirebaseEvent('IconButton_navigate_back');
                      context.pop();
                    },
                  ),
                  title: Text(
                    'Business Registration',
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).headlineMediumFamily,
                          color: Colors.white,
                          fontSize: 14.0,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context)
                                  .headlineMediumFamily),
                        ),
                  ),
                  actions: const [],
                  centerTitle: true,
                  elevation: 2.0,
                ),
                body: SafeArea(
                  top: true,
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 0.0),
                    child: StreamBuilder<VendorSubmissionsRecord>(
                      stream: VendorSubmissionsRecord.getDocument(
                          widget.vendorSubmission!),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50.0,
                              height: 50.0,
                              child: SpinKitSquareCircle(
                                color: FlutterFlowTheme.of(context).primary,
                                size: 50.0,
                              ),
                            ),
                          );
                        }
                        final columnVendorSubmissionsRecord = snapshot.data!;
                        return SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Form(
                                key: _model.formKey,
                                autovalidateMode: AutovalidateMode.always,
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Container(
                                        width: 100.0,
                                        height: 181.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 5.0),
                                                  child: Text(
                                                    'Contact',
                                                    textAlign: TextAlign.start,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 10.0,
                                                                5.0, 10.0),
                                                    child: SizedBox(
                                                      width: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.45,
                                                      child: TextFormField(
                                                        controller: _model
                                                                .firstNameController ??=
                                                            TextEditingController(
                                                          text:
                                                              columnVendorSubmissionsRecord
                                                                  .firstName,
                                                        ),
                                                        focusNode: _model
                                                            .firstNameFocusNode,
                                                        autofocus: true,
                                                        readOnly: true,
                                                        obscureText: false,
                                                        decoration:
                                                            InputDecoration(
                                                          labelText:
                                                              'First Name',
                                                          labelStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium,
                                                          hintStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall,
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .grayIcon,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .grayIcon,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                          ),
                                                          errorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                const BorderSide(
                                                              color: Color(
                                                                  0x00000000),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                          ),
                                                          focusedErrorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                const BorderSide(
                                                              color: Color(
                                                                  0x00000000),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                          ),
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium,
                                                        validator: _model
                                                            .firstNameControllerValidator
                                                            .asValidator(
                                                                context),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(5.0, 10.0,
                                                                0.0, 10.0),
                                                    child: TextFormField(
                                                      controller: _model
                                                              .lastNameController ??=
                                                          TextEditingController(
                                                        text:
                                                            columnVendorSubmissionsRecord
                                                                .lastName,
                                                      ),
                                                      focusNode: _model
                                                          .lastNameFocusNode,
                                                      autofocus: true,
                                                      readOnly: true,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        labelText: 'Last Name',
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium,
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall,
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .grayIcon,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10.0),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .grayIcon,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10.0),
                                                        ),
                                                        errorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10.0),
                                                        ),
                                                        focusedErrorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10.0),
                                                        ),
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium,
                                                      validator: _model
                                                          .lastNameControllerValidator
                                                          .asValidator(context),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 10.0,
                                                                5.0, 10.0),
                                                    child: SizedBox(
                                                      width: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.45,
                                                      child: TextFormField(
                                                        controller: _model
                                                                .emailController ??=
                                                            TextEditingController(
                                                          text:
                                                              columnVendorSubmissionsRecord
                                                                  .vendorEmail,
                                                        ),
                                                        focusNode: _model
                                                            .emailFocusNode,
                                                        autofocus: true,
                                                        obscureText: false,
                                                        decoration:
                                                            InputDecoration(
                                                          labelText: 'Email',
                                                          labelStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium,
                                                          hintStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall,
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .grayIcon,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .grayIcon,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                          ),
                                                          errorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                const BorderSide(
                                                              color: Color(
                                                                  0x00000000),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                          ),
                                                          focusedErrorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                const BorderSide(
                                                              color: Color(
                                                                  0x00000000),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                          ),
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium,
                                                        keyboardType:
                                                            TextInputType
                                                                .emailAddress,
                                                        validator: _model
                                                            .emailControllerValidator
                                                            .asValidator(
                                                                context),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(5.0, 10.0,
                                                                0.0, 10.0),
                                                    child: TextFormField(
                                                      controller: _model
                                                              .phoneController ??=
                                                          TextEditingController(
                                                        text:
                                                            columnVendorSubmissionsRecord
                                                                .lastName,
                                                      ),
                                                      focusNode:
                                                          _model.phoneFocusNode,
                                                      autofocus: true,
                                                      readOnly: true,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        labelText:
                                                            'Phone Number',
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium,
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall,
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .grayIcon,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10.0),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .grayIcon,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10.0),
                                                        ),
                                                        errorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10.0),
                                                        ),
                                                        focusedErrorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10.0),
                                                        ),
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium,
                                                      keyboardType:
                                                          TextInputType.phone,
                                                      validator: _model
                                                          .phoneControllerValidator
                                                          .asValidator(context),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 15.0, 0.0, 5.0),
                                        child: Text(
                                          'Business',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 10.0),
                                        child: TextFormField(
                                          controller:
                                              _model.businessNameController ??=
                                                  TextEditingController(
                                            text: columnVendorSubmissionsRecord
                                                .vendorName,
                                          ),
                                          focusNode:
                                              _model.businessNameFocusNode,
                                          autofocus: true,
                                          readOnly: true,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText: 'Business Name',
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium,
                                            hintText: '[Some hint text...]',
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodySmall,
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .grayIcon,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .grayIcon,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                          validator: _model
                                              .businessNameControllerValidator
                                              .asValidator(context),
                                        ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 10.0),
                                              child: TextFormField(
                                                controller: _model
                                                        .businessAddressController ??=
                                                    TextEditingController(
                                                  text:
                                                      columnVendorSubmissionsRecord
                                                          .address,
                                                ),
                                                focusNode: _model
                                                    .businessAddressFocusNode,
                                                autofocus: true,
                                                readOnly: true,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelText: 'Address',
                                                  labelStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium,
                                                  hintText:
                                                      '[Some hint text...]',
                                                  hintStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodySmall,
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .grayIcon,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .grayIcon,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                                validator: _model
                                                    .businessAddressControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 10.0),
                                              child: TextFormField(
                                                controller: _model
                                                        .businessTypeController ??=
                                                    TextEditingController(
                                                  text:
                                                      columnVendorSubmissionsRecord
                                                          .type,
                                                ),
                                                focusNode: _model
                                                    .businessTypeFocusNode,
                                                autofocus: true,
                                                readOnly: true,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelText: 'Business Type',
                                                  labelStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium,
                                                  hintText:
                                                      '[Some hint text...]',
                                                  hintStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodySmall,
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .grayIcon,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .grayIcon,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                                validator: _model
                                                    .businessTypeControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 10.0),
                                              child: TextFormField(
                                                controller: _model
                                                        .businessCategoryController ??=
                                                    TextEditingController(
                                                  text:
                                                      columnVendorSubmissionsRecord
                                                          .category,
                                                ),
                                                focusNode: _model
                                                    .businessCategoryFocusNode,
                                                autofocus: true,
                                                readOnly: true,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelText: 'Business Type',
                                                  labelStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium,
                                                  hintText:
                                                      '[Some hint text...]',
                                                  hintStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodySmall,
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .grayIcon,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .grayIcon,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                                validator: _model
                                                    .businessCategoryControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            'Product Types',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 8.0),
                                              child: FlutterFlowCheckboxGroup(
                                                options:
                                                    vendorApprovalDetailsLegalizationRecord!
                                                        .productTypes
                                                        .toList(),
                                                onChanged: (val) => setState(() =>
                                                    _model.checkboxGroupValues =
                                                        val),
                                                controller: _model
                                                        .checkboxGroupValueController ??=
                                                    FormFieldController<
                                                        List<String>>(
                                                  columnVendorSubmissionsRecord
                                                      .productTypes,
                                                ),
                                                activeColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                checkColor:
                                                    FlutterFlowTheme.of(context)
                                                        .info,
                                                checkboxBorderColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                                checkboxBorderRadius:
                                                    BorderRadius.circular(4.0),
                                                initialized: _model
                                                        .checkboxGroupValues !=
                                                    null,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 10.0),
                                        child: TextFormField(
                                          controller:
                                              _model.websiteController ??=
                                                  TextEditingController(
                                            text: columnVendorSubmissionsRecord
                                                .website,
                                          ),
                                          focusNode: _model.websiteFocusNode,
                                          autofocus: true,
                                          readOnly: true,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText: 'Website url',
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium,
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodySmall,
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .grayIcon,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .grayIcon,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Color(0x00000000),
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                          keyboardType: TextInputType.url,
                                          validator: _model
                                              .websiteControllerValidator
                                              .asValidator(context),
                                        ),
                                      ),
                                      if (columnVendorSubmissionsRecord
                                                  .businessProfile?.id !=
                                              null &&
                                          columnVendorSubmissionsRecord
                                                  .businessProfile?.id !=
                                              '')
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              child: FFButtonWidget(
                                                onPressed: () async {
                                                  logFirebaseEvent(
                                                      'VENDOR_APPROVAL_DETAILS_ViewProfileButto');
                                                  logFirebaseEvent(
                                                      'ViewProfileButton_navigate_to');

                                                  context.pushNamed(
                                                    'BusinessProfile',
                                                    queryParameters: {
                                                      'business':
                                                          serializeParam(
                                                        columnVendorSubmissionsRecord
                                                            .businessProfile,
                                                        ParamType
                                                            .DocumentReference,
                                                      ),
                                                    }.withoutNulls,
                                                  );
                                                },
                                                text: 'View Business Profile',
                                                options: FFButtonOptions(
                                                  height: 40.0,
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          24.0, 0.0, 24.0, 0.0),
                                                  iconPadding:
                                                      const EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmallFamily,
                                                            color: Colors.white,
                                                            useGoogleFonts: GoogleFonts
                                                                    .asMap()
                                                                .containsKey(
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleSmallFamily),
                                                          ),
                                                  elevation: 3.0,
                                                  borderSide: const BorderSide(
                                                    color: Colors.transparent,
                                                    width: 1.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 15.0, 0.0, 5.0),
                                        child: Text(
                                          'License',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                        ),
                                      ),
                                      Container(
                                        height: 50.0,
                                        decoration: const BoxDecoration(),
                                        child: FlutterFlowDropDown<String>(
                                          controller: _model
                                                  .licenseTypeValueController ??=
                                              FormFieldController<String>(
                                            _model.licenseTypeValue ??=
                                                columnVendorSubmissionsRecord
                                                    .licenseType,
                                          ),
                                          options: const [
                                            'Adult-Use Cultivation',
                                            'Adult-Use Manufacturing',
                                            'Adult-Use (Non Storefront)',
                                            'Adult-Use Retail',
                                            'Distributor',
                                            'Event',
                                            'Medical Cultivation',
                                            'Medical Manufacturing',
                                            'Medical (Non Storefront)',
                                            'Medical Retail',
                                            'Microbusiness',
                                            'Testing Lab',
                                            'Not Applicable'
                                          ],
                                          onChanged: (val) => setState(() =>
                                              _model.licenseTypeValue = val),
                                          width: 180.0,
                                          height: 50.0,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                color: Colors.black,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily),
                                              ),
                                          hintText: 'License Type',
                                          fillColor: Colors.white,
                                          elevation: 2.0,
                                          borderColor:
                                              FlutterFlowTheme.of(context)
                                                  .grayIcon,
                                          borderWidth: 0.0,
                                          borderRadius: 10.0,
                                          margin:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 4.0, 12.0, 4.0),
                                          hidesUnderline: true,
                                          disabled:
                                              columnVendorSubmissionsRecord
                                                          .licenseType !=
                                                      '',
                                          isSearchable: false,
                                          isMultiSelect: false,
                                        ),
                                      ),
                                      if (valueOrDefault<bool>(
                                        columnVendorSubmissionsRecord
                                                .licenseType !=
                                            'Not Applicable',
                                        false,
                                      ))
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 4.0, 0.0),
                                                child: FFButtonWidget(
                                                  onPressed:
                                                      (columnVendorSubmissionsRecord
                                                                  .licenseExpiration !=
                                                              null)
                                                          ? null
                                                          : () async {
                                                              logFirebaseEvent(
                                                                  'VENDOR_APPROVAL_DETAILS_EXPIRATION_DATE_');
                                                              logFirebaseEvent(
                                                                  'Button_date_time_picker');
                                                              final datePickedDate =
                                                                  await showDatePicker(
                                                                context:
                                                                    context,
                                                                initialDate:
                                                                    getCurrentTimestamp,
                                                                firstDate:
                                                                    getCurrentTimestamp,
                                                                lastDate:
                                                                    DateTime(
                                                                        2050),
                                                              );

                                                              if (datePickedDate !=
                                                                  null) {
                                                                safeSetState(
                                                                    () {
                                                                  _model.datePicked =
                                                                      DateTime(
                                                                    datePickedDate
                                                                        .year,
                                                                    datePickedDate
                                                                        .month,
                                                                    datePickedDate
                                                                        .day,
                                                                  );
                                                                });
                                                              }
                                                            },
                                                  text: dateTimeFormat(
                                                    'yMMMd',
                                                    columnVendorSubmissionsRecord
                                                        .licenseExpiration!,
                                                    locale: FFLocalizations.of(
                                                            context)
                                                        .languageCode,
                                                  ),
                                                  icon: FaIcon(
                                                    FontAwesomeIcons
                                                        .calendarCheck,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .customColor1,
                                                  ),
                                                  options: FFButtonOptions(
                                                    height: 50.0,
                                                    padding:
                                                        const EdgeInsets.all(0.0),
                                                    iconPadding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBtnText,
                                                    textStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleSmall
                                                            .override(
                                                              fontFamily:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmallFamily,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .gray600,
                                                              fontSize: 14.0,
                                                              useGoogleFonts: GoogleFonts
                                                                      .asMap()
                                                                  .containsKey(
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleSmallFamily),
                                                            ),
                                                    elevation: 2.0,
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .lineColor,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 10.0, 0.0, 10.0),
                                                child: TextFormField(
                                                  controller: _model
                                                      .licenseNumberController,
                                                  focusNode: _model
                                                      .licenseNumberFocusNode,
                                                  autofocus: true,
                                                  readOnly: true,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText: 'License Number',
                                                    labelStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium,
                                                    hintText:
                                                        columnVendorSubmissionsRecord
                                                            .licenseNumber,
                                                    hintStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodySmall,
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .grayIcon,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .grayIcon,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                    ),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                  validator: _model
                                                      .licenseNumberControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 15.0, 0.0, 5.0),
                                        child: Text(
                                          'Additional  Information',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 15.0, 0.0, 15.0),
                                        child: SwitchListTile.adaptive(
                                          value:
                                              _model.switchListSocialValue ??=
                                                  columnVendorSubmissionsRecord
                                                      .social,
                                          onChanged: (newValue) async {
                                            setState(() =>
                                                _model.switchListSocialValue =
                                                    newValue);
                                          },
                                          title: Text(
                                            'Social Media',
                                            style: FlutterFlowTheme.of(context)
                                                .headlineSmall,
                                          ),
                                          subtitle: Text(
                                            'Would you like add your social media pages?',
                                            style: FlutterFlowTheme.of(context)
                                                .titleSmall
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmallFamily,
                                                  fontSize: 12.0,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmallFamily),
                                                ),
                                          ),
                                          tileColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryBackground,
                                          activeColor:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                          activeTrackColor: const Color(0xFF7ED957),
                                          dense: false,
                                          controlAffinity:
                                              ListTileControlAffinity.trailing,
                                        ),
                                      ),
                                      if (columnVendorSubmissionsRecord
                                              .social ==
                                          true)
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 25.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.stretch,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  const FaIcon(
                                                    FontAwesomeIcons
                                                        .instagramSquare,
                                                    color: Color(0xFF7ED957),
                                                    size: 36.0,
                                                  ),
                                                  Expanded(
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: TextFormField(
                                                        controller: _model
                                                                .textController11 ??=
                                                            TextEditingController(
                                                          text:
                                                              columnVendorSubmissionsRecord
                                                                  .instagram,
                                                        ),
                                                        focusNode: _model
                                                            .textFieldFocusNode1,
                                                        autofocus: true,
                                                        readOnly: true,
                                                        obscureText: false,
                                                        decoration:
                                                            InputDecoration(
                                                          labelStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium,
                                                          hintText:
                                                              '[Some hint text...]',
                                                          hintStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall,
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .grayIcon,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        1.0),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .grayIcon,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        1.0),
                                                          ),
                                                          errorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                const BorderSide(
                                                              color: Color(
                                                                  0x00000000),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        1.0),
                                                          ),
                                                          focusedErrorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                const BorderSide(
                                                              color: Color(
                                                                  0x00000000),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        1.0),
                                                          ),
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium,
                                                        keyboardType:
                                                            TextInputType.url,
                                                        validator: _model
                                                            .textController11Validator
                                                            .asValidator(
                                                                context),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  const FaIcon(
                                                    FontAwesomeIcons
                                                        .facebookSquare,
                                                    color: Color(0xFF7ED957),
                                                    size: 36.0,
                                                  ),
                                                  Expanded(
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: TextFormField(
                                                        controller: _model
                                                                .textController12 ??=
                                                            TextEditingController(
                                                          text:
                                                              columnVendorSubmissionsRecord
                                                                  .facebook,
                                                        ),
                                                        focusNode: _model
                                                            .textFieldFocusNode2,
                                                        autofocus: true,
                                                        readOnly: true,
                                                        obscureText: false,
                                                        decoration:
                                                            InputDecoration(
                                                          labelStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium,
                                                          hintText:
                                                              '[Some hint text...]',
                                                          hintStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall,
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .grayIcon,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        1.0),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .grayIcon,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        1.0),
                                                          ),
                                                          errorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                const BorderSide(
                                                              color: Color(
                                                                  0x00000000),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        1.0),
                                                          ),
                                                          focusedErrorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                const BorderSide(
                                                              color: Color(
                                                                  0x00000000),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        1.0),
                                                          ),
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium,
                                                        keyboardType:
                                                            TextInputType.url,
                                                        validator: _model
                                                            .textController12Validator
                                                            .asValidator(
                                                                context),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  const FaIcon(
                                                    FontAwesomeIcons
                                                        .twitterSquare,
                                                    color: Color(0xFF7ED957),
                                                    size: 36.0,
                                                  ),
                                                  Expanded(
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: TextFormField(
                                                        controller: _model
                                                                .textController13 ??=
                                                            TextEditingController(
                                                          text:
                                                              columnVendorSubmissionsRecord
                                                                  .twitter,
                                                        ),
                                                        focusNode: _model
                                                            .textFieldFocusNode3,
                                                        autofocus: true,
                                                        readOnly: true,
                                                        obscureText: false,
                                                        decoration:
                                                            InputDecoration(
                                                          labelStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium,
                                                          hintText:
                                                              '[Some hint text...]',
                                                          hintStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall,
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .grayIcon,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        1.0),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .grayIcon,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        1.0),
                                                          ),
                                                          errorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                const BorderSide(
                                                              color: Color(
                                                                  0x00000000),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        1.0),
                                                          ),
                                                          focusedErrorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                const BorderSide(
                                                              color: Color(
                                                                  0x00000000),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        1.0),
                                                          ),
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium,
                                                        keyboardType:
                                                            TextInputType.url,
                                                        validator: _model
                                                            .textController13Validator
                                                            .asValidator(
                                                                context),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  const FaIcon(
                                                    FontAwesomeIcons.tiktok,
                                                    color: Color(0xFF7ED957),
                                                    size: 36.0,
                                                  ),
                                                  Expanded(
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: TextFormField(
                                                        controller: _model
                                                                .textController14 ??=
                                                            TextEditingController(
                                                          text:
                                                              columnVendorSubmissionsRecord
                                                                  .tiktok,
                                                        ),
                                                        focusNode: _model
                                                            .textFieldFocusNode4,
                                                        autofocus: true,
                                                        readOnly: true,
                                                        obscureText: false,
                                                        decoration:
                                                            InputDecoration(
                                                          labelStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium,
                                                          hintText:
                                                              '[Some hint text...]',
                                                          hintStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall,
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .grayIcon,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        1.0),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .grayIcon,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        1.0),
                                                          ),
                                                          errorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                const BorderSide(
                                                              color: Color(
                                                                  0x00000000),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        1.0),
                                                          ),
                                                          focusedErrorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                const BorderSide(
                                                              color: Color(
                                                                  0x00000000),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        1.0),
                                                          ),
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium,
                                                        keyboardType:
                                                            TextInputType.url,
                                                        validator: _model
                                                            .textController14Validator
                                                            .asValidator(
                                                                context),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  const FaIcon(
                                                    FontAwesomeIcons.linkedin,
                                                    color: Color(0xFF7ED957),
                                                    size: 36.0,
                                                  ),
                                                  Expanded(
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: TextFormField(
                                                        controller: _model
                                                                .textController15 ??=
                                                            TextEditingController(
                                                          text:
                                                              columnVendorSubmissionsRecord
                                                                  .linkedin,
                                                        ),
                                                        focusNode: _model
                                                            .textFieldFocusNode5,
                                                        autofocus: true,
                                                        readOnly: true,
                                                        obscureText: false,
                                                        decoration:
                                                            InputDecoration(
                                                          labelStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium,
                                                          hintText:
                                                              '[Some hint text...]',
                                                          hintStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall,
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .grayIcon,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        1.0),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .grayIcon,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        1.0),
                                                          ),
                                                          errorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                const BorderSide(
                                                              color: Color(
                                                                  0x00000000),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        1.0),
                                                          ),
                                                          focusedErrorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                const BorderSide(
                                                              color: Color(
                                                                  0x00000000),
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        1.0),
                                                          ),
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium,
                                                        keyboardType:
                                                            TextInputType.url,
                                                        validator: _model
                                                            .textController15Validator
                                                            .asValidator(
                                                                context),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 15.0, 0.0, 15.0),
                                        child: SwitchListTile.adaptive(
                                          value: _model.switchListPOSValue ??=
                                              columnVendorSubmissionsRecord
                                                  .posSystem,
                                          onChanged: (newValue) async {
                                            setState(() =>
                                                _model.switchListPOSValue =
                                                    newValue);
                                          },
                                          title: Text(
                                            'Point of Sale System',
                                            style: FlutterFlowTheme.of(context)
                                                .headlineSmall,
                                          ),
                                          subtitle: Text(
                                            'Do you use a POS system?',
                                            style: FlutterFlowTheme.of(context)
                                                .titleSmall
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmallFamily,
                                                  fontSize: 12.0,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmallFamily),
                                                ),
                                          ),
                                          tileColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryBackground,
                                          activeColor:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                          activeTrackColor: const Color(0xFF7ED957),
                                          dense: false,
                                          controlAffinity:
                                              ListTileControlAffinity.trailing,
                                        ),
                                      ),
                                      if (columnVendorSubmissionsRecord
                                              .posSystem ==
                                          true)
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 25.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.stretch,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 10.0, 0.0, 10.0),
                                                child: TextFormField(
                                                  controller: _model
                                                          .pOSSystemController ??=
                                                      TextEditingController(
                                                    text:
                                                        columnVendorSubmissionsRecord
                                                            .postSystemName,
                                                  ),
                                                  focusNode:
                                                      _model.pOSSystemFocusNode,
                                                  autofocus: true,
                                                  readOnly: true,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText: 'POS System',
                                                    labelStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium,
                                                    hintText:
                                                        'None, Square, Paypal, etc...',
                                                    hintStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodySmall,
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .grayIcon,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .grayIcon,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                    ),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                  validator: _model
                                                      .pOSSystemControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 24.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            24.0, 0.0, 24.0, 0.0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            logFirebaseEvent(
                                                'VENDOR_APPROVAL_DETAILS_DENY_BTN_ON_TAP');
                                            logFirebaseEvent(
                                                'Button_backend_call');

                                            await widget.vendorSubmission!.update(
                                                createVendorSubmissionsRecordData(
                                              status: 'Denied',
                                            ));
                                          },
                                          text: 'Deny',
                                          options: FFButtonOptions(
                                            width: 130.0,
                                            height: 40.0,
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            iconPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBtnText,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmallFamily,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      useGoogleFonts: GoogleFonts
                                                              .asMap()
                                                          .containsKey(
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmallFamily),
                                                    ),
                                            elevation: 2.0,
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            24.0, 0.0, 24.0, 0.0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            logFirebaseEvent(
                                                'VENDOR_APPROVAL_DETAILS_APPROVE_BTN_ON_T');
                                            var shouldSetState = false;
                                            logFirebaseEvent(
                                                'Button_backend_call');

                                            await widget.vendorSubmission!.update(
                                                createVendorSubmissionsRecordData(
                                              status: 'Approved',
                                              approved: true,
                                            ));
                                            if (columnVendorSubmissionsRecord
                                                        .businessProfile?.id !=
                                                    null &&
                                                columnVendorSubmissionsRecord
                                                        .businessProfile?.id !=
                                                    '') {
                                              logFirebaseEvent(
                                                  'Button_backend_call');

                                              await columnVendorSubmissionsRecord
                                                  .businessProfile!
                                                  .update({
                                                ...createBusinessesRecordData(
                                                  vendorName:
                                                      columnVendorSubmissionsRecord
                                                          .vendorName,
                                                  address:
                                                      columnVendorSubmissionsRecord
                                                          .address,
                                                  type:
                                                      columnVendorSubmissionsRecord
                                                          .category,
                                                  claimed: true,
                                                  website:
                                                      columnVendorSubmissionsRecord
                                                          .website,
                                                  facebook:
                                                      columnVendorSubmissionsRecord
                                                          .facebook,
                                                  twitter:
                                                      columnVendorSubmissionsRecord
                                                          .twitter,
                                                  instagram:
                                                      columnVendorSubmissionsRecord
                                                          .instagram,
                                                  tiktok:
                                                      columnVendorSubmissionsRecord
                                                          .tiktok,
                                                  owner:
                                                      columnVendorSubmissionsRecord
                                                          .owner,
                                                  licenseType:
                                                      columnVendorSubmissionsRecord
                                                          .licenseType,
                                                  licenseExpiration:
                                                      columnVendorSubmissionsRecord
                                                          .licenseExpiration,
                                                  approved: true,
                                                  claimedDate:
                                                      getCurrentTimestamp,
                                                  phone:
                                                      columnVendorSubmissionsRecord
                                                          .vendorPhone,
                                                  email:
                                                      columnVendorSubmissionsRecord
                                                          .vendorEmail,
                                                  licenseNumber:
                                                      columnVendorSubmissionsRecord
                                                          .licenseNumber,
                                                  pos:
                                                      columnVendorSubmissionsRecord
                                                          .posSystem,
                                                  posSystem:
                                                      columnVendorSubmissionsRecord
                                                          .postSystemName,
                                                  social:
                                                      columnVendorSubmissionsRecord
                                                          .social,
                                                  linkedin:
                                                      columnVendorSubmissionsRecord
                                                          .linkedin,
                                                  category: _model
                                                      .businessCategoryController
                                                      .text,
                                                  state:
                                                      columnVendorSubmissionsRecord
                                                          .state,
                                                ),
                                                ...mapToFirestore(
                                                  {
                                                    'productTypes':
                                                        columnVendorSubmissionsRecord
                                                            .productTypes,
                                                  },
                                                ),
                                              });
                                              logFirebaseEvent(
                                                  'Button_backend_call');

                                              await PlacesRecord.collection
                                                  .doc()
                                                  .set({
                                                ...createPlacesRecordData(
                                                  address:
                                                      columnVendorSubmissionsRecord
                                                          .address,
                                                  createdAt:
                                                      getCurrentTimestamp,
                                                  vendorName:
                                                      columnVendorSubmissionsRecord
                                                          .vendorName,
                                                  owner:
                                                      columnVendorSubmissionsRecord
                                                          .owner,
                                                  business:
                                                      columnVendorSubmissionsRecord
                                                          .businessProfile,
                                                  placePosition:
                                                      columnVendorSubmissionsRecord
                                                          .location,
                                                  approved: true,
                                                  type:
                                                      columnVendorSubmissionsRecord
                                                          .type,
                                                  state:
                                                      columnVendorSubmissionsRecord
                                                          .state,
                                                  vendorSubmissionId:
                                                      columnVendorSubmissionsRecord
                                                          .id,
                                                ),
                                                ...mapToFirestore(
                                                  {
                                                    'category': [
                                                      columnVendorSubmissionsRecord
                                                          .category
                                                    ],
                                                  },
                                                ),
                                              });
                                            } else {
                                              logFirebaseEvent(
                                                  'Button_backend_call');

                                              var businessesRecordReference =
                                                  BusinessesRecord.collection
                                                      .doc();
                                              await businessesRecordReference
                                                  .set({
                                                ...createBusinessesRecordData(
                                                  vendorName:
                                                      columnVendorSubmissionsRecord
                                                          .vendorName,
                                                  createdAt:
                                                      getCurrentTimestamp,
                                                  address:
                                                      columnVendorSubmissionsRecord
                                                          .address,
                                                  type:
                                                      columnVendorSubmissionsRecord
                                                          .type,
                                                  claimed: true,
                                                  website:
                                                      columnVendorSubmissionsRecord
                                                          .website,
                                                  facebook:
                                                      columnVendorSubmissionsRecord
                                                          .facebook,
                                                  twitter:
                                                      columnVendorSubmissionsRecord
                                                          .twitter,
                                                  instagram:
                                                      columnVendorSubmissionsRecord
                                                          .instagram,
                                                  tiktok:
                                                      columnVendorSubmissionsRecord
                                                          .tiktok,
                                                  owner:
                                                      columnVendorSubmissionsRecord
                                                          .owner,
                                                  licenseType:
                                                      columnVendorSubmissionsRecord
                                                          .licenseType,
                                                  licenseExpiration:
                                                      columnVendorSubmissionsRecord
                                                          .licenseExpiration,
                                                  approved: true,
                                                  phone:
                                                      columnVendorSubmissionsRecord
                                                          .vendorPhone,
                                                  email:
                                                      columnVendorSubmissionsRecord
                                                          .vendorEmail,
                                                  licenseNumber:
                                                      columnVendorSubmissionsRecord
                                                          .licenseNumber,
                                                  category:
                                                      columnVendorSubmissionsRecord
                                                          .category,
                                                  businessId:
                                                      random_data.randomString(
                                                    8,
                                                    20,
                                                    true,
                                                    true,
                                                    false,
                                                  ),
                                                  claimedDate:
                                                      getCurrentTimestamp,
                                                  pos:
                                                      columnVendorSubmissionsRecord
                                                          .posSystem,
                                                  posSystem:
                                                      columnVendorSubmissionsRecord
                                                          .postSystemName,
                                                  social:
                                                      columnVendorSubmissionsRecord
                                                          .social,
                                                  linkedin:
                                                      columnVendorSubmissionsRecord
                                                          .linkedin,
                                                  state:
                                                      columnVendorSubmissionsRecord
                                                          .state,
                                                  profilePic: '',
                                                ),
                                                ...mapToFirestore(
                                                  {
                                                    'productTypes':
                                                        columnVendorSubmissionsRecord
                                                            .productTypes,
                                                  },
                                                ),
                                              });
                                              _model.newBusiness =
                                                  BusinessesRecord
                                                      .getDocumentFromData({
                                                ...createBusinessesRecordData(
                                                  vendorName:
                                                      columnVendorSubmissionsRecord
                                                          .vendorName,
                                                  createdAt:
                                                      getCurrentTimestamp,
                                                  address:
                                                      columnVendorSubmissionsRecord
                                                          .address,
                                                  type:
                                                      columnVendorSubmissionsRecord
                                                          .type,
                                                  claimed: true,
                                                  website:
                                                      columnVendorSubmissionsRecord
                                                          .website,
                                                  facebook:
                                                      columnVendorSubmissionsRecord
                                                          .facebook,
                                                  twitter:
                                                      columnVendorSubmissionsRecord
                                                          .twitter,
                                                  instagram:
                                                      columnVendorSubmissionsRecord
                                                          .instagram,
                                                  tiktok:
                                                      columnVendorSubmissionsRecord
                                                          .tiktok,
                                                  owner:
                                                      columnVendorSubmissionsRecord
                                                          .owner,
                                                  licenseType:
                                                      columnVendorSubmissionsRecord
                                                          .licenseType,
                                                  licenseExpiration:
                                                      columnVendorSubmissionsRecord
                                                          .licenseExpiration,
                                                  approved: true,
                                                  phone:
                                                      columnVendorSubmissionsRecord
                                                          .vendorPhone,
                                                  email:
                                                      columnVendorSubmissionsRecord
                                                          .vendorEmail,
                                                  licenseNumber:
                                                      columnVendorSubmissionsRecord
                                                          .licenseNumber,
                                                  category:
                                                      columnVendorSubmissionsRecord
                                                          .category,
                                                  businessId:
                                                      random_data.randomString(
                                                    8,
                                                    20,
                                                    true,
                                                    true,
                                                    false,
                                                  ),
                                                  claimedDate:
                                                      getCurrentTimestamp,
                                                  pos:
                                                      columnVendorSubmissionsRecord
                                                          .posSystem,
                                                  posSystem:
                                                      columnVendorSubmissionsRecord
                                                          .postSystemName,
                                                  social:
                                                      columnVendorSubmissionsRecord
                                                          .social,
                                                  linkedin:
                                                      columnVendorSubmissionsRecord
                                                          .linkedin,
                                                  state:
                                                      columnVendorSubmissionsRecord
                                                          .state,
                                                  profilePic: '',
                                                ),
                                                ...mapToFirestore(
                                                  {
                                                    'productTypes':
                                                        columnVendorSubmissionsRecord
                                                            .productTypes,
                                                  },
                                                ),
                                              }, businessesRecordReference);
                                              shouldSetState = true;
                                              logFirebaseEvent(
                                                  'Button_backend_call');

                                              await PlacesRecord.collection
                                                  .doc()
                                                  .set({
                                                ...createPlacesRecordData(
                                                  address:
                                                      columnVendorSubmissionsRecord
                                                          .address,
                                                  createdAt:
                                                      getCurrentTimestamp,
                                                  vendorName:
                                                      columnVendorSubmissionsRecord
                                                          .vendorName,
                                                  owner:
                                                      columnVendorSubmissionsRecord
                                                          .owner,
                                                  business: _model
                                                      .newBusiness?.reference,
                                                  placePosition:
                                                      columnVendorSubmissionsRecord
                                                          .location,
                                                  approved: true,
                                                  locationName: 'Main',
                                                  vendorSubmissionId:
                                                      columnVendorSubmissionsRecord
                                                          .id,
                                                  type: '',
                                                ),
                                                ...mapToFirestore(
                                                  {
                                                    'category': [
                                                      columnVendorSubmissionsRecord
                                                          .category
                                                    ],
                                                  },
                                                ),
                                              });
                                              logFirebaseEvent(
                                                  'Button_backend_call');

                                              await columnVendorSubmissionsRecord
                                                  .owner!
                                                  .update(createUsersRecordData(
                                                business: _model
                                                    .newBusiness?.reference,
                                              ));
                                            }

                                            logFirebaseEvent(
                                                'Button_backend_call');
                                            _model.apiAddMember =
                                                await CRMIntegtationGroup
                                                    .createPlanMemberCall
                                                    .call(
                                              name:
                                                  '${columnVendorSubmissionsRecord.firstName} ${columnVendorSubmissionsRecord.lastName}',
                                              email:
                                                  columnVendorSubmissionsRecord
                                                      .vendorEmail,
                                              password:
                                                  '${currentUserReference?.id}',
                                              group: 2,
                                              documentID:
                                                  currentUserReference?.id,
                                            );
                                            shouldSetState = true;
                                            if ((_model
                                                    .apiAddMember?.succeeded ??
                                                true)) {
                                              logFirebaseEvent(
                                                  'Button_backend_call');
                                              _model.apiResultUpdateContact =
                                                  await CRMIntegtationGroup
                                                      .updateContactCall
                                                      .call(
                                                contactCrmId:
                                                    CRMIntegtationGroup
                                                        .createPlanMemberCall
                                                        .contactID(
                                                          (_model.apiAddMember
                                                                  ?.jsonBody ??
                                                              ''),
                                                        )
                                                        ?.toString(),
                                                email:
                                                    columnVendorSubmissionsRecord
                                                        .vendorEmail,
                                                appApprovalStatus: 'Approved',
                                                appUserId:
                                                    currentUserReference?.id,
                                                tag: 'app_approval',
                                              );
                                              shouldSetState = true;
                                              if ((_model.apiResultUpdateContact
                                                      ?.succeeded ??
                                                  true)) {
                                                logFirebaseEvent(
                                                    'Button_backend_call');

                                                await columnVendorSubmissionsRecord
                                                    .owner!
                                                    .update(
                                                        createUsersRecordData(
                                                  business:
                                                      columnVendorSubmissionsRecord
                                                          .businessProfile,
                                                  crmMemberId:
                                                      CRMIntegtationGroup
                                                          .createPlanMemberCall
                                                          .memberID(
                                                            (_model.apiAddMember
                                                                    ?.jsonBody ??
                                                                ''),
                                                          )
                                                          ?.toString(),
                                                  crmContactId:
                                                      CRMIntegtationGroup
                                                          .createPlanMemberCall
                                                          .contactID(
                                                            (_model.apiAddMember
                                                                    ?.jsonBody ??
                                                                ''),
                                                          )
                                                          ?.toString(),
                                                ));
                                                logFirebaseEvent(
                                                    'Button_navigate_back');
                                                context.safePop();
                                                if (shouldSetState) {
                                                  setState(() {});
                                                }
                                                return;
                                              } else {
                                                logFirebaseEvent(
                                                    'Button_alert_dialog');
                                                await showDialog(
                                                  context: context,
                                                  builder:
                                                      (alertDialogContext) {
                                                    return WebViewAware(
                                                      child: AlertDialog(
                                                        title: const Text(
                                                            'Someething Went Wrong! The member could not be added to the CRM.'),
                                                        content: const Text(
                                                            'Please try again!'),
                                                        actions: [
                                                          TextButton(
                                                            onPressed: () =>
                                                                Navigator.pop(
                                                                    alertDialogContext),
                                                            child: const Text('Ok'),
                                                          ),
                                                        ],
                                                      ),
                                                    );
                                                  },
                                                );
                                                if (shouldSetState) {
                                                  setState(() {});
                                                }
                                                return;
                                              }
                                            } else {
                                              logFirebaseEvent(
                                                  'Button_alert_dialog');
                                              await showDialog(
                                                context: context,
                                                builder: (alertDialogContext) {
                                                  return WebViewAware(
                                                    child: AlertDialog(
                                                      title: const Text(
                                                          'Someething Went Wrong! The member could not be added to the CRM.'),
                                                      content: const Text(
                                                          'Please try again!'),
                                                      actions: [
                                                        TextButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                  alertDialogContext),
                                                          child: const Text('Ok'),
                                                        ),
                                                      ],
                                                    ),
                                                  );
                                                },
                                              );
                                              if (shouldSetState) {
                                                setState(() {});
                                              }
                                              return;
                                            }

                                            if (shouldSetState) {
                                              setState(() {});
                                            }
                                          },
                                          text: 'Approve',
                                          options: FFButtonOptions(
                                            width: 130.0,
                                            height: 40.0,
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            iconPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmallFamily,
                                                      color: Colors.white,
                                                      useGoogleFonts: GoogleFonts
                                                              .asMap()
                                                          .containsKey(
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmallFamily),
                                                    ),
                                            elevation: 2.0,
                                            borderSide: const BorderSide(
                                              color: Colors.transparent,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Divider(
                                thickness: 1.0,
                              ),
                              if (columnVendorSubmissionsRecord.status ==
                                  'Denied')
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 24.0, 0.0, 24.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.898,
                                        height: 169.2,
                                        constraints: const BoxConstraints(
                                          maxWidth: 1000.0,
                                        ),
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .lineColor,
                                          ),
                                        ),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 0.0, 12.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Denial Reason',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          fontSize: 18.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily),
                                                        ),
                                              ),
                                              const Divider(
                                                thickness: 1.0,
                                              ),
                                              TextFormField(
                                                controller: _model
                                                    .denialTextFieldController,
                                                focusNode: _model
                                                    .denialTextFieldFocusNode,
                                                autofocus: true,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  hintText:
                                                      '[Some hint text...]',
                                                  hintStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodySmall,
                                                  enabledBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  focusedBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  errorBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      UnderlineInputBorder(
                                                    borderSide: const BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMediumFamily,
                                                          fontSize: 16.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMediumFamily),
                                                        ),
                                                keyboardType:
                                                    TextInputType.multiline,
                                                validator: _model
                                                    .denialTextFieldControllerValidator
                                                    .asValidator(context),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 12.0),
                                                    child: FFButtonWidget(
                                                      onPressed: () async {
                                                        logFirebaseEvent(
                                                            'VENDOR_APPROVAL_DETAILS_CONTINUE_BTN_ON_');
                                                        logFirebaseEvent(
                                                            'Button_backend_call');
                                                        _model.apiResulthn9 =
                                                            await CRMIntegtationGroup
                                                                .updateContactCall
                                                                .call();
                                                        if ((_model.apiResulthn9
                                                                ?.succeeded ??
                                                            true)) {
                                                          logFirebaseEvent(
                                                              'Button_navigate_back');
                                                          context.pop();
                                                        } else {
                                                          logFirebaseEvent(
                                                              'Button_alert_dialog');
                                                          await showDialog(
                                                            context: context,
                                                            builder:
                                                                (alertDialogContext) {
                                                              return WebViewAware(
                                                                child:
                                                                    AlertDialog(
                                                                  title: const Text(
                                                                      'Something Went Wrong'),
                                                                  content: const Text(
                                                                      'Please try again!'),
                                                                  actions: [
                                                                    TextButton(
                                                                      onPressed:
                                                                          () =>
                                                                              Navigator.pop(alertDialogContext),
                                                                      child: const Text(
                                                                          'Ok'),
                                                                    ),
                                                                  ],
                                                                ),
                                                              );
                                                            },
                                                          );
                                                        }

                                                        setState(() {});
                                                      },
                                                      text: 'Continue',
                                                      options: FFButtonOptions(
                                                        width: 130.0,
                                                        height: 40.0,
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        iconPadding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmallFamily,
                                                                  color: Colors
                                                                      .white,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .titleSmallFamily),
                                                                ),
                                                        elevation: 2.0,
                                                        borderSide: const BorderSide(
                                                          color: Colors
                                                              .transparent,
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ));
      },
    );
  }
}
