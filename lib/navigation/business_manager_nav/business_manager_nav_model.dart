import '/flutter_flow/flutter_flow_util.dart';
import '/user_onboarding/user_settings/user_settings_widget.dart';
import 'business_manager_nav_widget.dart' show BusinessManagerNavWidget;
import 'package:flutter/material.dart';

class BusinessManagerNavModel
    extends FlutterFlowModel<BusinessManagerNavWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for userSettings component.
  late UserSettingsModel userSettingsModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    userSettingsModel = createModel(context, () => UserSettingsModel());
  }

  @override
  void dispose() {
    userSettingsModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
