import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'ingredient.g.dart';

/// [Ingredient] /// An ingredient of a manufactured item or pharmaceutical product.
@JsonSerializable()
class Ingredient extends DomainResource {
  Ingredient({
    super.id,
    super.meta,
    super.implicitRules,
    super.implicitRulesElement,
    super.language,
    super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    required this.status,
    this.statusElement,
    this.for_,
    required this.role,
    this.function_,
    this.allergenicIndicator,
    this.allergenicIndicatorElement,
    this.manufacturer,
    required this.substance,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
    // ignore: avoid_unused_constructor_parameters
    R4ResourceType? resourceType,
  }) : super(resourceType: R4ResourceType.Ingredient);
  @override
  String get fhirType => 'Ingredient';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// The identifier(s) of this Ingredient that are assigned by business
  /// processes and/or used to refer to it when a direct URL reference to the
  /// resource itself is not appropriate.
  @JsonKey(name: 'identifier')
  final Identifier? identifier;

  /// [status] /// The status of this ingredient. Enables tracking the life-cycle of the
  /// content.
  @JsonKey(name: 'status')
  final PublicationStatus status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [for_] /// The product which this ingredient is a constituent part of.
  @JsonKey(name: 'for')
  final List<Reference>? for_;

  /// [role] /// A classification of the ingredient identifying its purpose within the
  /// product, e.g. active, inactive.
  @JsonKey(name: 'role')
  final CodeableConcept role;

  /// [function_] /// A classification of the ingredient identifying its precise purpose(s) in
  /// the drug product. This extends the Ingredient.role to add more detail.
  /// Example: antioxidant, alkalizing agent.
  @JsonKey(name: 'function')
  final List<CodeableConcept>? function_;

  /// [allergenicIndicator] /// If the ingredient is a known or suspected allergen. Note that this is a
  /// property of the substance, so if a reference to a SubstanceDefinition is
  /// used to decribe that (rather than just a code), the allergen information
  /// should go there, not here.
  @JsonKey(name: 'allergenicIndicator')
  final FhirBoolean? allergenicIndicator;
  @JsonKey(name: '_allergenicIndicator')
  final Element? allergenicIndicatorElement;

  /// [manufacturer] /// The organization(s) that manufacture this ingredient. Can be used to
  /// indicate: 1) Organizations we are aware of that manufacture this ingredient
  /// 2) Specific Manufacturer(s) currently being used 3) Set of organisations
  /// allowed to manufacture this ingredient for this product Users must be clear
  /// on the application of context relevant to their use case.
  @JsonKey(name: 'manufacturer')
  final List<IngredientManufacturer>? manufacturer;

  /// [substance] /// The substance that comprises this ingredient.
  @JsonKey(name: 'substance')
  final IngredientSubstance substance;
  factory Ingredient.fromJson(Map<String, dynamic> json) =>
      _$IngredientFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$IngredientToJson(this);

  @override
  Ingredient clone() => throw UnimplementedError();
  @override
  Ingredient copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    CommonLanguages? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Identifier? identifier,
    PublicationStatus? status,
    Element? statusElement,
    List<Reference>? for_,
    CodeableConcept? role,
    List<CodeableConcept>? function_,
    FhirBoolean? allergenicIndicator,
    Element? allergenicIndicatorElement,
    List<IngredientManufacturer>? manufacturer,
    IngredientSubstance? substance,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return Ingredient(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      for_: for_ ?? this.for_,
      role: role ?? this.role,
      function_: function_ ?? this.function_,
      allergenicIndicator: allergenicIndicator ?? this.allergenicIndicator,
      allergenicIndicatorElement:
          allergenicIndicatorElement ?? this.allergenicIndicatorElement,
      manufacturer: manufacturer ?? this.manufacturer,
      substance: substance ?? this.substance,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory Ingredient.fromYaml(dynamic yaml) => yaml is String
      ? Ingredient.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? Ingredient.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'Ingredient cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory Ingredient.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return Ingredient.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [IngredientManufacturer] /// The organization(s) that manufacture this ingredient. Can be used to
/// indicate: 1) Organizations we are aware of that manufacture this ingredient
/// 2) Specific Manufacturer(s) currently being used 3) Set of organisations
/// allowed to manufacture this ingredient for this product Users must be clear
/// on the application of context relevant to their use case.
@JsonSerializable()
class IngredientManufacturer extends BackboneElement {
  IngredientManufacturer({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.role,
    this.roleElement,
    required this.manufacturer,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'IngredientManufacturer';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [role] /// The way in which this manufacturer is associated with the ingredient. For
  /// example whether it is a possible one (others allowed), or an exclusive
  /// authorized one for this ingredient. Note that this is not the manufacturing
  /// process role.
  @JsonKey(name: 'role')
  final IngredientManufacturerRole? role;
  @JsonKey(name: '_role')
  final Element? roleElement;

  /// [manufacturer] /// An organization that manufactures this ingredient.
  @JsonKey(name: 'manufacturer')
  final Reference manufacturer;
  factory IngredientManufacturer.fromJson(Map<String, dynamic> json) =>
      _$IngredientManufacturerFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$IngredientManufacturerToJson(this);

  @override
  IngredientManufacturer clone() => throw UnimplementedError();
  @override
  IngredientManufacturer copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    IngredientManufacturerRole? role,
    Element? roleElement,
    Reference? manufacturer,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return IngredientManufacturer(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      role: role ?? this.role,
      roleElement: roleElement ?? this.roleElement,
      manufacturer: manufacturer ?? this.manufacturer,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory IngredientManufacturer.fromYaml(dynamic yaml) => yaml is String
      ? IngredientManufacturer.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? IngredientManufacturer.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'IngredientManufacturer cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory IngredientManufacturer.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return IngredientManufacturer.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [IngredientSubstance] /// The substance that comprises this ingredient.
@JsonSerializable()
class IngredientSubstance extends BackboneElement {
  IngredientSubstance({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    this.strength,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'IngredientSubstance';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [code] /// A code or full resource that represents the ingredient's substance.
  @JsonKey(name: 'code')
  final CodeableReference code;

  /// [strength] /// The quantity of substance in the unit of presentation, or in the volume (or
  /// mass) of the single pharmaceutical product or manufactured item. The
  /// allowed repetitions do not represent different strengths, but are different
  /// representations - mathematically equivalent - of a single strength.
  @JsonKey(name: 'strength')
  final List<IngredientStrength>? strength;
  factory IngredientSubstance.fromJson(Map<String, dynamic> json) =>
      _$IngredientSubstanceFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$IngredientSubstanceToJson(this);

  @override
  IngredientSubstance clone() => throw UnimplementedError();
  @override
  IngredientSubstance copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableReference? code,
    List<IngredientStrength>? strength,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return IngredientSubstance(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      strength: strength ?? this.strength,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory IngredientSubstance.fromYaml(dynamic yaml) => yaml is String
      ? IngredientSubstance.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? IngredientSubstance.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'IngredientSubstance cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory IngredientSubstance.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return IngredientSubstance.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [IngredientStrength] /// The quantity of substance in the unit of presentation, or in the volume (or
/// mass) of the single pharmaceutical product or manufactured item. The
/// allowed repetitions do not represent different strengths, but are different
/// representations - mathematically equivalent - of a single strength.
@JsonSerializable()
class IngredientStrength extends BackboneElement {
  IngredientStrength({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.presentationRatio,
    this.presentationRatioRange,
    this.textPresentation,
    this.textPresentationElement,
    this.concentrationRatio,
    this.concentrationRatioRange,
    this.textConcentration,
    this.textConcentrationElement,
    this.measurementPoint,
    this.measurementPointElement,
    this.country,
    this.referenceStrength,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'IngredientStrength';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [presentationRatio] /// The quantity of substance in the unit of presentation, or in the volume (or
  /// mass) of the single pharmaceutical product or manufactured item. Unit of
  /// presentation refers to the quantity that the item occurs in e.g. a strength
  /// per tablet size, perhaps 'per 20mg' (the size of the tablet). It is not
  /// generally normalized as a unitary unit, which would be 'per mg').
  @JsonKey(name: 'presentationRatio')
  final Ratio? presentationRatio;

  /// [presentationRatioRange] /// The quantity of substance in the unit of presentation, or in the volume (or
  /// mass) of the single pharmaceutical product or manufactured item. Unit of
  /// presentation refers to the quantity that the item occurs in e.g. a strength
  /// per tablet size, perhaps 'per 20mg' (the size of the tablet). It is not
  /// generally normalized as a unitary unit, which would be 'per mg').
  @JsonKey(name: 'presentationRatioRange')
  final RatioRange? presentationRatioRange;

  /// [textPresentation] /// A textual represention of either the whole of the presentation strength or
  /// a part of it - with the rest being in Strength.presentation as a ratio.
  @JsonKey(name: 'textPresentation')
  final FhirString? textPresentation;
  @JsonKey(name: '_textPresentation')
  final Element? textPresentationElement;

  /// [concentrationRatio] /// The strength per unitary volume (or mass).
  @JsonKey(name: 'concentrationRatio')
  final Ratio? concentrationRatio;

  /// [concentrationRatioRange] /// The strength per unitary volume (or mass).
  @JsonKey(name: 'concentrationRatioRange')
  final RatioRange? concentrationRatioRange;

  /// [textConcentration] /// A textual represention of either the whole of the concentration strength or
  /// a part of it - with the rest being in Strength.concentration as a ratio.
  @JsonKey(name: 'textConcentration')
  final FhirString? textConcentration;
  @JsonKey(name: '_textConcentration')
  final Element? textConcentrationElement;

  /// [measurementPoint] /// For when strength is measured at a particular point or distance. There are
  /// products where strength is measured at a particular point. For example, the
  /// strength of the ingredient in some inhalers is measured at a particular
  /// position relative to the point of aerosolization.
  @JsonKey(name: 'measurementPoint')
  final FhirString? measurementPoint;
  @JsonKey(name: '_measurementPoint')
  final Element? measurementPointElement;

  /// [country] /// The country or countries for which the strength range applies.
  @JsonKey(name: 'country')
  final List<CodeableConcept>? country;

  /// [referenceStrength] /// Strength expressed in terms of a reference substance. For when the
  /// ingredient strength is additionally expressed as equivalent to the strength
  /// of some other closely related substance (e.g. salt vs. base). Reference
  /// strength represents the strength (quantitative composition) of the active
  /// moiety of the active substance. There are situations when the active
  /// substance and active moiety are different, therefore both a strength and a
  /// reference strength are needed.
  @JsonKey(name: 'referenceStrength')
  final List<IngredientReferenceStrength>? referenceStrength;
  factory IngredientStrength.fromJson(Map<String, dynamic> json) =>
      _$IngredientStrengthFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$IngredientStrengthToJson(this);

  @override
  IngredientStrength clone() => throw UnimplementedError();
  @override
  IngredientStrength copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Ratio? presentationRatio,
    RatioRange? presentationRatioRange,
    FhirString? textPresentation,
    Element? textPresentationElement,
    Ratio? concentrationRatio,
    RatioRange? concentrationRatioRange,
    FhirString? textConcentration,
    Element? textConcentrationElement,
    FhirString? measurementPoint,
    Element? measurementPointElement,
    List<CodeableConcept>? country,
    List<IngredientReferenceStrength>? referenceStrength,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return IngredientStrength(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      presentationRatio: presentationRatio ?? this.presentationRatio,
      presentationRatioRange:
          presentationRatioRange ?? this.presentationRatioRange,
      textPresentation: textPresentation ?? this.textPresentation,
      textPresentationElement:
          textPresentationElement ?? this.textPresentationElement,
      concentrationRatio: concentrationRatio ?? this.concentrationRatio,
      concentrationRatioRange:
          concentrationRatioRange ?? this.concentrationRatioRange,
      textConcentration: textConcentration ?? this.textConcentration,
      textConcentrationElement:
          textConcentrationElement ?? this.textConcentrationElement,
      measurementPoint: measurementPoint ?? this.measurementPoint,
      measurementPointElement:
          measurementPointElement ?? this.measurementPointElement,
      country: country ?? this.country,
      referenceStrength: referenceStrength ?? this.referenceStrength,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory IngredientStrength.fromYaml(dynamic yaml) => yaml is String
      ? IngredientStrength.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? IngredientStrength.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'IngredientStrength cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory IngredientStrength.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return IngredientStrength.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [IngredientReferenceStrength] /// Strength expressed in terms of a reference substance. For when the
/// ingredient strength is additionally expressed as equivalent to the strength
/// of some other closely related substance (e.g. salt vs. base). Reference
/// strength represents the strength (quantitative composition) of the active
/// moiety of the active substance. There are situations when the active
/// substance and active moiety are different, therefore both a strength and a
/// reference strength are needed.
@JsonSerializable()
class IngredientReferenceStrength extends BackboneElement {
  IngredientReferenceStrength({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.substance,
    required this.strengthRatio,
    required this.strengthRatioRange,
    this.measurementPoint,
    this.measurementPointElement,
    this.country,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'IngredientReferenceStrength';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [substance] /// Relevant reference substance.
  @JsonKey(name: 'substance')
  final CodeableReference? substance;

  /// [strengthRatio] /// Strength expressed in terms of a reference substance.
  @JsonKey(name: 'strengthRatio')
  final Ratio strengthRatio;

  /// [strengthRatioRange] /// Strength expressed in terms of a reference substance.
  @JsonKey(name: 'strengthRatioRange')
  final RatioRange strengthRatioRange;

  /// [measurementPoint] /// For when strength is measured at a particular point or distance.
  @JsonKey(name: 'measurementPoint')
  final FhirString? measurementPoint;
  @JsonKey(name: '_measurementPoint')
  final Element? measurementPointElement;

  /// [country] /// The country or countries for which the strength range applies.
  @JsonKey(name: 'country')
  final List<CodeableConcept>? country;
  factory IngredientReferenceStrength.fromJson(Map<String, dynamic> json) =>
      _$IngredientReferenceStrengthFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$IngredientReferenceStrengthToJson(this);

  @override
  IngredientReferenceStrength clone() => throw UnimplementedError();
  @override
  IngredientReferenceStrength copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableReference? substance,
    Ratio? strengthRatio,
    RatioRange? strengthRatioRange,
    FhirString? measurementPoint,
    Element? measurementPointElement,
    List<CodeableConcept>? country,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return IngredientReferenceStrength(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      substance: substance ?? this.substance,
      strengthRatio: strengthRatio ?? this.strengthRatio,
      strengthRatioRange: strengthRatioRange ?? this.strengthRatioRange,
      measurementPoint: measurementPoint ?? this.measurementPoint,
      measurementPointElement:
          measurementPointElement ?? this.measurementPointElement,
      country: country ?? this.country,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory IngredientReferenceStrength.fromYaml(dynamic yaml) => yaml is String
      ? IngredientReferenceStrength.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? IngredientReferenceStrength.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'IngredientReferenceStrength cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory IngredientReferenceStrength.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return IngredientReferenceStrength.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
