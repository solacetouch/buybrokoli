import '/flutter_flow/flutter_flow_util.dart';
import 'edit_experience_widget.dart' show EditExperienceWidget;
import 'package:flutter/material.dart';

class EditExperienceModel extends FlutterFlowModel<EditExperienceWidget> {
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
  FocusNode? eventDateFocusNode1;
  TextEditingController? eventDateController1;
  String? Function(BuildContext, String?)? eventDateController1Validator;
  DateTime? datePicked;
  // State field(s) for eventDate widget.
  FocusNode? eventDateFocusNode2;
  TextEditingController? eventDateController2;
  String? Function(BuildContext, String?)? eventDateController2Validator;
  // State field(s) for PlacePicker widget.
  var placePickerValue = const FFPlace();
  // State field(s) for eventDescription widget.
  FocusNode? eventDescriptionFocusNode;
  TextEditingController? eventDescriptionController;
  String? Function(BuildContext, String?)? eventDescriptionControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    eventNameFocusNode?.dispose();
    eventNameController?.dispose();

    eventLinkFocusNode?.dispose();
    eventLinkController?.dispose();

    eventDateFocusNode1?.dispose();
    eventDateController1?.dispose();

    eventDateFocusNode2?.dispose();
    eventDateController2?.dispose();

    eventDescriptionFocusNode?.dispose();
    eventDescriptionController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
