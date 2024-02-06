import '/flutter_flow/flutter_flow_util.dart';
import 'news_detail_widget.dart' show NewsDetailWidget;
import 'package:flutter/material.dart';

class NewsDetailModel extends FlutterFlowModel<NewsDetailWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  String currentPageLink = '';

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
