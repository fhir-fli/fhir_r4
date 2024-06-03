import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Group_Characteristic] Represents a defined collection of entities that
/// may be discussed or acted upon collectively but which are not expected to
/// act collectively, and are not formally or legally recognized; i.e. a
/// collection of entities that isn't an Organization.

@freezed
class Group_Characteristic with _$Group_Characteristic {
  const Group_Characteristic._();

  const factory Group_Characteristic({
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
/// [code] A code that identifies the kind of trait being asserted.

    @JsonKey(name: 'code') CodeableConcept? code,
/// [valueCodeableConcept] The value of the trait that holds (or does not
/// hold - see 'exclude') for members of the group.

    @JsonKey(name: 'valueCodeableConcept') CodeableConcept? valueCodeableConcept,
/// [valueBoolean] The value of the trait that holds (or does not hold -
/// see 'exclude') for members of the group.

    @JsonKey(name: 'valueBoolean') FhirBoolean? valueBoolean,
/// [_valueBoolean] Extensions for valueBoolean

    @JsonKey(name: '_valueBoolean') PrimitiveElement? valueBooleanElement,
/// [valueQuantity] The value of the trait that holds (or does not hold -
/// see 'exclude') for members of the group.

    @JsonKey(name: 'valueQuantity') Quantity? valueQuantity,
/// [valueRange] The value of the trait that holds (or does not hold - see
/// 'exclude') for members of the group.

    @JsonKey(name: 'valueRange') Range? valueRange,
/// [valueReference] The value of the trait that holds (or does not hold -
/// see 'exclude') for members of the group.

    @JsonKey(name: 'valueReference') Reference? valueReference,
/// [valueUri] The value of the trait that holds (or does not hold - see
/// 'exclude') for members of the group.

    @JsonKey(name: 'valueUri') FhirUri? valueUri,
/// [_valueUri] Extensions for valueUri

    @JsonKey(name: '_valueUri') PrimitiveElement? valueUriElement,
/// [valueExpression] The value of the trait that holds (or does not hold -
/// see 'exclude') for members of the group.

    @JsonKey(name: 'valueExpression') FhirExpression? valueExpression,
/// [exclude] If true, indicates the characteristic is one that is NOT held
/// by members of the group.

    @JsonKey(name: 'exclude') FhirBoolean? exclude,
/// [_exclude] Extensions for exclude

    @JsonKey(name: '_exclude') PrimitiveElement? excludeElement,
/// [description] A short, natural language description of the
/// characteristic that could be used to communicate the criteria to an
/// end-user.

    @JsonKey(name: 'description') FhirMarkdown? description,
/// [_description] Extensions for description

    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
/// [method] Method for how the characteristic value was determined.

    @JsonKey(name: 'method') List<List<CodeableConcept>>? method,
/// [determinedByReference] Defines the characteristic (without using type
/// and value) by either a Reference or an Expression.

    @JsonKey(name: 'determinedByReference') Reference? determinedByReference,
/// [determinedByExpression] Defines the characteristic (without using type
/// and value) by either a Reference or an Expression.

    @JsonKey(name: 'determinedByExpression') FhirExpression? determinedByExpression,
/// [offset] Defines the reference point for comparison when other than 0.

    @JsonKey(name: 'offset') CodeableConcept? offset,
/// [instancesQuantity] Number of occurrences meeting the characteristic.

    @JsonKey(name: 'instancesQuantity') Quantity? instancesQuantity,
/// [instancesRange] Number of occurrences meeting the characteristic.

    @JsonKey(name: 'instancesRange') Range? instancesRange,
/// [durationDuration] Length of time in which the characteristic is met.

    @JsonKey(name: 'durationDuration') FhirDuration? durationDuration,
/// [durationRange] Length of time in which the characteristic is met.

    @JsonKey(name: 'durationRange') Range? durationRange,
/// [period] The period over which the characteristic is tested; e.g. the
/// patient had an operation during the month of June.

    @JsonKey(name: 'period') Period? period,
/// [timing] Timing in which the characteristic is determined.

    @JsonKey(name: 'timing') List<List<RelativeTime>>? timing,
  }) = _$Group_Characteristic;

  @override
  String get fhirType => 'Group_Characteristic';

  factory Group_Characteristic.fromJson(Map<String, dynamic> json) =>
      _$Group_CharacteristicFromJson(json);

  factory Group_Characteristic.fromYaml(dynamic yaml) => yaml is String
      ? Group_Characteristic.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Group_Characteristic.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Group_Characteristic cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Group_Characteristic.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Group_CharacteristicFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
