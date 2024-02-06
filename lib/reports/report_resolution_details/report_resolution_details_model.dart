import '/flutter_flow/flutter_flow_util.dart';
import 'report_resolution_details_widget.dart'
    show ReportResolutionDetailsWidget;
import 'package:flutter/material.dart';

class ReportResolutionDetailsModel
    extends FlutterFlowModel<ReportResolutionDetailsWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for ResolutionText widget.
  FocusNode? resolutionTextFocusNode;
  TextEditingController? resolutionTextController;
  String? Function(BuildContext, String?)? resolutionTextControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    resolutionTextFocusNode?.dispose();
    resolutionTextController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
