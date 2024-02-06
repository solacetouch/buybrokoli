import '/flutter_flow/flutter_flow_util.dart';
import 'add_event_widget.dart' show AddEventWidget;
import 'package:flutter/material.dart';

class AddEventModel extends FlutterFlowModel<AddEventWidget> {
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
  // State field(s) for eventDescription widget.
  FocusNode? eventDescriptionFocusNode;
  TextEditingController? eventDescriptionController;
  String? Function(BuildContext, String?)? eventDescriptionControllerValidator;
  // State field(s) for PlacePicker widget.
  var placePickerValue = const FFPlace();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

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

    eventDescriptionFocusNode?.dispose();
    eventDescriptionController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
