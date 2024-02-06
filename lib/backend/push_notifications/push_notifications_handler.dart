import 'dart:async';

import 'serialization_util.dart';
import '../backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';


final _handledMessageIds = <String?>{};

class PushNotificationsHandler extends StatefulWidget {
  const PushNotificationsHandler({super.key, required this.child});

  final Widget child;

  @override
  _PushNotificationsHandlerState createState() =>
      _PushNotificationsHandlerState();
}

class _PushNotificationsHandlerState extends State<PushNotificationsHandler> {
  bool _loading = false;

  Future handleOpenedPushNotification() async {
    if (isWeb) {
      return;
    }

    final notification = await FirebaseMessaging.instance.getInitialMessage();
    if (notification != null) {
      await _handlePushNotification(notification);
    }
    FirebaseMessaging.onMessageOpenedApp.listen(_handlePushNotification);
  }

  Future _handlePushNotification(RemoteMessage message) async {
    if (_handledMessageIds.contains(message.messageId)) {
      return;
    }
    _handledMessageIds.add(message.messageId);

    if (mounted) {
      setState(() => _loading = true);
    }
    try {
      final initialPageName = message.data['initialPageName'] as String;
      final initialParameterData = getInitialParameterData(message.data);
      final parametersBuilder = parametersBuilderMap[initialPageName];
      if (parametersBuilder != null) {
        final parameterData = await parametersBuilder(initialParameterData);
        context.pushNamed(
          initialPageName,
          pathParameters: parameterData.pathParameters,
          extra: parameterData.extra,
        );
      }
    } catch (e) {
      print('Error: $e');
    } finally {
      if (mounted) {
        setState(() => _loading = false);
      }
    }
  }

  @override
  void initState() {
    super.initState();
    handleOpenedPushNotification();
  }

  @override
  Widget build(BuildContext context) => _loading
      ? Container(
          color: FlutterFlowTheme.of(context).primaryBtnText,
          child: Center(
            child: Image.asset(
              'assets/images/BuyBrokoli_logo_full_logo.jpg',
              height: 200.0,
              fit: BoxFit.cover,
            ),
          ),
        )
      : widget.child;
}

class ParameterData {
  const ParameterData(
      {this.requiredParams = const {}, this.allParams = const {}});
  final Map<String, String?> requiredParams;
  final Map<String, dynamic> allParams;

  Map<String, String> get pathParameters => Map.fromEntries(
        requiredParams.entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
  Map<String, dynamic> get extra => Map.fromEntries(
        allParams.entries.where((e) => e.value != null),
      );

  static Future<ParameterData> Function(Map<String, dynamic>) none() =>
      (data) async => const ParameterData();
}

final parametersBuilderMap =
    <String, Future<ParameterData> Function(Map<String, dynamic>)>{
  'Login': (data) async => ParameterData(
        allParams: {
          'lastPage': getParameter<String>(data, 'lastPage'),
        },
      ),
  'SignUp': (data) async => ParameterData(
        allParams: {
          'lastPage': getParameter<String>(data, 'lastPage'),
          'businessType': getParameter<String>(data, 'businessType'),
        },
      ),
  'Home': ParameterData.none(),
  'Search': (data) async => ParameterData(
        allParams: {
          'filter': getParameter<bool>(data, 'filter'),
        },
      ),
  'BusinessProfile': (data) async => ParameterData(
        allParams: {
          'business': getParameter<DocumentReference>(data, 'business'),
        },
      ),
  'ProductPage': (data) async => ParameterData(
        allParams: {
          'product': getParameter<DocumentReference>(data, 'product'),
          'business': getParameter<DocumentReference>(data, 'business'),
        },
      ),
  'News': ParameterData.none(),
  'Events': ParameterData.none(),
  'Messages': ParameterData.none(),
  'Chat': (data) async => ParameterData(
        allParams: {
          'chatUser': await getDocumentParameter<UsersRecord>(
              data, 'chatUser', UsersRecord.fromSnapshot),
          'chatRef': getParameter<DocumentReference>(data, 'chatRef'),
        },
      ),
  'Settings': ParameterData.none(),
  'EditProfile': ParameterData.none(),
  'ClaimBusinesses': (data) async => ParameterData(
        allParams: {
          'business': getParameter<DocumentReference>(data, 'business'),
          'pageLink': getParameter<String>(data, 'pageLink'),
          'state': getParameter<String>(data, 'state'),
          'businessType': getParameter<String>(data, 'businessType'),
        },
      ),
  'RegisterBusiness': (data) async => ParameterData(
        allParams: {
          'businessType': getParameter<String>(data, 'businessType'),
          'state': getParameter<DocumentReference>(data, 'state'),
        },
      ),
  'Webview': (data) async => ParameterData(
        allParams: {
          'link': getParameter<String>(data, 'link'),
          'title': getParameter<String>(data, 'title'),
        },
      ),
  'Notifications': ParameterData.none(),
  'vendorApprovalDetails': (data) async => ParameterData(
        allParams: {
          'vendorSubmission':
              getParameter<DocumentReference>(data, 'vendorSubmission'),
          'state': getParameter<String>(data, 'state'),
        },
      ),
  'ReportDetail': (data) async => ParameterData(
        allParams: {
          'report': getParameter<DocumentReference>(data, 'report'),
          'owner': await getDocumentParameter<UsersRecord>(
              data, 'owner', UsersRecord.fromSnapshot),
          'reporter': await getDocumentParameter<UsersRecord>(
              data, 'reporter', UsersRecord.fromSnapshot),
        },
      ),
  'AgeVerification': ParameterData.none(),
  'RegisterBusiness_State': (data) async => ParameterData(
        allParams: {
          'business': getParameter<DocumentReference>(data, 'business'),
          'pageLink': getParameter<String>(data, 'pageLink'),
        },
      ),
  'RegisterBusiness_Type': (data) async => ParameterData(
        allParams: {
          'state': getParameter<String>(data, 'state'),
          'stat': getParameter<DocumentReference>(data, 'stat'),
          'business': getParameter<DocumentReference>(data, 'business'),
          'pageLink': getParameter<String>(data, 'pageLink'),
        },
      ),
  'RegisterBusiness_Medical': (data) async => ParameterData(
        allParams: {
          'state': getParameter<DocumentReference>(data, 'state'),
          'business': getParameter<DocumentReference>(data, 'business'),
          'pageLink': getParameter<String>(data, 'pageLink'),
        },
      ),
  'RegisterBusiness_Retail': (data) async => ParameterData(
        allParams: {
          'state': getParameter<DocumentReference>(data, 'state'),
          'business': getParameter<DocumentReference>(data, 'business'),
          'pageLink': getParameter<String>(data, 'pageLink'),
        },
      ),
  'EventDetails': (data) async => ParameterData(
        allParams: {
          'event': getParameter<DocumentReference>(data, 'event'),
        },
      ),
  'NewsDetail': (data) async => ParameterData(
        allParams: {
          'news': getParameter<DocumentReference>(data, 'news'),
        },
      ),
  'BusinessManager': (data) async => ParameterData(
        allParams: {
          'business': getParameter<DocumentReference>(data, 'business'),
          'page': getParameter<String>(data, 'page'),
          'code': getParameter<String>(data, 'code'),
          'businessDoc': await getDocumentParameter<BusinessesRecord>(
              data, 'businessDoc', BusinessesRecord.fromSnapshot),
        },
      ),
  'BusinessListing': (data) async => ParameterData(
        allParams: {
          'business': getParameter<DocumentReference>(data, 'business'),
          'page': getParameter<String>(data, 'page'),
        },
      ),
  'BusinessProducts': (data) async => ParameterData(
        allParams: {
          'business': getParameter<DocumentReference>(data, 'business'),
          'page': getParameter<String>(data, 'page'),
        },
      ),
  'BusinessEvents': (data) async => ParameterData(
        allParams: {
          'business': getParameter<DocumentReference>(data, 'business'),
          'page': getParameter<String>(data, 'page'),
          'businessDoc': await getDocumentParameter<BusinessesRecord>(
              data, 'businessDoc', BusinessesRecord.fromSnapshot),
        },
      ),
  'BusinessBoosts': (data) async => ParameterData(
        allParams: {
          'business': getParameter<DocumentReference>(data, 'business'),
          'page': getParameter<String>(data, 'page'),
        },
      ),
  'BusinessLocations': (data) async => ParameterData(
        allParams: {
          'business': getParameter<DocumentReference>(data, 'business'),
          'page': getParameter<String>(data, 'page'),
        },
      ),
  'BusinessPlan': (data) async => ParameterData(
        allParams: {
          'business': getParameter<DocumentReference>(data, 'business'),
          'page': getParameter<String>(data, 'page'),
        },
      ),
  'AdminOverview': (data) async => ParameterData(
        allParams: {
          'business': getParameter<DocumentReference>(data, 'business'),
        },
      ),
  'BusinessPhotos': (data) async => ParameterData(
        allParams: {
          'business': getParameter<DocumentReference>(data, 'business'),
          'page': getParameter<String>(data, 'page'),
        },
      ),
  'Brands': ParameterData.none(),
};

Map<String, dynamic> getInitialParameterData(Map<String, dynamic> data) {
  try {
    final parameterDataStr = data['parameterData'];
    if (parameterDataStr == null ||
        parameterDataStr is! String ||
        parameterDataStr.isEmpty) {
      return {};
    }
    return jsonDecode(parameterDataStr) as Map<String, dynamic>;
  } catch (e) {
    print('Error parsing parameter data: $e');
    return {};
  }
}
