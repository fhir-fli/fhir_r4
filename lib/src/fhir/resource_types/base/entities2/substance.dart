// ignore_for_file: invalid_annotation_target, sort_unnamed_constructors_first, sort_constructors_first, prefer_mixin

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../../../fhir_r4.dart';

part 'substance.freezed.dart';
part 'substance.g.dart';

/// [Substance] A homogeneous material with a definite composition.
@freezed
class Substance with _$Substance implements DomainResource {
  /// [Substance] A homogeneous material with a definite composition.
  const Substance._();

  /// [Substance] A homogeneous material with a definite composition.
  ///
  /// [resourceType] This is a Substance resource
  ///
  /// [id] The logical id of the resource, as used in the URL for the resource.
  ///  Once assigned, this value never changes.
  ///
  /// [meta] The metadata about the resource. This is content that is
  /// maintained by the infrastructure. Changes to the content might not always
  ///  be associated with version changes to the resource.
  ///
  /// [implicitRules] A reference to a set of rules that were followed when the
  /// resource was constructed, and which must be understood when processing the
  /// content. Often, this is a reference to an implementation guide that
  ///  defines the special rules along with other profiles etc.
  ///
  /// [implicitRulesElement] Extensions for implicitRules
  ///
  /// [language] The base language in which the resource is written.
  ///
  /// [languageElement] Extensions for language
  ///
  /// [text] A human-readable narrative that contains a summary of the resource
  /// and can be used to represent the content of the resource to a human. The
  /// narrative need not encode all the structured data, but is required to
  /// contain sufficient detail to make it "clinically safe" for a human to just
  /// read the narrative. Resource definitions may define what content should be
  ///  represented in the narrative to ensure clinical safety.
  ///
  /// [contained] These resources do not have an independent existence apart
  /// from the resource that contains them - they cannot be identified
  /// independently, and nor can they have their own independent transaction
  ///  scope.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the resource. To make the use of
  /// extensions safe and manageable, there is a strict set of governance
  /// applied to the definition and use of extensions. Though any implementer
  /// can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the resource and that modifies the
  /// understanding of the element that contains it and/or the understanding of
  /// the containing element's descendants. Usually modifier elements provide
  /// negation or qualification. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the definition
  /// and use of extensions. Though any implementer is allowed to define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [identifier] Unique identifier for the substance.
  ///
  /// [status] A code to indicate if the substance is actively used.
  ///
  /// [statusElement] Extensions for status
  ///
  /// [category] A code that classifies the general type of substance.  This is
  ///  used  for searching, sorting and display purposes.
  ///
  /// [code] A code (or set of codes) that identify this substance.
  ///
  /// [description] A description of the substance - its appearance, handling
  ///  requirements, and other usage notes.
  ///
  /// [descriptionElement] Extensions for description
  ///
  /// [instance] Substance may be used to describe a kind of substance, or a
  ///  specific package/container of the substance: an instance.
  ///
  /// [ingredient] A substance can be composed of other substances.
  const factory Substance({
    @Default(R4ResourceType.Substance)
    @JsonKey(unknownEnumValue: R4ResourceType.Substance)
    R4ResourceType resourceType,
    String? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    @JsonKey(name: '_implicitRules') PrimitiveElement? implicitRulesElement,
    FhirCode? language,
    @JsonKey(name: '_language') PrimitiveElement? languageElement,
    Narrative? text,
    List<Resource>? contained,
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,

    /// [status] The current state of the product.;
    SubstanceStatus? status,

    /// [statusElement] (_status): Extensions for status;
    @JsonKey(name: '_status') PrimitiveElement? statusElement,

    /// [category] Nutrition products can have different classifications - according to its nutritional properties, preparation methods, etc.;
    List<CodeableConcept>? category,
    required CodeableConcept code,
    String? description,
    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
    List<SubstanceInstance>? instance,
    List<SubstanceIngredient>? ingredient,
  }) = _Substance;

  @override
  String get fhirType => 'Substance';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory Substance.fromYaml(dynamic yaml) => yaml is String
      ? Substance.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Substance.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Substance cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory Substance.fromJson(Map<String, dynamic> json) =>
      _$SubstanceFromJson(json);

  /// Acts like a constructor, returns a [Substance], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory Substance.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SubstanceFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  /// Another convenience method because more and more I'm transmitting FHIR
  /// data as a String and not a Map
  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  Resource newId() => copyWith(id: generateNewUuidString());

  @override
  Resource newIdIfNoId() => id == null ? newId() : this;

  @override
  String get path => 'Substance/$id';

  @override
  String get resourceTypeString => 'Substance';

  @override
  Reference get thisReference =>
      Reference(reference: path, type: FhirUri(resourceTypeString));

  @override
  String toYaml() => json2yaml(toJson());

  @override
  Resource updateVersion({FhirMeta? oldMeta}) =>
      copyWith(meta: updateFhirMetaVersion(meta));
}

/// [SubstanceInstance] A homogeneous material with a definite composition.
@freezed
class SubstanceInstance with _$SubstanceInstance implements BackboneElement {
  /// [SubstanceInstance] A homogeneous material with a definite composition.
  const SubstanceInstance._();

  /// [SubstanceInstance] A homogeneous material with a definite composition.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [identifier] Identifier associated with the package/container (usually a
  ///  label affixed directly).
  ///
  /// [expiry] When the substance is no longer valid to use. For some
  ///  substances, a single arbitrary date is used for expiry.
  ///
  /// [expiryElement] Extensions for expiry
  ///
  /// [quantity] The amount of the substance.
  const factory SubstanceInstance({
    String? id,
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Identifier? identifier,
    FhirDateTime? expiry,
    @JsonKey(name: '_expiry') PrimitiveElement? expiryElement,
    Quantity? quantity,
  }) = _SubstanceInstance;

  @override
  String get fhirType => 'SubstanceInstance';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory SubstanceInstance.fromYaml(dynamic yaml) => yaml is String
      ? SubstanceInstance.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? SubstanceInstance.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'SubstanceInstance cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory SubstanceInstance.fromJson(Map<String, dynamic> json) =>
      _$SubstanceInstanceFromJson(json);

  /// Acts like a constructor, returns a [SubstanceInstance], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory SubstanceInstance.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SubstanceInstanceFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}

/// [SubstanceIngredient] A homogeneous material with a definite
@freezed
class SubstanceIngredient
    with _$SubstanceIngredient
    implements BackboneElement {
  /// [SubstanceIngredient] A homogeneous material with a definite
  const SubstanceIngredient._();

  /// [SubstanceIngredient] A homogeneous material with a definite
  ///  composition.
  ///
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  ///
  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  ///
  /// [modifierExtension] May be used to represent additional information that
  /// is not part of the basic definition of the element and that modifies the
  /// understanding of the element in which it is contained and/or the
  /// understanding of the containing element's descendants. Usually modifier
  /// elements provide negation or qualification. To make the use of extensions
  /// safe and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension. Applications processing a resource are
  ///  required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on
  /// Resource or DomainResource (including cannot change the meaning of
  ///  modifierExtension itself).
  ///
  /// [quantity] The amount of the ingredient in the substance - a
  ///  concentration ratio.
  ///
  /// [substanceCodeableConcept] Another substance that is a component of this
  ///  substance.
  ///
  /// [substanceReference] Another substance that is a component of this
  ///  substance.
  const factory SubstanceIngredient({
    String? id,
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Ratio? quantity,
    CodeableConcept? substanceCodeableConcept,
    Reference? substanceReference,
  }) = _SubstanceIngredient;

  @override
  String get fhirType => 'SubstanceIngredient';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory SubstanceIngredient.fromYaml(dynamic yaml) => yaml is String
      ? SubstanceIngredient.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? SubstanceIngredient.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'SubstanceIngredient cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory SubstanceIngredient.fromJson(Map<String, dynamic> json) =>
      _$SubstanceIngredientFromJson(json);

  /// Acts like a constructor, returns a [SubstanceIngredient], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory SubstanceIngredient.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SubstanceIngredientFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
}
