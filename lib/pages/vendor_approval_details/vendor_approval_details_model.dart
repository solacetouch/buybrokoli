import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'vendor_approval_details_widget.dart' show VendorApprovalDetailsWidget;
import 'package:flutter/material.dart';

class VendorApprovalDetailsModel
    extends FlutterFlowModel<VendorApprovalDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for FirstName widget.
  FocusNode? firstNameFocusNode;
  TextEditingController? firstNameController;
  String? Function(BuildContext, String?)? firstNameControllerValidator;
  // State field(s) for LastName widget.
  FocusNode? lastNameFocusNode;
  TextEditingController? lastNameController;
  String? Function(BuildContext, String?)? lastNameControllerValidator;
  // State field(s) for Email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailControllerValidator;
  // State field(s) for Phone widget.
  FocusNode? phoneFocusNode;
  TextEditingController? phoneController;
  String? Function(BuildContext, String?)? phoneControllerValidator;
  // State field(s) for BusinessName widget.
  FocusNode? businessNameFocusNode;
  TextEditingController? businessNameController;
  String? Function(BuildContext, String?)? businessNameControllerValidator;
  // State field(s) for BusinessAddress widget.
  FocusNode? businessAddressFocusNode;
  TextEditingController? businessAddressController;
  String? Function(BuildContext, String?)? businessAddressControllerValidator;
  // State field(s) for BusinessType widget.
  FocusNode? businessTypeFocusNode;
  TextEditingController? businessTypeController;
  String? Function(BuildContext, String?)? businessTypeControllerValidator;
  // State field(s) for BusinessCategory widget.
  FocusNode? businessCategoryFocusNode;
  TextEditingController? businessCategoryController;
  String? Function(BuildContext, String?)? businessCategoryControllerValidator;
  // State field(s) for CheckboxGroup widget.
  List<String>? checkboxGroupValues;
  FormFieldController<List<String>>? checkboxGroupValueController;
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
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController11;
  String? Function(BuildContext, String?)? textController11Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController12;
  String? Function(BuildContext, String?)? textController12Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController13;
  String? Function(BuildContext, String?)? textController13Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController14;
  String? Function(BuildContext, String?)? textController14Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode5;
  TextEditingController? textController15;
  String? Function(BuildContext, String?)? textController15Validator;
  // State field(s) for SwitchListPOS widget.
  bool? switchListPOSValue;
  // State field(s) for POSSystem widget.
  FocusNode? pOSSystemFocusNode;
  TextEditingController? pOSSystemController;
  String? Function(BuildContext, String?)? pOSSystemControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  BusinessesRecord? newBusiness;
  // Stores action output result for [Backend Call - API (Create Plan Member)] action in Button widget.
  ApiCallResponse? apiAddMember;
  // Stores action output result for [Backend Call - API (Update Contact)] action in Button widget.
  ApiCallResponse? apiResultUpdateContact;
  // State field(s) for DenialTextField widget.
  FocusNode? denialTextFieldFocusNode;
  TextEditingController? denialTextFieldController;
  String? Function(BuildContext, String?)? denialTextFieldControllerValidator;
  // Stores action output result for [Backend Call - API (Update Contact)] action in Button widget.
  ApiCallResponse? apiResulthn9;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

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

    businessAddressFocusNode?.dispose();
    businessAddressController?.dispose();

    businessTypeFocusNode?.dispose();
    businessTypeController?.dispose();

    businessCategoryFocusNode?.dispose();
    businessCategoryController?.dispose();

    websiteFocusNode?.dispose();
    websiteController?.dispose();

    licenseNumberFocusNode?.dispose();
    licenseNumberController?.dispose();

    textFieldFocusNode1?.dispose();
    textController11?.dispose();

    textFieldFocusNode2?.dispose();
    textController12?.dispose();

    textFieldFocusNode3?.dispose();
    textController13?.dispose();

    textFieldFocusNode4?.dispose();
    textController14?.dispose();

    textFieldFocusNode5?.dispose();
    textController15?.dispose();

    pOSSystemFocusNode?.dispose();
    pOSSystemController?.dispose();

    denialTextFieldFocusNode?.dispose();
    denialTextFieldController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
