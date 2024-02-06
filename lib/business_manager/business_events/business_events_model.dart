import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/navigation/business_manager_nav/business_manager_nav_widget.dart';
import 'business_events_widget.dart' show BusinessEventsWidget;
import 'package:flutter/material.dart';

class BusinessEventsModel extends FlutterFlowModel<BusinessEventsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for BusinessManagerNav component.
  late BusinessManagerNavModel businessManagerNavModel1;
  // Stores action output result for [Backend Call - API (Get Event)] action in Container widget.
  ApiCallResponse? apiResultplo;
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
