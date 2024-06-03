import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [ClaimResponse_Error] This resource provides the adjudication details
/// from the processing of a Claim resource.

@freezed
class ClaimResponse_Error with _$ClaimResponse_Error {
  const ClaimResponse_Error._();

  const factory ClaimResponse_Error({
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
///
/// Modifier extensions SHALL NOT change the meaning of any elements on
/// Resource or DomainResource (including cannot change the meaning of
/// modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// [itemSequence] The sequence number of the line item submitted which
/// contains the error. This value is omitted when the error occurs outside of
/// the item structure.

    @JsonKey(name: 'itemSequence') FhirPositiveInt? itemSequence,
/// [_itemSequence] Extensions for itemSequence

    @JsonKey(name: '_itemSequence') PrimitiveElement? itemSequenceElement,
/// [detailSequence] The sequence number of the detail within the line item
/// submitted which contains the error. This value is omitted when the error
/// occurs outside of the item structure.

    @JsonKey(name: 'detailSequence') FhirPositiveInt? detailSequence,
/// [_detailSequence] Extensions for detailSequence

    @JsonKey(name: '_detailSequence') PrimitiveElement? detailSequenceElement,
/// [subDetailSequence] The sequence number of the sub-detail within the
/// detail within the line item submitted which contains the error. This value
/// is omitted when the error occurs outside of the item structure.

    @JsonKey(name: 'subDetailSequence') FhirPositiveInt? subDetailSequence,
/// [_subDetailSequence] Extensions for subDetailSequence

    @JsonKey(name: '_subDetailSequence') PrimitiveElement? subDetailSequenceElement,
/// [code] An error code, from a specified code system, which details why
/// the claim could not be adjudicated.

    @JsonKey(name: 'code') CodeableConcept? code,
/// [expression] A [simple subset of FHIRPath](fhirpath.html#simple)
/// limited to element names, repetition indicators and the default child
/// accessor that identifies one of the elements in the resource that caused
/// this issue to be raised.

    @JsonKey(name: 'expression') List<List<String>>? expression,
/// [_expression] Extensions for expression

    @JsonKey(name: '_expression') List<PrimitiveElement>? expressionElement,
  }) = _$ClaimResponse_Error;

  @override
  String get fhirType => 'ClaimResponse_Error';

  factory ClaimResponse_Error.fromJson(Map<String, dynamic> json) =>
      _$ClaimResponse_ErrorFromJson(json);

  factory ClaimResponse_Error.fromYaml(dynamic yaml) => yaml is String
      ? ClaimResponse_Error.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ClaimResponse_Error.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ClaimResponse_Error cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ClaimResponse_Error.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ClaimResponse_ErrorFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
