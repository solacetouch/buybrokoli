import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'register_business_medical_model.dart';
export 'register_business_medical_model.dart';

class RegisterBusinessMedicalWidget extends StatefulWidget {
  const RegisterBusinessMedicalWidget({
    super.key,
    required this.state,
    this.business,
    required this.pageLink,
  });

  final DocumentReference? state;
  final DocumentReference? business;
  final String? pageLink;

  @override
  State<RegisterBusinessMedicalWidget> createState() =>
      _RegisterBusinessMedicalWidgetState();
}

class _RegisterBusinessMedicalWidgetState
    extends State<RegisterBusinessMedicalWidget> with TickerProviderStateMixin {
  late RegisterBusinessMedicalModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'containerOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: const Offset(0.0, 90.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: const Offset(0.0, 90.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: const Offset(0.0, 90.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RegisterBusinessMedicalModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'RegisterBusiness_Medical'});
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
        final registerBusinessMedicalLegalizationRecord = snapshot.data!;
        return Title(
            title: 'RegisterBusiness_Medical',
            color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
            child: GestureDetector(
              onTap: () => _model.unfocusNode.canRequestFocus
                  ? FocusScope.of(context).requestFocus(_model.unfocusNode)
                  : FocusScope.of(context).unfocus(),
              child: Scaffold(
                key: scaffoldKey,
                backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
                appBar: AppBar(
                  backgroundColor:
                      FlutterFlowTheme.of(context).primaryBackground,
                  automaticallyImplyLeading: false,
                  leading: Visibility(
                    visible: (registerBusinessMedicalLegalizationRecord
                                .medicalCannabis ==
                            true) ||
                        (registerBusinessMedicalLegalizationRecord.medicalCBD ==
                            true),
                    child: FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30.0,
                      borderWidth: 1.0,
                      buttonSize: 60.0,
                      icon: Icon(
                        Icons.arrow_back_rounded,
                        color: FlutterFlowTheme.of(context).primary,
                        size: 30.0,
                      ),
                      onPressed: () async {
                        logFirebaseEvent(
                            'REGISTER_BUSINESS_MEDICAL_arrow_back_rou');
                        logFirebaseEvent('IconButton_navigate_back');
                        context.pop();
                      },
                    ),
                  ),
                  actions: const [],
                  centerTitle: true,
                  elevation: 0.0,
                ),
                body: Align(
                  alignment: const AlignmentDirectional(0.0, -1.0),
                  child: Container(
                    constraints: const BoxConstraints(
                      maxWidth: 1000.0,
                    ),
                    decoration: const BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        if ((registerBusinessMedicalLegalizationRecord
                                    .medicalCannabis ==
                                true) ||
                            (registerBusinessMedicalLegalizationRecord
                                    .medicalCBD ==
                                true))
                          Expanded(
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              decoration: const BoxDecoration(),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Text(
                                            'What type of medical services do you provide?',
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .headlineMedium,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    8.0, 0.0, 8.0, 0.0),
                                            child: Text(
                                              'The below options are available in your state',
                                              textAlign: TextAlign.center,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          child: Container(
                                            height: 500.0,
                                            decoration: const BoxDecoration(),
                                            child: ListView(
                                              padding: EdgeInsets.zero,
                                              scrollDirection: Axis.vertical,
                                              children: [
                                                if (registerBusinessMedicalLegalizationRecord
                                                        .medicalCannabis ==
                                                    true)
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 8.0,
                                                                16.0, 8.0),
                                                    child: InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        logFirebaseEvent(
                                                            'REGISTER_BUSINESS_MEDICAL_Container_ebgn');
                                                        logFirebaseEvent(
                                                            'Container_update_app_state');
                                                        setState(() {
                                                          FFAppState()
                                                              .addToProductList(
                                                                  'Cannabis');
                                                        });
                                                        logFirebaseEvent(
                                                            'Container_update_app_state');
                                                        setState(() {
                                                          FFAppState()
                                                              .addToProductList(
                                                                  'Services');
                                                        });
                                                        if (widget.business !=
                                                            null) {
                                                          logFirebaseEvent(
                                                              'Container_navigate_to');

                                                          context.pushNamed(
                                                            'ClaimBusinesses',
                                                            queryParameters: {
                                                              'business':
                                                                  serializeParam(
                                                                widget.business,
                                                                ParamType
                                                                    .DocumentReference,
                                                              ),
                                                              'pageLink':
                                                                  serializeParam(
                                                                widget.pageLink,
                                                                ParamType
                                                                    .String,
                                                              ),
                                                              'state':
                                                                  serializeParam(
                                                                registerBusinessMedicalLegalizationRecord
                                                                    .state,
                                                                ParamType
                                                                    .String,
                                                              ),
                                                              'productList':
                                                                  serializeParam(
                                                                FFAppState()
                                                                    .productList,
                                                                ParamType
                                                                    .String,
                                                                true,
                                                              ),
                                                              'businessType':
                                                                  serializeParam(
                                                                'Medical',
                                                                ParamType
                                                                    .String,
                                                              ),
                                                            }.withoutNulls,
                                                          );
                                                        } else {
                                                          logFirebaseEvent(
                                                              'Container_navigate_to');

                                                          context.pushNamed(
                                                            'RegisterBusiness',
                                                            queryParameters: {
                                                              'businessType':
                                                                  serializeParam(
                                                                'Medical',
                                                                ParamType
                                                                    .String,
                                                              ),
                                                              'state':
                                                                  serializeParam(
                                                                widget.state,
                                                                ParamType
                                                                    .DocumentReference,
                                                              ),
                                                              'productTypes':
                                                                  serializeParam(
                                                                FFAppState()
                                                                    .productList,
                                                                ParamType
                                                                    .String,
                                                                true,
                                                              ),
                                                            }.withoutNulls,
                                                          );
                                                        }
                                                      },
                                                      child: Container(
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                0.4,
                                                        height: 150.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          border: Border.all(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondary,
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets.all(
                                                                  12.0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              FaIcon(
                                                                FontAwesomeIcons
                                                                    .cannabis,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                size: 44.0,
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            12.0,
                                                                            0.0,
                                                                            4.0),
                                                                child: Text(
                                                                  'Medical Marijuana only',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                            'containerOnPageLoadAnimation1']!),
                                                  ),
                                                if (registerBusinessMedicalLegalizationRecord
                                                        .medicalCBD ==
                                                    true)
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 8.0,
                                                                16.0, 8.0),
                                                    child: InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        logFirebaseEvent(
                                                            'REGISTER_BUSINESS_MEDICAL_Container_cb29');
                                                        logFirebaseEvent(
                                                            'Container_update_app_state');
                                                        setState(() {
                                                          FFAppState()
                                                              .addToProductList(
                                                                  'Broad-spectrum CBD');
                                                        });
                                                        logFirebaseEvent(
                                                            'Container_update_app_state');
                                                        setState(() {
                                                          FFAppState()
                                                              .addToProductList(
                                                                  'Services');
                                                        });
                                                        if (widget.business !=
                                                            null) {
                                                          logFirebaseEvent(
                                                              'Container_navigate_to');

                                                          context.pushNamed(
                                                            'ClaimBusinesses',
                                                            queryParameters: {
                                                              'business':
                                                                  serializeParam(
                                                                widget.business,
                                                                ParamType
                                                                    .DocumentReference,
                                                              ),
                                                              'pageLink':
                                                                  serializeParam(
                                                                widget.pageLink,
                                                                ParamType
                                                                    .String,
                                                              ),
                                                              'state':
                                                                  serializeParam(
                                                                registerBusinessMedicalLegalizationRecord
                                                                    .state,
                                                                ParamType
                                                                    .String,
                                                              ),
                                                              'productList':
                                                                  serializeParam(
                                                                FFAppState()
                                                                    .productList,
                                                                ParamType
                                                                    .String,
                                                                true,
                                                              ),
                                                              'businessType':
                                                                  serializeParam(
                                                                'Medical',
                                                                ParamType
                                                                    .String,
                                                              ),
                                                            }.withoutNulls,
                                                          );
                                                        } else {
                                                          logFirebaseEvent(
                                                              'Container_navigate_to');

                                                          context.pushNamed(
                                                            'RegisterBusiness',
                                                            queryParameters: {
                                                              'businessType':
                                                                  serializeParam(
                                                                'Medical',
                                                                ParamType
                                                                    .String,
                                                              ),
                                                              'state':
                                                                  serializeParam(
                                                                widget.state,
                                                                ParamType
                                                                    .DocumentReference,
                                                              ),
                                                              'productTypes':
                                                                  serializeParam(
                                                                FFAppState()
                                                                    .productList,
                                                                ParamType
                                                                    .String,
                                                                true,
                                                              ),
                                                            }.withoutNulls,
                                                          );
                                                        }
                                                      },
                                                      child: Container(
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                0.4,
                                                        height: 150.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          border: Border.all(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondary,
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets.all(
                                                                  12.0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Icon(
                                                                Icons
                                                                    .water_drop_sharp,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                size: 44.0,
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            12.0,
                                                                            0.0,
                                                                            4.0),
                                                                child: Text(
                                                                  'Medical CBD only',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                            'containerOnPageLoadAnimation2']!),
                                                  ),
                                                if ((registerBusinessMedicalLegalizationRecord
                                                            .medicalCannabis ==
                                                        true) &&
                                                    (registerBusinessMedicalLegalizationRecord
                                                            .medicalCBD ==
                                                        true))
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 8.0,
                                                                16.0, 8.0),
                                                    child: InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        logFirebaseEvent(
                                                            'REGISTER_BUSINESS_MEDICAL_Container_lmnn');
                                                        logFirebaseEvent(
                                                            'Container_update_app_state');
                                                        setState(() {
                                                          FFAppState()
                                                              .addToProductList(
                                                                  'CannabisBroad-spectrum CBDHemp-derived CBDServices');
                                                        });
                                                        logFirebaseEvent(
                                                            'Container_update_app_state');
                                                        setState(() {
                                                          FFAppState()
                                                              .addToProductList(
                                                                  'Broad-spectrum CBD');
                                                        });
                                                        logFirebaseEvent(
                                                            'Container_update_app_state');
                                                        setState(() {
                                                          FFAppState()
                                                              .addToProductList(
                                                                  'Services');
                                                        });
                                                        if (widget.business !=
                                                            null) {
                                                          logFirebaseEvent(
                                                              'Container_navigate_to');

                                                          context.pushNamed(
                                                            'ClaimBusinesses',
                                                            queryParameters: {
                                                              'business':
                                                                  serializeParam(
                                                                widget.business,
                                                                ParamType
                                                                    .DocumentReference,
                                                              ),
                                                              'pageLink':
                                                                  serializeParam(
                                                                widget.pageLink,
                                                                ParamType
                                                                    .String,
                                                              ),
                                                              'state':
                                                                  serializeParam(
                                                                registerBusinessMedicalLegalizationRecord
                                                                    .state,
                                                                ParamType
                                                                    .String,
                                                              ),
                                                              'productList':
                                                                  serializeParam(
                                                                FFAppState()
                                                                    .productList,
                                                                ParamType
                                                                    .String,
                                                                true,
                                                              ),
                                                              'businessType':
                                                                  serializeParam(
                                                                'Medical',
                                                                ParamType
                                                                    .String,
                                                              ),
                                                            }.withoutNulls,
                                                          );
                                                        } else {
                                                          logFirebaseEvent(
                                                              'Container_navigate_to');

                                                          context.pushNamed(
                                                            'RegisterBusiness',
                                                            queryParameters: {
                                                              'businessType':
                                                                  serializeParam(
                                                                'Medical',
                                                                ParamType
                                                                    .String,
                                                              ),
                                                              'state':
                                                                  serializeParam(
                                                                widget.state,
                                                                ParamType
                                                                    .DocumentReference,
                                                              ),
                                                              'productTypes':
                                                                  serializeParam(
                                                                FFAppState()
                                                                    .productList,
                                                                ParamType
                                                                    .String,
                                                                true,
                                                              ),
                                                            }.withoutNulls,
                                                          );
                                                        }
                                                      },
                                                      child: Container(
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                1.0,
                                                        height: 150.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          border: Border.all(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondary,
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets.all(
                                                                  12.0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              FaIcon(
                                                                FontAwesomeIcons
                                                                    .cannabis,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                size: 44.0,
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            12.0,
                                                                            0.0,
                                                                            4.0),
                                                                child: Text(
                                                                  'Medical Marijuana & CBD',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                            'containerOnPageLoadAnimation3']!),
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
                            ),
                          ),
                        if ((registerBusinessMedicalLegalizationRecord
                                    .medicalCannabis ==
                                false) &&
                            (registerBusinessMedicalLegalizationRecord
                                    .medicalCBD ==
                                false))
                          Expanded(
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Text(
                                            'Medical services are not available in ${registerBusinessMedicalLegalizationRecord.state}',
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .headlineMedium,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    8.0, 0.0, 8.0, 0.0),
                                            child: Text(
                                              'Please check back regulations change!',
                                              textAlign: TextAlign.center,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              logFirebaseEvent(
                                                  'REGISTER_BUSINESS_MEDICAL_HOME_BTN_ON_TA');
                                              logFirebaseEvent(
                                                  'Button_navigate_to');

                                              context.goNamed('Home');
                                            },
                                            text: 'Home',
                                            options: FFButtonOptions(
                                              height: 40.0,
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      24.0, 0.0, 24.0, 0.0),
                                              iconPadding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color:
                                                  FlutterFlowTheme.of(context)
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
                                              elevation: 3.0,
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
                                ],
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              ),
            ));
      },
    );
  }
}
