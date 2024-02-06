import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'register_business_widget.dart' show RegisterBusinessWidget;
import 'package:flutter/material.dart';

class RegisterBusinessModel extends FlutterFlowModel<RegisterBusinessWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for FirstName widget.
  FocusNode? firstNameFocusNode;
  TextEditingController? firstNameController;
  String? Function(BuildContext, String?)? firstNameControllerValidator;
  String? _firstNameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for LastName widget.
  FocusNode? lastNameFocusNode;
  TextEditingController? lastNameController;
  String? Function(BuildContext, String?)? lastNameControllerValidator;
  String? _lastNameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for Email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailControllerValidator;
  String? _emailControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Invalid Email';
    }
    return null;
  }

  // State field(s) for Phone widget.
  FocusNode? phoneFocusNode;
  TextEditingController? phoneController;
  String? Function(BuildContext, String?)? phoneControllerValidator;
  String? _phoneControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 10) {
      return 'Requires at least 10 characters.';
    }

    return null;
  }

  // State field(s) for BusinessName widget.
  FocusNode? businessNameFocusNode;
  TextEditingController? businessNameController;
  String? Function(BuildContext, String?)? businessNameControllerValidator;
  String? _businessNameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for PlacePicker widget.
  var placePickerValue = const FFPlace();
  // State field(s) for BusinessType widget.
  String? businessTypeValue;
  FormFieldController<String>? businessTypeValueController;
  // State field(s) for CategoryType widget.
  String? categoryTypeValue;
  FormFieldController<String>? categoryTypeValueController;
  // State field(s) for ProductCheckboxGroup widget.
  List<String>? productCheckboxGroupValues;
  FormFieldController<List<String>>? productCheckboxGroupValueController;
  // State field(s) for Website widget.
  FocusNode? websiteFocusNode;
  TextEditingController? websiteController;
  String? Function(BuildContext, String?)? websiteControllerValidator;
  // State field(s) for LicenseType widget.
  String? licenseTypeValue;
  FormFieldController<String>? licenseTypeValueController;
  DateTime? datePicked;
  // State field(s) for LicenseNumber widget.
  FocusNode? licenseNumberFocusNode;
  TextEditingController? licenseNumberController;
  String? Function(BuildContext, String?)? licenseNumberControllerValidator;
  // State field(s) for SwitchListSocial widget.
  bool? switchListSocialValue;
  // State field(s) for IGTextField widget.
  FocusNode? iGTextFieldFocusNode;
  TextEditingController? iGTextFieldController;
  String? Function(BuildContext, String?)? iGTextFieldControllerValidator;
  // State field(s) for FBTextField widget.
  FocusNode? fBTextFieldFocusNode;
  TextEditingController? fBTextFieldController;
  String? Function(BuildContext, String?)? fBTextFieldControllerValidator;
  // State field(s) for TwitterTextField widget.
  FocusNode? twitterTextFieldFocusNode;
  TextEditingController? twitterTextFieldController;
  String? Function(BuildContext, String?)? twitterTextFieldControllerValidator;
  // State field(s) for TiktokTextField widget.
  FocusNode? tiktokTextFieldFocusNode;
  TextEditingController? tiktokTextFieldController;
  String? Function(BuildContext, String?)? tiktokTextFieldControllerValidator;
  // State field(s) for LinkedINTextField widget.
  FocusNode? linkedINTextFieldFocusNode;
  TextEditingController? linkedINTextFieldController;
  String? Function(BuildContext, String?)? linkedINTextFieldControllerValidator;
  // State field(s) for SwitchListPOS widget.
  bool? switchListPOSValue;
  // State field(s) for POSSystem widget.
  FocusNode? pOSSystemFocusNode;
  TextEditingController? pOSSystemController;
  String? Function(BuildContext, String?)? pOSSystemControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  VendorSubmissionsRecord? newVendorSubmission;
  // Stores action output result for [Backend Call - API (Create Contact)] action in Button widget.
  ApiCallResponse? apiResult5v8;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    firstNameControllerValidator = _firstNameControllerValidator;
    lastNameControllerValidator = _lastNameControllerValidator;
    emailControllerValidator = _emailControllerValidator;
    phoneControllerValidator = _phoneControllerValidator;
    businessNameControllerValidator = _businessNameControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    firstNameFocusNode?.dispose();
    firstNameController?.dispose();

    lastNameFocusNode?.dispose();
    lastNameController?.dispose();

    emailFocusNode?.dispose();
    emailController?.dispose();

    phoneFocusNode?.dispose();
    phoneController?.dispose();

    businessNameFocusNode?.dispose();
    businessNameController?.dispose();

    websiteFocusNode?.dispose();
    websiteController?.dispose();

    licenseNumberFocusNode?.dispose();
    licenseNumberController?.dispose();

    iGTextFieldFocusNode?.dispose();
    iGTextFieldController?.dispose();

    fBTextFieldFocusNode?.dispose();
    fBTextFieldController?.dispose();

    twitterTextFieldFocusNode?.dispose();
    twitterTextFieldController?.dispose();

    tiktokTextFieldFocusNode?.dispose();
    tiktokTextFieldController?.dispose();

    linkedINTextFieldFocusNode?.dispose();
    linkedINTextFieldController?.dispose();

    pOSSystemFocusNode?.dispose();
    pOSSystemController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
