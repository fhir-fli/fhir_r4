// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'substance_definition.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SubstanceDefinition _$SubstanceDefinitionFromJson(Map<String, dynamic> json) {
  return _SubstanceDefinition.fromJson(json);
}

/// @nodoc
mixin _$SubstanceDefinition {
  /// [resourceType] This is a SubstanceDefinition resource;
  R4ResourceType get resourceType => throw _privateConstructorUsedError;

  /// [id] The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.;
  String? get id => throw _privateConstructorUsedError;

  /// [meta] The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.;
  FhirMeta? get meta => throw _privateConstructorUsedError;

  /// [implicitRules] A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.;
  FhirUri? get implicitRules => throw _privateConstructorUsedError;

  /// [implicitRulesElement] (_implicitRules): Extensions for implicitRules;
  @JsonKey(name: '_implicitRules')
  PrimitiveElement? get implicitRulesElement =>
      throw _privateConstructorUsedError;

  /// [language] The base language in which the resource is written.;
  FhirCode? get language => throw _privateConstructorUsedError;

  /// [languageElement] (_language): Extensions for language;
  @JsonKey(name: '_language')
  PrimitiveElement? get languageElement => throw _privateConstructorUsedError;

  /// [text] A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it "clinically safe" for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.;
  Narrative? get text => throw _privateConstructorUsedError;

  /// [contained] These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, nor can they have their own independent transaction scope.;
  List<Resource>? get contained => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [identifier] Identifier by which this substance is known.;
  List<Identifier>? get identifier => throw _privateConstructorUsedError;

  /// [version] A business level version identifier of the substance.;
  String? get version => throw _privateConstructorUsedError;

  /// [versionElement] (_version): Extensions for version;
  @JsonKey(name: '_version')
  PrimitiveElement? get versionElement => throw _privateConstructorUsedError;

  /// [status] Status of substance within the catalogue e.g. active, retired.;
  CodeableConcept? get status => throw _privateConstructorUsedError;

  /// [classification] A high level categorization, e.g. polymer or nucleic acid, or food, chemical, biological, or a lower level such as the general types of polymer (linear or branch chain) or type of impurity (process related or contaminant).;
  List<CodeableConcept>? get classification =>
      throw _privateConstructorUsedError;

  /// [domain] If the substance applies to human or veterinary use.;
  CodeableConcept? get domain => throw _privateConstructorUsedError;

  /// [grade] The quality standard, established benchmark, to which substance complies (e.g. USP/NF, Ph. Eur, JP, BP, Company Standard).;
  List<CodeableConcept>? get grade => throw _privateConstructorUsedError;

  /// [description] Textual description of the substance.;
  FhirMarkdown? get description => throw _privateConstructorUsedError;

  /// [descriptionElement] (_description): Extensions for description;
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement =>
      throw _privateConstructorUsedError;

  /// [informationSource] Supporting literature.;
  List<Reference>? get informationSource => throw _privateConstructorUsedError;

  /// [note] Textual comment about the substance's catalogue or registry record.;
  List<Annotation>? get note => throw _privateConstructorUsedError;

  /// [manufacturer] The entity that creates, makes, produces or fabricates the substance. This is a set of potential manufacturers but is not necessarily comprehensive.;
  List<Reference>? get manufacturer => throw _privateConstructorUsedError;

  /// [supplier] An entity that is the source for the substance. It may be different from the manufacturer. Supplier is synonymous to a distributor.;
  List<Reference>? get supplier => throw _privateConstructorUsedError;

  /// [moiety] Moiety, for structural modifications.;
  List<SubstanceDefinitionMoiety>? get moiety =>
      throw _privateConstructorUsedError;

  /// [property] General specifications for this substance.;
  List<SubstanceDefinitionProperty>? get property =>
      throw _privateConstructorUsedError;

  /// [molecularWeight] The molecular weight or weight range (for proteins, polymers or nucleic acids).;
  List<SubstanceDefinitionMolecularWeight>? get molecularWeight =>
      throw _privateConstructorUsedError;

  /// [structure] Structural information.;
  SubstanceDefinitionStructure? get structure =>
      throw _privateConstructorUsedError;

  /// [code] Codes associated with the substance.;
  List<SubstanceDefinitionCode>? get code => throw _privateConstructorUsedError;

  /// [name] Names applicable to this substance.;
  List<SubstanceDefinitionName>? get name => throw _privateConstructorUsedError;

  /// [relationship] A link between this substance and another, with details of the relationship.;
  List<SubstanceDefinitionRelationship>? get relationship =>
      throw _privateConstructorUsedError;

  /// [sourceMaterial] Material or taxonomic/anatomical source for the substance.;
  SubstanceDefinitionSourceMaterial? get sourceMaterial =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubstanceDefinitionCopyWith<SubstanceDefinition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubstanceDefinitionCopyWith<$Res> {
  factory $SubstanceDefinitionCopyWith(
          SubstanceDefinition value, $Res Function(SubstanceDefinition) then) =
      _$SubstanceDefinitionCopyWithImpl<$Res, SubstanceDefinition>;
  @useResult
  $Res call(
      {R4ResourceType resourceType,
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
      String? version,
      @JsonKey(name: '_version') PrimitiveElement? versionElement,
      CodeableConcept? status,
      List<CodeableConcept>? classification,
      CodeableConcept? domain,
      List<CodeableConcept>? grade,
      FhirMarkdown? description,
      @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
      List<Reference>? informationSource,
      List<Annotation>? note,
      List<Reference>? manufacturer,
      List<Reference>? supplier,
      List<SubstanceDefinitionMoiety>? moiety,
      List<SubstanceDefinitionProperty>? property,
      List<SubstanceDefinitionMolecularWeight>? molecularWeight,
      SubstanceDefinitionStructure? structure,
      List<SubstanceDefinitionCode>? code,
      List<SubstanceDefinitionName>? name,
      List<SubstanceDefinitionRelationship>? relationship,
      SubstanceDefinitionSourceMaterial? sourceMaterial});

  $FhirMetaCopyWith<$Res>? get meta;
  $NarrativeCopyWith<$Res>? get text;
  $CodeableConceptCopyWith<$Res>? get status;
  $CodeableConceptCopyWith<$Res>? get domain;
  $SubstanceDefinitionStructureCopyWith<$Res>? get structure;
  $SubstanceDefinitionSourceMaterialCopyWith<$Res>? get sourceMaterial;
}

/// @nodoc
class _$SubstanceDefinitionCopyWithImpl<$Res, $Val extends SubstanceDefinition>
    implements $SubstanceDefinitionCopyWith<$Res> {
  _$SubstanceDefinitionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resourceType = null,
    Object? id = freezed,
    Object? meta = freezed,
    Object? implicitRules = freezed,
    Object? implicitRulesElement = freezed,
    Object? language = freezed,
    Object? languageElement = freezed,
    Object? text = freezed,
    Object? contained = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? identifier = freezed,
    Object? version = freezed,
    Object? versionElement = freezed,
    Object? status = freezed,
    Object? classification = freezed,
    Object? domain = freezed,
    Object? grade = freezed,
    Object? description = freezed,
    Object? descriptionElement = freezed,
    Object? informationSource = freezed,
    Object? note = freezed,
    Object? manufacturer = freezed,
    Object? supplier = freezed,
    Object? moiety = freezed,
    Object? property = freezed,
    Object? molecularWeight = freezed,
    Object? structure = freezed,
    Object? code = freezed,
    Object? name = freezed,
    Object? relationship = freezed,
    Object? sourceMaterial = freezed,
  }) {
    return _then(_value.copyWith(
      resourceType: null == resourceType
          ? _value.resourceType
          : resourceType // ignore: cast_nullable_to_non_nullable
              as R4ResourceType,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as FhirMeta?,
      implicitRules: freezed == implicitRules
          ? _value.implicitRules
          : implicitRules // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      implicitRulesElement: freezed == implicitRulesElement
          ? _value.implicitRulesElement
          : implicitRulesElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      languageElement: freezed == languageElement
          ? _value.languageElement
          : languageElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as Narrative?,
      contained: freezed == contained
          ? _value.contained
          : contained // ignore: cast_nullable_to_non_nullable
              as List<Resource>?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as List<Identifier>?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      versionElement: freezed == versionElement
          ? _value.versionElement
          : versionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      classification: freezed == classification
          ? _value.classification
          : classification // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      domain: freezed == domain
          ? _value.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      grade: freezed == grade
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      descriptionElement: freezed == descriptionElement
          ? _value.descriptionElement
          : descriptionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      informationSource: freezed == informationSource
          ? _value.informationSource
          : informationSource // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as List<Annotation>?,
      manufacturer: freezed == manufacturer
          ? _value.manufacturer
          : manufacturer // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      supplier: freezed == supplier
          ? _value.supplier
          : supplier // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      moiety: freezed == moiety
          ? _value.moiety
          : moiety // ignore: cast_nullable_to_non_nullable
              as List<SubstanceDefinitionMoiety>?,
      property: freezed == property
          ? _value.property
          : property // ignore: cast_nullable_to_non_nullable
              as List<SubstanceDefinitionProperty>?,
      molecularWeight: freezed == molecularWeight
          ? _value.molecularWeight
          : molecularWeight // ignore: cast_nullable_to_non_nullable
              as List<SubstanceDefinitionMolecularWeight>?,
      structure: freezed == structure
          ? _value.structure
          : structure // ignore: cast_nullable_to_non_nullable
              as SubstanceDefinitionStructure?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as List<SubstanceDefinitionCode>?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as List<SubstanceDefinitionName>?,
      relationship: freezed == relationship
          ? _value.relationship
          : relationship // ignore: cast_nullable_to_non_nullable
              as List<SubstanceDefinitionRelationship>?,
      sourceMaterial: freezed == sourceMaterial
          ? _value.sourceMaterial
          : sourceMaterial // ignore: cast_nullable_to_non_nullable
              as SubstanceDefinitionSourceMaterial?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FhirMetaCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $FhirMetaCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $NarrativeCopyWith<$Res>? get text {
    if (_value.text == null) {
      return null;
    }

    return $NarrativeCopyWith<$Res>(_value.text!, (value) {
      return _then(_value.copyWith(text: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get status {
    if (_value.status == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.status!, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get domain {
    if (_value.domain == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.domain!, (value) {
      return _then(_value.copyWith(domain: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SubstanceDefinitionStructureCopyWith<$Res>? get structure {
    if (_value.structure == null) {
      return null;
    }

    return $SubstanceDefinitionStructureCopyWith<$Res>(_value.structure!,
        (value) {
      return _then(_value.copyWith(structure: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SubstanceDefinitionSourceMaterialCopyWith<$Res>? get sourceMaterial {
    if (_value.sourceMaterial == null) {
      return null;
    }

    return $SubstanceDefinitionSourceMaterialCopyWith<$Res>(
        _value.sourceMaterial!, (value) {
      return _then(_value.copyWith(sourceMaterial: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SubstanceDefinitionImplCopyWith<$Res>
    implements $SubstanceDefinitionCopyWith<$Res> {
  factory _$$SubstanceDefinitionImplCopyWith(_$SubstanceDefinitionImpl value,
          $Res Function(_$SubstanceDefinitionImpl) then) =
      __$$SubstanceDefinitionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {R4ResourceType resourceType,
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
      String? version,
      @JsonKey(name: '_version') PrimitiveElement? versionElement,
      CodeableConcept? status,
      List<CodeableConcept>? classification,
      CodeableConcept? domain,
      List<CodeableConcept>? grade,
      FhirMarkdown? description,
      @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
      List<Reference>? informationSource,
      List<Annotation>? note,
      List<Reference>? manufacturer,
      List<Reference>? supplier,
      List<SubstanceDefinitionMoiety>? moiety,
      List<SubstanceDefinitionProperty>? property,
      List<SubstanceDefinitionMolecularWeight>? molecularWeight,
      SubstanceDefinitionStructure? structure,
      List<SubstanceDefinitionCode>? code,
      List<SubstanceDefinitionName>? name,
      List<SubstanceDefinitionRelationship>? relationship,
      SubstanceDefinitionSourceMaterial? sourceMaterial});

  @override
  $FhirMetaCopyWith<$Res>? get meta;
  @override
  $NarrativeCopyWith<$Res>? get text;
  @override
  $CodeableConceptCopyWith<$Res>? get status;
  @override
  $CodeableConceptCopyWith<$Res>? get domain;
  @override
  $SubstanceDefinitionStructureCopyWith<$Res>? get structure;
  @override
  $SubstanceDefinitionSourceMaterialCopyWith<$Res>? get sourceMaterial;
}

/// @nodoc
class __$$SubstanceDefinitionImplCopyWithImpl<$Res>
    extends _$SubstanceDefinitionCopyWithImpl<$Res, _$SubstanceDefinitionImpl>
    implements _$$SubstanceDefinitionImplCopyWith<$Res> {
  __$$SubstanceDefinitionImplCopyWithImpl(_$SubstanceDefinitionImpl _value,
      $Res Function(_$SubstanceDefinitionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resourceType = null,
    Object? id = freezed,
    Object? meta = freezed,
    Object? implicitRules = freezed,
    Object? implicitRulesElement = freezed,
    Object? language = freezed,
    Object? languageElement = freezed,
    Object? text = freezed,
    Object? contained = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? identifier = freezed,
    Object? version = freezed,
    Object? versionElement = freezed,
    Object? status = freezed,
    Object? classification = freezed,
    Object? domain = freezed,
    Object? grade = freezed,
    Object? description = freezed,
    Object? descriptionElement = freezed,
    Object? informationSource = freezed,
    Object? note = freezed,
    Object? manufacturer = freezed,
    Object? supplier = freezed,
    Object? moiety = freezed,
    Object? property = freezed,
    Object? molecularWeight = freezed,
    Object? structure = freezed,
    Object? code = freezed,
    Object? name = freezed,
    Object? relationship = freezed,
    Object? sourceMaterial = freezed,
  }) {
    return _then(_$SubstanceDefinitionImpl(
      resourceType: null == resourceType
          ? _value.resourceType
          : resourceType // ignore: cast_nullable_to_non_nullable
              as R4ResourceType,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as FhirMeta?,
      implicitRules: freezed == implicitRules
          ? _value.implicitRules
          : implicitRules // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      implicitRulesElement: freezed == implicitRulesElement
          ? _value.implicitRulesElement
          : implicitRulesElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      languageElement: freezed == languageElement
          ? _value.languageElement
          : languageElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as Narrative?,
      contained: freezed == contained
          ? _value._contained
          : contained // ignore: cast_nullable_to_non_nullable
              as List<Resource>?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      identifier: freezed == identifier
          ? _value._identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as List<Identifier>?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      versionElement: freezed == versionElement
          ? _value.versionElement
          : versionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      classification: freezed == classification
          ? _value._classification
          : classification // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      domain: freezed == domain
          ? _value.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      grade: freezed == grade
          ? _value._grade
          : grade // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      descriptionElement: freezed == descriptionElement
          ? _value.descriptionElement
          : descriptionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      informationSource: freezed == informationSource
          ? _value._informationSource
          : informationSource // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      note: freezed == note
          ? _value._note
          : note // ignore: cast_nullable_to_non_nullable
              as List<Annotation>?,
      manufacturer: freezed == manufacturer
          ? _value._manufacturer
          : manufacturer // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      supplier: freezed == supplier
          ? _value._supplier
          : supplier // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      moiety: freezed == moiety
          ? _value._moiety
          : moiety // ignore: cast_nullable_to_non_nullable
              as List<SubstanceDefinitionMoiety>?,
      property: freezed == property
          ? _value._property
          : property // ignore: cast_nullable_to_non_nullable
              as List<SubstanceDefinitionProperty>?,
      molecularWeight: freezed == molecularWeight
          ? _value._molecularWeight
          : molecularWeight // ignore: cast_nullable_to_non_nullable
              as List<SubstanceDefinitionMolecularWeight>?,
      structure: freezed == structure
          ? _value.structure
          : structure // ignore: cast_nullable_to_non_nullable
              as SubstanceDefinitionStructure?,
      code: freezed == code
          ? _value._code
          : code // ignore: cast_nullable_to_non_nullable
              as List<SubstanceDefinitionCode>?,
      name: freezed == name
          ? _value._name
          : name // ignore: cast_nullable_to_non_nullable
              as List<SubstanceDefinitionName>?,
      relationship: freezed == relationship
          ? _value._relationship
          : relationship // ignore: cast_nullable_to_non_nullable
              as List<SubstanceDefinitionRelationship>?,
      sourceMaterial: freezed == sourceMaterial
          ? _value.sourceMaterial
          : sourceMaterial // ignore: cast_nullable_to_non_nullable
              as SubstanceDefinitionSourceMaterial?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubstanceDefinitionImpl extends _SubstanceDefinition {
  const _$SubstanceDefinitionImpl(
      {this.resourceType = R4ResourceType.SubstanceDefinition,
      this.id,
      this.meta,
      this.implicitRules,
      @JsonKey(name: '_implicitRules') this.implicitRulesElement,
      this.language,
      @JsonKey(name: '_language') this.languageElement,
      this.text,
      final List<Resource>? contained,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final List<Identifier>? identifier,
      this.version,
      @JsonKey(name: '_version') this.versionElement,
      this.status,
      final List<CodeableConcept>? classification,
      this.domain,
      final List<CodeableConcept>? grade,
      this.description,
      @JsonKey(name: '_description') this.descriptionElement,
      final List<Reference>? informationSource,
      final List<Annotation>? note,
      final List<Reference>? manufacturer,
      final List<Reference>? supplier,
      final List<SubstanceDefinitionMoiety>? moiety,
      final List<SubstanceDefinitionProperty>? property,
      final List<SubstanceDefinitionMolecularWeight>? molecularWeight,
      this.structure,
      final List<SubstanceDefinitionCode>? code,
      final List<SubstanceDefinitionName>? name,
      final List<SubstanceDefinitionRelationship>? relationship,
      this.sourceMaterial})
      : _contained = contained,
        _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _identifier = identifier,
        _classification = classification,
        _grade = grade,
        _informationSource = informationSource,
        _note = note,
        _manufacturer = manufacturer,
        _supplier = supplier,
        _moiety = moiety,
        _property = property,
        _molecularWeight = molecularWeight,
        _code = code,
        _name = name,
        _relationship = relationship,
        super._();

  factory _$SubstanceDefinitionImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubstanceDefinitionImplFromJson(json);

  /// [resourceType] This is a SubstanceDefinition resource;
  @override
  @JsonKey()
  final R4ResourceType resourceType;

  /// [id] The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.;
  @override
  final String? id;

  /// [meta] The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.;
  @override
  final FhirMeta? meta;

  /// [implicitRules] A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.;
  @override
  final FhirUri? implicitRules;

  /// [implicitRulesElement] (_implicitRules): Extensions for implicitRules;
  @override
  @JsonKey(name: '_implicitRules')
  final PrimitiveElement? implicitRulesElement;

  /// [language] The base language in which the resource is written.;
  @override
  final FhirCode? language;

  /// [languageElement] (_language): Extensions for language;
  @override
  @JsonKey(name: '_language')
  final PrimitiveElement? languageElement;

  /// [text] A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it "clinically safe" for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.;
  @override
  final Narrative? text;

  /// [contained] These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, nor can they have their own independent transaction scope.;
  final List<Resource>? _contained;

  /// [contained] These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, nor can they have their own independent transaction scope.;
  @override
  List<Resource>? get contained {
    final value = _contained;
    if (value == null) return null;
    if (_contained is EqualUnmodifiableListView) return _contained;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [identifier] Identifier by which this substance is known.;
  final List<Identifier>? _identifier;

  /// [identifier] Identifier by which this substance is known.;
  @override
  List<Identifier>? get identifier {
    final value = _identifier;
    if (value == null) return null;
    if (_identifier is EqualUnmodifiableListView) return _identifier;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [version] A business level version identifier of the substance.;
  @override
  final String? version;

  /// [versionElement] (_version): Extensions for version;
  @override
  @JsonKey(name: '_version')
  final PrimitiveElement? versionElement;

  /// [status] Status of substance within the catalogue e.g. active, retired.;
  @override
  final CodeableConcept? status;

  /// [classification] A high level categorization, e.g. polymer or nucleic acid, or food, chemical, biological, or a lower level such as the general types of polymer (linear or branch chain) or type of impurity (process related or contaminant).;
  final List<CodeableConcept>? _classification;

  /// [classification] A high level categorization, e.g. polymer or nucleic acid, or food, chemical, biological, or a lower level such as the general types of polymer (linear or branch chain) or type of impurity (process related or contaminant).;
  @override
  List<CodeableConcept>? get classification {
    final value = _classification;
    if (value == null) return null;
    if (_classification is EqualUnmodifiableListView) return _classification;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [domain] If the substance applies to human or veterinary use.;
  @override
  final CodeableConcept? domain;

  /// [grade] The quality standard, established benchmark, to which substance complies (e.g. USP/NF, Ph. Eur, JP, BP, Company Standard).;
  final List<CodeableConcept>? _grade;

  /// [grade] The quality standard, established benchmark, to which substance complies (e.g. USP/NF, Ph. Eur, JP, BP, Company Standard).;
  @override
  List<CodeableConcept>? get grade {
    final value = _grade;
    if (value == null) return null;
    if (_grade is EqualUnmodifiableListView) return _grade;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [description] Textual description of the substance.;
  @override
  final FhirMarkdown? description;

  /// [descriptionElement] (_description): Extensions for description;
  @override
  @JsonKey(name: '_description')
  final PrimitiveElement? descriptionElement;

  /// [informationSource] Supporting literature.;
  final List<Reference>? _informationSource;

  /// [informationSource] Supporting literature.;
  @override
  List<Reference>? get informationSource {
    final value = _informationSource;
    if (value == null) return null;
    if (_informationSource is EqualUnmodifiableListView)
      return _informationSource;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [note] Textual comment about the substance's catalogue or registry record.;
  final List<Annotation>? _note;

  /// [note] Textual comment about the substance's catalogue or registry record.;
  @override
  List<Annotation>? get note {
    final value = _note;
    if (value == null) return null;
    if (_note is EqualUnmodifiableListView) return _note;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [manufacturer] The entity that creates, makes, produces or fabricates the substance. This is a set of potential manufacturers but is not necessarily comprehensive.;
  final List<Reference>? _manufacturer;

  /// [manufacturer] The entity that creates, makes, produces or fabricates the substance. This is a set of potential manufacturers but is not necessarily comprehensive.;
  @override
  List<Reference>? get manufacturer {
    final value = _manufacturer;
    if (value == null) return null;
    if (_manufacturer is EqualUnmodifiableListView) return _manufacturer;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [supplier] An entity that is the source for the substance. It may be different from the manufacturer. Supplier is synonymous to a distributor.;
  final List<Reference>? _supplier;

  /// [supplier] An entity that is the source for the substance. It may be different from the manufacturer. Supplier is synonymous to a distributor.;
  @override
  List<Reference>? get supplier {
    final value = _supplier;
    if (value == null) return null;
    if (_supplier is EqualUnmodifiableListView) return _supplier;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [moiety] Moiety, for structural modifications.;
  final List<SubstanceDefinitionMoiety>? _moiety;

  /// [moiety] Moiety, for structural modifications.;
  @override
  List<SubstanceDefinitionMoiety>? get moiety {
    final value = _moiety;
    if (value == null) return null;
    if (_moiety is EqualUnmodifiableListView) return _moiety;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [property] General specifications for this substance.;
  final List<SubstanceDefinitionProperty>? _property;

  /// [property] General specifications for this substance.;
  @override
  List<SubstanceDefinitionProperty>? get property {
    final value = _property;
    if (value == null) return null;
    if (_property is EqualUnmodifiableListView) return _property;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [molecularWeight] The molecular weight or weight range (for proteins, polymers or nucleic acids).;
  final List<SubstanceDefinitionMolecularWeight>? _molecularWeight;

  /// [molecularWeight] The molecular weight or weight range (for proteins, polymers or nucleic acids).;
  @override
  List<SubstanceDefinitionMolecularWeight>? get molecularWeight {
    final value = _molecularWeight;
    if (value == null) return null;
    if (_molecularWeight is EqualUnmodifiableListView) return _molecularWeight;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [structure] Structural information.;
  @override
  final SubstanceDefinitionStructure? structure;

  /// [code] Codes associated with the substance.;
  final List<SubstanceDefinitionCode>? _code;

  /// [code] Codes associated with the substance.;
  @override
  List<SubstanceDefinitionCode>? get code {
    final value = _code;
    if (value == null) return null;
    if (_code is EqualUnmodifiableListView) return _code;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [name] Names applicable to this substance.;
  final List<SubstanceDefinitionName>? _name;

  /// [name] Names applicable to this substance.;
  @override
  List<SubstanceDefinitionName>? get name {
    final value = _name;
    if (value == null) return null;
    if (_name is EqualUnmodifiableListView) return _name;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [relationship] A link between this substance and another, with details of the relationship.;
  final List<SubstanceDefinitionRelationship>? _relationship;

  /// [relationship] A link between this substance and another, with details of the relationship.;
  @override
  List<SubstanceDefinitionRelationship>? get relationship {
    final value = _relationship;
    if (value == null) return null;
    if (_relationship is EqualUnmodifiableListView) return _relationship;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [sourceMaterial] Material or taxonomic/anatomical source for the substance.;
  @override
  final SubstanceDefinitionSourceMaterial? sourceMaterial;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubstanceDefinitionImpl &&
            (identical(other.resourceType, resourceType) ||
                other.resourceType == resourceType) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.meta, meta) || other.meta == meta) &&
            (identical(other.implicitRules, implicitRules) ||
                other.implicitRules == implicitRules) &&
            (identical(other.implicitRulesElement, implicitRulesElement) ||
                other.implicitRulesElement == implicitRulesElement) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.languageElement, languageElement) ||
                other.languageElement == languageElement) &&
            (identical(other.text, text) || other.text == text) &&
            const DeepCollectionEquality()
                .equals(other._contained, _contained) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            const DeepCollectionEquality()
                .equals(other._identifier, _identifier) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.versionElement, versionElement) ||
                other.versionElement == versionElement) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._classification, _classification) &&
            (identical(other.domain, domain) || other.domain == domain) &&
            const DeepCollectionEquality().equals(other._grade, _grade) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.descriptionElement, descriptionElement) ||
                other.descriptionElement == descriptionElement) &&
            const DeepCollectionEquality()
                .equals(other._informationSource, _informationSource) &&
            const DeepCollectionEquality().equals(other._note, _note) &&
            const DeepCollectionEquality()
                .equals(other._manufacturer, _manufacturer) &&
            const DeepCollectionEquality().equals(other._supplier, _supplier) &&
            const DeepCollectionEquality().equals(other._moiety, _moiety) &&
            const DeepCollectionEquality().equals(other._property, _property) &&
            const DeepCollectionEquality()
                .equals(other._molecularWeight, _molecularWeight) &&
            (identical(other.structure, structure) ||
                other.structure == structure) &&
            const DeepCollectionEquality().equals(other._code, _code) &&
            const DeepCollectionEquality().equals(other._name, _name) &&
            const DeepCollectionEquality()
                .equals(other._relationship, _relationship) &&
            (identical(other.sourceMaterial, sourceMaterial) ||
                other.sourceMaterial == sourceMaterial));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        resourceType,
        id,
        meta,
        implicitRules,
        implicitRulesElement,
        language,
        languageElement,
        text,
        const DeepCollectionEquality().hash(_contained),
        const DeepCollectionEquality().hash(_extension_),
        const DeepCollectionEquality().hash(_modifierExtension),
        const DeepCollectionEquality().hash(_identifier),
        version,
        versionElement,
        status,
        const DeepCollectionEquality().hash(_classification),
        domain,
        const DeepCollectionEquality().hash(_grade),
        description,
        descriptionElement,
        const DeepCollectionEquality().hash(_informationSource),
        const DeepCollectionEquality().hash(_note),
        const DeepCollectionEquality().hash(_manufacturer),
        const DeepCollectionEquality().hash(_supplier),
        const DeepCollectionEquality().hash(_moiety),
        const DeepCollectionEquality().hash(_property),
        const DeepCollectionEquality().hash(_molecularWeight),
        structure,
        const DeepCollectionEquality().hash(_code),
        const DeepCollectionEquality().hash(_name),
        const DeepCollectionEquality().hash(_relationship),
        sourceMaterial
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubstanceDefinitionImplCopyWith<_$SubstanceDefinitionImpl> get copyWith =>
      __$$SubstanceDefinitionImplCopyWithImpl<_$SubstanceDefinitionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubstanceDefinitionImplToJson(
      this,
    );
  }
}

abstract class _SubstanceDefinition extends SubstanceDefinition {
  const factory _SubstanceDefinition(
      {final R4ResourceType resourceType,
      final String? id,
      final FhirMeta? meta,
      final FhirUri? implicitRules,
      @JsonKey(name: '_implicitRules')
      final PrimitiveElement? implicitRulesElement,
      final FhirCode? language,
      @JsonKey(name: '_language') final PrimitiveElement? languageElement,
      final Narrative? text,
      final List<Resource>? contained,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final List<Identifier>? identifier,
      final String? version,
      @JsonKey(name: '_version') final PrimitiveElement? versionElement,
      final CodeableConcept? status,
      final List<CodeableConcept>? classification,
      final CodeableConcept? domain,
      final List<CodeableConcept>? grade,
      final FhirMarkdown? description,
      @JsonKey(name: '_description') final PrimitiveElement? descriptionElement,
      final List<Reference>? informationSource,
      final List<Annotation>? note,
      final List<Reference>? manufacturer,
      final List<Reference>? supplier,
      final List<SubstanceDefinitionMoiety>? moiety,
      final List<SubstanceDefinitionProperty>? property,
      final List<SubstanceDefinitionMolecularWeight>? molecularWeight,
      final SubstanceDefinitionStructure? structure,
      final List<SubstanceDefinitionCode>? code,
      final List<SubstanceDefinitionName>? name,
      final List<SubstanceDefinitionRelationship>? relationship,
      final SubstanceDefinitionSourceMaterial?
          sourceMaterial}) = _$SubstanceDefinitionImpl;
  const _SubstanceDefinition._() : super._();

  factory _SubstanceDefinition.fromJson(Map<String, dynamic> json) =
      _$SubstanceDefinitionImpl.fromJson;

  @override

  /// [resourceType] This is a SubstanceDefinition resource;
  R4ResourceType get resourceType;
  @override

  /// [id] The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.;
  String? get id;
  @override

  /// [meta] The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.;
  FhirMeta? get meta;
  @override

  /// [implicitRules] A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.;
  FhirUri? get implicitRules;
  @override

  /// [implicitRulesElement] (_implicitRules): Extensions for implicitRules;
  @JsonKey(name: '_implicitRules')
  PrimitiveElement? get implicitRulesElement;
  @override

  /// [language] The base language in which the resource is written.;
  FhirCode? get language;
  @override

  /// [languageElement] (_language): Extensions for language;
  @JsonKey(name: '_language')
  PrimitiveElement? get languageElement;
  @override

  /// [text] A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it "clinically safe" for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.;
  Narrative? get text;
  @override

  /// [contained] These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, nor can they have their own independent transaction scope.;
  List<Resource>? get contained;
  @override

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  List<FhirExtension>? get modifierExtension;
  @override

  /// [identifier] Identifier by which this substance is known.;
  List<Identifier>? get identifier;
  @override

  /// [version] A business level version identifier of the substance.;
  String? get version;
  @override

  /// [versionElement] (_version): Extensions for version;
  @JsonKey(name: '_version')
  PrimitiveElement? get versionElement;
  @override

  /// [status] Status of substance within the catalogue e.g. active, retired.;
  CodeableConcept? get status;
  @override

  /// [classification] A high level categorization, e.g. polymer or nucleic acid, or food, chemical, biological, or a lower level such as the general types of polymer (linear or branch chain) or type of impurity (process related or contaminant).;
  List<CodeableConcept>? get classification;
  @override

  /// [domain] If the substance applies to human or veterinary use.;
  CodeableConcept? get domain;
  @override

  /// [grade] The quality standard, established benchmark, to which substance complies (e.g. USP/NF, Ph. Eur, JP, BP, Company Standard).;
  List<CodeableConcept>? get grade;
  @override

  /// [description] Textual description of the substance.;
  FhirMarkdown? get description;
  @override

  /// [descriptionElement] (_description): Extensions for description;
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement;
  @override

  /// [informationSource] Supporting literature.;
  List<Reference>? get informationSource;
  @override

  /// [note] Textual comment about the substance's catalogue or registry record.;
  List<Annotation>? get note;
  @override

  /// [manufacturer] The entity that creates, makes, produces or fabricates the substance. This is a set of potential manufacturers but is not necessarily comprehensive.;
  List<Reference>? get manufacturer;
  @override

  /// [supplier] An entity that is the source for the substance. It may be different from the manufacturer. Supplier is synonymous to a distributor.;
  List<Reference>? get supplier;
  @override

  /// [moiety] Moiety, for structural modifications.;
  List<SubstanceDefinitionMoiety>? get moiety;
  @override

  /// [property] General specifications for this substance.;
  List<SubstanceDefinitionProperty>? get property;
  @override

  /// [molecularWeight] The molecular weight or weight range (for proteins, polymers or nucleic acids).;
  List<SubstanceDefinitionMolecularWeight>? get molecularWeight;
  @override

  /// [structure] Structural information.;
  SubstanceDefinitionStructure? get structure;
  @override

  /// [code] Codes associated with the substance.;
  List<SubstanceDefinitionCode>? get code;
  @override

  /// [name] Names applicable to this substance.;
  List<SubstanceDefinitionName>? get name;
  @override

  /// [relationship] A link between this substance and another, with details of the relationship.;
  List<SubstanceDefinitionRelationship>? get relationship;
  @override

  /// [sourceMaterial] Material or taxonomic/anatomical source for the substance.;
  SubstanceDefinitionSourceMaterial? get sourceMaterial;
  @override
  @JsonKey(ignore: true)
  _$$SubstanceDefinitionImplCopyWith<_$SubstanceDefinitionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SubstanceDefinitionMoiety _$SubstanceDefinitionMoietyFromJson(
    Map<String, dynamic> json) {
  return _SubstanceDefinitionMoiety.fromJson(json);
}

/// @nodoc
mixin _$SubstanceDefinitionMoiety {
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [role] Role that the moiety is playing.;
  CodeableConcept? get role => throw _privateConstructorUsedError;

  /// [identifier] Identifier by which this moiety substance is known.;
  Identifier? get identifier => throw _privateConstructorUsedError;

  /// [name] Textual name for this moiety substance.;
  String? get name => throw _privateConstructorUsedError;

  /// [nameElement] (_name): Extensions for name;
  @JsonKey(name: '_name')
  PrimitiveElement? get nameElement => throw _privateConstructorUsedError;

  /// [stereochemistry] Stereochemistry type.;
  CodeableConcept? get stereochemistry => throw _privateConstructorUsedError;

  /// [opticalActivity] Optical activity type.;
  CodeableConcept? get opticalActivity => throw _privateConstructorUsedError;

  /// [molecularFormula] Molecular formula for this moiety of this substance, typically using the Hill system.;
  String? get molecularFormula => throw _privateConstructorUsedError;

  /// [molecularFormulaElement] (_molecularFormula): Extensions for molecularFormula;
  @JsonKey(name: '_molecularFormula')
  PrimitiveElement? get molecularFormulaElement =>
      throw _privateConstructorUsedError;

  /// [amountQuantity] Quantitative value for this moiety.;
  Quantity? get amountQuantity => throw _privateConstructorUsedError;

  /// [amountString] Quantitative value for this moiety.;
  FhirMarkdown? get amountString => throw _privateConstructorUsedError;

  /// [amountStringElement] (_amountString): Extensions for amountString;
  @JsonKey(name: '_amountString')
  PrimitiveElement? get amountStringElement =>
      throw _privateConstructorUsedError;

  /// [measurementType] The measurement type of the quantitative value. In capturing the actual relative amounts of substances or molecular fragments it may be necessary to indicate whether the amount refers to, for example, a mole ratio or weight ratio.;
  CodeableConcept? get measurementType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubstanceDefinitionMoietyCopyWith<SubstanceDefinitionMoiety> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubstanceDefinitionMoietyCopyWith<$Res> {
  factory $SubstanceDefinitionMoietyCopyWith(SubstanceDefinitionMoiety value,
          $Res Function(SubstanceDefinitionMoiety) then) =
      _$SubstanceDefinitionMoietyCopyWithImpl<$Res, SubstanceDefinitionMoiety>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? role,
      Identifier? identifier,
      String? name,
      @JsonKey(name: '_name') PrimitiveElement? nameElement,
      CodeableConcept? stereochemistry,
      CodeableConcept? opticalActivity,
      String? molecularFormula,
      @JsonKey(name: '_molecularFormula')
      PrimitiveElement? molecularFormulaElement,
      Quantity? amountQuantity,
      FhirMarkdown? amountString,
      @JsonKey(name: '_amountString') PrimitiveElement? amountStringElement,
      CodeableConcept? measurementType});

  $CodeableConceptCopyWith<$Res>? get role;
  $IdentifierCopyWith<$Res>? get identifier;
  $CodeableConceptCopyWith<$Res>? get stereochemistry;
  $CodeableConceptCopyWith<$Res>? get opticalActivity;
  $QuantityCopyWith<$Res>? get amountQuantity;
  $CodeableConceptCopyWith<$Res>? get measurementType;
}

/// @nodoc
class _$SubstanceDefinitionMoietyCopyWithImpl<$Res,
        $Val extends SubstanceDefinitionMoiety>
    implements $SubstanceDefinitionMoietyCopyWith<$Res> {
  _$SubstanceDefinitionMoietyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? role = freezed,
    Object? identifier = freezed,
    Object? name = freezed,
    Object? nameElement = freezed,
    Object? stereochemistry = freezed,
    Object? opticalActivity = freezed,
    Object? molecularFormula = freezed,
    Object? molecularFormulaElement = freezed,
    Object? amountQuantity = freezed,
    Object? amountString = freezed,
    Object? amountStringElement = freezed,
    Object? measurementType = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as Identifier?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nameElement: freezed == nameElement
          ? _value.nameElement
          : nameElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      stereochemistry: freezed == stereochemistry
          ? _value.stereochemistry
          : stereochemistry // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      opticalActivity: freezed == opticalActivity
          ? _value.opticalActivity
          : opticalActivity // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      molecularFormula: freezed == molecularFormula
          ? _value.molecularFormula
          : molecularFormula // ignore: cast_nullable_to_non_nullable
              as String?,
      molecularFormulaElement: freezed == molecularFormulaElement
          ? _value.molecularFormulaElement
          : molecularFormulaElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      amountQuantity: freezed == amountQuantity
          ? _value.amountQuantity
          : amountQuantity // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      amountString: freezed == amountString
          ? _value.amountString
          : amountString // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      amountStringElement: freezed == amountStringElement
          ? _value.amountStringElement
          : amountStringElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      measurementType: freezed == measurementType
          ? _value.measurementType
          : measurementType // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get role {
    if (_value.role == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.role!, (value) {
      return _then(_value.copyWith(role: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $IdentifierCopyWith<$Res>? get identifier {
    if (_value.identifier == null) {
      return null;
    }

    return $IdentifierCopyWith<$Res>(_value.identifier!, (value) {
      return _then(_value.copyWith(identifier: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get stereochemistry {
    if (_value.stereochemistry == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.stereochemistry!, (value) {
      return _then(_value.copyWith(stereochemistry: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get opticalActivity {
    if (_value.opticalActivity == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.opticalActivity!, (value) {
      return _then(_value.copyWith(opticalActivity: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $QuantityCopyWith<$Res>? get amountQuantity {
    if (_value.amountQuantity == null) {
      return null;
    }

    return $QuantityCopyWith<$Res>(_value.amountQuantity!, (value) {
      return _then(_value.copyWith(amountQuantity: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get measurementType {
    if (_value.measurementType == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.measurementType!, (value) {
      return _then(_value.copyWith(measurementType: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SubstanceDefinitionMoietyImplCopyWith<$Res>
    implements $SubstanceDefinitionMoietyCopyWith<$Res> {
  factory _$$SubstanceDefinitionMoietyImplCopyWith(
          _$SubstanceDefinitionMoietyImpl value,
          $Res Function(_$SubstanceDefinitionMoietyImpl) then) =
      __$$SubstanceDefinitionMoietyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? role,
      Identifier? identifier,
      String? name,
      @JsonKey(name: '_name') PrimitiveElement? nameElement,
      CodeableConcept? stereochemistry,
      CodeableConcept? opticalActivity,
      String? molecularFormula,
      @JsonKey(name: '_molecularFormula')
      PrimitiveElement? molecularFormulaElement,
      Quantity? amountQuantity,
      FhirMarkdown? amountString,
      @JsonKey(name: '_amountString') PrimitiveElement? amountStringElement,
      CodeableConcept? measurementType});

  @override
  $CodeableConceptCopyWith<$Res>? get role;
  @override
  $IdentifierCopyWith<$Res>? get identifier;
  @override
  $CodeableConceptCopyWith<$Res>? get stereochemistry;
  @override
  $CodeableConceptCopyWith<$Res>? get opticalActivity;
  @override
  $QuantityCopyWith<$Res>? get amountQuantity;
  @override
  $CodeableConceptCopyWith<$Res>? get measurementType;
}

/// @nodoc
class __$$SubstanceDefinitionMoietyImplCopyWithImpl<$Res>
    extends _$SubstanceDefinitionMoietyCopyWithImpl<$Res,
        _$SubstanceDefinitionMoietyImpl>
    implements _$$SubstanceDefinitionMoietyImplCopyWith<$Res> {
  __$$SubstanceDefinitionMoietyImplCopyWithImpl(
      _$SubstanceDefinitionMoietyImpl _value,
      $Res Function(_$SubstanceDefinitionMoietyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? role = freezed,
    Object? identifier = freezed,
    Object? name = freezed,
    Object? nameElement = freezed,
    Object? stereochemistry = freezed,
    Object? opticalActivity = freezed,
    Object? molecularFormula = freezed,
    Object? molecularFormulaElement = freezed,
    Object? amountQuantity = freezed,
    Object? amountString = freezed,
    Object? amountStringElement = freezed,
    Object? measurementType = freezed,
  }) {
    return _then(_$SubstanceDefinitionMoietyImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as Identifier?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nameElement: freezed == nameElement
          ? _value.nameElement
          : nameElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      stereochemistry: freezed == stereochemistry
          ? _value.stereochemistry
          : stereochemistry // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      opticalActivity: freezed == opticalActivity
          ? _value.opticalActivity
          : opticalActivity // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      molecularFormula: freezed == molecularFormula
          ? _value.molecularFormula
          : molecularFormula // ignore: cast_nullable_to_non_nullable
              as String?,
      molecularFormulaElement: freezed == molecularFormulaElement
          ? _value.molecularFormulaElement
          : molecularFormulaElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      amountQuantity: freezed == amountQuantity
          ? _value.amountQuantity
          : amountQuantity // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      amountString: freezed == amountString
          ? _value.amountString
          : amountString // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      amountStringElement: freezed == amountStringElement
          ? _value.amountStringElement
          : amountStringElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      measurementType: freezed == measurementType
          ? _value.measurementType
          : measurementType // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubstanceDefinitionMoietyImpl extends _SubstanceDefinitionMoiety {
  const _$SubstanceDefinitionMoietyImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.role,
      this.identifier,
      this.name,
      @JsonKey(name: '_name') this.nameElement,
      this.stereochemistry,
      this.opticalActivity,
      this.molecularFormula,
      @JsonKey(name: '_molecularFormula') this.molecularFormulaElement,
      this.amountQuantity,
      this.amountString,
      @JsonKey(name: '_amountString') this.amountStringElement,
      this.measurementType})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$SubstanceDefinitionMoietyImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubstanceDefinitionMoietyImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [role] Role that the moiety is playing.;
  @override
  final CodeableConcept? role;

  /// [identifier] Identifier by which this moiety substance is known.;
  @override
  final Identifier? identifier;

  /// [name] Textual name for this moiety substance.;
  @override
  final String? name;

  /// [nameElement] (_name): Extensions for name;
  @override
  @JsonKey(name: '_name')
  final PrimitiveElement? nameElement;

  /// [stereochemistry] Stereochemistry type.;
  @override
  final CodeableConcept? stereochemistry;

  /// [opticalActivity] Optical activity type.;
  @override
  final CodeableConcept? opticalActivity;

  /// [molecularFormula] Molecular formula for this moiety of this substance, typically using the Hill system.;
  @override
  final String? molecularFormula;

  /// [molecularFormulaElement] (_molecularFormula): Extensions for molecularFormula;
  @override
  @JsonKey(name: '_molecularFormula')
  final PrimitiveElement? molecularFormulaElement;

  /// [amountQuantity] Quantitative value for this moiety.;
  @override
  final Quantity? amountQuantity;

  /// [amountString] Quantitative value for this moiety.;
  @override
  final FhirMarkdown? amountString;

  /// [amountStringElement] (_amountString): Extensions for amountString;
  @override
  @JsonKey(name: '_amountString')
  final PrimitiveElement? amountStringElement;

  /// [measurementType] The measurement type of the quantitative value. In capturing the actual relative amounts of substances or molecular fragments it may be necessary to indicate whether the amount refers to, for example, a mole ratio or weight ratio.;
  @override
  final CodeableConcept? measurementType;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubstanceDefinitionMoietyImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nameElement, nameElement) ||
                other.nameElement == nameElement) &&
            (identical(other.stereochemistry, stereochemistry) ||
                other.stereochemistry == stereochemistry) &&
            (identical(other.opticalActivity, opticalActivity) ||
                other.opticalActivity == opticalActivity) &&
            (identical(other.molecularFormula, molecularFormula) ||
                other.molecularFormula == molecularFormula) &&
            (identical(
                    other.molecularFormulaElement, molecularFormulaElement) ||
                other.molecularFormulaElement == molecularFormulaElement) &&
            (identical(other.amountQuantity, amountQuantity) ||
                other.amountQuantity == amountQuantity) &&
            (identical(other.amountString, amountString) ||
                other.amountString == amountString) &&
            (identical(other.amountStringElement, amountStringElement) ||
                other.amountStringElement == amountStringElement) &&
            (identical(other.measurementType, measurementType) ||
                other.measurementType == measurementType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      role,
      identifier,
      name,
      nameElement,
      stereochemistry,
      opticalActivity,
      molecularFormula,
      molecularFormulaElement,
      amountQuantity,
      amountString,
      amountStringElement,
      measurementType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubstanceDefinitionMoietyImplCopyWith<_$SubstanceDefinitionMoietyImpl>
      get copyWith => __$$SubstanceDefinitionMoietyImplCopyWithImpl<
          _$SubstanceDefinitionMoietyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubstanceDefinitionMoietyImplToJson(
      this,
    );
  }
}

abstract class _SubstanceDefinitionMoiety extends SubstanceDefinitionMoiety {
  const factory _SubstanceDefinitionMoiety(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final CodeableConcept? role,
          final Identifier? identifier,
          final String? name,
          @JsonKey(name: '_name') final PrimitiveElement? nameElement,
          final CodeableConcept? stereochemistry,
          final CodeableConcept? opticalActivity,
          final String? molecularFormula,
          @JsonKey(name: '_molecularFormula')
          final PrimitiveElement? molecularFormulaElement,
          final Quantity? amountQuantity,
          final FhirMarkdown? amountString,
          @JsonKey(name: '_amountString')
          final PrimitiveElement? amountStringElement,
          final CodeableConcept? measurementType}) =
      _$SubstanceDefinitionMoietyImpl;
  const _SubstanceDefinitionMoiety._() : super._();

  factory _SubstanceDefinitionMoiety.fromJson(Map<String, dynamic> json) =
      _$SubstanceDefinitionMoietyImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  String? get id;
  @override

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  List<FhirExtension>? get modifierExtension;
  @override

  /// [role] Role that the moiety is playing.;
  CodeableConcept? get role;
  @override

  /// [identifier] Identifier by which this moiety substance is known.;
  Identifier? get identifier;
  @override

  /// [name] Textual name for this moiety substance.;
  String? get name;
  @override

  /// [nameElement] (_name): Extensions for name;
  @JsonKey(name: '_name')
  PrimitiveElement? get nameElement;
  @override

  /// [stereochemistry] Stereochemistry type.;
  CodeableConcept? get stereochemistry;
  @override

  /// [opticalActivity] Optical activity type.;
  CodeableConcept? get opticalActivity;
  @override

  /// [molecularFormula] Molecular formula for this moiety of this substance, typically using the Hill system.;
  String? get molecularFormula;
  @override

  /// [molecularFormulaElement] (_molecularFormula): Extensions for molecularFormula;
  @JsonKey(name: '_molecularFormula')
  PrimitiveElement? get molecularFormulaElement;
  @override

  /// [amountQuantity] Quantitative value for this moiety.;
  Quantity? get amountQuantity;
  @override

  /// [amountString] Quantitative value for this moiety.;
  FhirMarkdown? get amountString;
  @override

  /// [amountStringElement] (_amountString): Extensions for amountString;
  @JsonKey(name: '_amountString')
  PrimitiveElement? get amountStringElement;
  @override

  /// [measurementType] The measurement type of the quantitative value. In capturing the actual relative amounts of substances or molecular fragments it may be necessary to indicate whether the amount refers to, for example, a mole ratio or weight ratio.;
  CodeableConcept? get measurementType;
  @override
  @JsonKey(ignore: true)
  _$$SubstanceDefinitionMoietyImplCopyWith<_$SubstanceDefinitionMoietyImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SubstanceDefinitionProperty _$SubstanceDefinitionPropertyFromJson(
    Map<String, dynamic> json) {
  return _SubstanceDefinitionProperty.fromJson(json);
}

/// @nodoc
mixin _$SubstanceDefinitionProperty {
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [type] A code expressing the type of property.;
  CodeableConcept get type => throw _privateConstructorUsedError;

  /// [valueCodeableConcept] A value for the property.;
  CodeableConcept? get valueCodeableConcept =>
      throw _privateConstructorUsedError;

  /// [valueQuantity] A value for the property.;
  Quantity? get valueQuantity => throw _privateConstructorUsedError;

  /// [valueDate] A value for the property.;
  FhirDate? get valueDate => throw _privateConstructorUsedError;

  /// [valueDateElement] (_valueDate): Extensions for valueDate;
  @JsonKey(name: '_valueDate')
  PrimitiveElement? get valueDateElement => throw _privateConstructorUsedError;

  /// [valueBoolean] A value for the property.;
  FhirBoolean? get valueBoolean => throw _privateConstructorUsedError;

  /// [valueBooleanElement] (_valueBoolean): Extensions for valueBoolean;
  @JsonKey(name: '_valueBoolean')
  PrimitiveElement? get valueBooleanElement =>
      throw _privateConstructorUsedError;

  /// [valueAttachment] A value for the property.;
  Attachment? get valueAttachment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubstanceDefinitionPropertyCopyWith<SubstanceDefinitionProperty>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubstanceDefinitionPropertyCopyWith<$Res> {
  factory $SubstanceDefinitionPropertyCopyWith(
          SubstanceDefinitionProperty value,
          $Res Function(SubstanceDefinitionProperty) then) =
      _$SubstanceDefinitionPropertyCopyWithImpl<$Res,
          SubstanceDefinitionProperty>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept type,
      CodeableConcept? valueCodeableConcept,
      Quantity? valueQuantity,
      FhirDate? valueDate,
      @JsonKey(name: '_valueDate') PrimitiveElement? valueDateElement,
      FhirBoolean? valueBoolean,
      @JsonKey(name: '_valueBoolean') PrimitiveElement? valueBooleanElement,
      Attachment? valueAttachment});

  $CodeableConceptCopyWith<$Res> get type;
  $CodeableConceptCopyWith<$Res>? get valueCodeableConcept;
  $QuantityCopyWith<$Res>? get valueQuantity;
  $AttachmentCopyWith<$Res>? get valueAttachment;
}

/// @nodoc
class _$SubstanceDefinitionPropertyCopyWithImpl<$Res,
        $Val extends SubstanceDefinitionProperty>
    implements $SubstanceDefinitionPropertyCopyWith<$Res> {
  _$SubstanceDefinitionPropertyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? type = null,
    Object? valueCodeableConcept = freezed,
    Object? valueQuantity = freezed,
    Object? valueDate = freezed,
    Object? valueDateElement = freezed,
    Object? valueBoolean = freezed,
    Object? valueBooleanElement = freezed,
    Object? valueAttachment = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      valueCodeableConcept: freezed == valueCodeableConcept
          ? _value.valueCodeableConcept
          : valueCodeableConcept // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      valueQuantity: freezed == valueQuantity
          ? _value.valueQuantity
          : valueQuantity // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      valueDate: freezed == valueDate
          ? _value.valueDate
          : valueDate // ignore: cast_nullable_to_non_nullable
              as FhirDate?,
      valueDateElement: freezed == valueDateElement
          ? _value.valueDateElement
          : valueDateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueBoolean: freezed == valueBoolean
          ? _value.valueBoolean
          : valueBoolean // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      valueBooleanElement: freezed == valueBooleanElement
          ? _value.valueBooleanElement
          : valueBooleanElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueAttachment: freezed == valueAttachment
          ? _value.valueAttachment
          : valueAttachment // ignore: cast_nullable_to_non_nullable
              as Attachment?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res> get type {
    return $CodeableConceptCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get valueCodeableConcept {
    if (_value.valueCodeableConcept == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.valueCodeableConcept!,
        (value) {
      return _then(_value.copyWith(valueCodeableConcept: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $QuantityCopyWith<$Res>? get valueQuantity {
    if (_value.valueQuantity == null) {
      return null;
    }

    return $QuantityCopyWith<$Res>(_value.valueQuantity!, (value) {
      return _then(_value.copyWith(valueQuantity: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AttachmentCopyWith<$Res>? get valueAttachment {
    if (_value.valueAttachment == null) {
      return null;
    }

    return $AttachmentCopyWith<$Res>(_value.valueAttachment!, (value) {
      return _then(_value.copyWith(valueAttachment: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SubstanceDefinitionPropertyImplCopyWith<$Res>
    implements $SubstanceDefinitionPropertyCopyWith<$Res> {
  factory _$$SubstanceDefinitionPropertyImplCopyWith(
          _$SubstanceDefinitionPropertyImpl value,
          $Res Function(_$SubstanceDefinitionPropertyImpl) then) =
      __$$SubstanceDefinitionPropertyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept type,
      CodeableConcept? valueCodeableConcept,
      Quantity? valueQuantity,
      FhirDate? valueDate,
      @JsonKey(name: '_valueDate') PrimitiveElement? valueDateElement,
      FhirBoolean? valueBoolean,
      @JsonKey(name: '_valueBoolean') PrimitiveElement? valueBooleanElement,
      Attachment? valueAttachment});

  @override
  $CodeableConceptCopyWith<$Res> get type;
  @override
  $CodeableConceptCopyWith<$Res>? get valueCodeableConcept;
  @override
  $QuantityCopyWith<$Res>? get valueQuantity;
  @override
  $AttachmentCopyWith<$Res>? get valueAttachment;
}

/// @nodoc
class __$$SubstanceDefinitionPropertyImplCopyWithImpl<$Res>
    extends _$SubstanceDefinitionPropertyCopyWithImpl<$Res,
        _$SubstanceDefinitionPropertyImpl>
    implements _$$SubstanceDefinitionPropertyImplCopyWith<$Res> {
  __$$SubstanceDefinitionPropertyImplCopyWithImpl(
      _$SubstanceDefinitionPropertyImpl _value,
      $Res Function(_$SubstanceDefinitionPropertyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? type = null,
    Object? valueCodeableConcept = freezed,
    Object? valueQuantity = freezed,
    Object? valueDate = freezed,
    Object? valueDateElement = freezed,
    Object? valueBoolean = freezed,
    Object? valueBooleanElement = freezed,
    Object? valueAttachment = freezed,
  }) {
    return _then(_$SubstanceDefinitionPropertyImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      valueCodeableConcept: freezed == valueCodeableConcept
          ? _value.valueCodeableConcept
          : valueCodeableConcept // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      valueQuantity: freezed == valueQuantity
          ? _value.valueQuantity
          : valueQuantity // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      valueDate: freezed == valueDate
          ? _value.valueDate
          : valueDate // ignore: cast_nullable_to_non_nullable
              as FhirDate?,
      valueDateElement: freezed == valueDateElement
          ? _value.valueDateElement
          : valueDateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueBoolean: freezed == valueBoolean
          ? _value.valueBoolean
          : valueBoolean // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      valueBooleanElement: freezed == valueBooleanElement
          ? _value.valueBooleanElement
          : valueBooleanElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      valueAttachment: freezed == valueAttachment
          ? _value.valueAttachment
          : valueAttachment // ignore: cast_nullable_to_non_nullable
              as Attachment?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubstanceDefinitionPropertyImpl extends _SubstanceDefinitionProperty {
  const _$SubstanceDefinitionPropertyImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required this.type,
      this.valueCodeableConcept,
      this.valueQuantity,
      this.valueDate,
      @JsonKey(name: '_valueDate') this.valueDateElement,
      this.valueBoolean,
      @JsonKey(name: '_valueBoolean') this.valueBooleanElement,
      this.valueAttachment})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$SubstanceDefinitionPropertyImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SubstanceDefinitionPropertyImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [type] A code expressing the type of property.;
  @override
  final CodeableConcept type;

  /// [valueCodeableConcept] A value for the property.;
  @override
  final CodeableConcept? valueCodeableConcept;

  /// [valueQuantity] A value for the property.;
  @override
  final Quantity? valueQuantity;

  /// [valueDate] A value for the property.;
  @override
  final FhirDate? valueDate;

  /// [valueDateElement] (_valueDate): Extensions for valueDate;
  @override
  @JsonKey(name: '_valueDate')
  final PrimitiveElement? valueDateElement;

  /// [valueBoolean] A value for the property.;
  @override
  final FhirBoolean? valueBoolean;

  /// [valueBooleanElement] (_valueBoolean): Extensions for valueBoolean;
  @override
  @JsonKey(name: '_valueBoolean')
  final PrimitiveElement? valueBooleanElement;

  /// [valueAttachment] A value for the property.;
  @override
  final Attachment? valueAttachment;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubstanceDefinitionPropertyImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.valueCodeableConcept, valueCodeableConcept) ||
                other.valueCodeableConcept == valueCodeableConcept) &&
            (identical(other.valueQuantity, valueQuantity) ||
                other.valueQuantity == valueQuantity) &&
            (identical(other.valueDate, valueDate) ||
                other.valueDate == valueDate) &&
            (identical(other.valueDateElement, valueDateElement) ||
                other.valueDateElement == valueDateElement) &&
            (identical(other.valueBoolean, valueBoolean) ||
                other.valueBoolean == valueBoolean) &&
            (identical(other.valueBooleanElement, valueBooleanElement) ||
                other.valueBooleanElement == valueBooleanElement) &&
            (identical(other.valueAttachment, valueAttachment) ||
                other.valueAttachment == valueAttachment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      type,
      valueCodeableConcept,
      valueQuantity,
      valueDate,
      valueDateElement,
      valueBoolean,
      valueBooleanElement,
      valueAttachment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubstanceDefinitionPropertyImplCopyWith<_$SubstanceDefinitionPropertyImpl>
      get copyWith => __$$SubstanceDefinitionPropertyImplCopyWithImpl<
          _$SubstanceDefinitionPropertyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubstanceDefinitionPropertyImplToJson(
      this,
    );
  }
}

abstract class _SubstanceDefinitionProperty
    extends SubstanceDefinitionProperty {
  const factory _SubstanceDefinitionProperty(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required final CodeableConcept type,
      final CodeableConcept? valueCodeableConcept,
      final Quantity? valueQuantity,
      final FhirDate? valueDate,
      @JsonKey(name: '_valueDate') final PrimitiveElement? valueDateElement,
      final FhirBoolean? valueBoolean,
      @JsonKey(name: '_valueBoolean')
      final PrimitiveElement? valueBooleanElement,
      final Attachment? valueAttachment}) = _$SubstanceDefinitionPropertyImpl;
  const _SubstanceDefinitionProperty._() : super._();

  factory _SubstanceDefinitionProperty.fromJson(Map<String, dynamic> json) =
      _$SubstanceDefinitionPropertyImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  String? get id;
  @override

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  List<FhirExtension>? get modifierExtension;
  @override

  /// [type] A code expressing the type of property.;
  CodeableConcept get type;
  @override

  /// [valueCodeableConcept] A value for the property.;
  CodeableConcept? get valueCodeableConcept;
  @override

  /// [valueQuantity] A value for the property.;
  Quantity? get valueQuantity;
  @override

  /// [valueDate] A value for the property.;
  FhirDate? get valueDate;
  @override

  /// [valueDateElement] (_valueDate): Extensions for valueDate;
  @JsonKey(name: '_valueDate')
  PrimitiveElement? get valueDateElement;
  @override

  /// [valueBoolean] A value for the property.;
  FhirBoolean? get valueBoolean;
  @override

  /// [valueBooleanElement] (_valueBoolean): Extensions for valueBoolean;
  @JsonKey(name: '_valueBoolean')
  PrimitiveElement? get valueBooleanElement;
  @override

  /// [valueAttachment] A value for the property.;
  Attachment? get valueAttachment;
  @override
  @JsonKey(ignore: true)
  _$$SubstanceDefinitionPropertyImplCopyWith<_$SubstanceDefinitionPropertyImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SubstanceDefinitionMolecularWeight _$SubstanceDefinitionMolecularWeightFromJson(
    Map<String, dynamic> json) {
  return _SubstanceDefinitionMolecularWeight.fromJson(json);
}

/// @nodoc
mixin _$SubstanceDefinitionMolecularWeight {
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [method] The method by which the molecular weight was determined.;
  CodeableConcept? get method => throw _privateConstructorUsedError;

  /// [type] Type of molecular weight such as exact, average (also known as. number average), weight average.;
  CodeableConcept? get type => throw _privateConstructorUsedError;

  /// [amount] Used to capture quantitative values for a variety of elements. If only limits are given, the arithmetic mean would be the average. If only a single definite value for a given element is given, it would be captured in this field.;
  Quantity get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubstanceDefinitionMolecularWeightCopyWith<
          SubstanceDefinitionMolecularWeight>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubstanceDefinitionMolecularWeightCopyWith<$Res> {
  factory $SubstanceDefinitionMolecularWeightCopyWith(
          SubstanceDefinitionMolecularWeight value,
          $Res Function(SubstanceDefinitionMolecularWeight) then) =
      _$SubstanceDefinitionMolecularWeightCopyWithImpl<$Res,
          SubstanceDefinitionMolecularWeight>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? method,
      CodeableConcept? type,
      Quantity amount});

  $CodeableConceptCopyWith<$Res>? get method;
  $CodeableConceptCopyWith<$Res>? get type;
  $QuantityCopyWith<$Res> get amount;
}

/// @nodoc
class _$SubstanceDefinitionMolecularWeightCopyWithImpl<$Res,
        $Val extends SubstanceDefinitionMolecularWeight>
    implements $SubstanceDefinitionMolecularWeightCopyWith<$Res> {
  _$SubstanceDefinitionMolecularWeightCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? method = freezed,
    Object? type = freezed,
    Object? amount = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      method: freezed == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as Quantity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get method {
    if (_value.method == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.method!, (value) {
      return _then(_value.copyWith(method: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get type {
    if (_value.type == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.type!, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $QuantityCopyWith<$Res> get amount {
    return $QuantityCopyWith<$Res>(_value.amount, (value) {
      return _then(_value.copyWith(amount: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SubstanceDefinitionMolecularWeightImplCopyWith<$Res>
    implements $SubstanceDefinitionMolecularWeightCopyWith<$Res> {
  factory _$$SubstanceDefinitionMolecularWeightImplCopyWith(
          _$SubstanceDefinitionMolecularWeightImpl value,
          $Res Function(_$SubstanceDefinitionMolecularWeightImpl) then) =
      __$$SubstanceDefinitionMolecularWeightImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? method,
      CodeableConcept? type,
      Quantity amount});

  @override
  $CodeableConceptCopyWith<$Res>? get method;
  @override
  $CodeableConceptCopyWith<$Res>? get type;
  @override
  $QuantityCopyWith<$Res> get amount;
}

/// @nodoc
class __$$SubstanceDefinitionMolecularWeightImplCopyWithImpl<$Res>
    extends _$SubstanceDefinitionMolecularWeightCopyWithImpl<$Res,
        _$SubstanceDefinitionMolecularWeightImpl>
    implements _$$SubstanceDefinitionMolecularWeightImplCopyWith<$Res> {
  __$$SubstanceDefinitionMolecularWeightImplCopyWithImpl(
      _$SubstanceDefinitionMolecularWeightImpl _value,
      $Res Function(_$SubstanceDefinitionMolecularWeightImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? method = freezed,
    Object? type = freezed,
    Object? amount = null,
  }) {
    return _then(_$SubstanceDefinitionMolecularWeightImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      method: freezed == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as Quantity,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubstanceDefinitionMolecularWeightImpl
    extends _SubstanceDefinitionMolecularWeight {
  const _$SubstanceDefinitionMolecularWeightImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.method,
      this.type,
      required this.amount})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$SubstanceDefinitionMolecularWeightImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SubstanceDefinitionMolecularWeightImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [method] The method by which the molecular weight was determined.;
  @override
  final CodeableConcept? method;

  /// [type] Type of molecular weight such as exact, average (also known as. number average), weight average.;
  @override
  final CodeableConcept? type;

  /// [amount] Used to capture quantitative values for a variety of elements. If only limits are given, the arithmetic mean would be the average. If only a single definite value for a given element is given, it would be captured in this field.;
  @override
  final Quantity amount;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubstanceDefinitionMolecularWeightImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.method, method) || other.method == method) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      method,
      type,
      amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubstanceDefinitionMolecularWeightImplCopyWith<
          _$SubstanceDefinitionMolecularWeightImpl>
      get copyWith => __$$SubstanceDefinitionMolecularWeightImplCopyWithImpl<
          _$SubstanceDefinitionMolecularWeightImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubstanceDefinitionMolecularWeightImplToJson(
      this,
    );
  }
}

abstract class _SubstanceDefinitionMolecularWeight
    extends SubstanceDefinitionMolecularWeight {
  const factory _SubstanceDefinitionMolecularWeight(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final CodeableConcept? method,
          final CodeableConcept? type,
          required final Quantity amount}) =
      _$SubstanceDefinitionMolecularWeightImpl;
  const _SubstanceDefinitionMolecularWeight._() : super._();

  factory _SubstanceDefinitionMolecularWeight.fromJson(
          Map<String, dynamic> json) =
      _$SubstanceDefinitionMolecularWeightImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  String? get id;
  @override

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  List<FhirExtension>? get modifierExtension;
  @override

  /// [method] The method by which the molecular weight was determined.;
  CodeableConcept? get method;
  @override

  /// [type] Type of molecular weight such as exact, average (also known as. number average), weight average.;
  CodeableConcept? get type;
  @override

  /// [amount] Used to capture quantitative values for a variety of elements. If only limits are given, the arithmetic mean would be the average. If only a single definite value for a given element is given, it would be captured in this field.;
  Quantity get amount;
  @override
  @JsonKey(ignore: true)
  _$$SubstanceDefinitionMolecularWeightImplCopyWith<
          _$SubstanceDefinitionMolecularWeightImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SubstanceDefinitionStructure _$SubstanceDefinitionStructureFromJson(
    Map<String, dynamic> json) {
  return _SubstanceDefinitionStructure.fromJson(json);
}

/// @nodoc
mixin _$SubstanceDefinitionStructure {
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [stereochemistry] Stereochemistry type.;
  CodeableConcept? get stereochemistry => throw _privateConstructorUsedError;

  /// [opticalActivity] Optical activity type.;
  CodeableConcept? get opticalActivity => throw _privateConstructorUsedError;

  /// [molecularFormula] Molecular formula of this substance, typically using the Hill system.;
  String? get molecularFormula => throw _privateConstructorUsedError;

  /// [molecularFormulaElement] (_molecularFormula): Extensions for molecularFormula;
  @JsonKey(name: '_molecularFormula')
  PrimitiveElement? get molecularFormulaElement =>
      throw _privateConstructorUsedError;

  /// [molecularFormulaByMoiety] Specified per moiety according to the Hill system, i.e. first C, then H, then alphabetical, each moiety separated by a dot.;
  String? get molecularFormulaByMoiety => throw _privateConstructorUsedError;
  @JsonKey(name: '_molecularFormulaByMoiety')
  PrimitiveElement? get molecularFormulaByMoietyElement =>
      throw _privateConstructorUsedError;

  /// [molecularWeight] The molecular weight or weight range (for proteins, polymers or nucleic acids).;
  SubstanceDefinitionMolecularWeight? get molecularWeight =>
      throw _privateConstructorUsedError;

  /// [technique] The method used to elucidate the structure or characterization of the drug substance. Examples: X-ray, HPLC, NMR, Peptide mapping, Ligand binding assay.;
  List<CodeableConcept>? get technique => throw _privateConstructorUsedError;

  /// [sourceDocument] The source of information about the structure.;
  List<Reference>? get sourceDocument => throw _privateConstructorUsedError;

  /// [representation] A depiction of the structure or characterization of the substance.;
  List<SubstanceDefinitionRepresentation>? get representation =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubstanceDefinitionStructureCopyWith<SubstanceDefinitionStructure>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubstanceDefinitionStructureCopyWith<$Res> {
  factory $SubstanceDefinitionStructureCopyWith(
          SubstanceDefinitionStructure value,
          $Res Function(SubstanceDefinitionStructure) then) =
      _$SubstanceDefinitionStructureCopyWithImpl<$Res,
          SubstanceDefinitionStructure>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? stereochemistry,
      CodeableConcept? opticalActivity,
      String? molecularFormula,
      @JsonKey(name: '_molecularFormula')
      PrimitiveElement? molecularFormulaElement,
      String? molecularFormulaByMoiety,
      @JsonKey(name: '_molecularFormulaByMoiety')
      PrimitiveElement? molecularFormulaByMoietyElement,
      SubstanceDefinitionMolecularWeight? molecularWeight,
      List<CodeableConcept>? technique,
      List<Reference>? sourceDocument,
      List<SubstanceDefinitionRepresentation>? representation});

  $CodeableConceptCopyWith<$Res>? get stereochemistry;
  $CodeableConceptCopyWith<$Res>? get opticalActivity;
  $SubstanceDefinitionMolecularWeightCopyWith<$Res>? get molecularWeight;
}

/// @nodoc
class _$SubstanceDefinitionStructureCopyWithImpl<$Res,
        $Val extends SubstanceDefinitionStructure>
    implements $SubstanceDefinitionStructureCopyWith<$Res> {
  _$SubstanceDefinitionStructureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? stereochemistry = freezed,
    Object? opticalActivity = freezed,
    Object? molecularFormula = freezed,
    Object? molecularFormulaElement = freezed,
    Object? molecularFormulaByMoiety = freezed,
    Object? molecularFormulaByMoietyElement = freezed,
    Object? molecularWeight = freezed,
    Object? technique = freezed,
    Object? sourceDocument = freezed,
    Object? representation = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      stereochemistry: freezed == stereochemistry
          ? _value.stereochemistry
          : stereochemistry // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      opticalActivity: freezed == opticalActivity
          ? _value.opticalActivity
          : opticalActivity // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      molecularFormula: freezed == molecularFormula
          ? _value.molecularFormula
          : molecularFormula // ignore: cast_nullable_to_non_nullable
              as String?,
      molecularFormulaElement: freezed == molecularFormulaElement
          ? _value.molecularFormulaElement
          : molecularFormulaElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      molecularFormulaByMoiety: freezed == molecularFormulaByMoiety
          ? _value.molecularFormulaByMoiety
          : molecularFormulaByMoiety // ignore: cast_nullable_to_non_nullable
              as String?,
      molecularFormulaByMoietyElement: freezed ==
              molecularFormulaByMoietyElement
          ? _value.molecularFormulaByMoietyElement
          : molecularFormulaByMoietyElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      molecularWeight: freezed == molecularWeight
          ? _value.molecularWeight
          : molecularWeight // ignore: cast_nullable_to_non_nullable
              as SubstanceDefinitionMolecularWeight?,
      technique: freezed == technique
          ? _value.technique
          : technique // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      sourceDocument: freezed == sourceDocument
          ? _value.sourceDocument
          : sourceDocument // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      representation: freezed == representation
          ? _value.representation
          : representation // ignore: cast_nullable_to_non_nullable
              as List<SubstanceDefinitionRepresentation>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get stereochemistry {
    if (_value.stereochemistry == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.stereochemistry!, (value) {
      return _then(_value.copyWith(stereochemistry: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get opticalActivity {
    if (_value.opticalActivity == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.opticalActivity!, (value) {
      return _then(_value.copyWith(opticalActivity: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SubstanceDefinitionMolecularWeightCopyWith<$Res>? get molecularWeight {
    if (_value.molecularWeight == null) {
      return null;
    }

    return $SubstanceDefinitionMolecularWeightCopyWith<$Res>(
        _value.molecularWeight!, (value) {
      return _then(_value.copyWith(molecularWeight: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SubstanceDefinitionStructureImplCopyWith<$Res>
    implements $SubstanceDefinitionStructureCopyWith<$Res> {
  factory _$$SubstanceDefinitionStructureImplCopyWith(
          _$SubstanceDefinitionStructureImpl value,
          $Res Function(_$SubstanceDefinitionStructureImpl) then) =
      __$$SubstanceDefinitionStructureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? stereochemistry,
      CodeableConcept? opticalActivity,
      String? molecularFormula,
      @JsonKey(name: '_molecularFormula')
      PrimitiveElement? molecularFormulaElement,
      String? molecularFormulaByMoiety,
      @JsonKey(name: '_molecularFormulaByMoiety')
      PrimitiveElement? molecularFormulaByMoietyElement,
      SubstanceDefinitionMolecularWeight? molecularWeight,
      List<CodeableConcept>? technique,
      List<Reference>? sourceDocument,
      List<SubstanceDefinitionRepresentation>? representation});

  @override
  $CodeableConceptCopyWith<$Res>? get stereochemistry;
  @override
  $CodeableConceptCopyWith<$Res>? get opticalActivity;
  @override
  $SubstanceDefinitionMolecularWeightCopyWith<$Res>? get molecularWeight;
}

/// @nodoc
class __$$SubstanceDefinitionStructureImplCopyWithImpl<$Res>
    extends _$SubstanceDefinitionStructureCopyWithImpl<$Res,
        _$SubstanceDefinitionStructureImpl>
    implements _$$SubstanceDefinitionStructureImplCopyWith<$Res> {
  __$$SubstanceDefinitionStructureImplCopyWithImpl(
      _$SubstanceDefinitionStructureImpl _value,
      $Res Function(_$SubstanceDefinitionStructureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? stereochemistry = freezed,
    Object? opticalActivity = freezed,
    Object? molecularFormula = freezed,
    Object? molecularFormulaElement = freezed,
    Object? molecularFormulaByMoiety = freezed,
    Object? molecularFormulaByMoietyElement = freezed,
    Object? molecularWeight = freezed,
    Object? technique = freezed,
    Object? sourceDocument = freezed,
    Object? representation = freezed,
  }) {
    return _then(_$SubstanceDefinitionStructureImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      stereochemistry: freezed == stereochemistry
          ? _value.stereochemistry
          : stereochemistry // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      opticalActivity: freezed == opticalActivity
          ? _value.opticalActivity
          : opticalActivity // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      molecularFormula: freezed == molecularFormula
          ? _value.molecularFormula
          : molecularFormula // ignore: cast_nullable_to_non_nullable
              as String?,
      molecularFormulaElement: freezed == molecularFormulaElement
          ? _value.molecularFormulaElement
          : molecularFormulaElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      molecularFormulaByMoiety: freezed == molecularFormulaByMoiety
          ? _value.molecularFormulaByMoiety
          : molecularFormulaByMoiety // ignore: cast_nullable_to_non_nullable
              as String?,
      molecularFormulaByMoietyElement: freezed ==
              molecularFormulaByMoietyElement
          ? _value.molecularFormulaByMoietyElement
          : molecularFormulaByMoietyElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      molecularWeight: freezed == molecularWeight
          ? _value.molecularWeight
          : molecularWeight // ignore: cast_nullable_to_non_nullable
              as SubstanceDefinitionMolecularWeight?,
      technique: freezed == technique
          ? _value._technique
          : technique // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      sourceDocument: freezed == sourceDocument
          ? _value._sourceDocument
          : sourceDocument // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      representation: freezed == representation
          ? _value._representation
          : representation // ignore: cast_nullable_to_non_nullable
              as List<SubstanceDefinitionRepresentation>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubstanceDefinitionStructureImpl extends _SubstanceDefinitionStructure {
  const _$SubstanceDefinitionStructureImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.stereochemistry,
      this.opticalActivity,
      this.molecularFormula,
      @JsonKey(name: '_molecularFormula') this.molecularFormulaElement,
      this.molecularFormulaByMoiety,
      @JsonKey(name: '_molecularFormulaByMoiety')
      this.molecularFormulaByMoietyElement,
      this.molecularWeight,
      final List<CodeableConcept>? technique,
      final List<Reference>? sourceDocument,
      final List<SubstanceDefinitionRepresentation>? representation})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _technique = technique,
        _sourceDocument = sourceDocument,
        _representation = representation,
        super._();

  factory _$SubstanceDefinitionStructureImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SubstanceDefinitionStructureImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [stereochemistry] Stereochemistry type.;
  @override
  final CodeableConcept? stereochemistry;

  /// [opticalActivity] Optical activity type.;
  @override
  final CodeableConcept? opticalActivity;

  /// [molecularFormula] Molecular formula of this substance, typically using the Hill system.;
  @override
  final String? molecularFormula;

  /// [molecularFormulaElement] (_molecularFormula): Extensions for molecularFormula;
  @override
  @JsonKey(name: '_molecularFormula')
  final PrimitiveElement? molecularFormulaElement;

  /// [molecularFormulaByMoiety] Specified per moiety according to the Hill system, i.e. first C, then H, then alphabetical, each moiety separated by a dot.;
  @override
  final String? molecularFormulaByMoiety;
  @override
  @JsonKey(name: '_molecularFormulaByMoiety')
  final PrimitiveElement? molecularFormulaByMoietyElement;

  /// [molecularWeight] The molecular weight or weight range (for proteins, polymers or nucleic acids).;
  @override
  final SubstanceDefinitionMolecularWeight? molecularWeight;

  /// [technique] The method used to elucidate the structure or characterization of the drug substance. Examples: X-ray, HPLC, NMR, Peptide mapping, Ligand binding assay.;
  final List<CodeableConcept>? _technique;

  /// [technique] The method used to elucidate the structure or characterization of the drug substance. Examples: X-ray, HPLC, NMR, Peptide mapping, Ligand binding assay.;
  @override
  List<CodeableConcept>? get technique {
    final value = _technique;
    if (value == null) return null;
    if (_technique is EqualUnmodifiableListView) return _technique;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [sourceDocument] The source of information about the structure.;
  final List<Reference>? _sourceDocument;

  /// [sourceDocument] The source of information about the structure.;
  @override
  List<Reference>? get sourceDocument {
    final value = _sourceDocument;
    if (value == null) return null;
    if (_sourceDocument is EqualUnmodifiableListView) return _sourceDocument;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [representation] A depiction of the structure or characterization of the substance.;
  final List<SubstanceDefinitionRepresentation>? _representation;

  /// [representation] A depiction of the structure or characterization of the substance.;
  @override
  List<SubstanceDefinitionRepresentation>? get representation {
    final value = _representation;
    if (value == null) return null;
    if (_representation is EqualUnmodifiableListView) return _representation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubstanceDefinitionStructureImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.stereochemistry, stereochemistry) ||
                other.stereochemistry == stereochemistry) &&
            (identical(other.opticalActivity, opticalActivity) ||
                other.opticalActivity == opticalActivity) &&
            (identical(other.molecularFormula, molecularFormula) ||
                other.molecularFormula == molecularFormula) &&
            (identical(
                    other.molecularFormulaElement, molecularFormulaElement) ||
                other.molecularFormulaElement == molecularFormulaElement) &&
            (identical(
                    other.molecularFormulaByMoiety, molecularFormulaByMoiety) ||
                other.molecularFormulaByMoiety == molecularFormulaByMoiety) &&
            (identical(other.molecularFormulaByMoietyElement,
                    molecularFormulaByMoietyElement) ||
                other.molecularFormulaByMoietyElement ==
                    molecularFormulaByMoietyElement) &&
            (identical(other.molecularWeight, molecularWeight) ||
                other.molecularWeight == molecularWeight) &&
            const DeepCollectionEquality()
                .equals(other._technique, _technique) &&
            const DeepCollectionEquality()
                .equals(other._sourceDocument, _sourceDocument) &&
            const DeepCollectionEquality()
                .equals(other._representation, _representation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      stereochemistry,
      opticalActivity,
      molecularFormula,
      molecularFormulaElement,
      molecularFormulaByMoiety,
      molecularFormulaByMoietyElement,
      molecularWeight,
      const DeepCollectionEquality().hash(_technique),
      const DeepCollectionEquality().hash(_sourceDocument),
      const DeepCollectionEquality().hash(_representation));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubstanceDefinitionStructureImplCopyWith<
          _$SubstanceDefinitionStructureImpl>
      get copyWith => __$$SubstanceDefinitionStructureImplCopyWithImpl<
          _$SubstanceDefinitionStructureImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubstanceDefinitionStructureImplToJson(
      this,
    );
  }
}

abstract class _SubstanceDefinitionStructure
    extends SubstanceDefinitionStructure {
  const factory _SubstanceDefinitionStructure(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final CodeableConcept? stereochemistry,
          final CodeableConcept? opticalActivity,
          final String? molecularFormula,
          @JsonKey(name: '_molecularFormula')
          final PrimitiveElement? molecularFormulaElement,
          final String? molecularFormulaByMoiety,
          @JsonKey(name: '_molecularFormulaByMoiety')
          final PrimitiveElement? molecularFormulaByMoietyElement,
          final SubstanceDefinitionMolecularWeight? molecularWeight,
          final List<CodeableConcept>? technique,
          final List<Reference>? sourceDocument,
          final List<SubstanceDefinitionRepresentation>? representation}) =
      _$SubstanceDefinitionStructureImpl;
  const _SubstanceDefinitionStructure._() : super._();

  factory _SubstanceDefinitionStructure.fromJson(Map<String, dynamic> json) =
      _$SubstanceDefinitionStructureImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  String? get id;
  @override

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  List<FhirExtension>? get modifierExtension;
  @override

  /// [stereochemistry] Stereochemistry type.;
  CodeableConcept? get stereochemistry;
  @override

  /// [opticalActivity] Optical activity type.;
  CodeableConcept? get opticalActivity;
  @override

  /// [molecularFormula] Molecular formula of this substance, typically using the Hill system.;
  String? get molecularFormula;
  @override

  /// [molecularFormulaElement] (_molecularFormula): Extensions for molecularFormula;
  @JsonKey(name: '_molecularFormula')
  PrimitiveElement? get molecularFormulaElement;
  @override

  /// [molecularFormulaByMoiety] Specified per moiety according to the Hill system, i.e. first C, then H, then alphabetical, each moiety separated by a dot.;
  String? get molecularFormulaByMoiety;
  @override
  @JsonKey(name: '_molecularFormulaByMoiety')
  PrimitiveElement? get molecularFormulaByMoietyElement;
  @override

  /// [molecularWeight] The molecular weight or weight range (for proteins, polymers or nucleic acids).;
  SubstanceDefinitionMolecularWeight? get molecularWeight;
  @override

  /// [technique] The method used to elucidate the structure or characterization of the drug substance. Examples: X-ray, HPLC, NMR, Peptide mapping, Ligand binding assay.;
  List<CodeableConcept>? get technique;
  @override

  /// [sourceDocument] The source of information about the structure.;
  List<Reference>? get sourceDocument;
  @override

  /// [representation] A depiction of the structure or characterization of the substance.;
  List<SubstanceDefinitionRepresentation>? get representation;
  @override
  @JsonKey(ignore: true)
  _$$SubstanceDefinitionStructureImplCopyWith<
          _$SubstanceDefinitionStructureImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SubstanceDefinitionRepresentation _$SubstanceDefinitionRepresentationFromJson(
    Map<String, dynamic> json) {
  return _SubstanceDefinitionRepresentation.fromJson(json);
}

/// @nodoc
mixin _$SubstanceDefinitionRepresentation {
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [type] The kind of structural representation (e.g. full, partial).;
  CodeableConcept? get type => throw _privateConstructorUsedError;

  /// [representation] The structural representation or characterization as a text string in a standard format.;
  String? get representation => throw _privateConstructorUsedError;

  /// [representationElement] (_representation): Extensions for representation;
  @JsonKey(name: '_representation')
  PrimitiveElement? get representationElement =>
      throw _privateConstructorUsedError;

  /// [format] The format of the representation e.g. InChI, SMILES, MOLFILE, CDX, SDF, PDB, mmCIF. The logical content type rather than the physical file format of a document.;
  CodeableConcept? get format => throw _privateConstructorUsedError;

  /// [document] An attached file with the structural representation or characterization e.g. a molecular structure graphic of the substance, a JCAMP or AnIML file.;
  Reference? get document => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubstanceDefinitionRepresentationCopyWith<SubstanceDefinitionRepresentation>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubstanceDefinitionRepresentationCopyWith<$Res> {
  factory $SubstanceDefinitionRepresentationCopyWith(
          SubstanceDefinitionRepresentation value,
          $Res Function(SubstanceDefinitionRepresentation) then) =
      _$SubstanceDefinitionRepresentationCopyWithImpl<$Res,
          SubstanceDefinitionRepresentation>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? type,
      String? representation,
      @JsonKey(name: '_representation') PrimitiveElement? representationElement,
      CodeableConcept? format,
      Reference? document});

  $CodeableConceptCopyWith<$Res>? get type;
  $CodeableConceptCopyWith<$Res>? get format;
  $ReferenceCopyWith<$Res>? get document;
}

/// @nodoc
class _$SubstanceDefinitionRepresentationCopyWithImpl<$Res,
        $Val extends SubstanceDefinitionRepresentation>
    implements $SubstanceDefinitionRepresentationCopyWith<$Res> {
  _$SubstanceDefinitionRepresentationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? type = freezed,
    Object? representation = freezed,
    Object? representationElement = freezed,
    Object? format = freezed,
    Object? document = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      representation: freezed == representation
          ? _value.representation
          : representation // ignore: cast_nullable_to_non_nullable
              as String?,
      representationElement: freezed == representationElement
          ? _value.representationElement
          : representationElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      format: freezed == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      document: freezed == document
          ? _value.document
          : document // ignore: cast_nullable_to_non_nullable
              as Reference?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get type {
    if (_value.type == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.type!, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get format {
    if (_value.format == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.format!, (value) {
      return _then(_value.copyWith(format: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get document {
    if (_value.document == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.document!, (value) {
      return _then(_value.copyWith(document: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SubstanceDefinitionRepresentationImplCopyWith<$Res>
    implements $SubstanceDefinitionRepresentationCopyWith<$Res> {
  factory _$$SubstanceDefinitionRepresentationImplCopyWith(
          _$SubstanceDefinitionRepresentationImpl value,
          $Res Function(_$SubstanceDefinitionRepresentationImpl) then) =
      __$$SubstanceDefinitionRepresentationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? type,
      String? representation,
      @JsonKey(name: '_representation') PrimitiveElement? representationElement,
      CodeableConcept? format,
      Reference? document});

  @override
  $CodeableConceptCopyWith<$Res>? get type;
  @override
  $CodeableConceptCopyWith<$Res>? get format;
  @override
  $ReferenceCopyWith<$Res>? get document;
}

/// @nodoc
class __$$SubstanceDefinitionRepresentationImplCopyWithImpl<$Res>
    extends _$SubstanceDefinitionRepresentationCopyWithImpl<$Res,
        _$SubstanceDefinitionRepresentationImpl>
    implements _$$SubstanceDefinitionRepresentationImplCopyWith<$Res> {
  __$$SubstanceDefinitionRepresentationImplCopyWithImpl(
      _$SubstanceDefinitionRepresentationImpl _value,
      $Res Function(_$SubstanceDefinitionRepresentationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? type = freezed,
    Object? representation = freezed,
    Object? representationElement = freezed,
    Object? format = freezed,
    Object? document = freezed,
  }) {
    return _then(_$SubstanceDefinitionRepresentationImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      representation: freezed == representation
          ? _value.representation
          : representation // ignore: cast_nullable_to_non_nullable
              as String?,
      representationElement: freezed == representationElement
          ? _value.representationElement
          : representationElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      format: freezed == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      document: freezed == document
          ? _value.document
          : document // ignore: cast_nullable_to_non_nullable
              as Reference?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubstanceDefinitionRepresentationImpl
    extends _SubstanceDefinitionRepresentation {
  const _$SubstanceDefinitionRepresentationImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.type,
      this.representation,
      @JsonKey(name: '_representation') this.representationElement,
      this.format,
      this.document})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$SubstanceDefinitionRepresentationImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SubstanceDefinitionRepresentationImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [type] The kind of structural representation (e.g. full, partial).;
  @override
  final CodeableConcept? type;

  /// [representation] The structural representation or characterization as a text string in a standard format.;
  @override
  final String? representation;

  /// [representationElement] (_representation): Extensions for representation;
  @override
  @JsonKey(name: '_representation')
  final PrimitiveElement? representationElement;

  /// [format] The format of the representation e.g. InChI, SMILES, MOLFILE, CDX, SDF, PDB, mmCIF. The logical content type rather than the physical file format of a document.;
  @override
  final CodeableConcept? format;

  /// [document] An attached file with the structural representation or characterization e.g. a molecular structure graphic of the substance, a JCAMP or AnIML file.;
  @override
  final Reference? document;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubstanceDefinitionRepresentationImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.representation, representation) ||
                other.representation == representation) &&
            (identical(other.representationElement, representationElement) ||
                other.representationElement == representationElement) &&
            (identical(other.format, format) || other.format == format) &&
            (identical(other.document, document) ||
                other.document == document));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      type,
      representation,
      representationElement,
      format,
      document);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubstanceDefinitionRepresentationImplCopyWith<
          _$SubstanceDefinitionRepresentationImpl>
      get copyWith => __$$SubstanceDefinitionRepresentationImplCopyWithImpl<
          _$SubstanceDefinitionRepresentationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubstanceDefinitionRepresentationImplToJson(
      this,
    );
  }
}

abstract class _SubstanceDefinitionRepresentation
    extends SubstanceDefinitionRepresentation {
  const factory _SubstanceDefinitionRepresentation(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final CodeableConcept? type,
      final String? representation,
      @JsonKey(name: '_representation')
      final PrimitiveElement? representationElement,
      final CodeableConcept? format,
      final Reference? document}) = _$SubstanceDefinitionRepresentationImpl;
  const _SubstanceDefinitionRepresentation._() : super._();

  factory _SubstanceDefinitionRepresentation.fromJson(
          Map<String, dynamic> json) =
      _$SubstanceDefinitionRepresentationImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  String? get id;
  @override

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  List<FhirExtension>? get modifierExtension;
  @override

  /// [type] The kind of structural representation (e.g. full, partial).;
  CodeableConcept? get type;
  @override

  /// [representation] The structural representation or characterization as a text string in a standard format.;
  String? get representation;
  @override

  /// [representationElement] (_representation): Extensions for representation;
  @JsonKey(name: '_representation')
  PrimitiveElement? get representationElement;
  @override

  /// [format] The format of the representation e.g. InChI, SMILES, MOLFILE, CDX, SDF, PDB, mmCIF. The logical content type rather than the physical file format of a document.;
  CodeableConcept? get format;
  @override

  /// [document] An attached file with the structural representation or characterization e.g. a molecular structure graphic of the substance, a JCAMP or AnIML file.;
  Reference? get document;
  @override
  @JsonKey(ignore: true)
  _$$SubstanceDefinitionRepresentationImplCopyWith<
          _$SubstanceDefinitionRepresentationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SubstanceDefinitionCode _$SubstanceDefinitionCodeFromJson(
    Map<String, dynamic> json) {
  return _SubstanceDefinitionCode.fromJson(json);
}

/// @nodoc
mixin _$SubstanceDefinitionCode {
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [code] The specific code.;
  CodeableConcept? get code => throw _privateConstructorUsedError;

  /// [status] Status of the code assignment, for example 'provisional', 'approved'.;
  CodeableConcept? get status => throw _privateConstructorUsedError;

  /// [statusDate] The date at which the code status was changed as part of the terminology maintenance.;
  FhirDateTime? get statusDate => throw _privateConstructorUsedError;

  /// [statusDateElement] (_statusDate): Extensions for statusDate;
  @JsonKey(name: '_statusDate')
  PrimitiveElement? get statusDateElement => throw _privateConstructorUsedError;

  /// [note] Any comment can be provided in this field, if necessary.;
  List<Annotation>? get note => throw _privateConstructorUsedError;

  /// [source] Supporting literature.;
  List<Reference>? get source => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubstanceDefinitionCodeCopyWith<SubstanceDefinitionCode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubstanceDefinitionCodeCopyWith<$Res> {
  factory $SubstanceDefinitionCodeCopyWith(SubstanceDefinitionCode value,
          $Res Function(SubstanceDefinitionCode) then) =
      _$SubstanceDefinitionCodeCopyWithImpl<$Res, SubstanceDefinitionCode>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? code,
      CodeableConcept? status,
      FhirDateTime? statusDate,
      @JsonKey(name: '_statusDate') PrimitiveElement? statusDateElement,
      List<Annotation>? note,
      List<Reference>? source});

  $CodeableConceptCopyWith<$Res>? get code;
  $CodeableConceptCopyWith<$Res>? get status;
}

/// @nodoc
class _$SubstanceDefinitionCodeCopyWithImpl<$Res,
        $Val extends SubstanceDefinitionCode>
    implements $SubstanceDefinitionCodeCopyWith<$Res> {
  _$SubstanceDefinitionCodeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? code = freezed,
    Object? status = freezed,
    Object? statusDate = freezed,
    Object? statusDateElement = freezed,
    Object? note = freezed,
    Object? source = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      statusDate: freezed == statusDate
          ? _value.statusDate
          : statusDate // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      statusDateElement: freezed == statusDateElement
          ? _value.statusDateElement
          : statusDateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as List<Annotation>?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get code {
    if (_value.code == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.code!, (value) {
      return _then(_value.copyWith(code: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get status {
    if (_value.status == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.status!, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SubstanceDefinitionCodeImplCopyWith<$Res>
    implements $SubstanceDefinitionCodeCopyWith<$Res> {
  factory _$$SubstanceDefinitionCodeImplCopyWith(
          _$SubstanceDefinitionCodeImpl value,
          $Res Function(_$SubstanceDefinitionCodeImpl) then) =
      __$$SubstanceDefinitionCodeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? code,
      CodeableConcept? status,
      FhirDateTime? statusDate,
      @JsonKey(name: '_statusDate') PrimitiveElement? statusDateElement,
      List<Annotation>? note,
      List<Reference>? source});

  @override
  $CodeableConceptCopyWith<$Res>? get code;
  @override
  $CodeableConceptCopyWith<$Res>? get status;
}

/// @nodoc
class __$$SubstanceDefinitionCodeImplCopyWithImpl<$Res>
    extends _$SubstanceDefinitionCodeCopyWithImpl<$Res,
        _$SubstanceDefinitionCodeImpl>
    implements _$$SubstanceDefinitionCodeImplCopyWith<$Res> {
  __$$SubstanceDefinitionCodeImplCopyWithImpl(
      _$SubstanceDefinitionCodeImpl _value,
      $Res Function(_$SubstanceDefinitionCodeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? code = freezed,
    Object? status = freezed,
    Object? statusDate = freezed,
    Object? statusDateElement = freezed,
    Object? note = freezed,
    Object? source = freezed,
  }) {
    return _then(_$SubstanceDefinitionCodeImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      statusDate: freezed == statusDate
          ? _value.statusDate
          : statusDate // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      statusDateElement: freezed == statusDateElement
          ? _value.statusDateElement
          : statusDateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      note: freezed == note
          ? _value._note
          : note // ignore: cast_nullable_to_non_nullable
              as List<Annotation>?,
      source: freezed == source
          ? _value._source
          : source // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubstanceDefinitionCodeImpl extends _SubstanceDefinitionCode {
  const _$SubstanceDefinitionCodeImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.code,
      this.status,
      this.statusDate,
      @JsonKey(name: '_statusDate') this.statusDateElement,
      final List<Annotation>? note,
      final List<Reference>? source})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _note = note,
        _source = source,
        super._();

  factory _$SubstanceDefinitionCodeImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubstanceDefinitionCodeImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [code] The specific code.;
  @override
  final CodeableConcept? code;

  /// [status] Status of the code assignment, for example 'provisional', 'approved'.;
  @override
  final CodeableConcept? status;

  /// [statusDate] The date at which the code status was changed as part of the terminology maintenance.;
  @override
  final FhirDateTime? statusDate;

  /// [statusDateElement] (_statusDate): Extensions for statusDate;
  @override
  @JsonKey(name: '_statusDate')
  final PrimitiveElement? statusDateElement;

  /// [note] Any comment can be provided in this field, if necessary.;
  final List<Annotation>? _note;

  /// [note] Any comment can be provided in this field, if necessary.;
  @override
  List<Annotation>? get note {
    final value = _note;
    if (value == null) return null;
    if (_note is EqualUnmodifiableListView) return _note;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [source] Supporting literature.;
  final List<Reference>? _source;

  /// [source] Supporting literature.;
  @override
  List<Reference>? get source {
    final value = _source;
    if (value == null) return null;
    if (_source is EqualUnmodifiableListView) return _source;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubstanceDefinitionCodeImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusDate, statusDate) ||
                other.statusDate == statusDate) &&
            (identical(other.statusDateElement, statusDateElement) ||
                other.statusDateElement == statusDateElement) &&
            const DeepCollectionEquality().equals(other._note, _note) &&
            const DeepCollectionEquality().equals(other._source, _source));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      code,
      status,
      statusDate,
      statusDateElement,
      const DeepCollectionEquality().hash(_note),
      const DeepCollectionEquality().hash(_source));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubstanceDefinitionCodeImplCopyWith<_$SubstanceDefinitionCodeImpl>
      get copyWith => __$$SubstanceDefinitionCodeImplCopyWithImpl<
          _$SubstanceDefinitionCodeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubstanceDefinitionCodeImplToJson(
      this,
    );
  }
}

abstract class _SubstanceDefinitionCode extends SubstanceDefinitionCode {
  const factory _SubstanceDefinitionCode(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final CodeableConcept? code,
      final CodeableConcept? status,
      final FhirDateTime? statusDate,
      @JsonKey(name: '_statusDate') final PrimitiveElement? statusDateElement,
      final List<Annotation>? note,
      final List<Reference>? source}) = _$SubstanceDefinitionCodeImpl;
  const _SubstanceDefinitionCode._() : super._();

  factory _SubstanceDefinitionCode.fromJson(Map<String, dynamic> json) =
      _$SubstanceDefinitionCodeImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  String? get id;
  @override

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  List<FhirExtension>? get modifierExtension;
  @override

  /// [code] The specific code.;
  CodeableConcept? get code;
  @override

  /// [status] Status of the code assignment, for example 'provisional', 'approved'.;
  CodeableConcept? get status;
  @override

  /// [statusDate] The date at which the code status was changed as part of the terminology maintenance.;
  FhirDateTime? get statusDate;
  @override

  /// [statusDateElement] (_statusDate): Extensions for statusDate;
  @JsonKey(name: '_statusDate')
  PrimitiveElement? get statusDateElement;
  @override

  /// [note] Any comment can be provided in this field, if necessary.;
  List<Annotation>? get note;
  @override

  /// [source] Supporting literature.;
  List<Reference>? get source;
  @override
  @JsonKey(ignore: true)
  _$$SubstanceDefinitionCodeImplCopyWith<_$SubstanceDefinitionCodeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SubstanceDefinitionName _$SubstanceDefinitionNameFromJson(
    Map<String, dynamic> json) {
  return _SubstanceDefinitionName.fromJson(json);
}

/// @nodoc
mixin _$SubstanceDefinitionName {
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [name] The actual name.;
  String? get name => throw _privateConstructorUsedError;

  /// [nameElement] (_name): Extensions for name;
  @JsonKey(name: '_name')
  PrimitiveElement? get nameElement => throw _privateConstructorUsedError;

  /// [type] Name type, for example 'systematic',  'scientific, 'brand'.;
  CodeableConcept? get type => throw _privateConstructorUsedError;

  /// [status] The status of the name, for example 'current', 'proposed'.;
  CodeableConcept? get status => throw _privateConstructorUsedError;

  /// [preferred] If this is the preferred name for this substance.;
  FhirBoolean? get preferred => throw _privateConstructorUsedError;

  /// [preferredElement] (_preferred): Extensions for preferred;
  @JsonKey(name: '_preferred')
  PrimitiveElement? get preferredElement => throw _privateConstructorUsedError;

  /// [language] Human language that the name is written in.;
  List<CodeableConcept>? get language => throw _privateConstructorUsedError;

  /// [domain] The use context of this name for example if there is a different name a drug active ingredient as opposed to a food colour additive.;
  List<CodeableConcept>? get domain => throw _privateConstructorUsedError;

  /// [jurisdiction] The jurisdiction where this name applies.;
  List<CodeableConcept>? get jurisdiction => throw _privateConstructorUsedError;

  /// [synonym] A synonym of this particular name, by which the substance is also known.;
  List<SubstanceDefinitionName>? get synonym =>
      throw _privateConstructorUsedError;

  /// [translation] A translation for this name into another human language.;
  List<SubstanceDefinitionName>? get translation =>
      throw _privateConstructorUsedError;

  /// [official] Details of the official nature of this name.;
  List<SubstanceDefinitionOfficial>? get official =>
      throw _privateConstructorUsedError;

  /// [source] Supporting literature.;
  List<Reference>? get source => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubstanceDefinitionNameCopyWith<SubstanceDefinitionName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubstanceDefinitionNameCopyWith<$Res> {
  factory $SubstanceDefinitionNameCopyWith(SubstanceDefinitionName value,
          $Res Function(SubstanceDefinitionName) then) =
      _$SubstanceDefinitionNameCopyWithImpl<$Res, SubstanceDefinitionName>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      String? name,
      @JsonKey(name: '_name') PrimitiveElement? nameElement,
      CodeableConcept? type,
      CodeableConcept? status,
      FhirBoolean? preferred,
      @JsonKey(name: '_preferred') PrimitiveElement? preferredElement,
      List<CodeableConcept>? language,
      List<CodeableConcept>? domain,
      List<CodeableConcept>? jurisdiction,
      List<SubstanceDefinitionName>? synonym,
      List<SubstanceDefinitionName>? translation,
      List<SubstanceDefinitionOfficial>? official,
      List<Reference>? source});

  $CodeableConceptCopyWith<$Res>? get type;
  $CodeableConceptCopyWith<$Res>? get status;
}

/// @nodoc
class _$SubstanceDefinitionNameCopyWithImpl<$Res,
        $Val extends SubstanceDefinitionName>
    implements $SubstanceDefinitionNameCopyWith<$Res> {
  _$SubstanceDefinitionNameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? name = freezed,
    Object? nameElement = freezed,
    Object? type = freezed,
    Object? status = freezed,
    Object? preferred = freezed,
    Object? preferredElement = freezed,
    Object? language = freezed,
    Object? domain = freezed,
    Object? jurisdiction = freezed,
    Object? synonym = freezed,
    Object? translation = freezed,
    Object? official = freezed,
    Object? source = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nameElement: freezed == nameElement
          ? _value.nameElement
          : nameElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      preferred: freezed == preferred
          ? _value.preferred
          : preferred // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      preferredElement: freezed == preferredElement
          ? _value.preferredElement
          : preferredElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      domain: freezed == domain
          ? _value.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      jurisdiction: freezed == jurisdiction
          ? _value.jurisdiction
          : jurisdiction // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      synonym: freezed == synonym
          ? _value.synonym
          : synonym // ignore: cast_nullable_to_non_nullable
              as List<SubstanceDefinitionName>?,
      translation: freezed == translation
          ? _value.translation
          : translation // ignore: cast_nullable_to_non_nullable
              as List<SubstanceDefinitionName>?,
      official: freezed == official
          ? _value.official
          : official // ignore: cast_nullable_to_non_nullable
              as List<SubstanceDefinitionOfficial>?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get type {
    if (_value.type == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.type!, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get status {
    if (_value.status == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.status!, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SubstanceDefinitionNameImplCopyWith<$Res>
    implements $SubstanceDefinitionNameCopyWith<$Res> {
  factory _$$SubstanceDefinitionNameImplCopyWith(
          _$SubstanceDefinitionNameImpl value,
          $Res Function(_$SubstanceDefinitionNameImpl) then) =
      __$$SubstanceDefinitionNameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      String? name,
      @JsonKey(name: '_name') PrimitiveElement? nameElement,
      CodeableConcept? type,
      CodeableConcept? status,
      FhirBoolean? preferred,
      @JsonKey(name: '_preferred') PrimitiveElement? preferredElement,
      List<CodeableConcept>? language,
      List<CodeableConcept>? domain,
      List<CodeableConcept>? jurisdiction,
      List<SubstanceDefinitionName>? synonym,
      List<SubstanceDefinitionName>? translation,
      List<SubstanceDefinitionOfficial>? official,
      List<Reference>? source});

  @override
  $CodeableConceptCopyWith<$Res>? get type;
  @override
  $CodeableConceptCopyWith<$Res>? get status;
}

/// @nodoc
class __$$SubstanceDefinitionNameImplCopyWithImpl<$Res>
    extends _$SubstanceDefinitionNameCopyWithImpl<$Res,
        _$SubstanceDefinitionNameImpl>
    implements _$$SubstanceDefinitionNameImplCopyWith<$Res> {
  __$$SubstanceDefinitionNameImplCopyWithImpl(
      _$SubstanceDefinitionNameImpl _value,
      $Res Function(_$SubstanceDefinitionNameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? name = freezed,
    Object? nameElement = freezed,
    Object? type = freezed,
    Object? status = freezed,
    Object? preferred = freezed,
    Object? preferredElement = freezed,
    Object? language = freezed,
    Object? domain = freezed,
    Object? jurisdiction = freezed,
    Object? synonym = freezed,
    Object? translation = freezed,
    Object? official = freezed,
    Object? source = freezed,
  }) {
    return _then(_$SubstanceDefinitionNameImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nameElement: freezed == nameElement
          ? _value.nameElement
          : nameElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      preferred: freezed == preferred
          ? _value.preferred
          : preferred // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      preferredElement: freezed == preferredElement
          ? _value.preferredElement
          : preferredElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      language: freezed == language
          ? _value._language
          : language // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      domain: freezed == domain
          ? _value._domain
          : domain // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      jurisdiction: freezed == jurisdiction
          ? _value._jurisdiction
          : jurisdiction // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      synonym: freezed == synonym
          ? _value._synonym
          : synonym // ignore: cast_nullable_to_non_nullable
              as List<SubstanceDefinitionName>?,
      translation: freezed == translation
          ? _value._translation
          : translation // ignore: cast_nullable_to_non_nullable
              as List<SubstanceDefinitionName>?,
      official: freezed == official
          ? _value._official
          : official // ignore: cast_nullable_to_non_nullable
              as List<SubstanceDefinitionOfficial>?,
      source: freezed == source
          ? _value._source
          : source // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubstanceDefinitionNameImpl extends _SubstanceDefinitionName {
  const _$SubstanceDefinitionNameImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.name,
      @JsonKey(name: '_name') this.nameElement,
      this.type,
      this.status,
      this.preferred,
      @JsonKey(name: '_preferred') this.preferredElement,
      final List<CodeableConcept>? language,
      final List<CodeableConcept>? domain,
      final List<CodeableConcept>? jurisdiction,
      final List<SubstanceDefinitionName>? synonym,
      final List<SubstanceDefinitionName>? translation,
      final List<SubstanceDefinitionOfficial>? official,
      final List<Reference>? source})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _language = language,
        _domain = domain,
        _jurisdiction = jurisdiction,
        _synonym = synonym,
        _translation = translation,
        _official = official,
        _source = source,
        super._();

  factory _$SubstanceDefinitionNameImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubstanceDefinitionNameImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [name] The actual name.;
  @override
  final String? name;

  /// [nameElement] (_name): Extensions for name;
  @override
  @JsonKey(name: '_name')
  final PrimitiveElement? nameElement;

  /// [type] Name type, for example 'systematic',  'scientific, 'brand'.;
  @override
  final CodeableConcept? type;

  /// [status] The status of the name, for example 'current', 'proposed'.;
  @override
  final CodeableConcept? status;

  /// [preferred] If this is the preferred name for this substance.;
  @override
  final FhirBoolean? preferred;

  /// [preferredElement] (_preferred): Extensions for preferred;
  @override
  @JsonKey(name: '_preferred')
  final PrimitiveElement? preferredElement;

  /// [language] Human language that the name is written in.;
  final List<CodeableConcept>? _language;

  /// [language] Human language that the name is written in.;
  @override
  List<CodeableConcept>? get language {
    final value = _language;
    if (value == null) return null;
    if (_language is EqualUnmodifiableListView) return _language;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [domain] The use context of this name for example if there is a different name a drug active ingredient as opposed to a food colour additive.;
  final List<CodeableConcept>? _domain;

  /// [domain] The use context of this name for example if there is a different name a drug active ingredient as opposed to a food colour additive.;
  @override
  List<CodeableConcept>? get domain {
    final value = _domain;
    if (value == null) return null;
    if (_domain is EqualUnmodifiableListView) return _domain;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [jurisdiction] The jurisdiction where this name applies.;
  final List<CodeableConcept>? _jurisdiction;

  /// [jurisdiction] The jurisdiction where this name applies.;
  @override
  List<CodeableConcept>? get jurisdiction {
    final value = _jurisdiction;
    if (value == null) return null;
    if (_jurisdiction is EqualUnmodifiableListView) return _jurisdiction;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [synonym] A synonym of this particular name, by which the substance is also known.;
  final List<SubstanceDefinitionName>? _synonym;

  /// [synonym] A synonym of this particular name, by which the substance is also known.;
  @override
  List<SubstanceDefinitionName>? get synonym {
    final value = _synonym;
    if (value == null) return null;
    if (_synonym is EqualUnmodifiableListView) return _synonym;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [translation] A translation for this name into another human language.;
  final List<SubstanceDefinitionName>? _translation;

  /// [translation] A translation for this name into another human language.;
  @override
  List<SubstanceDefinitionName>? get translation {
    final value = _translation;
    if (value == null) return null;
    if (_translation is EqualUnmodifiableListView) return _translation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [official] Details of the official nature of this name.;
  final List<SubstanceDefinitionOfficial>? _official;

  /// [official] Details of the official nature of this name.;
  @override
  List<SubstanceDefinitionOfficial>? get official {
    final value = _official;
    if (value == null) return null;
    if (_official is EqualUnmodifiableListView) return _official;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [source] Supporting literature.;
  final List<Reference>? _source;

  /// [source] Supporting literature.;
  @override
  List<Reference>? get source {
    final value = _source;
    if (value == null) return null;
    if (_source is EqualUnmodifiableListView) return _source;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubstanceDefinitionNameImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nameElement, nameElement) ||
                other.nameElement == nameElement) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.preferred, preferred) ||
                other.preferred == preferred) &&
            (identical(other.preferredElement, preferredElement) ||
                other.preferredElement == preferredElement) &&
            const DeepCollectionEquality().equals(other._language, _language) &&
            const DeepCollectionEquality().equals(other._domain, _domain) &&
            const DeepCollectionEquality()
                .equals(other._jurisdiction, _jurisdiction) &&
            const DeepCollectionEquality().equals(other._synonym, _synonym) &&
            const DeepCollectionEquality()
                .equals(other._translation, _translation) &&
            const DeepCollectionEquality().equals(other._official, _official) &&
            const DeepCollectionEquality().equals(other._source, _source));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      name,
      nameElement,
      type,
      status,
      preferred,
      preferredElement,
      const DeepCollectionEquality().hash(_language),
      const DeepCollectionEquality().hash(_domain),
      const DeepCollectionEquality().hash(_jurisdiction),
      const DeepCollectionEquality().hash(_synonym),
      const DeepCollectionEquality().hash(_translation),
      const DeepCollectionEquality().hash(_official),
      const DeepCollectionEquality().hash(_source));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubstanceDefinitionNameImplCopyWith<_$SubstanceDefinitionNameImpl>
      get copyWith => __$$SubstanceDefinitionNameImplCopyWithImpl<
          _$SubstanceDefinitionNameImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubstanceDefinitionNameImplToJson(
      this,
    );
  }
}

abstract class _SubstanceDefinitionName extends SubstanceDefinitionName {
  const factory _SubstanceDefinitionName(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final String? name,
      @JsonKey(name: '_name') final PrimitiveElement? nameElement,
      final CodeableConcept? type,
      final CodeableConcept? status,
      final FhirBoolean? preferred,
      @JsonKey(name: '_preferred') final PrimitiveElement? preferredElement,
      final List<CodeableConcept>? language,
      final List<CodeableConcept>? domain,
      final List<CodeableConcept>? jurisdiction,
      final List<SubstanceDefinitionName>? synonym,
      final List<SubstanceDefinitionName>? translation,
      final List<SubstanceDefinitionOfficial>? official,
      final List<Reference>? source}) = _$SubstanceDefinitionNameImpl;
  const _SubstanceDefinitionName._() : super._();

  factory _SubstanceDefinitionName.fromJson(Map<String, dynamic> json) =
      _$SubstanceDefinitionNameImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  String? get id;
  @override

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  List<FhirExtension>? get modifierExtension;
  @override

  /// [name] The actual name.;
  String? get name;
  @override

  /// [nameElement] (_name): Extensions for name;
  @JsonKey(name: '_name')
  PrimitiveElement? get nameElement;
  @override

  /// [type] Name type, for example 'systematic',  'scientific, 'brand'.;
  CodeableConcept? get type;
  @override

  /// [status] The status of the name, for example 'current', 'proposed'.;
  CodeableConcept? get status;
  @override

  /// [preferred] If this is the preferred name for this substance.;
  FhirBoolean? get preferred;
  @override

  /// [preferredElement] (_preferred): Extensions for preferred;
  @JsonKey(name: '_preferred')
  PrimitiveElement? get preferredElement;
  @override

  /// [language] Human language that the name is written in.;
  List<CodeableConcept>? get language;
  @override

  /// [domain] The use context of this name for example if there is a different name a drug active ingredient as opposed to a food colour additive.;
  List<CodeableConcept>? get domain;
  @override

  /// [jurisdiction] The jurisdiction where this name applies.;
  List<CodeableConcept>? get jurisdiction;
  @override

  /// [synonym] A synonym of this particular name, by which the substance is also known.;
  List<SubstanceDefinitionName>? get synonym;
  @override

  /// [translation] A translation for this name into another human language.;
  List<SubstanceDefinitionName>? get translation;
  @override

  /// [official] Details of the official nature of this name.;
  List<SubstanceDefinitionOfficial>? get official;
  @override

  /// [source] Supporting literature.;
  List<Reference>? get source;
  @override
  @JsonKey(ignore: true)
  _$$SubstanceDefinitionNameImplCopyWith<_$SubstanceDefinitionNameImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SubstanceDefinitionOfficial _$SubstanceDefinitionOfficialFromJson(
    Map<String, dynamic> json) {
  return _SubstanceDefinitionOfficial.fromJson(json);
}

/// @nodoc
mixin _$SubstanceDefinitionOfficial {
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [authority] Which authority uses this official name.;
  CodeableConcept? get authority => throw _privateConstructorUsedError;

  /// [status] The status of the official name, for example 'draft', 'active', 'retired'.;
  CodeableConcept? get status => throw _privateConstructorUsedError;

  /// [date] Date of the official name change.;
  FhirDateTime? get date => throw _privateConstructorUsedError;

  /// [dateElement] (_date): Extensions for date;
  @JsonKey(name: '_date')
  PrimitiveElement? get dateElement => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubstanceDefinitionOfficialCopyWith<SubstanceDefinitionOfficial>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubstanceDefinitionOfficialCopyWith<$Res> {
  factory $SubstanceDefinitionOfficialCopyWith(
          SubstanceDefinitionOfficial value,
          $Res Function(SubstanceDefinitionOfficial) then) =
      _$SubstanceDefinitionOfficialCopyWithImpl<$Res,
          SubstanceDefinitionOfficial>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? authority,
      CodeableConcept? status,
      FhirDateTime? date,
      @JsonKey(name: '_date') PrimitiveElement? dateElement});

  $CodeableConceptCopyWith<$Res>? get authority;
  $CodeableConceptCopyWith<$Res>? get status;
}

/// @nodoc
class _$SubstanceDefinitionOfficialCopyWithImpl<$Res,
        $Val extends SubstanceDefinitionOfficial>
    implements $SubstanceDefinitionOfficialCopyWith<$Res> {
  _$SubstanceDefinitionOfficialCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? authority = freezed,
    Object? status = freezed,
    Object? date = freezed,
    Object? dateElement = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      authority: freezed == authority
          ? _value.authority
          : authority // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      dateElement: freezed == dateElement
          ? _value.dateElement
          : dateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get authority {
    if (_value.authority == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.authority!, (value) {
      return _then(_value.copyWith(authority: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get status {
    if (_value.status == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.status!, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SubstanceDefinitionOfficialImplCopyWith<$Res>
    implements $SubstanceDefinitionOfficialCopyWith<$Res> {
  factory _$$SubstanceDefinitionOfficialImplCopyWith(
          _$SubstanceDefinitionOfficialImpl value,
          $Res Function(_$SubstanceDefinitionOfficialImpl) then) =
      __$$SubstanceDefinitionOfficialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? authority,
      CodeableConcept? status,
      FhirDateTime? date,
      @JsonKey(name: '_date') PrimitiveElement? dateElement});

  @override
  $CodeableConceptCopyWith<$Res>? get authority;
  @override
  $CodeableConceptCopyWith<$Res>? get status;
}

/// @nodoc
class __$$SubstanceDefinitionOfficialImplCopyWithImpl<$Res>
    extends _$SubstanceDefinitionOfficialCopyWithImpl<$Res,
        _$SubstanceDefinitionOfficialImpl>
    implements _$$SubstanceDefinitionOfficialImplCopyWith<$Res> {
  __$$SubstanceDefinitionOfficialImplCopyWithImpl(
      _$SubstanceDefinitionOfficialImpl _value,
      $Res Function(_$SubstanceDefinitionOfficialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? authority = freezed,
    Object? status = freezed,
    Object? date = freezed,
    Object? dateElement = freezed,
  }) {
    return _then(_$SubstanceDefinitionOfficialImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      authority: freezed == authority
          ? _value.authority
          : authority // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      dateElement: freezed == dateElement
          ? _value.dateElement
          : dateElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubstanceDefinitionOfficialImpl extends _SubstanceDefinitionOfficial {
  const _$SubstanceDefinitionOfficialImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.authority,
      this.status,
      this.date,
      @JsonKey(name: '_date') this.dateElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$SubstanceDefinitionOfficialImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SubstanceDefinitionOfficialImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [authority] Which authority uses this official name.;
  @override
  final CodeableConcept? authority;

  /// [status] The status of the official name, for example 'draft', 'active', 'retired'.;
  @override
  final CodeableConcept? status;

  /// [date] Date of the official name change.;
  @override
  final FhirDateTime? date;

  /// [dateElement] (_date): Extensions for date;
  @override
  @JsonKey(name: '_date')
  final PrimitiveElement? dateElement;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubstanceDefinitionOfficialImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.authority, authority) ||
                other.authority == authority) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.dateElement, dateElement) ||
                other.dateElement == dateElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      authority,
      status,
      date,
      dateElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubstanceDefinitionOfficialImplCopyWith<_$SubstanceDefinitionOfficialImpl>
      get copyWith => __$$SubstanceDefinitionOfficialImplCopyWithImpl<
          _$SubstanceDefinitionOfficialImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubstanceDefinitionOfficialImplToJson(
      this,
    );
  }
}

abstract class _SubstanceDefinitionOfficial
    extends SubstanceDefinitionOfficial {
  const factory _SubstanceDefinitionOfficial(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final CodeableConcept? authority,
          final CodeableConcept? status,
          final FhirDateTime? date,
          @JsonKey(name: '_date') final PrimitiveElement? dateElement}) =
      _$SubstanceDefinitionOfficialImpl;
  const _SubstanceDefinitionOfficial._() : super._();

  factory _SubstanceDefinitionOfficial.fromJson(Map<String, dynamic> json) =
      _$SubstanceDefinitionOfficialImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  String? get id;
  @override

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  List<FhirExtension>? get modifierExtension;
  @override

  /// [authority] Which authority uses this official name.;
  CodeableConcept? get authority;
  @override

  /// [status] The status of the official name, for example 'draft', 'active', 'retired'.;
  CodeableConcept? get status;
  @override

  /// [date] Date of the official name change.;
  FhirDateTime? get date;
  @override

  /// [dateElement] (_date): Extensions for date;
  @JsonKey(name: '_date')
  PrimitiveElement? get dateElement;
  @override
  @JsonKey(ignore: true)
  _$$SubstanceDefinitionOfficialImplCopyWith<_$SubstanceDefinitionOfficialImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SubstanceDefinitionRelationship _$SubstanceDefinitionRelationshipFromJson(
    Map<String, dynamic> json) {
  return _SubstanceDefinitionRelationship.fromJson(json);
}

/// @nodoc
mixin _$SubstanceDefinitionRelationship {
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [substanceDefinitionReference] A pointer to another substance, as a resource or just a representational code.;
  Reference? get substanceDefinitionReference =>
      throw _privateConstructorUsedError;

  /// [substanceDefinitionCodeableConcept] A pointer to another substance, as a resource or just a representational code.;
  CodeableConcept? get substanceDefinitionCodeableConcept =>
      throw _privateConstructorUsedError;

  /// [type] For example "salt to parent", "active moiety", "starting material", "polymorph", "impurity of".;
  CodeableConcept get type => throw _privateConstructorUsedError;

  /// [isDefining] For example where an enzyme strongly bonds with a particular substance, this is a defining relationship for that enzyme, out of several possible substance relationships.;
  FhirBoolean? get isDefining => throw _privateConstructorUsedError;

  /// [isDefiningElement] (_isDefining): Extensions for isDefining;
  @JsonKey(name: '_isDefining')
  PrimitiveElement? get isDefiningElement => throw _privateConstructorUsedError;

  /// [amountQuantity] A numeric factor for the relationship, for instance to express that the salt of a substance has some percentage of the active substance in relation to some other.;
  Quantity? get amountQuantity => throw _privateConstructorUsedError;

  /// [amountRatio] A numeric factor for the relationship, for instance to express that the salt of a substance has some percentage of the active substance in relation to some other.;
  Ratio? get amountRatio => throw _privateConstructorUsedError;

  /// [amountString] A numeric factor for the relationship, for instance to express that the salt of a substance has some percentage of the active substance in relation to some other.;
  FhirMarkdown? get amountString => throw _privateConstructorUsedError;

  /// [amountStringElement] (_amountString): Extensions for amountString;
  @JsonKey(name: '_amountString')
  PrimitiveElement? get amountStringElement =>
      throw _privateConstructorUsedError;

  /// [ratioHighLimitAmount] For use when the numeric has an uncertain range.;
  Ratio? get ratioHighLimitAmount => throw _privateConstructorUsedError;

  /// [comparator] An operator for the amount, for example "average", "approximately", "less than".;
  CodeableConcept? get comparator => throw _privateConstructorUsedError;

  /// [source] Supporting literature.;
  List<Reference>? get source => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubstanceDefinitionRelationshipCopyWith<SubstanceDefinitionRelationship>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubstanceDefinitionRelationshipCopyWith<$Res> {
  factory $SubstanceDefinitionRelationshipCopyWith(
          SubstanceDefinitionRelationship value,
          $Res Function(SubstanceDefinitionRelationship) then) =
      _$SubstanceDefinitionRelationshipCopyWithImpl<$Res,
          SubstanceDefinitionRelationship>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      Reference? substanceDefinitionReference,
      CodeableConcept? substanceDefinitionCodeableConcept,
      CodeableConcept type,
      FhirBoolean? isDefining,
      @JsonKey(name: '_isDefining') PrimitiveElement? isDefiningElement,
      Quantity? amountQuantity,
      Ratio? amountRatio,
      FhirMarkdown? amountString,
      @JsonKey(name: '_amountString') PrimitiveElement? amountStringElement,
      Ratio? ratioHighLimitAmount,
      CodeableConcept? comparator,
      List<Reference>? source});

  $ReferenceCopyWith<$Res>? get substanceDefinitionReference;
  $CodeableConceptCopyWith<$Res>? get substanceDefinitionCodeableConcept;
  $CodeableConceptCopyWith<$Res> get type;
  $QuantityCopyWith<$Res>? get amountQuantity;
  $RatioCopyWith<$Res>? get amountRatio;
  $RatioCopyWith<$Res>? get ratioHighLimitAmount;
  $CodeableConceptCopyWith<$Res>? get comparator;
}

/// @nodoc
class _$SubstanceDefinitionRelationshipCopyWithImpl<$Res,
        $Val extends SubstanceDefinitionRelationship>
    implements $SubstanceDefinitionRelationshipCopyWith<$Res> {
  _$SubstanceDefinitionRelationshipCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? substanceDefinitionReference = freezed,
    Object? substanceDefinitionCodeableConcept = freezed,
    Object? type = null,
    Object? isDefining = freezed,
    Object? isDefiningElement = freezed,
    Object? amountQuantity = freezed,
    Object? amountRatio = freezed,
    Object? amountString = freezed,
    Object? amountStringElement = freezed,
    Object? ratioHighLimitAmount = freezed,
    Object? comparator = freezed,
    Object? source = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      substanceDefinitionReference: freezed == substanceDefinitionReference
          ? _value.substanceDefinitionReference
          : substanceDefinitionReference // ignore: cast_nullable_to_non_nullable
              as Reference?,
      substanceDefinitionCodeableConcept: freezed ==
              substanceDefinitionCodeableConcept
          ? _value.substanceDefinitionCodeableConcept
          : substanceDefinitionCodeableConcept // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      isDefining: freezed == isDefining
          ? _value.isDefining
          : isDefining // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      isDefiningElement: freezed == isDefiningElement
          ? _value.isDefiningElement
          : isDefiningElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      amountQuantity: freezed == amountQuantity
          ? _value.amountQuantity
          : amountQuantity // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      amountRatio: freezed == amountRatio
          ? _value.amountRatio
          : amountRatio // ignore: cast_nullable_to_non_nullable
              as Ratio?,
      amountString: freezed == amountString
          ? _value.amountString
          : amountString // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      amountStringElement: freezed == amountStringElement
          ? _value.amountStringElement
          : amountStringElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      ratioHighLimitAmount: freezed == ratioHighLimitAmount
          ? _value.ratioHighLimitAmount
          : ratioHighLimitAmount // ignore: cast_nullable_to_non_nullable
              as Ratio?,
      comparator: freezed == comparator
          ? _value.comparator
          : comparator // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get substanceDefinitionReference {
    if (_value.substanceDefinitionReference == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.substanceDefinitionReference!,
        (value) {
      return _then(
          _value.copyWith(substanceDefinitionReference: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get substanceDefinitionCodeableConcept {
    if (_value.substanceDefinitionCodeableConcept == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(
        _value.substanceDefinitionCodeableConcept!, (value) {
      return _then(
          _value.copyWith(substanceDefinitionCodeableConcept: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res> get type {
    return $CodeableConceptCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $QuantityCopyWith<$Res>? get amountQuantity {
    if (_value.amountQuantity == null) {
      return null;
    }

    return $QuantityCopyWith<$Res>(_value.amountQuantity!, (value) {
      return _then(_value.copyWith(amountQuantity: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RatioCopyWith<$Res>? get amountRatio {
    if (_value.amountRatio == null) {
      return null;
    }

    return $RatioCopyWith<$Res>(_value.amountRatio!, (value) {
      return _then(_value.copyWith(amountRatio: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RatioCopyWith<$Res>? get ratioHighLimitAmount {
    if (_value.ratioHighLimitAmount == null) {
      return null;
    }

    return $RatioCopyWith<$Res>(_value.ratioHighLimitAmount!, (value) {
      return _then(_value.copyWith(ratioHighLimitAmount: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get comparator {
    if (_value.comparator == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.comparator!, (value) {
      return _then(_value.copyWith(comparator: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SubstanceDefinitionRelationshipImplCopyWith<$Res>
    implements $SubstanceDefinitionRelationshipCopyWith<$Res> {
  factory _$$SubstanceDefinitionRelationshipImplCopyWith(
          _$SubstanceDefinitionRelationshipImpl value,
          $Res Function(_$SubstanceDefinitionRelationshipImpl) then) =
      __$$SubstanceDefinitionRelationshipImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      Reference? substanceDefinitionReference,
      CodeableConcept? substanceDefinitionCodeableConcept,
      CodeableConcept type,
      FhirBoolean? isDefining,
      @JsonKey(name: '_isDefining') PrimitiveElement? isDefiningElement,
      Quantity? amountQuantity,
      Ratio? amountRatio,
      FhirMarkdown? amountString,
      @JsonKey(name: '_amountString') PrimitiveElement? amountStringElement,
      Ratio? ratioHighLimitAmount,
      CodeableConcept? comparator,
      List<Reference>? source});

  @override
  $ReferenceCopyWith<$Res>? get substanceDefinitionReference;
  @override
  $CodeableConceptCopyWith<$Res>? get substanceDefinitionCodeableConcept;
  @override
  $CodeableConceptCopyWith<$Res> get type;
  @override
  $QuantityCopyWith<$Res>? get amountQuantity;
  @override
  $RatioCopyWith<$Res>? get amountRatio;
  @override
  $RatioCopyWith<$Res>? get ratioHighLimitAmount;
  @override
  $CodeableConceptCopyWith<$Res>? get comparator;
}

/// @nodoc
class __$$SubstanceDefinitionRelationshipImplCopyWithImpl<$Res>
    extends _$SubstanceDefinitionRelationshipCopyWithImpl<$Res,
        _$SubstanceDefinitionRelationshipImpl>
    implements _$$SubstanceDefinitionRelationshipImplCopyWith<$Res> {
  __$$SubstanceDefinitionRelationshipImplCopyWithImpl(
      _$SubstanceDefinitionRelationshipImpl _value,
      $Res Function(_$SubstanceDefinitionRelationshipImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? substanceDefinitionReference = freezed,
    Object? substanceDefinitionCodeableConcept = freezed,
    Object? type = null,
    Object? isDefining = freezed,
    Object? isDefiningElement = freezed,
    Object? amountQuantity = freezed,
    Object? amountRatio = freezed,
    Object? amountString = freezed,
    Object? amountStringElement = freezed,
    Object? ratioHighLimitAmount = freezed,
    Object? comparator = freezed,
    Object? source = freezed,
  }) {
    return _then(_$SubstanceDefinitionRelationshipImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      substanceDefinitionReference: freezed == substanceDefinitionReference
          ? _value.substanceDefinitionReference
          : substanceDefinitionReference // ignore: cast_nullable_to_non_nullable
              as Reference?,
      substanceDefinitionCodeableConcept: freezed ==
              substanceDefinitionCodeableConcept
          ? _value.substanceDefinitionCodeableConcept
          : substanceDefinitionCodeableConcept // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      isDefining: freezed == isDefining
          ? _value.isDefining
          : isDefining // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      isDefiningElement: freezed == isDefiningElement
          ? _value.isDefiningElement
          : isDefiningElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      amountQuantity: freezed == amountQuantity
          ? _value.amountQuantity
          : amountQuantity // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      amountRatio: freezed == amountRatio
          ? _value.amountRatio
          : amountRatio // ignore: cast_nullable_to_non_nullable
              as Ratio?,
      amountString: freezed == amountString
          ? _value.amountString
          : amountString // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      amountStringElement: freezed == amountStringElement
          ? _value.amountStringElement
          : amountStringElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      ratioHighLimitAmount: freezed == ratioHighLimitAmount
          ? _value.ratioHighLimitAmount
          : ratioHighLimitAmount // ignore: cast_nullable_to_non_nullable
              as Ratio?,
      comparator: freezed == comparator
          ? _value.comparator
          : comparator // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      source: freezed == source
          ? _value._source
          : source // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubstanceDefinitionRelationshipImpl
    extends _SubstanceDefinitionRelationship {
  const _$SubstanceDefinitionRelationshipImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.substanceDefinitionReference,
      this.substanceDefinitionCodeableConcept,
      required this.type,
      this.isDefining,
      @JsonKey(name: '_isDefining') this.isDefiningElement,
      this.amountQuantity,
      this.amountRatio,
      this.amountString,
      @JsonKey(name: '_amountString') this.amountStringElement,
      this.ratioHighLimitAmount,
      this.comparator,
      final List<Reference>? source})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _source = source,
        super._();

  factory _$SubstanceDefinitionRelationshipImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SubstanceDefinitionRelationshipImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [substanceDefinitionReference] A pointer to another substance, as a resource or just a representational code.;
  @override
  final Reference? substanceDefinitionReference;

  /// [substanceDefinitionCodeableConcept] A pointer to another substance, as a resource or just a representational code.;
  @override
  final CodeableConcept? substanceDefinitionCodeableConcept;

  /// [type] For example "salt to parent", "active moiety", "starting material", "polymorph", "impurity of".;
  @override
  final CodeableConcept type;

  /// [isDefining] For example where an enzyme strongly bonds with a particular substance, this is a defining relationship for that enzyme, out of several possible substance relationships.;
  @override
  final FhirBoolean? isDefining;

  /// [isDefiningElement] (_isDefining): Extensions for isDefining;
  @override
  @JsonKey(name: '_isDefining')
  final PrimitiveElement? isDefiningElement;

  /// [amountQuantity] A numeric factor for the relationship, for instance to express that the salt of a substance has some percentage of the active substance in relation to some other.;
  @override
  final Quantity? amountQuantity;

  /// [amountRatio] A numeric factor for the relationship, for instance to express that the salt of a substance has some percentage of the active substance in relation to some other.;
  @override
  final Ratio? amountRatio;

  /// [amountString] A numeric factor for the relationship, for instance to express that the salt of a substance has some percentage of the active substance in relation to some other.;
  @override
  final FhirMarkdown? amountString;

  /// [amountStringElement] (_amountString): Extensions for amountString;
  @override
  @JsonKey(name: '_amountString')
  final PrimitiveElement? amountStringElement;

  /// [ratioHighLimitAmount] For use when the numeric has an uncertain range.;
  @override
  final Ratio? ratioHighLimitAmount;

  /// [comparator] An operator for the amount, for example "average", "approximately", "less than".;
  @override
  final CodeableConcept? comparator;

  /// [source] Supporting literature.;
  final List<Reference>? _source;

  /// [source] Supporting literature.;
  @override
  List<Reference>? get source {
    final value = _source;
    if (value == null) return null;
    if (_source is EqualUnmodifiableListView) return _source;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubstanceDefinitionRelationshipImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.substanceDefinitionReference,
                    substanceDefinitionReference) ||
                other.substanceDefinitionReference ==
                    substanceDefinitionReference) &&
            (identical(other.substanceDefinitionCodeableConcept,
                    substanceDefinitionCodeableConcept) ||
                other.substanceDefinitionCodeableConcept ==
                    substanceDefinitionCodeableConcept) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.isDefining, isDefining) ||
                other.isDefining == isDefining) &&
            (identical(other.isDefiningElement, isDefiningElement) ||
                other.isDefiningElement == isDefiningElement) &&
            (identical(other.amountQuantity, amountQuantity) ||
                other.amountQuantity == amountQuantity) &&
            (identical(other.amountRatio, amountRatio) ||
                other.amountRatio == amountRatio) &&
            (identical(other.amountString, amountString) ||
                other.amountString == amountString) &&
            (identical(other.amountStringElement, amountStringElement) ||
                other.amountStringElement == amountStringElement) &&
            (identical(other.ratioHighLimitAmount, ratioHighLimitAmount) ||
                other.ratioHighLimitAmount == ratioHighLimitAmount) &&
            (identical(other.comparator, comparator) ||
                other.comparator == comparator) &&
            const DeepCollectionEquality().equals(other._source, _source));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      substanceDefinitionReference,
      substanceDefinitionCodeableConcept,
      type,
      isDefining,
      isDefiningElement,
      amountQuantity,
      amountRatio,
      amountString,
      amountStringElement,
      ratioHighLimitAmount,
      comparator,
      const DeepCollectionEquality().hash(_source));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubstanceDefinitionRelationshipImplCopyWith<
          _$SubstanceDefinitionRelationshipImpl>
      get copyWith => __$$SubstanceDefinitionRelationshipImplCopyWithImpl<
          _$SubstanceDefinitionRelationshipImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubstanceDefinitionRelationshipImplToJson(
      this,
    );
  }
}

abstract class _SubstanceDefinitionRelationship
    extends SubstanceDefinitionRelationship {
  const factory _SubstanceDefinitionRelationship(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final Reference? substanceDefinitionReference,
      final CodeableConcept? substanceDefinitionCodeableConcept,
      required final CodeableConcept type,
      final FhirBoolean? isDefining,
      @JsonKey(name: '_isDefining') final PrimitiveElement? isDefiningElement,
      final Quantity? amountQuantity,
      final Ratio? amountRatio,
      final FhirMarkdown? amountString,
      @JsonKey(name: '_amountString')
      final PrimitiveElement? amountStringElement,
      final Ratio? ratioHighLimitAmount,
      final CodeableConcept? comparator,
      final List<Reference>? source}) = _$SubstanceDefinitionRelationshipImpl;
  const _SubstanceDefinitionRelationship._() : super._();

  factory _SubstanceDefinitionRelationship.fromJson(Map<String, dynamic> json) =
      _$SubstanceDefinitionRelationshipImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  String? get id;
  @override

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  List<FhirExtension>? get modifierExtension;
  @override

  /// [substanceDefinitionReference] A pointer to another substance, as a resource or just a representational code.;
  Reference? get substanceDefinitionReference;
  @override

  /// [substanceDefinitionCodeableConcept] A pointer to another substance, as a resource or just a representational code.;
  CodeableConcept? get substanceDefinitionCodeableConcept;
  @override

  /// [type] For example "salt to parent", "active moiety", "starting material", "polymorph", "impurity of".;
  CodeableConcept get type;
  @override

  /// [isDefining] For example where an enzyme strongly bonds with a particular substance, this is a defining relationship for that enzyme, out of several possible substance relationships.;
  FhirBoolean? get isDefining;
  @override

  /// [isDefiningElement] (_isDefining): Extensions for isDefining;
  @JsonKey(name: '_isDefining')
  PrimitiveElement? get isDefiningElement;
  @override

  /// [amountQuantity] A numeric factor for the relationship, for instance to express that the salt of a substance has some percentage of the active substance in relation to some other.;
  Quantity? get amountQuantity;
  @override

  /// [amountRatio] A numeric factor for the relationship, for instance to express that the salt of a substance has some percentage of the active substance in relation to some other.;
  Ratio? get amountRatio;
  @override

  /// [amountString] A numeric factor for the relationship, for instance to express that the salt of a substance has some percentage of the active substance in relation to some other.;
  FhirMarkdown? get amountString;
  @override

  /// [amountStringElement] (_amountString): Extensions for amountString;
  @JsonKey(name: '_amountString')
  PrimitiveElement? get amountStringElement;
  @override

  /// [ratioHighLimitAmount] For use when the numeric has an uncertain range.;
  Ratio? get ratioHighLimitAmount;
  @override

  /// [comparator] An operator for the amount, for example "average", "approximately", "less than".;
  CodeableConcept? get comparator;
  @override

  /// [source] Supporting literature.;
  List<Reference>? get source;
  @override
  @JsonKey(ignore: true)
  _$$SubstanceDefinitionRelationshipImplCopyWith<
          _$SubstanceDefinitionRelationshipImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SubstanceDefinitionSourceMaterial _$SubstanceDefinitionSourceMaterialFromJson(
    Map<String, dynamic> json) {
  return _SubstanceDefinitionSourceMaterial.fromJson(json);
}

/// @nodoc
mixin _$SubstanceDefinitionSourceMaterial {
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [type] A classification that provides the origin of the raw material. Example: cat hair would be an Animal source type.;
  CodeableConcept? get type => throw _privateConstructorUsedError;

  /// [genus] The genus of an organism, typically referring to the Latin epithet of the genus element of the plant/animal scientific name.;
  CodeableConcept? get genus => throw _privateConstructorUsedError;

  /// [species] The species of an organism, typically referring to the Latin epithet of the species of the plant/animal.;
  CodeableConcept? get species => throw _privateConstructorUsedError;

  /// [part_] An anatomical origin of the source material within an organism.;
  @JsonKey(name: 'part')
  CodeableConcept? get part_ => throw _privateConstructorUsedError;

  /// [countryOfOrigin] The country or countries where the material is harvested.;
  List<CodeableConcept>? get countryOfOrigin =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubstanceDefinitionSourceMaterialCopyWith<SubstanceDefinitionSourceMaterial>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubstanceDefinitionSourceMaterialCopyWith<$Res> {
  factory $SubstanceDefinitionSourceMaterialCopyWith(
          SubstanceDefinitionSourceMaterial value,
          $Res Function(SubstanceDefinitionSourceMaterial) then) =
      _$SubstanceDefinitionSourceMaterialCopyWithImpl<$Res,
          SubstanceDefinitionSourceMaterial>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? type,
      CodeableConcept? genus,
      CodeableConcept? species,
      @JsonKey(name: 'part') CodeableConcept? part_,
      List<CodeableConcept>? countryOfOrigin});

  $CodeableConceptCopyWith<$Res>? get type;
  $CodeableConceptCopyWith<$Res>? get genus;
  $CodeableConceptCopyWith<$Res>? get species;
  $CodeableConceptCopyWith<$Res>? get part_;
}

/// @nodoc
class _$SubstanceDefinitionSourceMaterialCopyWithImpl<$Res,
        $Val extends SubstanceDefinitionSourceMaterial>
    implements $SubstanceDefinitionSourceMaterialCopyWith<$Res> {
  _$SubstanceDefinitionSourceMaterialCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? type = freezed,
    Object? genus = freezed,
    Object? species = freezed,
    Object? part_ = freezed,
    Object? countryOfOrigin = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value.extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value.modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      genus: freezed == genus
          ? _value.genus
          : genus // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      species: freezed == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      part_: freezed == part_
          ? _value.part_
          : part_ // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      countryOfOrigin: freezed == countryOfOrigin
          ? _value.countryOfOrigin
          : countryOfOrigin // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get type {
    if (_value.type == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.type!, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get genus {
    if (_value.genus == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.genus!, (value) {
      return _then(_value.copyWith(genus: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get species {
    if (_value.species == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.species!, (value) {
      return _then(_value.copyWith(species: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get part_ {
    if (_value.part_ == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.part_!, (value) {
      return _then(_value.copyWith(part_: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SubstanceDefinitionSourceMaterialImplCopyWith<$Res>
    implements $SubstanceDefinitionSourceMaterialCopyWith<$Res> {
  factory _$$SubstanceDefinitionSourceMaterialImplCopyWith(
          _$SubstanceDefinitionSourceMaterialImpl value,
          $Res Function(_$SubstanceDefinitionSourceMaterialImpl) then) =
      __$$SubstanceDefinitionSourceMaterialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? type,
      CodeableConcept? genus,
      CodeableConcept? species,
      @JsonKey(name: 'part') CodeableConcept? part_,
      List<CodeableConcept>? countryOfOrigin});

  @override
  $CodeableConceptCopyWith<$Res>? get type;
  @override
  $CodeableConceptCopyWith<$Res>? get genus;
  @override
  $CodeableConceptCopyWith<$Res>? get species;
  @override
  $CodeableConceptCopyWith<$Res>? get part_;
}

/// @nodoc
class __$$SubstanceDefinitionSourceMaterialImplCopyWithImpl<$Res>
    extends _$SubstanceDefinitionSourceMaterialCopyWithImpl<$Res,
        _$SubstanceDefinitionSourceMaterialImpl>
    implements _$$SubstanceDefinitionSourceMaterialImplCopyWith<$Res> {
  __$$SubstanceDefinitionSourceMaterialImplCopyWithImpl(
      _$SubstanceDefinitionSourceMaterialImpl _value,
      $Res Function(_$SubstanceDefinitionSourceMaterialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? type = freezed,
    Object? genus = freezed,
    Object? species = freezed,
    Object? part_ = freezed,
    Object? countryOfOrigin = freezed,
  }) {
    return _then(_$SubstanceDefinitionSourceMaterialImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      modifierExtension: freezed == modifierExtension
          ? _value._modifierExtension
          : modifierExtension // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      genus: freezed == genus
          ? _value.genus
          : genus // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      species: freezed == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      part_: freezed == part_
          ? _value.part_
          : part_ // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      countryOfOrigin: freezed == countryOfOrigin
          ? _value._countryOfOrigin
          : countryOfOrigin // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubstanceDefinitionSourceMaterialImpl
    extends _SubstanceDefinitionSourceMaterial {
  const _$SubstanceDefinitionSourceMaterialImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.type,
      this.genus,
      this.species,
      @JsonKey(name: 'part') this.part_,
      final List<CodeableConcept>? countryOfOrigin})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _countryOfOrigin = countryOfOrigin,
        super._();

  factory _$SubstanceDefinitionSourceMaterialImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SubstanceDefinitionSourceMaterialImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [type] A classification that provides the origin of the raw material. Example: cat hair would be an Animal source type.;
  @override
  final CodeableConcept? type;

  /// [genus] The genus of an organism, typically referring to the Latin epithet of the genus element of the plant/animal scientific name.;
  @override
  final CodeableConcept? genus;

  /// [species] The species of an organism, typically referring to the Latin epithet of the species of the plant/animal.;
  @override
  final CodeableConcept? species;

  /// [part_] An anatomical origin of the source material within an organism.;
  @override
  @JsonKey(name: 'part')
  final CodeableConcept? part_;

  /// [countryOfOrigin] The country or countries where the material is harvested.;
  final List<CodeableConcept>? _countryOfOrigin;

  /// [countryOfOrigin] The country or countries where the material is harvested.;
  @override
  List<CodeableConcept>? get countryOfOrigin {
    final value = _countryOfOrigin;
    if (value == null) return null;
    if (_countryOfOrigin is EqualUnmodifiableListView) return _countryOfOrigin;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubstanceDefinitionSourceMaterialImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.genus, genus) || other.genus == genus) &&
            (identical(other.species, species) || other.species == species) &&
            (identical(other.part_, part_) || other.part_ == part_) &&
            const DeepCollectionEquality()
                .equals(other._countryOfOrigin, _countryOfOrigin));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      type,
      genus,
      species,
      part_,
      const DeepCollectionEquality().hash(_countryOfOrigin));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubstanceDefinitionSourceMaterialImplCopyWith<
          _$SubstanceDefinitionSourceMaterialImpl>
      get copyWith => __$$SubstanceDefinitionSourceMaterialImplCopyWithImpl<
          _$SubstanceDefinitionSourceMaterialImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubstanceDefinitionSourceMaterialImplToJson(
      this,
    );
  }
}

abstract class _SubstanceDefinitionSourceMaterial
    extends SubstanceDefinitionSourceMaterial {
  const factory _SubstanceDefinitionSourceMaterial(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final CodeableConcept? type,
          final CodeableConcept? genus,
          final CodeableConcept? species,
          @JsonKey(name: 'part') final CodeableConcept? part_,
          final List<CodeableConcept>? countryOfOrigin}) =
      _$SubstanceDefinitionSourceMaterialImpl;
  const _SubstanceDefinitionSourceMaterial._() : super._();

  factory _SubstanceDefinitionSourceMaterial.fromJson(
          Map<String, dynamic> json) =
      _$SubstanceDefinitionSourceMaterialImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  String? get id;
  @override

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  List<FhirExtension>? get modifierExtension;
  @override

  /// [type] A classification that provides the origin of the raw material. Example: cat hair would be an Animal source type.;
  CodeableConcept? get type;
  @override

  /// [genus] The genus of an organism, typically referring to the Latin epithet of the genus element of the plant/animal scientific name.;
  CodeableConcept? get genus;
  @override

  /// [species] The species of an organism, typically referring to the Latin epithet of the species of the plant/animal.;
  CodeableConcept? get species;
  @override

  /// [part_] An anatomical origin of the source material within an organism.;
  @JsonKey(name: 'part')
  CodeableConcept? get part_;
  @override

  /// [countryOfOrigin] The country or countries where the material is harvested.;
  List<CodeableConcept>? get countryOfOrigin;
  @override
  @JsonKey(ignore: true)
  _$$SubstanceDefinitionSourceMaterialImplCopyWith<
          _$SubstanceDefinitionSourceMaterialImpl>
      get copyWith => throw _privateConstructorUsedError;
}
