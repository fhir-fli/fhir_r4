import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [EvidenceReport_RelatesTo] The EvidenceReport Resource is a specialized
/// container for a collection of resources and codeable concepts, adapted to
/// support compositions of Evidence, EvidenceVariable, and Citation resources
/// and related concepts.

@freezed
class EvidenceReport_RelatesTo with _$EvidenceReport_RelatesTo {
  const EvidenceReport_RelatesTo._();

  const factory EvidenceReport_RelatesTo({
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
/// [code] The type of relationship that this composition has with anther
/// composition or document.

    @JsonKey(name: 'code') FhirCode? code,
/// [_code] Extensions for code

    @JsonKey(name: '_code') PrimitiveElement? codeElement,
/// [target] The target composition/document of this relationship.

    @JsonKey(name: 'target') EvidenceReport_Target? target,
  }) = _$EvidenceReport_RelatesTo;

  @override
  String get fhirType => 'EvidenceReport_RelatesTo';

  factory EvidenceReport_RelatesTo.fromJson(Map<String, dynamic> json) =>
      _$EvidenceReport_RelatesToFromJson(json);

  factory EvidenceReport_RelatesTo.fromYaml(dynamic yaml) => yaml is String
      ? EvidenceReport_RelatesTo.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? EvidenceReport_RelatesTo.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'EvidenceReport_RelatesTo cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory EvidenceReport_RelatesTo.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$EvidenceReport_RelatesToFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
