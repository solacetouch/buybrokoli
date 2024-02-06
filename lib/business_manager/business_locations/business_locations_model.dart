import '/flutter_flow/flutter_flow_util.dart';
import '/navigation/business_manager_nav/business_manager_nav_widget.dart';
import 'business_locations_widget.dart' show BusinessLocationsWidget;
import 'package:flutter/material.dart';

class BusinessLocationsModel extends FlutterFlowModel<BusinessLocationsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
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
