import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'business_profile_widget.dart' show BusinessProfileWidget;
import 'package:flutter/material.dart';

class BusinessProfileModel extends FlutterFlowModel<BusinessProfileWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  String currentPageLink = '';
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ChatsRecord? newChat;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  ChatsRecord? newVendorChat;
  // State field(s) for TabBar widget.
  TabController? tabBarController1;
  int get tabBarCurrentIndex1 =>
      tabBarController1 != null ? tabBarController1!.index : 0;

  // State field(s) for TabBar widget.
  TabController? tabBarController2;
  int get tabBarCurrentIndex2 =>
      tabBarController2 != null ? tabBarController2!.index : 0;

  // State field(s) for TabBar widget.
  TabController? tabBarController3;
  int get tabBarCurrentIndex3 =>
      tabBarController3 != null ? tabBarController3!.index : 0;

  // State field(s) for TabBar widget.
  TabController? tabBarController4;
  int get tabBarCurrentIndex4 =>
      tabBarController4 != null ? tabBarController4!.index : 0;

  // State field(s) for TabBar widget.
  TabController? tabBarController5;
  int get tabBarCurrentIndex5 =>
      tabBarController5 != null ? tabBarController5!.index : 0;

  // State field(s) for TabBar widget.
  TabController? tabBarController6;
  int get tabBarCurrentIndex6 =>
      tabBarController6 != null ? tabBarController6!.index : 0;

  // State field(s) for TabBar widget.
  TabController? tabBarController7;
  int get tabBarCurrentIndex7 =>
      tabBarController7 != null ? tabBarController7!.index : 0;

  // State field(s) for TabBar widget.
  TabController? tabBarController8;
  int get tabBarCurrentIndex8 =>
      tabBarController8 != null ? tabBarController8!.index : 0;

  // State field(s) for TabBar widget.
  TabController? tabBarController9;
  int get tabBarCurrentIndex9 =>
      tabBarController9 != null ? tabBarController9!.index : 0;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController1?.dispose();
    tabBarController2?.dispose();
    tabBarController3?.dispose();
    tabBarController4?.dispose();
    tabBarController5?.dispose();
    tabBarController6?.dispose();
    tabBarController7?.dispose();
    tabBarController8?.dispose();
    tabBarController9?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
