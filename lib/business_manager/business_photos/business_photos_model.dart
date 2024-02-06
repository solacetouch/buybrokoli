import '/flutter_flow/flutter_flow_util.dart';
import '/navigation/business_manager_nav/business_manager_nav_widget.dart';
import 'business_photos_widget.dart' show BusinessPhotosWidget;
import 'package:flutter/material.dart';

class BusinessPhotosModel extends FlutterFlowModel<BusinessPhotosWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for BusinessManagerNav component.
  late BusinessManagerNavModel businessManagerNavModel1;
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  bool isDataUploading3 = false;
  List<FFUploadedFile> uploadedLocalFiles3 = [];
  List<String> uploadedFileUrls3 = [];

  // Model for BusinessManagerNav component.
  late BusinessManagerNavModel businessManagerNavModel2;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    businessManagerNavModel1 =
        createModel(context, () => BusinessManagerNavModel());
    businessManagerNavModel2 =
        createModel(context, () => BusinessManagerNavModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    businessManagerNavModel1.dispose();
    businessManagerNavModel2.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
