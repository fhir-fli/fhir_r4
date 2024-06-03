import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Ingredient_Strength] An ingredient of a manufactured item or
/// pharmaceutical product.

@freezed
class Ingredient_Strength with _$Ingredient_Strength {
  const Ingredient_Strength._();

  const factory Ingredient_Strength({
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
/// [presentationRatio] The quantity of substance in the unit of
/// presentation, or in the volume (or mass) of the single pharmaceutical
/// product or manufactured item. Unit of presentation refers to the quantity
/// that the item occurs in e.g. a strength per tablet size, perhaps 'per 20mg'
/// (the size of the tablet). It is not generally normalized as a unitary unit,
/// which would be 'per mg').

    @JsonKey(name: 'presentationRatio') Ratio? presentationRatio,
/// [presentationRatioRange] The quantity of substance in the unit of
/// presentation, or in the volume (or mass) of the single pharmaceutical
/// product or manufactured item. Unit of presentation refers to the quantity
/// that the item occurs in e.g. a strength per tablet size, perhaps 'per 20mg'
/// (the size of the tablet). It is not generally normalized as a unitary unit,
/// which would be 'per mg').

    @JsonKey(name: 'presentationRatioRange') RatioRange? presentationRatioRange,
/// [presentationCodeableConcept] The quantity of substance in the unit of
/// presentation, or in the volume (or mass) of the single pharmaceutical
/// product or manufactured item. Unit of presentation refers to the quantity
/// that the item occurs in e.g. a strength per tablet size, perhaps 'per 20mg'
/// (the size of the tablet). It is not generally normalized as a unitary unit,
/// which would be 'per mg').

    @JsonKey(name: 'presentationCodeableConcept') CodeableConcept? presentationCodeableConcept,
/// [presentationQuantity] The quantity of substance in the unit of
/// presentation, or in the volume (or mass) of the single pharmaceutical
/// product or manufactured item. Unit of presentation refers to the quantity
/// that the item occurs in e.g. a strength per tablet size, perhaps 'per 20mg'
/// (the size of the tablet). It is not generally normalized as a unitary unit,
/// which would be 'per mg').

    @JsonKey(name: 'presentationQuantity') Quantity? presentationQuantity,
/// [textPresentation] A textual represention of either the whole of the
/// presentation strength or a part of it - with the rest being in
/// Strength.presentation as a ratio.

    @JsonKey(name: 'textPresentation') String? textPresentation,
/// [_textPresentation] Extensions for textPresentation

    @JsonKey(name: '_textPresentation') PrimitiveElement? textPresentationElement,
/// [concentrationRatio] The strength per unitary volume (or mass).

    @JsonKey(name: 'concentrationRatio') Ratio? concentrationRatio,
/// [concentrationRatioRange] The strength per unitary volume (or mass).

    @JsonKey(name: 'concentrationRatioRange') RatioRange? concentrationRatioRange,
/// [concentrationCodeableConcept] The strength per unitary volume (or
/// mass).

    @JsonKey(name: 'concentrationCodeableConcept') CodeableConcept? concentrationCodeableConcept,
/// [concentrationQuantity] The strength per unitary volume (or mass).

    @JsonKey(name: 'concentrationQuantity') Quantity? concentrationQuantity,
/// [textConcentration] A textual represention of either the whole of the
/// concentration strength or a part of it - with the rest being in
/// Strength.concentration as a ratio.

    @JsonKey(name: 'textConcentration') String? textConcentration,
/// [_textConcentration] Extensions for textConcentration

    @JsonKey(name: '_textConcentration') PrimitiveElement? textConcentrationElement,
/// [basis] A code that indicates if the strength is, for example, based on
/// the ingredient substance as stated or on the substance base (when the
/// ingredient is a salt).

    @JsonKey(name: 'basis') CodeableConcept? basis,
/// [measurementPoint] For when strength is measured at a particular point
/// or distance. There are products where strength is measured at a particular
/// point. For example, the strength of the ingredient in some inhalers is
/// measured at a particular position relative to the point of aerosolization.

    @JsonKey(name: 'measurementPoint') String? measurementPoint,
/// [_measurementPoint] Extensions for measurementPoint

    @JsonKey(name: '_measurementPoint') PrimitiveElement? measurementPointElement,
/// [country] The country or countries for which the strength range
/// applies.

    @JsonKey(name: 'country') List<List<CodeableConcept>>? country,
/// [referenceStrength] Strength expressed in terms of a reference
/// substance. For when the ingredient strength is additionally expressed as
/// equivalent to the strength of some other closely related substance (e.g.
/// salt vs. base). Reference strength represents the strength (quantitative
/// composition) of the active moiety of the active substance. There are
/// situations when the active substance and active moiety are different,
/// therefore both a strength and a reference strength are needed.

    @JsonKey(name: 'referenceStrength') List<List<Ingredient_ReferenceStrength>>? referenceStrength,
  }) = _$Ingredient_Strength;

  @override
  String get fhirType => 'Ingredient_Strength';

  factory Ingredient_Strength.fromJson(Map<String, dynamic> json) =>
      _$Ingredient_StrengthFromJson(json);

  factory Ingredient_Strength.fromYaml(dynamic yaml) => yaml is String
      ? Ingredient_Strength.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Ingredient_Strength.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Ingredient_Strength cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Ingredient_Strength.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Ingredient_StrengthFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
