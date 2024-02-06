import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'report_page_widget.dart' show ReportPageWidget;
import 'package:flutter/material.dart';

class ReportPageModel extends FlutterFlowModel<ReportPageWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for ReasonDropDown widget.
  String? reasonDropDownValue;
  FormFieldController<String>? reasonDropDownValueController;
  // State field(s) for reportDetails widget.
  FocusNode? reportDetailsFocusNode;
  TextEditingController? reportDetailsController;
  String? Function(BuildContext, String?)? reportDetailsControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    reportDetailsFocusNode?.dispose();
    reportDetailsController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
