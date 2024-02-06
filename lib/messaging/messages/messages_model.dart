import '/flutter_flow/flutter_flow_util.dart';
import '/navigation/desktop_nav/desktop_nav_widget.dart';
import '/navigation/mobile_nav/mobile_nav_widget.dart';
import 'messages_widget.dart' show MessagesWidget;
import 'package:flutter/material.dart';

class MessagesModel extends FlutterFlowModel<MessagesWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for DesktopNav component.
  late DesktopNavModel desktopNavModel;
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
    mobileNavModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
