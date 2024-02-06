import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'import_events_model.dart';
export 'import_events_model.dart';

class ImportEventsWidget extends StatefulWidget {
  const ImportEventsWidget({
    super.key,
    required this.business,
  });

  final BusinessesRecord? business;

  @override
  State<ImportEventsWidget> createState() => _ImportEventsWidgetState();
}

class _ImportEventsWidgetState extends State<ImportEventsWidget> {
  late ImportEventsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ImportEventsModel());

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
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: StreamBuilder<List<EventsRecord>>(
          stream: queryEventsRecord(
            queryBuilder: (eventsRecord) => eventsRecord.where(
              'business',
              isEqualTo: widget.business?.reference,
            ),
          ),
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
            List<EventsRecord> cardTable2EventsRecordList = snapshot.data!;
            return Container(
              width: double.infinity,
              constraints: const BoxConstraints(
                maxWidth: 1170.0,
              ),
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 3.0,
                    color: Color(0x33000000),
                    offset: Offset(0.0, 1.0),
                  )
                ],
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(
                  width: 1.0,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 12.0, 0.0),
                                child: Text(
                                  'All Events',
                                  style: FlutterFlowTheme.of(context)
                                      .headlineMedium,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 4.0, 12.0, 0.0),
                                child: Text(
                                  'Choose which events to sync from eventbrite',
                                  style:
                                      FlutterFlowTheme.of(context).labelMedium,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                      child: Container(
                        width: double.infinity,
                        height: 40.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(0.0),
                            bottomRight: Radius.circular(0.0),
                            topLeft: Radius.circular(8.0),
                            topRight: Radius.circular(8.0),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              if (responsiveVisibility(
                                context: context,
                                phone: false,
                                tablet: false,
                              ))
                                Expanded(
                                  flex: 1,
                                  child: Text(
                                    'Name',
                                    style:
                                        FlutterFlowTheme.of(context).bodySmall,
                                  ),
                                ),
                              Expanded(
                                flex: 4,
                                child: Text(
                                  'Date',
                                  style: FlutterFlowTheme.of(context).bodySmall,
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  'Status',
                                  style: FlutterFlowTheme.of(context).bodySmall,
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  'Actions',
                                  textAlign: TextAlign.end,
                                  style: FlutterFlowTheme.of(context).bodySmall,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    FutureBuilder<ApiCallResponse>(
                      future: EventbriteUserGroup.listEventsCall.call(
                        organizationId:
                            widget.business?.eventbriteOrganizationId,
                        token: widget.business?.eventbriteToken,
                      ),
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
                        final listViewListEventsResponse = snapshot.data!;
                        return ListView(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 1.0),
                              child: Container(
                                width: 100.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 0.0,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      offset: const Offset(0.0, 1.0),
                                    )
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      if (responsiveVisibility(
                                        context: context,
                                        phone: false,
                                        tablet: false,
                                      ))
                                        Expanded(
                                          flex: 1,
                                          child: Text(
                                            EventbriteUserGroup.listEventsCall
                                                .eventName(
                                              listViewListEventsResponse
                                                  .jsonBody,
                                            )!,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium,
                                          ),
                                        ),
                                      Expanded(
                                        flex: 4,
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 8.0, 12.0, 8.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          4.0, 0.0, 0.0, 0.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    4.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          dateTimeFormat(
                                                            'LLLL dd, yyyy hh:mma',
                                                            functions.convertDate(
                                                                EventbriteUserGroup
                                                                    .listEventsCall
                                                                    .date(
                                                                      listViewListEventsResponse
                                                                          .jsonBody,
                                                                    )
                                                                    .toString()),
                                                            locale: FFLocalizations
                                                                    .of(context)
                                                                .languageCode,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodySmall
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmallFamily,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodySmallFamily),
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
                                      ),
                                      Expanded(
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              height: 32.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(40.0),
                                              ),
                                              alignment: const AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 0.0, 12.0, 0.0),
                                                child: Text(
                                                  EventbriteUserGroup
                                                      .listEventsCall
                                                      .status(
                                                    listViewListEventsResponse
                                                        .jsonBody,
                                                  )!,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            FFButtonWidget(
                                              onPressed: () async {
                                                logFirebaseEvent(
                                                    'IMPORT_EVENTS_COMP_IMPORT_BTN_ON_TAP');
                                                logFirebaseEvent(
                                                    'Button_backend_call');

                                                await EventsRecord.collection
                                                    .doc()
                                                    .set(createEventsRecordData(
                                                      eventDate:
                                                          functions.convertDate(
                                                              EventbriteUserGroup
                                                                  .listEventsCall
                                                                  .date(
                                                                    listViewListEventsResponse
                                                                        .jsonBody,
                                                                  )
                                                                  .toString()),
                                                      eventName:
                                                          EventbriteUserGroup
                                                              .listEventsCall
                                                              .eventName(
                                                        listViewListEventsResponse
                                                            .jsonBody,
                                                      ),
                                                      eventDescription:
                                                          EventbriteUserGroup
                                                              .listEventsCall
                                                              .eventDescription(
                                                        listViewListEventsResponse
                                                            .jsonBody,
                                                      ),
                                                      link: EventbriteUserGroup
                                                          .listEventsCall
                                                          .link(
                                                        listViewListEventsResponse
                                                            .jsonBody,
                                                      ),
                                                      createdAt:
                                                          getCurrentTimestamp,
                                                      locationAddress:
                                                          EventbriteUserGroup
                                                              .listEventsCall
                                                              .address(
                                                        listViewListEventsResponse
                                                            .jsonBody,
                                                      ),
                                                      eventPic:
                                                          EventbriteUserGroup
                                                              .listEventsCall
                                                              .photo(
                                                        listViewListEventsResponse
                                                            .jsonBody,
                                                      ),
                                                      id: EventbriteUserGroup
                                                          .listEventsCall
                                                          .eventbriteID(
                                                        listViewListEventsResponse
                                                            .jsonBody,
                                                      ),
                                                      locationCityState:
                                                          '${EventbriteUserGroup.listEventsCall.city(
                                                        listViewListEventsResponse
                                                            .jsonBody,
                                                      )}, ${EventbriteUserGroup.listEventsCall.state(
                                                        listViewListEventsResponse
                                                            .jsonBody,
                                                      )}',
                                                      inApp: true,
                                                      businessEvent: false,
                                                      business: widget
                                                          .business?.reference,
                                                      eventbriteID:
                                                          EventbriteUserGroup
                                                              .listEventsCall
                                                              .eventbriteID(
                                                        listViewListEventsResponse
                                                            .jsonBody,
                                                      ),
                                                      location: functions
                                                          .convertLocation(
                                                              EventbriteUserGroup
                                                                  .listEventsCall
                                                                  .latitude(
                                                                    listViewListEventsResponse
                                                                        .jsonBody,
                                                                  )
                                                                  .toString(),
                                                              EventbriteUserGroup
                                                                  .listEventsCall
                                                                  .longitude(
                                                                    listViewListEventsResponse
                                                                        .jsonBody,
                                                                  )
                                                                  .toString()),
                                                    ));
                                              },
                                              text: 'Import',
                                              options: FFButtonOptions(
                                                height: 40.0,
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 0.0, 16.0, 0.0),
                                                iconPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
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
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
