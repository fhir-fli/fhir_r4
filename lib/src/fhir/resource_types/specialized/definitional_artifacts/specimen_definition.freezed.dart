// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'specimen_definition.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SpecimenDefinition _$SpecimenDefinitionFromJson(Map<String, dynamic> json) {
  return _SpecimenDefinition.fromJson(json);
}

/// @nodoc
mixin _$SpecimenDefinition {
  @JsonKey(unknownEnumValue: R4ResourceType.SpecimenDefinition)
  R4ResourceType get resourceType => throw _privateConstructorUsedError;

  /// [id] The logical id of the resource, as used in the URL for the resource.
  ///  Once assigned, this value never changes.
  String? get id => throw _privateConstructorUsedError;

  /// [meta] The metadata about the resource. This is content that is
  /// maintained by the infrastructure. Changes to the content might not always
  ///  be associated with version changes to the resource.
  FhirMeta? get meta => throw _privateConstructorUsedError;

  /// [implicitRules] A reference to a set of rules that were followed when the
  /// resource was constructed, and which must be understood when processing the
  /// content. Often, this is a reference to an implementation guide that
  ///  defines the special rules along with other profiles etc.
  FhirUri? get implicitRules => throw _privateConstructorUsedError;

  /// [implicitRulesElement] Extensions for implicitRules
  @JsonKey(name: '_implicitRules')
  PrimitiveElement? get implicitRulesElement =>
      throw _privateConstructorUsedError;

  /// [language] The base language in which the resource is written.
  FhirCode? get language => throw _privateConstructorUsedError;

  /// [languageElement] Extensions for language
  @JsonKey(name: '_language')
  PrimitiveElement? get languageElement => throw _privateConstructorUsedError;

  /// [text] A human-readable narrative that contains a summary of the resource
  /// and can be used to represent the content of the resource to a human. The
  /// narrative need not encode all the structured data, but is required to
  /// contain sufficient detail to make it "clinically safe" for a human to just
  /// read the narrative. Resource definitions may define what content should be
  ///  represented in the narrative to ensure clinical safety.
  Narrative? get text => throw _privateConstructorUsedError;

  /// [contained] These resources do not have an independent existence apart
  /// from the resource that contains them - they cannot be identified
  /// independently, and nor can they have their own independent transaction
  ///  scope.
  List<Resource>? get contained => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the resource. To make the use of
  /// extensions safe and manageable, there is a strict set of governance
  /// applied to the definition and use of extensions. Though any implementer
  /// can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

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
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [identifier] A business identifier associated with the kind of specimen.
  Identifier? get identifier => throw _privateConstructorUsedError;

  /// [typeCollected] The kind of material to be collected.
  CodeableConcept? get typeCollected => throw _privateConstructorUsedError;

  /// [patientPreparation] Preparation of the patient for specimen collection.
  List<CodeableConcept>? get patientPreparation =>
      throw _privateConstructorUsedError;

  /// [timeAspect] Time aspect of specimen collection (duration or offset).
  String? get timeAspect => throw _privateConstructorUsedError;

  /// [timeAspectElement] Extensions for timeAspect
  @JsonKey(name: '_timeAspect')
  PrimitiveElement? get timeAspectElement => throw _privateConstructorUsedError;

  /// [collection] The action to be performed for collecting the specimen.
  List<CodeableConcept>? get collection => throw _privateConstructorUsedError;

  /// [typeTested] Specimen conditioned in a container as expected by the
  ///  testing laboratory.
  List<SpecimenDefinitionTypeTested>? get typeTested =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpecimenDefinitionCopyWith<SpecimenDefinition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpecimenDefinitionCopyWith<$Res> {
  factory $SpecimenDefinitionCopyWith(
          SpecimenDefinition value, $Res Function(SpecimenDefinition) then) =
      _$SpecimenDefinitionCopyWithImpl<$Res, SpecimenDefinition>;
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R4ResourceType.SpecimenDefinition)
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
      Identifier? identifier,
      CodeableConcept? typeCollected,
      List<CodeableConcept>? patientPreparation,
      String? timeAspect,
      @JsonKey(name: '_timeAspect') PrimitiveElement? timeAspectElement,
      List<CodeableConcept>? collection,
      List<SpecimenDefinitionTypeTested>? typeTested});

  $FhirMetaCopyWith<$Res>? get meta;
  $NarrativeCopyWith<$Res>? get text;
  $IdentifierCopyWith<$Res>? get identifier;
  $CodeableConceptCopyWith<$Res>? get typeCollected;
}

/// @nodoc
class _$SpecimenDefinitionCopyWithImpl<$Res, $Val extends SpecimenDefinition>
    implements $SpecimenDefinitionCopyWith<$Res> {
  _$SpecimenDefinitionCopyWithImpl(this._value, this._then);

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
    Object? typeCollected = freezed,
    Object? patientPreparation = freezed,
    Object? timeAspect = freezed,
    Object? timeAspectElement = freezed,
    Object? collection = freezed,
    Object? typeTested = freezed,
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
              as Identifier?,
      typeCollected: freezed == typeCollected
          ? _value.typeCollected
          : typeCollected // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      patientPreparation: freezed == patientPreparation
          ? _value.patientPreparation
          : patientPreparation // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      timeAspect: freezed == timeAspect
          ? _value.timeAspect
          : timeAspect // ignore: cast_nullable_to_non_nullable
              as String?,
      timeAspectElement: freezed == timeAspectElement
          ? _value.timeAspectElement
          : timeAspectElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      collection: freezed == collection
          ? _value.collection
          : collection // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      typeTested: freezed == typeTested
          ? _value.typeTested
          : typeTested // ignore: cast_nullable_to_non_nullable
              as List<SpecimenDefinitionTypeTested>?,
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
  $CodeableConceptCopyWith<$Res>? get typeCollected {
    if (_value.typeCollected == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.typeCollected!, (value) {
      return _then(_value.copyWith(typeCollected: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SpecimenDefinitionImplCopyWith<$Res>
    implements $SpecimenDefinitionCopyWith<$Res> {
  factory _$$SpecimenDefinitionImplCopyWith(_$SpecimenDefinitionImpl value,
          $Res Function(_$SpecimenDefinitionImpl) then) =
      __$$SpecimenDefinitionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R4ResourceType.SpecimenDefinition)
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
      Identifier? identifier,
      CodeableConcept? typeCollected,
      List<CodeableConcept>? patientPreparation,
      String? timeAspect,
      @JsonKey(name: '_timeAspect') PrimitiveElement? timeAspectElement,
      List<CodeableConcept>? collection,
      List<SpecimenDefinitionTypeTested>? typeTested});

  @override
  $FhirMetaCopyWith<$Res>? get meta;
  @override
  $NarrativeCopyWith<$Res>? get text;
  @override
  $IdentifierCopyWith<$Res>? get identifier;
  @override
  $CodeableConceptCopyWith<$Res>? get typeCollected;
}

/// @nodoc
class __$$SpecimenDefinitionImplCopyWithImpl<$Res>
    extends _$SpecimenDefinitionCopyWithImpl<$Res, _$SpecimenDefinitionImpl>
    implements _$$SpecimenDefinitionImplCopyWith<$Res> {
  __$$SpecimenDefinitionImplCopyWithImpl(_$SpecimenDefinitionImpl _value,
      $Res Function(_$SpecimenDefinitionImpl) _then)
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
    Object? typeCollected = freezed,
    Object? patientPreparation = freezed,
    Object? timeAspect = freezed,
    Object? timeAspectElement = freezed,
    Object? collection = freezed,
    Object? typeTested = freezed,
  }) {
    return _then(_$SpecimenDefinitionImpl(
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
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as Identifier?,
      typeCollected: freezed == typeCollected
          ? _value.typeCollected
          : typeCollected // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      patientPreparation: freezed == patientPreparation
          ? _value._patientPreparation
          : patientPreparation // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      timeAspect: freezed == timeAspect
          ? _value.timeAspect
          : timeAspect // ignore: cast_nullable_to_non_nullable
              as String?,
      timeAspectElement: freezed == timeAspectElement
          ? _value.timeAspectElement
          : timeAspectElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      collection: freezed == collection
          ? _value._collection
          : collection // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      typeTested: freezed == typeTested
          ? _value._typeTested
          : typeTested // ignore: cast_nullable_to_non_nullable
              as List<SpecimenDefinitionTypeTested>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpecimenDefinitionImpl extends _SpecimenDefinition {
  const _$SpecimenDefinitionImpl(
      {@JsonKey(unknownEnumValue: R4ResourceType.SpecimenDefinition)
      this.resourceType = R4ResourceType.SpecimenDefinition,
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
      this.identifier,
      this.typeCollected,
      final List<CodeableConcept>? patientPreparation,
      this.timeAspect,
      @JsonKey(name: '_timeAspect') this.timeAspectElement,
      final List<CodeableConcept>? collection,
      final List<SpecimenDefinitionTypeTested>? typeTested})
      : _contained = contained,
        _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _patientPreparation = patientPreparation,
        _collection = collection,
        _typeTested = typeTested,
        super._();

  factory _$SpecimenDefinitionImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpecimenDefinitionImplFromJson(json);

  @override
  @JsonKey(unknownEnumValue: R4ResourceType.SpecimenDefinition)
  final R4ResourceType resourceType;

  /// [id] The logical id of the resource, as used in the URL for the resource.
  ///  Once assigned, this value never changes.
  @override
  final String? id;

  /// [meta] The metadata about the resource. This is content that is
  /// maintained by the infrastructure. Changes to the content might not always
  ///  be associated with version changes to the resource.
  @override
  final FhirMeta? meta;

  /// [implicitRules] A reference to a set of rules that were followed when the
  /// resource was constructed, and which must be understood when processing the
  /// content. Often, this is a reference to an implementation guide that
  ///  defines the special rules along with other profiles etc.
  @override
  final FhirUri? implicitRules;

  /// [implicitRulesElement] Extensions for implicitRules
  @override
  @JsonKey(name: '_implicitRules')
  final PrimitiveElement? implicitRulesElement;

  /// [language] The base language in which the resource is written.
  @override
  final FhirCode? language;

  /// [languageElement] Extensions for language
  @override
  @JsonKey(name: '_language')
  final PrimitiveElement? languageElement;

  /// [text] A human-readable narrative that contains a summary of the resource
  /// and can be used to represent the content of the resource to a human. The
  /// narrative need not encode all the structured data, but is required to
  /// contain sufficient detail to make it "clinically safe" for a human to just
  /// read the narrative. Resource definitions may define what content should be
  ///  represented in the narrative to ensure clinical safety.
  @override
  final Narrative? text;

  /// [contained] These resources do not have an independent existence apart
  /// from the resource that contains them - they cannot be identified
  /// independently, and nor can they have their own independent transaction
  ///  scope.
  final List<Resource>? _contained;

  /// [contained] These resources do not have an independent existence apart
  /// from the resource that contains them - they cannot be identified
  /// independently, and nor can they have their own independent transaction
  ///  scope.
  @override
  List<Resource>? get contained {
    final value = _contained;
    if (value == null) return null;
    if (_contained is EqualUnmodifiableListView) return _contained;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the resource. To make the use of
  /// extensions safe and manageable, there is a strict set of governance
  /// applied to the definition and use of extensions. Though any implementer
  /// can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the resource. To make the use of
  /// extensions safe and manageable, there is a strict set of governance
  /// applied to the definition and use of extensions. Though any implementer
  /// can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

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
  final List<FhirExtension>? _modifierExtension;

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
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [identifier] A business identifier associated with the kind of specimen.
  @override
  final Identifier? identifier;

  /// [typeCollected] The kind of material to be collected.
  @override
  final CodeableConcept? typeCollected;

  /// [patientPreparation] Preparation of the patient for specimen collection.
  final List<CodeableConcept>? _patientPreparation;

  /// [patientPreparation] Preparation of the patient for specimen collection.
  @override
  List<CodeableConcept>? get patientPreparation {
    final value = _patientPreparation;
    if (value == null) return null;
    if (_patientPreparation is EqualUnmodifiableListView)
      return _patientPreparation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [timeAspect] Time aspect of specimen collection (duration or offset).
  @override
  final String? timeAspect;

  /// [timeAspectElement] Extensions for timeAspect
  @override
  @JsonKey(name: '_timeAspect')
  final PrimitiveElement? timeAspectElement;

  /// [collection] The action to be performed for collecting the specimen.
  final List<CodeableConcept>? _collection;

  /// [collection] The action to be performed for collecting the specimen.
  @override
  List<CodeableConcept>? get collection {
    final value = _collection;
    if (value == null) return null;
    if (_collection is EqualUnmodifiableListView) return _collection;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [typeTested] Specimen conditioned in a container as expected by the
  ///  testing laboratory.
  final List<SpecimenDefinitionTypeTested>? _typeTested;

  /// [typeTested] Specimen conditioned in a container as expected by the
  ///  testing laboratory.
  @override
  List<SpecimenDefinitionTypeTested>? get typeTested {
    final value = _typeTested;
    if (value == null) return null;
    if (_typeTested is EqualUnmodifiableListView) return _typeTested;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpecimenDefinitionImpl &&
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
            (identical(other.identifier, identifier) ||
                other.identifier == identifier) &&
            (identical(other.typeCollected, typeCollected) ||
                other.typeCollected == typeCollected) &&
            const DeepCollectionEquality()
                .equals(other._patientPreparation, _patientPreparation) &&
            (identical(other.timeAspect, timeAspect) ||
                other.timeAspect == timeAspect) &&
            (identical(other.timeAspectElement, timeAspectElement) ||
                other.timeAspectElement == timeAspectElement) &&
            const DeepCollectionEquality()
                .equals(other._collection, _collection) &&
            const DeepCollectionEquality()
                .equals(other._typeTested, _typeTested));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
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
      identifier,
      typeCollected,
      const DeepCollectionEquality().hash(_patientPreparation),
      timeAspect,
      timeAspectElement,
      const DeepCollectionEquality().hash(_collection),
      const DeepCollectionEquality().hash(_typeTested));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpecimenDefinitionImplCopyWith<_$SpecimenDefinitionImpl> get copyWith =>
      __$$SpecimenDefinitionImplCopyWithImpl<_$SpecimenDefinitionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpecimenDefinitionImplToJson(
      this,
    );
  }
}

abstract class _SpecimenDefinition extends SpecimenDefinition {
  factory _SpecimenDefinition(
      {@JsonKey(unknownEnumValue: R4ResourceType.SpecimenDefinition)
      final R4ResourceType resourceType,
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
      final Identifier? identifier,
      final CodeableConcept? typeCollected,
      final List<CodeableConcept>? patientPreparation,
      final String? timeAspect,
      @JsonKey(name: '_timeAspect') final PrimitiveElement? timeAspectElement,
      final List<CodeableConcept>? collection,
      final List<SpecimenDefinitionTypeTested>?
          typeTested}) = _$SpecimenDefinitionImpl;
  const _SpecimenDefinition._() : super._();

  factory _SpecimenDefinition.fromJson(Map<String, dynamic> json) =
      _$SpecimenDefinitionImpl.fromJson;

  @override
  @JsonKey(unknownEnumValue: R4ResourceType.SpecimenDefinition)
  R4ResourceType get resourceType;
  @override

  /// [id] The logical id of the resource, as used in the URL for the resource.
  ///  Once assigned, this value never changes.
  String? get id;
  @override

  /// [meta] The metadata about the resource. This is content that is
  /// maintained by the infrastructure. Changes to the content might not always
  ///  be associated with version changes to the resource.
  FhirMeta? get meta;
  @override

  /// [implicitRules] A reference to a set of rules that were followed when the
  /// resource was constructed, and which must be understood when processing the
  /// content. Often, this is a reference to an implementation guide that
  ///  defines the special rules along with other profiles etc.
  FhirUri? get implicitRules;
  @override

  /// [implicitRulesElement] Extensions for implicitRules
  @JsonKey(name: '_implicitRules')
  PrimitiveElement? get implicitRulesElement;
  @override

  /// [language] The base language in which the resource is written.
  FhirCode? get language;
  @override

  /// [languageElement] Extensions for language
  @JsonKey(name: '_language')
  PrimitiveElement? get languageElement;
  @override

  /// [text] A human-readable narrative that contains a summary of the resource
  /// and can be used to represent the content of the resource to a human. The
  /// narrative need not encode all the structured data, but is required to
  /// contain sufficient detail to make it "clinically safe" for a human to just
  /// read the narrative. Resource definitions may define what content should be
  ///  represented in the narrative to ensure clinical safety.
  Narrative? get text;
  @override

  /// [contained] These resources do not have an independent existence apart
  /// from the resource that contains them - they cannot be identified
  /// independently, and nor can they have their own independent transaction
  ///  scope.
  List<Resource>? get contained;
  @override

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the resource. To make the use of
  /// extensions safe and manageable, there is a strict set of governance
  /// applied to the definition and use of extensions. Though any implementer
  /// can define an extension, there is a set of requirements that SHALL be met
  ///  as part of the definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

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
  List<FhirExtension>? get modifierExtension;
  @override

  /// [identifier] A business identifier associated with the kind of specimen.
  Identifier? get identifier;
  @override

  /// [typeCollected] The kind of material to be collected.
  CodeableConcept? get typeCollected;
  @override

  /// [patientPreparation] Preparation of the patient for specimen collection.
  List<CodeableConcept>? get patientPreparation;
  @override

  /// [timeAspect] Time aspect of specimen collection (duration or offset).
  String? get timeAspect;
  @override

  /// [timeAspectElement] Extensions for timeAspect
  @JsonKey(name: '_timeAspect')
  PrimitiveElement? get timeAspectElement;
  @override

  /// [collection] The action to be performed for collecting the specimen.
  List<CodeableConcept>? get collection;
  @override

  /// [typeTested] Specimen conditioned in a container as expected by the
  ///  testing laboratory.
  List<SpecimenDefinitionTypeTested>? get typeTested;
  @override
  @JsonKey(ignore: true)
  _$$SpecimenDefinitionImplCopyWith<_$SpecimenDefinitionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SpecimenDefinitionTypeTested _$SpecimenDefinitionTypeTestedFromJson(
    Map<String, dynamic> json) {
  return _SpecimenDefinitionTypeTested.fromJson(json);
}

/// @nodoc
mixin _$SpecimenDefinitionTypeTested {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

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
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [isDerived] Primary of secondary specimen.
  FhirBoolean? get isDerived => throw _privateConstructorUsedError;

  /// [isDerivedElement] Extensions for isDerived
  @JsonKey(name: '_isDerived')
  PrimitiveElement? get isDerivedElement => throw _privateConstructorUsedError;

  /// [type] The kind of specimen conditioned for testing expected by lab.
  CodeableConcept? get type => throw _privateConstructorUsedError;

  /// [preference] The preference for this type of conditioned specimen.
  FhirCode? get preference => throw _privateConstructorUsedError;

  /// [preferenceElement] Extensions for preference
  @JsonKey(name: '_preference')
  PrimitiveElement? get preferenceElement => throw _privateConstructorUsedError;

  /// [container] The specimen's container.
  SpecimenDefinitionContainer? get container =>
      throw _privateConstructorUsedError;

  /// [requirement] Requirements for delivery and special handling of this kind
  ///  of conditioned specimen.
  String? get requirement => throw _privateConstructorUsedError;

  /// [requirementElement] Extensions for requirement
  @JsonKey(name: '_requirement')
  PrimitiveElement? get requirementElement =>
      throw _privateConstructorUsedError;

  /// [retentionTime] The usual time that a specimen of this kind is retained
  /// after the ordered tests are completed, for the purpose of additional
  ///  testing.
  FhirDuration? get retentionTime => throw _privateConstructorUsedError;

  /// [rejectionCriterion] Criterion for rejection of the specimen in its
  ///  container by the laboratory.
  List<CodeableConcept>? get rejectionCriterion =>
      throw _privateConstructorUsedError;

  /// [handling] Set of instructions for preservation/transport of the specimen
  ///  at a defined temperature interval, prior the testing process.
  List<SpecimenDefinitionHandling>? get handling =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpecimenDefinitionTypeTestedCopyWith<SpecimenDefinitionTypeTested>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpecimenDefinitionTypeTestedCopyWith<$Res> {
  factory $SpecimenDefinitionTypeTestedCopyWith(
          SpecimenDefinitionTypeTested value,
          $Res Function(SpecimenDefinitionTypeTested) then) =
      _$SpecimenDefinitionTypeTestedCopyWithImpl<$Res,
          SpecimenDefinitionTypeTested>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirBoolean? isDerived,
      @JsonKey(name: '_isDerived') PrimitiveElement? isDerivedElement,
      CodeableConcept? type,
      FhirCode? preference,
      @JsonKey(name: '_preference') PrimitiveElement? preferenceElement,
      SpecimenDefinitionContainer? container,
      String? requirement,
      @JsonKey(name: '_requirement') PrimitiveElement? requirementElement,
      FhirDuration? retentionTime,
      List<CodeableConcept>? rejectionCriterion,
      List<SpecimenDefinitionHandling>? handling});

  $CodeableConceptCopyWith<$Res>? get type;
  $SpecimenDefinitionContainerCopyWith<$Res>? get container;
  $FhirDurationCopyWith<$Res>? get retentionTime;
}

/// @nodoc
class _$SpecimenDefinitionTypeTestedCopyWithImpl<$Res,
        $Val extends SpecimenDefinitionTypeTested>
    implements $SpecimenDefinitionTypeTestedCopyWith<$Res> {
  _$SpecimenDefinitionTypeTestedCopyWithImpl(this._value, this._then);

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
    Object? isDerived = freezed,
    Object? isDerivedElement = freezed,
    Object? type = freezed,
    Object? preference = freezed,
    Object? preferenceElement = freezed,
    Object? container = freezed,
    Object? requirement = freezed,
    Object? requirementElement = freezed,
    Object? retentionTime = freezed,
    Object? rejectionCriterion = freezed,
    Object? handling = freezed,
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
      isDerived: freezed == isDerived
          ? _value.isDerived
          : isDerived // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      isDerivedElement: freezed == isDerivedElement
          ? _value.isDerivedElement
          : isDerivedElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      preference: freezed == preference
          ? _value.preference
          : preference // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      preferenceElement: freezed == preferenceElement
          ? _value.preferenceElement
          : preferenceElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      container: freezed == container
          ? _value.container
          : container // ignore: cast_nullable_to_non_nullable
              as SpecimenDefinitionContainer?,
      requirement: freezed == requirement
          ? _value.requirement
          : requirement // ignore: cast_nullable_to_non_nullable
              as String?,
      requirementElement: freezed == requirementElement
          ? _value.requirementElement
          : requirementElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      retentionTime: freezed == retentionTime
          ? _value.retentionTime
          : retentionTime // ignore: cast_nullable_to_non_nullable
              as FhirDuration?,
      rejectionCriterion: freezed == rejectionCriterion
          ? _value.rejectionCriterion
          : rejectionCriterion // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      handling: freezed == handling
          ? _value.handling
          : handling // ignore: cast_nullable_to_non_nullable
              as List<SpecimenDefinitionHandling>?,
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
  $SpecimenDefinitionContainerCopyWith<$Res>? get container {
    if (_value.container == null) {
      return null;
    }

    return $SpecimenDefinitionContainerCopyWith<$Res>(_value.container!,
        (value) {
      return _then(_value.copyWith(container: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FhirDurationCopyWith<$Res>? get retentionTime {
    if (_value.retentionTime == null) {
      return null;
    }

    return $FhirDurationCopyWith<$Res>(_value.retentionTime!, (value) {
      return _then(_value.copyWith(retentionTime: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SpecimenDefinitionTypeTestedImplCopyWith<$Res>
    implements $SpecimenDefinitionTypeTestedCopyWith<$Res> {
  factory _$$SpecimenDefinitionTypeTestedImplCopyWith(
          _$SpecimenDefinitionTypeTestedImpl value,
          $Res Function(_$SpecimenDefinitionTypeTestedImpl) then) =
      __$$SpecimenDefinitionTypeTestedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirBoolean? isDerived,
      @JsonKey(name: '_isDerived') PrimitiveElement? isDerivedElement,
      CodeableConcept? type,
      FhirCode? preference,
      @JsonKey(name: '_preference') PrimitiveElement? preferenceElement,
      SpecimenDefinitionContainer? container,
      String? requirement,
      @JsonKey(name: '_requirement') PrimitiveElement? requirementElement,
      FhirDuration? retentionTime,
      List<CodeableConcept>? rejectionCriterion,
      List<SpecimenDefinitionHandling>? handling});

  @override
  $CodeableConceptCopyWith<$Res>? get type;
  @override
  $SpecimenDefinitionContainerCopyWith<$Res>? get container;
  @override
  $FhirDurationCopyWith<$Res>? get retentionTime;
}

/// @nodoc
class __$$SpecimenDefinitionTypeTestedImplCopyWithImpl<$Res>
    extends _$SpecimenDefinitionTypeTestedCopyWithImpl<$Res,
        _$SpecimenDefinitionTypeTestedImpl>
    implements _$$SpecimenDefinitionTypeTestedImplCopyWith<$Res> {
  __$$SpecimenDefinitionTypeTestedImplCopyWithImpl(
      _$SpecimenDefinitionTypeTestedImpl _value,
      $Res Function(_$SpecimenDefinitionTypeTestedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? isDerived = freezed,
    Object? isDerivedElement = freezed,
    Object? type = freezed,
    Object? preference = freezed,
    Object? preferenceElement = freezed,
    Object? container = freezed,
    Object? requirement = freezed,
    Object? requirementElement = freezed,
    Object? retentionTime = freezed,
    Object? rejectionCriterion = freezed,
    Object? handling = freezed,
  }) {
    return _then(_$SpecimenDefinitionTypeTestedImpl(
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
      isDerived: freezed == isDerived
          ? _value.isDerived
          : isDerived // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      isDerivedElement: freezed == isDerivedElement
          ? _value.isDerivedElement
          : isDerivedElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      preference: freezed == preference
          ? _value.preference
          : preference // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      preferenceElement: freezed == preferenceElement
          ? _value.preferenceElement
          : preferenceElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      container: freezed == container
          ? _value.container
          : container // ignore: cast_nullable_to_non_nullable
              as SpecimenDefinitionContainer?,
      requirement: freezed == requirement
          ? _value.requirement
          : requirement // ignore: cast_nullable_to_non_nullable
              as String?,
      requirementElement: freezed == requirementElement
          ? _value.requirementElement
          : requirementElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      retentionTime: freezed == retentionTime
          ? _value.retentionTime
          : retentionTime // ignore: cast_nullable_to_non_nullable
              as FhirDuration?,
      rejectionCriterion: freezed == rejectionCriterion
          ? _value._rejectionCriterion
          : rejectionCriterion // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      handling: freezed == handling
          ? _value._handling
          : handling // ignore: cast_nullable_to_non_nullable
              as List<SpecimenDefinitionHandling>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpecimenDefinitionTypeTestedImpl extends _SpecimenDefinitionTypeTested {
  const _$SpecimenDefinitionTypeTestedImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.isDerived,
      @JsonKey(name: '_isDerived') this.isDerivedElement,
      this.type,
      this.preference,
      @JsonKey(name: '_preference') this.preferenceElement,
      this.container,
      this.requirement,
      @JsonKey(name: '_requirement') this.requirementElement,
      this.retentionTime,
      final List<CodeableConcept>? rejectionCriterion,
      final List<SpecimenDefinitionHandling>? handling})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _rejectionCriterion = rejectionCriterion,
        _handling = handling,
        super._();

  factory _$SpecimenDefinitionTypeTestedImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SpecimenDefinitionTypeTestedImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

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
  final List<FhirExtension>? _modifierExtension;

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
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [isDerived] Primary of secondary specimen.
  @override
  final FhirBoolean? isDerived;

  /// [isDerivedElement] Extensions for isDerived
  @override
  @JsonKey(name: '_isDerived')
  final PrimitiveElement? isDerivedElement;

  /// [type] The kind of specimen conditioned for testing expected by lab.
  @override
  final CodeableConcept? type;

  /// [preference] The preference for this type of conditioned specimen.
  @override
  final FhirCode? preference;

  /// [preferenceElement] Extensions for preference
  @override
  @JsonKey(name: '_preference')
  final PrimitiveElement? preferenceElement;

  /// [container] The specimen's container.
  @override
  final SpecimenDefinitionContainer? container;

  /// [requirement] Requirements for delivery and special handling of this kind
  ///  of conditioned specimen.
  @override
  final String? requirement;

  /// [requirementElement] Extensions for requirement
  @override
  @JsonKey(name: '_requirement')
  final PrimitiveElement? requirementElement;

  /// [retentionTime] The usual time that a specimen of this kind is retained
  /// after the ordered tests are completed, for the purpose of additional
  ///  testing.
  @override
  final FhirDuration? retentionTime;

  /// [rejectionCriterion] Criterion for rejection of the specimen in its
  ///  container by the laboratory.
  final List<CodeableConcept>? _rejectionCriterion;

  /// [rejectionCriterion] Criterion for rejection of the specimen in its
  ///  container by the laboratory.
  @override
  List<CodeableConcept>? get rejectionCriterion {
    final value = _rejectionCriterion;
    if (value == null) return null;
    if (_rejectionCriterion is EqualUnmodifiableListView)
      return _rejectionCriterion;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [handling] Set of instructions for preservation/transport of the specimen
  ///  at a defined temperature interval, prior the testing process.
  final List<SpecimenDefinitionHandling>? _handling;

  /// [handling] Set of instructions for preservation/transport of the specimen
  ///  at a defined temperature interval, prior the testing process.
  @override
  List<SpecimenDefinitionHandling>? get handling {
    final value = _handling;
    if (value == null) return null;
    if (_handling is EqualUnmodifiableListView) return _handling;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpecimenDefinitionTypeTestedImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.isDerived, isDerived) ||
                other.isDerived == isDerived) &&
            (identical(other.isDerivedElement, isDerivedElement) ||
                other.isDerivedElement == isDerivedElement) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.preference, preference) ||
                other.preference == preference) &&
            (identical(other.preferenceElement, preferenceElement) ||
                other.preferenceElement == preferenceElement) &&
            (identical(other.container, container) ||
                other.container == container) &&
            (identical(other.requirement, requirement) ||
                other.requirement == requirement) &&
            (identical(other.requirementElement, requirementElement) ||
                other.requirementElement == requirementElement) &&
            (identical(other.retentionTime, retentionTime) ||
                other.retentionTime == retentionTime) &&
            const DeepCollectionEquality()
                .equals(other._rejectionCriterion, _rejectionCriterion) &&
            const DeepCollectionEquality().equals(other._handling, _handling));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      isDerived,
      isDerivedElement,
      type,
      preference,
      preferenceElement,
      container,
      requirement,
      requirementElement,
      retentionTime,
      const DeepCollectionEquality().hash(_rejectionCriterion),
      const DeepCollectionEquality().hash(_handling));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpecimenDefinitionTypeTestedImplCopyWith<
          _$SpecimenDefinitionTypeTestedImpl>
      get copyWith => __$$SpecimenDefinitionTypeTestedImplCopyWithImpl<
          _$SpecimenDefinitionTypeTestedImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpecimenDefinitionTypeTestedImplToJson(
      this,
    );
  }
}

abstract class _SpecimenDefinitionTypeTested
    extends SpecimenDefinitionTypeTested {
  factory _SpecimenDefinitionTypeTested(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final FhirBoolean? isDerived,
      @JsonKey(name: '_isDerived') final PrimitiveElement? isDerivedElement,
      final CodeableConcept? type,
      final FhirCode? preference,
      @JsonKey(name: '_preference') final PrimitiveElement? preferenceElement,
      final SpecimenDefinitionContainer? container,
      final String? requirement,
      @JsonKey(name: '_requirement') final PrimitiveElement? requirementElement,
      final FhirDuration? retentionTime,
      final List<CodeableConcept>? rejectionCriterion,
      final List<SpecimenDefinitionHandling>?
          handling}) = _$SpecimenDefinitionTypeTestedImpl;
  const _SpecimenDefinitionTypeTested._() : super._();

  factory _SpecimenDefinitionTypeTested.fromJson(Map<String, dynamic> json) =
      _$SpecimenDefinitionTypeTestedImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

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
  List<FhirExtension>? get modifierExtension;
  @override

  /// [isDerived] Primary of secondary specimen.
  FhirBoolean? get isDerived;
  @override

  /// [isDerivedElement] Extensions for isDerived
  @JsonKey(name: '_isDerived')
  PrimitiveElement? get isDerivedElement;
  @override

  /// [type] The kind of specimen conditioned for testing expected by lab.
  CodeableConcept? get type;
  @override

  /// [preference] The preference for this type of conditioned specimen.
  FhirCode? get preference;
  @override

  /// [preferenceElement] Extensions for preference
  @JsonKey(name: '_preference')
  PrimitiveElement? get preferenceElement;
  @override

  /// [container] The specimen's container.
  SpecimenDefinitionContainer? get container;
  @override

  /// [requirement] Requirements for delivery and special handling of this kind
  ///  of conditioned specimen.
  String? get requirement;
  @override

  /// [requirementElement] Extensions for requirement
  @JsonKey(name: '_requirement')
  PrimitiveElement? get requirementElement;
  @override

  /// [retentionTime] The usual time that a specimen of this kind is retained
  /// after the ordered tests are completed, for the purpose of additional
  ///  testing.
  FhirDuration? get retentionTime;
  @override

  /// [rejectionCriterion] Criterion for rejection of the specimen in its
  ///  container by the laboratory.
  List<CodeableConcept>? get rejectionCriterion;
  @override

  /// [handling] Set of instructions for preservation/transport of the specimen
  ///  at a defined temperature interval, prior the testing process.
  List<SpecimenDefinitionHandling>? get handling;
  @override
  @JsonKey(ignore: true)
  _$$SpecimenDefinitionTypeTestedImplCopyWith<
          _$SpecimenDefinitionTypeTestedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SpecimenDefinitionContainer _$SpecimenDefinitionContainerFromJson(
    Map<String, dynamic> json) {
  return _SpecimenDefinitionContainer.fromJson(json);
}

/// @nodoc
mixin _$SpecimenDefinitionContainer {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

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
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [material] The type of material of the container.
  CodeableConcept? get material => throw _privateConstructorUsedError;

  /// [type] The type of container used to contain this kind of specimen.
  CodeableConcept? get type => throw _privateConstructorUsedError;

  /// [cap] Color of container cap.
  CodeableConcept? get cap => throw _privateConstructorUsedError;

  /// [description] The textual description of the kind of container.
  String? get description => throw _privateConstructorUsedError;

  /// [descriptionElement] Extensions for description
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement =>
      throw _privateConstructorUsedError;

  /// [capacity] The capacity (volume or other measure) of this kind of
  ///  container.
  Quantity? get capacity => throw _privateConstructorUsedError;

  /// [minimumVolumeQuantity] The minimum volume to be conditioned in the
  ///  container.
  Quantity? get minimumVolumeQuantity => throw _privateConstructorUsedError;

  /// [minimumVolumeString] The minimum volume to be conditioned in the
  ///  container.
  String? get minimumVolumeString => throw _privateConstructorUsedError;

  /// [minimumVolumeStringElement] Extensions for minimumVolumeString
  @JsonKey(name: '_minimumVolumeString')
  PrimitiveElement? get minimumVolumeStringElement =>
      throw _privateConstructorUsedError;

  /// [additive] Substance introduced in the kind of container to preserve,
  ///  maintain or enhance the specimen. Examples: Formalin, Citrate, EDTA.
  List<SpecimenDefinitionAdditive>? get additive =>
      throw _privateConstructorUsedError;

  /// [preparation] Special processing that should be applied to the container
  ///  for this kind of specimen.
  String? get preparation => throw _privateConstructorUsedError;

  /// [preparationElement] Extensions for preparation
  @JsonKey(name: '_preparation')
  PrimitiveElement? get preparationElement =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpecimenDefinitionContainerCopyWith<SpecimenDefinitionContainer>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpecimenDefinitionContainerCopyWith<$Res> {
  factory $SpecimenDefinitionContainerCopyWith(
          SpecimenDefinitionContainer value,
          $Res Function(SpecimenDefinitionContainer) then) =
      _$SpecimenDefinitionContainerCopyWithImpl<$Res,
          SpecimenDefinitionContainer>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? material,
      CodeableConcept? type,
      CodeableConcept? cap,
      String? description,
      @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
      Quantity? capacity,
      Quantity? minimumVolumeQuantity,
      String? minimumVolumeString,
      @JsonKey(name: '_minimumVolumeString')
      PrimitiveElement? minimumVolumeStringElement,
      List<SpecimenDefinitionAdditive>? additive,
      String? preparation,
      @JsonKey(name: '_preparation') PrimitiveElement? preparationElement});

  $CodeableConceptCopyWith<$Res>? get material;
  $CodeableConceptCopyWith<$Res>? get type;
  $CodeableConceptCopyWith<$Res>? get cap;
  $QuantityCopyWith<$Res>? get capacity;
  $QuantityCopyWith<$Res>? get minimumVolumeQuantity;
}

/// @nodoc
class _$SpecimenDefinitionContainerCopyWithImpl<$Res,
        $Val extends SpecimenDefinitionContainer>
    implements $SpecimenDefinitionContainerCopyWith<$Res> {
  _$SpecimenDefinitionContainerCopyWithImpl(this._value, this._then);

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
    Object? material = freezed,
    Object? type = freezed,
    Object? cap = freezed,
    Object? description = freezed,
    Object? descriptionElement = freezed,
    Object? capacity = freezed,
    Object? minimumVolumeQuantity = freezed,
    Object? minimumVolumeString = freezed,
    Object? minimumVolumeStringElement = freezed,
    Object? additive = freezed,
    Object? preparation = freezed,
    Object? preparationElement = freezed,
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
      material: freezed == material
          ? _value.material
          : material // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      cap: freezed == cap
          ? _value.cap
          : cap // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptionElement: freezed == descriptionElement
          ? _value.descriptionElement
          : descriptionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      capacity: freezed == capacity
          ? _value.capacity
          : capacity // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      minimumVolumeQuantity: freezed == minimumVolumeQuantity
          ? _value.minimumVolumeQuantity
          : minimumVolumeQuantity // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      minimumVolumeString: freezed == minimumVolumeString
          ? _value.minimumVolumeString
          : minimumVolumeString // ignore: cast_nullable_to_non_nullable
              as String?,
      minimumVolumeStringElement: freezed == minimumVolumeStringElement
          ? _value.minimumVolumeStringElement
          : minimumVolumeStringElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      additive: freezed == additive
          ? _value.additive
          : additive // ignore: cast_nullable_to_non_nullable
              as List<SpecimenDefinitionAdditive>?,
      preparation: freezed == preparation
          ? _value.preparation
          : preparation // ignore: cast_nullable_to_non_nullable
              as String?,
      preparationElement: freezed == preparationElement
          ? _value.preparationElement
          : preparationElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get material {
    if (_value.material == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.material!, (value) {
      return _then(_value.copyWith(material: value) as $Val);
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
  $CodeableConceptCopyWith<$Res>? get cap {
    if (_value.cap == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.cap!, (value) {
      return _then(_value.copyWith(cap: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $QuantityCopyWith<$Res>? get capacity {
    if (_value.capacity == null) {
      return null;
    }

    return $QuantityCopyWith<$Res>(_value.capacity!, (value) {
      return _then(_value.copyWith(capacity: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $QuantityCopyWith<$Res>? get minimumVolumeQuantity {
    if (_value.minimumVolumeQuantity == null) {
      return null;
    }

    return $QuantityCopyWith<$Res>(_value.minimumVolumeQuantity!, (value) {
      return _then(_value.copyWith(minimumVolumeQuantity: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SpecimenDefinitionContainerImplCopyWith<$Res>
    implements $SpecimenDefinitionContainerCopyWith<$Res> {
  factory _$$SpecimenDefinitionContainerImplCopyWith(
          _$SpecimenDefinitionContainerImpl value,
          $Res Function(_$SpecimenDefinitionContainerImpl) then) =
      __$$SpecimenDefinitionContainerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? material,
      CodeableConcept? type,
      CodeableConcept? cap,
      String? description,
      @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
      Quantity? capacity,
      Quantity? minimumVolumeQuantity,
      String? minimumVolumeString,
      @JsonKey(name: '_minimumVolumeString')
      PrimitiveElement? minimumVolumeStringElement,
      List<SpecimenDefinitionAdditive>? additive,
      String? preparation,
      @JsonKey(name: '_preparation') PrimitiveElement? preparationElement});

  @override
  $CodeableConceptCopyWith<$Res>? get material;
  @override
  $CodeableConceptCopyWith<$Res>? get type;
  @override
  $CodeableConceptCopyWith<$Res>? get cap;
  @override
  $QuantityCopyWith<$Res>? get capacity;
  @override
  $QuantityCopyWith<$Res>? get minimumVolumeQuantity;
}

/// @nodoc
class __$$SpecimenDefinitionContainerImplCopyWithImpl<$Res>
    extends _$SpecimenDefinitionContainerCopyWithImpl<$Res,
        _$SpecimenDefinitionContainerImpl>
    implements _$$SpecimenDefinitionContainerImplCopyWith<$Res> {
  __$$SpecimenDefinitionContainerImplCopyWithImpl(
      _$SpecimenDefinitionContainerImpl _value,
      $Res Function(_$SpecimenDefinitionContainerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? material = freezed,
    Object? type = freezed,
    Object? cap = freezed,
    Object? description = freezed,
    Object? descriptionElement = freezed,
    Object? capacity = freezed,
    Object? minimumVolumeQuantity = freezed,
    Object? minimumVolumeString = freezed,
    Object? minimumVolumeStringElement = freezed,
    Object? additive = freezed,
    Object? preparation = freezed,
    Object? preparationElement = freezed,
  }) {
    return _then(_$SpecimenDefinitionContainerImpl(
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
      material: freezed == material
          ? _value.material
          : material // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      cap: freezed == cap
          ? _value.cap
          : cap // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptionElement: freezed == descriptionElement
          ? _value.descriptionElement
          : descriptionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      capacity: freezed == capacity
          ? _value.capacity
          : capacity // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      minimumVolumeQuantity: freezed == minimumVolumeQuantity
          ? _value.minimumVolumeQuantity
          : minimumVolumeQuantity // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      minimumVolumeString: freezed == minimumVolumeString
          ? _value.minimumVolumeString
          : minimumVolumeString // ignore: cast_nullable_to_non_nullable
              as String?,
      minimumVolumeStringElement: freezed == minimumVolumeStringElement
          ? _value.minimumVolumeStringElement
          : minimumVolumeStringElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      additive: freezed == additive
          ? _value._additive
          : additive // ignore: cast_nullable_to_non_nullable
              as List<SpecimenDefinitionAdditive>?,
      preparation: freezed == preparation
          ? _value.preparation
          : preparation // ignore: cast_nullable_to_non_nullable
              as String?,
      preparationElement: freezed == preparationElement
          ? _value.preparationElement
          : preparationElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpecimenDefinitionContainerImpl extends _SpecimenDefinitionContainer {
  const _$SpecimenDefinitionContainerImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.material,
      this.type,
      this.cap,
      this.description,
      @JsonKey(name: '_description') this.descriptionElement,
      this.capacity,
      this.minimumVolumeQuantity,
      this.minimumVolumeString,
      @JsonKey(name: '_minimumVolumeString') this.minimumVolumeStringElement,
      final List<SpecimenDefinitionAdditive>? additive,
      this.preparation,
      @JsonKey(name: '_preparation') this.preparationElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _additive = additive,
        super._();

  factory _$SpecimenDefinitionContainerImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SpecimenDefinitionContainerImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

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
  final List<FhirExtension>? _modifierExtension;

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
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [material] The type of material of the container.
  @override
  final CodeableConcept? material;

  /// [type] The type of container used to contain this kind of specimen.
  @override
  final CodeableConcept? type;

  /// [cap] Color of container cap.
  @override
  final CodeableConcept? cap;

  /// [description] The textual description of the kind of container.
  @override
  final String? description;

  /// [descriptionElement] Extensions for description
  @override
  @JsonKey(name: '_description')
  final PrimitiveElement? descriptionElement;

  /// [capacity] The capacity (volume or other measure) of this kind of
  ///  container.
  @override
  final Quantity? capacity;

  /// [minimumVolumeQuantity] The minimum volume to be conditioned in the
  ///  container.
  @override
  final Quantity? minimumVolumeQuantity;

  /// [minimumVolumeString] The minimum volume to be conditioned in the
  ///  container.
  @override
  final String? minimumVolumeString;

  /// [minimumVolumeStringElement] Extensions for minimumVolumeString
  @override
  @JsonKey(name: '_minimumVolumeString')
  final PrimitiveElement? minimumVolumeStringElement;

  /// [additive] Substance introduced in the kind of container to preserve,
  ///  maintain or enhance the specimen. Examples: Formalin, Citrate, EDTA.
  final List<SpecimenDefinitionAdditive>? _additive;

  /// [additive] Substance introduced in the kind of container to preserve,
  ///  maintain or enhance the specimen. Examples: Formalin, Citrate, EDTA.
  @override
  List<SpecimenDefinitionAdditive>? get additive {
    final value = _additive;
    if (value == null) return null;
    if (_additive is EqualUnmodifiableListView) return _additive;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [preparation] Special processing that should be applied to the container
  ///  for this kind of specimen.
  @override
  final String? preparation;

  /// [preparationElement] Extensions for preparation
  @override
  @JsonKey(name: '_preparation')
  final PrimitiveElement? preparationElement;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpecimenDefinitionContainerImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.material, material) ||
                other.material == material) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.cap, cap) || other.cap == cap) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.descriptionElement, descriptionElement) ||
                other.descriptionElement == descriptionElement) &&
            (identical(other.capacity, capacity) ||
                other.capacity == capacity) &&
            (identical(other.minimumVolumeQuantity, minimumVolumeQuantity) ||
                other.minimumVolumeQuantity == minimumVolumeQuantity) &&
            (identical(other.minimumVolumeString, minimumVolumeString) ||
                other.minimumVolumeString == minimumVolumeString) &&
            (identical(other.minimumVolumeStringElement,
                    minimumVolumeStringElement) ||
                other.minimumVolumeStringElement ==
                    minimumVolumeStringElement) &&
            const DeepCollectionEquality().equals(other._additive, _additive) &&
            (identical(other.preparation, preparation) ||
                other.preparation == preparation) &&
            (identical(other.preparationElement, preparationElement) ||
                other.preparationElement == preparationElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      material,
      type,
      cap,
      description,
      descriptionElement,
      capacity,
      minimumVolumeQuantity,
      minimumVolumeString,
      minimumVolumeStringElement,
      const DeepCollectionEquality().hash(_additive),
      preparation,
      preparationElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpecimenDefinitionContainerImplCopyWith<_$SpecimenDefinitionContainerImpl>
      get copyWith => __$$SpecimenDefinitionContainerImplCopyWithImpl<
          _$SpecimenDefinitionContainerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpecimenDefinitionContainerImplToJson(
      this,
    );
  }
}

abstract class _SpecimenDefinitionContainer
    extends SpecimenDefinitionContainer {
  factory _SpecimenDefinitionContainer(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final CodeableConcept? material,
      final CodeableConcept? type,
      final CodeableConcept? cap,
      final String? description,
      @JsonKey(name: '_description') final PrimitiveElement? descriptionElement,
      final Quantity? capacity,
      final Quantity? minimumVolumeQuantity,
      final String? minimumVolumeString,
      @JsonKey(name: '_minimumVolumeString')
      final PrimitiveElement? minimumVolumeStringElement,
      final List<SpecimenDefinitionAdditive>? additive,
      final String? preparation,
      @JsonKey(name: '_preparation')
      final PrimitiveElement?
          preparationElement}) = _$SpecimenDefinitionContainerImpl;
  const _SpecimenDefinitionContainer._() : super._();

  factory _SpecimenDefinitionContainer.fromJson(Map<String, dynamic> json) =
      _$SpecimenDefinitionContainerImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

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
  List<FhirExtension>? get modifierExtension;
  @override

  /// [material] The type of material of the container.
  CodeableConcept? get material;
  @override

  /// [type] The type of container used to contain this kind of specimen.
  CodeableConcept? get type;
  @override

  /// [cap] Color of container cap.
  CodeableConcept? get cap;
  @override

  /// [description] The textual description of the kind of container.
  String? get description;
  @override

  /// [descriptionElement] Extensions for description
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement;
  @override

  /// [capacity] The capacity (volume or other measure) of this kind of
  ///  container.
  Quantity? get capacity;
  @override

  /// [minimumVolumeQuantity] The minimum volume to be conditioned in the
  ///  container.
  Quantity? get minimumVolumeQuantity;
  @override

  /// [minimumVolumeString] The minimum volume to be conditioned in the
  ///  container.
  String? get minimumVolumeString;
  @override

  /// [minimumVolumeStringElement] Extensions for minimumVolumeString
  @JsonKey(name: '_minimumVolumeString')
  PrimitiveElement? get minimumVolumeStringElement;
  @override

  /// [additive] Substance introduced in the kind of container to preserve,
  ///  maintain or enhance the specimen. Examples: Formalin, Citrate, EDTA.
  List<SpecimenDefinitionAdditive>? get additive;
  @override

  /// [preparation] Special processing that should be applied to the container
  ///  for this kind of specimen.
  String? get preparation;
  @override

  /// [preparationElement] Extensions for preparation
  @JsonKey(name: '_preparation')
  PrimitiveElement? get preparationElement;
  @override
  @JsonKey(ignore: true)
  _$$SpecimenDefinitionContainerImplCopyWith<_$SpecimenDefinitionContainerImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SpecimenDefinitionAdditive _$SpecimenDefinitionAdditiveFromJson(
    Map<String, dynamic> json) {
  return _SpecimenDefinitionAdditive.fromJson(json);
}

/// @nodoc
mixin _$SpecimenDefinitionAdditive {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

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
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [additiveCodeableConcept] Substance introduced in the kind of container
  /// to preserve, maintain or enhance the specimen. Examples: Formalin,
  ///  Citrate, EDTA.
  CodeableConcept? get additiveCodeableConcept =>
      throw _privateConstructorUsedError;

  /// [additiveReference] Substance introduced in the kind of container to
  /// preserve, maintain or enhance the specimen. Examples: Formalin, Citrate,
  ///  EDTA.
  Reference? get additiveReference => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpecimenDefinitionAdditiveCopyWith<SpecimenDefinitionAdditive>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpecimenDefinitionAdditiveCopyWith<$Res> {
  factory $SpecimenDefinitionAdditiveCopyWith(SpecimenDefinitionAdditive value,
          $Res Function(SpecimenDefinitionAdditive) then) =
      _$SpecimenDefinitionAdditiveCopyWithImpl<$Res,
          SpecimenDefinitionAdditive>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? additiveCodeableConcept,
      Reference? additiveReference});

  $CodeableConceptCopyWith<$Res>? get additiveCodeableConcept;
  $ReferenceCopyWith<$Res>? get additiveReference;
}

/// @nodoc
class _$SpecimenDefinitionAdditiveCopyWithImpl<$Res,
        $Val extends SpecimenDefinitionAdditive>
    implements $SpecimenDefinitionAdditiveCopyWith<$Res> {
  _$SpecimenDefinitionAdditiveCopyWithImpl(this._value, this._then);

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
    Object? additiveCodeableConcept = freezed,
    Object? additiveReference = freezed,
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
      additiveCodeableConcept: freezed == additiveCodeableConcept
          ? _value.additiveCodeableConcept
          : additiveCodeableConcept // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      additiveReference: freezed == additiveReference
          ? _value.additiveReference
          : additiveReference // ignore: cast_nullable_to_non_nullable
              as Reference?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get additiveCodeableConcept {
    if (_value.additiveCodeableConcept == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.additiveCodeableConcept!,
        (value) {
      return _then(_value.copyWith(additiveCodeableConcept: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get additiveReference {
    if (_value.additiveReference == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.additiveReference!, (value) {
      return _then(_value.copyWith(additiveReference: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SpecimenDefinitionAdditiveImplCopyWith<$Res>
    implements $SpecimenDefinitionAdditiveCopyWith<$Res> {
  factory _$$SpecimenDefinitionAdditiveImplCopyWith(
          _$SpecimenDefinitionAdditiveImpl value,
          $Res Function(_$SpecimenDefinitionAdditiveImpl) then) =
      __$$SpecimenDefinitionAdditiveImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? additiveCodeableConcept,
      Reference? additiveReference});

  @override
  $CodeableConceptCopyWith<$Res>? get additiveCodeableConcept;
  @override
  $ReferenceCopyWith<$Res>? get additiveReference;
}

/// @nodoc
class __$$SpecimenDefinitionAdditiveImplCopyWithImpl<$Res>
    extends _$SpecimenDefinitionAdditiveCopyWithImpl<$Res,
        _$SpecimenDefinitionAdditiveImpl>
    implements _$$SpecimenDefinitionAdditiveImplCopyWith<$Res> {
  __$$SpecimenDefinitionAdditiveImplCopyWithImpl(
      _$SpecimenDefinitionAdditiveImpl _value,
      $Res Function(_$SpecimenDefinitionAdditiveImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? additiveCodeableConcept = freezed,
    Object? additiveReference = freezed,
  }) {
    return _then(_$SpecimenDefinitionAdditiveImpl(
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
      additiveCodeableConcept: freezed == additiveCodeableConcept
          ? _value.additiveCodeableConcept
          : additiveCodeableConcept // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      additiveReference: freezed == additiveReference
          ? _value.additiveReference
          : additiveReference // ignore: cast_nullable_to_non_nullable
              as Reference?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpecimenDefinitionAdditiveImpl extends _SpecimenDefinitionAdditive {
  const _$SpecimenDefinitionAdditiveImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.additiveCodeableConcept,
      this.additiveReference})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$SpecimenDefinitionAdditiveImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SpecimenDefinitionAdditiveImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

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
  final List<FhirExtension>? _modifierExtension;

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
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [additiveCodeableConcept] Substance introduced in the kind of container
  /// to preserve, maintain or enhance the specimen. Examples: Formalin,
  ///  Citrate, EDTA.
  @override
  final CodeableConcept? additiveCodeableConcept;

  /// [additiveReference] Substance introduced in the kind of container to
  /// preserve, maintain or enhance the specimen. Examples: Formalin, Citrate,
  ///  EDTA.
  @override
  final Reference? additiveReference;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpecimenDefinitionAdditiveImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(
                    other.additiveCodeableConcept, additiveCodeableConcept) ||
                other.additiveCodeableConcept == additiveCodeableConcept) &&
            (identical(other.additiveReference, additiveReference) ||
                other.additiveReference == additiveReference));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      additiveCodeableConcept,
      additiveReference);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpecimenDefinitionAdditiveImplCopyWith<_$SpecimenDefinitionAdditiveImpl>
      get copyWith => __$$SpecimenDefinitionAdditiveImplCopyWithImpl<
          _$SpecimenDefinitionAdditiveImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpecimenDefinitionAdditiveImplToJson(
      this,
    );
  }
}

abstract class _SpecimenDefinitionAdditive extends SpecimenDefinitionAdditive {
  factory _SpecimenDefinitionAdditive(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final CodeableConcept? additiveCodeableConcept,
      final Reference? additiveReference}) = _$SpecimenDefinitionAdditiveImpl;
  const _SpecimenDefinitionAdditive._() : super._();

  factory _SpecimenDefinitionAdditive.fromJson(Map<String, dynamic> json) =
      _$SpecimenDefinitionAdditiveImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

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
  List<FhirExtension>? get modifierExtension;
  @override

  /// [additiveCodeableConcept] Substance introduced in the kind of container
  /// to preserve, maintain or enhance the specimen. Examples: Formalin,
  ///  Citrate, EDTA.
  CodeableConcept? get additiveCodeableConcept;
  @override

  /// [additiveReference] Substance introduced in the kind of container to
  /// preserve, maintain or enhance the specimen. Examples: Formalin, Citrate,
  ///  EDTA.
  Reference? get additiveReference;
  @override
  @JsonKey(ignore: true)
  _$$SpecimenDefinitionAdditiveImplCopyWith<_$SpecimenDefinitionAdditiveImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SpecimenDefinitionHandling _$SpecimenDefinitionHandlingFromJson(
    Map<String, dynamic> json) {
  return _SpecimenDefinitionHandling.fromJson(json);
}

/// @nodoc
mixin _$SpecimenDefinitionHandling {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

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
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [temperatureQualifier] It qualifies the interval of temperature, which
  /// characterizes an occurrence of handling. Conditions that are not related
  ///  to temperature may be handled in the instruction element.
  CodeableConcept? get temperatureQualifier =>
      throw _privateConstructorUsedError;

  /// [temperatureRange] The temperature interval for this set of handling
  ///  instructions.
  Range? get temperatureRange => throw _privateConstructorUsedError;

  /// [maxDuration] The maximum time interval of preservation of the specimen
  ///  with these conditions.
  FhirDuration? get maxDuration => throw _privateConstructorUsedError;

  /// [instruction] Additional textual instructions for the preservation or
  ///  transport of the specimen. For instance, 'Protect from light exposure'.
  String? get instruction => throw _privateConstructorUsedError;

  /// [instructionElement] Extensions for instruction
  @JsonKey(name: '_instruction')
  PrimitiveElement? get instructionElement =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpecimenDefinitionHandlingCopyWith<SpecimenDefinitionHandling>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpecimenDefinitionHandlingCopyWith<$Res> {
  factory $SpecimenDefinitionHandlingCopyWith(SpecimenDefinitionHandling value,
          $Res Function(SpecimenDefinitionHandling) then) =
      _$SpecimenDefinitionHandlingCopyWithImpl<$Res,
          SpecimenDefinitionHandling>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? temperatureQualifier,
      Range? temperatureRange,
      FhirDuration? maxDuration,
      String? instruction,
      @JsonKey(name: '_instruction') PrimitiveElement? instructionElement});

  $CodeableConceptCopyWith<$Res>? get temperatureQualifier;
  $RangeCopyWith<$Res>? get temperatureRange;
  $FhirDurationCopyWith<$Res>? get maxDuration;
}

/// @nodoc
class _$SpecimenDefinitionHandlingCopyWithImpl<$Res,
        $Val extends SpecimenDefinitionHandling>
    implements $SpecimenDefinitionHandlingCopyWith<$Res> {
  _$SpecimenDefinitionHandlingCopyWithImpl(this._value, this._then);

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
    Object? temperatureQualifier = freezed,
    Object? temperatureRange = freezed,
    Object? maxDuration = freezed,
    Object? instruction = freezed,
    Object? instructionElement = freezed,
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
      temperatureQualifier: freezed == temperatureQualifier
          ? _value.temperatureQualifier
          : temperatureQualifier // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      temperatureRange: freezed == temperatureRange
          ? _value.temperatureRange
          : temperatureRange // ignore: cast_nullable_to_non_nullable
              as Range?,
      maxDuration: freezed == maxDuration
          ? _value.maxDuration
          : maxDuration // ignore: cast_nullable_to_non_nullable
              as FhirDuration?,
      instruction: freezed == instruction
          ? _value.instruction
          : instruction // ignore: cast_nullable_to_non_nullable
              as String?,
      instructionElement: freezed == instructionElement
          ? _value.instructionElement
          : instructionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get temperatureQualifier {
    if (_value.temperatureQualifier == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.temperatureQualifier!,
        (value) {
      return _then(_value.copyWith(temperatureQualifier: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RangeCopyWith<$Res>? get temperatureRange {
    if (_value.temperatureRange == null) {
      return null;
    }

    return $RangeCopyWith<$Res>(_value.temperatureRange!, (value) {
      return _then(_value.copyWith(temperatureRange: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FhirDurationCopyWith<$Res>? get maxDuration {
    if (_value.maxDuration == null) {
      return null;
    }

    return $FhirDurationCopyWith<$Res>(_value.maxDuration!, (value) {
      return _then(_value.copyWith(maxDuration: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SpecimenDefinitionHandlingImplCopyWith<$Res>
    implements $SpecimenDefinitionHandlingCopyWith<$Res> {
  factory _$$SpecimenDefinitionHandlingImplCopyWith(
          _$SpecimenDefinitionHandlingImpl value,
          $Res Function(_$SpecimenDefinitionHandlingImpl) then) =
      __$$SpecimenDefinitionHandlingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? temperatureQualifier,
      Range? temperatureRange,
      FhirDuration? maxDuration,
      String? instruction,
      @JsonKey(name: '_instruction') PrimitiveElement? instructionElement});

  @override
  $CodeableConceptCopyWith<$Res>? get temperatureQualifier;
  @override
  $RangeCopyWith<$Res>? get temperatureRange;
  @override
  $FhirDurationCopyWith<$Res>? get maxDuration;
}

/// @nodoc
class __$$SpecimenDefinitionHandlingImplCopyWithImpl<$Res>
    extends _$SpecimenDefinitionHandlingCopyWithImpl<$Res,
        _$SpecimenDefinitionHandlingImpl>
    implements _$$SpecimenDefinitionHandlingImplCopyWith<$Res> {
  __$$SpecimenDefinitionHandlingImplCopyWithImpl(
      _$SpecimenDefinitionHandlingImpl _value,
      $Res Function(_$SpecimenDefinitionHandlingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? temperatureQualifier = freezed,
    Object? temperatureRange = freezed,
    Object? maxDuration = freezed,
    Object? instruction = freezed,
    Object? instructionElement = freezed,
  }) {
    return _then(_$SpecimenDefinitionHandlingImpl(
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
      temperatureQualifier: freezed == temperatureQualifier
          ? _value.temperatureQualifier
          : temperatureQualifier // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      temperatureRange: freezed == temperatureRange
          ? _value.temperatureRange
          : temperatureRange // ignore: cast_nullable_to_non_nullable
              as Range?,
      maxDuration: freezed == maxDuration
          ? _value.maxDuration
          : maxDuration // ignore: cast_nullable_to_non_nullable
              as FhirDuration?,
      instruction: freezed == instruction
          ? _value.instruction
          : instruction // ignore: cast_nullable_to_non_nullable
              as String?,
      instructionElement: freezed == instructionElement
          ? _value.instructionElement
          : instructionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpecimenDefinitionHandlingImpl extends _SpecimenDefinitionHandling {
  const _$SpecimenDefinitionHandlingImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.temperatureQualifier,
      this.temperatureRange,
      this.maxDuration,
      this.instruction,
      @JsonKey(name: '_instruction') this.instructionElement})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$SpecimenDefinitionHandlingImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SpecimenDefinitionHandlingImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

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
  final List<FhirExtension>? _modifierExtension;

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
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [temperatureQualifier] It qualifies the interval of temperature, which
  /// characterizes an occurrence of handling. Conditions that are not related
  ///  to temperature may be handled in the instruction element.
  @override
  final CodeableConcept? temperatureQualifier;

  /// [temperatureRange] The temperature interval for this set of handling
  ///  instructions.
  @override
  final Range? temperatureRange;

  /// [maxDuration] The maximum time interval of preservation of the specimen
  ///  with these conditions.
  @override
  final FhirDuration? maxDuration;

  /// [instruction] Additional textual instructions for the preservation or
  ///  transport of the specimen. For instance, 'Protect from light exposure'.
  @override
  final String? instruction;

  /// [instructionElement] Extensions for instruction
  @override
  @JsonKey(name: '_instruction')
  final PrimitiveElement? instructionElement;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpecimenDefinitionHandlingImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.temperatureQualifier, temperatureQualifier) ||
                other.temperatureQualifier == temperatureQualifier) &&
            (identical(other.temperatureRange, temperatureRange) ||
                other.temperatureRange == temperatureRange) &&
            (identical(other.maxDuration, maxDuration) ||
                other.maxDuration == maxDuration) &&
            (identical(other.instruction, instruction) ||
                other.instruction == instruction) &&
            (identical(other.instructionElement, instructionElement) ||
                other.instructionElement == instructionElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      temperatureQualifier,
      temperatureRange,
      maxDuration,
      instruction,
      instructionElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpecimenDefinitionHandlingImplCopyWith<_$SpecimenDefinitionHandlingImpl>
      get copyWith => __$$SpecimenDefinitionHandlingImplCopyWithImpl<
          _$SpecimenDefinitionHandlingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpecimenDefinitionHandlingImplToJson(
      this,
    );
  }
}

abstract class _SpecimenDefinitionHandling extends SpecimenDefinitionHandling {
  factory _SpecimenDefinitionHandling(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final CodeableConcept? temperatureQualifier,
          final Range? temperatureRange,
          final FhirDuration? maxDuration,
          final String? instruction,
          @JsonKey(name: '_instruction')
          final PrimitiveElement? instructionElement}) =
      _$SpecimenDefinitionHandlingImpl;
  const _SpecimenDefinitionHandling._() : super._();

  factory _SpecimenDefinitionHandling.fromJson(Map<String, dynamic> json) =
      _$SpecimenDefinitionHandlingImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id;
  @override

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

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
  List<FhirExtension>? get modifierExtension;
  @override

  /// [temperatureQualifier] It qualifies the interval of temperature, which
  /// characterizes an occurrence of handling. Conditions that are not related
  ///  to temperature may be handled in the instruction element.
  CodeableConcept? get temperatureQualifier;
  @override

  /// [temperatureRange] The temperature interval for this set of handling
  ///  instructions.
  Range? get temperatureRange;
  @override

  /// [maxDuration] The maximum time interval of preservation of the specimen
  ///  with these conditions.
  FhirDuration? get maxDuration;
  @override

  /// [instruction] Additional textual instructions for the preservation or
  ///  transport of the specimen. For instance, 'Protect from light exposure'.
  String? get instruction;
  @override

  /// [instructionElement] Extensions for instruction
  @JsonKey(name: '_instruction')
  PrimitiveElement? get instructionElement;
  @override
  @JsonKey(ignore: true)
  _$$SpecimenDefinitionHandlingImplCopyWith<_$SpecimenDefinitionHandlingImpl>
      get copyWith => throw _privateConstructorUsedError;
}
