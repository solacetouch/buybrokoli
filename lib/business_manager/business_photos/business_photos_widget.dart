import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/navigation/business_manager_nav/business_manager_nav_widget.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'business_photos_model.dart';
export 'business_photos_model.dart';

class BusinessPhotosWidget extends StatefulWidget {
  const BusinessPhotosWidget({
    super.key,
    required this.business,
    String? page,
  }) : page = page ?? 'events';

  final DocumentReference? business;
  final String page;

  @override
  State<BusinessPhotosWidget> createState() => _BusinessPhotosWidgetState();
}

class _BusinessPhotosWidgetState extends State<BusinessPhotosWidget> {
  late BusinessPhotosModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BusinessPhotosModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'BusinessPhotos'});
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
        final businessPhotosBusinessesRecord = snapshot.data!;
        return Title(
            title: 'BusinessPhotos',
            color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
            child: GestureDetector(
              onTap: () => _model.unfocusNode.canRequestFocus
                  ? FocusScope.of(context).requestFocus(_model.unfocusNode)
                  : FocusScope.of(context).unfocus(),
              child: Scaffold(
                key: scaffoldKey,
                backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
                drawer: Drawer(
                  elevation: 16.0,
                  child: WebViewAware(
                    child: wrapWithModel(
                      model: _model.businessManagerNavModel2,
                      updateCallback: () => setState(() {}),
                      child: BusinessManagerNavWidget(
                        page: 'Photos',
                        business: widget.business,
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
                      icon: const Icon(
                        Icons.menu,
                        color: Colors.white,
                        size: 30.0,
                      ),
                      onPressed: () async {
                        logFirebaseEvent(
                            'BUSINESS_PHOTOS_PAGE_menu_ICN_ON_TAP');
                        logFirebaseEvent('IconButton_drawer');
                        scaffoldKey.currentState!.openDrawer();
                      },
                    ),
                  ),
                  title: Text(
                    'Photos',
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
                body: Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (responsiveVisibility(
                      context: context,
                      phone: false,
                      tablet: false,
                    ))
                      Container(
                        width: 270.0,
                        constraints: BoxConstraints(
                          maxHeight: MediaQuery.sizeOf(context).height,
                        ),
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: wrapWithModel(
                          model: _model.businessManagerNavModel1,
                          updateCallback: () => setState(() {}),
                          child: BusinessManagerNavWidget(
                            page: 'Photos',
                            business: widget.business,
                          ),
                        ),
                      ),
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            8.0, 0.0, 8.0, 0.0),
                                        child: Container(
                                          width: double.infinity,
                                          constraints: const BoxConstraints(
                                            maxWidth: 1270.0,
                                          ),
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .lineColor,
                                              width: 1.0,
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(16.0),
                                            child: SingleChildScrollView(
                                              primary: false,
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 8.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      12.0,
                                                                      0.0),
                                                          child: Text(
                                                            'Logo',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .headlineMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineMediumFamily,
                                                                  fontSize:
                                                                      16.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .headlineMediumFamily),
                                                                ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        width: () {
                                                          if (MediaQuery.sizeOf(
                                                                      context)
                                                                  .width <
                                                              kBreakpointSmall) {
                                                            return 100.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointMedium) {
                                                            return 200.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointLarge) {
                                                            return 200.0;
                                                          } else {
                                                            return 200.0;
                                                          }
                                                        }(),
                                                        height: () {
                                                          if (MediaQuery.sizeOf(
                                                                      context)
                                                                  .width <
                                                              kBreakpointSmall) {
                                                            return 100.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointMedium) {
                                                            return 200.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointLarge) {
                                                            return 200.0;
                                                          } else {
                                                            return 200.0;
                                                          }
                                                        }(),
                                                        decoration:
                                                            const BoxDecoration(),
                                                        child: Stack(
                                                          alignment:
                                                              const AlignmentDirectional(
                                                                  0.0, -1.0),
                                                          children: [
                                                            InkWell(
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
                                                                    'BUSINESS_PHOTOS_Image_bid88z29_ON_TAP');
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
                                                                        businessPhotosBusinessesRecord
                                                                            .vendorLogo,
                                                                        fit: BoxFit
                                                                            .contain,
                                                                      ),
                                                                      allowRotation:
                                                                          false,
                                                                      tag: businessPhotosBusinessesRecord
                                                                          .vendorLogo,
                                                                      useHeroAnimation:
                                                                          true,
                                                                    ),
                                                                  ),
                                                                );
                                                              },
                                                              child: Hero(
                                                                tag: businessPhotosBusinessesRecord
                                                                    .vendorLogo,
                                                                transitionOnUserGestures:
                                                                    true,
                                                                child:
                                                                    ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              120.0),
                                                                  child: Image
                                                                      .network(
                                                                    businessPhotosBusinessesRecord
                                                                        .vendorLogo,
                                                                    width: () {
                                                                      if (MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointSmall) {
                                                                        return 100.0;
                                                                      } else if (MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointMedium) {
                                                                        return 200.0;
                                                                      } else if (MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointLarge) {
                                                                        return 200.0;
                                                                      } else {
                                                                        return 200.0;
                                                                      }
                                                                    }(),
                                                                    height: () {
                                                                      if (MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointSmall) {
                                                                        return 100.0;
                                                                      } else if (MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointMedium) {
                                                                        return 200.0;
                                                                      } else if (MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointLarge) {
                                                                        return 200.0;
                                                                      } else {
                                                                        return 200.0;
                                                                      }
                                                                    }(),
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
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
                                                              children: [
                                                                FlutterFlowIconButton(
                                                                  borderColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                  borderRadius:
                                                                      20.0,
                                                                  borderWidth:
                                                                      1.0,
                                                                  buttonSize:
                                                                      40.0,
                                                                  fillColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  icon: Icon(
                                                                    Icons.edit,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                    size: 24.0,
                                                                  ),
                                                                  onPressed:
                                                                      () async {
                                                                    logFirebaseEvent(
                                                                        'BUSINESS_PHOTOS_PAGE_edit_ICN_ON_TAP');
                                                                    logFirebaseEvent(
                                                                        'IconButton_upload_media_to_firebase');
                                                                    final selectedMedia =
                                                                        await selectMedia(
                                                                      maxWidth:
                                                                          1080.00,
                                                                      imageQuality:
                                                                          80,
                                                                      mediaSource:
                                                                          MediaSource
                                                                              .photoGallery,
                                                                      multiImage:
                                                                          false,
                                                                    );
                                                                    if (selectedMedia !=
                                                                            null &&
                                                                        selectedMedia.every((m) => validateFileFormat(
                                                                            m.storagePath,
                                                                            context))) {
                                                                      setState(() =>
                                                                          _model.isDataUploading1 =
                                                                              true);
                                                                      var selectedUploadedFiles =
                                                                          <FFUploadedFile>[];

                                                                      var downloadUrls =
                                                                          <String>[];
                                                                      try {
                                                                        selectedUploadedFiles = selectedMedia
                                                                            .map((m) => FFUploadedFile(
                                                                                  name: m.storagePath.split('/').last,
                                                                                  bytes: m.bytes,
                                                                                  height: m.dimensions?.height,
                                                                                  width: m.dimensions?.width,
                                                                                  blurHash: m.blurHash,
                                                                                ))
                                                                            .toList();

                                                                        downloadUrls = (await Future
                                                                                .wait(
                                                                          selectedMedia
                                                                              .map(
                                                                            (m) async =>
                                                                                await uploadData(m.storagePath, m.bytes),
                                                                          ),
                                                                        ))
                                                                            .where((u) =>
                                                                                u !=
                                                                                null)
                                                                            .map((u) =>
                                                                                u!)
                                                                            .toList();
                                                                      } finally {
                                                                        _model.isDataUploading1 =
                                                                            false;
                                                                      }
                                                                      if (selectedUploadedFiles.length ==
                                                                              selectedMedia
                                                                                  .length &&
                                                                          downloadUrls.length ==
                                                                              selectedMedia.length) {
                                                                        setState(
                                                                            () {
                                                                          _model.uploadedLocalFile1 =
                                                                              selectedUploadedFiles.first;
                                                                          _model.uploadedFileUrl1 =
                                                                              downloadUrls.first;
                                                                        });
                                                                      } else {
                                                                        setState(
                                                                            () {});
                                                                        return;
                                                                      }
                                                                    }

                                                                    logFirebaseEvent(
                                                                        'IconButton_backend_call');

                                                                    await widget
                                                                        .business!
                                                                        .update(
                                                                            createBusinessesRecordData(
                                                                      vendorLogo:
                                                                          _model
                                                                              .uploadedFileUrl1,
                                                                    ));
                                                                  },
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            8.0, 0.0, 8.0, 0.0),
                                        child: Container(
                                          width: double.infinity,
                                          constraints: const BoxConstraints(
                                            maxWidth: 1270.0,
                                          ),
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .lineColor,
                                              width: 1.0,
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(16.0),
                                            child: SingleChildScrollView(
                                              primary: false,
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: [
                                                      Expanded(
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
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          8.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Text(
                                                                    'Cover Photo',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .headlineMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).headlineMediumFamily,
                                                                          fontSize:
                                                                              16.0,
                                                                          useGoogleFonts:
                                                                              GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).headlineMediumFamily),
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Expanded(
                                                                  child: Stack(
                                                                    alignment:
                                                                        const AlignmentDirectional(
                                                                            0.0,
                                                                            -1.0),
                                                                    children: [
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            8.0,
                                                                            0.0),
                                                                        child:
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
                                                                            logFirebaseEvent('BUSINESS_PHOTOS_Image_i6ouwsg3_ON_TAP');
                                                                            logFirebaseEvent('Image_expand_image');
                                                                            await Navigator.push(
                                                                              context,
                                                                              PageTransition(
                                                                                type: PageTransitionType.fade,
                                                                                child: FlutterFlowExpandedImageView(
                                                                                  image: Image.network(
                                                                                    businessPhotosBusinessesRecord.vendorLogo,
                                                                                    fit: BoxFit.contain,
                                                                                  ),
                                                                                  allowRotation: false,
                                                                                  tag: businessPhotosBusinessesRecord.vendorLogo,
                                                                                  useHeroAnimation: true,
                                                                                ),
                                                                              ),
                                                                            );
                                                                          },
                                                                          child:
                                                                              Hero(
                                                                            tag:
                                                                                businessPhotosBusinessesRecord.vendorLogo,
                                                                            transitionOnUserGestures:
                                                                                true,
                                                                            child:
                                                                                ClipRRect(
                                                                              borderRadius: const BorderRadius.only(
                                                                                bottomLeft: Radius.circular(0.0),
                                                                                bottomRight: Radius.circular(0.0),
                                                                                topLeft: Radius.circular(0.0),
                                                                                topRight: Radius.circular(0.0),
                                                                              ),
                                                                              child: Image.network(
                                                                                businessPhotosBusinessesRecord.vendorLogo,
                                                                                width: double.infinity,
                                                                                height: () {
                                                                                  if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                                                                                    return 100.0;
                                                                                  } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
                                                                                    return 200.0;
                                                                                  } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
                                                                                    return 200.0;
                                                                                  } else {
                                                                                    return 200.0;
                                                                                  }
                                                                                }(),
                                                                                fit: BoxFit.cover,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.end,
                                                                        children: [
                                                                          FlutterFlowIconButton(
                                                                            borderColor:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            borderRadius:
                                                                                20.0,
                                                                            borderWidth:
                                                                                1.0,
                                                                            buttonSize:
                                                                                40.0,
                                                                            fillColor:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            icon:
                                                                                Icon(
                                                                              Icons.edit,
                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                              size: 24.0,
                                                                            ),
                                                                            onPressed:
                                                                                () async {
                                                                              logFirebaseEvent('BUSINESS_PHOTOS_PAGE_edit_ICN_ON_TAP');
                                                                              logFirebaseEvent('IconButton_upload_media_to_firebase');
                                                                              final selectedMedia = await selectMedia(
                                                                                maxWidth: 1080.00,
                                                                                imageQuality: 80,
                                                                                mediaSource: MediaSource.photoGallery,
                                                                                multiImage: false,
                                                                              );
                                                                              if (selectedMedia != null && selectedMedia.every((m) => validateFileFormat(m.storagePath, context))) {
                                                                                setState(() => _model.isDataUploading2 = true);
                                                                                var selectedUploadedFiles = <FFUploadedFile>[];

                                                                                var downloadUrls = <String>[];
                                                                                try {
                                                                                  selectedUploadedFiles = selectedMedia
                                                                                      .map((m) => FFUploadedFile(
                                                                                            name: m.storagePath.split('/').last,
                                                                                            bytes: m.bytes,
                                                                                            height: m.dimensions?.height,
                                                                                            width: m.dimensions?.width,
                                                                                            blurHash: m.blurHash,
                                                                                          ))
                                                                                      .toList();

                                                                                  downloadUrls = (await Future.wait(
                                                                                    selectedMedia.map(
                                                                                      (m) async => await uploadData(m.storagePath, m.bytes),
                                                                                    ),
                                                                                  ))
                                                                                      .where((u) => u != null)
                                                                                      .map((u) => u!)
                                                                                      .toList();
                                                                                } finally {
                                                                                  _model.isDataUploading2 = false;
                                                                                }
                                                                                if (selectedUploadedFiles.length == selectedMedia.length && downloadUrls.length == selectedMedia.length) {
                                                                                  setState(() {
                                                                                    _model.uploadedLocalFile2 = selectedUploadedFiles.first;
                                                                                    _model.uploadedFileUrl2 = downloadUrls.first;
                                                                                  });
                                                                                } else {
                                                                                  setState(() {});
                                                                                  return;
                                                                                }
                                                                              }

                                                                              logFirebaseEvent('IconButton_backend_call');

                                                                              await widget.business!.update(createBusinessesRecordData(
                                                                                vendorLogo: _model.uploadedFileUrl2,
                                                                              ));
                                                                            },
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 8.0, 16.0, 26.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            8.0, 0.0, 8.0, 0.0),
                                        child: Container(
                                          width: double.infinity,
                                          constraints: const BoxConstraints(
                                            maxWidth: 1270.0,
                                          ),
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .lineColor,
                                              width: 1.0,
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(16.0),
                                            child: SingleChildScrollView(
                                              primary: false,
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Expanded(
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          12.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    'All Photos',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .headlineMedium,
                                                                  ),
                                                                ),
                                                                FFButtonWidget(
                                                                  onPressed:
                                                                      () async {
                                                                    logFirebaseEvent(
                                                                        'BUSINESS_PHOTOS_PAGE_UPLOAD_BTN_ON_TAP');
                                                                    logFirebaseEvent(
                                                                        'Button_upload_media_to_firebase');
                                                                    final selectedMedia =
                                                                        await selectMedia(
                                                                      maxWidth:
                                                                          1080.00,
                                                                      imageQuality:
                                                                          80,
                                                                      mediaSource:
                                                                          MediaSource
                                                                              .photoGallery,
                                                                      multiImage:
                                                                          true,
                                                                    );
                                                                    if (selectedMedia !=
                                                                            null &&
                                                                        selectedMedia.every((m) => validateFileFormat(
                                                                            m.storagePath,
                                                                            context))) {
                                                                      setState(() =>
                                                                          _model.isDataUploading3 =
                                                                              true);
                                                                      var selectedUploadedFiles =
                                                                          <FFUploadedFile>[];

                                                                      var downloadUrls =
                                                                          <String>[];
                                                                      try {
                                                                        selectedUploadedFiles = selectedMedia
                                                                            .map((m) => FFUploadedFile(
                                                                                  name: m.storagePath.split('/').last,
                                                                                  bytes: m.bytes,
                                                                                  height: m.dimensions?.height,
                                                                                  width: m.dimensions?.width,
                                                                                  blurHash: m.blurHash,
                                                                                ))
                                                                            .toList();

                                                                        downloadUrls = (await Future
                                                                                .wait(
                                                                          selectedMedia
                                                                              .map(
                                                                            (m) async =>
                                                                                await uploadData(m.storagePath, m.bytes),
                                                                          ),
                                                                        ))
                                                                            .where((u) =>
                                                                                u !=
                                                                                null)
                                                                            .map((u) =>
                                                                                u!)
                                                                            .toList();
                                                                      } finally {
                                                                        _model.isDataUploading3 =
                                                                            false;
                                                                      }
                                                                      if (selectedUploadedFiles.length ==
                                                                              selectedMedia
                                                                                  .length &&
                                                                          downloadUrls.length ==
                                                                              selectedMedia.length) {
                                                                        setState(
                                                                            () {
                                                                          _model.uploadedLocalFiles3 =
                                                                              selectedUploadedFiles;
                                                                          _model.uploadedFileUrls3 =
                                                                              downloadUrls;
                                                                        });
                                                                      } else {
                                                                        setState(
                                                                            () {});
                                                                        return;
                                                                      }
                                                                    }

                                                                    while (FFAppState()
                                                                            .imageUploadCount <
                                                                        _model
                                                                            .uploadedFileUrls3
                                                                            .length) {
                                                                      logFirebaseEvent(
                                                                          'Button_backend_call');

                                                                      await widget
                                                                          .business!
                                                                          .update({
                                                                        ...mapToFirestore(
                                                                          {
                                                                            'photos':
                                                                                FieldValue.arrayUnion([
                                                                              _model.uploadedFileUrls3[FFAppState().imageUploadCount]
                                                                            ]),
                                                                          },
                                                                        ),
                                                                      });
                                                                      logFirebaseEvent(
                                                                          'Button_update_app_state');
                                                                      setState(
                                                                          () {
                                                                        FFAppState()
                                                                            .imageUploadCount = FFAppState()
                                                                                .imageUploadCount +
                                                                            1;
                                                                      });
                                                                    }
                                                                  },
                                                                  text:
                                                                      'Upload',
                                                                  options:
                                                                      FFButtonOptions(
                                                                    height:
                                                                        40.0,
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            24.0,
                                                                            0.0,
                                                                            24.0,
                                                                            0.0),
                                                                    iconPadding:
                                                                        const EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    textStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleSmall
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).titleSmallFamily,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiary,
                                                                          useGoogleFonts:
                                                                              GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).titleSmallFamily),
                                                                        ),
                                                                    elevation:
                                                                        3.0,
                                                                    borderSide:
                                                                        const BorderSide(
                                                                      color: Colors
                                                                          .transparent,
                                                                      width:
                                                                          1.0,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          4.0,
                                                                          12.0,
                                                                          0.0),
                                                              child: Text(
                                                                'Manage experiences that show on your profile',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(16.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Expanded(
                                                          child: Container(
                                                            width: 100.0,
                                                            height: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .height *
                                                                1.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                            ),
                                                            child: Builder(
                                                              builder:
                                                                  (context) {
                                                                final businessPhotos =
                                                                    businessPhotosBusinessesRecord
                                                                        .photos
                                                                        .toList();
                                                                return GridView
                                                                    .builder(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .zero,
                                                                  gridDelegate:
                                                                      SliverGridDelegateWithFixedCrossAxisCount(
                                                                    crossAxisCount:
                                                                        () {
                                                                      if (MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointSmall) {
                                                                        return 2;
                                                                      } else if (MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointMedium) {
                                                                        return 3;
                                                                      } else if (MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          kBreakpointLarge) {
                                                                        return 5;
                                                                      } else {
                                                                        return 5;
                                                                      }
                                                                    }(),
                                                                    crossAxisSpacing:
                                                                        10.0,
                                                                    mainAxisSpacing:
                                                                        10.0,
                                                                    childAspectRatio:
                                                                        1.0,
                                                                  ),
                                                                  primary:
                                                                      false,
                                                                  scrollDirection:
                                                                      Axis.vertical,
                                                                  itemCount:
                                                                      businessPhotos
                                                                          .length,
                                                                  itemBuilder:
                                                                      (context,
                                                                          businessPhotosIndex) {
                                                                    final businessPhotosItem =
                                                                        businessPhotos[
                                                                            businessPhotosIndex];
                                                                    return Stack(
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              1.0,
                                                                              -1.0),
                                                                      children: [
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
                                                                            logFirebaseEvent('BUSINESS_PHOTOS_Image_v1haqhpt_ON_TAP');
                                                                            logFirebaseEvent('Image_expand_image');
                                                                            await Navigator.push(
                                                                              context,
                                                                              PageTransition(
                                                                                type: PageTransitionType.fade,
                                                                                child: FlutterFlowExpandedImageView(
                                                                                  image: Image.network(
                                                                                    businessPhotosItem,
                                                                                    fit: BoxFit.contain,
                                                                                  ),
                                                                                  allowRotation: false,
                                                                                  tag: businessPhotosItem,
                                                                                  useHeroAnimation: true,
                                                                                ),
                                                                              ),
                                                                            );
                                                                          },
                                                                          child:
                                                                              Hero(
                                                                            tag:
                                                                                businessPhotosItem,
                                                                            transitionOnUserGestures:
                                                                                true,
                                                                            child:
                                                                                ClipRRect(
                                                                              borderRadius: BorderRadius.circular(5.0),
                                                                              child: Image.network(
                                                                                businessPhotosItem,
                                                                                width: double.infinity,
                                                                                height: double.infinity,
                                                                                fit: BoxFit.cover,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding:
                                                                              const EdgeInsets.all(12.0),
                                                                          child:
                                                                              FlutterFlowIconButton(
                                                                            borderColor:
                                                                                Colors.transparent,
                                                                            borderRadius:
                                                                                8.0,
                                                                            borderWidth:
                                                                                1.0,
                                                                            buttonSize:
                                                                                48.0,
                                                                            fillColor:
                                                                                FlutterFlowTheme.of(context).error,
                                                                            icon:
                                                                                Icon(
                                                                              Icons.delete,
                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                              size: 24.0,
                                                                            ),
                                                                            onPressed:
                                                                                () async {
                                                                              logFirebaseEvent('BUSINESS_PHOTOS_PAGE_delete_ICN_ON_TAP');
                                                                              logFirebaseEvent('IconButton_alert_dialog');
                                                                              var confirmDialogResponse = await showDialog<bool>(
                                                                                    context: context,
                                                                                    builder: (alertDialogContext) {
                                                                                      return WebViewAware(
                                                                                        child: AlertDialog(
                                                                                          title: const Text('Delete Photo?'),
                                                                                          content: const Text('Are you sure you want to delete this photo? This cannot be undone.'),
                                                                                          actions: [
                                                                                            TextButton(
                                                                                              onPressed: () => Navigator.pop(alertDialogContext, false),
                                                                                              child: const Text('Cancel'),
                                                                                            ),
                                                                                            TextButton(
                                                                                              onPressed: () => Navigator.pop(alertDialogContext, true),
                                                                                              child: const Text('Confirm'),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      );
                                                                                    },
                                                                                  ) ??
                                                                                  false;
                                                                              if (confirmDialogResponse) {
                                                                                logFirebaseEvent('IconButton_backend_call');

                                                                                await widget.business!.update({
                                                                                  ...mapToFirestore(
                                                                                    {
                                                                                      'photos': FieldValue.arrayRemove([
                                                                                        businessPhotosItem
                                                                                      ]),
                                                                                    },
                                                                                  ),
                                                                                });
                                                                                logFirebaseEvent('IconButton_delete_data');
                                                                                await FirebaseStorage.instance.refFromURL(businessPhotosItem).delete();
                                                                              }
                                                                            },
                                                                          ),
                                                                        ),
                                                                      ],
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
                                                ],
                                              ),
                                            ),
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
                  ],
                ),
              ),
            ));
      },
    );
  }
}
