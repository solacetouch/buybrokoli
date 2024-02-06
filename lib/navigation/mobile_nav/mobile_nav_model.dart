import '/flutter_flow/flutter_flow_util.dart';
import '/user_onboarding/user_settings/user_settings_widget.dart';
import 'mobile_nav_widget.dart' show MobileNavWidget;
import 'package:flutter/material.dart';

class MobileNavModel extends FlutterFlowModel<MobileNavWidget> {
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
