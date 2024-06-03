import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [TestScript_Operation] A structured set of tests against a FHIR server
/// or client implementation to determine compliance against the FHIR
/// specification.

@freezed
class TestScript_Operation with _$TestScript_Operation {
  const TestScript_Operation._();

  const factory TestScript_Operation({
/// [id] Unique id for the element within a resource (for internal
/// references). This may be any string value that does not contain spaces.

    @JsonKey(name: 'id') String? id,
/// [extension] May be used to represent additional information that is not
/// part of the basic definition of the element. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// [modifierExtension] May be used to represent additional information
/// that is not part of the basic definition of the element and that modifies
/// the understanding of the element in which it is contained and/or the
/// understanding of the containing element's descendants. Usually modifier
/// elements provide negation or qualification. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension. Applications processing a resource are
/// required to check for modifier extensions.

Modifier extensions SHALL NOT
/// change the meaning of any elements on Resource or DomainResource (including
/// cannot change the meaning of modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// [type] Server interaction or operation type.

    @JsonKey(name: 'type') Coding? type,
/// [resource] The type of the FHIR resource. See the [resource
/// list](resourcelist.html). Data type of uri is needed when non-HL7 artifacts
/// are identified.

    @JsonKey(name: 'resource') FhirUri? resource,
/// [_resource] Extensions for resource

    @JsonKey(name: '_resource') PrimitiveElement? resourceElement,
/// [label] The label would be used for tracking/logging purposes by test
/// engines.

    @JsonKey(name: 'label') String? label,
/// [_label] Extensions for label

    @JsonKey(name: '_label') PrimitiveElement? labelElement,
/// [description] The description would be used by test engines for
/// tracking and reporting purposes.

    @JsonKey(name: 'description') String? description,
/// [_description] Extensions for description

    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
/// [accept] The mime-type to use for RESTful operation in the 'Accept'
/// header.

    @JsonKey(name: 'accept') FhirCode? accept,
/// [_accept] Extensions for accept

    @JsonKey(name: '_accept') PrimitiveElement? acceptElement,
/// [contentType] The mime-type to use for RESTful operation in the
/// 'Content-Type' header.

    @JsonKey(name: 'contentType') FhirCode? contentType,
/// [_contentType] Extensions for contentType

    @JsonKey(name: '_contentType') PrimitiveElement? contentTypeElement,
/// [destination] The server where the request message is destined for.
/// Must be one of the server numbers listed in TestScript.destination section.

    @JsonKey(name: 'destination') FhirInteger? destination,
/// [_destination] Extensions for destination

    @JsonKey(name: '_destination') PrimitiveElement? destinationElement,
/// [encodeRequestUrl] Whether or not to implicitly send the request url in
/// encoded format. The default is true to match the standard RESTful client
/// behavior. Set to false when communicating with a server that does not
/// support encoded url paths.

    @JsonKey(name: 'encodeRequestUrl') FhirBoolean? encodeRequestUrl,
/// [_encodeRequestUrl] Extensions for encodeRequestUrl

    @JsonKey(name: '_encodeRequestUrl') PrimitiveElement? encodeRequestUrlElement,
/// [method] The HTTP method the test engine MUST use for this operation
/// regardless of any other operation details.

    @JsonKey(name: 'method') FhirCode? method,
/// [_method] Extensions for method

    @JsonKey(name: '_method') PrimitiveElement? methodElement,
/// [origin] The server where the request message originates from.  Must be
/// one of the server numbers listed in TestScript.origin section.

    @JsonKey(name: 'origin') FhirInteger? origin,
/// [_origin] Extensions for origin

    @JsonKey(name: '_origin') PrimitiveElement? originElement,
/// [params] Path plus parameters after [type].  Used to set parts of the
/// request URL explicitly.

    @JsonKey(name: 'params') String? params,
/// [_params] Extensions for params

    @JsonKey(name: '_params') PrimitiveElement? paramsElement,
/// [requestHeader] Header elements would be used to set HTTP headers.

    @JsonKey(name: 'requestHeader') List<List<TestScript_RequestHeader>>? requestHeader,
/// [requestId] The fixture id (maybe new) to map to the request.

    @JsonKey(name: 'requestId') FhirId? requestId,
/// [_requestId] Extensions for requestId

    @JsonKey(name: '_requestId') PrimitiveElement? requestIdElement,
/// [responseId] The fixture id (maybe new) to map to the response.

    @JsonKey(name: 'responseId') FhirId? responseId,
/// [_responseId] Extensions for responseId

    @JsonKey(name: '_responseId') PrimitiveElement? responseIdElement,
/// [sourceId] The id of the fixture used as the body of a PUT or POST
/// request.

    @JsonKey(name: 'sourceId') FhirId? sourceId,
/// [_sourceId] Extensions for sourceId

    @JsonKey(name: '_sourceId') PrimitiveElement? sourceIdElement,
/// [targetId] Id of fixture used for extracting the [id],  [type], and
/// [vid] for GET requests.

    @JsonKey(name: 'targetId') FhirId? targetId,
/// [_targetId] Extensions for targetId

    @JsonKey(name: '_targetId') PrimitiveElement? targetIdElement,
/// [url] Complete request URL.

    @JsonKey(name: 'url') String? url,
/// [_url] Extensions for url

    @JsonKey(name: '_url') PrimitiveElement? urlElement,
  }) = _$TestScript_Operation;

  @override
  String get fhirType => 'TestScript_Operation';

  factory TestScript_Operation.fromJson(Map<String, dynamic> json) =>
      _$TestScript_OperationFromJson(json);

  factory TestScript_Operation.fromYaml(dynamic yaml) => yaml is String
      ? TestScript_Operation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? TestScript_Operation.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'TestScript_Operation cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory TestScript_Operation.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$TestScript_OperationFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
