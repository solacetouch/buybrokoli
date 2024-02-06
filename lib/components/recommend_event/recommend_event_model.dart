import '/flutter_flow/flutter_flow_util.dart';
import 'recommend_event_widget.dart' show RecommendEventWidget;
import 'package:flutter/material.dart';

class RecommendEventModel extends FlutterFlowModel<RecommendEventWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for eventName widget.
  FocusNode? eventNameFocusNode;
  TextEditingController? eventNameController;
  String? Function(BuildContext, String?)? eventNameControllerValidator;
  String? _eventNameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for eventOrganizer widget.
  FocusNode? eventOrganizerFocusNode;
  TextEditingController? eventOrganizerController;
  String? Function(BuildContext, String?)? eventOrganizerControllerValidator;
  // State field(s) for eventLink widget.
  FocusNode? eventLinkFocusNode;
  TextEditingController? eventLinkController;
  String? Function(BuildContext, String?)? eventLinkControllerValidator;
  String? _eventLinkControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorWebsiteRegex).hasMatch(val)) {
      return 'Invalid URL';
    }
    return null;
  }

  // State field(s) for eventDate widget.
  FocusNode? eventDateFocusNode;
  TextEditingController? eventDateController;
  String? Function(BuildContext, String?)? eventDateControllerValidator;
  String? _eventDateControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  DateTime? datePicked;
  // State field(s) for eventCost widget.
  FocusNode? eventCostFocusNode;
  TextEditingController? eventCostController;
  String? Function(BuildContext, String?)? eventCostControllerValidator;
  String? _eventCostControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for PlacePicker widget.
  var placePickerValue = const FFPlace();
  // State field(s) for eventDescription widget.
  FocusNode? eventDescriptionFocusNode;
  TextEditingController? eventDescriptionController;
  String? Function(BuildContext, String?)? eventDescriptionControllerValidator;
  String? _eventDescriptionControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    eventNameControllerValidator = _eventNameControllerValidator;
    eventLinkControllerValidator = _eventLinkControllerValidator;
    eventDateControllerValidator = _eventDateControllerValidator;
    eventCostControllerValidator = _eventCostControllerValidator;
    eventDescriptionControllerValidator = _eventDescriptionControllerValidator;
  }

  @override
  void dispose() {
    eventNameFocusNode?.dispose();
    eventNameController?.dispose();

    eventOrganizerFocusNode?.dispose();
    eventOrganizerController?.dispose();

    eventLinkFocusNode?.dispose();
    eventLinkController?.dispose();

    eventDateFocusNode?.dispose();
    eventDateController?.dispose();

    eventCostFocusNode?.dispose();
    eventCostController?.dispose();

    eventDescriptionFocusNode?.dispose();
    eventDescriptionController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
