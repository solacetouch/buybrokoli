import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/components/empty_vendor_list/empty_vendor_list_widget.dart';
import '/components/map_details/map_details_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_place_picker.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/navigation/desktop_nav/desktop_nav_widget.dart';
import '/navigation/mobile_nav/mobile_nav_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'search_model.dart';
export 'search_model.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({
    super.key,
    this.filter,
  });

  final bool? filter;

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget>
    with TickerProviderStateMixin {
  late SearchModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  LatLng? currentUserLocationValue;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SearchModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Search'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('SEARCH_PAGE_Search_ON_INIT_STATE');
      currentUserLocationValue =
          await getCurrentUserLocation(defaultLocation: const LatLng(0.0, 0.0));
      logFirebaseEvent('Search_google_map');
      await _model.googleMapsController.future.then(
        (c) => c.animateCamera(
          CameraUpdate.newLatLng((_model.placePickerValue.address != ''
                  ? _model.placePickerValue.latLng
                  : currentUserLocationValue!)
              .toGoogleMaps()),
        ),
      );
    });

    getCurrentUserLocation(defaultLocation: const LatLng(0.0, 0.0), cached: true)
        .then((loc) => setState(() => currentUserLocationValue = loc));
    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
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
    if (currentUserLocationValue == null) {
      return Container(
        color: FlutterFlowTheme.of(context).primaryBackground,
        child: Center(
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

    return FutureBuilder<List<PlacesRecord>>(
      future: queryPlacesRecordOnce(
        queryBuilder: (placesRecord) => placesRecord
            .where(
              'category',
              arrayContains: _model.businessTypeValue != 'All'
                  ? _model.businessTypeValue
                  : ' Dispensary',
            )
            .where(
              'approved',
              isEqualTo: true,
            ),
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
        List<PlacesRecord> searchPlacesRecordList = snapshot.data!;
        return Title(
            title: 'Search',
            color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
            child: Scaffold(
              key: scaffoldKey,
              resizeToAvoidBottomInset: false,
              backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
              drawer: Drawer(
                elevation: 16.0,
                child: WebViewAware(
                  child: wrapWithModel(
                    model: _model.mobileNavModel,
                    updateCallback: () => setState(() {}),
                    child: const MobileNavWidget(
                      page: 'Search',
                    ),
                  ),
                ),
              ),
              appBar: AppBar(
                backgroundColor: FlutterFlowTheme.of(context).primary,
                automaticallyImplyLeading: false,
                leading: Visibility(
                  visible: responsiveVisibility(
                    context: context,
                    tabletLandscape: false,
                    desktop: false,
                  ),
                  child: FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 30.0,
                    borderWidth: 1.0,
                    buttonSize: 60.0,
                    icon: Icon(
                      Icons.menu,
                      color: FlutterFlowTheme.of(context).primaryBtnText,
                      size: 30.0,
                    ),
                    onPressed: () async {
                      logFirebaseEvent('SEARCH_PAGE_menu_ICN_ON_TAP');
                      logFirebaseEvent('IconButton_drawer');
                      scaffoldKey.currentState!.openDrawer();
                    },
                  ),
                ),
                title: Text(
                  'Search',
                  style: FlutterFlowTheme.of(context).headlineSmall.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).headlineSmallFamily,
                        color: FlutterFlowTheme.of(context).primaryBtnText,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).headlineSmallFamily),
                      ),
                ),
                actions: [
                  Visibility(
                    visible: responsiveVisibility(
                      context: context,
                      tabletLandscape: false,
                      desktop: false,
                    ),
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 30.0,
                        borderWidth: 1.0,
                        buttonSize: 60.0,
                        icon: FaIcon(
                          FontAwesomeIcons.solidUserCircle,
                          color: FlutterFlowTheme.of(context).primaryBtnText,
                          size: 30.0,
                        ),
                        onPressed: () async {
                          logFirebaseEvent(
                              'SEARCH_PAGE_solidUserCircle_ICN_ON_TAP');
                          logFirebaseEvent('IconButton_navigate_to');

                          context.pushNamed('Settings');
                        },
                      ),
                    ),
                  ),
                ],
                centerTitle: true,
                elevation: 4.0,
              ),
              body: SafeArea(
                top: true,
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: MediaQuery.sizeOf(context).height * 1.0,
                  decoration: const BoxDecoration(),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      wrapWithModel(
                        model: _model.desktopNavModel,
                        updateCallback: () => setState(() {}),
                        child: const DesktopNavWidget(
                          page: 'Search',
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: MediaQuery.sizeOf(context).height * 1.0,
                          constraints: const BoxConstraints(
                            maxWidth: 750.0,
                          ),
                          decoration: const BoxDecoration(),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    12.0, 24.0, 12.0, 12.0),
                                child: Container(
                                  width: double.infinity,
                                  height: 50.0,
                                  constraints: const BoxConstraints(
                                    maxWidth: 750.0,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12.0),
                                    border: Border.all(
                                      color: FlutterFlowTheme.of(context)
                                          .secondary,
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Material(
                                          color: Colors.transparent,
                                          elevation: 0.0,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(16.0),
                                          ),
                                          child: Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.518,
                                            height: 45.0,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(16.0),
                                            ),
                                            child: FlutterFlowPlacePicker(
                                              iOSGoogleMapsApiKey:
                                                  'AIzaSyBG1M-6XMQ35ElyKZ_yamC0ncWkXDojWtY',
                                              androidGoogleMapsApiKey:
                                                  'AIzaSyCbBFFhaGnAtqZU3zPf1VVZx3NKArQnQXg',
                                              webGoogleMapsApiKey:
                                                  'AIzaSyCrH3nxXKIbraj0bsiysIovGbv3OpltPjg',
                                              onSelect: (place) async {
                                                setState(() => _model
                                                    .placePickerValue = place);
                                                (await _model
                                                        .googleMapsController
                                                        .future)
                                                    .animateCamera(CameraUpdate
                                                        .newLatLng(place.latLng
                                                            .toGoogleMaps()));
                                              },
                                              defaultText:
                                                  'Search by City, State',
                                              icon: Icon(
                                                Icons.place,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .customColor1,
                                                size: 16.0,
                                              ),
                                              buttonOptions: FFButtonOptions(
                                                width: double.infinity,
                                                height: 40.0,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmallFamily,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .grayIcon,
                                                          fontSize: 12.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmallFamily),
                                                        ),
                                                elevation: 0.0,
                                                borderSide: const BorderSide(
                                                  width: 0.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: FlutterFlowDropDown<String>(
                                          controller: _model
                                                  .businessTypeValueController ??=
                                              FormFieldController<String>(null),
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
                                            'Dispensary',
                                            'Product',
                                            'Services',
                                            'Accessories',
                                            'Experiences',
                                            'Food',
                                            'Wellness/Beauty',
                                            'Education',
                                            'Medical',
                                            'Other'
                                          ],
                                          onChanged: (val) => setState(() =>
                                              _model.businessTypeValue = val),
                                          width: 100.0,
                                          height: 50.0,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontSize: 10.0,
                                                fontWeight: FontWeight.normal,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily),
                                              ),
                                          icon: Icon(
                                            Icons.filter_list,
                                            color: FlutterFlowTheme.of(context)
                                                .secondary,
                                            size: 15.0,
                                          ),
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryBackground,
                                          elevation: 2.0,
                                          borderColor: Colors.transparent,
                                          borderWidth: 0.0,
                                          borderRadius: 10.0,
                                          margin:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 4.0, 12.0, 4.0),
                                          hidesUnderline: true,
                                          isSearchable: false,
                                          isMultiSelect: false,
                                        ),
                                      ),
                                      if (_model.businessTypeValue != null &&
                                          _model.businessTypeValue != '')
                                        FlutterFlowIconButton(
                                          borderRadius: 20.0,
                                          borderWidth: 1.0,
                                          buttonSize: 48.0,
                                          icon: FaIcon(
                                            FontAwesomeIcons.undo,
                                            color: FlutterFlowTheme.of(context)
                                                .secondary,
                                            size: 12.0,
                                          ),
                                          onPressed: () async {
                                            logFirebaseEvent(
                                                'SEARCH_PAGE_undo_ICN_ON_TAP');
                                            logFirebaseEvent(
                                                'IconButton_reset_form_fields');
                                            setState(() {
                                              _model.businessTypeValueController
                                                  ?.reset();
                                            });
                                          },
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Align(
                                      alignment: const Alignment(0.0, 0),
                                      child: TabBar(
                                        labelColor: FlutterFlowTheme.of(context)
                                            .primary,
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              fontSize: 16.0,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                        unselectedLabelStyle: const TextStyle(),
                                        indicatorColor:
                                            FlutterFlowTheme.of(context)
                                                .secondary,
                                        tabs: const [
                                          Tab(
                                            text: 'Map',
                                          ),
                                          Tab(
                                            text: 'List',
                                          ),
                                        ],
                                        controller: _model.tabBarController,
                                        onTap: (i) async {
                                          [() async {}, () async {}][i]();
                                        },
                                      ),
                                    ),
                                    Expanded(
                                      child: TabBarView(
                                        controller: _model.tabBarController,
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                        children: [
                                          KeepAliveWidgetWrapper(
                                            builder: (context) =>
                                                FlutterFlowGoogleMap(
                                              controller:
                                                  _model.googleMapsController,
                                              onCameraIdle: (latLng) =>
                                                  setState(() =>
                                                      _model.googleMapsCenter =
                                                          latLng),
                                              initialLocation:
                                                  _model.googleMapsCenter ??=
                                                      _model.placePickerValue
                                                          .latLng,
                                              markers: searchPlacesRecordList
                                                  .map(
                                                    (searchPlacesRecord) =>
                                                        FlutterFlowMarker(
                                                      searchPlacesRecord
                                                          .reference.path,
                                                      searchPlacesRecord
                                                          .placePosition!,
                                                      () async {
                                                        logFirebaseEvent(
                                                            'SEARCH_GoogleMap_kccxvft6_ON_MARKER_TAP');
                                                        logFirebaseEvent(
                                                            'GoogleMap_bottom_sheet');
                                                        await showModalBottomSheet(
                                                          isScrollControlled:
                                                              true,
                                                          backgroundColor:
                                                              Colors
                                                                  .transparent,
                                                          barrierColor:
                                                              const Color(0x00000000),
                                                          enableDrag: false,
                                                          context: context,
                                                          builder: (context) {
                                                            return WebViewAware(
                                                              child: Padding(
                                                                padding: MediaQuery
                                                                    .viewInsetsOf(
                                                                        context),
                                                                child:
                                                                    MapDetailsWidget(
                                                                  place: searchPlacesRecord
                                                                      .reference,
                                                                  business:
                                                                      searchPlacesRecord
                                                                          .business,
                                                                ),
                                                              ),
                                                            );
                                                          },
                                                        ).then((value) =>
                                                            safeSetState(
                                                                () {}));
                                                      },
                                                    ),
                                                  )
                                                  .toList(),
                                              markerColor:
                                                  GoogleMarkerColor.green,
                                              mapType: MapType.normal,
                                              style: GoogleMapStyle.standard,
                                              initialZoom: 10.0,
                                              allowInteraction: true,
                                              allowZoom: true,
                                              showZoomControls: true,
                                              showLocation: true,
                                              showCompass: false,
                                              showMapToolbar: false,
                                              showTraffic: false,
                                              centerMapOnMarkerTap: true,
                                            ),
                                          ),
                                          KeepAliveWidgetWrapper(
                                            builder: (context) => Builder(
                                              builder: (context) {
                                                final getSearchPlacesByDistance = (_model.placePickerValue
                                                                    .address !=
                                                                ''
                                                        ? functions.getPlacesMaximumDistance(
                                                            searchPlacesRecordList
                                                                .toList(),
                                                            _model
                                                                .placePickerValue
                                                                .latLng,
                                                            200.0)
                                                        : functions.getPlacesMaximumDistance(
                                                            searchPlacesRecordList
                                                                .toList(),
                                                            currentUserLocationValue!,
                                                            500.0))
                                                    .toList();
                                                if (getSearchPlacesByDistance
                                                    .isEmpty) {
                                                  return Center(
                                                    child: SizedBox(
                                                      width: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.9,
                                                      height: 200.0,
                                                      child:
                                                          const EmptyVendorListWidget(),
                                                    ),
                                                  );
                                                }
                                                return ListView.builder(
                                                  padding: EdgeInsets.zero,
                                                  primary: false,
                                                  scrollDirection:
                                                      Axis.vertical,
                                                  itemCount:
                                                      getSearchPlacesByDistance
                                                          .length,
                                                  itemBuilder: (context,
                                                      getSearchPlacesByDistanceIndex) {
                                                    final getSearchPlacesByDistanceItem =
                                                        getSearchPlacesByDistance[
                                                            getSearchPlacesByDistanceIndex];
                                                    return Padding(
                                                      padding:
                                                          const EdgeInsets.all(15.0),
                                                      child: StreamBuilder<
                                                          BusinessesRecord>(
                                                        stream: BusinessesRecord
                                                            .getDocument(
                                                                getSearchPlacesByDistanceItem
                                                                    .business!),
                                                        builder: (context,
                                                            snapshot) {
                                                          // Customize what your widget looks like when it's loading.
                                                          if (!snapshot
                                                              .hasData) {
                                                            return Center(
                                                              child: SizedBox(
                                                                width: 50.0,
                                                                height: 50.0,
                                                                child:
                                                                    SpinKitSquareCircle(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  size: 50.0,
                                                                ),
                                                              ),
                                                            );
                                                          }
                                                          final travelCardBusinessesRecord =
                                                              snapshot.data!;
                                                          return Container(
                                                            width: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width *
                                                                1.0,
                                                            height: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .height *
                                                                1.0,
                                                            constraints:
                                                                const BoxConstraints(
                                                              maxWidth: 750.0,
                                                              maxHeight: 275.0,
                                                            ),
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              boxShadow: const [
                                                                BoxShadow(
                                                                  blurRadius:
                                                                      8.0,
                                                                  color: Color(
                                                                      0x230F1113),
                                                                  offset:
                                                                      Offset(
                                                                          0.0,
                                                                          4.0),
                                                                )
                                                              ],
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12.0),
                                                            ),
                                                            child: InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                logFirebaseEvent(
                                                                    'SEARCH_PAGE_Column_jwhpbmj7_ON_TAP');
                                                                var shouldSetState =
                                                                    false;
                                                                logFirebaseEvent(
                                                                    'Column_navigate_to');

                                                                context
                                                                    .pushNamed(
                                                                  'BusinessProfile',
                                                                  queryParameters:
                                                                      {
                                                                    'business':
                                                                        serializeParam(
                                                                      travelCardBusinessesRecord
                                                                          .reference,
                                                                      ParamType
                                                                          .DocumentReference,
                                                                    ),
                                                                  }.withoutNulls,
                                                                );

                                                                logFirebaseEvent(
                                                                    'Column_backend_call');

                                                                await travelCardBusinessesRecord
                                                                    .reference
                                                                    .update({
                                                                  ...mapToFirestore(
                                                                    {
                                                                      'pageviews':
                                                                          FieldValue.increment(
                                                                              1),
                                                                    },
                                                                  ),
                                                                });
                                                                if ((travelCardBusinessesRecord
                                                                            .pageviews >=
                                                                        travelCardBusinessesRecord
                                                                            .pageviewGoal) &&
                                                                    (travelCardBusinessesRecord
                                                                            .claimed ==
                                                                        false)) {
                                                                  logFirebaseEvent(
                                                                      'Column_backend_call');
                                                                  _model.apiResultt2t =
                                                                      await CRMIntegtationGroup
                                                                          .updateContactCall
                                                                          .call(
                                                                    contactCrmId:
                                                                        valueOrDefault(
                                                                            currentUserDocument?.crmContactId,
                                                                            ''),
                                                                    email:
                                                                        currentUserEmail,
                                                                    pageviews:
                                                                        travelCardBusinessesRecord
                                                                            .pageviews,
                                                                    tag:
                                                                        'pageview',
                                                                  );
                                                                  shouldSetState =
                                                                      true;
                                                                  if ((_model
                                                                          .apiResultt2t
                                                                          ?.succeeded ??
                                                                      true)) {
                                                                    logFirebaseEvent(
                                                                        'Column_backend_call');

                                                                    await travelCardBusinessesRecord
                                                                        .reference
                                                                        .update({
                                                                      ...mapToFirestore(
                                                                        {
                                                                          'pageview_goal':
                                                                              FieldValue.increment(100),
                                                                        },
                                                                      ),
                                                                    });
                                                                    if (shouldSetState) {
                                                                      setState(
                                                                          () {});
                                                                    }
                                                                    return;
                                                                  } else {
                                                                    if (shouldSetState) {
                                                                      setState(
                                                                          () {});
                                                                    }
                                                                    return;
                                                                  }
                                                                } else {
                                                                  if (shouldSetState) {
                                                                    setState(
                                                                        () {});
                                                                  }
                                                                  return;
                                                                }

                                                                if (shouldSetState) {
                                                                  setState(
                                                                      () {});
                                                                }
                                                              },
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Stack(
                                                                    children: [
                                                                      Align(
                                                                        alignment: const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            ClipRRect(
                                                                          borderRadius:
                                                                              const BorderRadius.only(
                                                                            bottomLeft:
                                                                                Radius.circular(0.0),
                                                                            bottomRight:
                                                                                Radius.circular(0.0),
                                                                            topLeft:
                                                                                Radius.circular(12.0),
                                                                            topRight:
                                                                                Radius.circular(12.0),
                                                                          ),
                                                                          child:
                                                                              Image.network(
                                                                            valueOrDefault<String>(
                                                                              travelCardBusinessesRecord.profilePic,
                                                                              'https://firebasestorage.googleapis.com/v0/b/buybrokoli-1.appspot.com/o/Minimalist%20Modern%20Support%20Small%20Businesses%20Instagram%20Post%20.png?alt=media&token=ca47db93-afc5-4bbe-b76b-d9bd31b891d5&_gl=1*1rs6dks*_ga*MjExODMwMTc5MS4xNjg1NzQ2ODEw*_ga_CW55HF8NVT*MTY4NTgyOTQ5NC44LjEuMTY4NTgzMDQ3Ny4wLjAuMA..',
                                                                            ),
                                                                            width:
                                                                                MediaQuery.sizeOf(context).width * 1.0,
                                                                            height:
                                                                                169.9,
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Align(
                                                                            alignment:
                                                                                const AlignmentDirectional(1.0, 0.0),
                                                                            child:
                                                                                Container(
                                                                              width: MediaQuery.sizeOf(context).width * 0.4,
                                                                              height: 30.0,
                                                                              decoration: BoxDecoration(
                                                                                color: FlutterFlowTheme.of(context).customColor1,
                                                                                borderRadius: const BorderRadius.only(
                                                                                  bottomLeft: Radius.circular(0.0),
                                                                                  bottomRight: Radius.circular(12.0),
                                                                                  topLeft: Radius.circular(0.0),
                                                                                  topRight: Radius.circular(0.0),
                                                                                ),
                                                                              ),
                                                                              alignment: const AlignmentDirectional(0.0, 0.0),
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                                                                                    child: Text(
                                                                                      getSearchPlacesByDistanceItem.category.first,
                                                                                      textAlign: TextAlign.start,
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                            color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                            useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.start,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.end,
                                                                            children: [
                                                                              if (travelCardBusinessesRecord.vendorLogo != '')
                                                                                Align(
                                                                                  alignment: const AlignmentDirectional(1.0, 0.0),
                                                                                  child: Padding(
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 15.0, 0.0),
                                                                                    child: ClipRRect(
                                                                                      borderRadius: BorderRadius.circular(60.0),
                                                                                      child: Image.network(
                                                                                        travelCardBusinessesRecord.vendorLogo,
                                                                                        width: 60.0,
                                                                                        height: 60.0,
                                                                                        fit: BoxFit.cover,
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                            ],
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            16.0,
                                                                            12.0,
                                                                            16.0,
                                                                            12.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Expanded(
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.min,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Text(
                                                                                travelCardBusinessesRecord.vendorName,
                                                                                style: FlutterFlowTheme.of(context).titleMedium,
                                                                              ),
                                                                              Text(
                                                                                getSearchPlacesByDistanceItem.address,
                                                                                maxLines: 2,
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                      fontSize: 11.0,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                                    ),
                                                                              ),
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.min,
                                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                                children: [
                                                                                  if (travelCardBusinessesRecord.totalRatings > 0)
                                                                                    RatingBarIndicator(
                                                                                      itemBuilder: (context, index) => Icon(
                                                                                        FFIcons.kbroccoli2,
                                                                                        color: FlutterFlowTheme.of(context).customColor1,
                                                                                      ),
                                                                                      direction: Axis.horizontal,
                                                                                      rating: travelCardBusinessesRecord.averageRating,
                                                                                      unratedColor: FlutterFlowTheme.of(context).secondaryText,
                                                                                      itemCount: 5,
                                                                                      itemSize: 16.0,
                                                                                    ),
                                                                                  if (travelCardBusinessesRecord.totalRatings > 0)
                                                                                    Padding(
                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(8.0, 5.0, 0.0, 0.0),
                                                                                      child: Text(
                                                                                        formatNumber(
                                                                                          travelCardBusinessesRecord.averageRating,
                                                                                          formatType: FormatType.decimal,
                                                                                          decimalType: DecimalType.periodDecimal,
                                                                                        ),
                                                                                        style: FlutterFlowTheme.of(context).bodySmall.override(
                                                                                              fontFamily: FlutterFlowTheme.of(context).bodySmallFamily,
                                                                                              fontSize: 16.0,
                                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodySmallFamily),
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
                                                                ],
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      ),
                                                    );
                                                  },
                                                );
                                              },
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
                    ],
                  ),
                ),
              ),
            ));
      },
    );
  }
}
