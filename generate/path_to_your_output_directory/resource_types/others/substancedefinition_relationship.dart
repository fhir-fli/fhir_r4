import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [SubstanceDefinition_Relationship] The detailed description of a
/// substance, typically at a level beyond what is used for prescribing.

@freezed
class SubstanceDefinition_Relationship with _$SubstanceDefinition_Relationship {
  const SubstanceDefinition_Relationship._();

  const factory SubstanceDefinition_Relationship({
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
/// [substanceDefinitionReference] A pointer to another substance, as a
/// resource or just a representational code.

    @JsonKey(name: 'substanceDefinitionReference') Reference? substanceDefinitionReference,
/// [substanceDefinitionCodeableConcept] A pointer to another substance, as
/// a resource or just a representational code.

    @JsonKey(name: 'substanceDefinitionCodeableConcept') CodeableConcept? substanceDefinitionCodeableConcept,
/// [type] For example "salt to parent", "active moiety", "starting
/// material", "polymorph", "impurity of".

    @JsonKey(name: 'type') CodeableConcept? type,
/// [isDefining] For example where an enzyme strongly bonds with a
/// particular substance, this is a defining relationship for that enzyme, out
/// of several possible substance relationships.

    @JsonKey(name: 'isDefining') FhirBoolean? isDefining,
/// [_isDefining] Extensions for isDefining

    @JsonKey(name: '_isDefining') PrimitiveElement? isDefiningElement,
/// [amountQuantity] A numeric factor for the relationship, for instance to
/// express that the salt of a substance has some percentage of the active
/// substance in relation to some other.

    @JsonKey(name: 'amountQuantity') Quantity? amountQuantity,
/// [amountRatio] A numeric factor for the relationship, for instance to
/// express that the salt of a substance has some percentage of the active
/// substance in relation to some other.

    @JsonKey(name: 'amountRatio') Ratio? amountRatio,
/// [amountString] A numeric factor for the relationship, for instance to
/// express that the salt of a substance has some percentage of the active
/// substance in relation to some other.

    @JsonKey(name: 'amountString') String? amountString,
/// [_amountString] Extensions for amountString

    @JsonKey(name: '_amountString') PrimitiveElement? amountStringElement,
/// [ratioHighLimitAmount] For use when the numeric has an uncertain range.

    @JsonKey(name: 'ratioHighLimitAmount') Ratio? ratioHighLimitAmount,
/// [comparator] An operator for the amount, for example "average",
/// "approximately", "less than".

    @JsonKey(name: 'comparator') CodeableConcept? comparator,
/// [source] Supporting literature.

    @JsonKey(name: 'source') List<List<Reference>>? source,
  }) = _$SubstanceDefinition_Relationship;

  @override
  String get fhirType => 'SubstanceDefinition_Relationship';

  factory SubstanceDefinition_Relationship.fromJson(Map<String, dynamic> json) =>
      _$SubstanceDefinition_RelationshipFromJson(json);

  factory SubstanceDefinition_Relationship.fromYaml(dynamic yaml) => yaml is String
      ? SubstanceDefinition_Relationship.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? SubstanceDefinition_Relationship.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'SubstanceDefinition_Relationship cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory SubstanceDefinition_Relationship.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SubstanceDefinition_RelationshipFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
