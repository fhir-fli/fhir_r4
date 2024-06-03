import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [ClaimResponse_Insurance] This resource provides the adjudication
/// details from the processing of a Claim resource.

@freezed
class ClaimResponse_Insurance with _$ClaimResponse_Insurance {
  const ClaimResponse_Insurance._();

  const factory ClaimResponse_Insurance({
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
/// [sequence] A number to uniquely identify insurance entries and provide
/// a sequence of coverages to convey coordination of benefit order.

    @JsonKey(name: 'sequence') FhirPositiveInt? sequence,
/// [_sequence] Extensions for sequence

    @JsonKey(name: '_sequence') PrimitiveElement? sequenceElement,
/// [focal] A flag to indicate that this Coverage is to be used for
/// adjudication of this claim when set to true.

    @JsonKey(name: 'focal') FhirBoolean? focal,
/// [_focal] Extensions for focal

    @JsonKey(name: '_focal') PrimitiveElement? focalElement,
/// [coverage] Reference to the insurance card level information contained
/// in the Coverage resource. The coverage issuing insurer will use these
/// details to locate the patient's actual coverage within the insurer's
/// information system.

    @JsonKey(name: 'coverage') Reference? coverage,
/// [businessArrangement] A business agreement number established between
/// the provider and the insurer for special business processing purposes.

    @JsonKey(name: 'businessArrangement') String? businessArrangement,
/// [_businessArrangement] Extensions for businessArrangement

    @JsonKey(name: '_businessArrangement') PrimitiveElement? businessArrangementElement,
/// [claimResponse] The result of the adjudication of the line items for
/// the Coverage specified in this insurance.

    @JsonKey(name: 'claimResponse') Reference? claimResponse,
  }) = _$ClaimResponse_Insurance;

  @override
  String get fhirType => 'ClaimResponse_Insurance';

  factory ClaimResponse_Insurance.fromJson(Map<String, dynamic> json) =>
      _$ClaimResponse_InsuranceFromJson(json);

  factory ClaimResponse_Insurance.fromYaml(dynamic yaml) => yaml is String
      ? ClaimResponse_Insurance.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ClaimResponse_Insurance.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ClaimResponse_Insurance cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ClaimResponse_Insurance.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ClaimResponse_InsuranceFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
