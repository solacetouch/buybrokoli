import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/navigation/business_manager_nav/business_manager_nav_widget.dart';
import 'business_manager_widget.dart' show BusinessManagerWidget;
import 'package:flutter/material.dart';

class BusinessManagerModel extends FlutterFlowModel<BusinessManagerWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  String currentPageLink = '';
  // Stores action output result for [Backend Call - API (Eventbrite Partner Authorization)] action in BusinessManager widget.
  ApiCallResponse? apiResult1d2;
  // Model for BusinessManagerNav component.
  late BusinessManagerNavModel businessManagerNavModel1;
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
