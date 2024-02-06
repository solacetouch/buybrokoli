import '/flutter_flow/flutter_flow_util.dart';
import 'event_approval_widget.dart' show EventApprovalWidget;
import 'package:flutter/material.dart';

class EventApprovalModel extends FlutterFlowModel<EventApprovalWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for eventName widget.
  FocusNode? eventNameFocusNode;
  TextEditingController? eventNameController;
  String? Function(BuildContext, String?)? eventNameControllerValidator;
  // State field(s) for eventLink widget.
  FocusNode? eventLinkFocusNode;
  TextEditingController? eventLinkController;
  String? Function(BuildContext, String?)? eventLinkControllerValidator;
  // State field(s) for eventDate widget.
  FocusNode? eventDateFocusNode;
  TextEditingController? eventDateController;
  String? Function(BuildContext, String?)? eventDateControllerValidator;
  DateTime? datePicked;
  // State field(s) for eventAddress widget.
  FocusNode? eventAddressFocusNode;
  TextEditingController? eventAddressController;
  String? Function(BuildContext, String?)? eventAddressControllerValidator;
  // State field(s) for eventDescription widget.
  FocusNode? eventDescriptionFocusNode;
  TextEditingController? eventDescriptionController;
  String? Function(BuildContext, String?)? eventDescriptionControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    eventNameFocusNode?.dispose();
    eventNameController?.dispose();

    eventLinkFocusNode?.dispose();
    eventLinkController?.dispose();

    eventDateFocusNode?.dispose();
    eventDateController?.dispose();

    eventAddressFocusNode?.dispose();
    eventAddressController?.dispose();

    eventDescriptionFocusNode?.dispose();
    eventDescriptionController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
