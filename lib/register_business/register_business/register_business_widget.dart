import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_checkbox_group.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_place_picker.dart';
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
import 'register_business_model.dart';
export 'register_business_model.dart';

class RegisterBusinessWidget extends StatefulWidget {
  const RegisterBusinessWidget({
    super.key,
    this.businessType,
    required this.state,
    this.productTypes,
  });

  final String? businessType;
  final DocumentReference? state;
  final List<String>? productTypes;

  @override
  State<RegisterBusinessWidget> createState() => _RegisterBusinessWidgetState();
}

class _RegisterBusinessWidgetState extends State<RegisterBusinessWidget> {
  late RegisterBusinessModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RegisterBusinessModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'RegisterBusiness'});
    _model.firstNameController ??= TextEditingController();
    _model.firstNameFocusNode ??= FocusNode();

    _model.lastNameController ??= TextEditingController();
    _model.lastNameFocusNode ??= FocusNode();

    _model.emailController ??= TextEditingController();
    _model.emailFocusNode ??= FocusNode();

    _model.phoneController ??= TextEditingController();
    _model.phoneFocusNode ??= FocusNode();

    _model.businessNameController ??= TextEditingController();
    _model.businessNameFocusNode ??= FocusNode();

    _model.websiteController ??= TextEditingController();
    _model.websiteFocusNode ??= FocusNode();

    _model.licenseNumberController ??= TextEditingController();
    _model.licenseNumberFocusNode ??= FocusNode();

    _model.iGTextFieldController ??= TextEditingController();
    _model.iGTextFieldFocusNode ??= FocusNode();

    _model.fBTextFieldController ??= TextEditingController();
    _model.fBTextFieldFocusNode ??= FocusNode();

    _model.twitterTextFieldController ??= TextEditingController();
    _model.twitterTextFieldFocusNode ??= FocusNode();

    _model.tiktokTextFieldController ??= TextEditingController();
    _model.tiktokTextFieldFocusNode ??= FocusNode();

    _model.linkedINTextFieldController ??= TextEditingController();
    _model.linkedINTextFieldFocusNode ??= FocusNode();

    _model.pOSSystemController ??= TextEditingController();
    _model.pOSSystemFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {
          _model.businessNameController?.text = 'Busines Name';
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

    return StreamBuilder<LegalizationRecord>(
      stream: LegalizationRecord.getDocument(widget.state!),
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
        final registerBusinessLegalizationRecord = snapshot.data!;
        return Title(
            title: 'RegisterBusiness',
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
                          'REGISTER_BUSINESS_arrow_back_rounded_ICN');
                      logFirebaseEvent('IconButton_navigate_back');
                      context.pop();
                    },
                  ),
                  title: Text(
                    'Register Business',
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).headlineMediumFamily,
                          color: Colors.white,
                          fontSize: 22.0,
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
                  child: Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Container(
                      constraints: const BoxConstraints(
                        maxWidth: 1000.0,
                      ),
                      decoration: const BoxDecoration(),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            20.0, 20.0, 20.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Flexible(
                              child: Form(
                                key: _model.formKey,
                                autovalidateMode: AutovalidateMode.disabled,
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 5.0),
                                        child: Text(
                                          'Contact',
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                        ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 5.0, 10.0),
                                              child: SizedBox(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.45,
                                                child: TextFormField(
                                                  controller: _model
                                                      .firstNameController,
                                                  focusNode:
                                                      _model.firstNameFocusNode,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText: 'First Name',
                                                    labelStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium,
                                                    hintText: 'First Name',
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
                                                                .lineColor,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
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
                                                      .firstNameControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      5.0, 10.0, 0.0, 10.0),
                                              child: TextFormField(
                                                controller:
                                                    _model.lastNameController,
                                                focusNode:
                                                    _model.lastNameFocusNode,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelText: 'Last Name',
                                                  labelStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium,
                                                  hintText: 'Last Name',
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
                                                              .lineColor,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
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
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 5.0, 10.0),
                                              child: SizedBox(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.45,
                                                child: TextFormField(
                                                  controller:
                                                      _model.emailController,
                                                  focusNode:
                                                      _model.emailFocusNode,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText: 'Email',
                                                    labelStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMedium,
                                                    hintText: 'Email',
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
                                                                .lineColor,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
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
                                                  keyboardType: TextInputType
                                                      .emailAddress,
                                                  validator: _model
                                                      .emailControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      5.0, 10.0, 0.0, 10.0),
                                              child: TextFormField(
                                                controller:
                                                    _model.phoneController,
                                                focusNode:
                                                    _model.phoneFocusNode,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelText: 'Phone Number',
                                                  labelStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium,
                                                  hintText:
                                                      '10 digit Phone Number',
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
                                                              .lineColor,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
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
                                              _model.businessNameController,
                                          focusNode:
                                              _model.businessNameFocusNode,
                                          autofocus: true,
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
                                              borderSide: const BorderSide(
                                                color: Color(0x00000000),
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
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 12.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              child: FlutterFlowPlacePicker(
                                                iOSGoogleMapsApiKey:
                                                    'AIzaSyBG1M-6XMQ35ElyKZ_yamC0ncWkXDojWtY',
                                                androidGoogleMapsApiKey:
                                                    'AIzaSyCbBFFhaGnAtqZU3zPf1VVZx3NKArQnQXg',
                                                webGoogleMapsApiKey:
                                                    'AIzaSyCrH3nxXKIbraj0bsiysIovGbv3OpltPjg',
                                                onSelect: (place) async {
                                                  setState(() =>
                                                      _model.placePickerValue =
                                                          place);
                                                },
                                                defaultText: 'Select Address',
                                                icon: const Icon(
                                                  Icons.place,
                                                  color: Colors.white,
                                                  size: 16.0,
                                                ),
                                                buttonOptions: FFButtonOptions(
                                                  width: 200.0,
                                                  height: 50.0,
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
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 12.0, 0.0, 12.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              child:
                                                  FlutterFlowDropDown<String>(
                                                controller: _model
                                                        .businessTypeValueController ??=
                                                    FormFieldController<String>(
                                                  _model.businessTypeValue ??=
                                                      widget.businessType,
                                                ),
                                                options: List<String>.from([
                                                  'Retail',
                                                  'Brand',
                                                  'Medical',
                                                  'Experience'
                                                ]),
                                                optionLabels: const [
                                                  'Retail/Dispensary',
                                                  'Brand',
                                                  'Medical',
                                                  'Experience'
                                                ],
                                                onChanged: (val) => setState(
                                                    () => _model
                                                            .businessTypeValue =
                                                        val),
                                                width: 180.0,
                                                height: 50.0,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                                hintText: 'Business Type',
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                elevation: 2.0,
                                                borderColor:
                                                    FlutterFlowTheme.of(context)
                                                        .grayIcon,
                                                borderWidth: 0.0,
                                                borderRadius: 10.0,
                                                margin: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 4.0, 12.0, 4.0),
                                                hidesUnderline: true,
                                                isSearchable: false,
                                                isMultiSelect: false,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 8.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              child:
                                                  FlutterFlowDropDown<String>(
                                                controller: _model
                                                        .categoryTypeValueController ??=
                                                    FormFieldController<String>(
                                                  _model.categoryTypeValue ??=
                                                      '',
                                                ),
                                                options: List<String>.from([
                                                  'Dispensary',
                                                  'Brand',
                                                  'Services',
                                                  'Accessories',
                                                  'Experiences',
                                                  'Food',
                                                  'Wellness',
                                                  'Education',
                                                  'Medical',
                                                  'Other'
                                                ]),
                                                optionLabels: const [
                                                  'Dispensary/Retailer',
                                                  'Brand/Product',
                                                  'Ancillary/Services',
                                                  'Accessories',
                                                  'Experiences',
                                                  'Food/Beverage',
                                                  'Wellness/Beauty',
                                                  'Education',
                                                  'Medical',
                                                  'Other'
                                                ],
                                                onChanged: (val) => setState(
                                                    () => _model
                                                            .categoryTypeValue =
                                                        val),
                                                width: 180.0,
                                                height: 50.0,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                                hintText: 'Category',
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                elevation: 2.0,
                                                borderColor:
                                                    FlutterFlowTheme.of(context)
                                                        .grayIcon,
                                                borderWidth: 0.0,
                                                borderRadius: 10.0,
                                                margin: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 4.0, 12.0, 4.0),
                                                hidesUnderline: true,
                                                isSearchable: false,
                                                isMultiSelect: false,
                                              ),
                                            ),
                                          ],
                                        ),
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
                                                    registerBusinessLegalizationRecord
                                                        .productTypes
                                                        .toList(),
                                                onChanged: (val) => setState(() =>
                                                    _model.productCheckboxGroupValues =
                                                        val),
                                                controller: _model
                                                        .productCheckboxGroupValueController ??=
                                                    FormFieldController<
                                                        List<String>>(
                                                  widget.productTypes,
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
                                                        .productCheckboxGroupValues !=
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
                                          controller: _model.websiteController,
                                          focusNode: _model.websiteFocusNode,
                                          autofocus: true,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelText: 'Website url',
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium,
                                            hintText: 'https://www.example.com',
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
                                              borderSide: const BorderSide(
                                                color: Color(0x00000000),
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
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 15.0, 0.0, 5.0),
                                        child: Text(
                                          'License',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium,
                                        ),
                                      ),
                                      FlutterFlowDropDown<String>(
                                        controller: _model
                                                .licenseTypeValueController ??=
                                            FormFieldController<String>(null),
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
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                        hintText: 'License Type',
                                        elevation: 2.0,
                                        borderColor:
                                            FlutterFlowTheme.of(context)
                                                .grayIcon,
                                        borderWidth: 0.0,
                                        borderRadius: 10.0,
                                        margin: const EdgeInsetsDirectional.fromSTEB(
                                            12.0, 4.0, 12.0, 4.0),
                                        hidesUnderline: true,
                                        isSearchable: false,
                                        isMultiSelect: false,
                                      ),
                                      if (_model.licenseTypeValue !=
                                          'Not Applicable')
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 4.0, 0.0),
                                                child: FFButtonWidget(
                                                  onPressed: () async {
                                                    logFirebaseEvent(
                                                        'REGISTER_BUSINESS_EXPIRATION_DATE_BTN_ON');
                                                    logFirebaseEvent(
                                                        'Button_date_time_picker');
                                                    final datePickedDate =
                                                        await showDatePicker(
                                                      context: context,
                                                      initialDate:
                                                          getCurrentTimestamp,
                                                      firstDate:
                                                          getCurrentTimestamp,
                                                      lastDate: DateTime(2050),
                                                    );

                                                    if (datePickedDate !=
                                                        null) {
                                                      safeSetState(() {
                                                        _model.datePicked =
                                                            DateTime(
                                                          datePickedDate.year,
                                                          datePickedDate.month,
                                                          datePickedDate.day,
                                                        );
                                                      });
                                                    }
                                                  },
                                                  text:
                                                      _model.datePicked != null
                                                          ? _model.datePicked!
                                                              .toString()
                                                          : 'Expiration Date',
                                                  icon: FaIcon(
                                                    FontAwesomeIcons
                                                        .calendarCheck,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .customColor1,
                                                    size: 16.0,
                                                  ),
                                                  options: FFButtonOptions(
                                                    height: 50.0,
                                                    padding:
                                                        const EdgeInsets.all(0.0),
                                                    iconPadding:
                                                        const EdgeInsets.all(10.0),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                    textStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleSmall,
                                                    elevation: 2.0,
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
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText: 'License Number',
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
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0x00000000),
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
                                        child: SwitchListTile(
                                          value: _model
                                              .switchListSocialValue ??= true,
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
                                          activeColor:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                          activeTrackColor:
                                              FlutterFlowTheme.of(context)
                                                  .lineColor,
                                          dense: false,
                                          controlAffinity:
                                              ListTileControlAffinity.trailing,
                                        ),
                                      ),
                                      if (_model.switchListSocialValue == true)
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
                                                        0.0, 12.0, 0.0, 12.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
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
                                                              .iGTextFieldController,
                                                          focusNode: _model
                                                              .iGTextFieldFocusNode,
                                                          autofocus: true,
                                                          obscureText: false,
                                                          decoration:
                                                              InputDecoration(
                                                            labelText:
                                                                'Instagram',
                                                            labelStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium,
                                                            hintText:
                                                                'https://instagram.com/',
                                                            hintStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall,
                                                            enabledBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
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
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium,
                                                          keyboardType:
                                                              TextInputType.url,
                                                          validator: _model
                                                              .iGTextFieldControllerValidator
                                                              .asValidator(
                                                                  context),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 12.0, 0.0, 12.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
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
                                                              .fBTextFieldController,
                                                          focusNode: _model
                                                              .fBTextFieldFocusNode,
                                                          autofocus: true,
                                                          obscureText: false,
                                                          decoration:
                                                              InputDecoration(
                                                            labelText:
                                                                'Facebook',
                                                            labelStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium,
                                                            hintText:
                                                                'https:/facebook.com/',
                                                            hintStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall,
                                                            enabledBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
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
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium,
                                                          keyboardType:
                                                              TextInputType.url,
                                                          validator: _model
                                                              .fBTextFieldControllerValidator
                                                              .asValidator(
                                                                  context),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 12.0, 0.0, 12.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
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
                                                              .twitterTextFieldController,
                                                          focusNode: _model
                                                              .twitterTextFieldFocusNode,
                                                          autofocus: true,
                                                          obscureText: false,
                                                          decoration:
                                                              InputDecoration(
                                                            labelText:
                                                                'Twitter',
                                                            labelStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium,
                                                            hintText:
                                                                'https://twitter.com/',
                                                            hintStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall,
                                                            enabledBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
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
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium,
                                                          keyboardType:
                                                              TextInputType.url,
                                                          validator: _model
                                                              .twitterTextFieldControllerValidator
                                                              .asValidator(
                                                                  context),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 12.0, 0.0, 12.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
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
                                                              .tiktokTextFieldController,
                                                          focusNode: _model
                                                              .tiktokTextFieldFocusNode,
                                                          autofocus: true,
                                                          obscureText: false,
                                                          decoration:
                                                              InputDecoration(
                                                            labelText: 'Tiktok',
                                                            labelStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium,
                                                            hintText:
                                                                'https://tiktok.com/@',
                                                            hintStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall,
                                                            enabledBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
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
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium,
                                                          keyboardType:
                                                              TextInputType.url,
                                                          validator: _model
                                                              .tiktokTextFieldControllerValidator
                                                              .asValidator(
                                                                  context),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 12.0, 0.0, 12.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
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
                                                              .linkedINTextFieldController,
                                                          focusNode: _model
                                                              .linkedINTextFieldFocusNode,
                                                          autofocus: true,
                                                          obscureText: false,
                                                          decoration:
                                                              InputDecoration(
                                                            labelText:
                                                                'LinkedIN',
                                                            labelStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium,
                                                            hintText:
                                                                'https:/linkedin.com/',
                                                            hintStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall,
                                                            enabledBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
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
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
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
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .error,
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
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .error,
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          1.0),
                                                            ),
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium,
                                                          keyboardType:
                                                              TextInputType.url,
                                                          validator: _model
                                                              .linkedINTextFieldControllerValidator
                                                              .asValidator(
                                                                  context),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 15.0, 0.0, 15.0),
                                        child: SwitchListTile(
                                          value: _model.switchListPOSValue ??=
                                              false,
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
                                          activeColor:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                          activeTrackColor:
                                              FlutterFlowTheme.of(context)
                                                  .lineColor,
                                          dense: false,
                                          controlAffinity:
                                              ListTileControlAffinity.trailing,
                                        ),
                                      ),
                                      if (_model.switchListPOSValue == true)
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
                                                      .pOSSystemController,
                                                  focusNode:
                                                      _model.pOSSystemFocusNode,
                                                  autofocus: true,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText: 'POS System',
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
                                                      borderSide: const BorderSide(
                                                        color:
                                                            Color(0x00000000),
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
                                      const Divider(
                                        thickness: 1.0,
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 32.0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            logFirebaseEvent(
                                                'REGISTER_BUSINESS_PAGE_SUBMIT_BTN_ON_TAP');
                                            logFirebaseEvent(
                                                'Button_validate_form');
                                            if (_model.formKey.currentState ==
                                                    null ||
                                                !_model.formKey.currentState!
                                                    .validate()) {
                                              return;
                                            }
                                            if (_model.placePickerValue ==
                                                const FFPlace()) {
                                              return;
                                            }
                                            if (_model.businessTypeValue ==
                                                null) {
                                              return;
                                            }
                                            if (_model.categoryTypeValue ==
                                                null) {
                                              return;
                                            }
                                            if (_model.licenseTypeValue ==
                                                null) {
                                              return;
                                            }
                                            logFirebaseEvent(
                                                'Button_backend_call');

                                            var vendorSubmissionsRecordReference =
                                                VendorSubmissionsRecord
                                                    .collection
                                                    .doc();
                                            await vendorSubmissionsRecordReference
                                                .set({
                                              ...createVendorSubmissionsRecordData(
                                                vendorName: _model
                                                    .businessNameController
                                                    .text,
                                                vendorPhone:
                                                    _model.phoneController.text,
                                                vendorEmail:
                                                    _model.emailController.text,
                                                address: _model
                                                    .placePickerValue.address,
                                                category:
                                                    _model.categoryTypeValue,
                                                createdAt: getCurrentTimestamp,
                                                status: 'Pending',
                                                posSystem:
                                                    _model.switchListPOSValue,
                                                postSystemName: _model
                                                    .pOSSystemController.text,
                                                owner: currentUserReference,
                                                facebook: _model
                                                    .fBTextFieldController.text,
                                                instagram: _model
                                                    .iGTextFieldController.text,
                                                twitter: _model
                                                    .twitterTextFieldController
                                                    .text,
                                                tiktok: _model
                                                    .tiktokTextFieldController
                                                    .text,
                                                linkedin: _model
                                                    .linkedINTextFieldController
                                                    .text,
                                                licenseType:
                                                    _model.licenseTypeValue,
                                                licenseExpiration:
                                                    _model.datePicked,
                                                licenseNumber: _model
                                                    .licenseNumberController
                                                    .text,
                                                id: random_data.randomString(
                                                  10,
                                                  15,
                                                  true,
                                                  true,
                                                  true,
                                                ),
                                                location: _model
                                                    .placePickerValue.latLng,
                                                firstName: _model
                                                    .firstNameController.text,
                                                lastName: _model
                                                    .lastNameController.text,
                                                website: _model
                                                    .websiteController.text,
                                                social: _model
                                                    .switchListSocialValue,
                                                approved: false,
                                                brand:
                                                    _model.businessTypeValue ==
                                                            'Brand'
                                                        ? true
                                                        : false,
                                                type: _model.businessTypeValue,
                                                state:
                                                    registerBusinessLegalizationRecord
                                                        .state,
                                              ),
                                              ...mapToFirestore(
                                                {
                                                  'productTypes': _model
                                                      .productCheckboxGroupValues,
                                                },
                                              ),
                                            });
                                            _model.newVendorSubmission =
                                                VendorSubmissionsRecord
                                                    .getDocumentFromData({
                                              ...createVendorSubmissionsRecordData(
                                                vendorName: _model
                                                    .businessNameController
                                                    .text,
                                                vendorPhone:
                                                    _model.phoneController.text,
                                                vendorEmail:
                                                    _model.emailController.text,
                                                address: _model
                                                    .placePickerValue.address,
                                                category:
                                                    _model.categoryTypeValue,
                                                createdAt: getCurrentTimestamp,
                                                status: 'Pending',
                                                posSystem:
                                                    _model.switchListPOSValue,
                                                postSystemName: _model
                                                    .pOSSystemController.text,
                                                owner: currentUserReference,
                                                facebook: _model
                                                    .fBTextFieldController.text,
                                                instagram: _model
                                                    .iGTextFieldController.text,
                                                twitter: _model
                                                    .twitterTextFieldController
                                                    .text,
                                                tiktok: _model
                                                    .tiktokTextFieldController
                                                    .text,
                                                linkedin: _model
                                                    .linkedINTextFieldController
                                                    .text,
                                                licenseType:
                                                    _model.licenseTypeValue,
                                                licenseExpiration:
                                                    _model.datePicked,
                                                licenseNumber: _model
                                                    .licenseNumberController
                                                    .text,
                                                id: random_data.randomString(
                                                  10,
                                                  15,
                                                  true,
                                                  true,
                                                  true,
                                                ),
                                                location: _model
                                                    .placePickerValue.latLng,
                                                firstName: _model
                                                    .firstNameController.text,
                                                lastName: _model
                                                    .lastNameController.text,
                                                website: _model
                                                    .websiteController.text,
                                                social: _model
                                                    .switchListSocialValue,
                                                approved: false,
                                                brand:
                                                    _model.businessTypeValue ==
                                                            'Brand'
                                                        ? true
                                                        : false,
                                                type: _model.businessTypeValue,
                                                state:
                                                    registerBusinessLegalizationRecord
                                                        .state,
                                              ),
                                              ...mapToFirestore(
                                                {
                                                  'productTypes': _model
                                                      .productCheckboxGroupValues,
                                                },
                                              ),
                                            }, vendorSubmissionsRecordReference);
                                            logFirebaseEvent(
                                                'Button_backend_call');

                                            await PlacesRecord.collection
                                                .doc()
                                                .set({
                                              ...createPlacesRecordData(
                                                locationName: _model
                                                    .placePickerValue.name,
                                                address: _model
                                                    .placePickerValue.address,
                                                createdAt: getCurrentTimestamp,
                                                vendorName: _model
                                                    .businessNameController
                                                    .text,
                                                owner: currentUserReference,
                                                placePosition: _model
                                                    .placePickerValue.latLng,
                                                approved: false,
                                                vendorSubmissionId: _model
                                                    .newVendorSubmission?.id,
                                                type: _model.businessTypeValue,
                                                state:
                                                    registerBusinessLegalizationRecord
                                                        .state,
                                              ),
                                              ...mapToFirestore(
                                                {
                                                  'category': [
                                                    _model.categoryTypeValue
                                                  ],
                                                },
                                              ),
                                            });
                                            logFirebaseEvent(
                                                'Button_backend_call');

                                            await currentUserReference!
                                                .update(createUsersRecordData(
                                              vendorSubmission: _model
                                                  .newVendorSubmission
                                                  ?.reference,
                                            ));
                                            logFirebaseEvent(
                                                'Button_backend_call');
                                            _model.apiResult5v8 =
                                                await CRMIntegtationGroup
                                                    .createContactCall
                                                    .call(
                                              name:
                                                  '${_model.firstNameController.text} ${_model.lastNameController.text}',
                                              email: currentUserEmail,
                                              tag: 'vendorSubmission',
                                              documentID:
                                                  currentUserReference?.id,
                                            );
                                            if ((_model
                                                    .apiResult5v8?.succeeded ??
                                                true)) {
                                              logFirebaseEvent(
                                                  'Button_alert_dialog');
                                              await showDialog(
                                                context: context,
                                                builder: (alertDialogContext) {
                                                  return WebViewAware(
                                                    child: AlertDialog(
                                                      title: const Text('Success'),
                                                      content: const Text(
                                                          'Your business registration has been submitted. We will be in touch to verify information before approval.'),
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
                                              logFirebaseEvent(
                                                  'Button_navigate_to');

                                              context.pushNamed('Home');
                                            } else {
                                              logFirebaseEvent(
                                                  'Button_alert_dialog');
                                              await showDialog(
                                                context: context,
                                                builder: (alertDialogContext) {
                                                  return WebViewAware(
                                                    child: AlertDialog(
                                                      title: const Text(
                                                          'Something Went Wrong'),
                                                      content: const Text(
                                                          'Please try again. Visit buybrokoli.com/support to submit a ticket if the issue persists. '),
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
                                            }

                                            setState(() {});
                                          },
                                          text: 'Submit',
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
                ),
              ),
            ));
      },
    );
  }
}
