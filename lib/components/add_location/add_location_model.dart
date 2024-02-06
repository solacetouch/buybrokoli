import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'add_location_widget.dart' show AddLocationWidget;
import 'package:flutter/material.dart';

class AddLocationModel extends FlutterFlowModel<AddLocationWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for LocationName widget.
  FocusNode? locationNameFocusNode;
  TextEditingController? locationNameController;
  String? Function(BuildContext, String?)? locationNameControllerValidator;
  // State field(s) for PlacePicker widget.
  var placePickerValue = const FFPlace();
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  PlacesRecord? newPlace;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  HoursRecord? newHours;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    locationNameFocusNode?.dispose();
    locationNameController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
