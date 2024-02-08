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
  static FindMemberCall findMemberCall = FindMemberCall();
  static CreatePlanMemberCall createPlanMemberCall = CreatePlanMemberCall();
  static CreateContactCall createContactCall = CreateContactCall();
  static UpdateContactCall updateContactCall = UpdateContactCall();
  static FindGroupCall findGroupCall = FindGroupCall();
}

class FindMemberCall {
  Future<ApiCallResponse> call({
    String? crmMemberId = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'FindMemberCall',
        'variables': {
          'crmMemberId': crmMemberId,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  List<int>? groups(dynamic response) => (getJsonField(
        response,
        r'''$.groups''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class CreatePlanMemberCall {
  Future<ApiCallResponse> call({
    String? name = '',
    String? email = '',
    String? password = '',
    int? group,
    String? documentID = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'CreatePlanMemberCall',
        'variables': {
          'name': name,
          'email': email,
          'password': password,
          'group': group,
          'documentID': documentID,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
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
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'CreateContactCall',
        'variables': {
          'name': name,
          'email': email,
          'tag': tag,
          'documentID': documentID,
          'phone': phone,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
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
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'UpdateContactCall',
        'variables': {
          'contactCrmId': contactCrmId,
          'pageviews': pageviews,
          'email': email,
          'appUserId': appUserId,
          'appApprovalStatus': appApprovalStatus,
          'tag': tag,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }
}

class FindGroupCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'FindGroupCall',
        'variables': {
          'id': id,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  String? planName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.name''',
      ));
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
