import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'register_business_retail_model.dart';
export 'register_business_retail_model.dart';

class RegisterBusinessRetailWidget extends StatefulWidget {
  const RegisterBusinessRetailWidget({
    super.key,
    required this.state,
    this.business,
    this.pageLink,
  });

  final DocumentReference? state;
  final DocumentReference? business;
  final String? pageLink;

  @override
  State<RegisterBusinessRetailWidget> createState() =>
      _RegisterBusinessRetailWidgetState();
}

class _RegisterBusinessRetailWidgetState
    extends State<RegisterBusinessRetailWidget> {
  late RegisterBusinessRetailModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RegisterBusinessRetailModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'RegisterBusiness_Retail'});
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
        final registerBusinessRetailLegalizationRecord = snapshot.data!;
        return Title(
            title: 'RegisterBusiness_Retail',
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
                    visible: (registerBusinessRetailLegalizationRecord
                                .medicalCannabis ==
                            true) ||
                        (registerBusinessRetailLegalizationRecord.medicalCBD ==
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
                            'REGISTER_BUSINESS_RETAIL_arrow_back_roun');
                        logFirebaseEvent('IconButton_navigate_back');
                        context.pop();
                      },
                    ),
                  ),
                  actions: const [],
                  centerTitle: true,
                  elevation: 0.0,
                ),
                body: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    if ((registerBusinessRetailLegalizationRecord
                                .medicalCannabis ==
                            true) ||
                        (registerBusinessRetailLegalizationRecord.medicalCBD ==
                            true))
                      Expanded(
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          decoration: const BoxDecoration(),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 8.0, 16.0, 8.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        'What type of products do you sell?',
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
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            8.0, 0.0, 8.0, 0.0),
                                        child: Text(
                                          'The below options are available in your state.',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: FlutterFlowChoiceChips(
                                  options:
                                      registerBusinessRetailLegalizationRecord
                                          .productTypes
                                          .map((label) => ChipData(label))
                                          .toList(),
                                  onChanged: (val) async {
                                    setState(
                                        () => _model.choiceChipsValues = val);
                                    logFirebaseEvent(
                                        'REGISTER_BUSINESS_RETAIL_ChoiceChips_r9m');
                                    logFirebaseEvent(
                                        'ChoiceChips_update_app_state');
                                    setState(() {
                                      FFAppState().productList = _model
                                          .choiceChipsValues!
                                          .toList()
                                          .cast<String>();
                                    });
                                  },
                                  selectedChipStyle: ChipStyle(
                                    backgroundColor:
                                        FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily),
                                        ),
                                    iconColor:
                                        FlutterFlowTheme.of(context).primary,
                                    iconSize: 18.0,
                                    elevation: 4.0,
                                    borderColor:
                                        FlutterFlowTheme.of(context).primary,
                                    borderWidth: 2.0,
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  unselectedChipStyle: ChipStyle(
                                    backgroundColor:
                                        FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily),
                                        ),
                                    iconColor: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    iconSize: 18.0,
                                    elevation: 0.0,
                                    borderColor:
                                        FlutterFlowTheme.of(context).lineColor,
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  chipSpacing: 12.0,
                                  rowSpacing: 12.0,
                                  multiselect: true,
                                  initialized: _model.choiceChipsValues != null,
                                  alignment: WrapAlignment.center,
                                  controller:
                                      _model.choiceChipsValueController ??=
                                          FormFieldController<List<String>>(
                                    [],
                                  ),
                                  wrapped: true,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 24.0),
                                child: Container(
                                  constraints: const BoxConstraints(
                                    maxWidth: 1000.0,
                                  ),
                                  decoration: const BoxDecoration(),
                                  child: Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              logFirebaseEvent(
                                                  'REGISTER_BUSINESS_RETAIL_NEXT_BTN_ON_TAP');
                                              if (widget.business != null) {
                                                logFirebaseEvent(
                                                    'Button_navigate_to');

                                                context.pushNamed(
                                                  'ClaimBusinesses',
                                                  queryParameters: {
                                                    'business': serializeParam(
                                                      widget.business,
                                                      ParamType
                                                          .DocumentReference,
                                                    ),
                                                    'pageLink': serializeParam(
                                                      widget.pageLink,
                                                      ParamType.String,
                                                    ),
                                                    'state': serializeParam(
                                                      registerBusinessRetailLegalizationRecord
                                                          .state,
                                                      ParamType.String,
                                                    ),
                                                    'productList':
                                                        serializeParam(
                                                      FFAppState().productList,
                                                      ParamType.String,
                                                      true,
                                                    ),
                                                    'businessType':
                                                        serializeParam(
                                                      'Retail',
                                                      ParamType.String,
                                                    ),
                                                  }.withoutNulls,
                                                );
                                              } else {
                                                logFirebaseEvent(
                                                    'Button_navigate_to');

                                                context.pushNamed(
                                                  'RegisterBusiness',
                                                  queryParameters: {
                                                    'businessType':
                                                        serializeParam(
                                                      'Retail',
                                                      ParamType.String,
                                                    ),
                                                    'state': serializeParam(
                                                      widget.state,
                                                      ParamType
                                                          .DocumentReference,
                                                    ),
                                                    'productTypes':
                                                        serializeParam(
                                                      FFAppState().productList,
                                                      ParamType.String,
                                                      true,
                                                    ),
                                                  }.withoutNulls,
                                                );
                                              }
                                            },
                                            text: 'Next',
                                            options: FFButtonOptions(
                                              height: 50.0,
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
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ));
      },
    );
  }
}
