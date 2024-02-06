import '/flutter_flow/flutter_flow_util.dart';
import 'business_new_promotion_widget.dart' show BusinessNewPromotionWidget;
import 'package:flutter/material.dart';

class BusinessNewPromotionModel
    extends FlutterFlowModel<BusinessNewPromotionWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for promoName widget.
  FocusNode? promoNameFocusNode;
  TextEditingController? promoNameController;
  String? Function(BuildContext, String?)? promoNameControllerValidator;
  // State field(s) for promoCode widget.
  FocusNode? promoCodeFocusNode;
  TextEditingController? promoCodeController;
  String? Function(BuildContext, String?)? promoCodeControllerValidator;
  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionController;
  String? Function(BuildContext, String?)? descriptionControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    promoNameFocusNode?.dispose();
    promoNameController?.dispose();

    promoCodeFocusNode?.dispose();
    promoCodeController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
