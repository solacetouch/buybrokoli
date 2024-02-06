import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'map_details_model.dart';
export 'map_details_model.dart';

class MapDetailsWidget extends StatefulWidget {
  const MapDetailsWidget({
    super.key,
    this.place,
    this.business,
  });

  final DocumentReference? place;
  final DocumentReference? business;

  @override
  State<MapDetailsWidget> createState() => _MapDetailsWidgetState();
}

class _MapDetailsWidgetState extends State<MapDetailsWidget> {
  late MapDetailsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MapDetailsModel());

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
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        StreamBuilder<BusinessesRecord>(
          stream: BusinessesRecord.getDocument(widget.business!),
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
            final travelCardBusinessesRecord = snapshot.data!;
            return Container(
              width: double.infinity,
              height: 299.4,
              constraints: const BoxConstraints(
                maxWidth: 1000.0,
              ),
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 8.0,
                    color: Color(0x230F1113),
                    offset: Offset(0.0, 4.0),
                  )
                ],
                borderRadius: BorderRadius.circular(0.0),
              ),
              child: StreamBuilder<PlacesRecord>(
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
                  final columnPlacesRecord = snapshot.data!;
                  return Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(0.0),
                              bottomRight: Radius.circular(0.0),
                              topLeft: Radius.circular(12.0),
                              topRight: Radius.circular(12.0),
                            ),
                            child: Image.network(
                              valueOrDefault<String>(
                                travelCardBusinessesRecord.profilePic,
                                'https://firebasestorage.googleapis.com/v0/b/buybrokoli-1.appspot.com/o/Minimalist%20Modern%20Support%20Small%20Businesses%20Instagram%20Post%20.png?alt=media&token=ca47db93-afc5-4bbe-b76b-d9bd31b891d5&_gl=1*1rs6dks*_ga*MjExODMwMTc5MS4xNjg1NzQ2ODEw*_ga_CW55HF8NVT*MTY4NTgyOTQ5NC44LjEuMTY4NTgzMDQ3Ny4wLjAuMA..',
                              ),
                              width: double.infinity,
                              height: 138.1,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(1.0, 0.0),
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width * 0.4,
                                  height: 30.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .customColor1,
                                    borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(0.0),
                                      bottomRight: Radius.circular(5.0),
                                      topLeft: Radius.circular(0.0),
                                      topRight: Radius.circular(0.0),
                                    ),
                                  ),
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        8.0, 0.0, 8.0, 0.0),
                                    child: Text(
                                      columnPlacesRecord.locationName,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily),
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    if (travelCardBusinessesRecord.vendorLogo !=
                                            '')
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(1.0, 0.0),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 15.0, 15.0, 0.0),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(60.0),
                                            child: Image.network(
                                              travelCardBusinessesRecord
                                                  .vendorLogo,
                                              width: 60.0,
                                              height: 60.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 12.0, 16.0, 12.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Text(
                                    travelCardBusinessesRecord.vendorName,
                                    style: FlutterFlowTheme.of(context)
                                        .titleMedium,
                                  ),
                                  Text(
                                    columnPlacesRecord.address,
                                    maxLines: 2,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily,
                                          fontSize: 11.0,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily),
                                        ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      if (travelCardBusinessesRecord
                                              .totalRatings >
                                          0)
                                        RatingBarIndicator(
                                          itemBuilder: (context, index) => Icon(
                                            FFIcons.kbroccoli2,
                                            color: FlutterFlowTheme.of(context)
                                                .customColor1,
                                          ),
                                          direction: Axis.horizontal,
                                          rating: travelCardBusinessesRecord
                                              .averageRating,
                                          unratedColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryText,
                                          itemCount: 5,
                                          itemSize: 16.0,
                                        ),
                                      if (travelCardBusinessesRecord
                                              .totalRatings >
                                          0)
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  8.0, 5.0, 0.0, 0.0),
                                          child: Text(
                                            formatNumber(
                                              travelCardBusinessesRecord
                                                  .averageRating,
                                              formatType: FormatType.decimal,
                                              decimalType:
                                                  DecimalType.periodDecimal,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodySmall
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodySmallFamily,
                                                  fontSize: 16.0,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodySmallFamily),
                                                ),
                                          ),
                                        ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            10.0, 8.0, 10.0, 8.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            logFirebaseEvent(
                                'MAP_DETAILS_COMP_SEE_PROFILE_BTN_ON_TAP');
                            var shouldSetState = false;
                            logFirebaseEvent('Button_navigate_to');

                            context.pushNamed(
                              'BusinessProfile',
                              queryParameters: {
                                'business': serializeParam(
                                  travelCardBusinessesRecord.reference,
                                  ParamType.DocumentReference,
                                ),
                              }.withoutNulls,
                            );

                            logFirebaseEvent('Button_backend_call');

                            await travelCardBusinessesRecord.reference.update({
                              ...mapToFirestore(
                                {
                                  'pageviews': FieldValue.increment(1),
                                },
                              ),
                            });
                            if ((travelCardBusinessesRecord.pageviews >=
                                    travelCardBusinessesRecord.pageviewGoal) &&
                                (travelCardBusinessesRecord.claimed == false)) {
                              logFirebaseEvent('Button_backend_call');
                              _model.apiResultt2t = await CRMIntegtationGroup
                                  .updateContactCall
                                  .call(
                                contactCrmId: valueOrDefault(
                                    currentUserDocument?.crmContactId, ''),
                                email: currentUserEmail,
                                pageviews: travelCardBusinessesRecord.pageviews,
                              );
                              shouldSetState = true;
                              if ((_model.apiResultt2t?.succeeded ?? true)) {
                                logFirebaseEvent('Button_backend_call');

                                await travelCardBusinessesRecord.reference
                                    .update({
                                  ...mapToFirestore(
                                    {
                                      'pageview_goal':
                                          FieldValue.increment(100),
                                    },
                                  ),
                                });
                                if (shouldSetState) setState(() {});
                                return;
                              } else {
                                if (shouldSetState) setState(() {});
                                return;
                              }
                            } else {
                              if (shouldSetState) setState(() {});
                              return;
                            }

                            if (shouldSetState) setState(() {});
                          },
                          text: 'See Profile',
                          options: FFButtonOptions(
                            width: 130.0,
                            height: 40.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).primary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .titleSmallFamily,
                                  color: Colors.white,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .titleSmallFamily),
                                ),
                            elevation: 2.0,
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            );
          },
        ),
      ],
    );
  }
}
