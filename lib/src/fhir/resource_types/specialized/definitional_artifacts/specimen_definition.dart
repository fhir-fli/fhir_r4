// ignore_for_file: invalid_annotation_target, sort_unnamed_constructors_first, sort_constructors_first, prefer_mixin

// Dart imports:
import 'dart:convert';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

// Project imports:
import '../../../../../fhir_r4.dart';

part 'specimen_definition.freezed.dart';
part 'specimen_definition.g.dart';

/// [SpecimenDefinition] A kind of specimen with associated set of
@freezed
class SpecimenDefinition with _$SpecimenDefinition implements DomainResource {
  /// [SpecimenDefinition] A kind of specimen with associated set of
  const SpecimenDefinition._();

  /// [SpecimenDefinition] A kind of specimen with associated set of
  ///  requirements.
  ///
  /// [resourceType] This is a SpecimenDefinition resource
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
  /// [identifier] A business identifier associated with the kind of specimen.
  ///
  /// [typeCollected] The kind of material to be collected.
  ///
  /// [patientPreparation] Preparation of the patient for specimen collection.
  ///
  /// [timeAspect] Time aspect of specimen collection (duration or offset).
  ///
  /// [timeAspectElement] Extensions for timeAspect
  ///
  /// [collection] The action to be performed for collecting the specimen.
  ///
  /// [typeTested] Specimen conditioned in a container as expected by the
  ///  testing laboratory.
  const factory SpecimenDefinition({
    @Default(R4ResourceType.SpecimenDefinition)
    @JsonKey(unknownEnumValue: R4ResourceType.SpecimenDefinition)

    /// [resourceType] This is a SpecimenDefinition resource
    R4ResourceType resourceType,

    /// [id] The logical id of the resource, as used in the URL for the resource.
    ///  Once assigned, this value never changes.
    String? id,

    /// [meta] The metadata about the resource. This is content that is
    /// maintained by the infrastructure. Changes to the content might not always
    ///  be associated with version changes to the resource.
    FhirMeta? meta,

    /// [implicitRules] A reference to a set of rules that were followed when the
    /// resource was constructed, and which must be understood when processing the
    /// content. Often, this is a reference to an implementation guide that
    ///  defines the special rules along with other profiles etc.
    FhirUri? implicitRules,

    /// [implicitRulesElement] Extensions for implicitRules
    @JsonKey(name: '_implicitRules') PrimitiveElement? implicitRulesElement,

    /// [language] The base language in which the resource is written.
    FhirCode? language,

    /// [languageElement] Extensions for language
    @JsonKey(name: '_language') PrimitiveElement? languageElement,

    /// [text] A human-readable narrative that contains a summary of the resource
    /// and can be used to represent the content of the resource to a human. The
    /// narrative need not encode all the structured data, but is required to
    /// contain sufficient detail to make it "clinically safe" for a human to just
    /// read the narrative. Resource definitions may define what content should be
    ///  represented in the narrative to ensure clinical safety.
    Narrative? text,

    /// [contained] These resources do not have an independent existence apart
    /// from the resource that contains them - they cannot be identified
    /// independently, and nor can they have their own independent transaction
    ///  scope.
    List<Resource>? contained,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the resource. To make the use of
    /// extensions safe and manageable, there is a strict set of governance
    /// applied to the definition and use of extensions. Though any implementer
    /// can define an extension, there is a set of requirements that SHALL be met
    ///  as part of the definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

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
    List<FhirExtension>? modifierExtension,

    /// [identifier] A business identifier associated with the kind of specimen.
    Identifier? identifier,

    /// [typeCollected] The kind of material to be collected.
    CodeableConcept? typeCollected,

    /// [patientPreparation] Preparation of the patient for specimen collection.
    List<CodeableConcept>? patientPreparation,

    /// [timeAspect] Time aspect of specimen collection (duration or offset).
    String? timeAspect,

    /// [timeAspectElement] Extensions for timeAspect
    @JsonKey(name: '_timeAspect') PrimitiveElement? timeAspectElement,

    /// [collection] The action to be performed for collecting the specimen.
    List<CodeableConcept>? collection,

    /// [typeTested] Specimen conditioned in a container as expected by the
    ///  testing laboratory.
    List<SpecimenDefinitionTypeTested>? typeTested,
  }) = _SpecimenDefinition;

  @override
  String get fhirType => 'SpecimenDefinition';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory SpecimenDefinition.fromYaml(dynamic yaml) => yaml is String
      ? SpecimenDefinition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? SpecimenDefinition.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'SpecimenDefinition cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory SpecimenDefinition.fromJson(Map<String, dynamic> json) =>
      _$SpecimenDefinitionFromJson(json);

  /// Acts like a constructor, returns a [SpecimenDefinition], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory SpecimenDefinition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SpecimenDefinitionFromJson(json);
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
  String get path => '$fhirType/$id';

  @override
  String get resourceTypeString => fhirType;

  @override
  Reference get thisReference =>
      Reference(reference: path, type: FhirUri(resourceTypeString));

  @override
  String toYaml() => json2yaml(toJson());

  @override
  Resource updateVersion({FhirMeta? oldMeta}) =>
      copyWith(meta: updateFhirMetaVersion(meta));
}

/// [SpecimenDefinitionTypeTested] A kind of specimen with associated set of
@freezed

/// [SpecimenDefinitionTypeTested] A kind of specimen with associated set of
@freezed
class SpecimenDefinitionTypeTested
    with _$SpecimenDefinitionTypeTested
    implements BackboneElement {
  /// [SpecimenDefinitionTypeTested] A kind of specimen with associated set of
  const SpecimenDefinitionTypeTested._();

  /// [SpecimenDefinitionTypeTested] A kind of specimen with associated set of
  ///  requirements.
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
  /// [isDerived] Primary of secondary specimen.
  ///
  /// [isDerivedElement] Extensions for isDerived
  ///
  /// [type] The kind of specimen conditioned for testing expected by lab.
  ///
  /// [preference] The preference for this type of conditioned specimen.
  ///
  /// [preferenceElement] Extensions for preference
  ///
  /// [container] The specimen's container.
  ///
  /// [requirement] Requirements for delivery and special handling of this kind
  ///  of conditioned specimen.
  ///
  /// [requirementElement] Extensions for requirement
  ///
  /// [retentionTime] The usual time that a specimen of this kind is retained
  /// after the ordered tests are completed, for the purpose of additional
  ///  testing.
  ///
  /// [rejectionCriterion] Criterion for rejection of the specimen in its
  ///  container by the laboratory.
  ///
  /// [handling] Set of instructions for preservation/transport of the specimen
  ///  at a defined temperature interval, prior the testing process.
  const factory SpecimenDefinitionTypeTested({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

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
    List<FhirExtension>? modifierExtension,

    /// [isDerived] Primary of secondary specimen.
    FhirBoolean? isDerived,

    /// [isDerivedElement] Extensions for isDerived
    @JsonKey(name: '_isDerived') PrimitiveElement? isDerivedElement,

    /// [type] The kind of specimen conditioned for testing expected by lab.
    CodeableConcept? type,

    /// [preference] The preference for this type of conditioned specimen.
    FhirCode? preference,

    /// [preferenceElement] Extensions for preference
    @JsonKey(name: '_preference') PrimitiveElement? preferenceElement,

    /// [container] The specimen's container.
    SpecimenDefinitionContainer? container,

    /// [requirement] Requirements for delivery and special handling of this kind
    ///  of conditioned specimen.
    String? requirement,

    /// [requirementElement] Extensions for requirement
    @JsonKey(name: '_requirement') PrimitiveElement? requirementElement,

    /// [retentionTime] The usual time that a specimen of this kind is retained
    /// after the ordered tests are completed, for the purpose of additional
    ///  testing.
    FhirDuration? retentionTime,

    /// [rejectionCriterion] Criterion for rejection of the specimen in its
    ///  container by the laboratory.
    List<CodeableConcept>? rejectionCriterion,

    /// [handling] Set of instructions for preservation/transport of the specimen
    ///  at a defined temperature interval, prior the testing process.
    List<SpecimenDefinitionHandling>? handling,
  }) = _SpecimenDefinitionTypeTested;

  @override
  String get fhirType => 'SpecimenDefinitionTypeTested';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory SpecimenDefinitionTypeTested.fromYaml(dynamic yaml) => yaml is String
      ? SpecimenDefinitionTypeTested.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? SpecimenDefinitionTypeTested.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'SpecimenDefinitionTypeTested cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory SpecimenDefinitionTypeTested.fromJson(Map<String, dynamic> json) =>
      _$SpecimenDefinitionTypeTestedFromJson(json);

  /// Acts like a constructor, returns a [SpecimenDefinitionTypeTested], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory SpecimenDefinitionTypeTested.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SpecimenDefinitionTypeTestedFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [SpecimenDefinitionContainer] A kind of specimen with associated set of
@freezed

/// [SpecimenDefinitionContainer] A kind of specimen with associated set of
@freezed
class SpecimenDefinitionContainer
    with _$SpecimenDefinitionContainer
    implements BackboneElement {
  /// [SpecimenDefinitionContainer] A kind of specimen with associated set of
  const SpecimenDefinitionContainer._();

  /// [SpecimenDefinitionContainer] A kind of specimen with associated set of
  ///  requirements.
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
  /// [material] The type of material of the container.
  ///
  /// [type] The type of container used to contain this kind of specimen.
  ///
  /// [cap] Color of container cap.
  ///
  /// [description] The textual description of the kind of container.
  ///
  /// [descriptionElement] Extensions for description
  ///
  /// [capacity] The capacity (volume or other measure) of this kind of
  ///  container.
  ///
  /// [minimumVolumeQuantity] The minimum volume to be conditioned in the
  ///  container.
  ///
  /// [minimumVolumeString] The minimum volume to be conditioned in the
  ///  container.
  ///
  /// [minimumVolumeStringElement] Extensions for minimumVolumeString
  ///
  /// [additive] Substance introduced in the kind of container to preserve,
  ///  maintain or enhance the specimen. Examples: Formalin, Citrate, EDTA.
  ///
  /// [preparation] Special processing that should be applied to the container
  ///  for this kind of specimen.
  ///
  /// [preparationElement] Extensions for preparation
  const factory SpecimenDefinitionContainer({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

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
    List<FhirExtension>? modifierExtension,

    /// [material] The type of material of the container.
    CodeableConcept? material,

    /// [type] The type of container used to contain this kind of specimen.
    CodeableConcept? type,

    /// [cap] Color of container cap.
    CodeableConcept? cap,

    /// [description] The textual description of the kind of container.
    String? description,

    /// [descriptionElement] Extensions for description
    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,

    /// [capacity] The capacity (volume or other measure) of this kind of
    ///  container.
    Quantity? capacity,

    /// [minimumVolumeQuantity] The minimum volume to be conditioned in the
    ///  container.
    Quantity? minimumVolumeQuantity,

    /// [minimumVolumeString] The minimum volume to be conditioned in the
    ///  container.
    String? minimumVolumeString,

    /// [minimumVolumeStringElement] Extensions for minimumVolumeString
    @JsonKey(name: '_minimumVolumeString')
    PrimitiveElement? minimumVolumeStringElement,

    /// [additive] Substance introduced in the kind of container to preserve,
    ///  maintain or enhance the specimen. Examples: Formalin, Citrate, EDTA.
    List<SpecimenDefinitionAdditive>? additive,

    /// [preparation] Special processing that should be applied to the container
    ///  for this kind of specimen.
    String? preparation,

    /// [preparationElement] Extensions for preparation
    @JsonKey(name: '_preparation') PrimitiveElement? preparationElement,
  }) = _SpecimenDefinitionContainer;

  @override
  String get fhirType => 'SpecimenDefinitionContainer';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory SpecimenDefinitionContainer.fromYaml(dynamic yaml) => yaml is String
      ? SpecimenDefinitionContainer.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? SpecimenDefinitionContainer.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'SpecimenDefinitionContainer cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory SpecimenDefinitionContainer.fromJson(Map<String, dynamic> json) =>
      _$SpecimenDefinitionContainerFromJson(json);

  /// Acts like a constructor, returns a [SpecimenDefinitionContainer], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory SpecimenDefinitionContainer.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SpecimenDefinitionContainerFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [SpecimenDefinitionAdditive] A kind of specimen with associated set of
@freezed

/// [SpecimenDefinitionAdditive] A kind of specimen with associated set of
@freezed
class SpecimenDefinitionAdditive
    with _$SpecimenDefinitionAdditive
    implements BackboneElement {
  /// [SpecimenDefinitionAdditive] A kind of specimen with associated set of
  const SpecimenDefinitionAdditive._();

  /// [SpecimenDefinitionAdditive] A kind of specimen with associated set of
  ///  requirements.
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
  /// [additiveCodeableConcept] Substance introduced in the kind of container
  /// to preserve, maintain or enhance the specimen. Examples: Formalin,
  ///  Citrate, EDTA.
  ///
  /// [additiveReference] Substance introduced in the kind of container to
  /// preserve, maintain or enhance the specimen. Examples: Formalin, Citrate,
  ///  EDTA.
  const factory SpecimenDefinitionAdditive({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

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
    List<FhirExtension>? modifierExtension,

    /// [additiveCodeableConcept] Substance introduced in the kind of container
    /// to preserve, maintain or enhance the specimen. Examples: Formalin,
    ///  Citrate, EDTA.
    CodeableConcept? additiveCodeableConcept,

    /// [additiveReference] Substance introduced in the kind of container to
    /// preserve, maintain or enhance the specimen. Examples: Formalin, Citrate,
    ///  EDTA.
    Reference? additiveReference,
  }) = _SpecimenDefinitionAdditive;

  @override
  String get fhirType => 'SpecimenDefinitionAdditive';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory SpecimenDefinitionAdditive.fromYaml(dynamic yaml) => yaml is String
      ? SpecimenDefinitionAdditive.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? SpecimenDefinitionAdditive.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'SpecimenDefinitionAdditive cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory SpecimenDefinitionAdditive.fromJson(Map<String, dynamic> json) =>
      _$SpecimenDefinitionAdditiveFromJson(json);

  /// Acts like a constructor, returns a [SpecimenDefinitionAdditive], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory SpecimenDefinitionAdditive.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SpecimenDefinitionAdditiveFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}

/// [SpecimenDefinitionHandling] A kind of specimen with associated set of
@freezed

/// [SpecimenDefinitionHandling] A kind of specimen with associated set of
@freezed
class SpecimenDefinitionHandling
    with _$SpecimenDefinitionHandling
    implements BackboneElement {
  /// [SpecimenDefinitionHandling] A kind of specimen with associated set of
  const SpecimenDefinitionHandling._();

  /// [SpecimenDefinitionHandling] A kind of specimen with associated set of
  ///  requirements.
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
  /// [temperatureQualifier] It qualifies the interval of temperature, which
  /// characterizes an occurrence of handling. Conditions that are not related
  ///  to temperature may be handled in the instruction element.
  ///
  /// [temperatureRange] The temperature interval for this set of handling
  ///  instructions.
  ///
  /// [maxDuration] The maximum time interval of preservation of the specimen
  ///  with these conditions.
  ///
  /// [instruction] Additional textual instructions for the preservation or
  ///  transport of the specimen. For instance, 'Protect from light exposure'.
  ///
  /// [instructionElement] Extensions for instruction
  const factory SpecimenDefinitionHandling({
    /// [id] Unique id for the element within a resource (for internal
    ///  references). This may be any string value that does not contain spaces.
    String? id,

    /// [extension_] May be used to represent additional information that is not
    /// part of the basic definition of the element. To make the use of extensions
    /// safe and manageable, there is a strict set of governance  applied to the
    /// definition and use of extensions. Though any implementer can define an
    /// extension, there is a set of requirements that SHALL be met as part of the
    ///  definition of the extension.
    @JsonKey(name: 'extension') List<FhirExtension>? extension_,

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
    List<FhirExtension>? modifierExtension,

    /// [temperatureQualifier] It qualifies the interval of temperature, which
    /// characterizes an occurrence of handling. Conditions that are not related
    ///  to temperature may be handled in the instruction element.
    CodeableConcept? temperatureQualifier,

    /// [temperatureRange] The temperature interval for this set of handling
    ///  instructions.
    Range? temperatureRange,

    /// [maxDuration] The maximum time interval of preservation of the specimen
    ///  with these conditions.
    FhirDuration? maxDuration,

    /// [instruction] Additional textual instructions for the preservation or
    ///  transport of the specimen. For instance, 'Protect from light exposure'.
    String? instruction,

    /// [instructionElement] Extensions for instruction
    @JsonKey(name: '_instruction') PrimitiveElement? instructionElement,
  }) = _SpecimenDefinitionHandling;

  @override
  String get fhirType => 'SpecimenDefinitionHandling';

  /// Factory constructor that accepts a [String] in YAML format as an argument
  factory SpecimenDefinitionHandling.fromYaml(dynamic yaml) => yaml is String
      ? SpecimenDefinitionHandling.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? SpecimenDefinitionHandling.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'SpecimenDefinitionHandling cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  /// Factory constructor, accepts [Map<String, dynamic>] as an argument
  factory SpecimenDefinitionHandling.fromJson(Map<String, dynamic> json) =>
      _$SpecimenDefinitionHandlingFromJson(json);

  /// Acts like a constructor, returns a [SpecimenDefinitionHandling], accepts a
  /// [String] as an argument, mostly because I got tired of typing it out
  factory SpecimenDefinitionHandling.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$SpecimenDefinitionHandlingFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }

  @override
  String toJsonString() => jsonEncode(toJson());

  @override
  String toYaml() => json2yaml(toJson());
}
