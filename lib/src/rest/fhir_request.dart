import 'dart:convert';

import 'package:fhir_r4/fhir_r4.dart';
import 'package:http/http.dart' as http;

/// Enum to represent the summary parameter
abstract class FhirRequest {
  /// Main constructor for [FhirRequest]
  FhirRequest({
    required this.base,
    required this.headers,
    this.parameters,
    http.Client? client,
  }) : client = client ?? http.Client();

  /// Base URL for the FHIR server
  final Uri base;

  /// Headers to include in the request
  final Map<String, String> headers;

  /// Summary parameter to include in the request
  final http.Client client;

  /// Parameters for the operation
  final RestfulParameters? parameters;

  /// Function to send the request
  Future<http.Response> sendRequest();

  /// Helper function to conditionally add query parameters
  Uri buildUri() => throw UnimplementedError();

  /// Helper function to conditionally add query parameters
  Uri buildUriWithParams(Uri baseUri, String? queryParams) {
    return queryParams == null || queryParams.isEmpty
        ? Uri.parse('$baseUri?_format=json')
        : Uri.parse('$baseUri?$queryParams&_format=json');
  }

  /// Function to build the headers
  Map<String, String> buildHeaders() => <String, String>{
        'Content-Type': 'application/fhir+json',
        'Accept': 'application/fhir+json',
        ...headers,
      };

  /// Function to build the body
  String? buildBody();
}

/// 1. Read Request (GET)
class FhirReadRequest extends FhirRequest {
  /// Main constructor for [FhirReadRequest]
  FhirReadRequest({
    required super.base,
    required this.resourceType,
    required this.id,
    super.headers = const <String, String>{},
    super.parameters,
    this.elements = const <String>[],
    super.client,
  });

  /// Resource type to read
  final String id;

  /// ID of the resource to read
  final String resourceType;

  /// New elements parameter
  final List<String> elements;

  @override
  Uri buildUri() {
    final baseUri = Uri.parse('$base/$resourceType/$id');
    final queryParams = parameters ?? RestfulParameters();

    if (elements.isNotEmpty) {
      queryParams.add('_elements', elements.join(','));
    }

    return buildUriWithParams(baseUri, queryParams.buildQuery());
  }

  @override
  String? buildBody() => null;

  @override
  Future<http.Response> sendRequest() {
    return client.get(buildUri(), headers: buildHeaders());
  }
}

/// 2. vRead Request (GET specific version)
class FhirVReadRequest extends FhirRequest {
  /// Main constructor for [FhirVReadRequest ]
  FhirVReadRequest({
    required super.base,
    required this.resourceType,
    required this.id,
    required this.vid,
    super.parameters,
    super.headers = const <String, String>{},
    super.client,
  });

  /// Id of the resource to read
  final String id;

  /// Version ID of the resource to read
  final String vid;

  /// Version ID of the resource to read
  final String resourceType;

  @override
  Uri buildUri() {
    final baseUri = Uri.parse('$base/$resourceType/$id/_history/$vid');
    return buildUriWithParams(baseUri, parameters?.buildQuery());
  }

  @override
  String? buildBody() => null;

  @override
  Future<http.Response> sendRequest() {
    return client.get(buildUri(), headers: buildHeaders());
  }
}

/// 3. Update Request (PUT)
class FhirUpdateRequest extends FhirRequest {
  /// Main constructor for [FhirUpdateRequest ]
  FhirUpdateRequest({
    required super.base,
    required this.resourceType,
    required this.id,
    required this.resource,
    super.parameters,
    super.headers = const <String, String>{},
    super.client,
  });

  /// Resource type to update
  final String resourceType;

  /// ID of the resource to update
  final String id;

  /// Resource to update
  final Map<String, dynamic> resource;

  @override
  Uri buildUri() {
    final baseUri = Uri.parse('$base/$resourceType/$id');
    return buildUriWithParams(baseUri, parameters?.buildQuery());
  }

  @override
  String buildBody() => jsonEncode(resource);

  @override
  Future<http.Response> sendRequest() {
    return client.put(buildUri(), headers: buildHeaders(), body: buildBody());
  }
}

/// 4. Patch Request (PATCH)
class FhirPatchRequest extends FhirRequest {
  /// Main constructor for [FhirPatchRequest ]
  FhirPatchRequest({
    required super.base,
    required this.resourceType,
    required this.id,
    required this.patchBody,
    super.parameters,
    super.headers = const <String, String>{},
    super.client,
  });

  /// Resource type to patch
  final String resourceType;

  /// ID of the resource to patch
  final String id;

  /// Patch body
  final PatchBody patchBody;

  @override
  Uri buildUri() {
    final baseUri = Uri.parse('$base/$resourceType/$id');
    return buildUriWithParams(baseUri, parameters?.buildQuery());
  }

  @override
  String buildBody() => patchBody.toJson();

  @override
  Map<String, String> buildHeaders() {
    final headers = super.buildHeaders();
    headers['Content-Type'] = 'application/json-patch+json';
    return headers;
  }

  @override
  Future<http.Response> sendRequest() {
    return client.patch(buildUri(), headers: buildHeaders(), body: buildBody());
  }
}

/// 5. Delete Request (DELETE)
class FhirDeleteRequest extends FhirRequest {
  /// Main constructor for [FhirDeleteRequest ]
  FhirDeleteRequest({
    required super.base,
    required this.resourceType,
    required this.id,
    super.parameters,
    super.headers = const <String, String>{},
    super.client,
  });

  /// Resource type to delete
  final String resourceType;

  /// ID of the resource to delete
  final String id;

  @override
  Uri buildUri() {
    final baseUri = Uri.parse('$base/$resourceType/$id');
    return buildUriWithParams(baseUri, parameters?.buildQuery());
  }

  @override
  String? buildBody() => null;

  @override
  Future<http.Response> sendRequest() {
    return client.delete(buildUri(), headers: buildHeaders());
  }
}

/// 6. Create Request (POST)
class FhirCreateRequest extends FhirRequest {
  /// Main constructor for [FhirCreateRequest ]
  FhirCreateRequest({
    required super.base,
    required this.resourceType,
    required this.resource,
    super.parameters,
    super.headers = const <String, String>{},
    super.client,
  });

  /// Resource type to create
  final String resourceType;

  /// Resource to create
  final Map<String, dynamic> resource;

  @override
  Uri buildUri() {
    final baseUri = Uri.parse('$base/$resourceType');
    return buildUriWithParams(baseUri, parameters?.buildQuery());
  }

  @override
  String buildBody() => jsonEncode(resource);

  @override
  Future<http.Response> sendRequest() {
    return client.post(buildUri(), headers: buildHeaders(), body: buildBody());
  }
}

/// 7. Search Request (GET or POST)
class FhirSearchRequest extends FhirRequest {
  /// Main constructor for [FhirSearchRequest ]
  FhirSearchRequest({
    required super.base,
    required this.resourceType,
    SearchResource? search,
    super.parameters,
    this.usePost = false,
    super.headers = const <String, String>{},
    super.client,
  }) : search = search ?? SearchResource();

  /// Resource type to search
  final String resourceType;

  /// Holds search parameters
  final SearchResource search;

  /// Use POST request
  final bool usePost;

  @override
  Uri buildUri() {
    final baseUri = Uri.parse('$base/$resourceType');
    if (usePost) {
      return buildUriWithParams(baseUri, parameters?.buildQuery());
    } else {
      if (parameters != null && parameters!.parameters.isNotEmpty) {
        search.parameters.addAll(parameters!.parameters);
      }
      return buildUriWithParams(baseUri, search.buildQuery());
    }
  }

  @override
  String? buildBody() {
    if (usePost) {
      return jsonEncode(
        search.parameters,
      );
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

/// 8. History Request (GET)
class FhirHistoryRequest extends FhirRequest {
  /// Main constructor for [FhirHistoryRequest ]
  FhirHistoryRequest({
    required super.base,
    required this.resourceType,
    required this.id,
    super.parameters,
    super.headers = const <String, String>{},
    super.client,
  });

  /// Resource type to get history for
  final String resourceType;

  /// ID of the resource to get history for
  final String id;

  @override
  Uri buildUri() {
    final baseUri = Uri.parse('$base/$resourceType/$id/_history');
    return buildUriWithParams(baseUri, parameters?.buildQuery());
  }

  @override
  String? buildBody() => null;

  @override
  Future<http.Response> sendRequest() {
    return client.get(buildUri(), headers: buildHeaders());
  }
}

/// 9. History All (GET)
class FhirHistoryAllRequest extends FhirRequest {
  /// Main constructor for [FhirHistoryAllRequest ]
  FhirHistoryAllRequest({
    required super.base,
    super.headers = const <String, String>{},
    super.parameters,
    super.client,
  });

  @override
  Uri buildUri() {
    final baseUri = Uri.parse('$base/_history');
    return buildUriWithParams(baseUri, parameters?.buildQuery());
  }

  @override
  String? buildBody() => null;

  @override
  Future<http.Response> sendRequest() {
    return client.get(buildUri(), headers: buildHeaders());
  }
}

/// 10. Capabilities Request (GET)
class FhirCapabilitiesRequest extends FhirRequest {
  /// Optional Mode parameter

  FhirCapabilitiesRequest({
    required super.base,
    this.mode, // Add the Mode parameter
    super.headers = const <String, String>{},
    super.parameters,
    super.client,
  });

  /// Mode parameter
  final Mode? mode;

  @override
  Uri buildUri() {
    final baseUri = Uri.parse('$base/metadata');
    final queryParams = parameters ?? RestfulParameters();
    if (mode != null) {
      queryParams.add('mode', mode.toString());
    }

    return buildUriWithParams(baseUri, queryParams.buildQuery());
  }

  @override
  String? buildBody() => null;

  @override
  Future<http.Response> sendRequest() {
    return client.get(buildUri(), headers: buildHeaders());
  }
}

/// 11. Transaction Request (POST)
class FhirTransactionRequest extends FhirRequest {
  /// Main constructor for [FhirTransactionRequest ]
  FhirTransactionRequest({
    required super.base,
    required this.bundle,
    super.parameters,
    super.headers = const <String, String>{},
    super.client,
  });

  /// Bundle to send in the transaction
  final Map<String, dynamic> bundle;

  @override
  Uri buildUri() {
    final baseUri = Uri.parse('$base');
    return buildUriWithParams(baseUri, parameters?.buildQuery());
  }

  @override
  String buildBody() => jsonEncode(bundle);

  @override
  Future<http.Response> sendRequest() {
    return client.post(buildUri(), headers: buildHeaders(), body: buildBody());
  }
}

/// 12. Batch Request (POST)
class FhirBatchRequest extends FhirRequest {
  /// Main constructor for [FhirBatchRequest ]
  FhirBatchRequest({
    required super.base,
    required this.bundle,
    super.parameters,
    super.headers = const <String, String>{},
    super.client,
  });

  /// Bundle to send in the batch
  final Map<String, dynamic> bundle;

  @override
  Uri buildUri() {
    final baseUri = Uri.parse('$base');
    return buildUriWithParams(baseUri, parameters?.buildQuery());
  }

  @override
  String buildBody() => jsonEncode(bundle);

  @override
  Future<http.Response> sendRequest() {
    return client.post(buildUri(), headers: buildHeaders(), body: buildBody());
  }
}

/// 13. Operation Request (POST or GET)
class FhirOperationRequest extends FhirRequest {
  /// Main constructor for [FhirOperationRequest ]
  FhirOperationRequest({
    required super.base,
    required this.operation,
    this.id,
    this.resourceType,
    this.usePost = false,
    super.parameters,
    super.headers = const <String, String>{},
    super.client,
  });

  /// Operation to perform
  final String operation;

  /// ID of the resource to perform the operation on
  final String? id;

  /// Resource type to perform the operation on
  final String? resourceType;

  /// Use POST request
  final bool usePost;

  @override
  Uri buildUri() {
    final operationPath =
        resourceType != null ? '/$resourceType/$operation' : '/$operation';
    final idPath = id != null ? '/$id' : '';
    final baseUri = Uri.parse('$base$idPath$operationPath');
    return buildUriWithParams(baseUri, parameters?.buildQuery());
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
