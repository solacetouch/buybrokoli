import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_place_picker.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'edit_location_model.dart';
export 'edit_location_model.dart';

class EditLocationWidget extends StatefulWidget {
  const EditLocationWidget({
    super.key,
    this.business,
    this.place,
  });

  final DocumentReference? business;
  final DocumentReference? place;

  @override
  State<EditLocationWidget> createState() => _EditLocationWidgetState();
}

class _EditLocationWidgetState extends State<EditLocationWidget> {
  late EditLocationModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditLocationModel());

    _model.locationNameFocusNode ??= FocusNode();

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

    return Align(
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: InkWell(
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () async {
          logFirebaseEvent('EDIT_LOCATION_Container_zd60df4h_ON_TAP');
          logFirebaseEvent('Container_navigate_back');
          context.safePop();
        },
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(),
          child: Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  StreamBuilder<PlacesRecord>(
                    stream: PlacesRecord.getDocument(widget.place!),
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
                      final containerPlacesRecord = snapshot.data!;
                      return Material(
                        color: Colors.transparent,
                        elevation: 5.0,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(0.0),
                            bottomRight: Radius.circular(0.0),
                            topLeft: Radius.circular(16.0),
                            topRight: Radius.circular(16.0),
                          ),
                        ),
                        child: Container(
                          width: double.infinity,
                          height: MediaQuery.sizeOf(context).height * 1.0,
                          constraints: const BoxConstraints(
                            maxWidth: 1000.0,
                          ),
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(0.0),
                              bottomRight: Radius.circular(0.0),
                              topLeft: Radius.circular(16.0),
                              topRight: Radius.circular(16.0),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            child: StreamBuilder<List<HoursRecord>>(
                              stream: queryHoursRecord(
                                parent: widget.place,
                                singleRecord: true,
                              ),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50.0,
                                      height: 50.0,
                                      child: SpinKitSquareCircle(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 50.0,
                                      ),
                                    ),
                                  );
                                }
                                List<HoursRecord> columnHoursRecordList =
                                    snapshot.data!;
                                final columnHoursRecord =
                                    columnHoursRecordList.isNotEmpty
                                        ? columnHoursRecordList.first
                                        : null;
                                return Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 12.0, 0.0, 0.0),
                                          child: Container(
                                            width: 50.0,
                                            height: 4.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .lineColor,
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          16.0, 12.0, 0.0, 0.0),
                                      child: Text(
                                        'Edit Location',
                                        style: FlutterFlowTheme.of(context)
                                            .headlineMedium,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: TextFormField(
                                        controller:
                                            _model.locationNameController ??=
                                                TextEditingController(
                                          text: containerPlacesRecord
                                              .locationName,
                                        ),
                                        focusNode: _model.locationNameFocusNode,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: 'Location Name',
                                          labelStyle: FlutterFlowTheme.of(
                                                  context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Lexend Deca',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.normal,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily),
                                              ),
                                          hintText: 'Main',
                                          hintStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Lexend Deca',
                                                    color: const Color(0xFF57636C),
                                                    fontSize: 14.0,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    useGoogleFonts: GoogleFonts
                                                            .asMap()
                                                        .containsKey(
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily),
                                                  ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color(0xFFDBE2E7),
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .grayIcon,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color(0x00000000),
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color(0x00000000),
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          filled: true,
                                          contentPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 10.0, 20.0, 10.0),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Lexend Deca',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .lineColor,
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.normal,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                        validator: _model
                                            .locationNameControllerValidator
                                            .asValidator(context),
                                      ),
                                    ),
                                    if (containerPlacesRecord.placePosition !=
                                        null)
                                      Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Expanded(
                                              child: Container(
                                                width: 100.0,
                                                height: 63.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .grayIcon,
                                                    width: 3.0,
                                                  ),
                                                ),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Expanded(
                                                      child: Padding(
                                                        padding: const EdgeInsets.all(
                                                            12.0),
                                                        child: Text(
                                                          containerPlacesRecord
                                                              .address,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .headlineMedium,
                                                        ),
                                                      ),
                                                    ),
                                                    FlutterFlowIconButton(
                                                      borderColor:
                                                          Colors.transparent,
                                                      borderRadius: 30.0,
                                                      borderWidth: 1.0,
                                                      buttonSize: 60.0,
                                                      icon: Icon(
                                                        Icons.delete,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .customColor3,
                                                        size: 30.0,
                                                      ),
                                                      onPressed: () async {
                                                        logFirebaseEvent(
                                                            'EDIT_LOCATION_COMP_delete_ICN_ON_TAP');
                                                        logFirebaseEvent(
                                                            'IconButton_backend_call');

                                                        await containerPlacesRecord
                                                            .reference
                                                            .update({
                                                          ...mapToFirestore(
                                                            {
                                                              'address':
                                                                  FieldValue
                                                                      .delete(),
                                                              'placePosition':
                                                                  FieldValue
                                                                      .delete(),
                                                            },
                                                          ),
                                                        });
                                                      },
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    if (containerPlacesRecord.placePosition ==
                                        null)
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 12.0, 16.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            if (containerPlacesRecord
                                                    .placePosition ==
                                                null)
                                              Expanded(
                                                child: FlutterFlowPlacePicker(
                                                  iOSGoogleMapsApiKey:
                                                      'AIzaSyBG1M-6XMQ35ElyKZ_yamC0ncWkXDojWtY',
                                                  androidGoogleMapsApiKey:
                                                      'AIzaSyCbBFFhaGnAtqZU3zPf1VVZx3NKArQnQXg',
                                                  webGoogleMapsApiKey:
                                                      'AIzaSyCrH3nxXKIbraj0bsiysIovGbv3OpltPjg',
                                                  onSelect: (place) async {
                                                    setState(() => _model
                                                            .placePickerValue =
                                                        place);
                                                  },
                                                  defaultText: 'Select Address',
                                                  icon: const Icon(
                                                    Icons.place,
                                                    color: Color(0xFF7ED957),
                                                    size: 16.0,
                                                  ),
                                                  buttonOptions:
                                                      FFButtonOptions(
                                                    width: 200.0,
                                                    height: 40.0,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBtnText,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmallFamily,
                                                          color:
                                                              const Color(0xFF95A1AC),
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmallFamily),
                                                        ),
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .lineColor,
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
                                          0.0, 16.0, 0.0, 0.0),
                                      child: SwitchListTile.adaptive(
                                        value:
                                            _model.hoursSwitchListTileValue ??=
                                                containerPlacesRecord
                                                        .hasStoreHours()
                                                    ? containerPlacesRecord
                                                        .storeHours
                                                    : false,
                                        onChanged: (newValue) async {
                                          setState(() =>
                                              _model.hoursSwitchListTileValue =
                                                  newValue);
                                        },
                                        title: Text(
                                          'Store Hours',
                                          style: FlutterFlowTheme.of(context)
                                              .titleLarge,
                                        ),
                                        subtitle: Text(
                                          'Do you want to display store hours?',
                                          style: FlutterFlowTheme.of(context)
                                              .labelMedium,
                                        ),
                                        tileColor: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        activeColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        activeTrackColor:
                                            FlutterFlowTheme.of(context)
                                                .accent1,
                                        dense: false,
                                        controlAffinity:
                                            ListTileControlAffinity.trailing,
                                      ),
                                    ),
                                    if (_model.hoursSwitchListTileValue ?? true)
                                      Expanded(
                                        child: Container(
                                          width: double.infinity,
                                          height: 399.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                          child: SingleChildScrollView(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Container(
                                                  decoration: const BoxDecoration(),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      SwitchListTile.adaptive(
                                                        value: _model
                                                                .mondaySwitchListTileValue ??=
                                                            columnHoursRecord
                                                                        ?.hasMonday() ==
                                                                    true
                                                                ? columnHoursRecord!
                                                                    .monday
                                                                : false,
                                                        onChanged:
                                                            (newValue) async {
                                                          setState(() => _model
                                                                  .mondaySwitchListTileValue =
                                                              newValue);
                                                        },
                                                        title: Text(
                                                          'Monday',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .titleSmall,
                                                        ),
                                                        subtitle: Text(
                                                          'This location open on Mondays?',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelMedium,
                                                        ),
                                                        tileColor: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        activeColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        activeTrackColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .lineColor,
                                                        dense: true,
                                                        controlAffinity:
                                                            ListTileControlAffinity
                                                                .trailing,
                                                      ),
                                                      if (_model
                                                              .mondaySwitchListTileValue ??
                                                          true)
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      12.0,
                                                                      0.0,
                                                                      12.0,
                                                                      0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              FFButtonWidget(
                                                                onPressed:
                                                                    () async {
                                                                  logFirebaseEvent(
                                                                      'EDIT_LOCATION_COMP_OPEN:_BTN_ON_TAP');
                                                                  logFirebaseEvent(
                                                                      'Button_date_time_picker');

                                                                  final datePicked1Time =
                                                                      await showTimePicker(
                                                                    context:
                                                                        context,
                                                                    initialTime:
                                                                        TimeOfDay.fromDateTime(
                                                                            getCurrentTimestamp),
                                                                  );
                                                                  if (datePicked1Time !=
                                                                      null) {
                                                                    safeSetState(
                                                                        () {
                                                                      _model.datePicked1 =
                                                                          DateTime(
                                                                        getCurrentTimestamp
                                                                            .year,
                                                                        getCurrentTimestamp
                                                                            .month,
                                                                        getCurrentTimestamp
                                                                            .day,
                                                                        datePicked1Time
                                                                            .hour,
                                                                        datePicked1Time
                                                                            .minute,
                                                                      );
                                                                    });
                                                                  }
                                                                },
                                                                text: () {
                                                                  if (columnHoursRecord
                                                                          ?.mondayStart !=
                                                                      null) {
                                                                    return dateTimeFormat(
                                                                      'jm',
                                                                      columnHoursRecord!
                                                                          .mondayStart!,
                                                                      locale: FFLocalizations.of(
                                                                              context)
                                                                          .languageCode,
                                                                    );
                                                                  } else if (_model
                                                                          .datePicked1 !=
                                                                      null) {
                                                                    return dateTimeFormat(
                                                                      'jm',
                                                                      _model
                                                                          .datePicked1,
                                                                      locale: FFLocalizations.of(
                                                                              context)
                                                                          .languageCode,
                                                                    );
                                                                  } else {
                                                                    return 'Select Hours';
                                                                  }
                                                                }(),
                                                                options:
                                                                    FFButtonOptions(
                                                                  width: 100.0,
                                                                  height: 40.0,
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          24.0,
                                                                          0.0,
                                                                          24.0,
                                                                          0.0),
                                                                  iconPadding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).titleSmallFamily,
                                                                        color: Colors
                                                                            .white,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                      ),
                                                                  elevation:
                                                                      3.0,
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .lineColor,
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            8.0,
                                                                            0.0),
                                                                child: Text(
                                                                  'to',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium,
                                                                ),
                                                              ),
                                                              FFButtonWidget(
                                                                onPressed:
                                                                    () async {
                                                                  logFirebaseEvent(
                                                                      'EDIT_LOCATION_COMP_OPEN:_BTN_ON_TAP');
                                                                  logFirebaseEvent(
                                                                      'Button_date_time_picker');

                                                                  final datePicked2Time =
                                                                      await showTimePicker(
                                                                    context:
                                                                        context,
                                                                    initialTime:
                                                                        TimeOfDay.fromDateTime(
                                                                            getCurrentTimestamp),
                                                                  );
                                                                  if (datePicked2Time !=
                                                                      null) {
                                                                    safeSetState(
                                                                        () {
                                                                      _model.datePicked2 =
                                                                          DateTime(
                                                                        getCurrentTimestamp
                                                                            .year,
                                                                        getCurrentTimestamp
                                                                            .month,
                                                                        getCurrentTimestamp
                                                                            .day,
                                                                        datePicked2Time
                                                                            .hour,
                                                                        datePicked2Time
                                                                            .minute,
                                                                      );
                                                                    });
                                                                  }
                                                                },
                                                                text: () {
                                                                  if (columnHoursRecord
                                                                          ?.mondayEnd !=
                                                                      null) {
                                                                    return dateTimeFormat(
                                                                      'jm',
                                                                      columnHoursRecord!
                                                                          .mondayStart!,
                                                                      locale: FFLocalizations.of(
                                                                              context)
                                                                          .languageCode,
                                                                    );
                                                                  } else if (_model
                                                                          .datePicked2 !=
                                                                      null) {
                                                                    return dateTimeFormat(
                                                                      'jm',
                                                                      _model
                                                                          .datePicked2,
                                                                      locale: FFLocalizations.of(
                                                                              context)
                                                                          .languageCode,
                                                                    );
                                                                  } else {
                                                                    return 'Select Hours';
                                                                  }
                                                                }(),
                                                                options:
                                                                    FFButtonOptions(
                                                                  width: 100.0,
                                                                  height: 40.0,
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          24.0,
                                                                          0.0,
                                                                          24.0,
                                                                          0.0),
                                                                  iconPadding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).titleSmallFamily,
                                                                        color: Colors
                                                                            .white,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                      ),
                                                                  elevation:
                                                                      3.0,
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .lineColor,
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  decoration: const BoxDecoration(),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      SwitchListTile.adaptive(
                                                        value: _model
                                                                .tuesdaySwitchListTileValue ??=
                                                            columnHoursRecord
                                                                        ?.hasTuesday() ==
                                                                    true
                                                                ? columnHoursRecord!
                                                                    .tuesday
                                                                : false,
                                                        onChanged:
                                                            (newValue) async {
                                                          setState(() => _model
                                                                  .tuesdaySwitchListTileValue =
                                                              newValue);
                                                        },
                                                        title: Text(
                                                          'Tuesday',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .titleSmall,
                                                        ),
                                                        subtitle: Text(
                                                          'This location open on Tuesdays?',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelMedium,
                                                        ),
                                                        tileColor: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        activeColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        activeTrackColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .lineColor,
                                                        dense: true,
                                                        controlAffinity:
                                                            ListTileControlAffinity
                                                                .trailing,
                                                      ),
                                                      if (_model
                                                              .tuesdaySwitchListTileValue ??
                                                          true)
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      12.0,
                                                                      0.0,
                                                                      12.0,
                                                                      0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              FFButtonWidget(
                                                                onPressed:
                                                                    () async {
                                                                  logFirebaseEvent(
                                                                      'EDIT_LOCATION_COMP_OPEN:_BTN_ON_TAP');
                                                                  logFirebaseEvent(
                                                                      'Button_date_time_picker');

                                                                  final datePicked3Time =
                                                                      await showTimePicker(
                                                                    context:
                                                                        context,
                                                                    initialTime:
                                                                        TimeOfDay.fromDateTime(
                                                                            getCurrentTimestamp),
                                                                  );
                                                                  if (datePicked3Time !=
                                                                      null) {
                                                                    safeSetState(
                                                                        () {
                                                                      _model.datePicked3 =
                                                                          DateTime(
                                                                        getCurrentTimestamp
                                                                            .year,
                                                                        getCurrentTimestamp
                                                                            .month,
                                                                        getCurrentTimestamp
                                                                            .day,
                                                                        datePicked3Time
                                                                            .hour,
                                                                        datePicked3Time
                                                                            .minute,
                                                                      );
                                                                    });
                                                                  }
                                                                },
                                                                text: () {
                                                                  if (columnHoursRecord
                                                                          ?.tuesdayStart !=
                                                                      null) {
                                                                    return dateTimeFormat(
                                                                      'jm',
                                                                      columnHoursRecord!
                                                                          .mondayStart!,
                                                                      locale: FFLocalizations.of(
                                                                              context)
                                                                          .languageCode,
                                                                    );
                                                                  } else if (_model
                                                                          .datePicked3 !=
                                                                      null) {
                                                                    return dateTimeFormat(
                                                                      'jm',
                                                                      _model
                                                                          .datePicked3,
                                                                      locale: FFLocalizations.of(
                                                                              context)
                                                                          .languageCode,
                                                                    );
                                                                  } else {
                                                                    return 'Select Hours';
                                                                  }
                                                                }(),
                                                                options:
                                                                    FFButtonOptions(
                                                                  width: 100.0,
                                                                  height: 40.0,
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          24.0,
                                                                          0.0,
                                                                          24.0,
                                                                          0.0),
                                                                  iconPadding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).titleSmallFamily,
                                                                        color: Colors
                                                                            .white,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                      ),
                                                                  elevation:
                                                                      3.0,
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .lineColor,
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            8.0,
                                                                            0.0),
                                                                child: Text(
                                                                  'to',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium,
                                                                ),
                                                              ),
                                                              FFButtonWidget(
                                                                onPressed:
                                                                    () async {
                                                                  logFirebaseEvent(
                                                                      'EDIT_LOCATION_COMP_OPEN:_BTN_ON_TAP');
                                                                  logFirebaseEvent(
                                                                      'Button_date_time_picker');

                                                                  final datePicked4Time =
                                                                      await showTimePicker(
                                                                    context:
                                                                        context,
                                                                    initialTime:
                                                                        TimeOfDay.fromDateTime(
                                                                            getCurrentTimestamp),
                                                                  );
                                                                  if (datePicked4Time !=
                                                                      null) {
                                                                    safeSetState(
                                                                        () {
                                                                      _model.datePicked4 =
                                                                          DateTime(
                                                                        getCurrentTimestamp
                                                                            .year,
                                                                        getCurrentTimestamp
                                                                            .month,
                                                                        getCurrentTimestamp
                                                                            .day,
                                                                        datePicked4Time
                                                                            .hour,
                                                                        datePicked4Time
                                                                            .minute,
                                                                      );
                                                                    });
                                                                  }
                                                                },
                                                                text: () {
                                                                  if (columnHoursRecord
                                                                          ?.tuesdayEnd !=
                                                                      null) {
                                                                    return dateTimeFormat(
                                                                      'jm',
                                                                      columnHoursRecord!
                                                                          .mondayStart!,
                                                                      locale: FFLocalizations.of(
                                                                              context)
                                                                          .languageCode,
                                                                    );
                                                                  } else if (_model
                                                                          .datePicked4 !=
                                                                      null) {
                                                                    return _model
                                                                        .datePicked4!
                                                                        .toString();
                                                                  } else {
                                                                    return 'Select Hours';
                                                                  }
                                                                }(),
                                                                options:
                                                                    FFButtonOptions(
                                                                  width: 100.0,
                                                                  height: 40.0,
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          24.0,
                                                                          0.0,
                                                                          24.0,
                                                                          0.0),
                                                                  iconPadding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).titleSmallFamily,
                                                                        color: Colors
                                                                            .white,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                      ),
                                                                  elevation:
                                                                      3.0,
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .lineColor,
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  decoration: const BoxDecoration(),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      SwitchListTile.adaptive(
                                                        value: _model
                                                                .wednesdaySwitchListTileValue ??=
                                                            columnHoursRecord
                                                                        ?.hasWednesday() ==
                                                                    true
                                                                ? columnHoursRecord!
                                                                    .tuesday
                                                                : false,
                                                        onChanged:
                                                            (newValue) async {
                                                          setState(() => _model
                                                                  .wednesdaySwitchListTileValue =
                                                              newValue);
                                                        },
                                                        title: Text(
                                                          'Wednesday',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .titleSmall,
                                                        ),
                                                        subtitle: Text(
                                                          'This location open on Wednesday?',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelMedium,
                                                        ),
                                                        tileColor: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        activeColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        activeTrackColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .lineColor,
                                                        dense: true,
                                                        controlAffinity:
                                                            ListTileControlAffinity
                                                                .trailing,
                                                      ),
                                                      if (_model
                                                              .wednesdaySwitchListTileValue ??
                                                          true)
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      12.0,
                                                                      0.0,
                                                                      12.0,
                                                                      0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              FFButtonWidget(
                                                                onPressed:
                                                                    () async {
                                                                  logFirebaseEvent(
                                                                      'EDIT_LOCATION_COMP_OPEN:_BTN_ON_TAP');
                                                                  logFirebaseEvent(
                                                                      'Button_date_time_picker');

                                                                  final datePicked5Time =
                                                                      await showTimePicker(
                                                                    context:
                                                                        context,
                                                                    initialTime:
                                                                        TimeOfDay.fromDateTime(
                                                                            getCurrentTimestamp),
                                                                  );
                                                                  if (datePicked5Time !=
                                                                      null) {
                                                                    safeSetState(
                                                                        () {
                                                                      _model.datePicked5 =
                                                                          DateTime(
                                                                        getCurrentTimestamp
                                                                            .year,
                                                                        getCurrentTimestamp
                                                                            .month,
                                                                        getCurrentTimestamp
                                                                            .day,
                                                                        datePicked5Time
                                                                            .hour,
                                                                        datePicked5Time
                                                                            .minute,
                                                                      );
                                                                    });
                                                                  }
                                                                },
                                                                text: () {
                                                                  if (columnHoursRecord
                                                                          ?.wednesdayStart !=
                                                                      null) {
                                                                    return dateTimeFormat(
                                                                      'jm',
                                                                      columnHoursRecord!
                                                                          .mondayStart!,
                                                                      locale: FFLocalizations.of(
                                                                              context)
                                                                          .languageCode,
                                                                    );
                                                                  } else if (_model
                                                                          .datePicked5 !=
                                                                      null) {
                                                                    return dateTimeFormat(
                                                                      'jm',
                                                                      _model
                                                                          .datePicked5,
                                                                      locale: FFLocalizations.of(
                                                                              context)
                                                                          .languageCode,
                                                                    );
                                                                  } else {
                                                                    return 'Select Hours';
                                                                  }
                                                                }(),
                                                                options:
                                                                    FFButtonOptions(
                                                                  width: 100.0,
                                                                  height: 40.0,
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          24.0,
                                                                          0.0,
                                                                          24.0,
                                                                          0.0),
                                                                  iconPadding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).titleSmallFamily,
                                                                        color: Colors
                                                                            .white,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                      ),
                                                                  elevation:
                                                                      3.0,
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .lineColor,
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            8.0,
                                                                            0.0),
                                                                child: Text(
                                                                  'to',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium,
                                                                ),
                                                              ),
                                                              FFButtonWidget(
                                                                onPressed:
                                                                    () async {
                                                                  logFirebaseEvent(
                                                                      'EDIT_LOCATION_COMP_OPEN:_BTN_ON_TAP');
                                                                  logFirebaseEvent(
                                                                      'Button_date_time_picker');

                                                                  final datePicked6Time =
                                                                      await showTimePicker(
                                                                    context:
                                                                        context,
                                                                    initialTime:
                                                                        TimeOfDay.fromDateTime(
                                                                            getCurrentTimestamp),
                                                                  );
                                                                  if (datePicked6Time !=
                                                                      null) {
                                                                    safeSetState(
                                                                        () {
                                                                      _model.datePicked6 =
                                                                          DateTime(
                                                                        getCurrentTimestamp
                                                                            .year,
                                                                        getCurrentTimestamp
                                                                            .month,
                                                                        getCurrentTimestamp
                                                                            .day,
                                                                        datePicked6Time
                                                                            .hour,
                                                                        datePicked6Time
                                                                            .minute,
                                                                      );
                                                                    });
                                                                  }
                                                                },
                                                                text: () {
                                                                  if (columnHoursRecord
                                                                          ?.wednesdayEnd !=
                                                                      null) {
                                                                    return dateTimeFormat(
                                                                      'jm',
                                                                      columnHoursRecord!
                                                                          .mondayStart!,
                                                                      locale: FFLocalizations.of(
                                                                              context)
                                                                          .languageCode,
                                                                    );
                                                                  } else if (_model
                                                                          .datePicked6 !=
                                                                      null) {
                                                                    return dateTimeFormat(
                                                                      'jm',
                                                                      _model
                                                                          .datePicked6,
                                                                      locale: FFLocalizations.of(
                                                                              context)
                                                                          .languageCode,
                                                                    );
                                                                  } else {
                                                                    return 'Select Hours';
                                                                  }
                                                                }(),
                                                                options:
                                                                    FFButtonOptions(
                                                                  width: 100.0,
                                                                  height: 40.0,
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          24.0,
                                                                          0.0,
                                                                          24.0,
                                                                          0.0),
                                                                  iconPadding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).titleSmallFamily,
                                                                        color: Colors
                                                                            .white,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                      ),
                                                                  elevation:
                                                                      3.0,
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .lineColor,
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  decoration: const BoxDecoration(),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      SwitchListTile.adaptive(
                                                        value: _model
                                                                .thursdaySwitchListTileValue ??=
                                                            columnHoursRecord
                                                                        ?.hasThursday() ==
                                                                    true
                                                                ? columnHoursRecord!
                                                                    .thursday
                                                                : false,
                                                        onChanged:
                                                            (newValue) async {
                                                          setState(() => _model
                                                                  .thursdaySwitchListTileValue =
                                                              newValue);
                                                        },
                                                        title: Text(
                                                          'Thursday',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .titleSmall,
                                                        ),
                                                        subtitle: Text(
                                                          'This location open on Thursdays?',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelMedium,
                                                        ),
                                                        tileColor: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        activeColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        activeTrackColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .lineColor,
                                                        dense: true,
                                                        controlAffinity:
                                                            ListTileControlAffinity
                                                                .trailing,
                                                      ),
                                                      if (_model
                                                              .thursdaySwitchListTileValue ??
                                                          true)
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      12.0,
                                                                      0.0,
                                                                      12.0,
                                                                      0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              FFButtonWidget(
                                                                onPressed:
                                                                    () async {
                                                                  logFirebaseEvent(
                                                                      'EDIT_LOCATION_COMP_OPEN:_BTN_ON_TAP');
                                                                  logFirebaseEvent(
                                                                      'Button_date_time_picker');

                                                                  final datePicked7Time =
                                                                      await showTimePicker(
                                                                    context:
                                                                        context,
                                                                    initialTime:
                                                                        TimeOfDay.fromDateTime(
                                                                            getCurrentTimestamp),
                                                                  );
                                                                  if (datePicked7Time !=
                                                                      null) {
                                                                    safeSetState(
                                                                        () {
                                                                      _model.datePicked7 =
                                                                          DateTime(
                                                                        getCurrentTimestamp
                                                                            .year,
                                                                        getCurrentTimestamp
                                                                            .month,
                                                                        getCurrentTimestamp
                                                                            .day,
                                                                        datePicked7Time
                                                                            .hour,
                                                                        datePicked7Time
                                                                            .minute,
                                                                      );
                                                                    });
                                                                  }
                                                                },
                                                                text: () {
                                                                  if (columnHoursRecord
                                                                          ?.thursdayStart !=
                                                                      null) {
                                                                    return dateTimeFormat(
                                                                      'jm',
                                                                      columnHoursRecord!
                                                                          .mondayStart!,
                                                                      locale: FFLocalizations.of(
                                                                              context)
                                                                          .languageCode,
                                                                    );
                                                                  } else if (_model
                                                                          .datePicked7 !=
                                                                      null) {
                                                                    return dateTimeFormat(
                                                                      'jm',
                                                                      _model
                                                                          .datePicked7,
                                                                      locale: FFLocalizations.of(
                                                                              context)
                                                                          .languageCode,
                                                                    );
                                                                  } else {
                                                                    return 'Select Hours';
                                                                  }
                                                                }(),
                                                                options:
                                                                    FFButtonOptions(
                                                                  width: 100.0,
                                                                  height: 40.0,
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          24.0,
                                                                          0.0,
                                                                          24.0,
                                                                          0.0),
                                                                  iconPadding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).titleSmallFamily,
                                                                        color: Colors
                                                                            .white,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                      ),
                                                                  elevation:
                                                                      3.0,
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .lineColor,
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            8.0,
                                                                            0.0),
                                                                child: Text(
                                                                  'to',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium,
                                                                ),
                                                              ),
                                                              FFButtonWidget(
                                                                onPressed:
                                                                    () async {
                                                                  logFirebaseEvent(
                                                                      'EDIT_LOCATION_COMP_OPEN:_BTN_ON_TAP');
                                                                  logFirebaseEvent(
                                                                      'Button_date_time_picker');

                                                                  final datePicked8Time =
                                                                      await showTimePicker(
                                                                    context:
                                                                        context,
                                                                    initialTime:
                                                                        TimeOfDay.fromDateTime(
                                                                            getCurrentTimestamp),
                                                                  );
                                                                  if (datePicked8Time !=
                                                                      null) {
                                                                    safeSetState(
                                                                        () {
                                                                      _model.datePicked8 =
                                                                          DateTime(
                                                                        getCurrentTimestamp
                                                                            .year,
                                                                        getCurrentTimestamp
                                                                            .month,
                                                                        getCurrentTimestamp
                                                                            .day,
                                                                        datePicked8Time
                                                                            .hour,
                                                                        datePicked8Time
                                                                            .minute,
                                                                      );
                                                                    });
                                                                  }
                                                                },
                                                                text: () {
                                                                  if (columnHoursRecord
                                                                          ?.thursdayEnd !=
                                                                      null) {
                                                                    return dateTimeFormat(
                                                                      'jm',
                                                                      columnHoursRecord!
                                                                          .mondayStart!,
                                                                      locale: FFLocalizations.of(
                                                                              context)
                                                                          .languageCode,
                                                                    );
                                                                  } else if (_model
                                                                          .datePicked8 !=
                                                                      null) {
                                                                    return dateTimeFormat(
                                                                      'jm',
                                                                      _model
                                                                          .datePicked8,
                                                                      locale: FFLocalizations.of(
                                                                              context)
                                                                          .languageCode,
                                                                    );
                                                                  } else {
                                                                    return 'Select Hours';
                                                                  }
                                                                }(),
                                                                options:
                                                                    FFButtonOptions(
                                                                  width: 100.0,
                                                                  height: 40.0,
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          24.0,
                                                                          0.0,
                                                                          24.0,
                                                                          0.0),
                                                                  iconPadding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).titleSmallFamily,
                                                                        color: Colors
                                                                            .white,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                      ),
                                                                  elevation:
                                                                      3.0,
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .lineColor,
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  decoration: const BoxDecoration(),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      SwitchListTile.adaptive(
                                                        value: _model
                                                                .fridaySwitchListTileValue ??=
                                                            columnHoursRecord
                                                                        ?.hasFriday() ==
                                                                    true
                                                                ? columnHoursRecord!
                                                                    .friday
                                                                : false,
                                                        onChanged:
                                                            (newValue) async {
                                                          setState(() => _model
                                                                  .fridaySwitchListTileValue =
                                                              newValue);
                                                        },
                                                        title: Text(
                                                          'Friday',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .titleSmall,
                                                        ),
                                                        subtitle: Text(
                                                          'This location open on Fridays?',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelMedium,
                                                        ),
                                                        tileColor: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        activeColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        activeTrackColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .lineColor,
                                                        dense: true,
                                                        controlAffinity:
                                                            ListTileControlAffinity
                                                                .trailing,
                                                      ),
                                                      if (_model
                                                              .fridaySwitchListTileValue ??
                                                          true)
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      12.0,
                                                                      0.0,
                                                                      12.0,
                                                                      0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              FFButtonWidget(
                                                                onPressed:
                                                                    () async {
                                                                  logFirebaseEvent(
                                                                      'EDIT_LOCATION_COMP_OPEN:_BTN_ON_TAP');
                                                                  logFirebaseEvent(
                                                                      'Button_date_time_picker');

                                                                  final datePicked9Time =
                                                                      await showTimePicker(
                                                                    context:
                                                                        context,
                                                                    initialTime:
                                                                        TimeOfDay.fromDateTime(
                                                                            getCurrentTimestamp),
                                                                  );
                                                                  if (datePicked9Time !=
                                                                      null) {
                                                                    safeSetState(
                                                                        () {
                                                                      _model.datePicked9 =
                                                                          DateTime(
                                                                        getCurrentTimestamp
                                                                            .year,
                                                                        getCurrentTimestamp
                                                                            .month,
                                                                        getCurrentTimestamp
                                                                            .day,
                                                                        datePicked9Time
                                                                            .hour,
                                                                        datePicked9Time
                                                                            .minute,
                                                                      );
                                                                    });
                                                                  }
                                                                },
                                                                text: () {
                                                                  if (columnHoursRecord
                                                                          ?.fridayStart !=
                                                                      null) {
                                                                    return dateTimeFormat(
                                                                      'jm',
                                                                      columnHoursRecord!
                                                                          .mondayStart!,
                                                                      locale: FFLocalizations.of(
                                                                              context)
                                                                          .languageCode,
                                                                    );
                                                                  } else if (_model
                                                                          .datePicked9 !=
                                                                      null) {
                                                                    return dateTimeFormat(
                                                                      'jm',
                                                                      _model
                                                                          .datePicked9,
                                                                      locale: FFLocalizations.of(
                                                                              context)
                                                                          .languageCode,
                                                                    );
                                                                  } else {
                                                                    return 'Select Hours';
                                                                  }
                                                                }(),
                                                                options:
                                                                    FFButtonOptions(
                                                                  width: 100.0,
                                                                  height: 40.0,
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          24.0,
                                                                          0.0,
                                                                          24.0,
                                                                          0.0),
                                                                  iconPadding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).titleSmallFamily,
                                                                        color: Colors
                                                                            .white,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                      ),
                                                                  elevation:
                                                                      3.0,
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .lineColor,
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            8.0,
                                                                            0.0),
                                                                child: Text(
                                                                  'to',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium,
                                                                ),
                                                              ),
                                                              FFButtonWidget(
                                                                onPressed:
                                                                    () async {
                                                                  logFirebaseEvent(
                                                                      'EDIT_LOCATION_COMP_OPEN:_BTN_ON_TAP');
                                                                  logFirebaseEvent(
                                                                      'Button_date_time_picker');

                                                                  final datePicked10Time =
                                                                      await showTimePicker(
                                                                    context:
                                                                        context,
                                                                    initialTime:
                                                                        TimeOfDay.fromDateTime(
                                                                            getCurrentTimestamp),
                                                                  );
                                                                  if (datePicked10Time !=
                                                                      null) {
                                                                    safeSetState(
                                                                        () {
                                                                      _model.datePicked10 =
                                                                          DateTime(
                                                                        getCurrentTimestamp
                                                                            .year,
                                                                        getCurrentTimestamp
                                                                            .month,
                                                                        getCurrentTimestamp
                                                                            .day,
                                                                        datePicked10Time
                                                                            .hour,
                                                                        datePicked10Time
                                                                            .minute,
                                                                      );
                                                                    });
                                                                  }
                                                                },
                                                                text: () {
                                                                  if (columnHoursRecord
                                                                          ?.fridayEnd !=
                                                                      null) {
                                                                    return dateTimeFormat(
                                                                      'jm',
                                                                      columnHoursRecord!
                                                                          .mondayStart!,
                                                                      locale: FFLocalizations.of(
                                                                              context)
                                                                          .languageCode,
                                                                    );
                                                                  } else if (_model
                                                                          .datePicked10 !=
                                                                      null) {
                                                                    return _model
                                                                        .datePicked10!
                                                                        .toString();
                                                                  } else {
                                                                    return 'Select Hours';
                                                                  }
                                                                }(),
                                                                options:
                                                                    FFButtonOptions(
                                                                  width: 100.0,
                                                                  height: 40.0,
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          24.0,
                                                                          0.0,
                                                                          24.0,
                                                                          0.0),
                                                                  iconPadding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).titleSmallFamily,
                                                                        color: Colors
                                                                            .white,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                      ),
                                                                  elevation:
                                                                      3.0,
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .lineColor,
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  decoration: const BoxDecoration(),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      SwitchListTile.adaptive(
                                                        value: _model
                                                                .saturdaySwitchListTileValue ??=
                                                            columnHoursRecord
                                                                        ?.hasSaturday() ==
                                                                    true
                                                                ? columnHoursRecord!
                                                                    .saturday
                                                                : false,
                                                        onChanged:
                                                            (newValue) async {
                                                          setState(() => _model
                                                                  .saturdaySwitchListTileValue =
                                                              newValue);
                                                        },
                                                        title: Text(
                                                          'Saturday',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .titleSmall,
                                                        ),
                                                        subtitle: Text(
                                                          'This location open on Saturdays?',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelMedium,
                                                        ),
                                                        tileColor: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        activeColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        activeTrackColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .lineColor,
                                                        dense: true,
                                                        controlAffinity:
                                                            ListTileControlAffinity
                                                                .trailing,
                                                      ),
                                                      if (_model
                                                              .saturdaySwitchListTileValue ??
                                                          true)
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      12.0,
                                                                      0.0,
                                                                      12.0,
                                                                      0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              FFButtonWidget(
                                                                onPressed:
                                                                    () async {
                                                                  logFirebaseEvent(
                                                                      'EDIT_LOCATION_COMP_OPEN:_BTN_ON_TAP');
                                                                  logFirebaseEvent(
                                                                      'Button_date_time_picker');

                                                                  final datePicked11Time =
                                                                      await showTimePicker(
                                                                    context:
                                                                        context,
                                                                    initialTime:
                                                                        TimeOfDay.fromDateTime(
                                                                            getCurrentTimestamp),
                                                                  );
                                                                  if (datePicked11Time !=
                                                                      null) {
                                                                    safeSetState(
                                                                        () {
                                                                      _model.datePicked11 =
                                                                          DateTime(
                                                                        getCurrentTimestamp
                                                                            .year,
                                                                        getCurrentTimestamp
                                                                            .month,
                                                                        getCurrentTimestamp
                                                                            .day,
                                                                        datePicked11Time
                                                                            .hour,
                                                                        datePicked11Time
                                                                            .minute,
                                                                      );
                                                                    });
                                                                  }
                                                                },
                                                                text: () {
                                                                  if (columnHoursRecord
                                                                          ?.saturdayStart !=
                                                                      null) {
                                                                    return dateTimeFormat(
                                                                      'jm',
                                                                      columnHoursRecord!
                                                                          .mondayStart!,
                                                                      locale: FFLocalizations.of(
                                                                              context)
                                                                          .languageCode,
                                                                    );
                                                                  } else if (_model
                                                                          .datePicked11 !=
                                                                      null) {
                                                                    return dateTimeFormat(
                                                                      'jm',
                                                                      _model
                                                                          .datePicked11,
                                                                      locale: FFLocalizations.of(
                                                                              context)
                                                                          .languageCode,
                                                                    );
                                                                  } else {
                                                                    return 'Select Hours';
                                                                  }
                                                                }(),
                                                                options:
                                                                    FFButtonOptions(
                                                                  width: 100.0,
                                                                  height: 40.0,
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          24.0,
                                                                          0.0,
                                                                          24.0,
                                                                          0.0),
                                                                  iconPadding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).titleSmallFamily,
                                                                        color: Colors
                                                                            .white,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                      ),
                                                                  elevation:
                                                                      3.0,
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .lineColor,
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            8.0,
                                                                            0.0),
                                                                child: Text(
                                                                  'to',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium,
                                                                ),
                                                              ),
                                                              FFButtonWidget(
                                                                onPressed:
                                                                    () async {
                                                                  logFirebaseEvent(
                                                                      'EDIT_LOCATION_COMP_OPEN:_BTN_ON_TAP');
                                                                  logFirebaseEvent(
                                                                      'Button_date_time_picker');

                                                                  final datePicked12Time =
                                                                      await showTimePicker(
                                                                    context:
                                                                        context,
                                                                    initialTime:
                                                                        TimeOfDay.fromDateTime(
                                                                            getCurrentTimestamp),
                                                                  );
                                                                  if (datePicked12Time !=
                                                                      null) {
                                                                    safeSetState(
                                                                        () {
                                                                      _model.datePicked12 =
                                                                          DateTime(
                                                                        getCurrentTimestamp
                                                                            .year,
                                                                        getCurrentTimestamp
                                                                            .month,
                                                                        getCurrentTimestamp
                                                                            .day,
                                                                        datePicked12Time
                                                                            .hour,
                                                                        datePicked12Time
                                                                            .minute,
                                                                      );
                                                                    });
                                                                  }
                                                                },
                                                                text: () {
                                                                  if (columnHoursRecord
                                                                          ?.saturdayEnd !=
                                                                      null) {
                                                                    return dateTimeFormat(
                                                                      'jm',
                                                                      columnHoursRecord!
                                                                          .mondayStart!,
                                                                      locale: FFLocalizations.of(
                                                                              context)
                                                                          .languageCode,
                                                                    );
                                                                  } else if (_model
                                                                          .datePicked12 !=
                                                                      null) {
                                                                    return _model
                                                                        .datePicked12!
                                                                        .toString();
                                                                  } else {
                                                                    return 'Select Hours';
                                                                  }
                                                                }(),
                                                                options:
                                                                    FFButtonOptions(
                                                                  width: 100.0,
                                                                  height: 40.0,
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          24.0,
                                                                          0.0,
                                                                          24.0,
                                                                          0.0),
                                                                  iconPadding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).titleSmallFamily,
                                                                        color: Colors
                                                                            .white,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                      ),
                                                                  elevation:
                                                                      3.0,
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .lineColor,
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  decoration: const BoxDecoration(),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      SwitchListTile.adaptive(
                                                        value: _model
                                                                .sundaySwitchListTileValue ??=
                                                            columnHoursRecord
                                                                        ?.hasSunday() ==
                                                                    true
                                                                ? columnHoursRecord!
                                                                    .sunday
                                                                : false,
                                                        onChanged:
                                                            (newValue) async {
                                                          setState(() => _model
                                                                  .sundaySwitchListTileValue =
                                                              newValue);
                                                        },
                                                        title: Text(
                                                          'Sunday',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .titleSmall,
                                                        ),
                                                        subtitle: Text(
                                                          'This location open on Sundays?',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelMedium,
                                                        ),
                                                        tileColor: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        activeColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        activeTrackColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .lineColor,
                                                        dense: true,
                                                        controlAffinity:
                                                            ListTileControlAffinity
                                                                .trailing,
                                                      ),
                                                      if (_model
                                                              .sundaySwitchListTileValue ??
                                                          true)
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      12.0,
                                                                      0.0,
                                                                      12.0,
                                                                      0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              FFButtonWidget(
                                                                onPressed:
                                                                    () async {
                                                                  logFirebaseEvent(
                                                                      'EDIT_LOCATION_COMP_OPEN:_BTN_ON_TAP');
                                                                  logFirebaseEvent(
                                                                      'Button_date_time_picker');

                                                                  final datePicked13Time =
                                                                      await showTimePicker(
                                                                    context:
                                                                        context,
                                                                    initialTime:
                                                                        TimeOfDay.fromDateTime(
                                                                            getCurrentTimestamp),
                                                                  );
                                                                  if (datePicked13Time !=
                                                                      null) {
                                                                    safeSetState(
                                                                        () {
                                                                      _model.datePicked13 =
                                                                          DateTime(
                                                                        getCurrentTimestamp
                                                                            .year,
                                                                        getCurrentTimestamp
                                                                            .month,
                                                                        getCurrentTimestamp
                                                                            .day,
                                                                        datePicked13Time
                                                                            .hour,
                                                                        datePicked13Time
                                                                            .minute,
                                                                      );
                                                                    });
                                                                  }
                                                                },
                                                                text: () {
                                                                  if (columnHoursRecord
                                                                          ?.sundayStart !=
                                                                      null) {
                                                                    return dateTimeFormat(
                                                                      'jm',
                                                                      columnHoursRecord!
                                                                          .mondayStart!,
                                                                      locale: FFLocalizations.of(
                                                                              context)
                                                                          .languageCode,
                                                                    );
                                                                  } else if (_model
                                                                          .datePicked13 !=
                                                                      null) {
                                                                    return dateTimeFormat(
                                                                      'jm',
                                                                      _model
                                                                          .datePicked13,
                                                                      locale: FFLocalizations.of(
                                                                              context)
                                                                          .languageCode,
                                                                    );
                                                                  } else {
                                                                    return 'Select Hours';
                                                                  }
                                                                }(),
                                                                options:
                                                                    FFButtonOptions(
                                                                  width: 100.0,
                                                                  height: 40.0,
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          24.0,
                                                                          0.0,
                                                                          24.0,
                                                                          0.0),
                                                                  iconPadding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).titleSmallFamily,
                                                                        color: Colors
                                                                            .white,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                      ),
                                                                  elevation:
                                                                      3.0,
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .lineColor,
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            8.0,
                                                                            0.0),
                                                                child: Text(
                                                                  'to',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium,
                                                                ),
                                                              ),
                                                              FFButtonWidget(
                                                                onPressed:
                                                                    () async {
                                                                  logFirebaseEvent(
                                                                      'EDIT_LOCATION_COMP_OPEN:_BTN_ON_TAP');
                                                                  logFirebaseEvent(
                                                                      'Button_date_time_picker');

                                                                  final datePicked14Time =
                                                                      await showTimePicker(
                                                                    context:
                                                                        context,
                                                                    initialTime:
                                                                        TimeOfDay.fromDateTime(
                                                                            getCurrentTimestamp),
                                                                  );
                                                                  if (datePicked14Time !=
                                                                      null) {
                                                                    safeSetState(
                                                                        () {
                                                                      _model.datePicked14 =
                                                                          DateTime(
                                                                        getCurrentTimestamp
                                                                            .year,
                                                                        getCurrentTimestamp
                                                                            .month,
                                                                        getCurrentTimestamp
                                                                            .day,
                                                                        datePicked14Time
                                                                            .hour,
                                                                        datePicked14Time
                                                                            .minute,
                                                                      );
                                                                    });
                                                                  }
                                                                },
                                                                text: () {
                                                                  if (columnHoursRecord
                                                                          ?.sundayEnd !=
                                                                      null) {
                                                                    return dateTimeFormat(
                                                                      'jm',
                                                                      columnHoursRecord!
                                                                          .mondayStart!,
                                                                      locale: FFLocalizations.of(
                                                                              context)
                                                                          .languageCode,
                                                                    );
                                                                  } else if (_model
                                                                          .datePicked14 !=
                                                                      null) {
                                                                    return dateTimeFormat(
                                                                      'jm',
                                                                      _model
                                                                          .datePicked14,
                                                                      locale: FFLocalizations.of(
                                                                              context)
                                                                          .languageCode,
                                                                    );
                                                                  } else {
                                                                    return 'Select Hours';
                                                                  }
                                                                }(),
                                                                options:
                                                                    FFButtonOptions(
                                                                  width: 100.0,
                                                                  height: 40.0,
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          24.0,
                                                                          0.0,
                                                                          24.0,
                                                                          0.0),
                                                                  iconPadding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).titleSmallFamily,
                                                                        color: Colors
                                                                            .white,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                      ),
                                                                  elevation:
                                                                      3.0,
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .lineColor,
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Expanded(
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 24.0, 0.0, 44.0),
                                              child: FFButtonWidget(
                                                onPressed: () async {
                                                  logFirebaseEvent(
                                                      'EDIT_LOCATION_COMP_SAVE_BTN_ON_TAP');
                                                  if (_model
                                                          .hoursSwitchListTileValue ==
                                                      true) {
                                                    logFirebaseEvent(
                                                        'Button_backend_call');
                                                    unawaited(
                                                      () async {
                                                        await columnHoursRecord!
                                                            .reference
                                                            .update(
                                                                createHoursRecordData(
                                                          monday: _model
                                                              .mondaySwitchListTileValue,
                                                          mondayStart: _model
                                                                  .datePicked1 ?? columnHoursRecord
                                                                  .mondayStart,
                                                          mondayEnd: _model
                                                                  .datePicked2 ?? columnHoursRecord
                                                                  .mondayEnd,
                                                          tuesday: _model
                                                              .tuesdaySwitchListTileValue,
                                                          tuesdayStart: _model
                                                                  .datePicked3 ?? columnHoursRecord
                                                                  .tuesdayStart,
                                                          tuesdayEnd: _model
                                                                  .datePicked4 ?? columnHoursRecord
                                                                  .tuesdayEnd,
                                                          wednesday: _model
                                                              .wednesdaySwitchListTileValue,
                                                          wednesdayStart: _model
                                                                  .datePicked5 ?? columnHoursRecord
                                                                  .wednesdayStart,
                                                          wednesdayEnd: _model
                                                                  .datePicked6 ?? columnHoursRecord
                                                                  .wednesdayEnd,
                                                          thursday: _model
                                                              .thursdaySwitchListTileValue,
                                                          thursdayStart: _model
                                                                  .datePicked7 ?? columnHoursRecord
                                                                  .thursdayStart,
                                                          thursdayEnd: _model
                                                                  .datePicked8 ?? columnHoursRecord
                                                                  .thursdayEnd,
                                                          friday: _model
                                                              .fridaySwitchListTileValue,
                                                          fridayStart: _model
                                                                  .datePicked9 ?? columnHoursRecord
                                                                  .fridayStart,
                                                          fridayEnd: _model
                                                                  .datePicked10 ?? columnHoursRecord
                                                                  .fridayEnd,
                                                          saturday: _model
                                                              .saturdaySwitchListTileValue,
                                                          saturdayStart: _model
                                                                  .datePicked11 ?? columnHoursRecord
                                                                  .saturdayStart,
                                                          saturdayEnd: _model
                                                                  .datePicked12 ?? columnHoursRecord
                                                                  .saturdayEnd,
                                                          sunday: _model
                                                              .sundaySwitchListTileValue,
                                                          sundayStart: _model
                                                                  .datePicked13 ?? columnHoursRecord
                                                                  .sundayStart,
                                                          sundayEnd: _model
                                                                  .datePicked14 ?? columnHoursRecord
                                                                  .sundayEnd,
                                                        ));
                                                      }(),
                                                    );
                                                  }
                                                  logFirebaseEvent(
                                                      'Button_backend_call');

                                                  await widget.place!.update(
                                                      createPlacesRecordData(
                                                    locationName: _model
                                                        .locationNameController
                                                        .text,
                                                    address: _model.placePickerValue
                                                                    .address !=
                                                                ''
                                                        ? _model
                                                            .placePickerValue
                                                            .address
                                                        : containerPlacesRecord
                                                            .address,
                                                    placePosition: _model
                                                                .placePickerValue !=
                                                            null
                                                        ? _model
                                                            .placePickerValue
                                                            .latLng
                                                        : containerPlacesRecord
                                                            .placePosition,
                                                    hours: columnHoursRecord
                                                        ?.reference,
                                                    storeHours: _model
                                                        .hoursSwitchListTileValue,
                                                    state: _model
                                                                .placePickerValue !=
                                                            null
                                                        ? _model
                                                            .placePickerValue
                                                            .state
                                                        : containerPlacesRecord
                                                            .state,
                                                  ));
                                                  logFirebaseEvent(
                                                      'Button_bottom_sheet');
                                                  Navigator.pop(context);
                                                },
                                                text: 'Save',
                                                options: FFButtonOptions(
                                                  width: 270.0,
                                                  height: 50.0,
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 0.0),
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
                                                          .titleMedium
                                                          .override(
                                                            fontFamily:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleMediumFamily,
                                                            color: Colors.white,
                                                            useGoogleFonts: GoogleFonts
                                                                    .asMap()
                                                                .containsKey(
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleMediumFamily),
                                                          ),
                                                  elevation: 3.0,
                                                  borderSide: const BorderSide(
                                                    color: Colors.transparent,
                                                    width: 1.0,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                );
                              },
                            ),
                          ),
                        ),
                      );
                    },
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
