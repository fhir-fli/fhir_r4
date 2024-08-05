// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catalog_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CatalogEntry _$CatalogEntryFromJson(Map<String, dynamic> json) {
  return _CatalogEntry.fromJson(json);
}

/// @nodoc
mixin _$CatalogEntry {
  @JsonKey(unknownEnumValue: R4ResourceType.CatalogEntry)
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

  /// [identifier] Used in supporting different identifiers for the same
  ///  product, e.g. manufacturer code and retailer code.
  List<Identifier>? get identifier => throw _privateConstructorUsedError;

  /// [type] The type of item - medication, device, service, protocol or other.
  CodeableConcept? get type => throw _privateConstructorUsedError;

  /// [orderable] Whether the entry represents an orderable item.
  FhirBoolean? get orderable => throw _privateConstructorUsedError;

  /// [orderableElement] Extensions for orderable
  @JsonKey(name: '_orderable')
  PrimitiveElement? get orderableElement => throw _privateConstructorUsedError;

  /// [referencedItem] The item in a catalog or definition.
  Reference get referencedItem => throw _privateConstructorUsedError;

  /// [additionalIdentifier] Used in supporting related concepts, e.g. NDC to
  ///  RxNorm.
  List<Identifier>? get additionalIdentifier =>
      throw _privateConstructorUsedError;

  /// [classification] Classes of devices, or ATC for medication.
  List<CodeableConcept>? get classification =>
      throw _privateConstructorUsedError;

  /// [status] Used to support catalog exchange even for unsupported products,
  ///  e.g. getting list of medications even if not prescribable.
  FhirCode? get status => throw _privateConstructorUsedError;

  /// [statusElement] Extensions for status
  @JsonKey(name: '_status')
  PrimitiveElement? get statusElement => throw _privateConstructorUsedError;

  /// [validityPeriod] The time period in which this catalog entry is expected
  ///  to be active.
  Period? get validityPeriod => throw _privateConstructorUsedError;

  /// [validTo] The date until which this catalog entry is expected to be
  ///  active.
  FhirDateTime? get validTo => throw _privateConstructorUsedError;

  /// [validToElement] Extensions for validTo
  @JsonKey(name: '_validTo')
  PrimitiveElement? get validToElement => throw _privateConstructorUsedError;

  /// [lastUpdated] Typically date of issue is different from the beginning of
  ///  the validity. This can be used to see when an item was last updated.
  FhirDateTime? get lastUpdated => throw _privateConstructorUsedError;

  /// [lastUpdatedElement] Extensions for lastUpdated
  @JsonKey(name: '_lastUpdated')
  PrimitiveElement? get lastUpdatedElement =>
      throw _privateConstructorUsedError;

  /// [additionalCharacteristic] Used for examplefor Out of Formulary, or any
  ///  specifics.
  List<CodeableConcept>? get additionalCharacteristic =>
      throw _privateConstructorUsedError;

  /// [additionalClassification] User for example for ATC classification, or.
  List<CodeableConcept>? get additionalClassification =>
      throw _privateConstructorUsedError;

  /// [relatedEntry] Used for example, to point to a substance, or to a device
  ///  used to administer a medication.
  List<CatalogEntryRelatedEntry>? get relatedEntry =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CatalogEntryCopyWith<CatalogEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatalogEntryCopyWith<$Res> {
  factory $CatalogEntryCopyWith(
          CatalogEntry value, $Res Function(CatalogEntry) then) =
      _$CatalogEntryCopyWithImpl<$Res, CatalogEntry>;
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R4ResourceType.CatalogEntry)
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
      CodeableConcept? type,
      FhirBoolean? orderable,
      @JsonKey(name: '_orderable') PrimitiveElement? orderableElement,
      Reference referencedItem,
      List<Identifier>? additionalIdentifier,
      List<CodeableConcept>? classification,
      FhirCode? status,
      @JsonKey(name: '_status') PrimitiveElement? statusElement,
      Period? validityPeriod,
      FhirDateTime? validTo,
      @JsonKey(name: '_validTo') PrimitiveElement? validToElement,
      FhirDateTime? lastUpdated,
      @JsonKey(name: '_lastUpdated') PrimitiveElement? lastUpdatedElement,
      List<CodeableConcept>? additionalCharacteristic,
      List<CodeableConcept>? additionalClassification,
      List<CatalogEntryRelatedEntry>? relatedEntry});

  $FhirMetaCopyWith<$Res>? get meta;
  $NarrativeCopyWith<$Res>? get text;
  $CodeableConceptCopyWith<$Res>? get type;
  $ReferenceCopyWith<$Res> get referencedItem;
  $PeriodCopyWith<$Res>? get validityPeriod;
}

/// @nodoc
class _$CatalogEntryCopyWithImpl<$Res, $Val extends CatalogEntry>
    implements $CatalogEntryCopyWith<$Res> {
  _$CatalogEntryCopyWithImpl(this._value, this._then);

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
    Object? type = freezed,
    Object? orderable = freezed,
    Object? orderableElement = freezed,
    Object? referencedItem = null,
    Object? additionalIdentifier = freezed,
    Object? classification = freezed,
    Object? status = freezed,
    Object? statusElement = freezed,
    Object? validityPeriod = freezed,
    Object? validTo = freezed,
    Object? validToElement = freezed,
    Object? lastUpdated = freezed,
    Object? lastUpdatedElement = freezed,
    Object? additionalCharacteristic = freezed,
    Object? additionalClassification = freezed,
    Object? relatedEntry = freezed,
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
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      orderable: freezed == orderable
          ? _value.orderable
          : orderable // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      orderableElement: freezed == orderableElement
          ? _value.orderableElement
          : orderableElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      referencedItem: null == referencedItem
          ? _value.referencedItem
          : referencedItem // ignore: cast_nullable_to_non_nullable
              as Reference,
      additionalIdentifier: freezed == additionalIdentifier
          ? _value.additionalIdentifier
          : additionalIdentifier // ignore: cast_nullable_to_non_nullable
              as List<Identifier>?,
      classification: freezed == classification
          ? _value.classification
          : classification // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      statusElement: freezed == statusElement
          ? _value.statusElement
          : statusElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      validityPeriod: freezed == validityPeriod
          ? _value.validityPeriod
          : validityPeriod // ignore: cast_nullable_to_non_nullable
              as Period?,
      validTo: freezed == validTo
          ? _value.validTo
          : validTo // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      validToElement: freezed == validToElement
          ? _value.validToElement
          : validToElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      lastUpdated: freezed == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      lastUpdatedElement: freezed == lastUpdatedElement
          ? _value.lastUpdatedElement
          : lastUpdatedElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      additionalCharacteristic: freezed == additionalCharacteristic
          ? _value.additionalCharacteristic
          : additionalCharacteristic // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      additionalClassification: freezed == additionalClassification
          ? _value.additionalClassification
          : additionalClassification // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      relatedEntry: freezed == relatedEntry
          ? _value.relatedEntry
          : relatedEntry // ignore: cast_nullable_to_non_nullable
              as List<CatalogEntryRelatedEntry>?,
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
  $ReferenceCopyWith<$Res> get referencedItem {
    return $ReferenceCopyWith<$Res>(_value.referencedItem, (value) {
      return _then(_value.copyWith(referencedItem: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PeriodCopyWith<$Res>? get validityPeriod {
    if (_value.validityPeriod == null) {
      return null;
    }

    return $PeriodCopyWith<$Res>(_value.validityPeriod!, (value) {
      return _then(_value.copyWith(validityPeriod: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CatalogEntryImplCopyWith<$Res>
    implements $CatalogEntryCopyWith<$Res> {
  factory _$$CatalogEntryImplCopyWith(
          _$CatalogEntryImpl value, $Res Function(_$CatalogEntryImpl) then) =
      __$$CatalogEntryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R4ResourceType.CatalogEntry)
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
      CodeableConcept? type,
      FhirBoolean? orderable,
      @JsonKey(name: '_orderable') PrimitiveElement? orderableElement,
      Reference referencedItem,
      List<Identifier>? additionalIdentifier,
      List<CodeableConcept>? classification,
      FhirCode? status,
      @JsonKey(name: '_status') PrimitiveElement? statusElement,
      Period? validityPeriod,
      FhirDateTime? validTo,
      @JsonKey(name: '_validTo') PrimitiveElement? validToElement,
      FhirDateTime? lastUpdated,
      @JsonKey(name: '_lastUpdated') PrimitiveElement? lastUpdatedElement,
      List<CodeableConcept>? additionalCharacteristic,
      List<CodeableConcept>? additionalClassification,
      List<CatalogEntryRelatedEntry>? relatedEntry});

  @override
  $FhirMetaCopyWith<$Res>? get meta;
  @override
  $NarrativeCopyWith<$Res>? get text;
  @override
  $CodeableConceptCopyWith<$Res>? get type;
  @override
  $ReferenceCopyWith<$Res> get referencedItem;
  @override
  $PeriodCopyWith<$Res>? get validityPeriod;
}

/// @nodoc
class __$$CatalogEntryImplCopyWithImpl<$Res>
    extends _$CatalogEntryCopyWithImpl<$Res, _$CatalogEntryImpl>
    implements _$$CatalogEntryImplCopyWith<$Res> {
  __$$CatalogEntryImplCopyWithImpl(
      _$CatalogEntryImpl _value, $Res Function(_$CatalogEntryImpl) _then)
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
    Object? type = freezed,
    Object? orderable = freezed,
    Object? orderableElement = freezed,
    Object? referencedItem = null,
    Object? additionalIdentifier = freezed,
    Object? classification = freezed,
    Object? status = freezed,
    Object? statusElement = freezed,
    Object? validityPeriod = freezed,
    Object? validTo = freezed,
    Object? validToElement = freezed,
    Object? lastUpdated = freezed,
    Object? lastUpdatedElement = freezed,
    Object? additionalCharacteristic = freezed,
    Object? additionalClassification = freezed,
    Object? relatedEntry = freezed,
  }) {
    return _then(_$CatalogEntryImpl(
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
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      orderable: freezed == orderable
          ? _value.orderable
          : orderable // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      orderableElement: freezed == orderableElement
          ? _value.orderableElement
          : orderableElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      referencedItem: null == referencedItem
          ? _value.referencedItem
          : referencedItem // ignore: cast_nullable_to_non_nullable
              as Reference,
      additionalIdentifier: freezed == additionalIdentifier
          ? _value._additionalIdentifier
          : additionalIdentifier // ignore: cast_nullable_to_non_nullable
              as List<Identifier>?,
      classification: freezed == classification
          ? _value._classification
          : classification // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      statusElement: freezed == statusElement
          ? _value.statusElement
          : statusElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      validityPeriod: freezed == validityPeriod
          ? _value.validityPeriod
          : validityPeriod // ignore: cast_nullable_to_non_nullable
              as Period?,
      validTo: freezed == validTo
          ? _value.validTo
          : validTo // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      validToElement: freezed == validToElement
          ? _value.validToElement
          : validToElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      lastUpdated: freezed == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      lastUpdatedElement: freezed == lastUpdatedElement
          ? _value.lastUpdatedElement
          : lastUpdatedElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      additionalCharacteristic: freezed == additionalCharacteristic
          ? _value._additionalCharacteristic
          : additionalCharacteristic // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      additionalClassification: freezed == additionalClassification
          ? _value._additionalClassification
          : additionalClassification // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      relatedEntry: freezed == relatedEntry
          ? _value._relatedEntry
          : relatedEntry // ignore: cast_nullable_to_non_nullable
              as List<CatalogEntryRelatedEntry>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CatalogEntryImpl extends _CatalogEntry {
  _$CatalogEntryImpl(
      {@JsonKey(unknownEnumValue: R4ResourceType.CatalogEntry)
      this.resourceType = R4ResourceType.CatalogEntry,
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
      this.type,
      this.orderable,
      @JsonKey(name: '_orderable') this.orderableElement,
      required this.referencedItem,
      final List<Identifier>? additionalIdentifier,
      final List<CodeableConcept>? classification,
      this.status,
      @JsonKey(name: '_status') this.statusElement,
      this.validityPeriod,
      this.validTo,
      @JsonKey(name: '_validTo') this.validToElement,
      this.lastUpdated,
      @JsonKey(name: '_lastUpdated') this.lastUpdatedElement,
      final List<CodeableConcept>? additionalCharacteristic,
      final List<CodeableConcept>? additionalClassification,
      final List<CatalogEntryRelatedEntry>? relatedEntry})
      : _contained = contained,
        _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _identifier = identifier,
        _additionalIdentifier = additionalIdentifier,
        _classification = classification,
        _additionalCharacteristic = additionalCharacteristic,
        _additionalClassification = additionalClassification,
        _relatedEntry = relatedEntry,
        super._();

  factory _$CatalogEntryImpl.fromJson(Map<String, dynamic> json) =>
      _$$CatalogEntryImplFromJson(json);

  @override
  @JsonKey(unknownEnumValue: R4ResourceType.CatalogEntry)
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

  /// [identifier] Used in supporting different identifiers for the same
  ///  product, e.g. manufacturer code and retailer code.
  final List<Identifier>? _identifier;

  /// [identifier] Used in supporting different identifiers for the same
  ///  product, e.g. manufacturer code and retailer code.
  @override
  List<Identifier>? get identifier {
    final value = _identifier;
    if (value == null) return null;
    if (_identifier is EqualUnmodifiableListView) return _identifier;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [type] The type of item - medication, device, service, protocol or other.
  @override
  final CodeableConcept? type;

  /// [orderable] Whether the entry represents an orderable item.
  @override
  final FhirBoolean? orderable;

  /// [orderableElement] Extensions for orderable
  @override
  @JsonKey(name: '_orderable')
  final PrimitiveElement? orderableElement;

  /// [referencedItem] The item in a catalog or definition.
  @override
  final Reference referencedItem;

  /// [additionalIdentifier] Used in supporting related concepts, e.g. NDC to
  ///  RxNorm.
  final List<Identifier>? _additionalIdentifier;

  /// [additionalIdentifier] Used in supporting related concepts, e.g. NDC to
  ///  RxNorm.
  @override
  List<Identifier>? get additionalIdentifier {
    final value = _additionalIdentifier;
    if (value == null) return null;
    if (_additionalIdentifier is EqualUnmodifiableListView)
      return _additionalIdentifier;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [classification] Classes of devices, or ATC for medication.
  final List<CodeableConcept>? _classification;

  /// [classification] Classes of devices, or ATC for medication.
  @override
  List<CodeableConcept>? get classification {
    final value = _classification;
    if (value == null) return null;
    if (_classification is EqualUnmodifiableListView) return _classification;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [status] Used to support catalog exchange even for unsupported products,
  ///  e.g. getting list of medications even if not prescribable.
  @override
  final FhirCode? status;

  /// [statusElement] Extensions for status
  @override
  @JsonKey(name: '_status')
  final PrimitiveElement? statusElement;

  /// [validityPeriod] The time period in which this catalog entry is expected
  ///  to be active.
  @override
  final Period? validityPeriod;

  /// [validTo] The date until which this catalog entry is expected to be
  ///  active.
  @override
  final FhirDateTime? validTo;

  /// [validToElement] Extensions for validTo
  @override
  @JsonKey(name: '_validTo')
  final PrimitiveElement? validToElement;

  /// [lastUpdated] Typically date of issue is different from the beginning of
  ///  the validity. This can be used to see when an item was last updated.
  @override
  final FhirDateTime? lastUpdated;

  /// [lastUpdatedElement] Extensions for lastUpdated
  @override
  @JsonKey(name: '_lastUpdated')
  final PrimitiveElement? lastUpdatedElement;

  /// [additionalCharacteristic] Used for examplefor Out of Formulary, or any
  ///  specifics.
  final List<CodeableConcept>? _additionalCharacteristic;

  /// [additionalCharacteristic] Used for examplefor Out of Formulary, or any
  ///  specifics.
  @override
  List<CodeableConcept>? get additionalCharacteristic {
    final value = _additionalCharacteristic;
    if (value == null) return null;
    if (_additionalCharacteristic is EqualUnmodifiableListView)
      return _additionalCharacteristic;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [additionalClassification] User for example for ATC classification, or.
  final List<CodeableConcept>? _additionalClassification;

  /// [additionalClassification] User for example for ATC classification, or.
  @override
  List<CodeableConcept>? get additionalClassification {
    final value = _additionalClassification;
    if (value == null) return null;
    if (_additionalClassification is EqualUnmodifiableListView)
      return _additionalClassification;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [relatedEntry] Used for example, to point to a substance, or to a device
  ///  used to administer a medication.
  final List<CatalogEntryRelatedEntry>? _relatedEntry;

  /// [relatedEntry] Used for example, to point to a substance, or to a device
  ///  used to administer a medication.
  @override
  List<CatalogEntryRelatedEntry>? get relatedEntry {
    final value = _relatedEntry;
    if (value == null) return null;
    if (_relatedEntry is EqualUnmodifiableListView) return _relatedEntry;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CatalogEntryImpl &&
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
            (identical(other.type, type) || other.type == type) &&
            (identical(other.orderable, orderable) ||
                other.orderable == orderable) &&
            (identical(other.orderableElement, orderableElement) ||
                other.orderableElement == orderableElement) &&
            (identical(other.referencedItem, referencedItem) ||
                other.referencedItem == referencedItem) &&
            const DeepCollectionEquality()
                .equals(other._additionalIdentifier, _additionalIdentifier) &&
            const DeepCollectionEquality()
                .equals(other._classification, _classification) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusElement, statusElement) ||
                other.statusElement == statusElement) &&
            (identical(other.validityPeriod, validityPeriod) ||
                other.validityPeriod == validityPeriod) &&
            (identical(other.validTo, validTo) || other.validTo == validTo) &&
            (identical(other.validToElement, validToElement) ||
                other.validToElement == validToElement) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.lastUpdatedElement, lastUpdatedElement) ||
                other.lastUpdatedElement == lastUpdatedElement) &&
            const DeepCollectionEquality().equals(
                other._additionalCharacteristic, _additionalCharacteristic) &&
            const DeepCollectionEquality().equals(
                other._additionalClassification, _additionalClassification) &&
            const DeepCollectionEquality()
                .equals(other._relatedEntry, _relatedEntry));
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
        type,
        orderable,
        orderableElement,
        referencedItem,
        const DeepCollectionEquality().hash(_additionalIdentifier),
        const DeepCollectionEquality().hash(_classification),
        status,
        statusElement,
        validityPeriod,
        validTo,
        validToElement,
        lastUpdated,
        lastUpdatedElement,
        const DeepCollectionEquality().hash(_additionalCharacteristic),
        const DeepCollectionEquality().hash(_additionalClassification),
        const DeepCollectionEquality().hash(_relatedEntry)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CatalogEntryImplCopyWith<_$CatalogEntryImpl> get copyWith =>
      __$$CatalogEntryImplCopyWithImpl<_$CatalogEntryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CatalogEntryImplToJson(
      this,
    );
  }
}

abstract class _CatalogEntry extends CatalogEntry {
  factory _CatalogEntry(
      {@JsonKey(unknownEnumValue: R4ResourceType.CatalogEntry)
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
      final List<Identifier>? identifier,
      final CodeableConcept? type,
      final FhirBoolean? orderable,
      @JsonKey(name: '_orderable') final PrimitiveElement? orderableElement,
      required final Reference referencedItem,
      final List<Identifier>? additionalIdentifier,
      final List<CodeableConcept>? classification,
      final FhirCode? status,
      @JsonKey(name: '_status') final PrimitiveElement? statusElement,
      final Period? validityPeriod,
      final FhirDateTime? validTo,
      @JsonKey(name: '_validTo') final PrimitiveElement? validToElement,
      final FhirDateTime? lastUpdated,
      @JsonKey(name: '_lastUpdated') final PrimitiveElement? lastUpdatedElement,
      final List<CodeableConcept>? additionalCharacteristic,
      final List<CodeableConcept>? additionalClassification,
      final List<CatalogEntryRelatedEntry>? relatedEntry}) = _$CatalogEntryImpl;
  _CatalogEntry._() : super._();

  factory _CatalogEntry.fromJson(Map<String, dynamic> json) =
      _$CatalogEntryImpl.fromJson;

  @override
  @JsonKey(unknownEnumValue: R4ResourceType.CatalogEntry)
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

  /// [identifier] Used in supporting different identifiers for the same
  ///  product, e.g. manufacturer code and retailer code.
  List<Identifier>? get identifier;
  @override

  /// [type] The type of item - medication, device, service, protocol or other.
  CodeableConcept? get type;
  @override

  /// [orderable] Whether the entry represents an orderable item.
  FhirBoolean? get orderable;
  @override

  /// [orderableElement] Extensions for orderable
  @JsonKey(name: '_orderable')
  PrimitiveElement? get orderableElement;
  @override

  /// [referencedItem] The item in a catalog or definition.
  Reference get referencedItem;
  @override

  /// [additionalIdentifier] Used in supporting related concepts, e.g. NDC to
  ///  RxNorm.
  List<Identifier>? get additionalIdentifier;
  @override

  /// [classification] Classes of devices, or ATC for medication.
  List<CodeableConcept>? get classification;
  @override

  /// [status] Used to support catalog exchange even for unsupported products,
  ///  e.g. getting list of medications even if not prescribable.
  FhirCode? get status;
  @override

  /// [statusElement] Extensions for status
  @JsonKey(name: '_status')
  PrimitiveElement? get statusElement;
  @override

  /// [validityPeriod] The time period in which this catalog entry is expected
  ///  to be active.
  Period? get validityPeriod;
  @override

  /// [validTo] The date until which this catalog entry is expected to be
  ///  active.
  FhirDateTime? get validTo;
  @override

  /// [validToElement] Extensions for validTo
  @JsonKey(name: '_validTo')
  PrimitiveElement? get validToElement;
  @override

  /// [lastUpdated] Typically date of issue is different from the beginning of
  ///  the validity. This can be used to see when an item was last updated.
  FhirDateTime? get lastUpdated;
  @override

  /// [lastUpdatedElement] Extensions for lastUpdated
  @JsonKey(name: '_lastUpdated')
  PrimitiveElement? get lastUpdatedElement;
  @override

  /// [additionalCharacteristic] Used for examplefor Out of Formulary, or any
  ///  specifics.
  List<CodeableConcept>? get additionalCharacteristic;
  @override

  /// [additionalClassification] User for example for ATC classification, or.
  List<CodeableConcept>? get additionalClassification;
  @override

  /// [relatedEntry] Used for example, to point to a substance, or to a device
  ///  used to administer a medication.
  List<CatalogEntryRelatedEntry>? get relatedEntry;
  @override
  @JsonKey(ignore: true)
  _$$CatalogEntryImplCopyWith<_$CatalogEntryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CatalogEntryRelatedEntry _$CatalogEntryRelatedEntryFromJson(
    Map<String, dynamic> json) {
  return _CatalogEntryRelatedEntry.fromJson(json);
}

/// @nodoc
mixin _$CatalogEntryRelatedEntry {
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

  /// [relationtype] The type of relation to the related item: child, parent,
  ///  packageContent, containerPackage, usedIn, uses, requires, etc.
  FhirCode? get relationtype => throw _privateConstructorUsedError;

  /// [relationtypeElement] Extensions for relationtype
  @JsonKey(name: '_relationtype')
  PrimitiveElement? get relationtypeElement =>
      throw _privateConstructorUsedError;

  /// [item] The reference to the related item.
  Reference get item => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CatalogEntryRelatedEntryCopyWith<CatalogEntryRelatedEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatalogEntryRelatedEntryCopyWith<$Res> {
  factory $CatalogEntryRelatedEntryCopyWith(CatalogEntryRelatedEntry value,
          $Res Function(CatalogEntryRelatedEntry) then) =
      _$CatalogEntryRelatedEntryCopyWithImpl<$Res, CatalogEntryRelatedEntry>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirCode? relationtype,
      @JsonKey(name: '_relationtype') PrimitiveElement? relationtypeElement,
      Reference item});

  $ReferenceCopyWith<$Res> get item;
}

/// @nodoc
class _$CatalogEntryRelatedEntryCopyWithImpl<$Res,
        $Val extends CatalogEntryRelatedEntry>
    implements $CatalogEntryRelatedEntryCopyWith<$Res> {
  _$CatalogEntryRelatedEntryCopyWithImpl(this._value, this._then);

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
    Object? relationtype = freezed,
    Object? relationtypeElement = freezed,
    Object? item = null,
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
      relationtype: freezed == relationtype
          ? _value.relationtype
          : relationtype // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      relationtypeElement: freezed == relationtypeElement
          ? _value.relationtypeElement
          : relationtypeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as Reference,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res> get item {
    return $ReferenceCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CatalogEntryRelatedEntryImplCopyWith<$Res>
    implements $CatalogEntryRelatedEntryCopyWith<$Res> {
  factory _$$CatalogEntryRelatedEntryImplCopyWith(
          _$CatalogEntryRelatedEntryImpl value,
          $Res Function(_$CatalogEntryRelatedEntryImpl) then) =
      __$$CatalogEntryRelatedEntryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirCode? relationtype,
      @JsonKey(name: '_relationtype') PrimitiveElement? relationtypeElement,
      Reference item});

  @override
  $ReferenceCopyWith<$Res> get item;
}

/// @nodoc
class __$$CatalogEntryRelatedEntryImplCopyWithImpl<$Res>
    extends _$CatalogEntryRelatedEntryCopyWithImpl<$Res,
        _$CatalogEntryRelatedEntryImpl>
    implements _$$CatalogEntryRelatedEntryImplCopyWith<$Res> {
  __$$CatalogEntryRelatedEntryImplCopyWithImpl(
      _$CatalogEntryRelatedEntryImpl _value,
      $Res Function(_$CatalogEntryRelatedEntryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? relationtype = freezed,
    Object? relationtypeElement = freezed,
    Object? item = null,
  }) {
    return _then(_$CatalogEntryRelatedEntryImpl(
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
      relationtype: freezed == relationtype
          ? _value.relationtype
          : relationtype // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      relationtypeElement: freezed == relationtypeElement
          ? _value.relationtypeElement
          : relationtypeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as Reference,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CatalogEntryRelatedEntryImpl extends _CatalogEntryRelatedEntry {
  _$CatalogEntryRelatedEntryImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.relationtype,
      @JsonKey(name: '_relationtype') this.relationtypeElement,
      required this.item})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$CatalogEntryRelatedEntryImpl.fromJson(Map<String, dynamic> json) =>
      _$$CatalogEntryRelatedEntryImplFromJson(json);

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

  /// [relationtype] The type of relation to the related item: child, parent,
  ///  packageContent, containerPackage, usedIn, uses, requires, etc.
  @override
  final FhirCode? relationtype;

  /// [relationtypeElement] Extensions for relationtype
  @override
  @JsonKey(name: '_relationtype')
  final PrimitiveElement? relationtypeElement;

  /// [item] The reference to the related item.
  @override
  final Reference item;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CatalogEntryRelatedEntryImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.relationtype, relationtype) ||
                other.relationtype == relationtype) &&
            (identical(other.relationtypeElement, relationtypeElement) ||
                other.relationtypeElement == relationtypeElement) &&
            (identical(other.item, item) || other.item == item));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      relationtype,
      relationtypeElement,
      item);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CatalogEntryRelatedEntryImplCopyWith<_$CatalogEntryRelatedEntryImpl>
      get copyWith => __$$CatalogEntryRelatedEntryImplCopyWithImpl<
          _$CatalogEntryRelatedEntryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CatalogEntryRelatedEntryImplToJson(
      this,
    );
  }
}

abstract class _CatalogEntryRelatedEntry extends CatalogEntryRelatedEntry {
  factory _CatalogEntryRelatedEntry(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final FhirCode? relationtype,
      @JsonKey(name: '_relationtype')
      final PrimitiveElement? relationtypeElement,
      required final Reference item}) = _$CatalogEntryRelatedEntryImpl;
  _CatalogEntryRelatedEntry._() : super._();

  factory _CatalogEntryRelatedEntry.fromJson(Map<String, dynamic> json) =
      _$CatalogEntryRelatedEntryImpl.fromJson;

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

  /// [relationtype] The type of relation to the related item: child, parent,
  ///  packageContent, containerPackage, usedIn, uses, requires, etc.
  FhirCode? get relationtype;
  @override

  /// [relationtypeElement] Extensions for relationtype
  @JsonKey(name: '_relationtype')
  PrimitiveElement? get relationtypeElement;
  @override

  /// [item] The reference to the related item.
  Reference get item;
  @override
  @JsonKey(ignore: true)
  _$$CatalogEntryRelatedEntryImplCopyWith<_$CatalogEntryRelatedEntryImpl>
      get copyWith => throw _privateConstructorUsedError;
}
