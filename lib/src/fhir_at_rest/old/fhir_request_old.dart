// // ignore_for_file: avoid_dynamic_calls, sort_unnamed_constructors_first

// 
// import 'dart:convert';

// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:http/http.dart';
// import 'package:universal_io/io.dart';

// import '../../../fhir_r4.dart';

// part '../fhir_request.freezed.dart';
// part '../fhir_request.g.dart';

// @freezed
// class FhirRequest with _$FhirRequest {
//   FhirRequest._();

//   factory FhirRequest.read({
//     required Uri base,
//     required R4ResourceType type,
//     required String id,
//     bool? pretty,
//     @Default(Summary.none) Summary summary,
//     @Default('json') String? format,
//     @Default(<String>[]) List<String> elements,
//     @Default(<String>[]) List<String> parameters,
//     SupportedMimeType? mimeType,
//     @Default('application/fhir+json') String accept,

//     // ignore: invalid_annotation_target
//     @JsonKey(includeFromJson: false, includeToJson: false) Client? client,
//     Map<String, String>? headers,
//   }) = FhirReadRequest;

//   factory FhirRequest.vRead({
//     required Uri base,
//     required R4ResourceType type,
//     required String id,
//     required FhirId vid,
//     bool? pretty,
//     @Default(Summary.none) Summary summary,
//     @Default('json') String? format,
//     @Default(<String>[]) List<String> elements,
//     @Default(<String>[]) List<String> parameters,
//     SupportedMimeType? mimeType,
//     @Default('application/fhir+json') String accept,

//     // ignore: invalid_annotation_target
//     @JsonKey(includeFromJson: false, includeToJson: false) Client? client,
//     Map<String, String>? headers,
//   }) = FhirVReadRequest;

//   factory FhirRequest.update({
//     required Uri base,
//     required Resource resource,
//     bool? pretty,
//     @Default(Summary.none) Summary summary,
//     @Default('json') String? format,
//     @Default(<String>[]) List<String> elements,
//     @Default(<String>[]) List<String> parameters,
//     SupportedMimeType? mimeType,
//     @Default('application/fhir+json') String accept,

//     // ignore: invalid_annotation_target
//     @JsonKey(includeFromJson: false, includeToJson: false) Client? client,
//     Map<String, String>? headers,
//   }) = FhirUpdateRequest;

//   factory FhirRequest.patch({
//     required Uri base,
//     required Resource resource,
//     bool? pretty,
//     @Default(Summary.none) Summary summary,
//     @Default('json') String? format,
//     @Default(<String>[]) List<String> elements,
//     @Default(<String>[]) List<String> parameters,
//     SupportedMimeType? mimeType,
//     @Default('application/fhir+json') String accept,

//     // ignore: invalid_annotation_target
//     @JsonKey(includeFromJson: false, includeToJson: false) Client? client,
//     Map<String, String>? headers,
//   }) = FhirPatchRequest;

//   factory FhirRequest.delete({
//     required Uri base,
//     required R4ResourceType type,
//     required String id,
//     bool? pretty,
//     @Default(Summary.none) Summary summary,
//     @Default('json') String? format,
//     @Default(<String>[]) List<String> elements,
//     @Default(<String>[]) List<String> parameters,
//     SupportedMimeType? mimeType,
//     @Default('application/fhir+json') String accept,

//     // ignore: invalid_annotation_target
//     @JsonKey(includeFromJson: false, includeToJson: false) Client? client,
//     Map<String, String>? headers,
//   }) = FhirDeleteRequest;

//   factory FhirRequest.create({
//     required Uri base,
//     required Resource resource,
//     bool? pretty,
//     @Default(Summary.none) Summary summary,
//     @Default('json') String? format,
//     @Default(<String>[]) List<String> elements,
//     @Default(<String>[]) List<String> parameters,
//     SupportedMimeType? mimeType,
//     @Default('application/fhir+json') String accept,

//     // ignore: invalid_annotation_target
//     @JsonKey(includeFromJson: false, includeToJson: false) Client? client,
//     Map<String, String>? headers,
//   }) = FhirCreateRequest;

//   factory FhirRequest.search({
//     required Uri base,
//     required R4ResourceType type,
//     bool? pretty,
//     @Default(Summary.none) Summary summary,
//     @Default('json') String? format,
//     @Default(<String>[]) List<String> elements,
//     @Default(<String>[]) List<String> parameters,
//     @Default(false) bool usePost,
//     @Default(RestfulRequest.get_) RestfulRequest restfulRequest,
//     SupportedMimeType? mimeType,
//     @Default('application/fhir+json') String accept,

//     // ignore: invalid_annotation_target
//     @JsonKey(includeFromJson: false, includeToJson: false) Client? client,
//     Map<String, String>? headers,
//   }) = FhirSearchRequest;

//   factory FhirRequest.searchAll({
//     required Uri base,
//     bool? pretty,
//     @Default(Summary.none) Summary summary,
//     @Default('json') String? format,
//     @Default(<String>[]) List<String> elements,
//     @Default(<String>[]) List<String> parameters,
//     SupportedMimeType? mimeType,
//     @Default('application/fhir+json') String accept,

//     // ignore: invalid_annotation_target
//     @JsonKey(includeFromJson: false, includeToJson: false) Client? client,
//     Map<String, String>? headers,
//   }) = FhirSearchAllRequest;

//   factory FhirRequest.capabilities({
//     required Uri base,
//     bool? pretty,
//     @Default(Summary.none) Summary summary,
//     @Default('json') String? format,
//     @Default(<String>[]) List<String> elements,
//     @Default(<String>[]) List<String> parameters,
//     @Default(Mode.full) Mode mode,
//     SupportedMimeType? mimeType,
//     @Default('application/fhir+json') String accept,

//     // ignore: invalid_annotation_target
//     @JsonKey(includeFromJson: false, includeToJson: false) Client? client,
//     Map<String, String>? headers,
//   }) = FhirCapabilitiesRequest;

//   factory FhirRequest.transaction({
//     required Uri base,
//     bool? pretty,
//     @Default(Summary.none) Summary summary,
//     @Default('json') String? format,
//     @Default(<String>[]) List<String> elements,
//     @Default(<String>[]) List<String> parameters,
//     required Bundle bundle,
//     SupportedMimeType? mimeType,
//     @Default('application/fhir+json') String accept,

//     // ignore: invalid_annotation_target
//     @JsonKey(includeFromJson: false, includeToJson: false) Client? client,
//     Map<String, String>? headers,
//   }) = FhirTransactionRequest;

//   factory FhirRequest.batch({
//     required Uri base,
//     bool? pretty,
//     @Default(Summary.none) Summary summary,
//     @Default('json') String? format,
//     @Default(<String>[]) List<String> elements,
//     @Default(<String>[]) List<String> parameters,
//     required Bundle bundle,
//     SupportedMimeType? mimeType,
//     @Default('application/fhir+json') String accept,

//     // ignore: invalid_annotation_target
//     @JsonKey(includeFromJson: false, includeToJson: false) Client? client,
//     Map<String, String>? headers,
//   }) = FhirBatchRequest;

//   factory FhirRequest.history({
//     required Uri base,
//     required R4ResourceType type,
//     required String id,
//     bool? pretty,
//     @Default(Summary.none) Summary summary,
//     @Default('json') String? format,
//     @Default(<String>[]) List<String> elements,
//     @Default(<String>[]) List<String> parameters,
//     int? count,
//     FhirInstant? since,
//     FhirDateTime? at,
//     String? reference,
//     SupportedMimeType? mimeType,
//     @Default('application/fhir+json') String accept,

//     // ignore: invalid_annotation_target
//     @JsonKey(includeFromJson: false, includeToJson: false) Client? client,
//     Map<String, String>? headers,
//   }) = FhirHistoryRequest;

//   factory FhirRequest.historyType({
//     required Uri base,
//     required R4ResourceType type,
//     bool? pretty,
//     @Default(Summary.none) Summary summary,
//     @Default('json') String? format,
//     @Default(<String>[]) List<String> elements,
//     @Default(<String>[]) List<String> parameters,
//     int? count,
//     FhirInstant? since,
//     FhirDateTime? at,
//     String? reference,
//     SupportedMimeType? mimeType,
//     @Default('application/fhir+json') String accept,

//     // ignore: invalid_annotation_target
//     @JsonKey(includeFromJson: false, includeToJson: false) Client? client,
//     Map<String, String>? headers,
//   }) = FhirHistoryTypeRequest;

//   factory FhirRequest.historyAll({
//     required Uri base,
//     bool? pretty,
//     @Default(Summary.none) Summary summary,
//     @Default('json') String? format,
//     @Default(<String>[]) List<String> elements,
//     @Default(<String>[]) List<String> parameters,
//     int? count,
//     FhirInstant? since,
//     FhirDateTime? at,
//     String? reference,
//     SupportedMimeType? mimeType,
//     @Default('application/fhir+json') String accept,

//     // ignore: invalid_annotation_target
//     @JsonKey(includeFromJson: false, includeToJson: false) Client? client,
//     Map<String, String>? headers,
//   }) = FhirHistoryAllRequest;

//   factory FhirRequest.operation({
//     required Uri base,
//     R4ResourceType? type,
//     String? id,
//     bool? pretty,
//     @Default(Summary.none) Summary summary,
//     @Default('json') String? format,
//     @Default(<String>[]) List<String> elements,
//     @Default(<String>[]) List<String> parameters,
//     Parameters? fhirParameter,
//     required String operation,
//     @Default(false) bool usePost,
//     @Default(false) bool useFormData,
//     SupportedMimeType? mimeType,
//     @Default('application/fhir+json') String accept,

//     // ignore: invalid_annotation_target
//     @JsonKey(includeFromJson: false, includeToJson: false) Client? client,
//     Map<String, String>? headers,
//   }) = FhirOperationRequest;

//   factory FhirRequest.fromJson(Map<String, dynamic> json) =>
//       _$FhirRequestFromJson(json);

//   factory FhirRequest.fromJsonString(String source) {
//     final dynamic json = jsonDecode(source);
//     if (json is Map<String, dynamic>) {
//       return _$FhirRequestFromJson(json);
//     } else {
//       throw FormatException('FormatException:\nYou passed $json\n'
//           'This does not properly decode to a Map<String,dynamic>.');
//     }
//   }

//   String toJsonString() => jsonEncode(toJson());

//   Future<Resource> request({Map<String, String>? headers}) async => map(
//       read: (FhirReadRequest request) async => _request(
//             RestfulRequest.get_,
//             uri(parameters: parameters),
//             headers,
//             'Read',
//             accept,
//             mimeType: mimeType,
//           ),
//       vRead: (FhirVReadRequest request) async => _request(
//             RestfulRequest.get_,
//             uri(parameters: parameters),
//             headers,
//             'Vread',
//             accept,
//             mimeType: mimeType,
//           ),
//       update: (FhirUpdateRequest request) async => _request(
//             RestfulRequest.put_,
//             uri(parameters: parameters),
//             headers,
//             'Update',
//             accept,
//             resource: (this as FhirUpdateRequest).resource,
//             mimeType: mimeType,
//           ),
//       patch: (FhirPatchRequest request) async => _request(
//             RestfulRequest.patch_,
//             uri(parameters: parameters),
//             headers,
//             'Patch',
//             accept,
//             resource: (this as FhirPatchRequest).resource,
//             mimeType: mimeType,
//           ),
//       delete: (FhirDeleteRequest request) async => _request(
//             RestfulRequest.delete_,
//             uri(parameters: parameters),
//             headers,
//             'Delete',
//             accept,
//             mimeType: mimeType,
//           ),
//       create: (FhirCreateRequest request) async => _request(
//             RestfulRequest.post_,
//             uri(parameters: parameters),
//             headers,
//             'Create',
//             accept,
//             resource: (this as FhirCreateRequest).resource,
//             mimeType: mimeType,
//           ),
//       search: (FhirSearchRequest request) async => _request(
//             (this as FhirSearchRequest).usePost
//                 ? RestfulRequest.post_
//                 : RestfulRequest.get_,
//             (this as FhirSearchRequest).usePost
//                 ? url
//                 : uri(parameters: parameters),
//             headers,
//             'Search',
//             accept,
//             formData: (this as FhirSearchRequest).usePost
//                 ? (this as FhirSearchRequest).formData(parameters: parameters)
//                 : null,
//             mimeType: mimeType,
//           ),
//       searchAll: (FhirSearchAllRequest request) async => _request(
//             RestfulRequest.get_,
//             uri(parameters: parameters),
//             headers,
//             'Search All',
//             accept,
//             mimeType: mimeType,
//           ),
//       capabilities: (FhirCapabilitiesRequest request) async => _request(
//             RestfulRequest.get_,
//             uri(parameters: parameters),
//             headers,
//             'Capabilities',
//             accept,
//             mimeType: mimeType,
//           ),
//       transaction: (FhirTransactionRequest request) async {
//         if ((this as FhirTransactionRequest).bundle.type.toString() !=
//             'transaction') {
//           return _operationOutcome(
//               'A Transaction request was made, but no Bundle was included.');
//         }
//         if ((this as FhirTransactionRequest).bundle.entry != null) {
//           for (final BundleEntry entry
//               in (this as FhirTransactionRequest).bundle.entry!) {
//             if (entry.request == null) {
//               return _operationOutcome(
//                   'Each bundle entry requires a request, but at least one of '
//                   'the entries in this bundle is missing a request.');
//             } else if (entry.request?.method == null) {
//               return _operationOutcome(
//                   'Each bundle entry request needs a method type specified, but'
//                   ' at least one entry in this bundle is missing a method');
//             }
//           }
//         }
//         return _request(
//           RestfulRequest.post_,
//           uri(),
//           headers,
//           'Transaction',
//           accept,
//           resource: (this as FhirTransactionRequest).bundle,
//           mimeType: mimeType,
//         );
//       },
//       batch: (FhirBatchRequest request) async {
//         if ((this as FhirBatchRequest).bundle.type.toString() != 'batch') {
//           return _operationOutcome(
//               'A Batch request was made, but the included Bundle is not a'
//               ' batch type.');
//         }
//         if ((this as FhirBatchRequest).bundle.entry != null) {
//           for (final BundleEntry entry
//               in (this as FhirBatchRequest).bundle.entry!) {
//             if (entry.request == null) {
//               return _operationOutcome(
//                   'Each bundle entry requires a request, but at least one of '
//                   'the entries in this bundle is missing a request.');
//             } else if (entry.request?.method == null) {
//               return _operationOutcome(
//                   'Each bundle entry request needs a method type specified, but'
//                   ' at least one entry in this bundle is missing a method');
//             }
//           }
//         }
//         return _request(
//           RestfulRequest.post_,
//           uri(),
//           headers,
//           'Batch',
//           accept,
//           resource: (this as FhirBatchRequest).bundle,
//           mimeType: mimeType,
//         );
//       },
//       history: (FhirHistoryRequest request) async {
//         final List<String> parameterList = <String>[];
//         final List<String> hxList = _hxParameters(
//             (this as FhirHistoryRequest).count,
//             (this as FhirHistoryRequest).since,
//             (this as FhirHistoryRequest).at,
//             (this as FhirHistoryRequest).reference);

//         if (hxList.isNotEmpty) {
//           parameterList.addAll(hxList);
//         }
//         if (parameters.isNotEmpty) {
//           parameterList.addAll(parameters);
//         }

//         return _request(
//           RestfulRequest.get_,
//           uri(parameters: parameterList),
//           headers,
//           'History',
//           accept,
//           mimeType: mimeType,
//         );
//       },
//       historyType: (FhirHistoryTypeRequest request) async {
//         final List<String> parameterList = <String>[];
//         final List<String> hxList = _hxParameters(
//             (this as FhirHistoryTypeRequest).count,
//             (this as FhirHistoryTypeRequest).since,
//             (this as FhirHistoryTypeRequest).at,
//             (this as FhirHistoryTypeRequest).reference);

//         if (hxList.isNotEmpty) {
//           parameterList.addAll(hxList);
//         }
//         if (parameters.isNotEmpty) {
//           parameterList.addAll(parameters);
//         }

//         return _request(
//           RestfulRequest.get_,
//           uri(parameters: parameterList),
//           headers,
//           'History Type',
//           accept,
//           mimeType: mimeType,
//         );
//       },
//       historyAll: (FhirHistoryAllRequest request) async {
//         final List<String> parameterList = <String>[];
//         final List<String> hxList = _hxParameters(
//             (this as FhirHistoryAllRequest).count,
//             (this as FhirHistoryAllRequest).since,
//             (this as FhirHistoryAllRequest).at,
//             (this as FhirHistoryAllRequest).reference);

//         if (hxList.isNotEmpty) {
//           parameterList.addAll(hxList);
//         }
//         if (parameters.isNotEmpty) {
//           parameterList.addAll(parameters);
//         }

//         return _request(
//           RestfulRequest.get_,
//           uri(parameters: parameterList),
//           headers,
//           'History all',
//           accept,
//           mimeType: mimeType,
//         );
//       },
//       operation: (FhirOperationRequest request) async => _request(
//             (this as FhirOperationRequest).usePost ||
//                     (this as FhirOperationRequest).fhirParameter != null
//                 ? RestfulRequest.post_
//                 : RestfulRequest.get_,
//             (this as FhirOperationRequest).usePost ||
//                     (this as FhirOperationRequest).fhirParameter != null
//                 ? url
//                 : uri(parameters: parameters),
//             headers,
//             'Operation',
//             accept,
//             resource: ((this as FhirOperationRequest).usePost &&
//                         !(this as FhirOperationRequest).useFormData) ||
//                     (this as FhirOperationRequest).fhirParameter != null
//                 ? (this as FhirOperationRequest).fhirParameter
//                 : null,
//             formData: (this as FhirOperationRequest).usePost &&
//                     (this as FhirOperationRequest).useFormData
//                 ? (this as FhirOperationRequest)
//                     .formData(parameters: parameters)
//                 : null,
//             mimeType: mimeType,
//           ));

//   FhirHttpRequest toFhirHttpRequest({Map<String, String>? headers}) => map(
//         read: (FhirReadRequest request) => FhirHttpRequest.fromFhirRequest(
//           type: RestfulRequest.get_,
//           url: uri(parameters: parameters),
//           headers: headers,
//           accept: accept,
//           mimeType: mimeType,
//         ),
//         vRead: (FhirVReadRequest request) => FhirHttpRequest.fromFhirRequest(
//           type: RestfulRequest.get_,
//           url: uri(parameters: parameters),
//           headers: headers,
//           accept: accept,
//           mimeType: mimeType,
//         ),
//         update: (FhirUpdateRequest request) => FhirHttpRequest.fromFhirRequest(
//           type: RestfulRequest.put_,
//           url: uri(parameters: parameters),
//           headers: headers,
//           accept: accept,
//           resource: (this as FhirUpdateRequest).resource.toJson(),
//           mimeType: mimeType,
//         ),
//         patch: (FhirPatchRequest request) => FhirHttpRequest.fromFhirRequest(
//           type: RestfulRequest.patch_,
//           url: uri(parameters: parameters),
//           headers: headers,
//           accept: accept,
//           resource: (this as FhirPatchRequest).resource.toJson(),
//           mimeType: mimeType,
//         ),
//         delete: (FhirDeleteRequest request) => FhirHttpRequest.fromFhirRequest(
//           type: RestfulRequest.delete_,
//           url: uri(parameters: parameters),
//           headers: headers,
//           accept: accept,
//           mimeType: mimeType,
//         ),
//         create: (FhirCreateRequest request) => FhirHttpRequest.fromFhirRequest(
//           type: RestfulRequest.post_,
//           url: uri(parameters: parameters),
//           headers: headers,
//           accept: accept,
//           resource: (this as FhirCreateRequest).resource.toJson(),
//           mimeType: mimeType,
//         ),
//         search: (FhirSearchRequest request) => FhirHttpRequest.fromFhirRequest(
//           type: (this as FhirSearchRequest).usePost
//               ? RestfulRequest.post_
//               : RestfulRequest.get_,
//           url: (this as FhirSearchRequest).usePost
//               ? url
//               : uri(parameters: parameters),
//           headers: headers,
//           accept: accept,
//           formData: (this as FhirSearchRequest).usePost
//               ? (this as FhirSearchRequest).formData(parameters: parameters)
//               : null,
//           mimeType: mimeType,
//         ),
//         searchAll: (FhirSearchAllRequest request) =>
//             FhirHttpRequest.fromFhirRequest(
//           type: RestfulRequest.get_,
//           url: uri(parameters: parameters),
//           headers: headers,
//           accept: accept,
//           mimeType: mimeType,
//         ),
//         capabilities: (FhirCapabilitiesRequest request) =>
//             FhirHttpRequest.fromFhirRequest(
//           type: RestfulRequest.get_,
//           url: uri(parameters: parameters),
//           headers: headers,
//           accept: accept,
//           mimeType: mimeType,
//         ),
//         transaction: (FhirTransactionRequest request) {
//           if ((this as FhirTransactionRequest).bundle.type.toString() !=
//               'transaction') {
//             throw const FormatException(
//                 'A Transaction request was made, but no Bundle was included.');
//           }
//           if ((this as FhirTransactionRequest).bundle.entry != null) {
//             for (final BundleEntry entry
//                 in (this as FhirTransactionRequest).bundle.entry!) {
//               if (entry.request == null) {
//                 throw const FormatException(
//                     'Each bundle entry requires a request, but at least one of '
//                     'the entries in this bundle is missing a request.');
//               } else if (entry.request?.method == null) {
//                 throw const FormatException(
//                     'Each bundle entry request needs a method type specified, but'
//                     ' at least one entry in this bundle is missing a method');
//               }
//             }
//           }
//           return FhirHttpRequest.fromFhirRequest(
//             type: RestfulRequest.post_,
//             url: uri(),
//             headers: headers,
//             accept: accept,
//             resource: (this as FhirTransactionRequest).bundle.toJson(),
//             mimeType: mimeType,
//           );
//         },
//         batch: (FhirBatchRequest request) {
//           if ((this as FhirBatchRequest).bundle.type.toString() != 'batch') {
//             throw const FormatException(
//                 'A Batch request was made, but the included Bundle is not a'
//                 ' batch type.');
//           }
//           if ((this as FhirBatchRequest).bundle.entry != null) {
//             for (final BundleEntry entry
//                 in (this as FhirBatchRequest).bundle.entry!) {
//               if (entry.request == null) {
//                 throw const FormatException(
//                     'Each bundle entry requires a request, but at least one of '
//                     'the entries in this bundle is missing a request.');
//               } else if (entry.request?.method == null) {
//                 throw const FormatException(
//                     'Each bundle entry request needs a method type specified, but'
//                     ' at least one entry in this bundle is missing a method');
//               }
//             }
//           }
//           return FhirHttpRequest.fromFhirRequest(
//             type: RestfulRequest.post_,
//             url: uri(),
//             headers: headers,
//             accept: accept,
//             resource: (this as FhirBatchRequest).bundle.toJson(),
//             mimeType: mimeType,
//           );
//         },
//         history: (FhirHistoryRequest request) {
//           final List<String> parameterList = <String>[];
//           final List<String> hxList = _hxParameters(
//               (this as FhirHistoryRequest).count,
//               (this as FhirHistoryRequest).since,
//               (this as FhirHistoryRequest).at,
//               (this as FhirHistoryRequest).reference);

//           if (hxList.isNotEmpty) {
//             parameterList.addAll(hxList);
//           }
//           if (parameters.isNotEmpty) {
//             parameterList.addAll(parameters);
//           }

//           return FhirHttpRequest.fromFhirRequest(
//             type: RestfulRequest.get_,
//             url: uri(parameters: parameterList),
//             headers: headers,
//             accept: accept,
//             mimeType: mimeType,
//           );
//         },
//         historyType: (FhirHistoryTypeRequest request) {
//           final List<String> parameterList = <String>[];
//           final List<String> hxList = _hxParameters(
//               (this as FhirHistoryTypeRequest).count,
//               (this as FhirHistoryTypeRequest).since,
//               (this as FhirHistoryTypeRequest).at,
//               (this as FhirHistoryTypeRequest).reference);

//           if (hxList.isNotEmpty) {
//             parameterList.addAll(hxList);
//           }
//           if (parameters.isNotEmpty) {
//             parameterList.addAll(parameters);
//           }

//           return FhirHttpRequest.fromFhirRequest(
//             type: RestfulRequest.get_,
//             url: uri(parameters: parameterList),
//             headers: headers,
//             accept: accept,
//             mimeType: mimeType,
//           );
//         },
//         historyAll: (FhirHistoryAllRequest request) {
//           final List<String> parameterList = <String>[];
//           final List<String> hxList = _hxParameters(
//               (this as FhirHistoryAllRequest).count,
//               (this as FhirHistoryAllRequest).since,
//               (this as FhirHistoryAllRequest).at,
//               (this as FhirHistoryAllRequest).reference);

//           if (hxList.isNotEmpty) {
//             parameterList.addAll(hxList);
//           }
//           if (parameters.isNotEmpty) {
//             parameterList.addAll(parameters);
//           }

//           return FhirHttpRequest.fromFhirRequest(
//             type: RestfulRequest.get_,
//             url: uri(parameters: parameterList),
//             headers: headers,
//             accept: accept,
//             mimeType: mimeType,
//           );
//         },
//         operation: (FhirOperationRequest request) {
//           return FhirHttpRequest.fromFhirRequest(
//             type: (this as FhirOperationRequest).usePost ||
//                     (this as FhirOperationRequest).fhirParameter != null
//                 ? RestfulRequest.post_
//                 : RestfulRequest.get_,
//             url: (this as FhirOperationRequest).usePost ||
//                     (this as FhirOperationRequest).fhirParameter != null
//                 ? url
//                 : uri(parameters: parameters),
//             headers: headers,
//             accept: accept,
//             resource: ((this as FhirOperationRequest).usePost &&
//                         !(this as FhirOperationRequest).useFormData) ||
//                     (this as FhirOperationRequest).fhirParameter != null
//                 ? (this as FhirOperationRequest).fhirParameter!.toJson()
//                 : null,
//             formData: (this as FhirOperationRequest).usePost &&
//                     (this as FhirOperationRequest).useFormData
//                 ? (this as FhirOperationRequest)
//                     .formData(parameters: parameters)
//                 : null,
//             mimeType: mimeType,
//           );
//         },
//       );

//   List<String> _hxParameters(
//     int? count,
//     FhirInstant? since,
//     FhirDateTime? at,
//     String? reference,
//   ) {
//     final List<String> parameters = <String>[];
//     if (count != null) {
//       parameters.add('_count=$count');
//     }
//     if (since != null) {
//       parameters.add('_since=$since');
//     }
//     if (at != null) {
//       parameters.add('_at=$at');
//     }
//     if (reference != null) {
//       parameters.add('_list=$reference');
//     }
//     return parameters;
//   }

//   Future<Resource> _request(
//     RestfulRequest type,
//     String uri,
//     Map<String, String>? headers,
//     String requestType,
//     String accept, {
//     Resource? resource,
//     String? formData,
//     SupportedMimeType? mimeType,
//   }) async {
//     try {
//       final Resource result = await _makeRequest(
//         type: type,
//         thisRequest: uri,
//         client: client,
//         headers: headers,
//         accept: accept,
//         resource: resource?.toJson(),
//         mimeType: mimeType,
//       );

//       return result;
//     } catch (e, stack) {
//       return _operationOutcome(
//           'Failed to complete a $requestType request. \n'
//           'Point of failure was the Future<Resource> _request() function',
//           diagnostics: 'Exception: $e\nStack: $stack');
//     }
//   }

//   String uri({List<String> parameters = const <String>[]}) {
//     String uri = _url();
//     uri += '?';
//     uri += _mode();
//     uri += _format();
//     uri += _pretty();
//     uri += _summary();
//     uri += _urlElements();
//     uri += _urlParameters(parameters);
//     return uri;
//   }

//   String get url {
//     String uri = _url();
//     uri += '?';
//     uri += _mode();
//     uri += _format();
//     uri += _pretty();
//     uri += _summary();
//     uri += _urlElements();
//     return uri;
//   }

//   String formData({List<String> parameters = const <String>[]}) {
//     return _urlParameters(parameters, join: false);
//   }

//   String _encodeParam(String value, {bool join = true}) =>
//       '${join ? '&' : ''}$value';

//   String _mode({bool join = false}) => maybeMap(
//       capabilities: (FhirCapabilitiesRequest request) =>
//           _encodeParam('mode=${enumToString(request.mode)}', join: join),
//       orElse: () => '');

//   String _format({bool join = false}) => format == null
//       ? ''
//       : maybeMap(
//           capabilities: (FhirCapabilitiesRequest request) =>
//               _encodeParam('_format=${request.format}'),
//           orElse: () => _encodeParam('_format=$format', join: join));

//   String _pretty({bool join = true}) =>
//       pretty == null ? '' : _encodeParam('_pretty=$pretty', join: join);

//   String _summary({bool join = true}) => summary != Summary.none
//       ? _encodeParam('_summary=${enumToString(summary)}', join: join)
//       : '';

//   String _urlElements({bool join = true}) => elements.isNotEmpty
//       ? _encodeParam('_elements=${elements.join(",")}', join: join)
//       : '';

//   String _urlParameters(List<String> parameters, {bool join = true}) {
//     if (parameters.isEmpty) {
//       return '';
//     } else {
//       String parametersString = '';
//       for (int i = 0; i < parameters.length; i++) {
//         parametersString += _encodeParam(parameters[i], join: i != 0 || join);
//       }
//       return parametersString;
//     }
//   }

//   String _url() => map(
//         read: (FhirReadRequest request) =>
//             '${request.base}/${enumToString(request.type)}/${request.id}',
//         vRead: (FhirVReadRequest request) =>
//             '${request.base}/${enumToString(request.type)}/${request.id}/_history/${request.vid}',
//         update: (FhirUpdateRequest request) =>
//             '${request.base}/${request.resource.resourceTypeString}/${request.resource.id}',
//         patch: (FhirPatchRequest request) =>
//             '${request.base}/${request.resource.resourceTypeString}/${request.resource.id}',
//         delete: (FhirDeleteRequest request) =>
//             '${request.base}/${enumToString(request.type)}/${request.id}',
//         create: (FhirCreateRequest request) =>
//             '${request.base}/${enumToString(request.resource.resourceTypeString)}',
//         search: (FhirSearchRequest request) =>
//             '${request.base}/${enumToString(request.type)}'
//             '${request.restfulRequest == RestfulRequest.post_ ? '/_search' : ''}',
//         searchAll: (FhirSearchAllRequest request) => '${request.base}',
//         capabilities: (FhirCapabilitiesRequest request) =>
//             '${request.base}/metadata',
//         transaction: (FhirTransactionRequest request) => '${request.base}',
//         batch: (FhirBatchRequest request) => '${request.base}',
//         history: (FhirHistoryRequest request) =>
//             '${request.base}/${enumToString(request.type)}/${request.id}/_history',
//         historyType: (FhirHistoryTypeRequest request) =>
//             '${request.base}/${enumToString(request.type)}/_history',
//         historyAll: (FhirHistoryAllRequest request) =>
//             '${request.base}/_history',
//         operation: (FhirOperationRequest request) => '${request.base}/'
//             '${request.type != null ? "${enumToString(request.type)}/" : ''}'
//             '${request.type != null && request.id != null ? "${enumToString(request.id)}/" : ''}'
//             '\$${request.operation}',
//       );

//   Future<Resource> _makeRequest({
//     required RestfulRequest type,
//     required String thisRequest,
//     Map<String, String>? headers,
//     Map<String, dynamic>? resource,
//     String? formData,
//     Encoding? encoding,
//     required String accept,
//     SupportedMimeType? mimeType,
//     Client? client,
//   }) async {
//     headers ??= <String, String>{};
//     headers['Accept'] = accept;
//     Response result;
//     client ??= Client();

//     if (Platform.environment.containsKey('FLUTTER_TEST')) {
//       return _operationOutcome(thisRequest);
//     }

//     try {
//       switch (type) {
//         case RestfulRequest.get_:
//           {
//             result = await client.get(
//               Uri.parse(thisRequest),
//               headers: headers,
//             );
//             break;
//           }
//         case RestfulRequest.put_:
//           {
//             headers['Content-Type'] =
//                 mimeType == null || SupportedMimeTypeEnumMap[mimeType] == null
//                     ? 'application/fhir+json'
//                     : SupportedMimeTypeEnumMap[mimeType]!;
//             result = await client.put(
//               Uri.parse(thisRequest),
//               headers: headers,
//               body: jsonEncode(resource),
//               encoding: encoding,
//             );
//             break;
//           }
//         case RestfulRequest.delete_:
//           {
//             result = await client.delete(
//               Uri.parse(thisRequest),
//               headers: headers,
//             );
//             break;
//           }
//         case RestfulRequest.patch_:
//           {
//             headers['Content-Type'] =
//                 mimeType == null || SupportedMimeTypeEnumMap[mimeType] == null
//                     ? 'application/json-patch+json'
//                     : SupportedMimeTypeEnumMap[mimeType]!;
//             result = await client.patch(
//               Uri.parse(thisRequest),
//               headers: headers,
//               body: jsonEncode(resource),
//               encoding: encoding,
//             );
//             break;
//           }
//         case RestfulRequest.post_:
//           {
//             headers['Content-Type'] = formData != null
//                 ? 'application/x-www-form-urlencoded'
//                 : mimeType == null || SupportedMimeTypeEnumMap[mimeType] == null
//                     ? 'application/fhir+json'
//                     : SupportedMimeTypeEnumMap[mimeType]!;
//             result = await client.post(
//               Uri.parse(thisRequest),
//               headers: headers,
//               body: formData ?? jsonEncode(resource),
//               encoding: encoding,
//             );
//             break;
//           }
//       }
//     } catch (e, stack) {
//       return _operationOutcome(
//           'Failed to complete a $type request. '
//           'The error occurred during the actual process of making the request. '
//           "This means it's most likely an issue on the side of the app, not the server.",
//           diagnostics: 'Exception: $e\nStack: $stack');
//     }

//     if (_errorCodes.containsKey(result.statusCode)) {
//       return OperationOutcome(issue: <OperationOutcomeIssue>[
//         OperationOutcomeIssue(
//           severity: FhirCode('error'),
//           code: FhirCode('unknown'),
//           details: CodeableConcept(
//               text: 'Failed to complete a restful request.\n'
//                   'The request was made, and a failing status code of some kind was returned.\n'
//                   'See details below.'),
//           diagnostics: '\nStatus Code: ${result.statusCode} -'
//               ' ${_errorCodes[result.statusCode]}'
//               '\nResult headers: ${result.headers}'
//               '\nResult body: ${result.body}',
//         )
//       ]);
//     } else {
//       if (result.body == '') {
//         if (result.statusCode == 200 || result.statusCode == 201) {
//           return OperationOutcome(issue: <OperationOutcomeIssue>[
//             OperationOutcomeIssue(
//                 severity: FhirCode('information'),
//                 code: FhirCode('informational'),
//                 diagnostics: 'Your request succeeded with a status of '
//                     '${result.statusCode}\n, but the request result did not have '
//                     'did not include a body/had no information in its body\n'
//                     'Your request was:'
//                     '\nRequestType: $type'
//                     '\nRequestUrl: $thisRequest'
//                     '\nRequestHeaders: $headers'
//                     '\nRequestBody: ${formData ?? jsonEncode(resource)}'
//                     '\nYour result was:'
//                     '\nResultHeaders: ${result.headers}',
//                 location: result.headers['Location'] == null
//                     ? null
//                     : <String>[result.headers['Location']!]),
//           ]);
//         } else {
//           return OperationOutcome(issue: <OperationOutcomeIssue>[
//             OperationOutcomeIssue(
//                 severity: FhirCode('information'),
//                 code: FhirCode('informational'),
//                 diagnostics: 'Your request succeeded with a status of '
//                     '${result.statusCode}\n, but the request result did not have '
//                     'did not include a body/had no information in its body\n'
//                     'Your request was:'
//                     '\nRequestType: $type'
//                     '\nRequestUrl: $thisRequest'
//                     '\nRequestHeaders: $headers'
//                     '\nRequestBody: ${formData ?? jsonEncode(resource)}'
//                     '\nYour result was:'
//                     '\nResultHeaders: ${result.headers}',
//                 location: result.headers['Location'] == null
//                     ? null
//                     : <String>[result.headers['Location']!]),
//           ]);
//         }
//       } else {
//         final dynamic body = jsonDecode(result.body);
//         if (body?['resourceType'] == null) {
//           return OperationOutcome(issue: <OperationOutcomeIssue>[
//             OperationOutcomeIssue(
//               severity: FhirCode('error'),
//               code: FhirCode('unknown'),
//               details: CodeableConcept(
//                   text:
//                       'Request was made, but the result body had no defined response'),
//               diagnostics: '\nStatus Code: ${result.statusCode} -'
//                   ' ${_errorCodes[result.statusCode]}'
//                   '\nResultHeaders: ${result.headers}'
//                   '\nResultBody: ${result.body}',
//             )
//           ]);
//         } else if (body['resourceType'] == 'OperationOutcome') {
//           return OperationOutcome.fromJson(body as Map<String, dynamic>);
//         } else {
//           final Resource newResource = Resource.fromJson(
//               jsonDecode(result.body) as Map<String, dynamic>);
//           return newResource;
//         }
//       }
//     }
//   }

//   OperationOutcome _operationOutcome(String issue, {String? diagnostics}) =>
//       OperationOutcome(issue: <OperationOutcomeIssue>[
//         OperationOutcomeIssue(
//           severity: FhirCode('error'),
//           code: FhirCode('value'),
//           details: CodeableConcept(text: issue),
//           diagnostics: diagnostics,
//         )
//       ]);

//   static const Map<int, String> _errorCodes = <int, String>{
//     400: 'Bad Request',
//     401: 'Not Authorized',
//     404: 'Not Found',
//     405: 'Method Not Allowed',
//     409: 'Version Conflict',
//     412: 'Version Conflict',
//     422: 'Unprocessable Entity',
//   };
// }

// @freezed
// class FhirHttpRequest with _$FhirHttpRequest {
//   FhirHttpRequest._();
//   factory FhirHttpRequest({
//     required RestfulRequest type,
//     required String url,
//     required Map<String, String> headers,
//     Map<String, dynamic>? body,
//   }) = _FhirHttpRequest;

//   factory FhirHttpRequest.fromFhirRequest({
//     required RestfulRequest type,
//     required String url,
//     Map<String, String>? headers,
//     Map<String, dynamic>? resource,
//     String? formData,
//     required String accept,
//     SupportedMimeType? mimeType,
//     Client? client,
//   }) {
//     headers ??= <String, String>{};
//     headers['Accept'] = accept;
//     client ??= Client();

//     switch (type) {
//       case RestfulRequest.get_:
//         {
//           return FhirHttpRequest(
//             type: RestfulRequest.get_,
//             url: url,
//             headers: headers,
//           );
//         }
//       case RestfulRequest.put_:
//         {
//           headers['Content-Type'] =
//               mimeType == null || SupportedMimeTypeEnumMap[mimeType] == null
//                   ? 'application/fhir+json'
//                   : SupportedMimeTypeEnumMap[mimeType]!;
//           return FhirHttpRequest(
//             type: RestfulRequest.put_,
//             url: url,
//             headers: headers,
//             body: resource,
//           );
//         }
//       case RestfulRequest.delete_:
//         {
//           return FhirHttpRequest(
//             type: RestfulRequest.delete_,
//             url: url,
//             headers: headers,
//           );
//         }
//       case RestfulRequest.patch_:
//         {
//           headers['Content-Type'] =
//               mimeType == null || SupportedMimeTypeEnumMap[mimeType] == null
//                   ? 'application/json-patch+json'
//                   : SupportedMimeTypeEnumMap[mimeType]!;
//           return FhirHttpRequest(
//             type: RestfulRequest.patch_,
//             url: url,
//             headers: headers,
//             body: resource,
//           );
//         }
//       case RestfulRequest.post_:
//         {
//           headers['Content-Type'] = formData != null
//               ? 'application/x-www-form-urlencoded'
//               : mimeType == null || SupportedMimeTypeEnumMap[mimeType] == null
//                   ? 'application/fhir+json'
//                   : SupportedMimeTypeEnumMap[mimeType]!;
//           return FhirHttpRequest(
//             type: RestfulRequest.post_,
//             url: url,
//             headers: headers,
//             body: formData != null
//                 ? jsonDecode(formData) as Map<String, dynamic>
//                 : resource,
//           );
//         }
//     }
//   }

//   factory FhirHttpRequest.fromJson(Map<String, dynamic> json) =>
//       _$FhirHttpRequestFromJson(json);

//   factory FhirHttpRequest.fromJsonString(String source) {
//     final dynamic json = jsonDecode(source);
//     if (json is Map<String, dynamic>) {
//       return _$FhirHttpRequestFromJson(json);
//     } else {
//       throw FormatException('FormatException:\nYou passed $json\n'
//           'This does not properly decode to a Map<String,dynamic>.');
//     }
//   }

//   String toJsonString() => jsonEncode(toJson());

//   Future<Response> request() async {
//     final Client client = Client();
//     try {
//       switch (type) {
//         case RestfulRequest.get_:
//           {
//             return await client.get(
//               Uri.parse(url),
//               headers: headers,
//             );
//           }
//         case RestfulRequest.post_:
//           {
//             return await client.post(
//               Uri.parse(url),
//               headers: headers,
//               body: body,
//             );
//           }
//         case RestfulRequest.put_:
//           {
//             return await client.put(
//               Uri.parse(url),
//               headers: headers,
//               body: body,
//             );
//           }
//         case RestfulRequest.delete_:
//           {
//             return await client.delete(
//               Uri.parse(url),
//               headers: headers,
//             );
//           }
//         case RestfulRequest.patch_:
//           {
//             return await client.patch(
//               Uri.parse(url),
//               headers: headers,
//               body: body,
//             );
//           }
//       }
//     } catch (e, stack) {
//       return Response('$e', 500,
//           headers: <String, String>{'x-fhir-stack': stack.toString()});
//     }
//   }
// }
