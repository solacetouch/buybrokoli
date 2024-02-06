import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/navigation/business_manager_nav/business_manager_nav_widget.dart';
import 'business_listing_widget.dart' show BusinessListingWidget;
import 'package:flutter/material.dart';

class BusinessListingModel extends FlutterFlowModel<BusinessListingWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Model for BusinessManagerNav component.
  late BusinessManagerNavModel businessManagerNavModel1;
  // State field(s) for BusinessNameField widget.
  FocusNode? businessNameFieldFocusNode;
  TextEditingController? businessNameFieldController;
  String? Function(BuildContext, String?)? businessNameFieldControllerValidator;
  String? _businessNameFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for BusinessEmailField widget.
  FocusNode? businessEmailFieldFocusNode;
  TextEditingController? businessEmailFieldController;
  String? Function(BuildContext, String?)?
      businessEmailFieldControllerValidator;
  String? _businessEmailFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Invalid Email';
    }
    return null;
  }

  // State field(s) for BusinessPhoneField widget.
  FocusNode? businessPhoneFieldFocusNode;
  TextEditingController? businessPhoneFieldController;
  String? Function(BuildContext, String?)?
      businessPhoneFieldControllerValidator;
  String? _businessPhoneFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for BusinessAdressField widget.
  FocusNode? businessAdressFieldFocusNode;
  TextEditingController? businessAdressFieldController;
  String? Function(BuildContext, String?)?
      businessAdressFieldControllerValidator;
  String? _businessAdressFieldControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for DescriptionField widget.
  FocusNode? descriptionFieldFocusNode;
  TextEditingController? descriptionFieldController;
  String? Function(BuildContext, String?)? descriptionFieldControllerValidator;
  // State field(s) for WebsiteField widget.
  FocusNode? websiteFieldFocusNode;
  TextEditingController? websiteFieldController;
  String? Function(BuildContext, String?)? websiteFieldControllerValidator;
  String? _websiteFieldControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorWebsiteRegex).hasMatch(val)) {
      return 'Has to be a valid website.';
    }
    return null;
  }

  // State field(s) for BusinessType widget.
  String? businessTypeValue;
  FormFieldController<String>? businessTypeValueController;
  // State field(s) for OtherBusinessType widget.
  FocusNode? otherBusinessTypeFocusNode;
  TextEditingController? otherBusinessTypeController;
  String? Function(BuildContext, String?)? otherBusinessTypeControllerValidator;
  // State field(s) for LicenseNumber widget.
  FocusNode? licenseNumberFocusNode;
  TextEditingController? licenseNumberController;
  String? Function(BuildContext, String?)? licenseNumberControllerValidator;
  DateTime? datePicked;
  // State field(s) for LicenseType widget.
  String? licenseTypeValue;
  FormFieldController<String>? licenseTypeValueController;
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
  // Model for BusinessManagerNav component.
  late BusinessManagerNavModel businessManagerNavModel2;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    businessManagerNavModel1 =
        createModel(context, () => BusinessManagerNavModel());
    businessNameFieldControllerValidator =
        _businessNameFieldControllerValidator;
    businessEmailFieldControllerValidator =
        _businessEmailFieldControllerValidator;
    businessPhoneFieldControllerValidator =
        _businessPhoneFieldControllerValidator;
    businessAdressFieldControllerValidator =
        _businessAdressFieldControllerValidator;
    websiteFieldControllerValidator = _websiteFieldControllerValidator;
    businessManagerNavModel2 =
        createModel(context, () => BusinessManagerNavModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    businessManagerNavModel1.dispose();
    businessNameFieldFocusNode?.dispose();
    businessNameFieldController?.dispose();

    businessEmailFieldFocusNode?.dispose();
    businessEmailFieldController?.dispose();

    businessPhoneFieldFocusNode?.dispose();
    businessPhoneFieldController?.dispose();

    businessAdressFieldFocusNode?.dispose();
    businessAdressFieldController?.dispose();

    descriptionFieldFocusNode?.dispose();
    descriptionFieldController?.dispose();

    websiteFieldFocusNode?.dispose();
    websiteFieldController?.dispose();

    otherBusinessTypeFocusNode?.dispose();
    otherBusinessTypeController?.dispose();

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

    businessManagerNavModel2.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
