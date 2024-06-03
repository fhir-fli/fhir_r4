import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [TestScript_Assert] A structured set of tests against a FHIR server or
/// client implementation to determine compliance against the FHIR
/// specification.

@freezed
class TestScript_Assert with _$TestScript_Assert {
  const TestScript_Assert._();

  const factory TestScript_Assert({
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
/// [direction] The direction to use for the assertion.

    @JsonKey(name: 'direction') FhirCode? direction,
/// [_direction] Extensions for direction

    @JsonKey(name: '_direction') PrimitiveElement? directionElement,
/// [compareToSourceId] Id of the source fixture used as the contents to be
/// evaluated by either the "source/expression" or "sourceId/path" definition.

    @JsonKey(name: 'compareToSourceId') String? compareToSourceId,
/// [_compareToSourceId] Extensions for compareToSourceId

    @JsonKey(name: '_compareToSourceId') PrimitiveElement? compareToSourceIdElement,
/// [compareToSourceExpression] The FHIRPath expression for a specific
/// value to evaluate against the source fixture. When compareToSourceId is
/// defined, either compareToSourceExpression or compareToSourcePath must be
/// defined, but not both.

    @JsonKey(name: 'compareToSourceExpression') String? compareToSourceExpression,
/// [_compareToSourceExpression] Extensions for compareToSourceExpression

    @JsonKey(name: '_compareToSourceExpression') PrimitiveElement? compareToSourceExpressionElement,
/// [compareToSourcePath] XPath or JSONPath expression to evaluate against
/// the source fixture. When compareToSourceId is defined, either
/// compareToSourceExpression or compareToSourcePath must be defined, but not
/// both.

    @JsonKey(name: 'compareToSourcePath') String? compareToSourcePath,
/// [_compareToSourcePath] Extensions for compareToSourcePath

    @JsonKey(name: '_compareToSourcePath') PrimitiveElement? compareToSourcePathElement,
/// [contentType] The mime-type contents to compare against the request or
/// response message 'Content-Type' header.

    @JsonKey(name: 'contentType') FhirCode? contentType,
/// [_contentType] Extensions for contentType

    @JsonKey(name: '_contentType') PrimitiveElement? contentTypeElement,
/// [defaultManualCompletion] The default manual completion outcome applied
/// to this assertion.

    @JsonKey(name: 'defaultManualCompletion') FhirCode? defaultManualCompletion,
/// [_defaultManualCompletion] Extensions for defaultManualCompletion

    @JsonKey(name: '_defaultManualCompletion') PrimitiveElement? defaultManualCompletionElement,
/// [expression] The FHIRPath expression to be evaluated against the
/// request or response message contents - HTTP headers and payload.

    @JsonKey(name: 'expression') String? expression,
/// [_expression] Extensions for expression

    @JsonKey(name: '_expression') PrimitiveElement? expressionElement,
/// [headerField] The HTTP header field name e.g. 'Location'.

    @JsonKey(name: 'headerField') String? headerField,
/// [_headerField] Extensions for headerField

    @JsonKey(name: '_headerField') PrimitiveElement? headerFieldElement,
/// [minimumId] The ID of a fixture. Asserts that the response contains at
/// a minimum the fixture specified by minimumId.

    @JsonKey(name: 'minimumId') String? minimumId,
/// [_minimumId] Extensions for minimumId

    @JsonKey(name: '_minimumId') PrimitiveElement? minimumIdElement,
/// [navigationLinks] Whether or not the test execution performs validation
/// on the bundle navigation links.

    @JsonKey(name: 'navigationLinks') FhirBoolean? navigationLinks,
/// [_navigationLinks] Extensions for navigationLinks

    @JsonKey(name: '_navigationLinks') PrimitiveElement? navigationLinksElement,
/// [operator] The operator type defines the conditional behavior of the
/// assert.

    @JsonKey(name: 'operator') FhirCode? operator,
/// [_operator] Extensions for operator

    @JsonKey(name: '_operator') PrimitiveElement? operatorElement,
/// [path] The XPath or JSONPath expression to be evaluated against the
/// fixture representing the response received from server.

    @JsonKey(name: 'path') String? path,
/// [_path] Extensions for path

    @JsonKey(name: '_path') PrimitiveElement? pathElement,
/// [requestMethod] The request method or HTTP operation code to compare
/// against that used by the client system under test.

    @JsonKey(name: 'requestMethod') FhirCode? requestMethod,
/// [_requestMethod] Extensions for requestMethod

    @JsonKey(name: '_requestMethod') PrimitiveElement? requestMethodElement,
/// [requestURL] The value to use in a comparison against the request URL
/// path string.

    @JsonKey(name: 'requestURL') String? requestURL,
/// [_requestURL] Extensions for requestURL

    @JsonKey(name: '_requestURL') PrimitiveElement? requestURLElement,
/// [resource] The type of the resource.  See the [resource
/// list](resourcelist.html).

    @JsonKey(name: 'resource') FhirUri? resource,
/// [_resource] Extensions for resource

    @JsonKey(name: '_resource') PrimitiveElement? resourceElement,
/// [response] continue | switchingProtocols | okay | created | accepted |
/// nonAuthoritativeInformation | noContent | resetContent | partialContent |
/// multipleChoices | movedPermanently | found | seeOther | notModified |
/// useProxy | temporaryRedirect | permanentRedirect | badRequest |
/// unauthorized | paymentRequired | forbidden | notFound | methodNotAllowed |
/// notAcceptable | proxyAuthenticationRequired | requestTimeout | conflict |
/// gone | lengthRequired | preconditionFailed | contentTooLarge | uriTooLong |
/// unsupportedMediaType | rangeNotSatisfiable | expectationFailed |
/// misdirectedRequest | unprocessableContent | upgradeRequired |
/// internalServerError | notImplemented | badGateway | serviceUnavailable |
/// gatewayTimeout | httpVersionNotSupported.

    @JsonKey(name: 'response') FhirCode? response,
/// [_response] Extensions for response

    @JsonKey(name: '_response') PrimitiveElement? responseElement,
/// [responseCode] The value of the HTTP response code to be tested.

    @JsonKey(name: 'responseCode') String? responseCode,
/// [_responseCode] Extensions for responseCode

    @JsonKey(name: '_responseCode') PrimitiveElement? responseCodeElement,
/// [sourceId] Fixture to evaluate the XPath/JSONPath expression or the
/// headerField  against.

    @JsonKey(name: 'sourceId') FhirId? sourceId,
/// [_sourceId] Extensions for sourceId

    @JsonKey(name: '_sourceId') PrimitiveElement? sourceIdElement,
/// [stopTestOnFail] Whether or not the current test execution will stop on
/// failure for this assert.

    @JsonKey(name: 'stopTestOnFail') FhirBoolean? stopTestOnFail,
/// [_stopTestOnFail] Extensions for stopTestOnFail

    @JsonKey(name: '_stopTestOnFail') PrimitiveElement? stopTestOnFailElement,
/// [validateProfileId] The ID of the Profile to validate against.

    @JsonKey(name: 'validateProfileId') FhirId? validateProfileId,
/// [_validateProfileId] Extensions for validateProfileId

    @JsonKey(name: '_validateProfileId') PrimitiveElement? validateProfileIdElement,
/// [value] The value to compare to.

    @JsonKey(name: 'value') String? value,
/// [_value] Extensions for value

    @JsonKey(name: '_value') PrimitiveElement? valueElement,
/// [warningOnly] Whether or not the test execution will produce a warning
/// only on error for this assert.

    @JsonKey(name: 'warningOnly') FhirBoolean? warningOnly,
/// [_warningOnly] Extensions for warningOnly

    @JsonKey(name: '_warningOnly') PrimitiveElement? warningOnlyElement,
/// [requirement] Links or references providing traceability to the testing
/// requirements for this assert.

    @JsonKey(name: 'requirement') List<List<TestScript_Requirement>>? requirement,
  }) = _$TestScript_Assert;

  @override
  String get fhirType => 'TestScript_Assert';

  factory TestScript_Assert.fromJson(Map<String, dynamic> json) =>
      _$TestScript_AssertFromJson(json);

  factory TestScript_Assert.fromYaml(dynamic yaml) => yaml is String
      ? TestScript_Assert.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? TestScript_Assert.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'TestScript_Assert cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory TestScript_Assert.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$TestScript_AssertFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
