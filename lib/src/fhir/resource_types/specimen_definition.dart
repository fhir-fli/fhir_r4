import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

/// [SpecimenDefinition] /// A kind of specimen with associated set of requirements.
@JsonSerializable()
class SpecimenDefinition extends DomainResource {
  SpecimenDefinition({
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
    this.typeCollected,
    this.patientPreparation,
    this.timeAspect,
    this.timeAspectElement,
    this.collection,
    this.typeTested,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(resourceType: R4ResourceType.SpecimenDefinition);
  @override
  String get fhirType => 'SpecimenDefinition';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// A business identifier associated with the kind of specimen.
  @JsonKey(name: 'identifier')
  final Identifier? identifier;

  /// [typeCollected] /// The kind of material to be collected.
  @JsonKey(name: 'typeCollected')
  final CodeableConcept? typeCollected;

  /// [patientPreparation] /// Preparation of the patient for specimen collection.
  @JsonKey(name: 'patientPreparation')
  final List<CodeableConcept>? patientPreparation;

  /// [timeAspect] /// Time aspect of specimen collection (duration or offset).
  @JsonKey(name: 'timeAspect')
  final FhirString? timeAspect;
  @JsonKey(name: '_timeAspect')
  final Element? timeAspectElement;

  /// [collection] /// The action to be performed for collecting the specimen.
  @JsonKey(name: 'collection')
  final List<CodeableConcept>? collection;

  /// [typeTested] /// Specimen conditioned in a container as expected by the testing laboratory.
  @JsonKey(name: 'typeTested')
  final List<SpecimenDefinitionTypeTested>? typeTested;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (meta != null) {
      json['meta'] = meta!.toJson();
    }
    if (implicitRules?.value != null) {
      json['implicitRules'] = implicitRules!.value;
    }
    if (implicitRulesElement != null) {
      json['_implicitRules'] = implicitRulesElement!.toJson();
    }
    if (language != null) {
      json['language'] = language!.toJson();
    }
    if (text != null) {
      json['text'] = text!.toJson();
    }
    if (contained != null && contained!.isNotEmpty) {
      json['contained'] =
          contained!.map<dynamic>((Resource v) => v.toJson()).toList();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (identifier != null) {
      json['identifier'] = identifier!.toJson();
    }
    if (typeCollected != null) {
      json['typeCollected'] = typeCollected!.toJson();
    }
    if (patientPreparation != null && patientPreparation!.isNotEmpty) {
      json['patientPreparation'] = patientPreparation!
          .map<dynamic>((CodeableConcept v) => v.toJson())
          .toList();
    }
    if (timeAspect?.value != null) {
      json['timeAspect'] = timeAspect!.value;
    }
    if (timeAspectElement != null) {
      json['_timeAspect'] = timeAspectElement!.toJson();
    }
    if (collection != null && collection!.isNotEmpty) {
      json['collection'] =
          collection!.map<dynamic>((CodeableConcept v) => v.toJson()).toList();
    }
    if (typeTested != null && typeTested!.isNotEmpty) {
      json['typeTested'] = typeTested!
          .map<dynamic>((SpecimenDefinitionTypeTested v) => v.toJson())
          .toList();
    }
    return json;
  }

  factory SpecimenDefinition.fromJson(Map<String, dynamic> json) {
    return SpecimenDefinition(
      id: json['id'] != null
          ? FhirString.fromJson(json['id'] as Map<String, dynamic>)
          : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(json['meta'] as Map<String, dynamic>)
          : null,
      implicitRules:
          json['implicitRules'] != null ? FhirUri(json['implicitRules']) : null,
      implicitRulesElement: json['_implicitRules'] != null
          ? Element.fromJson(json['_implicitRules'] as Map<String, dynamic>)
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson(json['language'] as Map<String, dynamic>)
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(json['text'] as Map<String, dynamic>)
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                  (dynamic v) => Resource.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      identifier: json['identifier'] != null
          ? Identifier.fromJson(json['identifier'] as Map<String, dynamic>)
          : null,
      typeCollected: json['typeCollected'] != null
          ? CodeableConcept.fromJson(
              json['typeCollected'] as Map<String, dynamic>)
          : null,
      patientPreparation: json['patientPreparation'] != null
          ? (json['patientPreparation'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      timeAspect:
          json['timeAspect'] != null ? FhirString(json['timeAspect']) : null,
      timeAspectElement: json['_timeAspect'] != null
          ? Element.fromJson(json['_timeAspect'] as Map<String, dynamic>)
          : null,
      collection: json['collection'] != null
          ? (json['collection'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      typeTested: json['typeTested'] != null
          ? (json['typeTested'] as List<dynamic>)
              .map<SpecimenDefinitionTypeTested>((dynamic v) =>
                  SpecimenDefinitionTypeTested.fromJson(
                      v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  SpecimenDefinition clone() => throw UnimplementedError();
  @override
  SpecimenDefinition copyWith({
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
    CodeableConcept? typeCollected,
    List<CodeableConcept>? patientPreparation,
    FhirString? timeAspect,
    Element? timeAspectElement,
    List<CodeableConcept>? collection,
    List<SpecimenDefinitionTypeTested>? typeTested,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return SpecimenDefinition(
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
      typeCollected: typeCollected ?? this.typeCollected,
      patientPreparation: patientPreparation ?? this.patientPreparation,
      timeAspect: timeAspect ?? this.timeAspect,
      timeAspectElement: timeAspectElement ?? this.timeAspectElement,
      collection: collection ?? this.collection,
      typeTested: typeTested ?? this.typeTested,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory SpecimenDefinition.fromYaml(dynamic yaml) => yaml is String
      ? SpecimenDefinition.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? SpecimenDefinition.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'SpecimenDefinition cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory SpecimenDefinition.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return SpecimenDefinition.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [SpecimenDefinitionTypeTested] /// Specimen conditioned in a container as expected by the testing laboratory.
@JsonSerializable()
class SpecimenDefinitionTypeTested extends BackboneElement {
  SpecimenDefinitionTypeTested({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.isDerived,
    this.isDerivedElement,
    this.type,
    required this.preference,
    this.preferenceElement,
    this.container,
    this.requirement,
    this.requirementElement,
    this.retentionTime,
    this.rejectionCriterion,
    this.handling,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'SpecimenDefinitionTypeTested';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [isDerived] /// Primary of secondary specimen.
  @JsonKey(name: 'isDerived')
  final FhirBoolean? isDerived;
  @JsonKey(name: '_isDerived')
  final Element? isDerivedElement;

  /// [type] /// The kind of specimen conditioned for testing expected by lab.
  @JsonKey(name: 'type')
  final CodeableConcept? type;

  /// [preference] /// The preference for this type of conditioned specimen.
  @JsonKey(name: 'preference')
  final SpecimenContainedPreference preference;
  @JsonKey(name: '_preference')
  final Element? preferenceElement;

  /// [container] /// The specimen's container.
  @JsonKey(name: 'container')
  final SpecimenDefinitionContainer? container;

  /// [requirement] /// Requirements for delivery and special handling of this kind of conditioned
  /// specimen.
  @JsonKey(name: 'requirement')
  final FhirString? requirement;
  @JsonKey(name: '_requirement')
  final Element? requirementElement;

  /// [retentionTime] /// The usual time that a specimen of this kind is retained after the ordered
  /// tests are completed, for the purpose of additional testing.
  @JsonKey(name: 'retentionTime')
  final FhirDuration? retentionTime;

  /// [rejectionCriterion] /// Criterion for rejection of the specimen in its container by the laboratory.
  @JsonKey(name: 'rejectionCriterion')
  final List<CodeableConcept>? rejectionCriterion;

  /// [handling] /// Set of instructions for preservation/transport of the specimen at a defined
  /// temperature interval, prior the testing process.
  @JsonKey(name: 'handling')
  final List<SpecimenDefinitionHandling>? handling;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (isDerived?.value != null) {
      json['isDerived'] = isDerived!.value;
    }
    if (isDerivedElement != null) {
      json['_isDerived'] = isDerivedElement!.toJson();
    }
    if (type != null) {
      json['type'] = type!.toJson();
    }
    json['preference'] = preference.toJson();
    if (container != null) {
      json['container'] = container!.toJson();
    }
    if (requirement?.value != null) {
      json['requirement'] = requirement!.value;
    }
    if (requirementElement != null) {
      json['_requirement'] = requirementElement!.toJson();
    }
    if (retentionTime != null) {
      json['retentionTime'] = retentionTime!.toJson();
    }
    if (rejectionCriterion != null && rejectionCriterion!.isNotEmpty) {
      json['rejectionCriterion'] = rejectionCriterion!
          .map<dynamic>((CodeableConcept v) => v.toJson())
          .toList();
    }
    if (handling != null && handling!.isNotEmpty) {
      json['handling'] = handling!
          .map<dynamic>((SpecimenDefinitionHandling v) => v.toJson())
          .toList();
    }
    return json;
  }

  factory SpecimenDefinitionTypeTested.fromJson(Map<String, dynamic> json) {
    return SpecimenDefinitionTypeTested(
      id: json['id'] != null
          ? FhirString.fromJson(json['id'] as Map<String, dynamic>)
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      isDerived:
          json['isDerived'] != null ? FhirBoolean(json['isDerived']) : null,
      isDerivedElement: json['_isDerived'] != null
          ? Element.fromJson(json['_isDerived'] as Map<String, dynamic>)
          : null,
      type: json['type'] != null
          ? CodeableConcept.fromJson(json['type'] as Map<String, dynamic>)
          : null,
      preference: SpecimenContainedPreference.fromJson(
          json['preference'] as Map<String, dynamic>),
      container: json['container'] != null
          ? SpecimenDefinitionContainer.fromJson(
              json['container'] as Map<String, dynamic>)
          : null,
      requirement:
          json['requirement'] != null ? FhirString(json['requirement']) : null,
      requirementElement: json['_requirement'] != null
          ? Element.fromJson(json['_requirement'] as Map<String, dynamic>)
          : null,
      retentionTime: json['retentionTime'] != null
          ? FhirDuration.fromJson(json['retentionTime'] as Map<String, dynamic>)
          : null,
      rejectionCriterion: json['rejectionCriterion'] != null
          ? (json['rejectionCriterion'] as List<dynamic>)
              .map<CodeableConcept>((dynamic v) =>
                  CodeableConcept.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      handling: json['handling'] != null
          ? (json['handling'] as List<dynamic>)
              .map<SpecimenDefinitionHandling>((dynamic v) =>
                  SpecimenDefinitionHandling.fromJson(
                      v as Map<String, dynamic>))
              .toList()
          : null,
    );
  }
  @override
  SpecimenDefinitionTypeTested clone() => throw UnimplementedError();
  @override
  SpecimenDefinitionTypeTested copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirBoolean? isDerived,
    Element? isDerivedElement,
    CodeableConcept? type,
    SpecimenContainedPreference? preference,
    Element? preferenceElement,
    SpecimenDefinitionContainer? container,
    FhirString? requirement,
    Element? requirementElement,
    FhirDuration? retentionTime,
    List<CodeableConcept>? rejectionCriterion,
    List<SpecimenDefinitionHandling>? handling,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return SpecimenDefinitionTypeTested(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      isDerived: isDerived ?? this.isDerived,
      isDerivedElement: isDerivedElement ?? this.isDerivedElement,
      type: type ?? this.type,
      preference: preference ?? this.preference,
      preferenceElement: preferenceElement ?? this.preferenceElement,
      container: container ?? this.container,
      requirement: requirement ?? this.requirement,
      requirementElement: requirementElement ?? this.requirementElement,
      retentionTime: retentionTime ?? this.retentionTime,
      rejectionCriterion: rejectionCriterion ?? this.rejectionCriterion,
      handling: handling ?? this.handling,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory SpecimenDefinitionTypeTested.fromYaml(dynamic yaml) => yaml is String
      ? SpecimenDefinitionTypeTested.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? SpecimenDefinitionTypeTested.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'SpecimenDefinitionTypeTested cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory SpecimenDefinitionTypeTested.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return SpecimenDefinitionTypeTested.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [SpecimenDefinitionContainer] /// The specimen's container.
@JsonSerializable()
class SpecimenDefinitionContainer extends BackboneElement {
  SpecimenDefinitionContainer({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.material,
    this.type,
    this.cap,
    this.description,
    this.descriptionElement,
    this.capacity,
    this.minimumVolumeQuantity,
    this.minimumVolumeString,
    this.minimumVolumeStringElement,
    this.additive,
    this.preparation,
    this.preparationElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'SpecimenDefinitionContainer';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [material] /// The type of material of the container.
  @JsonKey(name: 'material')
  final CodeableConcept? material;

  /// [type] /// The type of container used to contain this kind of specimen.
  @JsonKey(name: 'type')
  final CodeableConcept? type;

  /// [cap] /// Color of container cap.
  @JsonKey(name: 'cap')
  final CodeableConcept? cap;

  /// [description] /// The textual description of the kind of container.
  @JsonKey(name: 'description')
  final FhirString? description;
  @JsonKey(name: '_description')
  final Element? descriptionElement;

  /// [capacity] /// The capacity (volume or other measure) of this kind of container.
  @JsonKey(name: 'capacity')
  final Quantity? capacity;

  /// [minimumVolumeQuantity] /// The minimum volume to be conditioned in the container.
  @JsonKey(name: 'minimumVolumeQuantity')
  final Quantity? minimumVolumeQuantity;

  /// [minimumVolumeString] /// The minimum volume to be conditioned in the container.
  @JsonKey(name: 'minimumVolumeString')
  final FhirString? minimumVolumeString;
  @JsonKey(name: '_minimumVolumeString')
  final Element? minimumVolumeStringElement;

  /// [additive] /// Substance introduced in the kind of container to preserve, maintain or
  /// enhance the specimen. Examples: Formalin, Citrate, EDTA.
  @JsonKey(name: 'additive')
  final List<SpecimenDefinitionAdditive>? additive;

  /// [preparation] /// Special processing that should be applied to the container for this kind of
  /// specimen.
  @JsonKey(name: 'preparation')
  final FhirString? preparation;
  @JsonKey(name: '_preparation')
  final Element? preparationElement;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (material != null) {
      json['material'] = material!.toJson();
    }
    if (type != null) {
      json['type'] = type!.toJson();
    }
    if (cap != null) {
      json['cap'] = cap!.toJson();
    }
    if (description?.value != null) {
      json['description'] = description!.value;
    }
    if (descriptionElement != null) {
      json['_description'] = descriptionElement!.toJson();
    }
    if (capacity != null) {
      json['capacity'] = capacity!.toJson();
    }
    if (minimumVolumeQuantity != null) {
      json['minimumVolumeQuantity'] = minimumVolumeQuantity!.toJson();
    }
    if (minimumVolumeString?.value != null) {
      json['minimumVolumeString'] = minimumVolumeString!.value;
    }
    if (minimumVolumeStringElement != null) {
      json['_minimumVolumeString'] = minimumVolumeStringElement!.toJson();
    }
    if (additive != null && additive!.isNotEmpty) {
      json['additive'] = additive!
          .map<dynamic>((SpecimenDefinitionAdditive v) => v.toJson())
          .toList();
    }
    if (preparation?.value != null) {
      json['preparation'] = preparation!.value;
    }
    if (preparationElement != null) {
      json['_preparation'] = preparationElement!.toJson();
    }
    return json;
  }

  factory SpecimenDefinitionContainer.fromJson(Map<String, dynamic> json) {
    return SpecimenDefinitionContainer(
      id: json['id'] != null
          ? FhirString.fromJson(json['id'] as Map<String, dynamic>)
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      material: json['material'] != null
          ? CodeableConcept.fromJson(json['material'] as Map<String, dynamic>)
          : null,
      type: json['type'] != null
          ? CodeableConcept.fromJson(json['type'] as Map<String, dynamic>)
          : null,
      cap: json['cap'] != null
          ? CodeableConcept.fromJson(json['cap'] as Map<String, dynamic>)
          : null,
      description:
          json['description'] != null ? FhirString(json['description']) : null,
      descriptionElement: json['_description'] != null
          ? Element.fromJson(json['_description'] as Map<String, dynamic>)
          : null,
      capacity: json['capacity'] != null
          ? Quantity.fromJson(json['capacity'] as Map<String, dynamic>)
          : null,
      minimumVolumeQuantity: json['minimumVolumeQuantity'] != null
          ? Quantity.fromJson(
              json['minimumVolumeQuantity'] as Map<String, dynamic>)
          : null,
      minimumVolumeString: json['minimumVolumeString'] != null
          ? FhirString(json['minimumVolumeString'])
          : null,
      minimumVolumeStringElement: json['_minimumVolumeString'] != null
          ? Element.fromJson(
              json['_minimumVolumeString'] as Map<String, dynamic>)
          : null,
      additive: json['additive'] != null
          ? (json['additive'] as List<dynamic>)
              .map<SpecimenDefinitionAdditive>((dynamic v) =>
                  SpecimenDefinitionAdditive.fromJson(
                      v as Map<String, dynamic>))
              .toList()
          : null,
      preparation:
          json['preparation'] != null ? FhirString(json['preparation']) : null,
      preparationElement: json['_preparation'] != null
          ? Element.fromJson(json['_preparation'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  SpecimenDefinitionContainer clone() => throw UnimplementedError();
  @override
  SpecimenDefinitionContainer copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? material,
    CodeableConcept? type,
    CodeableConcept? cap,
    FhirString? description,
    Element? descriptionElement,
    Quantity? capacity,
    Quantity? minimumVolumeQuantity,
    FhirString? minimumVolumeString,
    Element? minimumVolumeStringElement,
    List<SpecimenDefinitionAdditive>? additive,
    FhirString? preparation,
    Element? preparationElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return SpecimenDefinitionContainer(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      material: material ?? this.material,
      type: type ?? this.type,
      cap: cap ?? this.cap,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      capacity: capacity ?? this.capacity,
      minimumVolumeQuantity:
          minimumVolumeQuantity ?? this.minimumVolumeQuantity,
      minimumVolumeString: minimumVolumeString ?? this.minimumVolumeString,
      minimumVolumeStringElement:
          minimumVolumeStringElement ?? this.minimumVolumeStringElement,
      additive: additive ?? this.additive,
      preparation: preparation ?? this.preparation,
      preparationElement: preparationElement ?? this.preparationElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory SpecimenDefinitionContainer.fromYaml(dynamic yaml) => yaml is String
      ? SpecimenDefinitionContainer.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? SpecimenDefinitionContainer.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'SpecimenDefinitionContainer cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory SpecimenDefinitionContainer.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return SpecimenDefinitionContainer.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [SpecimenDefinitionAdditive] /// Substance introduced in the kind of container to preserve, maintain or
/// enhance the specimen. Examples: Formalin, Citrate, EDTA.
@JsonSerializable()
class SpecimenDefinitionAdditive extends BackboneElement {
  SpecimenDefinitionAdditive({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.additiveCodeableConcept,
    this.additiveReference,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'SpecimenDefinitionAdditive';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [additiveCodeableConcept] /// Substance introduced in the kind of container to preserve, maintain or
  /// enhance the specimen. Examples: Formalin, Citrate, EDTA.
  @JsonKey(name: 'additiveCodeableConcept')
  final CodeableConcept? additiveCodeableConcept;

  /// [additiveReference] /// Substance introduced in the kind of container to preserve, maintain or
  /// enhance the specimen. Examples: Formalin, Citrate, EDTA.
  @JsonKey(name: 'additiveReference')
  final Reference? additiveReference;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (additiveCodeableConcept != null) {
      json['additiveCodeableConcept'] = additiveCodeableConcept!.toJson();
    }
    if (additiveReference != null) {
      json['additiveReference'] = additiveReference!.toJson();
    }
    return json;
  }

  factory SpecimenDefinitionAdditive.fromJson(Map<String, dynamic> json) {
    return SpecimenDefinitionAdditive(
      id: json['id'] != null
          ? FhirString.fromJson(json['id'] as Map<String, dynamic>)
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      additiveCodeableConcept: json['additiveCodeableConcept'] != null
          ? CodeableConcept.fromJson(
              json['additiveCodeableConcept'] as Map<String, dynamic>)
          : null,
      additiveReference: json['additiveReference'] != null
          ? Reference.fromJson(
              json['additiveReference'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  SpecimenDefinitionAdditive clone() => throw UnimplementedError();
  @override
  SpecimenDefinitionAdditive copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? additiveCodeableConcept,
    Reference? additiveReference,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return SpecimenDefinitionAdditive(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      additiveCodeableConcept:
          additiveCodeableConcept ?? this.additiveCodeableConcept,
      additiveReference: additiveReference ?? this.additiveReference,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory SpecimenDefinitionAdditive.fromYaml(dynamic yaml) => yaml is String
      ? SpecimenDefinitionAdditive.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? SpecimenDefinitionAdditive.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'SpecimenDefinitionAdditive cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory SpecimenDefinitionAdditive.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return SpecimenDefinitionAdditive.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [SpecimenDefinitionHandling] /// Set of instructions for preservation/transport of the specimen at a defined
/// temperature interval, prior the testing process.
@JsonSerializable()
class SpecimenDefinitionHandling extends BackboneElement {
  SpecimenDefinitionHandling({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.temperatureQualifier,
    this.temperatureRange,
    this.maxDuration,
    this.instruction,
    this.instructionElement,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });
  @override
  String get fhirType => 'SpecimenDefinitionHandling';
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [temperatureQualifier] /// It qualifies the interval of temperature, which characterizes an occurrence
  /// of handling. Conditions that are not related to temperature may be handled
  /// in the instruction element.
  @JsonKey(name: 'temperatureQualifier')
  final CodeableConcept? temperatureQualifier;

  /// [temperatureRange] /// The temperature interval for this set of handling instructions.
  @JsonKey(name: 'temperatureRange')
  final Range? temperatureRange;

  /// [maxDuration] /// The maximum time interval of preservation of the specimen with these
  /// conditions.
  @JsonKey(name: 'maxDuration')
  final FhirDuration? maxDuration;

  /// [instruction] /// Additional textual instructions for the preservation or transport of the
  /// specimen. For instance, 'Protect from light exposure'.
  @JsonKey(name: 'instruction')
  final FhirString? instruction;
  @JsonKey(name: '_instruction')
  final Element? instructionElement;
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (temperatureQualifier != null) {
      json['temperatureQualifier'] = temperatureQualifier!.toJson();
    }
    if (temperatureRange != null) {
      json['temperatureRange'] = temperatureRange!.toJson();
    }
    if (maxDuration != null) {
      json['maxDuration'] = maxDuration!.toJson();
    }
    if (instruction?.value != null) {
      json['instruction'] = instruction!.value;
    }
    if (instructionElement != null) {
      json['_instruction'] = instructionElement!.toJson();
    }
    return json;
  }

  factory SpecimenDefinitionHandling.fromJson(Map<String, dynamic> json) {
    return SpecimenDefinitionHandling(
      id: json['id'] != null
          ? FhirString.fromJson(json['id'] as Map<String, dynamic>)
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      temperatureQualifier: json['temperatureQualifier'] != null
          ? CodeableConcept.fromJson(
              json['temperatureQualifier'] as Map<String, dynamic>)
          : null,
      temperatureRange: json['temperatureRange'] != null
          ? Range.fromJson(json['temperatureRange'] as Map<String, dynamic>)
          : null,
      maxDuration: json['maxDuration'] != null
          ? FhirDuration.fromJson(json['maxDuration'] as Map<String, dynamic>)
          : null,
      instruction:
          json['instruction'] != null ? FhirString(json['instruction']) : null,
      instructionElement: json['_instruction'] != null
          ? Element.fromJson(json['_instruction'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  SpecimenDefinitionHandling clone() => throw UnimplementedError();
  @override
  SpecimenDefinitionHandling copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? temperatureQualifier,
    Range? temperatureRange,
    FhirDuration? maxDuration,
    FhirString? instruction,
    Element? instructionElement,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return SpecimenDefinitionHandling(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      temperatureQualifier: temperatureQualifier ?? this.temperatureQualifier,
      temperatureRange: temperatureRange ?? this.temperatureRange,
      maxDuration: maxDuration ?? this.maxDuration,
      instruction: instruction ?? this.instruction,
      instructionElement: instructionElement ?? this.instructionElement,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory SpecimenDefinitionHandling.fromYaml(dynamic yaml) => yaml is String
      ? SpecimenDefinitionHandling.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? SpecimenDefinitionHandling.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'SpecimenDefinitionHandling cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory SpecimenDefinitionHandling.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return SpecimenDefinitionHandling.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
