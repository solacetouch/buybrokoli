import 'dart:convert';
import '../cloud_functions/cloud_functions.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Eventbrite User Group Code

class EventbriteUserGroup {
  static GetOrganizationsCall getOrganizationsCall = GetOrganizationsCall();
  static ListEventsCall listEventsCall = ListEventsCall();
  static GetEventCall getEventCall = GetEventCall();
}

class GetOrganizationsCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'GetOrganizationsCall',
        'variables': {
          'token': token,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  String? organizationId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.organizations[:].id''',
      ));
  String? organizationName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.organizations[:].name''',
      ));
}

class ListEventsCall {
  Future<ApiCallResponse> call({
    String? organizationId = '',
    String? token = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'ListEventsCall',
        'variables': {
          'organizationId': organizationId,
          'token': token,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  String? eventName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.events[:].name.text''',
      ));
  String? eventDescription(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.events[:].description.text''',
      ));
  dynamic date(dynamic response) => getJsonField(
        response,
        r'''$.events[:].start.local''',
      );
  String? city(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.events[:].venue.address.city''',
      ));
  String? state(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.events[:].venue.address.region''',
      ));
  dynamic latitude(dynamic response) => getJsonField(
        response,
        r'''$.events[:].venue.address.latitude''',
      );
  dynamic longitude(dynamic response) => getJsonField(
        response,
        r'''$.events[:].venue.address.longitude''',
      );
  String? address(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.events[:].venue.address.localized_address_display''',
      ));
  String? link(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.events[:].url''',
      ));
  String? price(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.events[:].ticket_availability.minimum_ticket_price.major_value''',
      ));
  String? photo(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.events[:].logo.original.url''',
      ));
  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.events[:].status''',
      ));
  String? eventbriteID(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.events[:].id''',
      ));
}

class GetEventCall {
  Future<ApiCallResponse> call({
    String? eventId = '',
    String? token = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'GetEventCall',
        'variables': {
          'eventId': eventId,
          'token': token,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  String? eventName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.name.text''',
      ));
  String? link(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.url''',
      ));
  String? date(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.start.utc''',
      ));
  String? photo(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.logo.original.url''',
      ));
  String? price(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.ticket_availability.minimum_ticket_price.major_value''',
      ));
  String? description(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.description.text''',
      ));
  String? address(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.venue.address.localized_address_display''',
      ));
  String? latitude(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.venue.latitude''',
      ));
  String? longitude(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.venue.longitude''',
      ));
  String? city(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.venue.address.city''',
      ));
  String? state(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.venue.address.region''',
      ));
}

/// End Eventbrite User Group Code

/// Start CRM Integtation Group Code

class CRMIntegtationGroup {
  static String baseUrl = 'https://buybrokoli.com/api/site';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
    'Authorization': 'Bearer w1d8c1d9cba1e4adbac4023ad6afc4b1f',
  };
  static FindMemberCall findMemberCall = FindMemberCall();
  static CreatePlanMemberCall createPlanMemberCall = CreatePlanMemberCall();
  static CreateContactCall createContactCall = CreateContactCall();
  static UpdateContactCall updateContactCall = UpdateContactCall();
}

class FindMemberCall {
  Future<ApiCallResponse> call({
    String? crmMemberId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Find Member',
      apiUrl: '${CRMIntegtationGroup.baseUrl}/members/$crmMemberId',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer w1d8c1d9cba1e4adbac4023ad6afc4b1f',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CreatePlanMemberCall {
  Future<ApiCallResponse> call({
    String? name = '',
    String? email = '',
    String? password = '',
    int? group,
    String? documentID = '',
  }) async {
    final ffApiRequestBody = '''
{
  "name": "$name",
  "email": "$email",
  "password": "$password",
  "groups": [
    $group
  ],
  "approved": true
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create Plan Member',
      apiUrl: '${CRMIntegtationGroup.baseUrl}/members',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer w1d8c1d9cba1e4adbac4023ad6afc4b1f',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  int? contactID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.contactId''',
      ));
  int? memberID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
}

class CreateContactCall {
  Future<ApiCallResponse> call({
    String? name = '',
    String? email = '',
    String? tag = '',
    String? documentID = '',
    String? phone = '',
  }) async {
    final ffApiRequestBody = '''
{
  "name": "$name",
  "email": "$email",
  "properties": [
    {
      "name": "app_user_id",
      "value": "$documentID"
    }
  ],
  "tags": [
    "$tag"
  ],
  "subscribed": true,
  "phone": "$phone"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create Contact',
      apiUrl: '${CRMIntegtationGroup.baseUrl}/contacts',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer w1d8c1d9cba1e4adbac4023ad6afc4b1f',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  int? contactID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
}

class UpdateContactCall {
  Future<ApiCallResponse> call({
    String? contactCrmId = '',
    int? pageviews,
    String? email = '',
    String? appUserId = '',
    String? appApprovalStatus = '',
    String? tag = '',
  }) async {
    final ffApiRequestBody = '''
{ 
  "id": "$contactCrmId",
  "email": "$email",
  "properties": [{
     "name": "pageviews",
     "value":$pageviews
     },
     {
      "name": "app_user_id",
      "value": "$appUserId"
     },
     {
      "name": "app_approval_status",
      "value": "$appApprovalStatus"
     }],
     "tags": [
      "$tag"
      ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update Contact',
      apiUrl: '${CRMIntegtationGroup.baseUrl}/contacts/$contactCrmId',
      callType: ApiCallType.PUT,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer w1d8c1d9cba1e4adbac4023ad6afc4b1f',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.TEXT,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End CRM Integtation Group Code

class EventbritePartnerAuthorizationCall {
  static Future<ApiCallResponse> call({
    String? code = '',
    String? redirectUri = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'EventbritePartnerAuthorizationCall',
        'variables': {
          'code': code,
          'redirectUri': redirectUri,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  static String? accessToken(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.access_token''',
      ));
  static String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.token_type''',
      ));
}

class InstagramAccessCall {
  static Future<ApiCallResponse> call({
    String? redirectUri = 'https://app.buybrokoli.com/businessManager',
    String? instagramAppId = '326932036281266',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Instagram Access',
      apiUrl: 'https://api.instagram.com',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'client_id': instagramAppId,
        'redirect_uri': redirectUri,
        'scope': "user_profile,user_media",
        'response_type': "code",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class InstagramTokenCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Instagram Token',
      apiUrl: 'https://api.instagram.com/oauth/access_token',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
