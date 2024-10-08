import 'dart:convert';
import 'package:http/http.dart' as http;

abstract class FhirRequest {
  final Uri base;
  final Map<String, String> headers;
  final http.Client client;

  FhirRequest({
    required this.base,
    required this.headers,
    http.Client? client,
  }) : client = client ?? http.Client();

  Future<http.Response> sendRequest();

  Uri buildUri();

  String? buildBody();

  Map<String, String> buildHeaders() => <String, String>{
        'Content-Type': 'application/fhir+json',
        'Accept': 'application/fhir+json',
        ...headers,
      };
}

// 1. Read Request (GET)
class FhirReadRequest extends FhirRequest {
  final String id;
  final String resourceType;

  FhirReadRequest({
    required super.base,
    required this.resourceType,
    required this.id,
    super.headers = const <String, String>{},
    super.client,
  });

  @override
  Uri buildUri() => Uri.parse('$base/$resourceType/$id');

  @override
  String? buildBody() => null;

  @override
  Future<http.Response> sendRequest() {
    return client.get(buildUri(), headers: buildHeaders());
  }
}

// 2. vRead Request (GET specific version)
class FhirVReadRequest extends FhirRequest {
  final String id;
  final String vid;
  final String resourceType;

  FhirVReadRequest({
    required super.base,
    required this.resourceType,
    required this.id,
    required this.vid,
    super.headers = const <String, String>{},
    super.client,
  });

  @override
  Uri buildUri() => Uri.parse('$base/$resourceType/$id/_history/$vid');

  @override
  String? buildBody() => null;

  @override
  Future<http.Response> sendRequest() {
    return client.get(buildUri(), headers: buildHeaders());
  }
}

// 3. Update Request (PUT)
class FhirUpdateRequest extends FhirRequest {
  final String resourceType;
  final String id;
  final Map<String, dynamic> resource;

  FhirUpdateRequest({
    required super.base,
    required this.resourceType,
    required this.id,
    required this.resource,
    super.headers = const <String, String>{},
    super.client,
  });

  @override
  Uri buildUri() => Uri.parse('$base/$resourceType/$id');

  @override
  String buildBody() => jsonEncode(resource);

  @override
  Future<http.Response> sendRequest() {
    return client.put(buildUri(), headers: buildHeaders(), body: buildBody());
  }
}

// 4. Patch Request (PATCH)
class FhirPatchRequest extends FhirRequest {
  final String resourceType;
  final String id;
  final Map<String, dynamic> patchBody;

  FhirPatchRequest({
    required super.base,
    required this.resourceType,
    required this.id,
    required this.patchBody,
    super.headers = const <String, String>{},
    super.client,
  });

  @override
  Uri buildUri() => Uri.parse('$base/$resourceType/$id');

  @override
  String buildBody() => jsonEncode(patchBody);

  @override
  Future<http.Response> sendRequest() {
    return client.patch(buildUri(), headers: buildHeaders(), body: buildBody());
  }
}

// 5. Delete Request (DELETE)
class FhirDeleteRequest extends FhirRequest {
  final String resourceType;
  final String id;

  FhirDeleteRequest({
    required super.base,
    required this.resourceType,
    required this.id,
    super.headers = const <String, String>{},
    super.client,
  });

  @override
  Uri buildUri() => Uri.parse('$base/$resourceType/$id');

  @override
  String? buildBody() => null;

  @override
  Future<http.Response> sendRequest() {
    return client.delete(buildUri(), headers: buildHeaders());
  }
}

// 6. Create Request (POST)
class FhirCreateRequest extends FhirRequest {
  final String resourceType;
  final Map<String, dynamic> resource;

  FhirCreateRequest({
    required super.base,
    required this.resourceType,
    required this.resource,
    super.headers = const <String, String>{},
    super.client,
  });

  @override
  Uri buildUri() => Uri.parse('$base/$resourceType');

  @override
  String buildBody() => jsonEncode(resource);

  @override
  Future<http.Response> sendRequest() {
    return client.post(buildUri(), headers: buildHeaders(), body: buildBody());
  }
}

// 7. Search Request (GET or POST)
class FhirSearchRequest extends FhirRequest {
  final String resourceType;
  final Map<String, dynamic> queryParameters;
  final bool usePost;

  FhirSearchRequest({
    required super.base,
    required this.resourceType,
    this.queryParameters = const <String, dynamic>{},
    this.usePost = false,
    super.headers = const <String, String>{},
    super.client,
  });

  @override
  Uri buildUri() => Uri.parse('$base/$resourceType')
      .replace(queryParameters: queryParameters);

  @override
  String? buildBody() {
    if (usePost) {
      return jsonEncode(queryParameters);
    }
    return null;
  }

  @override
  Future<http.Response> sendRequest() {
    if (usePost) {
      return client.post(buildUri(),
          headers: buildHeaders(), body: buildBody());
    } else {
      return client.get(buildUri(), headers: buildHeaders());
    }
  }
}

// 8. History Request (GET)
class FhirHistoryRequest extends FhirRequest {
  final String resourceType;
  final String id;

  FhirHistoryRequest({
    required super.base,
    required this.resourceType,
    required this.id,
    super.headers = const <String, String>{},
    super.client,
  });

  @override
  Uri buildUri() => Uri.parse('$base/$resourceType/$id/_history');

  @override
  String? buildBody() => null;

  @override
  Future<http.Response> sendRequest() {
    return client.get(buildUri(), headers: buildHeaders());
  }
}

// 9. History All (GET)
class FhirHistoryAllRequest extends FhirRequest {
  FhirHistoryAllRequest({
    required super.base,
    super.headers = const <String, String>{},
    super.client,
  });

  @override
  Uri buildUri() => Uri.parse('$base/_history');

  @override
  String? buildBody() => null;

  @override
  Future<http.Response> sendRequest() {
    return client.get(buildUri(), headers: buildHeaders());
  }
}

// 10. Capabilities Request (GET)
class FhirCapabilitiesRequest extends FhirRequest {
  FhirCapabilitiesRequest({
    required super.base,
    super.headers = const <String, String>{},
    super.client,
  });

  @override
  Uri buildUri() => Uri.parse('$base/metadata');

  @override
  String? buildBody() => null;

  @override
  Future<http.Response> sendRequest() {
    return client.get(buildUri(), headers: buildHeaders());
  }
}

// 11. Transaction Request (POST)
class FhirTransactionRequest extends FhirRequest {
  final Map<String, dynamic> bundle;

  FhirTransactionRequest({
    required super.base,
    required this.bundle,
    super.headers = const <String, String>{},
    super.client,
  });

  @override
  Uri buildUri() => Uri.parse('$base');

  @override
  String buildBody() => jsonEncode(bundle);

  @override
  Future<http.Response> sendRequest() {
    return client.post(buildUri(), headers: buildHeaders(), body: buildBody());
  }
}

// 12. Batch Request (POST)
class FhirBatchRequest extends FhirRequest {
  final Map<String, dynamic> bundle;

  FhirBatchRequest({
    required super.base,
    required this.bundle,
    super.headers = const <String, String>{},
    super.client,
  });

  @override
  Uri buildUri() => Uri.parse('$base');

  @override
  String buildBody() => jsonEncode(bundle);

  @override
  Future<http.Response> sendRequest() {
    return client.post(buildUri(), headers: buildHeaders(), body: buildBody());
  }
}

// 13. Operation Request (POST or GET)
class FhirOperationRequest extends FhirRequest {
  final String operation;
  final Map<String, dynamic>? fhirParameter;
  final String? id;
  final String? resourceType;
  final bool usePost;

  FhirOperationRequest({
    required super.base,
    required this.operation,
    this.fhirParameter,
    this.id,
    this.resourceType,
    this.usePost = false,
    super.headers = const <String, String>{},
    super.client,
  });

  @override
  Uri buildUri() {
    final String operationPath =
        resourceType != null ? '/$resourceType/$operation' : '/$operation';
    final String idPath = id != null ? '/$id' : '';
    return Uri.parse('$base$idPath$operationPath');
  }

  @override
  String? buildBody() {
    if (usePost && fhirParameter != null) {
      return jsonEncode(fhirParameter);
    }
    return null;
  }

  @override
  Future<http.Response> sendRequest() {
    if (usePost) {
      return client.post(buildUri(),
          headers: buildHeaders(), body: buildBody());
    } else {
      return client.get(buildUri(), headers: buildHeaders());
    }
  }
}
