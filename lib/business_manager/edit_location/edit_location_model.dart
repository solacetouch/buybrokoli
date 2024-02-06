import '/flutter_flow/flutter_flow_util.dart';
import 'edit_location_widget.dart' show EditLocationWidget;
import 'package:flutter/material.dart';

class EditLocationModel extends FlutterFlowModel<EditLocationWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for LocationName widget.
  FocusNode? locationNameFocusNode;
  TextEditingController? locationNameController;
  String? Function(BuildContext, String?)? locationNameControllerValidator;
  // State field(s) for PlacePicker widget.
  var placePickerValue = const FFPlace();
  // State field(s) for hoursSwitchListTile widget.
  bool? hoursSwitchListTileValue;
  // State field(s) for MondaySwitchListTile widget.
  bool? mondaySwitchListTileValue;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for TuesdaySwitchListTile widget.
  bool? tuesdaySwitchListTileValue;
  DateTime? datePicked3;
  DateTime? datePicked4;
  // State field(s) for WednesdaySwitchListTile widget.
  bool? wednesdaySwitchListTileValue;
  DateTime? datePicked5;
  DateTime? datePicked6;
  // State field(s) for ThursdaySwitchListTile widget.
  bool? thursdaySwitchListTileValue;
  DateTime? datePicked7;
  DateTime? datePicked8;
  // State field(s) for FridaySwitchListTile widget.
  bool? fridaySwitchListTileValue;
  DateTime? datePicked9;
  DateTime? datePicked10;
  // State field(s) for SaturdaySwitchListTile widget.
  bool? saturdaySwitchListTileValue;
  DateTime? datePicked11;
  DateTime? datePicked12;
  // State field(s) for SundaySwitchListTile widget.
  bool? sundaySwitchListTileValue;
  DateTime? datePicked13;
  DateTime? datePicked14;

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
