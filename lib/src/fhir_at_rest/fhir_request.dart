import 'dart:convert';

import 'package:fhir_r4/fhir_r4.dart';
import 'package:http/http.dart' as http;

abstract class FhirRequest {
  FhirRequest({
    required this.base,
    required this.headers,
    this.summary = Summary.none,
    http.Client? client,
  }) : client = client ?? http.Client();
  final Uri base;
  final Map<String, String> headers;
  final http.Client client;
  final Summary summary;

  Future<http.Response> sendRequest();

  Uri buildUri();

  String? buildBody();

  Map<String, String> buildHeaders() => <String, String>{
        'Content-Type': 'application/fhir+json',
        'Accept': 'application/fhir+json',
        ...headers,
      };

  /// Function to add summary query if necessary
  Map<String, dynamic> buildQueryParams() {
    final queryParams = <String, dynamic>{};
    if (summary != Summary.none) {
      queryParams['_summary'] = summary.toString();
    }
    return queryParams.isNotEmpty ? queryParams : <String, dynamic>{};
  }

  /// Helper function to conditionally add query parameters
  Uri buildUriWithParams(Uri baseUri, Map<String, dynamic> queryParams) {
    return queryParams.isNotEmpty
        ? baseUri.replace(queryParameters: queryParams)
        : baseUri;
  }
}

// 1. Read Request (GET)
class FhirReadRequest extends FhirRequest {
  /// Main constructor for [FhirReadRequest]
  FhirReadRequest({
    required super.base,
    required this.resourceType,
    required this.id,
    super.headers = const <String, String>{},
    super.summary,
    this.pretty = false,
    this.elements = const <String>[],
    super.client,
  });

  final String id;
  final String resourceType;
  final bool pretty; // New pretty parameter
  final List<String> elements; // New elements parameter

  @override
  Uri buildUri() {
    final baseUri = Uri.parse('$base/$resourceType/$id');
    final queryParams = buildQueryParams();

    /// Add 'pretty' and 'elements' to query params if provided
    if (pretty) {
      queryParams['_pretty'] = 'true';
    }
    if (elements.isNotEmpty) {
      queryParams['_elements'] = elements.join(',');
    }

    return buildUriWithParams(baseUri, queryParams);
  }

  @override
  String? buildBody() => null;

  @override
  Future<http.Response> sendRequest() {
    return client.get(buildUri(), headers: buildHeaders());
  }
}

// 2. vRead Request (GET specific version)
class FhirVReadRequest extends FhirRequest {
  /// Main constructor for [FhirVReadRequest ]
  FhirVReadRequest({
    required super.base,
    required this.resourceType,
    required this.id,
    required this.vid,
    super.headers = const <String, String>{},
    super.summary,
    super.client,
  });
  final String id;
  final String vid;
  final String resourceType;

  @override
  Uri buildUri() {
    final baseUri = Uri.parse('$base/$resourceType/$id/_history/$vid');
    final queryParams = buildQueryParams();
    return buildUriWithParams(baseUri, queryParams);
  }

  @override
  String? buildBody() => null;

  @override
  Future<http.Response> sendRequest() {
    return client.get(buildUri(), headers: buildHeaders());
  }
}

// 3. Update Request (PUT)
class FhirUpdateRequest extends FhirRequest {
  /// Main constructor for [FhirUpdateRequest ]
  FhirUpdateRequest({
    required super.base,
    required this.resourceType,
    required this.id,
    required this.resource,
    super.headers = const <String, String>{},
    super.summary,
    super.client,
  });
  final String resourceType;
  final String id;
  final Map<String, dynamic> resource;

  @override
  Uri buildUri() {
    final baseUri = Uri.parse('$base/$resourceType/$id');
    final queryParams = buildQueryParams();
    return buildUriWithParams(baseUri, queryParams);
  }

  @override
  String buildBody() => jsonEncode(resource);

  @override
  Future<http.Response> sendRequest() {
    return client.put(buildUri(), headers: buildHeaders(), body: buildBody());
  }
}

// 4. Patch Request (PATCH)
class FhirPatchRequest extends FhirRequest {
  /// Main constructor for [FhirPatchRequest ]
  FhirPatchRequest({
    required super.base,
    required this.resourceType,
    required this.id,
    required this.patchBody,
    super.headers = const <String, String>{},
    super.summary,
    super.client,
  });
  final String resourceType;
  final String id;
  final Map<String, dynamic> patchBody;

  @override
  Uri buildUri() {
    final baseUri = Uri.parse('$base/$resourceType/$id');
    final queryParams = buildQueryParams();
    return buildUriWithParams(baseUri, queryParams);
  }

  @override
  String buildBody() => jsonEncode(patchBody);

  @override
  Future<http.Response> sendRequest() {
    return client.patch(buildUri(), headers: buildHeaders(), body: buildBody());
  }
}

// 5. Delete Request (DELETE)
class FhirDeleteRequest extends FhirRequest {
  /// Main constructor for [FhirDeleteRequest ]
  FhirDeleteRequest({
    required super.base,
    required this.resourceType,
    required this.id,
    super.headers = const <String, String>{},
    super.summary,
    super.client,
  });
  final String resourceType;
  final String id;

  @override
  Uri buildUri() {
    final baseUri = Uri.parse('$base/$resourceType/$id');
    final queryParams = buildQueryParams();
    return buildUriWithParams(baseUri, queryParams);
  }

  @override
  String? buildBody() => null;

  @override
  Future<http.Response> sendRequest() {
    return client.delete(buildUri(), headers: buildHeaders());
  }
}

// 6. Create Request (POST)
class FhirCreateRequest extends FhirRequest {
  /// Main constructor for [FhirCreateRequest ]
  FhirCreateRequest({
    required super.base,
    required this.resourceType,
    required this.resource,
    super.headers = const <String, String>{},
    super.summary,
    super.client,
  });
  final String resourceType;
  final Map<String, dynamic> resource;

  @override
  Uri buildUri() {
    final baseUri = Uri.parse('$base/$resourceType');
    final queryParams = buildQueryParams();
    return buildUriWithParams(baseUri, queryParams);
  }

  @override
  String buildBody() => jsonEncode(resource);

  @override
  Future<http.Response> sendRequest() {
    return client.post(buildUri(), headers: buildHeaders(), body: buildBody());
  }
}

// 7. Search Request (GET or POST)
class FhirSearchRequest extends FhirRequest {
  /// Main constructor for [FhirSearchRequest ]
  FhirSearchRequest({
    required super.base,
    required this.resourceType,
    SearchResource? search, // Optional search object
    this.usePost = false,
    super.headers = const <String, String>{},
    super.summary,
    super.client,
  }) : search = search ?? SearchResource();
  final String resourceType;
  final SearchResource search; // Holds search parameters
  final bool usePost;

  @override
  Uri buildUri() {
    final baseUri = Uri.parse('$base/$resourceType');
    final queryParams = <String, dynamic>{
      ...Uri.splitQueryString(search.buildQuery()),
    };
    queryParams
        .addAll(buildQueryParams()); // Include summary query if applicable
    return buildUriWithParams(baseUri, queryParams);
  }

  @override
  String? buildBody() {
    if (usePost) {
      return jsonEncode(
        search.parameters,
      ); // Use search parameters for POST body
    }
    return null;
  }

  @override
  Future<http.Response> sendRequest() {
    if (usePost) {
      return client.post(
        buildUri(),
        headers: buildHeaders(),
        body: buildBody(),
      );
    } else {
      return client.get(buildUri(), headers: buildHeaders());
    }
  }
}

// 8. History Request (GET)
class FhirHistoryRequest extends FhirRequest {
  /// Main constructor for [FhirHistoryRequest ]
  FhirHistoryRequest({
    required super.base,
    required this.resourceType,
    required this.id,
    super.headers = const <String, String>{},
    super.summary,
    super.client,
  });
  final String resourceType;
  final String id;

  @override
  Uri buildUri() {
    final baseUri = Uri.parse('$base/$resourceType/$id/_history');
    final queryParams = buildQueryParams();
    return buildUriWithParams(baseUri, queryParams);
  }

  @override
  String? buildBody() => null;

  @override
  Future<http.Response> sendRequest() {
    return client.get(buildUri(), headers: buildHeaders());
  }
}

// 9. History All (GET)
class FhirHistoryAllRequest extends FhirRequest {
  /// Main constructor for [FhirHistoryAllRequest ]
  FhirHistoryAllRequest({
    required super.base,
    super.headers = const <String, String>{},
    super.summary,
    super.client,
  });

  @override
  Uri buildUri() {
    final baseUri = Uri.parse('$base/_history');
    final queryParams = buildQueryParams();
    return buildUriWithParams(baseUri, queryParams);
  }

  @override
  String? buildBody() => null;

  @override
  Future<http.Response> sendRequest() {
    return client.get(buildUri(), headers: buildHeaders());
  }
}

// 10. Capabilities Request (GET)
class FhirCapabilitiesRequest extends FhirRequest {
  /// Optional Mode parameter

  FhirCapabilitiesRequest({
    required super.base,
    this.mode, // Add the Mode parameter
    super.headers = const <String, String>{},
    super.summary,
    super.client,
  });
  final Mode? mode;

  @override
  Uri buildUri() {
    final baseUri = Uri.parse('$base/metadata');
    final queryParams = buildQueryParams();

    // Add mode to query parameters if provided
    if (mode != null) {
      queryParams['mode'] = mode.toString();
    }

    return buildUriWithParams(baseUri, queryParams);
  }

  @override
  String? buildBody() => null;

  @override
  Future<http.Response> sendRequest() {
    return client.get(buildUri(), headers: buildHeaders());
  }
}

// 11. Transaction Request (POST)
class FhirTransactionRequest extends FhirRequest {
  /// Main constructor for [FhirTransactionRequest ]
  FhirTransactionRequest({
    required super.base,
    required this.bundle,
    super.headers = const <String, String>{},
    super.summary,
    super.client,
  });
  final Map<String, dynamic> bundle;

  @override
  Uri buildUri() {
    final baseUri = Uri.parse('$base');
    final queryParams = buildQueryParams();
    return buildUriWithParams(baseUri, queryParams);
  }

  @override
  String buildBody() => jsonEncode(bundle);

  @override
  Future<http.Response> sendRequest() {
    return client.post(buildUri(), headers: buildHeaders(), body: buildBody());
  }
}

// 12. Batch Request (POST)
class FhirBatchRequest extends FhirRequest {
  /// Main constructor for [FhirBatchRequest ]
  FhirBatchRequest({
    required super.base,
    required this.bundle,
    super.headers = const <String, String>{},
    super.summary,
    super.client,
  });
  final Map<String, dynamic> bundle;

  @override
  Uri buildUri() {
    final baseUri = Uri.parse('$base');
    final queryParams = buildQueryParams();
    return buildUriWithParams(baseUri, queryParams);
  }

  @override
  String buildBody() => jsonEncode(bundle);

  @override
  Future<http.Response> sendRequest() {
    return client.post(buildUri(), headers: buildHeaders(), body: buildBody());
  }
}

// 13. Operation Request (POST or GET)
class FhirOperationRequest extends FhirRequest {
  /// Main constructor for [FhirOperationRequest ]
  FhirOperationRequest({
    required super.base,
    required this.operation,
    this.parameters,
    this.id,
    this.resourceType,
    this.usePost = false,
    super.headers = const <String, String>{},
    super.summary,
    super.client,
  });
  final String operation;
  final RestfulParameters? parameters;
  final String? id;
  final String? resourceType;
  final bool usePost;

  @override
  Uri buildUri() {
    final operationPath =
        resourceType != null ? '/$resourceType/$operation' : '/$operation';
    final idPath = id != null ? '/$id' : '';
    final baseUri = Uri.parse('$base$idPath$operationPath');
    final queryParams = buildQueryParams();
    return buildUriWithParams(baseUri, queryParams);
  }

  @override
  String? buildBody() {
    if (usePost && parameters != null) {
      return jsonEncode(parameters!.parameters);
    }
    return null;
  }

  @override
  Future<http.Response> sendRequest() {
    if (usePost) {
      return client.post(
        buildUri(),
        headers: buildHeaders(),
        body: buildBody(),
      );
    } else {
      return client.get(buildUri(), headers: buildHeaders());
    }
  }
}
