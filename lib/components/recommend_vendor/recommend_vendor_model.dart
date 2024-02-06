import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'recommend_vendor_widget.dart' show RecommendVendorWidget;
import 'package:flutter/material.dart';

class RecommendVendorModel extends FlutterFlowModel<RecommendVendorWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for VendorName widget.
  FocusNode? vendorNameFocusNode;
  TextEditingController? vendorNameController;
  String? Function(BuildContext, String?)? vendorNameControllerValidator;
  String? _vendorNameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for VendorEmail widget.
  FocusNode? vendorEmailFocusNode;
  TextEditingController? vendorEmailController;
  String? Function(BuildContext, String?)? vendorEmailControllerValidator;
  // State field(s) for VendorPhone widget.
  FocusNode? vendorPhoneFocusNode;
  TextEditingController? vendorPhoneController;
  String? Function(BuildContext, String?)? vendorPhoneControllerValidator;
  // State field(s) for PlacePicker widget.
  var placePickerValue = const FFPlace();
  // State field(s) for CategoryDropDown widget.
  String? categoryDropDownValue;
  FormFieldController<String>? categoryDropDownValueController;
  String currentPageLink = '';
  // Stores action output result for [Backend Call - API (Create Contact)] action in Button widget.
  ApiCallResponse? apiResult7ww;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    vendorNameControllerValidator = _vendorNameControllerValidator;
  }

  @override
  void dispose() {
    vendorNameFocusNode?.dispose();
    vendorNameController?.dispose();

    vendorEmailFocusNode?.dispose();
    vendorEmailController?.dispose();

    vendorPhoneFocusNode?.dispose();
    vendorPhoneController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
