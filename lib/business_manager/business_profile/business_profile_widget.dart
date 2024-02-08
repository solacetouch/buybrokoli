import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/empty_event_list/empty_event_list_widget.dart';
import '/components/empty_product_list/empty_product_list_widget.dart';
import '/components/empty_reviews/empty_reviews_widget.dart';
import '/components/feed_post_widget.dart';
import '/components/rate_business/rate_business_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/reports/report_page/report_page_widget.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'business_profile_model.dart';
export 'business_profile_model.dart';

class BusinessProfileWidget extends StatefulWidget {
  const BusinessProfileWidget({
    super.key,
    this.business,
  });

  final DocumentReference? business;

  @override
  State<BusinessProfileWidget> createState() => _BusinessProfileWidgetState();
}

class _BusinessProfileWidgetState extends State<BusinessProfileWidget>
    with TickerProviderStateMixin {
  late BusinessProfileModel _model;

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
          begin: const Offset(0.0, 50.0),
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
          begin: const Offset(0.0, 50.0),
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
          begin: const Offset(0.0, 50.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation5': AnimationInfo(
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
          begin: const Offset(0.0, 50.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation6': AnimationInfo(
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
          begin: const Offset(0.0, 50.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation7': AnimationInfo(
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
          begin: const Offset(0.0, 50.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation8': AnimationInfo(
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
          begin: const Offset(0.0, 50.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation9': AnimationInfo(
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
          begin: const Offset(0.0, 50.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BusinessProfileModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'BusinessProfile'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('BUSINESS_PROFILE_BusinessProfile_ON_INIT');
      logFirebaseEvent('BusinessProfile_generate_current_page_li');
      _model.currentPageLink = await generateCurrentPageLink(
        context,
        isShortLink: false,
      );
    });

    _model.tabBarController1 = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
    _model.tabBarController2 = TabController(
      vsync: this,
      length: 4,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
    _model.tabBarController3 = TabController(
      vsync: this,
      length: 6,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
    _model.tabBarController4 = TabController(
      vsync: this,
      length: 3,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
    _model.tabBarController5 = TabController(
      vsync: this,
      length: 5,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
    _model.tabBarController6 = TabController(
      vsync: this,
      length: 3,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
    _model.tabBarController7 = TabController(
      vsync: this,
      length: 5,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
    _model.tabBarController8 = TabController(
      vsync: this,
      length: 3,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
    _model.tabBarController9 = TabController(
      vsync: this,
      length: 5,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
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

    return StreamBuilder<BusinessesRecord>(
      stream: BusinessesRecord.getDocument(widget.business!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
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
        final businessProfileBusinessesRecord = snapshot.data!;
        return Title(
            title: 'BusinessProfile',
            color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
            child: GestureDetector(
              onTap: () => _model.unfocusNode.canRequestFocus
                  ? FocusScope.of(context).requestFocus(_model.unfocusNode)
                  : FocusScope.of(context).unfocus(),
              child: Scaffold(
                key: scaffoldKey,
                backgroundColor:
                    FlutterFlowTheme.of(context).secondaryBackground,
                body: SafeArea(
                  top: true,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (responsiveVisibility(
                              context: context,
                              phone: false,
                              tablet: false,
                            ))
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.4,
                                    child: Stack(
                                      children: [
                                        Image.network(
                                          valueOrDefault<String>(
                                            businessProfileBusinessesRecord
                                                .profilePic,
                                            'https://firebasestorage.googleapis.com/v0/b/buybrokoli-1.appspot.com/o/Minimalist%20Modern%20Support%20Small%20Businesses%20Instagram%20Post%20.png?alt=media&token=ca47db93-afc5-4bbe-b76b-d9bd31b891d5&_gl=1*ms40bl*_ga*MjExODMwMTc5MS4xNjg1NzQ2ODEw*_ga_CW55HF8NVT*MTY4NTg0ODAyNS4xMS4xLjE2ODU4NDgwMjkuMC4wLjA.',
                                          ),
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  1.0,
                                          height: 899.8,
                                          fit: BoxFit.cover,
                                        ),
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.0),
                                          child: Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.759,
                                            height: MediaQuery.sizeOf(context)
                                                .height,
                                            decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                colors: [
                                                  const Color(0x0014181B),
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground
                                                ],
                                                stops: const [0.0, 0.7],
                                                begin: const AlignmentDirectional(
                                                    0.0, -1.0),
                                                end: const AlignmentDirectional(
                                                    0, 1.0),
                                              ),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      32.0, 32.0, 32.0, 0.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 32.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        FlutterFlowIconButton(
                                                          borderColor: Colors
                                                              .transparent,
                                                          borderRadius: 8.0,
                                                          borderWidth: 1.0,
                                                          buttonSize: 40.0,
                                                          fillColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .customColor1,
                                                          icon: const Icon(
                                                            Icons.chevron_left,
                                                            color: Colors.white,
                                                            size: 20.0,
                                                          ),
                                                          onPressed: () async {
                                                            logFirebaseEvent(
                                                                'BUSINESS_PROFILE_chevron_left_ICN_ON_TAP');
                                                            logFirebaseEvent(
                                                                'IconButton_navigate_back');
                                                            context.pop();
                                                          },
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Text(
                                                    businessProfileBusinessesRecord
                                                        .vendorName,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .headlineMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .headlineMediumFamily,
                                                          color: Colors.white,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineMediumFamily),
                                                        ),
                                                  ),
                                                  const Divider(
                                                    height: 24.0,
                                                    thickness: 2.0,
                                                    indent: 130.0,
                                                    endIndent: 130.0,
                                                    color: Colors.white,
                                                  ),
                                                  Text(
                                                    businessProfileBusinessesRecord
                                                        .address,
                                                    style: FlutterFlowTheme.of(
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
                                                  ),
                                                  const Divider(
                                                    height: 500.0,
                                                    thickness: 0.0,
                                                    color: Color(0x00FFFFFF),
                                                  ),
                                                  if (businessProfileBusinessesRecord
                                                          .claimed ==
                                                      false)
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(8.0),
                                                      child: FFButtonWidget(
                                                        onPressed: () async {
                                                          logFirebaseEvent(
                                                              'BUSINESS_PROFILE_ClaimProfileButton_ON_T');
                                                          logFirebaseEvent(
                                                              'ClaimProfileButton_navigate_to');

                                                          context.pushNamed(
                                                            'RegisterBusiness_State',
                                                            queryParameters: {
                                                              'business':
                                                                  serializeParam(
                                                                businessProfileBusinessesRecord
                                                                    .reference,
                                                                ParamType
                                                                    .DocumentReference,
                                                              ),
                                                              'pageLink':
                                                                  serializeParam(
                                                                _model
                                                                    .currentPageLink,
                                                                ParamType
                                                                    .String,
                                                              ),
                                                            }.withoutNulls,
                                                          );
                                                        },
                                                        text: 'Claim Profile',
                                                        options:
                                                            FFButtonOptions(
                                                          width:
                                                              double.infinity,
                                                          height: 44.0,
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
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .titleSmallFamily,
                                                                    color: Colors
                                                                        .white,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            FlutterFlowTheme.of(context).titleSmallFamily),
                                                                  ),
                                                          elevation: 2.0,
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Colors
                                                                .transparent,
                                                            width: 1.0,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 22.0,
                                                                0.0, 12.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      children: [
                                                        if (businessProfileBusinessesRecord
                                                                    .website !=
                                                                '')
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(8.0),
                                                              child:
                                                                  FFButtonWidget(
                                                                onPressed:
                                                                    () async {
                                                                  logFirebaseEvent(
                                                                      'BUSINESS_PROFILE_PAGE_WEBSITE_BTN_ON_TAP');
                                                                  logFirebaseEvent(
                                                                      'Button_launch_u_r_l');
                                                                  await launchURL(
                                                                      businessProfileBusinessesRecord
                                                                          .website);
                                                                },
                                                                text: 'Website',
                                                                icon: const Icon(
                                                                  Icons
                                                                      .web_asset,
                                                                  size: 15.0,
                                                                ),
                                                                options:
                                                                    FFButtonOptions(
                                                                  width: 130.0,
                                                                  height: 40.0,
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  iconPadding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBtnText,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodySmallFamily,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .customColor1,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodySmallFamily),
                                                                      ),
                                                                  elevation:
                                                                      2.0,
                                                                  borderSide:
                                                                      const BorderSide(
                                                                    color: Colors
                                                                        .transparent,
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        if ((businessProfileBusinessesRecord
                                                                    .paid ==
                                                                true) &&
                                                            !businessProfileBusinessesRecord
                                                                .blockedUsers
                                                                .contains(
                                                                    currentUserReference))
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(8.0),
                                                              child: StreamBuilder<
                                                                  List<
                                                                      ChatsRecord>>(
                                                                stream:
                                                                    queryChatsRecord(
                                                                  queryBuilder: (chatsRecord) =>
                                                                      chatsRecord
                                                                          .where(
                                                                            'business',
                                                                            isEqualTo:
                                                                                widget.business,
                                                                          )
                                                                          .where(
                                                                            'users',
                                                                            arrayContains:
                                                                                currentUserReference,
                                                                          ),
                                                                  singleRecord:
                                                                      true,
                                                                ),
                                                                builder: (context,
                                                                    snapshot) {
                                                                  // Customize what your widget looks like when it's loading.
                                                                  if (!snapshot
                                                                      .hasData) {
                                                                    return Center(
                                                                      child:
                                                                          SizedBox(
                                                                        width:
                                                                            50.0,
                                                                        height:
                                                                            50.0,
                                                                        child:
                                                                            SpinKitSquareCircle(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                          size:
                                                                              50.0,
                                                                        ),
                                                                      ),
                                                                    );
                                                                  }
                                                                  List<ChatsRecord>
                                                                      buttonChatsRecordList =
                                                                      snapshot
                                                                          .data!;
                                                                  final buttonChatsRecord = buttonChatsRecordList
                                                                          .isNotEmpty
                                                                      ? buttonChatsRecordList
                                                                          .first
                                                                      : null;
                                                                  return FFButtonWidget(
                                                                    onPressed:
                                                                        () async {
                                                                      logFirebaseEvent(
                                                                          'BUSINESS_PROFILE_PAGE_CONTACT_BTN_ON_TAP');
                                                                      if (buttonChatsRecord !=
                                                                          null) {
                                                                        logFirebaseEvent(
                                                                            'Button_navigate_to');

                                                                        context
                                                                            .pushNamed(
                                                                          'Chat',
                                                                          queryParameters:
                                                                              {
                                                                            'chatRefDoc':
                                                                                serializeParam(
                                                                              buttonChatsRecord,
                                                                              ParamType.Document,
                                                                            ),
                                                                            'chatRef':
                                                                                serializeParam(
                                                                              buttonChatsRecord.reference,
                                                                              ParamType.DocumentReference,
                                                                            ),
                                                                          }.withoutNulls,
                                                                          extra: <String,
                                                                              dynamic>{
                                                                            'chatRefDoc':
                                                                                buttonChatsRecord,
                                                                          },
                                                                        );
                                                                      } else {
                                                                        logFirebaseEvent(
                                                                            'Button_backend_call');

                                                                        var chatsRecordReference = ChatsRecord
                                                                            .collection
                                                                            .doc();
                                                                        await chatsRecordReference
                                                                            .set({
                                                                          ...createChatsRecordData(
                                                                            userA:
                                                                                currentUserReference,
                                                                            userB:
                                                                                businessProfileBusinessesRecord.owner,
                                                                            vendorName:
                                                                                businessProfileBusinessesRecord.vendorName,
                                                                            business:
                                                                                widget.business,
                                                                          ),
                                                                          ...mapToFirestore(
                                                                            {
                                                                              'users': [
                                                                                currentUserReference
                                                                              ],
                                                                            },
                                                                          ),
                                                                        });
                                                                        _model.newChat =
                                                                            ChatsRecord.getDocumentFromData({
                                                                          ...createChatsRecordData(
                                                                            userA:
                                                                                currentUserReference,
                                                                            userB:
                                                                                businessProfileBusinessesRecord.owner,
                                                                            vendorName:
                                                                                businessProfileBusinessesRecord.vendorName,
                                                                            business:
                                                                                widget.business,
                                                                          ),
                                                                          ...mapToFirestore(
                                                                            {
                                                                              'users': [
                                                                                currentUserReference
                                                                              ],
                                                                            },
                                                                          ),
                                                                        }, chatsRecordReference);
                                                                        logFirebaseEvent(
                                                                            'Button_navigate_to');

                                                                        context
                                                                            .pushNamed(
                                                                          'Chat',
                                                                          queryParameters:
                                                                              {
                                                                            'chatRefDoc':
                                                                                serializeParam(
                                                                              _model.newChat,
                                                                              ParamType.Document,
                                                                            ),
                                                                            'chatRef':
                                                                                serializeParam(
                                                                              _model.newChat?.reference,
                                                                              ParamType.DocumentReference,
                                                                            ),
                                                                          }.withoutNulls,
                                                                          extra: <String,
                                                                              dynamic>{
                                                                            'chatRefDoc':
                                                                                _model.newChat,
                                                                          },
                                                                        );
                                                                      }

                                                                      setState(
                                                                          () {});
                                                                    },
                                                                    text:
                                                                        'Contact',
                                                                    icon: const Icon(
                                                                      Icons
                                                                          .chat_bubble,
                                                                      size:
                                                                          15.0,
                                                                    ),
                                                                    options:
                                                                        FFButtonOptions(
                                                                      width: double
                                                                          .infinity,
                                                                      height:
                                                                          40.0,
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBtnText,
                                                                      textStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleSmall
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).titleSmallFamily,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).customColor1,
                                                                            fontSize:
                                                                                14.0,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                          ),
                                                                      elevation:
                                                                          0.0,
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .lineColor,
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                    ),
                                                                  );
                                                                },
                                                              ),
                                                            ),
                                                          ),
                                                        Expanded(
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets.all(
                                                                    8.0),
                                                            child: StreamBuilder<
                                                                List<
                                                                    VendorRatingsRecord>>(
                                                              stream:
                                                                  queryVendorRatingsRecord(
                                                                queryBuilder:
                                                                    (vendorRatingsRecord) =>
                                                                        vendorRatingsRecord
                                                                            .where(
                                                                              'user',
                                                                              isEqualTo: currentUserReference,
                                                                            )
                                                                            .where(
                                                                              'business',
                                                                              isEqualTo: businessProfileBusinessesRecord.reference,
                                                                            ),
                                                                singleRecord:
                                                                    true,
                                                              ),
                                                              builder: (context,
                                                                  snapshot) {
                                                                // Customize what your widget looks like when it's loading.
                                                                if (!snapshot
                                                                    .hasData) {
                                                                  return Center(
                                                                    child:
                                                                        SizedBox(
                                                                      width:
                                                                          50.0,
                                                                      height:
                                                                          50.0,
                                                                      child:
                                                                          SpinKitSquareCircle(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                        size:
                                                                            50.0,
                                                                      ),
                                                                    ),
                                                                  );
                                                                }
                                                                List<VendorRatingsRecord>
                                                                    buttonVendorRatingsRecordList =
                                                                    snapshot
                                                                        .data!;
                                                                final buttonVendorRatingsRecord =
                                                                    buttonVendorRatingsRecordList
                                                                            .isNotEmpty
                                                                        ? buttonVendorRatingsRecordList
                                                                            .first
                                                                        : null;
                                                                return FFButtonWidget(
                                                                  onPressed:
                                                                      () async {
                                                                    logFirebaseEvent(
                                                                        'BUSINESS_PROFILE_PAGE_REVIEW_BTN_ON_TAP');
                                                                    if ((buttonVendorRatingsRecord !=
                                                                            null) ==
                                                                        true) {
                                                                      logFirebaseEvent(
                                                                          'Button_alert_dialog');
                                                                      await showDialog(
                                                                        context:
                                                                            context,
                                                                        builder:
                                                                            (alertDialogContext) {
                                                                          return WebViewAware(
                                                                            child:
                                                                                AlertDialog(
                                                                              title: const Text('Already Submitted'),
                                                                              content: const Text('You have already submitted a review'),
                                                                              actions: [
                                                                                TextButton(
                                                                                  onPressed: () => Navigator.pop(alertDialogContext),
                                                                                  child: const Text('Ok'),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          );
                                                                        },
                                                                      );
                                                                    } else {
                                                                      logFirebaseEvent(
                                                                          'Button_bottom_sheet');
                                                                      await showModalBottomSheet(
                                                                        isScrollControlled:
                                                                            true,
                                                                        backgroundColor:
                                                                            Colors.transparent,
                                                                        barrierColor:
                                                                            const Color(0x00000000),
                                                                        enableDrag:
                                                                            false,
                                                                        context:
                                                                            context,
                                                                        builder:
                                                                            (context) {
                                                                          return WebViewAware(
                                                                            child:
                                                                                GestureDetector(
                                                                              onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                              child: Padding(
                                                                                padding: MediaQuery.viewInsetsOf(context),
                                                                                child: RateBusinessWidget(
                                                                                  business: widget.business,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          );
                                                                        },
                                                                      ).then((value) =>
                                                                          safeSetState(
                                                                              () {}));
                                                                    }
                                                                  },
                                                                  text:
                                                                      'Review',
                                                                  icon: const Icon(
                                                                    FFIcons
                                                                        .kbroccoli2,
                                                                    size: 15.0,
                                                                  ),
                                                                  options:
                                                                      FFButtonOptions(
                                                                    width: double
                                                                        .infinity,
                                                                    height:
                                                                        44.0,
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    iconPadding:
                                                                        const EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBtnText,
                                                                    textStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleSmall
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).titleSmallFamily,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).customColor1,
                                                                          fontSize:
                                                                              14.0,
                                                                          useGoogleFonts:
                                                                              GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                        ),
                                                                    elevation:
                                                                        0.0,
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .lineColor,
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                  ),
                                                                );
                                                              },
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  if (businessProfileBusinessesRecord
                                                          .claimed &&
                                                      responsiveVisibility(
                                                        context: context,
                                                        phone: false,
                                                        tablet: false,
                                                      ))
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  50.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceAround,
                                                        children: [
                                                          if (businessProfileBusinessesRecord
                                                                      .tiktok !=
                                                                  '')
                                                            FlutterFlowIconButton(
                                                              borderColor: Colors
                                                                  .transparent,
                                                              borderRadius:
                                                                  30.0,
                                                              borderWidth: 1.0,
                                                              buttonSize: 40.0,
                                                              icon: FaIcon(
                                                                FontAwesomeIcons
                                                                    .tiktok,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .customColor1,
                                                                size: 20.0,
                                                              ),
                                                              onPressed:
                                                                  () async {
                                                                logFirebaseEvent(
                                                                    'BUSINESS_PROFILE_PAGE_tiktok_ICN_ON_TAP');
                                                                logFirebaseEvent(
                                                                    'IconButton_launch_u_r_l');
                                                                await launchURL(
                                                                    businessProfileBusinessesRecord
                                                                        .tiktok);
                                                              },
                                                            ),
                                                          if (businessProfileBusinessesRecord
                                                                      .facebook !=
                                                                  '')
                                                            FlutterFlowIconButton(
                                                              borderColor: Colors
                                                                  .transparent,
                                                              borderRadius:
                                                                  30.0,
                                                              borderWidth: 1.0,
                                                              buttonSize: 40.0,
                                                              icon: FaIcon(
                                                                FontAwesomeIcons
                                                                    .facebookF,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .customColor1,
                                                                size: 20.0,
                                                              ),
                                                              onPressed:
                                                                  () async {
                                                                logFirebaseEvent(
                                                                    'BUSINESS_PROFILE_facebookF_ICN_ON_TAP');
                                                                logFirebaseEvent(
                                                                    'IconButton_launch_u_r_l');
                                                                await launchURL(
                                                                    businessProfileBusinessesRecord
                                                                        .facebook);
                                                              },
                                                            ),
                                                          if (businessProfileBusinessesRecord
                                                                      .instagram !=
                                                                  '')
                                                            FlutterFlowIconButton(
                                                              borderColor: Colors
                                                                  .transparent,
                                                              borderRadius:
                                                                  30.0,
                                                              borderWidth: 1.0,
                                                              buttonSize: 40.0,
                                                              icon: FaIcon(
                                                                FontAwesomeIcons
                                                                    .instagram,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .customColor1,
                                                                size: 20.0,
                                                              ),
                                                              onPressed:
                                                                  () async {
                                                                logFirebaseEvent(
                                                                    'BUSINESS_PROFILE_instagram_ICN_ON_TAP');
                                                                logFirebaseEvent(
                                                                    'IconButton_launch_u_r_l');
                                                                await launchURL(
                                                                    businessProfileBusinessesRecord
                                                                        .instagram);
                                                              },
                                                            ),
                                                          if (businessProfileBusinessesRecord
                                                                      .twitter !=
                                                                  '')
                                                            FlutterFlowIconButton(
                                                              borderColor: Colors
                                                                  .transparent,
                                                              borderRadius:
                                                                  30.0,
                                                              borderWidth: 1.0,
                                                              buttonSize: 40.0,
                                                              icon: FaIcon(
                                                                FontAwesomeIcons
                                                                    .twitter,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .customColor1,
                                                                size: 20.0,
                                                              ),
                                                              onPressed:
                                                                  () async {
                                                                logFirebaseEvent(
                                                                    'BUSINESS_PROFILE_PAGE_twitter_ICN_ON_TAP');
                                                                logFirebaseEvent(
                                                                    'IconButton_launch_u_r_l');
                                                                await launchURL(
                                                                    businessProfileBusinessesRecord
                                                                        .twitter);
                                                              },
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
                                    ),
                                  ),
                                ],
                              ),
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  if (responsiveVisibility(
                                    context: context,
                                    tabletLandscape: false,
                                    desktop: false,
                                  ))
                                    Stack(
                                      children: [
                                        Image.network(
                                          valueOrDefault<String>(
                                            businessProfileBusinessesRecord
                                                            .profilePic !=
                                                        ''
                                                ? businessProfileBusinessesRecord
                                                    .profilePic
                                                : 'https://firebasestorage.googleapis.com/v0/b/buybrokoli-1.appspot.com/o/Minimalist%20Modern%20Support%20Small%20Businesses%20Instagram%20Post%20.png?alt=media&token=ca47db93-afc5-4bbe-b76b-d9bd31b891d5&_gl=1*1fuqbvh*_ga*MjExODMwMTc5MS4xNjg1NzQ2ODEw*_ga_CW55HF8NVT*MTY4NTg0MDMzMy45LjEuMTY4NTg0MTkzMC4wLjAuMA..',
                                            'https://firebasestorage.googleapis.com/v0/b/buybrokoli-1.appspot.com/o/Minimalist%20Modern%20Support%20Small%20Businesses%20Instagram%20Post%20.png?alt=media&token=ca47db93-afc5-4bbe-b76b-d9bd31b891d5&_gl=1*1fuqbvh*_ga*MjExODMwMTc5MS4xNjg1NzQ2ODEw*_ga_CW55HF8NVT*MTY4NTg0MDMzMy45LjEuMTY4NTg0MTkzMC4wLjAuMA..',
                                          ),
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  1.0,
                                          height: 283.0,
                                          fit: BoxFit.cover,
                                        ),
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.0),
                                          child: Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                1.0,
                                            height: () {
                                              if (businessProfileBusinessesRecord
                                                      .claimed ==
                                                  false) {
                                                return 385.0;
                                              } else if (businessProfileBusinessesRecord
                                                      .social ==
                                                  false) {
                                                return 285.0;
                                              } else {
                                                return 325.0;
                                              }
                                            }(),
                                            decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                colors: [
                                                  const Color(0x0014181B),
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground
                                                ],
                                                stops: const [0.0, 0.7],
                                                begin: const AlignmentDirectional(
                                                    0.0, -1.0),
                                                end: const AlignmentDirectional(
                                                    0, 1.0),
                                              ),
                                            ),
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 32.0, 16.0, 0.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 32.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        FlutterFlowIconButton(
                                                          borderColor: Colors
                                                              .transparent,
                                                          borderRadius: 8.0,
                                                          borderWidth: 1.0,
                                                          buttonSize: 40.0,
                                                          fillColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primary,
                                                          icon: const Icon(
                                                            Icons.chevron_left,
                                                            color: Colors.white,
                                                            size: 20.0,
                                                          ),
                                                          onPressed: () async {
                                                            logFirebaseEvent(
                                                                'BUSINESS_PROFILE_chevron_left_ICN_ON_TAP');
                                                            logFirebaseEvent(
                                                                'IconButton_navigate_back');
                                                            context.pop();
                                                          },
                                                        ),
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            if (isWeb == false)
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            4.0,
                                                                            0.0,
                                                                            4.0,
                                                                            0.0),
                                                                child:
                                                                    FlutterFlowIconButton(
                                                                  borderColor:
                                                                      Colors
                                                                          .transparent,
                                                                  borderRadius:
                                                                      8.0,
                                                                  borderWidth:
                                                                      1.0,
                                                                  buttonSize:
                                                                      40.0,
                                                                  fillColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  icon: const Icon(
                                                                    Icons
                                                                        .report_outlined,
                                                                    color: Colors
                                                                        .white,
                                                                    size: 25.0,
                                                                  ),
                                                                  onPressed:
                                                                      () async {
                                                                    logFirebaseEvent(
                                                                        'BUSINESS_PROFILE_report_outlined_ICN_ON_');
                                                                    logFirebaseEvent(
                                                                        'IconButton_bottom_sheet');
                                                                    await showModalBottomSheet(
                                                                      isScrollControlled:
                                                                          true,
                                                                      backgroundColor:
                                                                          Colors
                                                                              .transparent,
                                                                      enableDrag:
                                                                          false,
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (context) {
                                                                        return WebViewAware(
                                                                          child:
                                                                              GestureDetector(
                                                                            onTap: () => _model.unfocusNode.canRequestFocus
                                                                                ? FocusScope.of(context).requestFocus(_model.unfocusNode)
                                                                                : FocusScope.of(context).unfocus(),
                                                                            child:
                                                                                Padding(
                                                                              padding: MediaQuery.viewInsetsOf(context),
                                                                              child: ReportPageWidget(
                                                                                business: widget.business!,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        );
                                                                      },
                                                                    ).then((value) =>
                                                                        safeSetState(
                                                                            () {}));
                                                                  },
                                                                ),
                                                              ),
                                                            if (isWeb == false)
                                                              Builder(
                                                                builder:
                                                                    (context) =>
                                                                        Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          4.0,
                                                                          0.0,
                                                                          4.0,
                                                                          0.0),
                                                                  child:
                                                                      FlutterFlowIconButton(
                                                                    borderColor:
                                                                        Colors
                                                                            .transparent,
                                                                    borderRadius:
                                                                        8.0,
                                                                    borderWidth:
                                                                        1.0,
                                                                    buttonSize:
                                                                        40.0,
                                                                    fillColor: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    icon: const Icon(
                                                                      Icons
                                                                          .ios_share,
                                                                      color: Colors
                                                                          .white,
                                                                      size:
                                                                          20.0,
                                                                    ),
                                                                    onPressed:
                                                                        () async {
                                                                      logFirebaseEvent(
                                                                          'BUSINESS_PROFILE_ios_share_ICN_ON_TAP');
                                                                      logFirebaseEvent(
                                                                          'IconButton_share');
                                                                      await Share
                                                                          .share(
                                                                        'Check out ${businessProfileBusinessesRecord.vendorName} new post on BuyBrokoli! ${_model.currentPageLink}',
                                                                        sharePositionOrigin:
                                                                            getWidgetBoundingBox(context),
                                                                      );
                                                                    },
                                                                  ),
                                                                ),
                                                              ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Text(
                                                    businessProfileBusinessesRecord
                                                        .vendorName,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .headlineMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .headlineMediumFamily,
                                                          color: Colors.white,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineMediumFamily),
                                                        ),
                                                  ),
                                                  const Divider(
                                                    height: 24.0,
                                                    thickness: 2.0,
                                                    indent: 130.0,
                                                    endIndent: 130.0,
                                                    color: Colors.white,
                                                  ),
                                                  Text(
                                                    businessProfileBusinessesRecord
                                                        .address,
                                                    style: FlutterFlowTheme.of(
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
                                                  ),
                                                  if (businessProfileBusinessesRecord
                                                          .claimed ==
                                                      false)
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  24.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: FFButtonWidget(
                                                        onPressed: () async {
                                                          logFirebaseEvent(
                                                              'BUSINESS_PROFILE_CLAIM_PROFILE_BTN_ON_TA');
                                                          logFirebaseEvent(
                                                              'Button_generate_current_page_link');
                                                          _model.currentPageLink =
                                                              await generateCurrentPageLink(
                                                            context,
                                                            isShortLink: false,
                                                          );

                                                          logFirebaseEvent(
                                                              'Button_navigate_to');

                                                          context.pushNamed(
                                                            'RegisterBusiness_State',
                                                            queryParameters: {
                                                              'business':
                                                                  serializeParam(
                                                                widget.business,
                                                                ParamType
                                                                    .DocumentReference,
                                                              ),
                                                            }.withoutNulls,
                                                          );
                                                        },
                                                        text: 'Claim Profile',
                                                        options:
                                                            FFButtonOptions(
                                                          width:
                                                              double.infinity,
                                                          height: 44.0,
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
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .titleSmallFamily,
                                                                    color: Colors
                                                                        .white,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            FlutterFlowTheme.of(context).titleSmallFamily),
                                                                  ),
                                                          elevation: 2.0,
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Colors
                                                                .transparent,
                                                            width: 1.0,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 22.0,
                                                                0.0, 12.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      children: [
                                                        if (businessProfileBusinessesRecord
                                                                    .website !=
                                                                '')
                                                          Expanded(
                                                            flex: 1,
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(4.0),
                                                              child:
                                                                  FFButtonWidget(
                                                                onPressed:
                                                                    () async {
                                                                  logFirebaseEvent(
                                                                      'BUSINESS_PROFILE_PAGE_WEBSITE_BTN_ON_TAP');
                                                                  logFirebaseEvent(
                                                                      'Button_launch_u_r_l');
                                                                  await launchURL(
                                                                      businessProfileBusinessesRecord
                                                                          .website);
                                                                },
                                                                text: 'Website',
                                                                icon: const Icon(
                                                                  Icons
                                                                      .web_asset,
                                                                  size: 15.0,
                                                                ),
                                                                options:
                                                                    FFButtonOptions(
                                                                  width: double
                                                                      .infinity,
                                                                  height: 44.0,
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  iconPadding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBtnText,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodySmallFamily,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .customColor1,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodySmallFamily),
                                                                      ),
                                                                  elevation:
                                                                      0.0,
                                                                  borderSide:
                                                                      const BorderSide(
                                                                    color: Color(
                                                                        0x2E000000),
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        if ((businessProfileBusinessesRecord
                                                                    .paid ==
                                                                true) &&
                                                            !businessProfileBusinessesRecord
                                                                .blockedUsers
                                                                .contains(
                                                                    currentUserReference))
                                                          Expanded(
                                                            flex: 1,
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(4.0),
                                                              child: StreamBuilder<
                                                                  List<
                                                                      ChatsRecord>>(
                                                                stream:
                                                                    queryChatsRecord(
                                                                  queryBuilder: (chatsRecord) =>
                                                                      chatsRecord
                                                                          .where(
                                                                            'business',
                                                                            isEqualTo:
                                                                                widget.business,
                                                                          )
                                                                          .where(
                                                                            'users',
                                                                            arrayContains:
                                                                                currentUserReference,
                                                                          ),
                                                                  singleRecord:
                                                                      true,
                                                                ),
                                                                builder: (context,
                                                                    snapshot) {
                                                                  // Customize what your widget looks like when it's loading.
                                                                  if (!snapshot
                                                                      .hasData) {
                                                                    return Center(
                                                                      child:
                                                                          SizedBox(
                                                                        width:
                                                                            50.0,
                                                                        height:
                                                                            50.0,
                                                                        child:
                                                                            SpinKitSquareCircle(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                          size:
                                                                              50.0,
                                                                        ),
                                                                      ),
                                                                    );
                                                                  }
                                                                  List<ChatsRecord>
                                                                      buttonChatsRecordList =
                                                                      snapshot
                                                                          .data!;
                                                                  final buttonChatsRecord = buttonChatsRecordList
                                                                          .isNotEmpty
                                                                      ? buttonChatsRecordList
                                                                          .first
                                                                      : null;
                                                                  return FFButtonWidget(
                                                                    onPressed:
                                                                        () async {
                                                                      logFirebaseEvent(
                                                                          'BUSINESS_PROFILE_PAGE_CONTACT_BTN_ON_TAP');
                                                                      if (buttonChatsRecord !=
                                                                          null) {
                                                                        logFirebaseEvent(
                                                                            'Button_navigate_to');

                                                                        context
                                                                            .pushNamed(
                                                                          'Chat',
                                                                          queryParameters:
                                                                              {
                                                                            'chatRefDoc':
                                                                                serializeParam(
                                                                              buttonChatsRecord,
                                                                              ParamType.Document,
                                                                            ),
                                                                            'chatRef':
                                                                                serializeParam(
                                                                              buttonChatsRecord.reference,
                                                                              ParamType.DocumentReference,
                                                                            ),
                                                                          }.withoutNulls,
                                                                          extra: <String,
                                                                              dynamic>{
                                                                            'chatRefDoc':
                                                                                buttonChatsRecord,
                                                                          },
                                                                        );
                                                                      } else {
                                                                        logFirebaseEvent(
                                                                            'Button_backend_call');

                                                                        var chatsRecordReference = ChatsRecord
                                                                            .collection
                                                                            .doc();
                                                                        await chatsRecordReference
                                                                            .set({
                                                                          ...createChatsRecordData(
                                                                            userA:
                                                                                currentUserReference,
                                                                            userB:
                                                                                businessProfileBusinessesRecord.owner,
                                                                            vendorName:
                                                                                businessProfileBusinessesRecord.vendorName,
                                                                            business:
                                                                                widget.business,
                                                                          ),
                                                                          ...mapToFirestore(
                                                                            {
                                                                              'users': [
                                                                                currentUserReference
                                                                              ],
                                                                            },
                                                                          ),
                                                                        });
                                                                        _model.newVendorChat =
                                                                            ChatsRecord.getDocumentFromData({
                                                                          ...createChatsRecordData(
                                                                            userA:
                                                                                currentUserReference,
                                                                            userB:
                                                                                businessProfileBusinessesRecord.owner,
                                                                            vendorName:
                                                                                businessProfileBusinessesRecord.vendorName,
                                                                            business:
                                                                                widget.business,
                                                                          ),
                                                                          ...mapToFirestore(
                                                                            {
                                                                              'users': [
                                                                                currentUserReference
                                                                              ],
                                                                            },
                                                                          ),
                                                                        }, chatsRecordReference);
                                                                        logFirebaseEvent(
                                                                            'Button_navigate_to');

                                                                        context
                                                                            .pushNamed(
                                                                          'Chat',
                                                                          queryParameters:
                                                                              {
                                                                            'chatRefDoc':
                                                                                serializeParam(
                                                                              _model.newVendorChat,
                                                                              ParamType.Document,
                                                                            ),
                                                                            'chatRef':
                                                                                serializeParam(
                                                                              _model.newVendorChat?.reference,
                                                                              ParamType.DocumentReference,
                                                                            ),
                                                                          }.withoutNulls,
                                                                          extra: <String,
                                                                              dynamic>{
                                                                            'chatRefDoc':
                                                                                _model.newVendorChat,
                                                                          },
                                                                        );
                                                                      }

                                                                      setState(
                                                                          () {});
                                                                    },
                                                                    text:
                                                                        'Contact',
                                                                    icon: const Icon(
                                                                      Icons
                                                                          .chat_bubble,
                                                                      size:
                                                                          15.0,
                                                                    ),
                                                                    options:
                                                                        FFButtonOptions(
                                                                      width: double
                                                                          .infinity,
                                                                      height:
                                                                          44.0,
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBtnText,
                                                                      textStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleSmall
                                                                          .override(
                                                                            fontFamily:
                                                                                FlutterFlowTheme.of(context).titleSmallFamily,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).customColor1,
                                                                            fontSize:
                                                                                14.0,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                          ),
                                                                      elevation:
                                                                          0.0,
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .lineColor,
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                    ),
                                                                  );
                                                                },
                                                              ),
                                                            ),
                                                          ),
                                                        Expanded(
                                                          flex: 1,
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets.all(
                                                                    4.0),
                                                            child: StreamBuilder<
                                                                List<
                                                                    VendorRatingsRecord>>(
                                                              stream:
                                                                  queryVendorRatingsRecord(
                                                                queryBuilder:
                                                                    (vendorRatingsRecord) =>
                                                                        vendorRatingsRecord
                                                                            .where(
                                                                              'user',
                                                                              isEqualTo: currentUserReference,
                                                                            )
                                                                            .where(
                                                                              'business',
                                                                              isEqualTo: businessProfileBusinessesRecord.reference,
                                                                            ),
                                                                singleRecord:
                                                                    true,
                                                              ),
                                                              builder: (context,
                                                                  snapshot) {
                                                                // Customize what your widget looks like when it's loading.
                                                                if (!snapshot
                                                                    .hasData) {
                                                                  return Center(
                                                                    child:
                                                                        SizedBox(
                                                                      width:
                                                                          50.0,
                                                                      height:
                                                                          50.0,
                                                                      child:
                                                                          SpinKitSquareCircle(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                        size:
                                                                            50.0,
                                                                      ),
                                                                    ),
                                                                  );
                                                                }
                                                                List<VendorRatingsRecord>
                                                                    buttonVendorRatingsRecordList =
                                                                    snapshot
                                                                        .data!;
                                                                final buttonVendorRatingsRecord =
                                                                    buttonVendorRatingsRecordList
                                                                            .isNotEmpty
                                                                        ? buttonVendorRatingsRecordList
                                                                            .first
                                                                        : null;
                                                                return FFButtonWidget(
                                                                  onPressed:
                                                                      () async {
                                                                    logFirebaseEvent(
                                                                        'BUSINESS_PROFILE_PAGE_REVIEW_BTN_ON_TAP');
                                                                    if ((buttonVendorRatingsRecord !=
                                                                            null) ==
                                                                        true) {
                                                                      logFirebaseEvent(
                                                                          'Button_alert_dialog');
                                                                      await showDialog(
                                                                        context:
                                                                            context,
                                                                        builder:
                                                                            (alertDialogContext) {
                                                                          return WebViewAware(
                                                                            child:
                                                                                AlertDialog(
                                                                              title: const Text('Already Submitted'),
                                                                              content: const Text('You have already submitted a review'),
                                                                              actions: [
                                                                                TextButton(
                                                                                  onPressed: () => Navigator.pop(alertDialogContext),
                                                                                  child: const Text('Ok'),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          );
                                                                        },
                                                                      );
                                                                    } else {
                                                                      logFirebaseEvent(
                                                                          'Button_bottom_sheet');
                                                                      await showModalBottomSheet(
                                                                        isScrollControlled:
                                                                            true,
                                                                        backgroundColor:
                                                                            Colors.transparent,
                                                                        barrierColor:
                                                                            const Color(0x00000000),
                                                                        enableDrag:
                                                                            false,
                                                                        context:
                                                                            context,
                                                                        builder:
                                                                            (context) {
                                                                          return WebViewAware(
                                                                            child:
                                                                                GestureDetector(
                                                                              onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                              child: Padding(
                                                                                padding: MediaQuery.viewInsetsOf(context),
                                                                                child: RateBusinessWidget(
                                                                                  business: widget.business,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          );
                                                                        },
                                                                      ).then((value) =>
                                                                          safeSetState(
                                                                              () {}));
                                                                    }
                                                                  },
                                                                  text:
                                                                      'Review',
                                                                  icon: const Icon(
                                                                    FFIcons
                                                                        .kbroccoli2,
                                                                    size: 15.0,
                                                                  ),
                                                                  options:
                                                                      FFButtonOptions(
                                                                    width: double
                                                                        .infinity,
                                                                    height:
                                                                        44.0,
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    iconPadding:
                                                                        const EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBtnText,
                                                                    textStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleSmall
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).titleSmallFamily,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).customColor1,
                                                                          fontSize:
                                                                              14.0,
                                                                          useGoogleFonts:
                                                                              GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                        ),
                                                                    elevation:
                                                                        0.0,
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .lineColor,
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                  ),
                                                                );
                                                              },
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  if ((businessProfileBusinessesRecord
                                                              .social ==
                                                          true) &&
                                                      responsiveVisibility(
                                                        context: context,
                                                        tabletLandscape: false,
                                                        desktop: false,
                                                      ))
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        if (businessProfileBusinessesRecord
                                                                    .tiktok !=
                                                                '')
                                                          FlutterFlowIconButton(
                                                            borderColor: Colors
                                                                .transparent,
                                                            borderRadius: 30.0,
                                                            borderWidth: 1.0,
                                                            buttonSize: 40.0,
                                                            icon: FaIcon(
                                                              FontAwesomeIcons
                                                                  .tiktok,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .customColor1,
                                                              size: 20.0,
                                                            ),
                                                            onPressed:
                                                                () async {
                                                              logFirebaseEvent(
                                                                  'BUSINESS_PROFILE_PAGE_tiktok_ICN_ON_TAP');
                                                              logFirebaseEvent(
                                                                  'IconButton_launch_u_r_l');
                                                              await launchURL(
                                                                  businessProfileBusinessesRecord
                                                                      .tiktok);
                                                            },
                                                          ),
                                                        if (businessProfileBusinessesRecord
                                                                    .facebook !=
                                                                '')
                                                          FlutterFlowIconButton(
                                                            borderColor: Colors
                                                                .transparent,
                                                            borderRadius: 30.0,
                                                            borderWidth: 1.0,
                                                            buttonSize: 40.0,
                                                            icon: FaIcon(
                                                              FontAwesomeIcons
                                                                  .facebookF,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .customColor1,
                                                              size: 20.0,
                                                            ),
                                                            onPressed:
                                                                () async {
                                                              logFirebaseEvent(
                                                                  'BUSINESS_PROFILE_facebookF_ICN_ON_TAP');
                                                              logFirebaseEvent(
                                                                  'IconButton_launch_u_r_l');
                                                              await launchURL(
                                                                  businessProfileBusinessesRecord
                                                                      .facebook);
                                                            },
                                                          ),
                                                        if (businessProfileBusinessesRecord
                                                                    .instagram !=
                                                                '')
                                                          FlutterFlowIconButton(
                                                            borderColor: Colors
                                                                .transparent,
                                                            borderRadius: 30.0,
                                                            borderWidth: 1.0,
                                                            buttonSize: 40.0,
                                                            icon: FaIcon(
                                                              FontAwesomeIcons
                                                                  .instagram,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .customColor1,
                                                              size: 20.0,
                                                            ),
                                                            onPressed:
                                                                () async {
                                                              logFirebaseEvent(
                                                                  'BUSINESS_PROFILE_instagram_ICN_ON_TAP');
                                                              logFirebaseEvent(
                                                                  'IconButton_launch_u_r_l');
                                                              await launchURL(
                                                                  businessProfileBusinessesRecord
                                                                      .instagram);
                                                            },
                                                          ),
                                                        if (businessProfileBusinessesRecord
                                                                    .twitter !=
                                                                '')
                                                          FlutterFlowIconButton(
                                                            borderColor: Colors
                                                                .transparent,
                                                            borderRadius: 30.0,
                                                            borderWidth: 1.0,
                                                            buttonSize: 40.0,
                                                            icon: FaIcon(
                                                              FontAwesomeIcons
                                                                  .twitter,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .customColor1,
                                                              size: 20.0,
                                                            ),
                                                            onPressed:
                                                                () async {
                                                              logFirebaseEvent(
                                                                  'BUSINESS_PROFILE_PAGE_twitter_ICN_ON_TAP');
                                                              logFirebaseEvent(
                                                                  'IconButton_launch_u_r_l');
                                                              await launchURL(
                                                                  businessProfileBusinessesRecord
                                                                      .twitter);
                                                            },
                                                          ),
                                                      ],
                                                    ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  if ((businessProfileBusinessesRecord.paid ==
                                          false) &&
                                      (businessProfileBusinessesRecord
                                              .claimed ==
                                          false))
                                    Expanded(
                                      child: Container(
                                        height: 100.0,
                                        constraints: BoxConstraints(
                                          maxHeight:
                                              MediaQuery.sizeOf(context).height,
                                        ),
                                        decoration: const BoxDecoration(),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 12.0, 0.0, 0.0),
                                          child: Column(
                                            children: [
                                              Align(
                                                alignment: const Alignment(0.0, 0),
                                                child: TabBar(
                                                  isScrollable: true,
                                                  labelColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                  unselectedLabelColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryText,
                                                  labelPadding:
                                                      const EdgeInsetsDirectional
                                                          .fromSTEB(32.0, 0.0,
                                                              32.0, 0.0),
                                                  labelStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium,
                                                  unselectedLabelStyle:
                                                      const TextStyle(),
                                                  indicatorColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  tabs: const [
                                                    Tab(
                                                      text: 'About',
                                                    ),
                                                    Tab(
                                                      text: 'Locations',
                                                    ),
                                                  ],
                                                  controller:
                                                      _model.tabBarController1,
                                                  onTap: (i) async {
                                                    [
                                                      () async {},
                                                      () async {}
                                                    ][i]();
                                                  },
                                                ),
                                              ),
                                              Expanded(
                                                child: TabBarView(
                                                  controller:
                                                      _model.tabBarController1,
                                                  children: [
                                                    Container(
                                                      width: double.infinity,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        boxShadow: const [
                                                          BoxShadow(
                                                            blurRadius: 3.0,
                                                            color: Color(
                                                                0x2E000000),
                                                            offset: Offset(
                                                                0.0, 2.0),
                                                          )
                                                        ],
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        border: Border.all(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                          width: 2.0,
                                                        ),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets.all(4.0),
                                                        child:
                                                            SingleChildScrollView(
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Flexible(
                                                                child: Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          12.0,
                                                                          12.0,
                                                                          12.0,
                                                                          8.0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Expanded(
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            ClipRRect(
                                                                              borderRadius: BorderRadius.circular(60.0),
                                                                              child: Image.network(
                                                                                valueOrDefault<String>(
                                                                                  businessProfileBusinessesRecord.vendorLogo,
                                                                                  'https://firebasestorage.googleapis.com/v0/b/buybrokoli-1.appspot.com/o/Minimalist%20Modern%20Support%20Small%20Businesses%20Instagram%20Post%20.png?alt=media&token=ca47db93-afc5-4bbe-b76b-d9bd31b891d5&_gl=1*1fuqbvh*_ga*MjExODMwMTc5MS4xNjg1NzQ2ODEw*_ga_CW55HF8NVT*MTY4NTg0MDMzMy45LjEuMTY4NTg0MTkzMC4wLjAuMA..',
                                                                                ),
                                                                                width: 45.0,
                                                                                height: 45.0,
                                                                                fit: BoxFit.cover,
                                                                              ),
                                                                            ),
                                                                            Expanded(
                                                                              child: Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 24.0, 0.0),
                                                                                child: Text(
                                                                                  businessProfileBusinessesRecord.vendorName,
                                                                                  style: FlutterFlowTheme.of(context).titleMedium,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      if (businessProfileBusinessesRecord
                                                                              .totalRatings >
                                                                          0)
                                                                        Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.end,
                                                                          children: [
                                                                            Text(
                                                                              'Rating',
                                                                              style: FlutterFlowTheme.of(context).bodySmall,
                                                                            ),
                                                                            Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                                  child: Text(
                                                                                    formatNumber(
                                                                                      businessProfileBusinessesRecord.averageRating,
                                                                                      formatType: FormatType.decimal,
                                                                                      decimalType: DecimalType.periodDecimal,
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).headlineMedium,
                                                                                  ),
                                                                                ),
                                                                                Icon(
                                                                                  FFIcons.kbroccoli2,
                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                  size: 20.0,
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ],
                                                                        ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        12.0,
                                                                        0.0,
                                                                        12.0,
                                                                        8.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Expanded(
                                                                      child:
                                                                          Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            12.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            AutoSizeText(
                                                                          businessProfileBusinessesRecord
                                                                              .description,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                fontWeight: FontWeight.normal,
                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                              ),
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
                                                    ),
                                                    StreamBuilder<
                                                        List<PlacesRecord>>(
                                                      stream: queryPlacesRecord(
                                                        queryBuilder:
                                                            (placesRecord) =>
                                                                placesRecord
                                                                    .where(
                                                          'business',
                                                          isEqualTo:
                                                              widget.business,
                                                        ),
                                                      ),
                                                      builder:
                                                          (context, snapshot) {
                                                        // Customize what your widget looks like when it's loading.
                                                        if (!snapshot.hasData) {
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
                                                        List<PlacesRecord>
                                                            listViewPlacesRecordList =
                                                            snapshot.data!;
                                                        return ListView.builder(
                                                          padding:
                                                              EdgeInsets.zero,
                                                          scrollDirection:
                                                              Axis.vertical,
                                                          itemCount:
                                                              listViewPlacesRecordList
                                                                  .length,
                                                          itemBuilder: (context,
                                                              listViewIndex) {
                                                            final listViewPlacesRecord =
                                                                listViewPlacesRecordList[
                                                                    listViewIndex];
                                                            return Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          0.0,
                                                                          16.0,
                                                                          0.0),
                                                              child: Container(
                                                                width: 0.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                child: Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          12.0,
                                                                          16.0,
                                                                          12.0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                        listViewPlacesRecord
                                                                            .locationName,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                              color: FlutterFlowTheme.of(context).secondary,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                            ),
                                                                      ),
                                                                      Divider(
                                                                        height:
                                                                            16.0,
                                                                        thickness:
                                                                            2.0,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .lineColor,
                                                                      ),
                                                                      InkWell(
                                                                        splashColor:
                                                                            Colors.transparent,
                                                                        focusColor:
                                                                            Colors.transparent,
                                                                        hoverColor:
                                                                            Colors.transparent,
                                                                        highlightColor:
                                                                            Colors.transparent,
                                                                        onTap:
                                                                            () async {
                                                                          logFirebaseEvent(
                                                                              'BUSINESS_PROFILE_Row_85wfd689_ON_TAP');
                                                                          logFirebaseEvent(
                                                                              'Row_launch_map');
                                                                          await launchMap(
                                                                            location:
                                                                                listViewPlacesRecord.placePosition,
                                                                            title:
                                                                                listViewPlacesRecord.vendorName,
                                                                          );
                                                                        },
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Icon(
                                                                              Icons.location_on,
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              size: 24.0,
                                                                            ),
                                                                            Text(
                                                                              listViewPlacesRecord.address,
                                                                              style: FlutterFlowTheme.of(context).bodyLarge,
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            8.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child: StreamBuilder<
                                                                            List<HoursRecord>>(
                                                                          stream:
                                                                              queryHoursRecord(
                                                                            parent:
                                                                                listViewPlacesRecord.reference,
                                                                            singleRecord:
                                                                                true,
                                                                          ),
                                                                          builder:
                                                                              (context, snapshot) {
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
                                                                            List<HoursRecord>
                                                                                rowHoursRecordList =
                                                                                snapshot.data!;
                                                                            // Return an empty Container when the item does not exist.
                                                                            if (snapshot.data!.isEmpty) {
                                                                              return Container();
                                                                            }
                                                                            final rowHoursRecord = rowHoursRecordList.isNotEmpty
                                                                                ? rowHoursRecordList.first
                                                                                : null;
                                                                            return Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                  child: FaIcon(
                                                                                    FontAwesomeIcons.clock,
                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                    size: 24.0,
                                                                                  ),
                                                                                ),
                                                                                StreamBuilder<List<HoursRecord>>(
                                                                                  stream: queryHoursRecord(
                                                                                    parent: listViewPlacesRecord.reference,
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
                                                                                            color: FlutterFlowTheme.of(context).primary,
                                                                                            size: 50.0,
                                                                                          ),
                                                                                        ),
                                                                                      );
                                                                                    }
                                                                                    List<HoursRecord> containerHoursRecordList = snapshot.data!;
                                                                                    final containerHoursRecord = containerHoursRecordList.isNotEmpty ? containerHoursRecordList.first : null;
                                                                                    return Container(
                                                                                      decoration: const BoxDecoration(),
                                                                                      child: Column(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                                        children: [
                                                                                          if (containerHoursRecord?.monday ?? true)
                                                                                            Text(
                                                                                              'Monday: ${dateTimeFormat(
                                                                                                'jm',
                                                                                                containerHoursRecord?.mondayStart,
                                                                                                locale: FFLocalizations.of(context).languageCode,
                                                                                              )} - ${dateTimeFormat(
                                                                                                'jm',
                                                                                                containerHoursRecord?.mondayEnd,
                                                                                                locale: FFLocalizations.of(context).languageCode,
                                                                                              )}',
                                                                                              style: FlutterFlowTheme.of(context).bodyLarge,
                                                                                            ),
                                                                                          if (containerHoursRecord?.tuesday ?? true)
                                                                                            Text(
                                                                                              'Tuesday: ${dateTimeFormat(
                                                                                                'jm',
                                                                                                containerHoursRecord?.tuesdayStart,
                                                                                                locale: FFLocalizations.of(context).languageCode,
                                                                                              )} - ${dateTimeFormat(
                                                                                                'jm',
                                                                                                containerHoursRecord?.tuesdayEnd,
                                                                                                locale: FFLocalizations.of(context).languageCode,
                                                                                              )}',
                                                                                              style: FlutterFlowTheme.of(context).bodyLarge,
                                                                                            ),
                                                                                          if (containerHoursRecord?.wednesday ?? true)
                                                                                            Text(
                                                                                              'Wednesday: ${dateTimeFormat(
                                                                                                'jm',
                                                                                                containerHoursRecord?.wednesdayStart,
                                                                                                locale: FFLocalizations.of(context).languageCode,
                                                                                              )} - ${dateTimeFormat(
                                                                                                'jm',
                                                                                                containerHoursRecord?.wednesdayEnd,
                                                                                                locale: FFLocalizations.of(context).languageCode,
                                                                                              )}',
                                                                                              style: FlutterFlowTheme.of(context).bodyLarge,
                                                                                            ),
                                                                                          if (containerHoursRecord?.thursday ?? true)
                                                                                            Text(
                                                                                              'Thursday: ${dateTimeFormat(
                                                                                                'jm',
                                                                                                containerHoursRecord?.thursdayStart,
                                                                                                locale: FFLocalizations.of(context).languageCode,
                                                                                              )} - ${dateTimeFormat(
                                                                                                'jm',
                                                                                                containerHoursRecord?.thursdayEnd,
                                                                                                locale: FFLocalizations.of(context).languageCode,
                                                                                              )}',
                                                                                              style: FlutterFlowTheme.of(context).bodyLarge,
                                                                                            ),
                                                                                          if (containerHoursRecord?.friday ?? true)
                                                                                            Text(
                                                                                              'Friday: ${dateTimeFormat(
                                                                                                'jm',
                                                                                                containerHoursRecord?.fridayStart,
                                                                                                locale: FFLocalizations.of(context).languageCode,
                                                                                              )} - ${dateTimeFormat(
                                                                                                'jm',
                                                                                                containerHoursRecord?.fridayEnd,
                                                                                                locale: FFLocalizations.of(context).languageCode,
                                                                                              )}',
                                                                                              style: FlutterFlowTheme.of(context).bodyLarge,
                                                                                            ),
                                                                                          if (containerHoursRecord?.saturday ?? true)
                                                                                            Text(
                                                                                              'Saturday: ${dateTimeFormat(
                                                                                                'jm',
                                                                                                containerHoursRecord?.saturdayStart,
                                                                                                locale: FFLocalizations.of(context).languageCode,
                                                                                              )} - ${dateTimeFormat(
                                                                                                'jm',
                                                                                                containerHoursRecord?.saturdayEnd,
                                                                                                locale: FFLocalizations.of(context).languageCode,
                                                                                              )}',
                                                                                              style: FlutterFlowTheme.of(context).bodyLarge,
                                                                                            ),
                                                                                          if (containerHoursRecord?.sunday ?? true)
                                                                                            Text(
                                                                                              'Sunday: ${dateTimeFormat(
                                                                                                'jm',
                                                                                                containerHoursRecord?.sundayStart,
                                                                                                locale: FFLocalizations.of(context).languageCode,
                                                                                              )} - ${dateTimeFormat(
                                                                                                'jm',
                                                                                                containerHoursRecord?.sundayEnd,
                                                                                                locale: FFLocalizations.of(context).languageCode,
                                                                                              )}',
                                                                                              style: FlutterFlowTheme.of(context).bodyLarge,
                                                                                            ),
                                                                                        ],
                                                                                      ),
                                                                                    );
                                                                                  },
                                                                                ),
                                                                              ],
                                                                            );
                                                                          },
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
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  if ((businessProfileBusinessesRecord.paid ==
                                          false) &&
                                      (businessProfileBusinessesRecord
                                              .claimed ==
                                          true) &&
                                      (businessProfileBusinessesRecord.type ==
                                          'Retail'))
                                    Expanded(
                                      child: Container(
                                        height: 100.0,
                                        constraints: BoxConstraints(
                                          maxHeight:
                                              MediaQuery.sizeOf(context).height,
                                        ),
                                        decoration: const BoxDecoration(),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 12.0, 0.0, 0.0),
                                          child: Column(
                                            children: [
                                              Align(
                                                alignment: const Alignment(0.0, 0),
                                                child: TabBar(
                                                  isScrollable: true,
                                                  labelColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                  unselectedLabelColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryText,
                                                  labelPadding:
                                                      const EdgeInsetsDirectional
                                                          .fromSTEB(32.0, 0.0,
                                                              32.0, 0.0),
                                                  labelStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium,
                                                  unselectedLabelStyle:
                                                      const TextStyle(),
                                                  indicatorColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  tabs: const [
                                                    Tab(
                                                      text: 'About',
                                                    ),
                                                    Tab(
                                                      text: 'Locations',
                                                    ),
                                                    Tab(
                                                      text: 'Products',
                                                    ),
                                                    Tab(
                                                      text: 'Photos',
                                                    ),
                                                  ],
                                                  controller:
                                                      _model.tabBarController2,
                                                  onTap: (i) async {
                                                    [
                                                      () async {},
                                                      () async {},
                                                      () async {},
                                                      () async {}
                                                    ][i]();
                                                  },
                                                ),
                                              ),
                                              Expanded(
                                                child: TabBarView(
                                                  controller:
                                                      _model.tabBarController2,
                                                  children: [
                                                    Container(
                                                      width: double.infinity,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        boxShadow: const [
                                                          BoxShadow(
                                                            blurRadius: 3.0,
                                                            color: Color(
                                                                0x2E000000),
                                                            offset: Offset(
                                                                0.0, 2.0),
                                                          )
                                                        ],
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        border: Border.all(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                          width: 2.0,
                                                        ),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets.all(4.0),
                                                        child:
                                                            SingleChildScrollView(
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Padding(
                                                                padding: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        12.0,
                                                                        12.0,
                                                                        12.0,
                                                                        8.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.circular(60.0),
                                                                          child:
                                                                              Image.network(
                                                                            valueOrDefault<String>(
                                                                              businessProfileBusinessesRecord.vendorLogo,
                                                                              'https://firebasestorage.googleapis.com/v0/b/buybrokoli-1.appspot.com/o/Minimalist%20Modern%20Support%20Small%20Businesses%20Instagram%20Post%20.png?alt=media&token=ca47db93-afc5-4bbe-b76b-d9bd31b891d5&_gl=1*1fuqbvh*_ga*MjExODMwMTc5MS4xNjg1NzQ2ODEw*_ga_CW55HF8NVT*MTY4NTg0MDMzMy45LjEuMTY4NTg0MTkzMC4wLjAuMA..',
                                                                            ),
                                                                            width:
                                                                                45.0,
                                                                            height:
                                                                                45.0,
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              8.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            businessProfileBusinessesRecord.vendorName,
                                                                            style:
                                                                                FlutterFlowTheme.of(context).titleMedium,
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    if (businessProfileBusinessesRecord
                                                                            .totalRatings >
                                                                        0)
                                                                      Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.end,
                                                                        children: [
                                                                          Text(
                                                                            'Rating',
                                                                            style:
                                                                                FlutterFlowTheme.of(context).bodySmall,
                                                                          ),
                                                                          Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                                child: Text(
                                                                                  formatNumber(
                                                                                    businessProfileBusinessesRecord.averageRating,
                                                                                    formatType: FormatType.decimal,
                                                                                    decimalType: DecimalType.periodDecimal,
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).headlineMedium,
                                                                                ),
                                                                              ),
                                                                              Icon(
                                                                                FFIcons.kbroccoli2,
                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                size: 20.0,
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ],
                                                                      ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        12.0,
                                                                        0.0,
                                                                        12.0,
                                                                        8.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Expanded(
                                                                      child:
                                                                          Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            12.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            AutoSizeText(
                                                                          businessProfileBusinessesRecord
                                                                              .description,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                fontWeight: FontWeight.normal,
                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                              ),
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
                                                    ),
                                                    StreamBuilder<
                                                        List<PlacesRecord>>(
                                                      stream: queryPlacesRecord(
                                                        queryBuilder:
                                                            (placesRecord) =>
                                                                placesRecord
                                                                    .where(
                                                          'business',
                                                          isEqualTo:
                                                              widget.business,
                                                        ),
                                                      ),
                                                      builder:
                                                          (context, snapshot) {
                                                        // Customize what your widget looks like when it's loading.
                                                        if (!snapshot.hasData) {
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
                                                        List<PlacesRecord>
                                                            listViewPlacesRecordList =
                                                            snapshot.data!;
                                                        return ListView.builder(
                                                          padding:
                                                              EdgeInsets.zero,
                                                          scrollDirection:
                                                              Axis.vertical,
                                                          itemCount:
                                                              listViewPlacesRecordList
                                                                  .length,
                                                          itemBuilder: (context,
                                                              listViewIndex) {
                                                            final listViewPlacesRecord =
                                                                listViewPlacesRecordList[
                                                                    listViewIndex];
                                                            return Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          0.0,
                                                                          16.0,
                                                                          0.0),
                                                              child: Container(
                                                                width: 0.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                child: Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          12.0,
                                                                          16.0,
                                                                          12.0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                        listViewPlacesRecord
                                                                            .locationName,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                              color: FlutterFlowTheme.of(context).secondary,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                            ),
                                                                      ),
                                                                      Divider(
                                                                        height:
                                                                            16.0,
                                                                        thickness:
                                                                            2.0,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .lineColor,
                                                                      ),
                                                                      InkWell(
                                                                        splashColor:
                                                                            Colors.transparent,
                                                                        focusColor:
                                                                            Colors.transparent,
                                                                        hoverColor:
                                                                            Colors.transparent,
                                                                        highlightColor:
                                                                            Colors.transparent,
                                                                        onTap:
                                                                            () async {
                                                                          logFirebaseEvent(
                                                                              'BUSINESS_PROFILE_Row_sv4cip0j_ON_TAP');
                                                                          logFirebaseEvent(
                                                                              'Row_launch_map');
                                                                          await launchMap(
                                                                            location:
                                                                                listViewPlacesRecord.placePosition,
                                                                            title:
                                                                                listViewPlacesRecord.vendorName,
                                                                          );
                                                                        },
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Icon(
                                                                              Icons.location_on,
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              size: 24.0,
                                                                            ),
                                                                            Text(
                                                                              listViewPlacesRecord.address,
                                                                              style: FlutterFlowTheme.of(context).bodyLarge,
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
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  24.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: StreamBuilder<
                                                          List<ProductsRecord>>(
                                                        stream:
                                                            queryProductsRecord(
                                                          queryBuilder:
                                                              (productsRecord) =>
                                                                  productsRecord
                                                                      .where(
                                                            'business',
                                                            isEqualTo:
                                                                widget.business,
                                                          ),
                                                        ),
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
                                                          List<ProductsRecord>
                                                              wrapProductsRecordList =
                                                              snapshot.data!;
                                                          if (wrapProductsRecordList
                                                              .isEmpty) {
                                                            return const EmptyProductListWidget();
                                                          }
                                                          return Wrap(
                                                            spacing: 0.0,
                                                            runSpacing: 20.0,
                                                            alignment:
                                                                WrapAlignment
                                                                    .spaceEvenly,
                                                            crossAxisAlignment:
                                                                WrapCrossAlignment
                                                                    .start,
                                                            direction:
                                                                Axis.horizontal,
                                                            runAlignment:
                                                                WrapAlignment
                                                                    .start,
                                                            verticalDirection:
                                                                VerticalDirection
                                                                    .down,
                                                            clipBehavior:
                                                                Clip.none,
                                                            children: List.generate(
                                                                wrapProductsRecordList
                                                                    .length,
                                                                (wrapIndex) {
                                                              final wrapProductsRecord =
                                                                  wrapProductsRecordList[
                                                                      wrapIndex];
                                                              return InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  logFirebaseEvent(
                                                                      'BUSINESS_PROFILE_cardProduct40_ON_TAP');
                                                                  logFirebaseEvent(
                                                                      'cardProduct40_navigate_to');

                                                                  context
                                                                      .pushNamed(
                                                                    'ProductPage',
                                                                    queryParameters:
                                                                        {
                                                                      'product':
                                                                          serializeParam(
                                                                        wrapProductsRecord
                                                                            .reference,
                                                                        ParamType
                                                                            .DocumentReference,
                                                                      ),
                                                                    }.withoutNulls,
                                                                  );
                                                                },
                                                                child:
                                                                    Container(
                                                                  width: 170.0,
                                                                  height: 250.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    boxShadow: const [
                                                                      BoxShadow(
                                                                        blurRadius:
                                                                            2.0,
                                                                        color: Color(
                                                                            0x520E151B),
                                                                        offset: Offset(
                                                                            0.0,
                                                                            1.0),
                                                                      )
                                                                    ],
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            12.0),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondary,
                                                                    ),
                                                                  ),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
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
                                                                        child: Image
                                                                            .network(
                                                                          wrapProductsRecord
                                                                              .productPhoto,
                                                                          width:
                                                                              double.infinity,
                                                                          height:
                                                                              150.0,
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            8.0,
                                                                            4.0,
                                                                            0.0,
                                                                            4.0),
                                                                        child:
                                                                            Text(
                                                                          '${wrapProductsRecord.category} | ${wrapProductsRecord.type}',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .labelSmall
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).labelSmallFamily,
                                                                                fontSize: 10.0,
                                                                                fontWeight: FontWeight.w300,
                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelSmallFamily),
                                                                              ),
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            8.0,
                                                                            4.0,
                                                                            8.0,
                                                                            8.0),
                                                                        child:
                                                                            Text(
                                                                          wrapProductsRecord
                                                                              .name,
                                                                          style:
                                                                              FlutterFlowTheme.of(context).labelMedium,
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            8.0,
                                                                            4.0,
                                                                            0.0,
                                                                            12.0),
                                                                        child:
                                                                            Text(
                                                                          formatNumber(
                                                                            wrapProductsRecord.price,
                                                                            formatType:
                                                                                FormatType.decimal,
                                                                            decimalType:
                                                                                DecimalType.periodDecimal,
                                                                            currency:
                                                                                '\$',
                                                                          ),
                                                                          style:
                                                                              FlutterFlowTheme.of(context).labelMedium,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ).animateOnPageLoad(
                                                                  animationsMap[
                                                                      'containerOnPageLoadAnimation1']!);
                                                            }),
                                                          );
                                                        },
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  0.0,
                                                                  10.0,
                                                                  0.0),
                                                      child: Builder(
                                                        builder: (context) {
                                                          final businessPhotos =
                                                              businessProfileBusinessesRecord
                                                                  .photos
                                                                  .toList();
                                                          return GridView
                                                              .builder(
                                                            padding:
                                                                EdgeInsets.zero,
                                                            gridDelegate:
                                                                const SliverGridDelegateWithFixedCrossAxisCount(
                                                              crossAxisCount: 4,
                                                              crossAxisSpacing:
                                                                  10.0,
                                                              mainAxisSpacing:
                                                                  10.0,
                                                              childAspectRatio:
                                                                  1.0,
                                                            ),
                                                            scrollDirection:
                                                                Axis.vertical,
                                                            itemCount:
                                                                businessPhotos
                                                                    .length,
                                                            itemBuilder: (context,
                                                                businessPhotosIndex) {
                                                              final businessPhotosItem =
                                                                  businessPhotos[
                                                                      businessPhotosIndex];
                                                              return InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  logFirebaseEvent(
                                                                      'BUSINESS_PROFILE_Image_rwyjcxiw_ON_TAP');
                                                                  logFirebaseEvent(
                                                                      'Image_expand_image');
                                                                  await Navigator
                                                                      .push(
                                                                    context,
                                                                    PageTransition(
                                                                      type: PageTransitionType
                                                                          .fade,
                                                                      child:
                                                                          FlutterFlowExpandedImageView(
                                                                        image: Image
                                                                            .network(
                                                                          businessPhotosItem,
                                                                          fit: BoxFit
                                                                              .contain,
                                                                        ),
                                                                        allowRotation:
                                                                            false,
                                                                        tag:
                                                                            businessPhotosItem,
                                                                        useHeroAnimation:
                                                                            true,
                                                                      ),
                                                                    ),
                                                                  );
                                                                },
                                                                child: Hero(
                                                                  tag:
                                                                      businessPhotosItem,
                                                                  transitionOnUserGestures:
                                                                      true,
                                                                  child:
                                                                      ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            5.0),
                                                                    child: Image
                                                                        .network(
                                                                      businessPhotosItem,
                                                                      width:
                                                                          100.0,
                                                                      height:
                                                                          100.0,
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    ),
                                                                  ),
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
                                      ),
                                    ),
                                  if ((businessProfileBusinessesRecord.paid ==
                                          true) &&
                                      (businessProfileBusinessesRecord.type !=
                                          'Retail'))
                                    Expanded(
                                      child: Container(
                                        height: 100.0,
                                        constraints: BoxConstraints(
                                          maxHeight:
                                              MediaQuery.sizeOf(context).height,
                                        ),
                                        decoration: const BoxDecoration(),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 12.0, 0.0, 0.0),
                                          child: Column(
                                            children: [
                                              Align(
                                                alignment: const Alignment(0.0, 0),
                                                child: TabBar(
                                                  isScrollable: true,
                                                  labelColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                  unselectedLabelColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryText,
                                                  labelPadding:
                                                      const EdgeInsetsDirectional
                                                          .fromSTEB(32.0, 0.0,
                                                              32.0, 0.0),
                                                  labelStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium,
                                                  unselectedLabelStyle:
                                                      const TextStyle(),
                                                  indicatorColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  tabs: const [
                                                    Tab(
                                                      text: 'About',
                                                    ),
                                                    Tab(
                                                      text: 'Locations',
                                                    ),
                                                    Tab(
                                                      text: 'Products',
                                                    ),
                                                    Tab(
                                                      text: 'Photos',
                                                    ),
                                                    Tab(
                                                      text: 'Promos',
                                                    ),
                                                    Tab(
                                                      text: 'Reviews',
                                                    ),
                                                  ],
                                                  controller:
                                                      _model.tabBarController3,
                                                  onTap: (i) async {
                                                    [
                                                      () async {},
                                                      () async {},
                                                      () async {},
                                                      () async {},
                                                      () async {},
                                                      () async {}
                                                    ][i]();
                                                  },
                                                ),
                                              ),
                                              Expanded(
                                                child: TabBarView(
                                                  controller:
                                                      _model.tabBarController3,
                                                  children: [
                                                    Container(
                                                      width: double.infinity,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        boxShadow: const [
                                                          BoxShadow(
                                                            blurRadius: 3.0,
                                                            color: Color(
                                                                0x2E000000),
                                                            offset: Offset(
                                                                0.0, 2.0),
                                                          )
                                                        ],
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        border: Border.all(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                          width: 2.0,
                                                        ),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets.all(4.0),
                                                        child:
                                                            SingleChildScrollView(
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Padding(
                                                                padding: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        12.0,
                                                                        12.0,
                                                                        12.0,
                                                                        8.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.circular(60.0),
                                                                          child:
                                                                              Image.network(
                                                                            valueOrDefault<String>(
                                                                              businessProfileBusinessesRecord.vendorLogo,
                                                                              'https://firebasestorage.googleapis.com/v0/b/buybrokoli-1.appspot.com/o/Minimalist%20Modern%20Support%20Small%20Businesses%20Instagram%20Post%20.png?alt=media&token=ca47db93-afc5-4bbe-b76b-d9bd31b891d5&_gl=1*1fuqbvh*_ga*MjExODMwMTc5MS4xNjg1NzQ2ODEw*_ga_CW55HF8NVT*MTY4NTg0MDMzMy45LjEuMTY4NTg0MTkzMC4wLjAuMA..',
                                                                            ),
                                                                            width:
                                                                                45.0,
                                                                            height:
                                                                                45.0,
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              8.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            businessProfileBusinessesRecord.vendorName,
                                                                            style:
                                                                                FlutterFlowTheme.of(context).titleMedium,
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    if (businessProfileBusinessesRecord
                                                                            .totalRatings >
                                                                        0)
                                                                      Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.end,
                                                                        children: [
                                                                          Text(
                                                                            'Rating',
                                                                            style:
                                                                                FlutterFlowTheme.of(context).bodySmall,
                                                                          ),
                                                                          Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                                child: Text(
                                                                                  formatNumber(
                                                                                    businessProfileBusinessesRecord.averageRating,
                                                                                    formatType: FormatType.decimal,
                                                                                    decimalType: DecimalType.periodDecimal,
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).headlineMedium,
                                                                                ),
                                                                              ),
                                                                              Icon(
                                                                                FFIcons.kbroccoli2,
                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                size: 20.0,
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ],
                                                                      ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        12.0,
                                                                        0.0,
                                                                        12.0,
                                                                        8.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Expanded(
                                                                      child:
                                                                          Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            12.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            AutoSizeText(
                                                                          businessProfileBusinessesRecord
                                                                              .description,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                                fontWeight: FontWeight.normal,
                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                              ),
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
                                                    ),
                                                    StreamBuilder<
                                                        List<PlacesRecord>>(
                                                      stream: queryPlacesRecord(
                                                        queryBuilder:
                                                            (placesRecord) =>
                                                                placesRecord
                                                                    .where(
                                                          'business',
                                                          isEqualTo:
                                                              widget.business,
                                                        ),
                                                      ),
                                                      builder:
                                                          (context, snapshot) {
                                                        // Customize what your widget looks like when it's loading.
                                                        if (!snapshot.hasData) {
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
                                                        List<PlacesRecord>
                                                            listViewPlacesRecordList =
                                                            snapshot.data!;
                                                        return ListView.builder(
                                                          padding:
                                                              EdgeInsets.zero,
                                                          scrollDirection:
                                                              Axis.vertical,
                                                          itemCount:
                                                              listViewPlacesRecordList
                                                                  .length,
                                                          itemBuilder: (context,
                                                              listViewIndex) {
                                                            final listViewPlacesRecord =
                                                                listViewPlacesRecordList[
                                                                    listViewIndex];
                                                            return Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          0.0,
                                                                          16.0,
                                                                          0.0),
                                                              child: Container(
                                                                width: 0.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                child: Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          12.0,
                                                                          16.0,
                                                                          12.0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                        listViewPlacesRecord
                                                                            .locationName,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                              color: FlutterFlowTheme.of(context).secondary,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                            ),
                                                                      ),
                                                                      Divider(
                                                                        height:
                                                                            16.0,
                                                                        thickness:
                                                                            2.0,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .lineColor,
                                                                      ),
                                                                      InkWell(
                                                                        splashColor:
                                                                            Colors.transparent,
                                                                        focusColor:
                                                                            Colors.transparent,
                                                                        hoverColor:
                                                                            Colors.transparent,
                                                                        highlightColor:
                                                                            Colors.transparent,
                                                                        onTap:
                                                                            () async {
                                                                          logFirebaseEvent(
                                                                              'BUSINESS_PROFILE_Row_tssi7c90_ON_TAP');
                                                                          logFirebaseEvent(
                                                                              'Row_launch_map');
                                                                          await launchMap(
                                                                            location:
                                                                                listViewPlacesRecord.placePosition,
                                                                            title:
                                                                                listViewPlacesRecord.vendorName,
                                                                          );
                                                                        },
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Icon(
                                                                              Icons.location_on,
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              size: 24.0,
                                                                            ),
                                                                            Text(
                                                                              listViewPlacesRecord.address,
                                                                              style: FlutterFlowTheme.of(context).bodyLarge,
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
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  24.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: StreamBuilder<
                                                          List<ProductsRecord>>(
                                                        stream:
                                                            queryProductsRecord(
                                                          queryBuilder:
                                                              (productsRecord) =>
                                                                  productsRecord
                                                                      .where(
                                                            'business',
                                                            isEqualTo:
                                                                widget.business,
                                                          ),
                                                        ),
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
                                                          List<ProductsRecord>
                                                              wrapProductsRecordList =
                                                              snapshot.data!;
                                                          if (wrapProductsRecordList
                                                              .isEmpty) {
                                                            return const EmptyProductListWidget();
                                                          }
                                                          return Wrap(
                                                            spacing: 0.0,
                                                            runSpacing: 20.0,
                                                            alignment:
                                                                WrapAlignment
                                                                    .spaceEvenly,
                                                            crossAxisAlignment:
                                                                WrapCrossAlignment
                                                                    .start,
                                                            direction:
                                                                Axis.horizontal,
                                                            runAlignment:
                                                                WrapAlignment
                                                                    .start,
                                                            verticalDirection:
                                                                VerticalDirection
                                                                    .down,
                                                            clipBehavior:
                                                                Clip.none,
                                                            children: List.generate(
                                                                wrapProductsRecordList
                                                                    .length,
                                                                (wrapIndex) {
                                                              final wrapProductsRecord =
                                                                  wrapProductsRecordList[
                                                                      wrapIndex];
                                                              return InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  logFirebaseEvent(
                                                                      'BUSINESS_PROFILE_cardProduct40_ON_TAP');
                                                                  logFirebaseEvent(
                                                                      'cardProduct40_navigate_to');

                                                                  context
                                                                      .pushNamed(
                                                                    'ProductPage',
                                                                    queryParameters:
                                                                        {
                                                                      'product':
                                                                          serializeParam(
                                                                        wrapProductsRecord
                                                                            .reference,
                                                                        ParamType
                                                                            .DocumentReference,
                                                                      ),
                                                                    }.withoutNulls,
                                                                  );
                                                                },
                                                                child:
                                                                    Container(
                                                                  width: 170.0,
                                                                  height: 250.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    boxShadow: const [
                                                                      BoxShadow(
                                                                        blurRadius:
                                                                            2.0,
                                                                        color: Color(
                                                                            0x520E151B),
                                                                        offset: Offset(
                                                                            0.0,
                                                                            1.0),
                                                                      )
                                                                    ],
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            12.0),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondary,
                                                                    ),
                                                                  ),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
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
                                                                        child: Image
                                                                            .network(
                                                                          wrapProductsRecord
                                                                              .productPhoto,
                                                                          width:
                                                                              double.infinity,
                                                                          height:
                                                                              150.0,
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          children: [
                                                                            Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(8.0, 4.0, 0.0, 4.0),
                                                                              child: Text(
                                                                                '${wrapProductsRecord.category} | ${wrapProductsRecord.type}',
                                                                                style: FlutterFlowTheme.of(context).labelSmall.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).labelSmallFamily,
                                                                                      fontSize: 10.0,
                                                                                      fontWeight: FontWeight.w300,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelSmallFamily),
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                            Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                              child: RatingBarIndicator(
                                                                                itemBuilder: (context, index) => Icon(
                                                                                  FFIcons.kbroccoli2,
                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                ),
                                                                                direction: Axis.horizontal,
                                                                                rating: wrapProductsRecord.averageRating,
                                                                                unratedColor: FlutterFlowTheme.of(context).lineColor,
                                                                                itemCount: 5,
                                                                                itemSize: 10.0,
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            8.0,
                                                                            4.0,
                                                                            8.0,
                                                                            8.0),
                                                                        child:
                                                                            Text(
                                                                          wrapProductsRecord
                                                                              .name,
                                                                          style:
                                                                              FlutterFlowTheme.of(context).labelMedium,
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            8.0,
                                                                            4.0,
                                                                            0.0,
                                                                            12.0),
                                                                        child:
                                                                            Text(
                                                                          formatNumber(
                                                                            wrapProductsRecord.price,
                                                                            formatType:
                                                                                FormatType.decimal,
                                                                            decimalType:
                                                                                DecimalType.periodDecimal,
                                                                            currency:
                                                                                '\$',
                                                                          ),
                                                                          style:
                                                                              FlutterFlowTheme.of(context).labelMedium,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ).animateOnPageLoad(
                                                                  animationsMap[
                                                                      'containerOnPageLoadAnimation2']!);
                                                            }),
                                                          );
                                                        },
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  0.0,
                                                                  10.0,
                                                                  0.0),
                                                      child: Builder(
                                                        builder: (context) {
                                                          final businessPhotos =
                                                              businessProfileBusinessesRecord
                                                                  .photos
                                                                  .toList();
                                                          return GridView
                                                              .builder(
                                                            padding:
                                                                EdgeInsets.zero,
                                                            gridDelegate:
                                                                const SliverGridDelegateWithFixedCrossAxisCount(
                                                              crossAxisCount: 4,
                                                              crossAxisSpacing:
                                                                  10.0,
                                                              mainAxisSpacing:
                                                                  10.0,
                                                              childAspectRatio:
                                                                  1.0,
                                                            ),
                                                            scrollDirection:
                                                                Axis.vertical,
                                                            itemCount:
                                                                businessPhotos
                                                                    .length,
                                                            itemBuilder: (context,
                                                                businessPhotosIndex) {
                                                              final businessPhotosItem =
                                                                  businessPhotos[
                                                                      businessPhotosIndex];
                                                              return InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  logFirebaseEvent(
                                                                      'BUSINESS_PROFILE_Image_iq0zmyar_ON_TAP');
                                                                  logFirebaseEvent(
                                                                      'Image_expand_image');
                                                                  await Navigator
                                                                      .push(
                                                                    context,
                                                                    PageTransition(
                                                                      type: PageTransitionType
                                                                          .fade,
                                                                      child:
                                                                          FlutterFlowExpandedImageView(
                                                                        image: Image
                                                                            .network(
                                                                          businessPhotosItem,
                                                                          fit: BoxFit
                                                                              .contain,
                                                                        ),
                                                                        allowRotation:
                                                                            false,
                                                                        tag:
                                                                            businessPhotosItem,
                                                                        useHeroAnimation:
                                                                            true,
                                                                      ),
                                                                    ),
                                                                  );
                                                                },
                                                                child: Hero(
                                                                  tag:
                                                                      businessPhotosItem,
                                                                  transitionOnUserGestures:
                                                                      true,
                                                                  child:
                                                                      ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            5.0),
                                                                    child: Image
                                                                        .network(
                                                                      businessPhotosItem,
                                                                      width:
                                                                          100.0,
                                                                      height:
                                                                          100.0,
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    ),
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                          );
                                                        },
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  8.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: StreamBuilder<
                                                          List<PromosRecord>>(
                                                        stream:
                                                            queryPromosRecord(
                                                          queryBuilder:
                                                              (promosRecord) =>
                                                                  promosRecord
                                                                      .where(
                                                            'business',
                                                            isEqualTo:
                                                                businessProfileBusinessesRecord
                                                                    .reference,
                                                          ),
                                                        ),
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
                                                          List<PromosRecord>
                                                              listViewPromosRecordList =
                                                              snapshot.data!;
                                                          return ListView
                                                              .builder(
                                                            padding:
                                                                EdgeInsets.zero,
                                                            scrollDirection:
                                                                Axis.vertical,
                                                            itemCount:
                                                                listViewPromosRecordList
                                                                    .length,
                                                            itemBuilder: (context,
                                                                listViewIndex) {
                                                              final listViewPromosRecord =
                                                                  listViewPromosRecordList[
                                                                      listViewIndex];
                                                              return Padding(
                                                                padding: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        32.0,
                                                                        16.0,
                                                                        32.0),
                                                                child:
                                                                    Container(
                                                                  width: double
                                                                      .infinity,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    boxShadow: const [
                                                                      BoxShadow(
                                                                        blurRadius:
                                                                            2.0,
                                                                        color: Color(
                                                                            0x520E151B),
                                                                        offset: Offset(
                                                                            0.0,
                                                                            1.0),
                                                                      )
                                                                    ],
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            12.0),
                                                                  ),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
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
                                                                        child: Image
                                                                            .network(
                                                                          listViewPromosRecord
                                                                              .image,
                                                                          width:
                                                                              double.infinity,
                                                                          height:
                                                                              260.0,
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            16.0,
                                                                            12.0,
                                                                            16.0,
                                                                            0.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          children: [
                                                                            Expanded(
                                                                              flex: 7,
                                                                              child: Text(
                                                                                listViewPromosRecord.name,
                                                                                style: FlutterFlowTheme.of(context).bodyLarge,
                                                                              ),
                                                                            ),
                                                                            if (listViewPromosRecord.code != '')
                                                                              Align(
                                                                                alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                child: Container(
                                                                                  width: 200.0,
                                                                                  height: 50.0,
                                                                                  decoration: BoxDecoration(
                                                                                    borderRadius: BorderRadius.circular(4.0),
                                                                                    border: Border.all(
                                                                                      color: FlutterFlowTheme.of(context).secondary,
                                                                                      width: 1.0,
                                                                                    ),
                                                                                  ),
                                                                                  child: Align(
                                                                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                    child: Text(
                                                                                      listViewPromosRecord.code,
                                                                                      textAlign: TextAlign.center,
                                                                                      style: FlutterFlowTheme.of(context).headlineSmall,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            16.0,
                                                                            4.0,
                                                                            0.0,
                                                                            12.0),
                                                                        child:
                                                                            Text(
                                                                          listViewPromosRecord
                                                                              .description,
                                                                          style:
                                                                              FlutterFlowTheme.of(context).labelMedium,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ).animateOnPageLoad(
                                                                        animationsMap[
                                                                            'containerOnPageLoadAnimation3']!),
                                                              );
                                                            },
                                                          );
                                                        },
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  12.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: StreamBuilder<
                                                          List<
                                                              VendorRatingsRecord>>(
                                                        stream:
                                                            queryVendorRatingsRecord(
                                                          queryBuilder: (vendorRatingsRecord) =>
                                                              vendorRatingsRecord
                                                                  .where(
                                                                    'business',
                                                                    isEqualTo:
                                                                        widget
                                                                            .business,
                                                                  )
                                                                  .orderBy(
                                                                      'created_at',
                                                                      descending:
                                                                          true),
                                                        ),
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
                                                          List<VendorRatingsRecord>
                                                              listViewVendorRatingsRecordList =
                                                              snapshot.data!;
                                                          if (listViewVendorRatingsRecordList
                                                              .isEmpty) {
                                                            return EmptyReviewsWidget(
                                                              business: widget
                                                                  .business!,
                                                            );
                                                          }
                                                          return ListView
                                                              .builder(
                                                            padding:
                                                                EdgeInsets.zero,
                                                            scrollDirection:
                                                                Axis.vertical,
                                                            itemCount:
                                                                listViewVendorRatingsRecordList
                                                                    .length,
                                                            itemBuilder: (context,
                                                                listViewIndex) {
                                                              final listViewVendorRatingsRecord =
                                                                  listViewVendorRatingsRecordList[
                                                                      listViewIndex];
                                                              return Padding(
                                                                padding: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        0.0,
                                                                        16.0,
                                                                        12.0),
                                                                child:
                                                                    Container(
                                                                  width: double
                                                                      .infinity,
                                                                  constraints:
                                                                      const BoxConstraints(
                                                                    maxWidth:
                                                                        1270.0,
                                                                  ),
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    boxShadow: const [
                                                                      BoxShadow(
                                                                        blurRadius:
                                                                            4.0,
                                                                        color: Color(
                                                                            0x230E151B),
                                                                        offset: Offset(
                                                                            0.0,
                                                                            2.0),
                                                                      )
                                                                    ],
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                  ),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            16.0,
                                                                            12.0,
                                                                            16.0,
                                                                            12.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            if (responsiveVisibility(
                                                                              context: context,
                                                                              phone: false,
                                                                              tablet: false,
                                                                            ))
                                                                              Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                                                                                child: Container(
                                                                                  width: 50.0,
                                                                                  height: 50.0,
                                                                                  decoration: BoxDecoration(
                                                                                    color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                    borderRadius: const BorderRadius.only(
                                                                                      bottomLeft: Radius.circular(14.0),
                                                                                      bottomRight: Radius.circular(14.0),
                                                                                      topLeft: Radius.circular(14.0),
                                                                                      topRight: Radius.circular(14.0),
                                                                                    ),
                                                                                  ),
                                                                                  child: Visibility(
                                                                                    visible: responsiveVisibility(
                                                                                      context: context,
                                                                                      phone: false,
                                                                                      tablet: false,
                                                                                    ),
                                                                                    child: Padding(
                                                                                      padding: const EdgeInsets.all(4.0),
                                                                                      child: ClipRRect(
                                                                                        borderRadius: BorderRadius.circular(10.0),
                                                                                        child: CachedNetworkImage(
                                                                                          fadeInDuration: const Duration(milliseconds: 500),
                                                                                          fadeOutDuration: const Duration(milliseconds: 500),
                                                                                          imageUrl: listViewVendorRatingsRecord.profilePic,
                                                                                          width: 40.0,
                                                                                          height: 40.0,
                                                                                          fit: BoxFit.cover,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            Expanded(
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        Padding(
                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
                                                                                          child: RatingBarIndicator(
                                                                                            itemBuilder: (context, index) => Icon(
                                                                                              FFIcons.kbroccoli2,
                                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                                            ),
                                                                                            direction: Axis.horizontal,
                                                                                            rating: listViewVendorRatingsRecord.rating,
                                                                                            unratedColor: FlutterFlowTheme.of(context).lineColor,
                                                                                            itemCount: 5,
                                                                                            itemSize: 24.0,
                                                                                          ),
                                                                                        ),
                                                                                        if (responsiveVisibility(
                                                                                          context: context,
                                                                                          tabletLandscape: false,
                                                                                          desktop: false,
                                                                                        ))
                                                                                          Padding(
                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
                                                                                            child: ClipRRect(
                                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                                              child: Image.network(
                                                                                                'https://images.unsplash.com/photo-1521572267360-ee0c2909d518?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjJ8fHByb2ZpbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
                                                                                                width: 40.0,
                                                                                                height: 40.0,
                                                                                                fit: BoxFit.cover,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        Padding(
                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                          child: Text(
                                                                                            listViewVendorRatingsRecord.source,
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                          ),
                                                                                        ),
                                                                                        Text(
                                                                                          dateTimeFormat(
                                                                                            'relative',
                                                                                            listViewVendorRatingsRecord.createdAt!,
                                                                                            locale: FFLocalizations.of(context).languageCode,
                                                                                          ),
                                                                                          style: FlutterFlowTheme.of(context).labelSmall,
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 4.0),
                                                                                    child: Text(
                                                                                      listViewVendorRatingsRecord.comment,
                                                                                      style: FlutterFlowTheme.of(context).labelLarge,
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Divider(
                                                                        thickness:
                                                                            1.0,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .accent4,
                                                                      ),
                                                                    ],
                                                                  ),
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
                                      ),
                                    ),
                                  if ((businessProfileBusinessesRecord.paid ==
                                          false) &&
                                      (businessProfileBusinessesRecord.type ==
                                          'Experiences'))
                                    Expanded(
                                      child: Container(
                                        height: 100.0,
                                        constraints: BoxConstraints(
                                          maxHeight:
                                              MediaQuery.sizeOf(context).height,
                                        ),
                                        decoration: const BoxDecoration(),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 12.0, 0.0, 0.0),
                                          child: Column(
                                            children: [
                                              Align(
                                                alignment: const Alignment(0.0, 0),
                                                child: TabBar(
                                                  isScrollable: true,
                                                  labelColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                  unselectedLabelColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryText,
                                                  labelPadding:
                                                      const EdgeInsetsDirectional
                                                          .fromSTEB(32.0, 0.0,
                                                              32.0, 0.0),
                                                  labelStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium,
                                                  unselectedLabelStyle:
                                                      const TextStyle(),
                                                  indicatorColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  tabs: const [
                                                    Tab(
                                                      text: 'Experiences',
                                                    ),
                                                    Tab(
                                                      text: 'Photos',
                                                    ),
                                                    Tab(
                                                      text: 'About',
                                                    ),
                                                  ],
                                                  controller:
                                                      _model.tabBarController4,
                                                  onTap: (i) async {
                                                    [
                                                      () async {},
                                                      () async {},
                                                      () async {}
                                                    ][i]();
                                                  },
                                                ),
                                              ),
                                              Expanded(
                                                child: TabBarView(
                                                  controller:
                                                      _model.tabBarController4,
                                                  children: [
                                                    SingleChildScrollView(
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets.all(
                                                                    12.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Text(
                                                                  'Events',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium,
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          StreamBuilder<
                                                              List<
                                                                  EventsRecord>>(
                                                            stream:
                                                                queryEventsRecord(
                                                              queryBuilder: (eventsRecord) =>
                                                                  eventsRecord
                                                                      .where(
                                                                        'business',
                                                                        isEqualTo:
                                                                            widget.business,
                                                                      )
                                                                      .orderBy(
                                                                          'event_date',
                                                                          descending:
                                                                              true),
                                                            ),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 50.0,
                                                                    height:
                                                                        50.0,
                                                                    child:
                                                                        SpinKitSquareCircle(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      size:
                                                                          50.0,
                                                                    ),
                                                                  ),
                                                                );
                                                              }
                                                              List<EventsRecord>
                                                                  experiencesListViewEventsRecordList =
                                                                  snapshot
                                                                      .data!;
                                                              if (experiencesListViewEventsRecordList
                                                                  .isEmpty) {
                                                                return const EmptyEventListWidget();
                                                              }
                                                              return ListView
                                                                  .builder(
                                                                padding:
                                                                    EdgeInsets
                                                                        .zero,
                                                                shrinkWrap:
                                                                    true,
                                                                scrollDirection:
                                                                    Axis.vertical,
                                                                itemCount:
                                                                    experiencesListViewEventsRecordList
                                                                        .length,
                                                                itemBuilder:
                                                                    (context,
                                                                        experiencesListViewIndex) {
                                                                  final experiencesListViewEventsRecord =
                                                                      experiencesListViewEventsRecordList[
                                                                          experiencesListViewIndex];
                                                                  return Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            16.0,
                                                                            0.0,
                                                                            16.0,
                                                                            16.0),
                                                                    child:
                                                                        InkWell(
                                                                      splashColor:
                                                                          Colors
                                                                              .transparent,
                                                                      focusColor:
                                                                          Colors
                                                                              .transparent,
                                                                      hoverColor:
                                                                          Colors
                                                                              .transparent,
                                                                      highlightColor:
                                                                          Colors
                                                                              .transparent,
                                                                      onTap:
                                                                          () async {
                                                                        logFirebaseEvent(
                                                                            'BUSINESS_PROFILE_articleDetails_ON_TAP');
                                                                        logFirebaseEvent(
                                                                            'articleDetails_navigate_to');

                                                                        context
                                                                            .pushNamed(
                                                                          'EventDetails',
                                                                          queryParameters:
                                                                              {
                                                                            'event':
                                                                                serializeParam(
                                                                              experiencesListViewEventsRecord.reference,
                                                                              ParamType.DocumentReference,
                                                                            ),
                                                                          }.withoutNulls,
                                                                        );
                                                                      },
                                                                      child:
                                                                          Container(
                                                                        width: double
                                                                            .infinity,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                          boxShadow: const [
                                                                            BoxShadow(
                                                                              blurRadius: 5.0,
                                                                              color: Color(0x44111417),
                                                                              offset: Offset(0.0, 2.0),
                                                                            )
                                                                          ],
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                          border:
                                                                              Border.all(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).lineColor,
                                                                          ),
                                                                        ),
                                                                        child:
                                                                            Padding(
                                                                          padding:
                                                                              const EdgeInsets.all(12.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Container(
                                                                                width: 200.0,
                                                                                height: 200.0,
                                                                                decoration: BoxDecoration(
                                                                                  color: FlutterFlowTheme.of(context).accent1,
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                  border: Border.all(
                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                    width: 2.0,
                                                                                  ),
                                                                                ),
                                                                                alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                child: Padding(
                                                                                  padding: const EdgeInsets.all(2.0),
                                                                                  child: ClipRRect(
                                                                                    borderRadius: BorderRadius.circular(6.0),
                                                                                    child: Image.network(
                                                                                      experiencesListViewEventsRecord.eventPic,
                                                                                      width: double.infinity,
                                                                                      height: double.infinity,
                                                                                      fit: BoxFit.cover,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Expanded(
                                                                                child: Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                                                                                  child: Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    children: [
                                                                                      Text(
                                                                                        experiencesListViewEventsRecord.eventName,
                                                                                        style: FlutterFlowTheme.of(context).titleLarge,
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Icon(
                                                                                              Icons.location_pin,
                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                              size: 16.0,
                                                                                            ),
                                                                                            Padding(
                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 0.0, 0.0),
                                                                                              child: Text(
                                                                                                experiencesListViewEventsRecord.locationAddress,
                                                                                                style: FlutterFlowTheme.of(context).labelMedium,
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Icon(
                                                                                              Icons.calendar_today,
                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                              size: 16.0,
                                                                                            ),
                                                                                            Padding(
                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 0.0, 0.0),
                                                                                              child: Text(
                                                                                                '${dateTimeFormat(
                                                                                                  'yMMMd',
                                                                                                  experiencesListViewEventsRecord.eventDate,
                                                                                                  locale: FFLocalizations.of(context).languageCode,
                                                                                                )} | ${dateTimeFormat(
                                                                                                  'jm',
                                                                                                  experiencesListViewEventsRecord.eventDate,
                                                                                                  locale: FFLocalizations.of(context).languageCode,
                                                                                                )}',
                                                                                                style: FlutterFlowTheme.of(context).labelMedium,
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
                                                                  );
                                                                },
                                                              );
                                                            },
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Text(
                                                                'Services',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium,
                                                              ),
                                                            ],
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        12.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: StreamBuilder<
                                                                List<
                                                                    ServicesRecord>>(
                                                              stream:
                                                                  queryServicesRecord(
                                                                queryBuilder:
                                                                    (servicesRecord) =>
                                                                        servicesRecord
                                                                            .where(
                                                                  'business',
                                                                  isEqualTo: widget
                                                                      .business,
                                                                ),
                                                              ),
                                                              builder: (context,
                                                                  snapshot) {
                                                                // Customize what your widget looks like when it's loading.
                                                                if (!snapshot
                                                                    .hasData) {
                                                                  return Center(
                                                                    child:
                                                                        SizedBox(
                                                                      width:
                                                                          50.0,
                                                                      height:
                                                                          50.0,
                                                                      child:
                                                                          SpinKitSquareCircle(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                        size:
                                                                            50.0,
                                                                      ),
                                                                    ),
                                                                  );
                                                                }
                                                                List<ServicesRecord>
                                                                    servicesListViewServicesRecordList =
                                                                    snapshot
                                                                        .data!;
                                                                return ListView
                                                                    .builder(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .zero,
                                                                  shrinkWrap:
                                                                      true,
                                                                  scrollDirection:
                                                                      Axis.vertical,
                                                                  itemCount:
                                                                      servicesListViewServicesRecordList
                                                                          .length,
                                                                  itemBuilder:
                                                                      (context,
                                                                          servicesListViewIndex) {
                                                                    final servicesListViewServicesRecord =
                                                                        servicesListViewServicesRecordList[
                                                                            servicesListViewIndex];
                                                                    return Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          16.0,
                                                                          0.0,
                                                                          16.0,
                                                                          16.0),
                                                                      child:
                                                                          Container(
                                                                        width: double
                                                                            .infinity,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                          boxShadow: const [
                                                                            BoxShadow(
                                                                              blurRadius: 5.0,
                                                                              color: Color(0x44111417),
                                                                              offset: Offset(0.0, 2.0),
                                                                            )
                                                                          ],
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                          border:
                                                                              Border.all(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).lineColor,
                                                                          ),
                                                                        ),
                                                                        child:
                                                                            Padding(
                                                                          padding:
                                                                              const EdgeInsets.all(12.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Container(
                                                                                width: 200.0,
                                                                                height: 200.0,
                                                                                decoration: BoxDecoration(
                                                                                  color: FlutterFlowTheme.of(context).accent1,
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                  border: Border.all(
                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                    width: 2.0,
                                                                                  ),
                                                                                ),
                                                                                alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                child: Padding(
                                                                                  padding: const EdgeInsets.all(2.0),
                                                                                  child: ClipRRect(
                                                                                    borderRadius: BorderRadius.circular(6.0),
                                                                                    child: Image.network(
                                                                                      servicesListViewServicesRecord.photo,
                                                                                      width: double.infinity,
                                                                                      height: double.infinity,
                                                                                      fit: BoxFit.cover,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Expanded(
                                                                                child: Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                                                                                  child: Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    children: [
                                                                                      Text(
                                                                                        servicesListViewServicesRecord.name,
                                                                                        style: FlutterFlowTheme.of(context).titleLarge,
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Icon(
                                                                                              Icons.monetization_on_outlined,
                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                              size: 16.0,
                                                                                            ),
                                                                                            Padding(
                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 0.0, 0.0),
                                                                                              child: Text(
                                                                                                servicesListViewServicesRecord.price.toString(),
                                                                                                style: FlutterFlowTheme.of(context).labelMedium,
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Padding(
                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 0.0, 0.0),
                                                                                              child: Text(
                                                                                                servicesListViewServicesRecord.description,
                                                                                                style: FlutterFlowTheme.of(context).labelMedium,
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
                                                                    );
                                                                  },
                                                                );
                                                              },
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  0.0,
                                                                  10.0,
                                                                  0.0),
                                                      child: Builder(
                                                        builder: (context) {
                                                          final businessPhotos =
                                                              businessProfileBusinessesRecord
                                                                  .photos
                                                                  .toList();
                                                          return GridView
                                                              .builder(
                                                            padding:
                                                                EdgeInsets.zero,
                                                            gridDelegate:
                                                                const SliverGridDelegateWithFixedCrossAxisCount(
                                                              crossAxisCount: 4,
                                                              crossAxisSpacing:
                                                                  10.0,
                                                              mainAxisSpacing:
                                                                  10.0,
                                                              childAspectRatio:
                                                                  1.0,
                                                            ),
                                                            scrollDirection:
                                                                Axis.vertical,
                                                            itemCount:
                                                                businessPhotos
                                                                    .length,
                                                            itemBuilder: (context,
                                                                businessPhotosIndex) {
                                                              final businessPhotosItem =
                                                                  businessPhotos[
                                                                      businessPhotosIndex];
                                                              return InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  logFirebaseEvent(
                                                                      'BUSINESS_PROFILE_Image_c1phwzop_ON_TAP');
                                                                  logFirebaseEvent(
                                                                      'Image_expand_image');
                                                                  await Navigator
                                                                      .push(
                                                                    context,
                                                                    PageTransition(
                                                                      type: PageTransitionType
                                                                          .fade,
                                                                      child:
                                                                          FlutterFlowExpandedImageView(
                                                                        image: Image
                                                                            .network(
                                                                          businessPhotosItem,
                                                                          fit: BoxFit
                                                                              .contain,
                                                                        ),
                                                                        allowRotation:
                                                                            false,
                                                                        tag:
                                                                            businessPhotosItem,
                                                                        useHeroAnimation:
                                                                            true,
                                                                      ),
                                                                    ),
                                                                  );
                                                                },
                                                                child: Hero(
                                                                  tag:
                                                                      businessPhotosItem,
                                                                  transitionOnUserGestures:
                                                                      true,
                                                                  child:
                                                                      ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            5.0),
                                                                    child: Image
                                                                        .network(
                                                                      businessPhotosItem,
                                                                      width:
                                                                          100.0,
                                                                      height:
                                                                          100.0,
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    ),
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                          );
                                                        },
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(4.0),
                                                      child:
                                                          SingleChildScrollView(
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          12.0,
                                                                          12.0,
                                                                          12.0,
                                                                          8.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      ClipRRect(
                                                                        borderRadius:
                                                                            BorderRadius.circular(60.0),
                                                                        child: Image
                                                                            .network(
                                                                          valueOrDefault<
                                                                              String>(
                                                                            businessProfileBusinessesRecord.vendorLogo,
                                                                            'https://firebasestorage.googleapis.com/v0/b/buybrokoli-1.appspot.com/o/Minimalist%20Modern%20Support%20Small%20Businesses%20Instagram%20Post%20.png?alt=media&token=ca47db93-afc5-4bbe-b76b-d9bd31b891d5&_gl=1*1fuqbvh*_ga*MjExODMwMTc5MS4xNjg1NzQ2ODEw*_ga_CW55HF8NVT*MTY4NTg0MDMzMy45LjEuMTY4NTg0MTkzMC4wLjAuMA..',
                                                                          ),
                                                                          width:
                                                                              45.0,
                                                                          height:
                                                                              45.0,
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          businessProfileBusinessesRecord
                                                                              .vendorName,
                                                                          style:
                                                                              FlutterFlowTheme.of(context).titleMedium,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  if (businessProfileBusinessesRecord
                                                                          .totalRatings >
                                                                      0)
                                                                    Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .end,
                                                                      children: [
                                                                        Text(
                                                                          'Rating',
                                                                          style:
                                                                              FlutterFlowTheme.of(context).bodySmall,
                                                                        ),
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                              child: Text(
                                                                                formatNumber(
                                                                                  businessProfileBusinessesRecord.averageRating,
                                                                                  formatType: FormatType.decimal,
                                                                                  decimalType: DecimalType.periodDecimal,
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).headlineMedium,
                                                                              ),
                                                                            ),
                                                                            Icon(
                                                                              FFIcons.kbroccoli2,
                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                              size: 20.0,
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ],
                                                                    ),
                                                                ],
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          12.0,
                                                                          0.0,
                                                                          12.0,
                                                                          8.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Expanded(
                                                                    child:
                                                                        Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          12.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          AutoSizeText(
                                                                        businessProfileBusinessesRecord
                                                                            .description,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                              fontWeight: FontWeight.normal,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                            ),
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
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  if ((businessProfileBusinessesRecord.paid ==
                                          true) &&
                                      (businessProfileBusinessesRecord.type ==
                                          'Experiences'))
                                    Expanded(
                                      child: Container(
                                        height: 100.0,
                                        constraints: BoxConstraints(
                                          maxHeight:
                                              MediaQuery.sizeOf(context).height,
                                        ),
                                        decoration: const BoxDecoration(),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 12.0, 0.0, 0.0),
                                          child: Column(
                                            children: [
                                              Align(
                                                alignment: const Alignment(0.0, 0),
                                                child: TabBar(
                                                  isScrollable: true,
                                                  labelColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                  unselectedLabelColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryText,
                                                  labelPadding:
                                                      const EdgeInsetsDirectional
                                                          .fromSTEB(32.0, 0.0,
                                                              32.0, 0.0),
                                                  labelStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium,
                                                  unselectedLabelStyle:
                                                      const TextStyle(),
                                                  indicatorColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  tabs: const [
                                                    Tab(
                                                      text: 'Experiences',
                                                    ),
                                                    Tab(
                                                      text: 'Feed',
                                                    ),
                                                    Tab(
                                                      text: 'Promos',
                                                    ),
                                                    Tab(
                                                      text: 'Photos',
                                                    ),
                                                    Tab(
                                                      text: 'About',
                                                    ),
                                                  ],
                                                  controller:
                                                      _model.tabBarController5,
                                                  onTap: (i) async {
                                                    [
                                                      () async {},
                                                      () async {},
                                                      () async {},
                                                      () async {},
                                                      () async {}
                                                    ][i]();
                                                  },
                                                ),
                                              ),
                                              Expanded(
                                                child: TabBarView(
                                                  controller:
                                                      _model.tabBarController5,
                                                  children: [
                                                    SingleChildScrollView(
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets.all(
                                                                    12.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Text(
                                                                  'Events',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium,
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          StreamBuilder<
                                                              List<
                                                                  EventsRecord>>(
                                                            stream:
                                                                queryEventsRecord(
                                                              queryBuilder: (eventsRecord) =>
                                                                  eventsRecord
                                                                      .where(
                                                                        'business',
                                                                        isEqualTo:
                                                                            widget.business,
                                                                      )
                                                                      .orderBy(
                                                                          'event_date',
                                                                          descending:
                                                                              true),
                                                            ),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 50.0,
                                                                    height:
                                                                        50.0,
                                                                    child:
                                                                        SpinKitSquareCircle(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      size:
                                                                          50.0,
                                                                    ),
                                                                  ),
                                                                );
                                                              }
                                                              List<EventsRecord>
                                                                  experiencesListViewEventsRecordList =
                                                                  snapshot
                                                                      .data!;
                                                              if (experiencesListViewEventsRecordList
                                                                  .isEmpty) {
                                                                return const EmptyEventListWidget();
                                                              }
                                                              return ListView
                                                                  .builder(
                                                                padding:
                                                                    EdgeInsets
                                                                        .zero,
                                                                shrinkWrap:
                                                                    true,
                                                                scrollDirection:
                                                                    Axis.vertical,
                                                                itemCount:
                                                                    experiencesListViewEventsRecordList
                                                                        .length,
                                                                itemBuilder:
                                                                    (context,
                                                                        experiencesListViewIndex) {
                                                                  final experiencesListViewEventsRecord =
                                                                      experiencesListViewEventsRecordList[
                                                                          experiencesListViewIndex];
                                                                  return Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            16.0,
                                                                            0.0,
                                                                            16.0,
                                                                            16.0),
                                                                    child:
                                                                        InkWell(
                                                                      splashColor:
                                                                          Colors
                                                                              .transparent,
                                                                      focusColor:
                                                                          Colors
                                                                              .transparent,
                                                                      hoverColor:
                                                                          Colors
                                                                              .transparent,
                                                                      highlightColor:
                                                                          Colors
                                                                              .transparent,
                                                                      onTap:
                                                                          () async {
                                                                        logFirebaseEvent(
                                                                            'BUSINESS_PROFILE_articleDetails_ON_TAP');
                                                                        logFirebaseEvent(
                                                                            'articleDetails_navigate_to');

                                                                        context
                                                                            .pushNamed(
                                                                          'EventDetails',
                                                                          queryParameters:
                                                                              {
                                                                            'event':
                                                                                serializeParam(
                                                                              experiencesListViewEventsRecord.reference,
                                                                              ParamType.DocumentReference,
                                                                            ),
                                                                          }.withoutNulls,
                                                                        );
                                                                      },
                                                                      child:
                                                                          Container(
                                                                        width: double
                                                                            .infinity,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                          boxShadow: const [
                                                                            BoxShadow(
                                                                              blurRadius: 5.0,
                                                                              color: Color(0x44111417),
                                                                              offset: Offset(0.0, 2.0),
                                                                            )
                                                                          ],
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                          border:
                                                                              Border.all(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).lineColor,
                                                                          ),
                                                                        ),
                                                                        child:
                                                                            Padding(
                                                                          padding:
                                                                              const EdgeInsets.all(12.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Container(
                                                                                width: 200.0,
                                                                                height: 200.0,
                                                                                decoration: BoxDecoration(
                                                                                  color: FlutterFlowTheme.of(context).accent1,
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                  border: Border.all(
                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                    width: 2.0,
                                                                                  ),
                                                                                ),
                                                                                alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                child: Padding(
                                                                                  padding: const EdgeInsets.all(2.0),
                                                                                  child: ClipRRect(
                                                                                    borderRadius: BorderRadius.circular(6.0),
                                                                                    child: Image.network(
                                                                                      experiencesListViewEventsRecord.eventPic,
                                                                                      width: double.infinity,
                                                                                      height: double.infinity,
                                                                                      fit: BoxFit.cover,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Expanded(
                                                                                child: Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                                                                                  child: Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    children: [
                                                                                      Text(
                                                                                        experiencesListViewEventsRecord.eventName,
                                                                                        style: FlutterFlowTheme.of(context).titleLarge,
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Icon(
                                                                                              Icons.location_pin,
                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                              size: 16.0,
                                                                                            ),
                                                                                            Padding(
                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 0.0, 0.0),
                                                                                              child: Text(
                                                                                                experiencesListViewEventsRecord.locationAddress,
                                                                                                style: FlutterFlowTheme.of(context).labelMedium,
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Icon(
                                                                                              Icons.calendar_today,
                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                              size: 16.0,
                                                                                            ),
                                                                                            Padding(
                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 0.0, 0.0),
                                                                                              child: Text(
                                                                                                '${dateTimeFormat(
                                                                                                  'yMMMd',
                                                                                                  experiencesListViewEventsRecord.eventDate,
                                                                                                  locale: FFLocalizations.of(context).languageCode,
                                                                                                )} | ${dateTimeFormat(
                                                                                                  'jm',
                                                                                                  experiencesListViewEventsRecord.eventDate,
                                                                                                  locale: FFLocalizations.of(context).languageCode,
                                                                                                )}',
                                                                                                style: FlutterFlowTheme.of(context).labelMedium,
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
                                                                  );
                                                                },
                                                              );
                                                            },
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets.all(
                                                                    12.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Text(
                                                                  'Services',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium,
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          StreamBuilder<
                                                              List<
                                                                  ServicesRecord>>(
                                                            stream:
                                                                queryServicesRecord(
                                                              queryBuilder:
                                                                  (servicesRecord) =>
                                                                      servicesRecord
                                                                          .where(
                                                                'business',
                                                                isEqualTo: widget
                                                                    .business,
                                                              ),
                                                            ),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 50.0,
                                                                    height:
                                                                        50.0,
                                                                    child:
                                                                        SpinKitSquareCircle(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      size:
                                                                          50.0,
                                                                    ),
                                                                  ),
                                                                );
                                                              }
                                                              List<ServicesRecord>
                                                                  servicesListViewServicesRecordList =
                                                                  snapshot
                                                                      .data!;
                                                              return ListView
                                                                  .builder(
                                                                padding:
                                                                    EdgeInsets
                                                                        .zero,
                                                                shrinkWrap:
                                                                    true,
                                                                scrollDirection:
                                                                    Axis.vertical,
                                                                itemCount:
                                                                    servicesListViewServicesRecordList
                                                                        .length,
                                                                itemBuilder:
                                                                    (context,
                                                                        servicesListViewIndex) {
                                                                  final servicesListViewServicesRecord =
                                                                      servicesListViewServicesRecordList[
                                                                          servicesListViewIndex];
                                                                  return Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            16.0,
                                                                            0.0,
                                                                            16.0,
                                                                            16.0),
                                                                    child:
                                                                        Container(
                                                                      width: double
                                                                          .infinity,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                        boxShadow: const [
                                                                          BoxShadow(
                                                                            blurRadius:
                                                                                5.0,
                                                                            color:
                                                                                Color(0x44111417),
                                                                            offset:
                                                                                Offset(0.0, 2.0),
                                                                          )
                                                                        ],
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                        border:
                                                                            Border.all(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).lineColor,
                                                                        ),
                                                                      ),
                                                                      child:
                                                                          Padding(
                                                                        padding:
                                                                            const EdgeInsets.all(12.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Container(
                                                                              height: 200.0,
                                                                              constraints: const BoxConstraints(
                                                                                minWidth: 150.0,
                                                                                maxWidth: 200.0,
                                                                              ),
                                                                              decoration: BoxDecoration(
                                                                                color: FlutterFlowTheme.of(context).accent1,
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                border: Border.all(
                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                  width: 2.0,
                                                                                ),
                                                                              ),
                                                                              alignment: const AlignmentDirectional(0.0, 0.0),
                                                                              child: Padding(
                                                                                padding: const EdgeInsets.all(2.0),
                                                                                child: ClipRRect(
                                                                                  borderRadius: BorderRadius.circular(6.0),
                                                                                  child: Image.network(
                                                                                    servicesListViewServicesRecord.photo,
                                                                                    width: double.infinity,
                                                                                    height: double.infinity,
                                                                                    fit: BoxFit.cover,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Expanded(
                                                                              child: Padding(
                                                                                padding: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                                                                                child: Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                  children: [
                                                                                    Text(
                                                                                      servicesListViewServicesRecord.name,
                                                                                      style: FlutterFlowTheme.of(context).titleLarge,
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Icon(
                                                                                            Icons.monetization_on_outlined,
                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                            size: 16.0,
                                                                                          ),
                                                                                          Padding(
                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 0.0, 0.0),
                                                                                            child: Text(
                                                                                              servicesListViewServicesRecord.price.toString(),
                                                                                              style: FlutterFlowTheme.of(context).labelMedium,
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Padding(
                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 0.0, 0.0),
                                                                                            child: Text(
                                                                                              servicesListViewServicesRecord.description,
                                                                                              style: FlutterFlowTheme.of(context).labelMedium,
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
                                                                  );
                                                                },
                                                              );
                                                            },
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  12.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: StreamBuilder<
                                                          List<FeedRecord>>(
                                                        stream: queryFeedRecord(
                                                          queryBuilder: (feedRecord) =>
                                                              feedRecord
                                                                  .where(
                                                                    'business',
                                                                    isEqualTo:
                                                                        widget
                                                                            .business,
                                                                  )
                                                                  .orderBy(
                                                                      'time_posted',
                                                                      descending:
                                                                          true),
                                                        ),
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
                                                          List<FeedRecord>
                                                              listViewFeedRecordList =
                                                              snapshot.data!;
                                                          return ListView
                                                              .builder(
                                                            padding:
                                                                EdgeInsets.zero,
                                                            scrollDirection:
                                                                Axis.vertical,
                                                            itemCount:
                                                                listViewFeedRecordList
                                                                    .length,
                                                            itemBuilder: (context,
                                                                listViewIndex) {
                                                              final listViewFeedRecord =
                                                                  listViewFeedRecordList[
                                                                      listViewIndex];
                                                              return FeedPostWidget(
                                                                key: Key(
                                                                    'Keypek_${listViewIndex}_of_${listViewFeedRecordList.length}'),
                                                                post:
                                                                    listViewFeedRecord,
                                                                pageLink: _model
                                                                    .currentPageLink,
                                                                business:
                                                                    businessProfileBusinessesRecord,
                                                              );
                                                            },
                                                          );
                                                        },
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  8.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: StreamBuilder<
                                                          List<PromosRecord>>(
                                                        stream:
                                                            queryPromosRecord(
                                                          queryBuilder:
                                                              (promosRecord) =>
                                                                  promosRecord
                                                                      .where(
                                                            'business',
                                                            isEqualTo:
                                                                businessProfileBusinessesRecord
                                                                    .reference,
                                                          ),
                                                        ),
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
                                                          List<PromosRecord>
                                                              listViewPromosRecordList =
                                                              snapshot.data!;
                                                          return ListView
                                                              .builder(
                                                            padding:
                                                                EdgeInsets.zero,
                                                            scrollDirection:
                                                                Axis.vertical,
                                                            itemCount:
                                                                listViewPromosRecordList
                                                                    .length,
                                                            itemBuilder: (context,
                                                                listViewIndex) {
                                                              final listViewPromosRecord =
                                                                  listViewPromosRecordList[
                                                                      listViewIndex];
                                                              return Padding(
                                                                padding: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        32.0,
                                                                        16.0,
                                                                        32.0),
                                                                child:
                                                                    Container(
                                                                  width: double
                                                                      .infinity,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    boxShadow: const [
                                                                      BoxShadow(
                                                                        blurRadius:
                                                                            2.0,
                                                                        color: Color(
                                                                            0x520E151B),
                                                                        offset: Offset(
                                                                            0.0,
                                                                            1.0),
                                                                      )
                                                                    ],
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            12.0),
                                                                  ),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
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
                                                                        child: Image
                                                                            .network(
                                                                          listViewPromosRecord
                                                                              .image,
                                                                          width:
                                                                              double.infinity,
                                                                          height:
                                                                              260.0,
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            16.0,
                                                                            12.0,
                                                                            16.0,
                                                                            0.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          children: [
                                                                            Expanded(
                                                                              flex: 7,
                                                                              child: Text(
                                                                                listViewPromosRecord.name,
                                                                                style: FlutterFlowTheme.of(context).bodyLarge,
                                                                              ),
                                                                            ),
                                                                            if (listViewPromosRecord.code != '')
                                                                              Align(
                                                                                alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                child: Container(
                                                                                  width: 200.0,
                                                                                  height: 50.0,
                                                                                  decoration: BoxDecoration(
                                                                                    borderRadius: BorderRadius.circular(4.0),
                                                                                    border: Border.all(
                                                                                      color: FlutterFlowTheme.of(context).secondary,
                                                                                      width: 1.0,
                                                                                    ),
                                                                                  ),
                                                                                  child: Align(
                                                                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                    child: Text(
                                                                                      listViewPromosRecord.code,
                                                                                      textAlign: TextAlign.center,
                                                                                      style: FlutterFlowTheme.of(context).headlineSmall,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            16.0,
                                                                            4.0,
                                                                            0.0,
                                                                            12.0),
                                                                        child:
                                                                            Text(
                                                                          listViewPromosRecord
                                                                              .description,
                                                                          style:
                                                                              FlutterFlowTheme.of(context).labelMedium,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ).animateOnPageLoad(
                                                                        animationsMap[
                                                                            'containerOnPageLoadAnimation5']!),
                                                              );
                                                            },
                                                          );
                                                        },
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  0.0,
                                                                  10.0,
                                                                  0.0),
                                                      child: Builder(
                                                        builder: (context) {
                                                          final businessPhotos =
                                                              businessProfileBusinessesRecord
                                                                  .photos
                                                                  .toList();
                                                          return GridView
                                                              .builder(
                                                            padding:
                                                                EdgeInsets.zero,
                                                            gridDelegate:
                                                                const SliverGridDelegateWithFixedCrossAxisCount(
                                                              crossAxisCount: 4,
                                                              crossAxisSpacing:
                                                                  10.0,
                                                              mainAxisSpacing:
                                                                  10.0,
                                                              childAspectRatio:
                                                                  1.0,
                                                            ),
                                                            scrollDirection:
                                                                Axis.vertical,
                                                            itemCount:
                                                                businessPhotos
                                                                    .length,
                                                            itemBuilder: (context,
                                                                businessPhotosIndex) {
                                                              final businessPhotosItem =
                                                                  businessPhotos[
                                                                      businessPhotosIndex];
                                                              return InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  logFirebaseEvent(
                                                                      'BUSINESS_PROFILE_Image_rbzsx461_ON_TAP');
                                                                  logFirebaseEvent(
                                                                      'Image_expand_image');
                                                                  await Navigator
                                                                      .push(
                                                                    context,
                                                                    PageTransition(
                                                                      type: PageTransitionType
                                                                          .fade,
                                                                      child:
                                                                          FlutterFlowExpandedImageView(
                                                                        image: Image
                                                                            .network(
                                                                          businessPhotosItem,
                                                                          fit: BoxFit
                                                                              .contain,
                                                                        ),
                                                                        allowRotation:
                                                                            false,
                                                                        tag:
                                                                            businessPhotosItem,
                                                                        useHeroAnimation:
                                                                            true,
                                                                      ),
                                                                    ),
                                                                  );
                                                                },
                                                                child: Hero(
                                                                  tag:
                                                                      businessPhotosItem,
                                                                  transitionOnUserGestures:
                                                                      true,
                                                                  child:
                                                                      ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            5.0),
                                                                    child: Image
                                                                        .network(
                                                                      businessPhotosItem,
                                                                      width:
                                                                          100.0,
                                                                      height:
                                                                          100.0,
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    ),
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                          );
                                                        },
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(4.0),
                                                      child:
                                                          SingleChildScrollView(
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          12.0,
                                                                          12.0,
                                                                          12.0,
                                                                          8.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      ClipRRect(
                                                                        borderRadius:
                                                                            BorderRadius.circular(60.0),
                                                                        child: Image
                                                                            .network(
                                                                          valueOrDefault<
                                                                              String>(
                                                                            businessProfileBusinessesRecord.vendorLogo,
                                                                            'https://firebasestorage.googleapis.com/v0/b/buybrokoli-1.appspot.com/o/Minimalist%20Modern%20Support%20Small%20Businesses%20Instagram%20Post%20.png?alt=media&token=ca47db93-afc5-4bbe-b76b-d9bd31b891d5&_gl=1*1fuqbvh*_ga*MjExODMwMTc5MS4xNjg1NzQ2ODEw*_ga_CW55HF8NVT*MTY4NTg0MDMzMy45LjEuMTY4NTg0MTkzMC4wLjAuMA..',
                                                                          ),
                                                                          width:
                                                                              45.0,
                                                                          height:
                                                                              45.0,
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          businessProfileBusinessesRecord
                                                                              .vendorName,
                                                                          style:
                                                                              FlutterFlowTheme.of(context).titleMedium,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  if (businessProfileBusinessesRecord
                                                                          .totalRatings >
                                                                      0)
                                                                    Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .end,
                                                                      children: [
                                                                        Text(
                                                                          'Rating',
                                                                          style:
                                                                              FlutterFlowTheme.of(context).bodySmall,
                                                                        ),
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                              child: Text(
                                                                                formatNumber(
                                                                                  businessProfileBusinessesRecord.averageRating,
                                                                                  formatType: FormatType.decimal,
                                                                                  decimalType: DecimalType.periodDecimal,
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).headlineMedium,
                                                                              ),
                                                                            ),
                                                                            Icon(
                                                                              FFIcons.kbroccoli2,
                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                              size: 20.0,
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ],
                                                                    ),
                                                                ],
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          12.0,
                                                                          0.0,
                                                                          12.0,
                                                                          8.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Expanded(
                                                                    child:
                                                                        Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          12.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          AutoSizeText(
                                                                        businessProfileBusinessesRecord
                                                                            .description,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                              fontWeight: FontWeight.normal,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                            ),
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
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  if ((businessProfileBusinessesRecord.paid ==
                                          false) &&
                                      (businessProfileBusinessesRecord.type ==
                                          'Brand'))
                                    Expanded(
                                      child: Container(
                                        height: 100.0,
                                        constraints: BoxConstraints(
                                          maxHeight:
                                              MediaQuery.sizeOf(context).height,
                                        ),
                                        decoration: const BoxDecoration(),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 12.0, 0.0, 0.0),
                                          child: Column(
                                            children: [
                                              Align(
                                                alignment: const Alignment(0.0, 0),
                                                child: TabBar(
                                                  isScrollable: true,
                                                  labelColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                  unselectedLabelColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryText,
                                                  labelPadding:
                                                      const EdgeInsetsDirectional
                                                          .fromSTEB(32.0, 0.0,
                                                              32.0, 0.0),
                                                  labelStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium,
                                                  unselectedLabelStyle:
                                                      const TextStyle(),
                                                  indicatorColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  tabs: const [
                                                    Tab(
                                                      text: 'Products',
                                                    ),
                                                    Tab(
                                                      text: 'Photos',
                                                    ),
                                                    Tab(
                                                      text: 'About',
                                                    ),
                                                  ],
                                                  controller:
                                                      _model.tabBarController6,
                                                  onTap: (i) async {
                                                    [
                                                      () async {},
                                                      () async {},
                                                      () async {}
                                                    ][i]();
                                                  },
                                                ),
                                              ),
                                              Expanded(
                                                child: TabBarView(
                                                  controller:
                                                      _model.tabBarController6,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  24.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: StreamBuilder<
                                                          List<ProductsRecord>>(
                                                        stream:
                                                            queryProductsRecord(
                                                          queryBuilder:
                                                              (productsRecord) =>
                                                                  productsRecord
                                                                      .where(
                                                            'business',
                                                            isEqualTo:
                                                                widget.business,
                                                          ),
                                                        ),
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
                                                          List<ProductsRecord>
                                                              wrapProductsRecordList =
                                                              snapshot.data!;
                                                          if (wrapProductsRecordList
                                                              .isEmpty) {
                                                            return const EmptyProductListWidget();
                                                          }
                                                          return Wrap(
                                                            spacing: 0.0,
                                                            runSpacing: 20.0,
                                                            alignment:
                                                                WrapAlignment
                                                                    .spaceEvenly,
                                                            crossAxisAlignment:
                                                                WrapCrossAlignment
                                                                    .start,
                                                            direction:
                                                                Axis.horizontal,
                                                            runAlignment:
                                                                WrapAlignment
                                                                    .start,
                                                            verticalDirection:
                                                                VerticalDirection
                                                                    .down,
                                                            clipBehavior:
                                                                Clip.none,
                                                            children: List.generate(
                                                                wrapProductsRecordList
                                                                    .length,
                                                                (wrapIndex) {
                                                              final wrapProductsRecord =
                                                                  wrapProductsRecordList[
                                                                      wrapIndex];
                                                              return InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  logFirebaseEvent(
                                                                      'BUSINESS_PROFILE_cardProduct40_ON_TAP');
                                                                  logFirebaseEvent(
                                                                      'cardProduct40_navigate_to');

                                                                  context
                                                                      .pushNamed(
                                                                    'ProductPage',
                                                                    queryParameters:
                                                                        {
                                                                      'product':
                                                                          serializeParam(
                                                                        wrapProductsRecord
                                                                            .reference,
                                                                        ParamType
                                                                            .DocumentReference,
                                                                      ),
                                                                    }.withoutNulls,
                                                                  );
                                                                },
                                                                child:
                                                                    Container(
                                                                  width: 170.0,
                                                                  height: 250.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    boxShadow: const [
                                                                      BoxShadow(
                                                                        blurRadius:
                                                                            2.0,
                                                                        color: Color(
                                                                            0x520E151B),
                                                                        offset: Offset(
                                                                            0.0,
                                                                            1.0),
                                                                      )
                                                                    ],
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            12.0),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondary,
                                                                    ),
                                                                  ),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
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
                                                                        child: Image
                                                                            .network(
                                                                          wrapProductsRecord
                                                                              .productPhoto,
                                                                          width:
                                                                              double.infinity,
                                                                          height:
                                                                              150.0,
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          children: [
                                                                            Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(8.0, 4.0, 0.0, 4.0),
                                                                              child: Text(
                                                                                '${wrapProductsRecord.category} | ${wrapProductsRecord.type}',
                                                                                style: FlutterFlowTheme.of(context).labelSmall.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).labelSmallFamily,
                                                                                      fontSize: 10.0,
                                                                                      fontWeight: FontWeight.w300,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelSmallFamily),
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                            Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                              child: RatingBarIndicator(
                                                                                itemBuilder: (context, index) => Icon(
                                                                                  FFIcons.kbroccoli2,
                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                ),
                                                                                direction: Axis.horizontal,
                                                                                rating: wrapProductsRecord.averageRating,
                                                                                unratedColor: FlutterFlowTheme.of(context).lineColor,
                                                                                itemCount: 5,
                                                                                itemSize: 10.0,
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            8.0,
                                                                            4.0,
                                                                            8.0,
                                                                            8.0),
                                                                        child:
                                                                            Text(
                                                                          wrapProductsRecord
                                                                              .name,
                                                                          style:
                                                                              FlutterFlowTheme.of(context).labelMedium,
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            8.0,
                                                                            4.0,
                                                                            0.0,
                                                                            12.0),
                                                                        child:
                                                                            Text(
                                                                          formatNumber(
                                                                            wrapProductsRecord.price,
                                                                            formatType:
                                                                                FormatType.decimal,
                                                                            decimalType:
                                                                                DecimalType.periodDecimal,
                                                                            currency:
                                                                                '\$',
                                                                          ),
                                                                          style:
                                                                              FlutterFlowTheme.of(context).labelMedium,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ).animateOnPageLoad(
                                                                  animationsMap[
                                                                      'containerOnPageLoadAnimation6']!);
                                                            }),
                                                          );
                                                        },
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  0.0,
                                                                  10.0,
                                                                  0.0),
                                                      child: Builder(
                                                        builder: (context) {
                                                          final businessPhotos =
                                                              businessProfileBusinessesRecord
                                                                  .photos
                                                                  .toList();
                                                          return GridView
                                                              .builder(
                                                            padding:
                                                                EdgeInsets.zero,
                                                            gridDelegate:
                                                                const SliverGridDelegateWithFixedCrossAxisCount(
                                                              crossAxisCount: 4,
                                                              crossAxisSpacing:
                                                                  10.0,
                                                              mainAxisSpacing:
                                                                  10.0,
                                                              childAspectRatio:
                                                                  1.0,
                                                            ),
                                                            scrollDirection:
                                                                Axis.vertical,
                                                            itemCount:
                                                                businessPhotos
                                                                    .length,
                                                            itemBuilder: (context,
                                                                businessPhotosIndex) {
                                                              final businessPhotosItem =
                                                                  businessPhotos[
                                                                      businessPhotosIndex];
                                                              return InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  logFirebaseEvent(
                                                                      'BUSINESS_PROFILE_Image_lef4a4c2_ON_TAP');
                                                                  logFirebaseEvent(
                                                                      'Image_expand_image');
                                                                  await Navigator
                                                                      .push(
                                                                    context,
                                                                    PageTransition(
                                                                      type: PageTransitionType
                                                                          .fade,
                                                                      child:
                                                                          FlutterFlowExpandedImageView(
                                                                        image: Image
                                                                            .network(
                                                                          businessPhotosItem,
                                                                          fit: BoxFit
                                                                              .contain,
                                                                        ),
                                                                        allowRotation:
                                                                            false,
                                                                        tag:
                                                                            businessPhotosItem,
                                                                        useHeroAnimation:
                                                                            true,
                                                                      ),
                                                                    ),
                                                                  );
                                                                },
                                                                child: Hero(
                                                                  tag:
                                                                      businessPhotosItem,
                                                                  transitionOnUserGestures:
                                                                      true,
                                                                  child:
                                                                      ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            5.0),
                                                                    child: Image
                                                                        .network(
                                                                      businessPhotosItem,
                                                                      width:
                                                                          100.0,
                                                                      height:
                                                                          100.0,
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    ),
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                          );
                                                        },
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(4.0),
                                                      child:
                                                          SingleChildScrollView(
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          12.0,
                                                                          12.0,
                                                                          12.0,
                                                                          8.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      ClipRRect(
                                                                        borderRadius:
                                                                            BorderRadius.circular(60.0),
                                                                        child: Image
                                                                            .network(
                                                                          valueOrDefault<
                                                                              String>(
                                                                            businessProfileBusinessesRecord.vendorLogo,
                                                                            'https://firebasestorage.googleapis.com/v0/b/buybrokoli-1.appspot.com/o/Minimalist%20Modern%20Support%20Small%20Businesses%20Instagram%20Post%20.png?alt=media&token=ca47db93-afc5-4bbe-b76b-d9bd31b891d5&_gl=1*1fuqbvh*_ga*MjExODMwMTc5MS4xNjg1NzQ2ODEw*_ga_CW55HF8NVT*MTY4NTg0MDMzMy45LjEuMTY4NTg0MTkzMC4wLjAuMA..',
                                                                          ),
                                                                          width:
                                                                              45.0,
                                                                          height:
                                                                              45.0,
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          businessProfileBusinessesRecord
                                                                              .vendorName,
                                                                          style:
                                                                              FlutterFlowTheme.of(context).titleMedium,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  if (businessProfileBusinessesRecord
                                                                          .totalRatings >
                                                                      0)
                                                                    Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .end,
                                                                      children: [
                                                                        Text(
                                                                          'Rating',
                                                                          style:
                                                                              FlutterFlowTheme.of(context).bodySmall,
                                                                        ),
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                              child: Text(
                                                                                formatNumber(
                                                                                  businessProfileBusinessesRecord.averageRating,
                                                                                  formatType: FormatType.decimal,
                                                                                  decimalType: DecimalType.periodDecimal,
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).headlineMedium,
                                                                              ),
                                                                            ),
                                                                            Icon(
                                                                              FFIcons.kbroccoli2,
                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                              size: 20.0,
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ],
                                                                    ),
                                                                ],
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          12.0,
                                                                          0.0,
                                                                          12.0,
                                                                          8.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Expanded(
                                                                    child:
                                                                        Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          12.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          AutoSizeText(
                                                                        businessProfileBusinessesRecord
                                                                            .description,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                              fontWeight: FontWeight.normal,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                            ),
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
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  if ((businessProfileBusinessesRecord.paid ==
                                          true) &&
                                      (businessProfileBusinessesRecord.type ==
                                          'Brand'))
                                    Expanded(
                                      child: Container(
                                        height: 100.0,
                                        constraints: BoxConstraints(
                                          maxHeight:
                                              MediaQuery.sizeOf(context).height,
                                        ),
                                        decoration: const BoxDecoration(),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 12.0, 0.0, 0.0),
                                          child: Column(
                                            children: [
                                              Align(
                                                alignment: const Alignment(0.0, 0),
                                                child: TabBar(
                                                  isScrollable: true,
                                                  labelColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                  unselectedLabelColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryText,
                                                  labelPadding:
                                                      const EdgeInsetsDirectional
                                                          .fromSTEB(32.0, 0.0,
                                                              32.0, 0.0),
                                                  labelStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium,
                                                  unselectedLabelStyle:
                                                      const TextStyle(),
                                                  indicatorColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  tabs: const [
                                                    Tab(
                                                      text: 'Feed',
                                                    ),
                                                    Tab(
                                                      text: 'Promos',
                                                    ),
                                                    Tab(
                                                      text: 'Products',
                                                    ),
                                                    Tab(
                                                      text: 'Photos',
                                                    ),
                                                    Tab(
                                                      text: 'About',
                                                    ),
                                                  ],
                                                  controller:
                                                      _model.tabBarController7,
                                                  onTap: (i) async {
                                                    [
                                                      () async {},
                                                      () async {},
                                                      () async {},
                                                      () async {},
                                                      () async {}
                                                    ][i]();
                                                  },
                                                ),
                                              ),
                                              Expanded(
                                                child: TabBarView(
                                                  controller:
                                                      _model.tabBarController7,
                                                  children: [
                                                    Container(
                                                      width: double.infinity,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        boxShadow: const [
                                                          BoxShadow(
                                                            blurRadius: 3.0,
                                                            color: Color(
                                                                0x2E000000),
                                                            offset: Offset(
                                                                0.0, 2.0),
                                                          )
                                                        ],
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        border: Border.all(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                          width: 2.0,
                                                        ),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    12.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: StreamBuilder<
                                                            List<FeedRecord>>(
                                                          stream:
                                                              queryFeedRecord(
                                                            queryBuilder: (feedRecord) =>
                                                                feedRecord
                                                                    .where(
                                                                      'business',
                                                                      isEqualTo:
                                                                          widget
                                                                              .business,
                                                                    )
                                                                    .orderBy(
                                                                        'time_posted',
                                                                        descending:
                                                                            true),
                                                          ),
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
                                                            List<FeedRecord>
                                                                listViewFeedRecordList =
                                                                snapshot.data!;
                                                            return ListView
                                                                .builder(
                                                              padding:
                                                                  EdgeInsets
                                                                      .zero,
                                                              scrollDirection:
                                                                  Axis.vertical,
                                                              itemCount:
                                                                  listViewFeedRecordList
                                                                      .length,
                                                              itemBuilder: (context,
                                                                  listViewIndex) {
                                                                final listViewFeedRecord =
                                                                    listViewFeedRecordList[
                                                                        listViewIndex];
                                                                return FeedPostWidget(
                                                                  key: Key(
                                                                      'Keyraw_${listViewIndex}_of_${listViewFeedRecordList.length}'),
                                                                  post:
                                                                      listViewFeedRecord,
                                                                  pageLink: _model
                                                                      .currentPageLink,
                                                                  business:
                                                                      businessProfileBusinessesRecord,
                                                                );
                                                              },
                                                            );
                                                          },
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  8.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: StreamBuilder<
                                                          List<PromosRecord>>(
                                                        stream:
                                                            queryPromosRecord(
                                                          queryBuilder:
                                                              (promosRecord) =>
                                                                  promosRecord
                                                                      .where(
                                                            'business',
                                                            isEqualTo:
                                                                businessProfileBusinessesRecord
                                                                    .reference,
                                                          ),
                                                        ),
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
                                                          List<PromosRecord>
                                                              listViewPromosRecordList =
                                                              snapshot.data!;
                                                          return ListView
                                                              .builder(
                                                            padding:
                                                                EdgeInsets.zero,
                                                            scrollDirection:
                                                                Axis.vertical,
                                                            itemCount:
                                                                listViewPromosRecordList
                                                                    .length,
                                                            itemBuilder: (context,
                                                                listViewIndex) {
                                                              final listViewPromosRecord =
                                                                  listViewPromosRecordList[
                                                                      listViewIndex];
                                                              return Padding(
                                                                padding: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        32.0,
                                                                        16.0,
                                                                        32.0),
                                                                child:
                                                                    Container(
                                                                  width: double
                                                                      .infinity,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    boxShadow: const [
                                                                      BoxShadow(
                                                                        blurRadius:
                                                                            2.0,
                                                                        color: Color(
                                                                            0x520E151B),
                                                                        offset: Offset(
                                                                            0.0,
                                                                            1.0),
                                                                      )
                                                                    ],
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            12.0),
                                                                  ),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
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
                                                                        child: Image
                                                                            .network(
                                                                          listViewPromosRecord
                                                                              .image,
                                                                          width:
                                                                              double.infinity,
                                                                          height:
                                                                              260.0,
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            16.0,
                                                                            12.0,
                                                                            16.0,
                                                                            0.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          children: [
                                                                            Expanded(
                                                                              flex: 7,
                                                                              child: Text(
                                                                                listViewPromosRecord.name,
                                                                                style: FlutterFlowTheme.of(context).bodyLarge,
                                                                              ),
                                                                            ),
                                                                            if (listViewPromosRecord.code != '')
                                                                              Align(
                                                                                alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                child: Container(
                                                                                  width: 200.0,
                                                                                  height: 50.0,
                                                                                  decoration: BoxDecoration(
                                                                                    borderRadius: BorderRadius.circular(4.0),
                                                                                    border: Border.all(
                                                                                      color: FlutterFlowTheme.of(context).secondary,
                                                                                      width: 1.0,
                                                                                    ),
                                                                                  ),
                                                                                  child: Align(
                                                                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                    child: Text(
                                                                                      listViewPromosRecord.code,
                                                                                      textAlign: TextAlign.center,
                                                                                      style: FlutterFlowTheme.of(context).headlineSmall,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            16.0,
                                                                            4.0,
                                                                            0.0,
                                                                            12.0),
                                                                        child:
                                                                            Text(
                                                                          listViewPromosRecord
                                                                              .description,
                                                                          style:
                                                                              FlutterFlowTheme.of(context).labelMedium,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ).animateOnPageLoad(
                                                                        animationsMap[
                                                                            'containerOnPageLoadAnimation7']!),
                                                              );
                                                            },
                                                          );
                                                        },
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  24.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: StreamBuilder<
                                                          List<ProductsRecord>>(
                                                        stream:
                                                            queryProductsRecord(
                                                          queryBuilder:
                                                              (productsRecord) =>
                                                                  productsRecord
                                                                      .where(
                                                            'business',
                                                            isEqualTo:
                                                                widget.business,
                                                          ),
                                                        ),
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
                                                          List<ProductsRecord>
                                                              wrapProductsRecordList =
                                                              snapshot.data!;
                                                          if (wrapProductsRecordList
                                                              .isEmpty) {
                                                            return const EmptyProductListWidget();
                                                          }
                                                          return Wrap(
                                                            spacing: 0.0,
                                                            runSpacing: 20.0,
                                                            alignment:
                                                                WrapAlignment
                                                                    .spaceEvenly,
                                                            crossAxisAlignment:
                                                                WrapCrossAlignment
                                                                    .start,
                                                            direction:
                                                                Axis.horizontal,
                                                            runAlignment:
                                                                WrapAlignment
                                                                    .start,
                                                            verticalDirection:
                                                                VerticalDirection
                                                                    .down,
                                                            clipBehavior:
                                                                Clip.none,
                                                            children: List.generate(
                                                                wrapProductsRecordList
                                                                    .length,
                                                                (wrapIndex) {
                                                              final wrapProductsRecord =
                                                                  wrapProductsRecordList[
                                                                      wrapIndex];
                                                              return InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  logFirebaseEvent(
                                                                      'BUSINESS_PROFILE_cardProduct40_ON_TAP');
                                                                  logFirebaseEvent(
                                                                      'cardProduct40_navigate_to');

                                                                  context
                                                                      .pushNamed(
                                                                    'ProductPage',
                                                                    queryParameters:
                                                                        {
                                                                      'product':
                                                                          serializeParam(
                                                                        wrapProductsRecord
                                                                            .reference,
                                                                        ParamType
                                                                            .DocumentReference,
                                                                      ),
                                                                    }.withoutNulls,
                                                                  );
                                                                },
                                                                child:
                                                                    Container(
                                                                  width: 170.0,
                                                                  height: 250.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    boxShadow: const [
                                                                      BoxShadow(
                                                                        blurRadius:
                                                                            2.0,
                                                                        color: Color(
                                                                            0x520E151B),
                                                                        offset: Offset(
                                                                            0.0,
                                                                            1.0),
                                                                      )
                                                                    ],
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            12.0),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondary,
                                                                    ),
                                                                  ),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
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
                                                                        child: Image
                                                                            .network(
                                                                          wrapProductsRecord
                                                                              .productPhoto,
                                                                          width:
                                                                              double.infinity,
                                                                          height:
                                                                              150.0,
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          children: [
                                                                            Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(8.0, 4.0, 0.0, 4.0),
                                                                              child: Text(
                                                                                '${wrapProductsRecord.category} | ${wrapProductsRecord.type}',
                                                                                style: FlutterFlowTheme.of(context).labelSmall.override(
                                                                                      fontFamily: FlutterFlowTheme.of(context).labelSmallFamily,
                                                                                      fontSize: 10.0,
                                                                                      fontWeight: FontWeight.w300,
                                                                                      useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelSmallFamily),
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                            Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                              child: RatingBarIndicator(
                                                                                itemBuilder: (context, index) => Icon(
                                                                                  FFIcons.kbroccoli2,
                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                ),
                                                                                direction: Axis.horizontal,
                                                                                rating: wrapProductsRecord.averageRating,
                                                                                unratedColor: FlutterFlowTheme.of(context).lineColor,
                                                                                itemCount: 5,
                                                                                itemSize: 10.0,
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            8.0,
                                                                            4.0,
                                                                            8.0,
                                                                            8.0),
                                                                        child:
                                                                            Text(
                                                                          wrapProductsRecord
                                                                              .name,
                                                                          style:
                                                                              FlutterFlowTheme.of(context).labelMedium,
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            8.0,
                                                                            4.0,
                                                                            0.0,
                                                                            12.0),
                                                                        child:
                                                                            Text(
                                                                          formatNumber(
                                                                            wrapProductsRecord.price,
                                                                            formatType:
                                                                                FormatType.decimal,
                                                                            decimalType:
                                                                                DecimalType.periodDecimal,
                                                                            currency:
                                                                                '\$',
                                                                          ),
                                                                          style:
                                                                              FlutterFlowTheme.of(context).labelMedium,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ).animateOnPageLoad(
                                                                  animationsMap[
                                                                      'containerOnPageLoadAnimation8']!);
                                                            }),
                                                          );
                                                        },
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  0.0,
                                                                  10.0,
                                                                  0.0),
                                                      child: Builder(
                                                        builder: (context) {
                                                          final businessPhotos =
                                                              businessProfileBusinessesRecord
                                                                  .photos
                                                                  .toList();
                                                          return GridView
                                                              .builder(
                                                            padding:
                                                                EdgeInsets.zero,
                                                            gridDelegate:
                                                                const SliverGridDelegateWithFixedCrossAxisCount(
                                                              crossAxisCount: 4,
                                                              crossAxisSpacing:
                                                                  10.0,
                                                              mainAxisSpacing:
                                                                  10.0,
                                                              childAspectRatio:
                                                                  1.0,
                                                            ),
                                                            scrollDirection:
                                                                Axis.vertical,
                                                            itemCount:
                                                                businessPhotos
                                                                    .length,
                                                            itemBuilder: (context,
                                                                businessPhotosIndex) {
                                                              final businessPhotosItem =
                                                                  businessPhotos[
                                                                      businessPhotosIndex];
                                                              return InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  logFirebaseEvent(
                                                                      'BUSINESS_PROFILE_Image_n4cyf6m2_ON_TAP');
                                                                  logFirebaseEvent(
                                                                      'Image_expand_image');
                                                                  await Navigator
                                                                      .push(
                                                                    context,
                                                                    PageTransition(
                                                                      type: PageTransitionType
                                                                          .fade,
                                                                      child:
                                                                          FlutterFlowExpandedImageView(
                                                                        image: Image
                                                                            .network(
                                                                          businessPhotosItem,
                                                                          fit: BoxFit
                                                                              .contain,
                                                                        ),
                                                                        allowRotation:
                                                                            false,
                                                                        tag:
                                                                            businessPhotosItem,
                                                                        useHeroAnimation:
                                                                            true,
                                                                      ),
                                                                    ),
                                                                  );
                                                                },
                                                                child: Hero(
                                                                  tag:
                                                                      businessPhotosItem,
                                                                  transitionOnUserGestures:
                                                                      true,
                                                                  child:
                                                                      ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            5.0),
                                                                    child: Image
                                                                        .network(
                                                                      businessPhotosItem,
                                                                      width:
                                                                          100.0,
                                                                      height:
                                                                          100.0,
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    ),
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                          );
                                                        },
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(4.0),
                                                      child:
                                                          SingleChildScrollView(
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          12.0,
                                                                          12.0,
                                                                          12.0,
                                                                          8.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      ClipRRect(
                                                                        borderRadius:
                                                                            BorderRadius.circular(60.0),
                                                                        child: Image
                                                                            .network(
                                                                          valueOrDefault<
                                                                              String>(
                                                                            businessProfileBusinessesRecord.vendorLogo,
                                                                            'https://firebasestorage.googleapis.com/v0/b/buybrokoli-1.appspot.com/o/Minimalist%20Modern%20Support%20Small%20Businesses%20Instagram%20Post%20.png?alt=media&token=ca47db93-afc5-4bbe-b76b-d9bd31b891d5&_gl=1*1fuqbvh*_ga*MjExODMwMTc5MS4xNjg1NzQ2ODEw*_ga_CW55HF8NVT*MTY4NTg0MDMzMy45LjEuMTY4NTg0MTkzMC4wLjAuMA..',
                                                                          ),
                                                                          width:
                                                                              45.0,
                                                                          height:
                                                                              45.0,
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          businessProfileBusinessesRecord
                                                                              .vendorName,
                                                                          style:
                                                                              FlutterFlowTheme.of(context).titleMedium,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  if (businessProfileBusinessesRecord
                                                                          .totalRatings >
                                                                      0)
                                                                    Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .end,
                                                                      children: [
                                                                        Text(
                                                                          'Rating',
                                                                          style:
                                                                              FlutterFlowTheme.of(context).bodySmall,
                                                                        ),
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                              child: Text(
                                                                                formatNumber(
                                                                                  businessProfileBusinessesRecord.averageRating,
                                                                                  formatType: FormatType.decimal,
                                                                                  decimalType: DecimalType.periodDecimal,
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).headlineMedium,
                                                                              ),
                                                                            ),
                                                                            Icon(
                                                                              FFIcons.kbroccoli2,
                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                              size: 20.0,
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ],
                                                                    ),
                                                                ],
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          12.0,
                                                                          0.0,
                                                                          12.0,
                                                                          8.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Expanded(
                                                                    child:
                                                                        Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          12.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          AutoSizeText(
                                                                        businessProfileBusinessesRecord
                                                                            .description,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                              fontWeight: FontWeight.normal,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                            ),
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
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  if ((businessProfileBusinessesRecord.paid ==
                                          false) &&
                                      (businessProfileBusinessesRecord.type ==
                                          'Medical'))
                                    Expanded(
                                      child: Container(
                                        height: 100.0,
                                        constraints: BoxConstraints(
                                          maxHeight:
                                              MediaQuery.sizeOf(context).height,
                                        ),
                                        decoration: const BoxDecoration(),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 12.0, 0.0, 0.0),
                                          child: Column(
                                            children: [
                                              Align(
                                                alignment: const Alignment(0.0, 0),
                                                child: TabBar(
                                                  isScrollable: true,
                                                  labelColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                  unselectedLabelColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryText,
                                                  labelPadding:
                                                      const EdgeInsetsDirectional
                                                          .fromSTEB(32.0, 0.0,
                                                              32.0, 0.0),
                                                  labelStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium,
                                                  unselectedLabelStyle:
                                                      const TextStyle(),
                                                  indicatorColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  tabs: const [
                                                    Tab(
                                                      text: 'Services',
                                                    ),
                                                    Tab(
                                                      text: 'Photos',
                                                    ),
                                                    Tab(
                                                      text: 'About',
                                                    ),
                                                  ],
                                                  controller:
                                                      _model.tabBarController8,
                                                  onTap: (i) async {
                                                    [
                                                      () async {},
                                                      () async {},
                                                      () async {}
                                                    ][i]();
                                                  },
                                                ),
                                              ),
                                              Expanded(
                                                child: TabBarView(
                                                  controller:
                                                      _model.tabBarController8,
                                                  children: [
                                                    SingleChildScrollView(
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        12.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: StreamBuilder<
                                                                List<
                                                                    ServicesRecord>>(
                                                              stream:
                                                                  queryServicesRecord(
                                                                queryBuilder:
                                                                    (servicesRecord) =>
                                                                        servicesRecord
                                                                            .where(
                                                                  'business',
                                                                  isEqualTo: widget
                                                                      .business,
                                                                ),
                                                              ),
                                                              builder: (context,
                                                                  snapshot) {
                                                                // Customize what your widget looks like when it's loading.
                                                                if (!snapshot
                                                                    .hasData) {
                                                                  return Center(
                                                                    child:
                                                                        SizedBox(
                                                                      width:
                                                                          50.0,
                                                                      height:
                                                                          50.0,
                                                                      child:
                                                                          SpinKitSquareCircle(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                        size:
                                                                            50.0,
                                                                      ),
                                                                    ),
                                                                  );
                                                                }
                                                                List<ServicesRecord>
                                                                    servicesListViewServicesRecordList =
                                                                    snapshot
                                                                        .data!;
                                                                return ListView
                                                                    .builder(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .zero,
                                                                  shrinkWrap:
                                                                      true,
                                                                  scrollDirection:
                                                                      Axis.vertical,
                                                                  itemCount:
                                                                      servicesListViewServicesRecordList
                                                                          .length,
                                                                  itemBuilder:
                                                                      (context,
                                                                          servicesListViewIndex) {
                                                                    final servicesListViewServicesRecord =
                                                                        servicesListViewServicesRecordList[
                                                                            servicesListViewIndex];
                                                                    return Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          16.0,
                                                                          0.0,
                                                                          16.0,
                                                                          16.0),
                                                                      child:
                                                                          Container(
                                                                        width: double
                                                                            .infinity,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                          boxShadow: const [
                                                                            BoxShadow(
                                                                              blurRadius: 5.0,
                                                                              color: Color(0x44111417),
                                                                              offset: Offset(0.0, 2.0),
                                                                            )
                                                                          ],
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                          border:
                                                                              Border.all(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).lineColor,
                                                                          ),
                                                                        ),
                                                                        child:
                                                                            Padding(
                                                                          padding:
                                                                              const EdgeInsets.all(12.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Container(
                                                                                width: 200.0,
                                                                                height: 200.0,
                                                                                decoration: BoxDecoration(
                                                                                  color: FlutterFlowTheme.of(context).accent1,
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                  border: Border.all(
                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                    width: 2.0,
                                                                                  ),
                                                                                ),
                                                                                alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                child: Padding(
                                                                                  padding: const EdgeInsets.all(2.0),
                                                                                  child: ClipRRect(
                                                                                    borderRadius: BorderRadius.circular(6.0),
                                                                                    child: Image.network(
                                                                                      servicesListViewServicesRecord.photo,
                                                                                      width: double.infinity,
                                                                                      height: double.infinity,
                                                                                      fit: BoxFit.cover,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Expanded(
                                                                                child: Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                                                                                  child: Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    children: [
                                                                                      Text(
                                                                                        servicesListViewServicesRecord.name,
                                                                                        style: FlutterFlowTheme.of(context).titleLarge,
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Icon(
                                                                                              Icons.monetization_on_outlined,
                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                              size: 16.0,
                                                                                            ),
                                                                                            Padding(
                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 0.0, 0.0),
                                                                                              child: Text(
                                                                                                servicesListViewServicesRecord.price.toString(),
                                                                                                style: FlutterFlowTheme.of(context).labelMedium,
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Padding(
                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 0.0, 0.0),
                                                                                              child: Text(
                                                                                                servicesListViewServicesRecord.description,
                                                                                                style: FlutterFlowTheme.of(context).labelMedium,
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
                                                                    );
                                                                  },
                                                                );
                                                              },
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  0.0,
                                                                  10.0,
                                                                  0.0),
                                                      child: Builder(
                                                        builder: (context) {
                                                          final businessPhotos =
                                                              businessProfileBusinessesRecord
                                                                  .photos
                                                                  .toList();
                                                          return GridView
                                                              .builder(
                                                            padding:
                                                                EdgeInsets.zero,
                                                            gridDelegate:
                                                                const SliverGridDelegateWithFixedCrossAxisCount(
                                                              crossAxisCount: 4,
                                                              crossAxisSpacing:
                                                                  10.0,
                                                              mainAxisSpacing:
                                                                  10.0,
                                                              childAspectRatio:
                                                                  1.0,
                                                            ),
                                                            scrollDirection:
                                                                Axis.vertical,
                                                            itemCount:
                                                                businessPhotos
                                                                    .length,
                                                            itemBuilder: (context,
                                                                businessPhotosIndex) {
                                                              final businessPhotosItem =
                                                                  businessPhotos[
                                                                      businessPhotosIndex];
                                                              return InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  logFirebaseEvent(
                                                                      'BUSINESS_PROFILE_Image_ft1uwder_ON_TAP');
                                                                  logFirebaseEvent(
                                                                      'Image_expand_image');
                                                                  await Navigator
                                                                      .push(
                                                                    context,
                                                                    PageTransition(
                                                                      type: PageTransitionType
                                                                          .fade,
                                                                      child:
                                                                          FlutterFlowExpandedImageView(
                                                                        image: Image
                                                                            .network(
                                                                          businessPhotosItem,
                                                                          fit: BoxFit
                                                                              .contain,
                                                                        ),
                                                                        allowRotation:
                                                                            false,
                                                                        tag:
                                                                            businessPhotosItem,
                                                                        useHeroAnimation:
                                                                            true,
                                                                      ),
                                                                    ),
                                                                  );
                                                                },
                                                                child: Hero(
                                                                  tag:
                                                                      businessPhotosItem,
                                                                  transitionOnUserGestures:
                                                                      true,
                                                                  child:
                                                                      ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            5.0),
                                                                    child: Image
                                                                        .network(
                                                                      businessPhotosItem,
                                                                      width:
                                                                          100.0,
                                                                      height:
                                                                          100.0,
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    ),
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                          );
                                                        },
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(4.0),
                                                      child:
                                                          SingleChildScrollView(
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          12.0,
                                                                          12.0,
                                                                          12.0,
                                                                          8.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      ClipRRect(
                                                                        borderRadius:
                                                                            BorderRadius.circular(60.0),
                                                                        child: Image
                                                                            .network(
                                                                          valueOrDefault<
                                                                              String>(
                                                                            businessProfileBusinessesRecord.vendorLogo,
                                                                            'https://firebasestorage.googleapis.com/v0/b/buybrokoli-1.appspot.com/o/Minimalist%20Modern%20Support%20Small%20Businesses%20Instagram%20Post%20.png?alt=media&token=ca47db93-afc5-4bbe-b76b-d9bd31b891d5&_gl=1*1fuqbvh*_ga*MjExODMwMTc5MS4xNjg1NzQ2ODEw*_ga_CW55HF8NVT*MTY4NTg0MDMzMy45LjEuMTY4NTg0MTkzMC4wLjAuMA..',
                                                                          ),
                                                                          width:
                                                                              45.0,
                                                                          height:
                                                                              45.0,
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          businessProfileBusinessesRecord
                                                                              .vendorName,
                                                                          style:
                                                                              FlutterFlowTheme.of(context).titleMedium,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  if (businessProfileBusinessesRecord
                                                                          .totalRatings >
                                                                      0)
                                                                    Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .end,
                                                                      children: [
                                                                        Text(
                                                                          'Rating',
                                                                          style:
                                                                              FlutterFlowTheme.of(context).bodySmall,
                                                                        ),
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                              child: Text(
                                                                                formatNumber(
                                                                                  businessProfileBusinessesRecord.averageRating,
                                                                                  formatType: FormatType.decimal,
                                                                                  decimalType: DecimalType.periodDecimal,
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).headlineMedium,
                                                                              ),
                                                                            ),
                                                                            Icon(
                                                                              FFIcons.kbroccoli2,
                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                              size: 20.0,
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ],
                                                                    ),
                                                                ],
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          12.0,
                                                                          0.0,
                                                                          12.0,
                                                                          8.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Expanded(
                                                                    child:
                                                                        Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          12.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          AutoSizeText(
                                                                        businessProfileBusinessesRecord
                                                                            .description,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                              fontWeight: FontWeight.normal,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                            ),
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
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  if ((businessProfileBusinessesRecord.paid ==
                                          true) &&
                                      (businessProfileBusinessesRecord.type ==
                                          'Medical'))
                                    Expanded(
                                      child: Container(
                                        height: 100.0,
                                        constraints: BoxConstraints(
                                          maxHeight:
                                              MediaQuery.sizeOf(context).height,
                                        ),
                                        decoration: const BoxDecoration(),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 12.0, 0.0, 0.0),
                                          child: Column(
                                            children: [
                                              Align(
                                                alignment: const Alignment(0.0, 0),
                                                child: TabBar(
                                                  isScrollable: true,
                                                  labelColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                  unselectedLabelColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryText,
                                                  labelPadding:
                                                      const EdgeInsetsDirectional
                                                          .fromSTEB(32.0, 0.0,
                                                              32.0, 0.0),
                                                  labelStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium,
                                                  unselectedLabelStyle:
                                                      const TextStyle(),
                                                  indicatorColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  tabs: const [
                                                    Tab(
                                                      text: 'Services',
                                                    ),
                                                    Tab(
                                                      text: 'Feed',
                                                    ),
                                                    Tab(
                                                      text: 'Promos',
                                                    ),
                                                    Tab(
                                                      text: 'Photos',
                                                    ),
                                                    Tab(
                                                      text: 'About',
                                                    ),
                                                  ],
                                                  controller:
                                                      _model.tabBarController9,
                                                  onTap: (i) async {
                                                    [
                                                      () async {},
                                                      () async {},
                                                      () async {},
                                                      () async {},
                                                      () async {}
                                                    ][i]();
                                                  },
                                                ),
                                              ),
                                              Expanded(
                                                child: TabBarView(
                                                  controller:
                                                      _model.tabBarController9,
                                                  children: [
                                                    SingleChildScrollView(
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        12.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: StreamBuilder<
                                                                List<
                                                                    ServicesRecord>>(
                                                              stream:
                                                                  queryServicesRecord(
                                                                queryBuilder:
                                                                    (servicesRecord) =>
                                                                        servicesRecord
                                                                            .where(
                                                                  'business',
                                                                  isEqualTo: widget
                                                                      .business,
                                                                ),
                                                              ),
                                                              builder: (context,
                                                                  snapshot) {
                                                                // Customize what your widget looks like when it's loading.
                                                                if (!snapshot
                                                                    .hasData) {
                                                                  return Center(
                                                                    child:
                                                                        SizedBox(
                                                                      width:
                                                                          50.0,
                                                                      height:
                                                                          50.0,
                                                                      child:
                                                                          SpinKitSquareCircle(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                        size:
                                                                            50.0,
                                                                      ),
                                                                    ),
                                                                  );
                                                                }
                                                                List<ServicesRecord>
                                                                    servicesListViewServicesRecordList =
                                                                    snapshot
                                                                        .data!;
                                                                return ListView
                                                                    .builder(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .zero,
                                                                  shrinkWrap:
                                                                      true,
                                                                  scrollDirection:
                                                                      Axis.vertical,
                                                                  itemCount:
                                                                      servicesListViewServicesRecordList
                                                                          .length,
                                                                  itemBuilder:
                                                                      (context,
                                                                          servicesListViewIndex) {
                                                                    final servicesListViewServicesRecord =
                                                                        servicesListViewServicesRecordList[
                                                                            servicesListViewIndex];
                                                                    return Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          16.0,
                                                                          0.0,
                                                                          16.0,
                                                                          16.0),
                                                                      child:
                                                                          Container(
                                                                        width: double
                                                                            .infinity,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                          boxShadow: const [
                                                                            BoxShadow(
                                                                              blurRadius: 5.0,
                                                                              color: Color(0x44111417),
                                                                              offset: Offset(0.0, 2.0),
                                                                            )
                                                                          ],
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                          border:
                                                                              Border.all(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).lineColor,
                                                                          ),
                                                                        ),
                                                                        child:
                                                                            Padding(
                                                                          padding:
                                                                              const EdgeInsets.all(12.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Container(
                                                                                width: 200.0,
                                                                                height: 200.0,
                                                                                decoration: BoxDecoration(
                                                                                  color: FlutterFlowTheme.of(context).accent1,
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                  border: Border.all(
                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                    width: 2.0,
                                                                                  ),
                                                                                ),
                                                                                alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                child: Padding(
                                                                                  padding: const EdgeInsets.all(2.0),
                                                                                  child: ClipRRect(
                                                                                    borderRadius: BorderRadius.circular(6.0),
                                                                                    child: Image.network(
                                                                                      servicesListViewServicesRecord.photo,
                                                                                      width: double.infinity,
                                                                                      height: double.infinity,
                                                                                      fit: BoxFit.cover,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Expanded(
                                                                                child: Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                                                                                  child: Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    children: [
                                                                                      Text(
                                                                                        servicesListViewServicesRecord.name,
                                                                                        style: FlutterFlowTheme.of(context).titleLarge,
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Icon(
                                                                                              Icons.monetization_on_outlined,
                                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                                              size: 16.0,
                                                                                            ),
                                                                                            Padding(
                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 0.0, 0.0),
                                                                                              child: Text(
                                                                                                servicesListViewServicesRecord.price.toString(),
                                                                                                style: FlutterFlowTheme.of(context).labelMedium,
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Padding(
                                                                                              padding: const EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 0.0, 0.0),
                                                                                              child: Text(
                                                                                                servicesListViewServicesRecord.description,
                                                                                                style: FlutterFlowTheme.of(context).labelMedium,
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
                                                                    );
                                                                  },
                                                                );
                                                              },
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  12.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: StreamBuilder<
                                                          List<FeedRecord>>(
                                                        stream: queryFeedRecord(
                                                          queryBuilder: (feedRecord) =>
                                                              feedRecord
                                                                  .where(
                                                                    'business',
                                                                    isEqualTo:
                                                                        widget
                                                                            .business,
                                                                  )
                                                                  .orderBy(
                                                                      'time_posted',
                                                                      descending:
                                                                          true),
                                                        ),
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
                                                          List<FeedRecord>
                                                              listViewFeedRecordList =
                                                              snapshot.data!;
                                                          return ListView
                                                              .builder(
                                                            padding:
                                                                EdgeInsets.zero,
                                                            scrollDirection:
                                                                Axis.vertical,
                                                            itemCount:
                                                                listViewFeedRecordList
                                                                    .length,
                                                            itemBuilder: (context,
                                                                listViewIndex) {
                                                              final listViewFeedRecord =
                                                                  listViewFeedRecordList[
                                                                      listViewIndex];
                                                              return FeedPostWidget(
                                                                key: Key(
                                                                    'Keyyi6_${listViewIndex}_of_${listViewFeedRecordList.length}'),
                                                                post:
                                                                    listViewFeedRecord,
                                                                pageLink: _model
                                                                    .currentPageLink,
                                                                business:
                                                                    businessProfileBusinessesRecord,
                                                              );
                                                            },
                                                          );
                                                        },
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  8.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: StreamBuilder<
                                                          List<PromosRecord>>(
                                                        stream:
                                                            queryPromosRecord(
                                                          queryBuilder:
                                                              (promosRecord) =>
                                                                  promosRecord
                                                                      .where(
                                                            'business',
                                                            isEqualTo:
                                                                businessProfileBusinessesRecord
                                                                    .reference,
                                                          ),
                                                        ),
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
                                                          List<PromosRecord>
                                                              listViewPromosRecordList =
                                                              snapshot.data!;
                                                          return ListView
                                                              .builder(
                                                            padding:
                                                                EdgeInsets.zero,
                                                            scrollDirection:
                                                                Axis.vertical,
                                                            itemCount:
                                                                listViewPromosRecordList
                                                                    .length,
                                                            itemBuilder: (context,
                                                                listViewIndex) {
                                                              final listViewPromosRecord =
                                                                  listViewPromosRecordList[
                                                                      listViewIndex];
                                                              return Padding(
                                                                padding: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        32.0,
                                                                        16.0,
                                                                        32.0),
                                                                child:
                                                                    Container(
                                                                  width: double
                                                                      .infinity,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    boxShadow: const [
                                                                      BoxShadow(
                                                                        blurRadius:
                                                                            2.0,
                                                                        color: Color(
                                                                            0x520E151B),
                                                                        offset: Offset(
                                                                            0.0,
                                                                            1.0),
                                                                      )
                                                                    ],
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            12.0),
                                                                  ),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
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
                                                                        child: Image
                                                                            .network(
                                                                          listViewPromosRecord
                                                                              .image,
                                                                          width:
                                                                              double.infinity,
                                                                          height:
                                                                              260.0,
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            16.0,
                                                                            12.0,
                                                                            16.0,
                                                                            0.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          children: [
                                                                            Expanded(
                                                                              flex: 7,
                                                                              child: Text(
                                                                                listViewPromosRecord.name,
                                                                                style: FlutterFlowTheme.of(context).bodyLarge,
                                                                              ),
                                                                            ),
                                                                            if (listViewPromosRecord.code != '')
                                                                              Align(
                                                                                alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                child: Container(
                                                                                  width: 200.0,
                                                                                  height: 50.0,
                                                                                  decoration: BoxDecoration(
                                                                                    borderRadius: BorderRadius.circular(4.0),
                                                                                    border: Border.all(
                                                                                      color: FlutterFlowTheme.of(context).secondary,
                                                                                      width: 1.0,
                                                                                    ),
                                                                                  ),
                                                                                  child: Align(
                                                                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                    child: Text(
                                                                                      listViewPromosRecord.code,
                                                                                      textAlign: TextAlign.center,
                                                                                      style: FlutterFlowTheme.of(context).headlineSmall,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            16.0,
                                                                            4.0,
                                                                            0.0,
                                                                            12.0),
                                                                        child:
                                                                            Text(
                                                                          listViewPromosRecord
                                                                              .description,
                                                                          style:
                                                                              FlutterFlowTheme.of(context).labelMedium,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ).animateOnPageLoad(
                                                                        animationsMap[
                                                                            'containerOnPageLoadAnimation9']!),
                                                              );
                                                            },
                                                          );
                                                        },
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  0.0,
                                                                  10.0,
                                                                  0.0),
                                                      child: Builder(
                                                        builder: (context) {
                                                          final businessPhotos =
                                                              businessProfileBusinessesRecord
                                                                  .photos
                                                                  .toList();
                                                          return GridView
                                                              .builder(
                                                            padding:
                                                                EdgeInsets.zero,
                                                            gridDelegate:
                                                                const SliverGridDelegateWithFixedCrossAxisCount(
                                                              crossAxisCount: 4,
                                                              crossAxisSpacing:
                                                                  10.0,
                                                              mainAxisSpacing:
                                                                  10.0,
                                                              childAspectRatio:
                                                                  1.0,
                                                            ),
                                                            scrollDirection:
                                                                Axis.vertical,
                                                            itemCount:
                                                                businessPhotos
                                                                    .length,
                                                            itemBuilder: (context,
                                                                businessPhotosIndex) {
                                                              final businessPhotosItem =
                                                                  businessPhotos[
                                                                      businessPhotosIndex];
                                                              return InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  logFirebaseEvent(
                                                                      'BUSINESS_PROFILE_Image_tr3em9h5_ON_TAP');
                                                                  logFirebaseEvent(
                                                                      'Image_expand_image');
                                                                  await Navigator
                                                                      .push(
                                                                    context,
                                                                    PageTransition(
                                                                      type: PageTransitionType
                                                                          .fade,
                                                                      child:
                                                                          FlutterFlowExpandedImageView(
                                                                        image: Image
                                                                            .network(
                                                                          businessPhotosItem,
                                                                          fit: BoxFit
                                                                              .contain,
                                                                        ),
                                                                        allowRotation:
                                                                            false,
                                                                        tag:
                                                                            businessPhotosItem,
                                                                        useHeroAnimation:
                                                                            true,
                                                                      ),
                                                                    ),
                                                                  );
                                                                },
                                                                child: Hero(
                                                                  tag:
                                                                      businessPhotosItem,
                                                                  transitionOnUserGestures:
                                                                      true,
                                                                  child:
                                                                      ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            5.0),
                                                                    child: Image
                                                                        .network(
                                                                      businessPhotosItem,
                                                                      width:
                                                                          100.0,
                                                                      height:
                                                                          100.0,
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    ),
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                          );
                                                        },
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(4.0),
                                                      child:
                                                          SingleChildScrollView(
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          12.0,
                                                                          12.0,
                                                                          12.0,
                                                                          8.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      ClipRRect(
                                                                        borderRadius:
                                                                            BorderRadius.circular(60.0),
                                                                        child: Image
                                                                            .network(
                                                                          valueOrDefault<
                                                                              String>(
                                                                            businessProfileBusinessesRecord.vendorLogo,
                                                                            'https://firebasestorage.googleapis.com/v0/b/buybrokoli-1.appspot.com/o/Minimalist%20Modern%20Support%20Small%20Businesses%20Instagram%20Post%20.png?alt=media&token=ca47db93-afc5-4bbe-b76b-d9bd31b891d5&_gl=1*1fuqbvh*_ga*MjExODMwMTc5MS4xNjg1NzQ2ODEw*_ga_CW55HF8NVT*MTY4NTg0MDMzMy45LjEuMTY4NTg0MTkzMC4wLjAuMA..',
                                                                          ),
                                                                          width:
                                                                              45.0,
                                                                          height:
                                                                              45.0,
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          businessProfileBusinessesRecord
                                                                              .vendorName,
                                                                          style:
                                                                              FlutterFlowTheme.of(context).titleMedium,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  if (businessProfileBusinessesRecord
                                                                          .totalRatings >
                                                                      0)
                                                                    Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .end,
                                                                      children: [
                                                                        Text(
                                                                          'Rating',
                                                                          style:
                                                                              FlutterFlowTheme.of(context).bodySmall,
                                                                        ),
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                              child: Text(
                                                                                formatNumber(
                                                                                  businessProfileBusinessesRecord.averageRating,
                                                                                  formatType: FormatType.decimal,
                                                                                  decimalType: DecimalType.periodDecimal,
                                                                                ),
                                                                                style: FlutterFlowTheme.of(context).headlineMedium,
                                                                              ),
                                                                            ),
                                                                            Icon(
                                                                              FFIcons.kbroccoli2,
                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                              size: 20.0,
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ],
                                                                    ),
                                                                ],
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          12.0,
                                                                          0.0,
                                                                          12.0,
                                                                          8.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Expanded(
                                                                    child:
                                                                        Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          12.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          AutoSizeText(
                                                                        businessProfileBusinessesRecord
                                                                            .description,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                              fontWeight: FontWeight.normal,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                            ),
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
                                            ],
                                          ),
                                        ),
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
            ));
      },
    );
  }
}
