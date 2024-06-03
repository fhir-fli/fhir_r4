import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [MeasureReport_Component] The MeasureReport resource contains the
/// results of the calculation of a measure; and optionally a reference to the
/// resources involved in that calculation.

@freezed
class MeasureReport_Component with _$MeasureReport_Component {
  const MeasureReport_Component._();

  const factory MeasureReport_Component({
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
/// [linkId] The stratifier component from the Measure that corresponds to
/// this stratifier component in the MeasureReport resource.

    @JsonKey(name: 'linkId') String? linkId,
/// [_linkId] Extensions for linkId

    @JsonKey(name: '_linkId') PrimitiveElement? linkIdElement,
/// [code] The code for the stratum component value.

    @JsonKey(name: 'code') CodeableConcept? code,
/// [valueCodeableConcept] The stratum component value.

    @JsonKey(name: 'valueCodeableConcept') CodeableConcept? valueCodeableConcept,
/// [valueBoolean] The stratum component value.

    @JsonKey(name: 'valueBoolean') FhirBoolean? valueBoolean,
/// [_valueBoolean] Extensions for valueBoolean

    @JsonKey(name: '_valueBoolean') PrimitiveElement? valueBooleanElement,
/// [valueQuantity] The stratum component value.

    @JsonKey(name: 'valueQuantity') Quantity? valueQuantity,
/// [valueRange] The stratum component value.

    @JsonKey(name: 'valueRange') Range? valueRange,
/// [valueReference] The stratum component value.

    @JsonKey(name: 'valueReference') Reference? valueReference,
  }) = _$MeasureReport_Component;

  @override
  String get fhirType => 'MeasureReport_Component';

  factory MeasureReport_Component.fromJson(Map<String, dynamic> json) =>
      _$MeasureReport_ComponentFromJson(json);

  factory MeasureReport_Component.fromYaml(dynamic yaml) => yaml is String
      ? MeasureReport_Component.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? MeasureReport_Component.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'MeasureReport_Component cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory MeasureReport_Component.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$MeasureReport_ComponentFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
