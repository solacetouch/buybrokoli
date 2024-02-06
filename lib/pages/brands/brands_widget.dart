import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/navigation/desktop_nav/desktop_nav_widget.dart';
import '/navigation/mobile_nav/mobile_nav_widget.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'brands_model.dart';
export 'brands_model.dart';

class BrandsWidget extends StatefulWidget {
  const BrandsWidget({super.key});

  @override
  State<BrandsWidget> createState() => _BrandsWidgetState();
}

class _BrandsWidgetState extends State<BrandsWidget> {
  late BrandsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BrandsModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Brands'});
    _model.searchTextFieldController ??= TextEditingController();
    _model.searchTextFieldFocusNode ??= FocusNode();

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

    return Title(
        title: 'Brands',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          drawer: Drawer(
            elevation: 16.0,
            child: WebViewAware(
              child: wrapWithModel(
                model: _model.mobileNavModel,
                updateCallback: () => setState(() {}),
                child: const MobileNavWidget(
                  page: 'Brands',
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
                  logFirebaseEvent('BRANDS_PAGE_menu_ICN_ON_TAP');
                  logFirebaseEvent('IconButton_drawer');
                  scaffoldKey.currentState!.openDrawer();
                },
              ),
            ),
            title: Text(
              'Brands',
              style: FlutterFlowTheme.of(context).headlineSmall.override(
                    fontFamily:
                        FlutterFlowTheme.of(context).headlineSmallFamily,
                    color: Colors.white,
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
                child: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 30.0,
                  borderWidth: 1.0,
                  buttonSize: 60.0,
                  icon: const FaIcon(
                    FontAwesomeIcons.solidUserCircle,
                    color: Colors.white,
                    size: 30.0,
                  ),
                  onPressed: () async {
                    logFirebaseEvent('BRANDS_PAGE_solidUserCircle_ICN_ON_TAP');
                    logFirebaseEvent('IconButton_navigate_to');

                    context.pushNamed('Settings');
                  },
                ),
              ),
            ],
            centerTitle: true,
            elevation: 4.0,
          ),
          body: SafeArea(
            top: true,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (responsiveVisibility(
                        context: context,
                        phone: false,
                        tablet: false,
                      ))
                        Container(
                          width: 270.0,
                          height: MediaQuery.sizeOf(context).height * 1.0,
                          constraints: BoxConstraints(
                            maxHeight: MediaQuery.sizeOf(context).height,
                          ),
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: wrapWithModel(
                            model: _model.desktopNavModel,
                            updateCallback: () => setState(() {}),
                            child: const DesktopNavWidget(
                              page: 'Brands',
                            ),
                          ),
                        ),
                      Expanded(
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: MediaQuery.sizeOf(context).height * 1.0,
                          decoration: const BoxDecoration(),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 32.0, 16.0, 3.0),
                                child: Container(
                                  width:
                                      MediaQuery.sizeOf(context).width * 0.891,
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            8.0, 0.0, 0.0, 0.0),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                          child: Image.asset(
                                            'assets/images/Algolia-mark-white.png',
                                            width: 20.0,
                                            height: 20.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  8.0, 0.0, 8.0, 0.0),
                                          child: TextFormField(
                                            controller: _model
                                                .searchTextFieldController,
                                            focusNode:
                                                _model.searchTextFieldFocusNode,
                                            onChanged: (_) =>
                                                EasyDebounce.debounce(
                                              '_model.searchTextFieldController',
                                              const Duration(milliseconds: 2000),
                                              () => setState(() {}),
                                            ),
                                            onFieldSubmitted: (_) async {
                                              logFirebaseEvent(
                                                  'BRANDS_SearchTextField_ON_TEXTFIELD_SUBM');
                                              logFirebaseEvent(
                                                  'SearchTextField_algolia_search');
                                              safeSetState(() => _model
                                                  .algoliaSearchResults = null);
                                              await BusinessesRecord.search(
                                                term: _model
                                                    .searchTextFieldController
                                                    .text,
                                              )
                                                  .then((r) => _model
                                                      .algoliaSearchResults = r)
                                                  .onError((_, __) => _model
                                                          .algoliaSearchResults =
                                                      [])
                                                  .whenComplete(
                                                      () => setState(() {}));
                                            },
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText: 'Search by Brand Name',
                                              labelStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium,
                                              hintStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelMedium,
                                              enabledBorder: InputBorder.none,
                                              focusedBorder: InputBorder.none,
                                              errorBorder: InputBorder.none,
                                              focusedErrorBorder:
                                                  InputBorder.none,
                                              suffixIcon: _model
                                                      .searchTextFieldController!
                                                      .text
                                                      .isNotEmpty
                                                  ? InkWell(
                                                      onTap: () async {
                                                        _model
                                                            .searchTextFieldController
                                                            ?.clear();
                                                        setState(() {});
                                                      },
                                                      child: Icon(
                                                        Icons.clear,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        size: 24.0,
                                                      ),
                                                    )
                                                  : null,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium,
                                            validator: _model
                                                .searchTextFieldControllerValidator
                                                .asValidator(context),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              if (_model.algoliaSearchResults!.isNotEmpty)
                                Expanded(
                                  child: Container(
                                    constraints: const BoxConstraints(
                                      maxWidth: 750.0,
                                    ),
                                    decoration: const BoxDecoration(),
                                    child: Builder(
                                      builder: (context) {
                                        if (_model.algoliaSearchResults ==
                                            null) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50.0,
                                              height: 50.0,
                                              child: SpinKitSquareCircle(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                size: 50.0,
                                              ),
                                            ),
                                          );
                                        }
                                        final searchBusiness = _model
                                                .algoliaSearchResults
                                                ?.toList() ??
                                            [];
                                        return ListView.builder(
                                          padding: EdgeInsets.zero,
                                          scrollDirection: Axis.vertical,
                                          itemCount: searchBusiness.length,
                                          itemBuilder:
                                              (context, searchBusinessIndex) {
                                            final searchBusinessItem =
                                                searchBusiness[
                                                    searchBusinessIndex];
                                            return Padding(
                                              padding: const EdgeInsets.all(24.0),
                                              child: Container(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        1.0,
                                                height:
                                                    MediaQuery.sizeOf(context)
                                                            .height *
                                                        1.0,
                                                constraints: const BoxConstraints(
                                                  maxWidth: 750.0,
                                                  maxHeight: 275.0,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  boxShadow: const [
                                                    BoxShadow(
                                                      blurRadius: 8.0,
                                                      color: Color(0x230F1113),
                                                      offset: Offset(0.0, 4.0),
                                                    )
                                                  ],
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .lineColor,
                                                  ),
                                                ),
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
                                                        'BRANDS_PAGE_Column_rwo0bn65_ON_TAP');
                                                    var shouldSetState = false;
                                                    logFirebaseEvent(
                                                        'Column_navigate_to');

                                                    context.pushNamed(
                                                      'BusinessProfile',
                                                      queryParameters: {
                                                        'business':
                                                            serializeParam(
                                                          searchBusinessItem
                                                              .reference,
                                                          ParamType
                                                              .DocumentReference,
                                                        ),
                                                      }.withoutNulls,
                                                    );

                                                    logFirebaseEvent(
                                                        'Column_backend_call');

                                                    await searchBusinessItem
                                                        .reference
                                                        .update({
                                                      ...mapToFirestore(
                                                        {
                                                          'pageviews':
                                                              FieldValue
                                                                  .increment(1),
                                                        },
                                                      ),
                                                    });
                                                    if ((searchBusinessItem
                                                                .pageviews >=
                                                            searchBusinessItem
                                                                .pageviewGoal) &&
                                                        (searchBusinessItem
                                                                .claimed ==
                                                            false)) {
                                                      logFirebaseEvent(
                                                          'Column_backend_call');
                                                      _model.apiResultt2t =
                                                          await CRMIntegtationGroup
                                                              .updateContactCall
                                                              .call(
                                                        contactCrmId: valueOrDefault(
                                                            currentUserDocument
                                                                ?.crmContactId,
                                                            ''),
                                                        pageviews:
                                                            searchBusinessItem
                                                                .pageviews,
                                                        email: currentUserEmail,
                                                        appUserId:
                                                            currentUserReference
                                                                ?.id,
                                                      );
                                                      shouldSetState = true;
                                                      if ((_model.apiResultt2t
                                                              ?.succeeded ??
                                                          true)) {
                                                        logFirebaseEvent(
                                                            'Column_backend_call');

                                                        await searchBusinessItem
                                                            .reference
                                                            .update({
                                                          ...mapToFirestore(
                                                            {
                                                              'pageview_goal':
                                                                  FieldValue
                                                                      .increment(
                                                                          100),
                                                            },
                                                          ),
                                                        });
                                                        if (shouldSetState) {
                                                          setState(() {});
                                                        }
                                                        return;
                                                      } else {
                                                        if (shouldSetState) {
                                                          setState(() {});
                                                        }
                                                        return;
                                                      }
                                                    } else {
                                                      if (shouldSetState) {
                                                        setState(() {});
                                                      }
                                                      return;
                                                    }

                                                    if (shouldSetState) {
                                                      setState(() {});
                                                    }
                                                  },
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Stack(
                                                        children: [
                                                          Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child: ClipRRect(
                                                              borderRadius:
                                                                  const BorderRadius
                                                                      .only(
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        0.0),
                                                                bottomRight: Radius
                                                                    .circular(
                                                                        0.0),
                                                                topLeft: Radius
                                                                    .circular(
                                                                        12.0),
                                                                topRight: Radius
                                                                    .circular(
                                                                        12.0),
                                                              ),
                                                              child:
                                                                  Image.network(
                                                                searchBusinessItem
                                                                    .profilePic,
                                                                width: MediaQuery.sizeOf(
                                                                            context)
                                                                        .width *
                                                                    1.0,
                                                                height: 169.9,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .end,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .end,
                                                                children: [
                                                                  if (searchBusinessItem
                                                                              .vendorLogo !=
                                                                          '')
                                                                    Align(
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              1.0,
                                                                              0.0),
                                                                      child:
                                                                          Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            15.0,
                                                                            15.0,
                                                                            0.0),
                                                                        child:
                                                                            ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.circular(60.0),
                                                                          child:
                                                                              Image.network(
                                                                            searchBusinessItem.vendorLogo,
                                                                            width:
                                                                                60.0,
                                                                            height:
                                                                                60.0,
                                                                            fit:
                                                                                BoxFit.cover,
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
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    16.0,
                                                                    12.0,
                                                                    16.0,
                                                                    12.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Expanded(
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                    searchBusinessItem
                                                                        .vendorName,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleMedium,
                                                                  ),
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      if (searchBusinessItem
                                                                              .averageRating >
                                                                          0.0)
                                                                        RatingBarIndicator(
                                                                          itemBuilder: (context, index) =>
                                                                              Icon(
                                                                            FFIcons.kbroccoli2,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).customColor1,
                                                                          ),
                                                                          direction:
                                                                              Axis.horizontal,
                                                                          rating:
                                                                              searchBusinessItem.averageRating,
                                                                          unratedColor:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          itemCount:
                                                                              5,
                                                                          itemSize:
                                                                              16.0,
                                                                        ),
                                                                      if (searchBusinessItem
                                                                              .averageRating >
                                                                          0.0)
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              8.0,
                                                                              5.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            formatNumber(
                                                                              searchBusinessItem.averageRating,
                                                                              formatType: FormatType.custom,
                                                                              format: '0.0',
                                                                              locale: '',
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
                                              ),
                                            );
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              if (_model.searchTextFieldController.text == '')
                                Expanded(
                                  child: Container(
                                    constraints: const BoxConstraints(
                                      maxWidth: 750.0,
                                    ),
                                    decoration: const BoxDecoration(),
                                    child:
                                        StreamBuilder<List<BusinessesRecord>>(
                                      stream: queryBusinessesRecord(
                                        queryBuilder: (businessesRecord) =>
                                            businessesRecord
                                                .where(
                                                  'type',
                                                  isEqualTo: 'Brand',
                                                )
                                                .orderBy('vendor_name'),
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50.0,
                                              height: 50.0,
                                              child: SpinKitSquareCircle(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                size: 50.0,
                                              ),
                                            ),
                                          );
                                        }
                                        List<BusinessesRecord>
                                            listViewBusinessesRecordList =
                                            snapshot.data!;
                                        return ListView.builder(
                                          padding: EdgeInsets.zero,
                                          scrollDirection: Axis.vertical,
                                          itemCount:
                                              listViewBusinessesRecordList
                                                  .length,
                                          itemBuilder:
                                              (context, listViewIndex) {
                                            final listViewBusinessesRecord =
                                                listViewBusinessesRecordList[
                                                    listViewIndex];
                                            return Padding(
                                              padding: const EdgeInsets.all(24.0),
                                              child: Container(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        1.0,
                                                height:
                                                    MediaQuery.sizeOf(context)
                                                            .height *
                                                        1.0,
                                                constraints: const BoxConstraints(
                                                  maxWidth: 750.0,
                                                  maxHeight: 275.0,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  boxShadow: const [
                                                    BoxShadow(
                                                      blurRadius: 8.0,
                                                      color: Color(0x230F1113),
                                                      offset: Offset(0.0, 4.0),
                                                    )
                                                  ],
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .lineColor,
                                                  ),
                                                ),
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
                                                        'BRANDS_PAGE_Column_2mdnd7fd_ON_TAP');
                                                    var shouldSetState = false;
                                                    logFirebaseEvent(
                                                        'Column_navigate_to');

                                                    context.pushNamed(
                                                      'BusinessProfile',
                                                      queryParameters: {
                                                        'business':
                                                            serializeParam(
                                                          listViewBusinessesRecord
                                                              .reference,
                                                          ParamType
                                                              .DocumentReference,
                                                        ),
                                                      }.withoutNulls,
                                                    );

                                                    logFirebaseEvent(
                                                        'Column_backend_call');

                                                    await listViewBusinessesRecord
                                                        .reference
                                                        .update({
                                                      ...mapToFirestore(
                                                        {
                                                          'pageviews':
                                                              FieldValue
                                                                  .increment(1),
                                                        },
                                                      ),
                                                    });
                                                    if ((listViewBusinessesRecord
                                                                .pageviews >=
                                                            listViewBusinessesRecord
                                                                .pageviewGoal) &&
                                                        (listViewBusinessesRecord
                                                                .claimed ==
                                                            false)) {
                                                      logFirebaseEvent(
                                                          'Column_backend_call');
                                                      _model.apiResultt2t23 =
                                                          await CRMIntegtationGroup
                                                              .updateContactCall
                                                              .call(
                                                        contactCrmId:
                                                            listViewBusinessesRecord
                                                                .crmContactId,
                                                        email: currentUserEmail,
                                                        pageviews:
                                                            listViewBusinessesRecord
                                                                .pageviews,
                                                        appUserId:
                                                            currentUserReference
                                                                ?.id,
                                                      );
                                                      shouldSetState = true;
                                                      if ((_model.apiResultt2t23
                                                              ?.succeeded ??
                                                          true)) {
                                                        logFirebaseEvent(
                                                            'Column_backend_call');

                                                        await listViewBusinessesRecord
                                                            .reference
                                                            .update({
                                                          ...mapToFirestore(
                                                            {
                                                              'pageview_goal':
                                                                  FieldValue
                                                                      .increment(
                                                                          100),
                                                            },
                                                          ),
                                                        });
                                                        if (shouldSetState) {
                                                          setState(() {});
                                                        }
                                                        return;
                                                      } else {
                                                        if (shouldSetState) {
                                                          setState(() {});
                                                        }
                                                        return;
                                                      }
                                                    } else {
                                                      if (shouldSetState) {
                                                        setState(() {});
                                                      }
                                                      return;
                                                    }

                                                    if (shouldSetState) {
                                                      setState(() {});
                                                    }
                                                  },
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Stack(
                                                        children: [
                                                          Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child: ClipRRect(
                                                              borderRadius:
                                                                  const BorderRadius
                                                                      .only(
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        0.0),
                                                                bottomRight: Radius
                                                                    .circular(
                                                                        0.0),
                                                                topLeft: Radius
                                                                    .circular(
                                                                        12.0),
                                                                topRight: Radius
                                                                    .circular(
                                                                        12.0),
                                                              ),
                                                              child:
                                                                  Image.network(
                                                                listViewBusinessesRecord
                                                                    .profilePic,
                                                                width: MediaQuery.sizeOf(
                                                                            context)
                                                                        .width *
                                                                    1.0,
                                                                height: 169.9,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .end,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .end,
                                                                children: [
                                                                  if (listViewBusinessesRecord
                                                                              .vendorLogo !=
                                                                          '')
                                                                    Align(
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              1.0,
                                                                              0.0),
                                                                      child:
                                                                          Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            15.0,
                                                                            15.0,
                                                                            0.0),
                                                                        child:
                                                                            ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.circular(60.0),
                                                                          child:
                                                                              Image.network(
                                                                            listViewBusinessesRecord.vendorLogo,
                                                                            width:
                                                                                60.0,
                                                                            height:
                                                                                60.0,
                                                                            fit:
                                                                                BoxFit.cover,
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
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    16.0,
                                                                    12.0,
                                                                    16.0,
                                                                    12.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Expanded(
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                    listViewBusinessesRecord
                                                                        .vendorName,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleMedium,
                                                                  ),
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      if (listViewBusinessesRecord
                                                                              .averageRating >
                                                                          0.0)
                                                                        RatingBarIndicator(
                                                                          itemBuilder: (context, index) =>
                                                                              Icon(
                                                                            FFIcons.kbroccoli2,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).customColor1,
                                                                          ),
                                                                          direction:
                                                                              Axis.horizontal,
                                                                          rating:
                                                                              listViewBusinessesRecord.averageRating,
                                                                          unratedColor:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          itemCount:
                                                                              5,
                                                                          itemSize:
                                                                              16.0,
                                                                        ),
                                                                      if (listViewBusinessesRecord
                                                                              .averageRating >
                                                                          0.0)
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              8.0,
                                                                              5.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            formatNumber(
                                                                              listViewBusinessesRecord.averageRating,
                                                                              formatType: FormatType.custom,
                                                                              format: '0.0',
                                                                              locale: 'en_US',
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
                                              ),
                                            );
                                          },
                                        );
                                      },
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
              ],
            ),
          ),
        ));
  }
}
