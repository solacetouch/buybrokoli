import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/navigation/desktop_nav/desktop_nav_widget.dart';
import '/navigation/mobile_nav/mobile_nav_widget.dart';
import 'brands_widget.dart' show BrandsWidget;
import 'package:flutter/material.dart';

class BrandsModel extends FlutterFlowModel<BrandsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for DesktopNav component.
  late DesktopNavModel desktopNavModel;
  // State field(s) for SearchTextField widget.
  FocusNode? searchTextFieldFocusNode;
  TextEditingController? searchTextFieldController;
  String? Function(BuildContext, String?)? searchTextFieldControllerValidator;
  // Algolia Search Results from action on SearchTextField
  List<BusinessesRecord>? algoliaSearchResults = [];
  // Stores action output result for [Backend Call - API (Update Contact)] action in Column widget.
  ApiCallResponse? apiResultt2t;
  // Stores action output result for [Backend Call - API (Update Contact)] action in Column widget.
  ApiCallResponse? apiResultt2t23;
  // Model for MobileNav component.
  late MobileNavModel mobileNavModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    desktopNavModel = createModel(context, () => DesktopNavModel());
    mobileNavModel = createModel(context, () => MobileNavModel());
  }

  @override
  void dispose() {
    desktopNavModel.dispose();
    searchTextFieldFocusNode?.dispose();
    searchTextFieldController?.dispose();

    mobileNavModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
