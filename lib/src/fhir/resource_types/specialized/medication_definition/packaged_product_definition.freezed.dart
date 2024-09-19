// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'packaged_product_definition.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PackagedProductDefinition _$PackagedProductDefinitionFromJson(
    Map<String, dynamic> json) {
  return _PackagedProductDefinition.fromJson(json);
}

/// @nodoc
mixin _$PackagedProductDefinition {
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

  /// [identifier] A unique identifier for this package as whole - not the the content of the package. Unique instance identifiers assigned to a package by manufacturers, regulators, drug catalogue custodians or other organizations.;
  List<Identifier>? get identifier => throw _privateConstructorUsedError;

  /// [name] A name for this package. Typically what it would be listed as in a drug formulary or catalogue, inventory etc.;
  String? get name => throw _privateConstructorUsedError;

  /// [nameElement] (_name): Extensions for name;
  @JsonKey(name: '_name')
  PrimitiveElement? get nameElement => throw _privateConstructorUsedError;

  /// [type] A high level category e.g. medicinal product, raw material, shipping/transport container, etc.;
  CodeableConcept? get type => throw _privateConstructorUsedError;

  /// [packageFor] The product this package model relates to, not the contents of the package (for which see package.containedItem).;
  List<Reference>? get packageFor => throw _privateConstructorUsedError;

  /// [status] The status within the lifecycle of this item. A high level status, this is not intended to duplicate details carried elsewhere such as legal status, or authorization or marketing status.;
  CodeableConcept? get status => throw _privateConstructorUsedError;

  /// [statusDate] The date at which the given status became applicable.;
  FhirDateTime? get statusDate => throw _privateConstructorUsedError;

  /// [statusDateElement] (_statusDate): Extensions for statusDate;
  @JsonKey(name: '_statusDate')
  PrimitiveElement? get statusDateElement => throw _privateConstructorUsedError;

  /// [containedItemQuantity] A total of the complete count of contained items of a particular type/form, independent of sub-packaging or organization. This can be considered as the pack size. This attribute differs from containedItem.amount in that it can give a single aggregated count of all tablet types in a pack, even when these are different manufactured items. For example a pill pack of 21 tablets plus 7 sugar tablets, can be denoted here as '28 tablets'. This attribute is repeatable so that the different item types in one pack type can be counted (e.g. a count of vials and count of syringes). Each repeat must have different units, so that it is clear what the different sets of counted items are, and it is not intended to allow different counts of similar items (e.g. not '2 tubes and 3 tubes'). Repeats are not to be used to represent different pack sizes (e.g. 20 pack vs. 50 pack) - which would be different instances of this resource.;
  List<Quantity>? get containedItemQuantity =>
      throw _privateConstructorUsedError;

  /// [description] Textual description. Note that this is not the name of the package or product.;
  FhirMarkdown? get description => throw _privateConstructorUsedError;

  /// [descriptionElement] (_description): Extensions for description;
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement =>
      throw _privateConstructorUsedError;

  /// [legalStatusOfSupply] The legal status of supply of the packaged item as classified by the regulator.;
  List<PackagedProductDefinitionLegalStatusOfSupply>? get legalStatusOfSupply =>
      throw _privateConstructorUsedError;

  /// [marketingStatus] Allows specifying that an item is on the market for sale, or that it is not available, and the dates and locations associated.;
  List<MarketingStatus>? get marketingStatus =>
      throw _privateConstructorUsedError;

  /// [characteristic] Allows the key features to be recorded, such as "hospital pack", "nurse prescribable", "calendar pack".;
  List<CodeableConcept>? get characteristic =>
      throw _privateConstructorUsedError;

  /// [copackagedIndicator] Identifies if the package contains different items, such as when a drug product is supplied with another item e.g. a diluent or adjuvant.;
  FhirBoolean? get copackagedIndicator => throw _privateConstructorUsedError;

  /// [copackagedIndicatorElement] (_copackagedIndicator): Extensions for copackagedIndicator;
  @JsonKey(name: '_copackagedIndicator')
  PrimitiveElement? get copackagedIndicatorElement =>
      throw _privateConstructorUsedError;

  /// [manufacturer] Manufacturer of this package type. When there are multiple it means these are all possible manufacturers.;
  List<Reference>? get manufacturer => throw _privateConstructorUsedError;

  /// [package] A packaging item, as a container for medically related items, possibly with other packaging items within, or a packaging component, such as bottle cap (which is not a device or a medication manufactured item).;
  PackagedProductDefinitionPackage? get package =>
      throw _privateConstructorUsedError;

  /// Serializes this PackagedProductDefinition to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PackagedProductDefinition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PackagedProductDefinitionCopyWith<PackagedProductDefinition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackagedProductDefinitionCopyWith<$Res> {
  factory $PackagedProductDefinitionCopyWith(PackagedProductDefinition value,
          $Res Function(PackagedProductDefinition) then) =
      _$PackagedProductDefinitionCopyWithImpl<$Res, PackagedProductDefinition>;
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
      String? name,
      @JsonKey(name: '_name') PrimitiveElement? nameElement,
      CodeableConcept? type,
      List<Reference>? packageFor,
      CodeableConcept? status,
      FhirDateTime? statusDate,
      @JsonKey(name: '_statusDate') PrimitiveElement? statusDateElement,
      List<Quantity>? containedItemQuantity,
      FhirMarkdown? description,
      @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
      List<PackagedProductDefinitionLegalStatusOfSupply>? legalStatusOfSupply,
      List<MarketingStatus>? marketingStatus,
      List<CodeableConcept>? characteristic,
      FhirBoolean? copackagedIndicator,
      @JsonKey(name: '_copackagedIndicator')
      PrimitiveElement? copackagedIndicatorElement,
      List<Reference>? manufacturer,
      PackagedProductDefinitionPackage? package});

  $FhirMetaCopyWith<$Res>? get meta;
  $NarrativeCopyWith<$Res>? get text;
  $CodeableConceptCopyWith<$Res>? get type;
  $CodeableConceptCopyWith<$Res>? get status;
  $PackagedProductDefinitionPackageCopyWith<$Res>? get package;
}

/// @nodoc
class _$PackagedProductDefinitionCopyWithImpl<$Res,
        $Val extends PackagedProductDefinition>
    implements $PackagedProductDefinitionCopyWith<$Res> {
  _$PackagedProductDefinitionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PackagedProductDefinition
  /// with the given fields replaced by the non-null parameter values.
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
    Object? name = freezed,
    Object? nameElement = freezed,
    Object? type = freezed,
    Object? packageFor = freezed,
    Object? status = freezed,
    Object? statusDate = freezed,
    Object? statusDateElement = freezed,
    Object? containedItemQuantity = freezed,
    Object? description = freezed,
    Object? descriptionElement = freezed,
    Object? legalStatusOfSupply = freezed,
    Object? marketingStatus = freezed,
    Object? characteristic = freezed,
    Object? copackagedIndicator = freezed,
    Object? copackagedIndicatorElement = freezed,
    Object? manufacturer = freezed,
    Object? package = freezed,
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
      packageFor: freezed == packageFor
          ? _value.packageFor
          : packageFor // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
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
      containedItemQuantity: freezed == containedItemQuantity
          ? _value.containedItemQuantity
          : containedItemQuantity // ignore: cast_nullable_to_non_nullable
              as List<Quantity>?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      descriptionElement: freezed == descriptionElement
          ? _value.descriptionElement
          : descriptionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      legalStatusOfSupply: freezed == legalStatusOfSupply
          ? _value.legalStatusOfSupply
          : legalStatusOfSupply // ignore: cast_nullable_to_non_nullable
              as List<PackagedProductDefinitionLegalStatusOfSupply>?,
      marketingStatus: freezed == marketingStatus
          ? _value.marketingStatus
          : marketingStatus // ignore: cast_nullable_to_non_nullable
              as List<MarketingStatus>?,
      characteristic: freezed == characteristic
          ? _value.characteristic
          : characteristic // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      copackagedIndicator: freezed == copackagedIndicator
          ? _value.copackagedIndicator
          : copackagedIndicator // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      copackagedIndicatorElement: freezed == copackagedIndicatorElement
          ? _value.copackagedIndicatorElement
          : copackagedIndicatorElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      manufacturer: freezed == manufacturer
          ? _value.manufacturer
          : manufacturer // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      package: freezed == package
          ? _value.package
          : package // ignore: cast_nullable_to_non_nullable
              as PackagedProductDefinitionPackage?,
    ) as $Val);
  }

  /// Create a copy of PackagedProductDefinition
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of PackagedProductDefinition
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of PackagedProductDefinition
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of PackagedProductDefinition
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of PackagedProductDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PackagedProductDefinitionPackageCopyWith<$Res>? get package {
    if (_value.package == null) {
      return null;
    }

    return $PackagedProductDefinitionPackageCopyWith<$Res>(_value.package!,
        (value) {
      return _then(_value.copyWith(package: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PackagedProductDefinitionImplCopyWith<$Res>
    implements $PackagedProductDefinitionCopyWith<$Res> {
  factory _$$PackagedProductDefinitionImplCopyWith(
          _$PackagedProductDefinitionImpl value,
          $Res Function(_$PackagedProductDefinitionImpl) then) =
      __$$PackagedProductDefinitionImplCopyWithImpl<$Res>;
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
      String? name,
      @JsonKey(name: '_name') PrimitiveElement? nameElement,
      CodeableConcept? type,
      List<Reference>? packageFor,
      CodeableConcept? status,
      FhirDateTime? statusDate,
      @JsonKey(name: '_statusDate') PrimitiveElement? statusDateElement,
      List<Quantity>? containedItemQuantity,
      FhirMarkdown? description,
      @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
      List<PackagedProductDefinitionLegalStatusOfSupply>? legalStatusOfSupply,
      List<MarketingStatus>? marketingStatus,
      List<CodeableConcept>? characteristic,
      FhirBoolean? copackagedIndicator,
      @JsonKey(name: '_copackagedIndicator')
      PrimitiveElement? copackagedIndicatorElement,
      List<Reference>? manufacturer,
      PackagedProductDefinitionPackage? package});

  @override
  $FhirMetaCopyWith<$Res>? get meta;
  @override
  $NarrativeCopyWith<$Res>? get text;
  @override
  $CodeableConceptCopyWith<$Res>? get type;
  @override
  $CodeableConceptCopyWith<$Res>? get status;
  @override
  $PackagedProductDefinitionPackageCopyWith<$Res>? get package;
}

/// @nodoc
class __$$PackagedProductDefinitionImplCopyWithImpl<$Res>
    extends _$PackagedProductDefinitionCopyWithImpl<$Res,
        _$PackagedProductDefinitionImpl>
    implements _$$PackagedProductDefinitionImplCopyWith<$Res> {
  __$$PackagedProductDefinitionImplCopyWithImpl(
      _$PackagedProductDefinitionImpl _value,
      $Res Function(_$PackagedProductDefinitionImpl) _then)
      : super(_value, _then);

  /// Create a copy of PackagedProductDefinition
  /// with the given fields replaced by the non-null parameter values.
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
    Object? name = freezed,
    Object? nameElement = freezed,
    Object? type = freezed,
    Object? packageFor = freezed,
    Object? status = freezed,
    Object? statusDate = freezed,
    Object? statusDateElement = freezed,
    Object? containedItemQuantity = freezed,
    Object? description = freezed,
    Object? descriptionElement = freezed,
    Object? legalStatusOfSupply = freezed,
    Object? marketingStatus = freezed,
    Object? characteristic = freezed,
    Object? copackagedIndicator = freezed,
    Object? copackagedIndicatorElement = freezed,
    Object? manufacturer = freezed,
    Object? package = freezed,
  }) {
    return _then(_$PackagedProductDefinitionImpl(
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
      packageFor: freezed == packageFor
          ? _value._packageFor
          : packageFor // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
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
      containedItemQuantity: freezed == containedItemQuantity
          ? _value._containedItemQuantity
          : containedItemQuantity // ignore: cast_nullable_to_non_nullable
              as List<Quantity>?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      descriptionElement: freezed == descriptionElement
          ? _value.descriptionElement
          : descriptionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      legalStatusOfSupply: freezed == legalStatusOfSupply
          ? _value._legalStatusOfSupply
          : legalStatusOfSupply // ignore: cast_nullable_to_non_nullable
              as List<PackagedProductDefinitionLegalStatusOfSupply>?,
      marketingStatus: freezed == marketingStatus
          ? _value._marketingStatus
          : marketingStatus // ignore: cast_nullable_to_non_nullable
              as List<MarketingStatus>?,
      characteristic: freezed == characteristic
          ? _value._characteristic
          : characteristic // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      copackagedIndicator: freezed == copackagedIndicator
          ? _value.copackagedIndicator
          : copackagedIndicator // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      copackagedIndicatorElement: freezed == copackagedIndicatorElement
          ? _value.copackagedIndicatorElement
          : copackagedIndicatorElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      manufacturer: freezed == manufacturer
          ? _value._manufacturer
          : manufacturer // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      package: freezed == package
          ? _value.package
          : package // ignore: cast_nullable_to_non_nullable
              as PackagedProductDefinitionPackage?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PackagedProductDefinitionImpl extends _PackagedProductDefinition {
  _$PackagedProductDefinitionImpl(
      {this.resourceType = R4ResourceType.PackagedProductDefinition,
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
      this.name,
      @JsonKey(name: '_name') this.nameElement,
      this.type,
      final List<Reference>? packageFor,
      this.status,
      this.statusDate,
      @JsonKey(name: '_statusDate') this.statusDateElement,
      final List<Quantity>? containedItemQuantity,
      this.description,
      @JsonKey(name: '_description') this.descriptionElement,
      final List<PackagedProductDefinitionLegalStatusOfSupply>?
          legalStatusOfSupply,
      final List<MarketingStatus>? marketingStatus,
      final List<CodeableConcept>? characteristic,
      this.copackagedIndicator,
      @JsonKey(name: '_copackagedIndicator') this.copackagedIndicatorElement,
      final List<Reference>? manufacturer,
      this.package})
      : _contained = contained,
        _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _identifier = identifier,
        _packageFor = packageFor,
        _containedItemQuantity = containedItemQuantity,
        _legalStatusOfSupply = legalStatusOfSupply,
        _marketingStatus = marketingStatus,
        _characteristic = characteristic,
        _manufacturer = manufacturer,
        super._();

  factory _$PackagedProductDefinitionImpl.fromJson(Map<String, dynamic> json) =>
      _$$PackagedProductDefinitionImplFromJson(json);

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

  /// [identifier] A unique identifier for this package as whole - not the the content of the package. Unique instance identifiers assigned to a package by manufacturers, regulators, drug catalogue custodians or other organizations.;
  final List<Identifier>? _identifier;

  /// [identifier] A unique identifier for this package as whole - not the the content of the package. Unique instance identifiers assigned to a package by manufacturers, regulators, drug catalogue custodians or other organizations.;
  @override
  List<Identifier>? get identifier {
    final value = _identifier;
    if (value == null) return null;
    if (_identifier is EqualUnmodifiableListView) return _identifier;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [name] A name for this package. Typically what it would be listed as in a drug formulary or catalogue, inventory etc.;
  @override
  final String? name;

  /// [nameElement] (_name): Extensions for name;
  @override
  @JsonKey(name: '_name')
  final PrimitiveElement? nameElement;

  /// [type] A high level category e.g. medicinal product, raw material, shipping/transport container, etc.;
  @override
  final CodeableConcept? type;

  /// [packageFor] The product this package model relates to, not the contents of the package (for which see package.containedItem).;
  final List<Reference>? _packageFor;

  /// [packageFor] The product this package model relates to, not the contents of the package (for which see package.containedItem).;
  @override
  List<Reference>? get packageFor {
    final value = _packageFor;
    if (value == null) return null;
    if (_packageFor is EqualUnmodifiableListView) return _packageFor;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [status] The status within the lifecycle of this item. A high level status, this is not intended to duplicate details carried elsewhere such as legal status, or authorization or marketing status.;
  @override
  final CodeableConcept? status;

  /// [statusDate] The date at which the given status became applicable.;
  @override
  final FhirDateTime? statusDate;

  /// [statusDateElement] (_statusDate): Extensions for statusDate;
  @override
  @JsonKey(name: '_statusDate')
  final PrimitiveElement? statusDateElement;

  /// [containedItemQuantity] A total of the complete count of contained items of a particular type/form, independent of sub-packaging or organization. This can be considered as the pack size. This attribute differs from containedItem.amount in that it can give a single aggregated count of all tablet types in a pack, even when these are different manufactured items. For example a pill pack of 21 tablets plus 7 sugar tablets, can be denoted here as '28 tablets'. This attribute is repeatable so that the different item types in one pack type can be counted (e.g. a count of vials and count of syringes). Each repeat must have different units, so that it is clear what the different sets of counted items are, and it is not intended to allow different counts of similar items (e.g. not '2 tubes and 3 tubes'). Repeats are not to be used to represent different pack sizes (e.g. 20 pack vs. 50 pack) - which would be different instances of this resource.;
  final List<Quantity>? _containedItemQuantity;

  /// [containedItemQuantity] A total of the complete count of contained items of a particular type/form, independent of sub-packaging or organization. This can be considered as the pack size. This attribute differs from containedItem.amount in that it can give a single aggregated count of all tablet types in a pack, even when these are different manufactured items. For example a pill pack of 21 tablets plus 7 sugar tablets, can be denoted here as '28 tablets'. This attribute is repeatable so that the different item types in one pack type can be counted (e.g. a count of vials and count of syringes). Each repeat must have different units, so that it is clear what the different sets of counted items are, and it is not intended to allow different counts of similar items (e.g. not '2 tubes and 3 tubes'). Repeats are not to be used to represent different pack sizes (e.g. 20 pack vs. 50 pack) - which would be different instances of this resource.;
  @override
  List<Quantity>? get containedItemQuantity {
    final value = _containedItemQuantity;
    if (value == null) return null;
    if (_containedItemQuantity is EqualUnmodifiableListView)
      return _containedItemQuantity;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [description] Textual description. Note that this is not the name of the package or product.;
  @override
  final FhirMarkdown? description;

  /// [descriptionElement] (_description): Extensions for description;
  @override
  @JsonKey(name: '_description')
  final PrimitiveElement? descriptionElement;

  /// [legalStatusOfSupply] The legal status of supply of the packaged item as classified by the regulator.;
  final List<PackagedProductDefinitionLegalStatusOfSupply>?
      _legalStatusOfSupply;

  /// [legalStatusOfSupply] The legal status of supply of the packaged item as classified by the regulator.;
  @override
  List<PackagedProductDefinitionLegalStatusOfSupply>? get legalStatusOfSupply {
    final value = _legalStatusOfSupply;
    if (value == null) return null;
    if (_legalStatusOfSupply is EqualUnmodifiableListView)
      return _legalStatusOfSupply;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [marketingStatus] Allows specifying that an item is on the market for sale, or that it is not available, and the dates and locations associated.;
  final List<MarketingStatus>? _marketingStatus;

  /// [marketingStatus] Allows specifying that an item is on the market for sale, or that it is not available, and the dates and locations associated.;
  @override
  List<MarketingStatus>? get marketingStatus {
    final value = _marketingStatus;
    if (value == null) return null;
    if (_marketingStatus is EqualUnmodifiableListView) return _marketingStatus;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [characteristic] Allows the key features to be recorded, such as "hospital pack", "nurse prescribable", "calendar pack".;
  final List<CodeableConcept>? _characteristic;

  /// [characteristic] Allows the key features to be recorded, such as "hospital pack", "nurse prescribable", "calendar pack".;
  @override
  List<CodeableConcept>? get characteristic {
    final value = _characteristic;
    if (value == null) return null;
    if (_characteristic is EqualUnmodifiableListView) return _characteristic;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [copackagedIndicator] Identifies if the package contains different items, such as when a drug product is supplied with another item e.g. a diluent or adjuvant.;
  @override
  final FhirBoolean? copackagedIndicator;

  /// [copackagedIndicatorElement] (_copackagedIndicator): Extensions for copackagedIndicator;
  @override
  @JsonKey(name: '_copackagedIndicator')
  final PrimitiveElement? copackagedIndicatorElement;

  /// [manufacturer] Manufacturer of this package type. When there are multiple it means these are all possible manufacturers.;
  final List<Reference>? _manufacturer;

  /// [manufacturer] Manufacturer of this package type. When there are multiple it means these are all possible manufacturers.;
  @override
  List<Reference>? get manufacturer {
    final value = _manufacturer;
    if (value == null) return null;
    if (_manufacturer is EqualUnmodifiableListView) return _manufacturer;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [package] A packaging item, as a container for medically related items, possibly with other packaging items within, or a packaging component, such as bottle cap (which is not a device or a medication manufactured item).;
  @override
  final PackagedProductDefinitionPackage? package;

  @override
  String toString() {
    return 'PackagedProductDefinition(resourceType: $resourceType, id: $id, meta: $meta, implicitRules: $implicitRules, implicitRulesElement: $implicitRulesElement, language: $language, languageElement: $languageElement, text: $text, contained: $contained, extension_: $extension_, modifierExtension: $modifierExtension, identifier: $identifier, name: $name, nameElement: $nameElement, type: $type, packageFor: $packageFor, status: $status, statusDate: $statusDate, statusDateElement: $statusDateElement, containedItemQuantity: $containedItemQuantity, description: $description, descriptionElement: $descriptionElement, legalStatusOfSupply: $legalStatusOfSupply, marketingStatus: $marketingStatus, characteristic: $characteristic, copackagedIndicator: $copackagedIndicator, copackagedIndicatorElement: $copackagedIndicatorElement, manufacturer: $manufacturer, package: $package)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PackagedProductDefinitionImpl &&
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
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nameElement, nameElement) ||
                other.nameElement == nameElement) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._packageFor, _packageFor) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusDate, statusDate) ||
                other.statusDate == statusDate) &&
            (identical(other.statusDateElement, statusDateElement) ||
                other.statusDateElement == statusDateElement) &&
            const DeepCollectionEquality()
                .equals(other._containedItemQuantity, _containedItemQuantity) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.descriptionElement, descriptionElement) ||
                other.descriptionElement == descriptionElement) &&
            const DeepCollectionEquality()
                .equals(other._legalStatusOfSupply, _legalStatusOfSupply) &&
            const DeepCollectionEquality()
                .equals(other._marketingStatus, _marketingStatus) &&
            const DeepCollectionEquality()
                .equals(other._characteristic, _characteristic) &&
            (identical(other.copackagedIndicator, copackagedIndicator) ||
                other.copackagedIndicator == copackagedIndicator) &&
            (identical(other.copackagedIndicatorElement,
                    copackagedIndicatorElement) ||
                other.copackagedIndicatorElement ==
                    copackagedIndicatorElement) &&
            const DeepCollectionEquality()
                .equals(other._manufacturer, _manufacturer) &&
            (identical(other.package, package) || other.package == package));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
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
        name,
        nameElement,
        type,
        const DeepCollectionEquality().hash(_packageFor),
        status,
        statusDate,
        statusDateElement,
        const DeepCollectionEquality().hash(_containedItemQuantity),
        description,
        descriptionElement,
        const DeepCollectionEquality().hash(_legalStatusOfSupply),
        const DeepCollectionEquality().hash(_marketingStatus),
        const DeepCollectionEquality().hash(_characteristic),
        copackagedIndicator,
        copackagedIndicatorElement,
        const DeepCollectionEquality().hash(_manufacturer),
        package
      ]);

  /// Create a copy of PackagedProductDefinition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PackagedProductDefinitionImplCopyWith<_$PackagedProductDefinitionImpl>
      get copyWith => __$$PackagedProductDefinitionImplCopyWithImpl<
          _$PackagedProductDefinitionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PackagedProductDefinitionImplToJson(
      this,
    );
  }
}

abstract class _PackagedProductDefinition extends PackagedProductDefinition {
  factory _PackagedProductDefinition(
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
      final String? name,
      @JsonKey(name: '_name') final PrimitiveElement? nameElement,
      final CodeableConcept? type,
      final List<Reference>? packageFor,
      final CodeableConcept? status,
      final FhirDateTime? statusDate,
      @JsonKey(name: '_statusDate') final PrimitiveElement? statusDateElement,
      final List<Quantity>? containedItemQuantity,
      final FhirMarkdown? description,
      @JsonKey(name: '_description') final PrimitiveElement? descriptionElement,
      final List<PackagedProductDefinitionLegalStatusOfSupply>?
          legalStatusOfSupply,
      final List<MarketingStatus>? marketingStatus,
      final List<CodeableConcept>? characteristic,
      final FhirBoolean? copackagedIndicator,
      @JsonKey(name: '_copackagedIndicator')
      final PrimitiveElement? copackagedIndicatorElement,
      final List<Reference>? manufacturer,
      final PackagedProductDefinitionPackage?
          package}) = _$PackagedProductDefinitionImpl;
  _PackagedProductDefinition._() : super._();

  factory _PackagedProductDefinition.fromJson(Map<String, dynamic> json) =
      _$PackagedProductDefinitionImpl.fromJson;

  @override
  R4ResourceType get resourceType;

  /// [id] The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.;
  @override
  String? get id;

  /// [meta] The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.;
  @override
  FhirMeta? get meta;

  /// [implicitRules] A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.;
  @override
  FhirUri? get implicitRules;

  /// [implicitRulesElement] (_implicitRules): Extensions for implicitRules;
  @override
  @JsonKey(name: '_implicitRules')
  PrimitiveElement? get implicitRulesElement;

  /// [language] The base language in which the resource is written.;
  @override
  FhirCode? get language;

  /// [languageElement] (_language): Extensions for language;
  @override
  @JsonKey(name: '_language')
  PrimitiveElement? get languageElement;

  /// [text] A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it "clinically safe" for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.;
  @override
  Narrative? get text;

  /// [contained] These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, nor can they have their own independent transaction scope.;
  @override
  List<Resource>? get contained;

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the resource. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  @override
  List<FhirExtension>? get modifierExtension;

  /// [identifier] A unique identifier for this package as whole - not the the content of the package. Unique instance identifiers assigned to a package by manufacturers, regulators, drug catalogue custodians or other organizations.;
  @override
  List<Identifier>? get identifier;

  /// [name] A name for this package. Typically what it would be listed as in a drug formulary or catalogue, inventory etc.;
  @override
  String? get name;

  /// [nameElement] (_name): Extensions for name;
  @override
  @JsonKey(name: '_name')
  PrimitiveElement? get nameElement;

  /// [type] A high level category e.g. medicinal product, raw material, shipping/transport container, etc.;
  @override
  CodeableConcept? get type;

  /// [packageFor] The product this package model relates to, not the contents of the package (for which see package.containedItem).;
  @override
  List<Reference>? get packageFor;

  /// [status] The status within the lifecycle of this item. A high level status, this is not intended to duplicate details carried elsewhere such as legal status, or authorization or marketing status.;
  @override
  CodeableConcept? get status;

  /// [statusDate] The date at which the given status became applicable.;
  @override
  FhirDateTime? get statusDate;

  /// [statusDateElement] (_statusDate): Extensions for statusDate;
  @override
  @JsonKey(name: '_statusDate')
  PrimitiveElement? get statusDateElement;

  /// [containedItemQuantity] A total of the complete count of contained items of a particular type/form, independent of sub-packaging or organization. This can be considered as the pack size. This attribute differs from containedItem.amount in that it can give a single aggregated count of all tablet types in a pack, even when these are different manufactured items. For example a pill pack of 21 tablets plus 7 sugar tablets, can be denoted here as '28 tablets'. This attribute is repeatable so that the different item types in one pack type can be counted (e.g. a count of vials and count of syringes). Each repeat must have different units, so that it is clear what the different sets of counted items are, and it is not intended to allow different counts of similar items (e.g. not '2 tubes and 3 tubes'). Repeats are not to be used to represent different pack sizes (e.g. 20 pack vs. 50 pack) - which would be different instances of this resource.;
  @override
  List<Quantity>? get containedItemQuantity;

  /// [description] Textual description. Note that this is not the name of the package or product.;
  @override
  FhirMarkdown? get description;

  /// [descriptionElement] (_description): Extensions for description;
  @override
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement;

  /// [legalStatusOfSupply] The legal status of supply of the packaged item as classified by the regulator.;
  @override
  List<PackagedProductDefinitionLegalStatusOfSupply>? get legalStatusOfSupply;

  /// [marketingStatus] Allows specifying that an item is on the market for sale, or that it is not available, and the dates and locations associated.;
  @override
  List<MarketingStatus>? get marketingStatus;

  /// [characteristic] Allows the key features to be recorded, such as "hospital pack", "nurse prescribable", "calendar pack".;
  @override
  List<CodeableConcept>? get characteristic;

  /// [copackagedIndicator] Identifies if the package contains different items, such as when a drug product is supplied with another item e.g. a diluent or adjuvant.;
  @override
  FhirBoolean? get copackagedIndicator;

  /// [copackagedIndicatorElement] (_copackagedIndicator): Extensions for copackagedIndicator;
  @override
  @JsonKey(name: '_copackagedIndicator')
  PrimitiveElement? get copackagedIndicatorElement;

  /// [manufacturer] Manufacturer of this package type. When there are multiple it means these are all possible manufacturers.;
  @override
  List<Reference>? get manufacturer;

  /// [package] A packaging item, as a container for medically related items, possibly with other packaging items within, or a packaging component, such as bottle cap (which is not a device or a medication manufactured item).;
  @override
  PackagedProductDefinitionPackage? get package;

  /// Create a copy of PackagedProductDefinition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PackagedProductDefinitionImplCopyWith<_$PackagedProductDefinitionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PackagedProductDefinitionLegalStatusOfSupply
    _$PackagedProductDefinitionLegalStatusOfSupplyFromJson(
        Map<String, dynamic> json) {
  return _PackagedProductDefinitionLegalStatusOfSupply.fromJson(json);
}

/// @nodoc
mixin _$PackagedProductDefinitionLegalStatusOfSupply {
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [code] The actual status of supply. Conveys in what situation this package type may be supplied for use.;
  CodeableConcept? get code => throw _privateConstructorUsedError;

  /// [jurisdiction] The place where the legal status of supply applies. When not specified, this indicates it is unknown in this context.;
  CodeableConcept? get jurisdiction => throw _privateConstructorUsedError;

  /// Serializes this PackagedProductDefinitionLegalStatusOfSupply to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PackagedProductDefinitionLegalStatusOfSupply
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PackagedProductDefinitionLegalStatusOfSupplyCopyWith<
          PackagedProductDefinitionLegalStatusOfSupply>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackagedProductDefinitionLegalStatusOfSupplyCopyWith<$Res> {
  factory $PackagedProductDefinitionLegalStatusOfSupplyCopyWith(
          PackagedProductDefinitionLegalStatusOfSupply value,
          $Res Function(PackagedProductDefinitionLegalStatusOfSupply) then) =
      _$PackagedProductDefinitionLegalStatusOfSupplyCopyWithImpl<$Res,
          PackagedProductDefinitionLegalStatusOfSupply>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? code,
      CodeableConcept? jurisdiction});

  $CodeableConceptCopyWith<$Res>? get code;
  $CodeableConceptCopyWith<$Res>? get jurisdiction;
}

/// @nodoc
class _$PackagedProductDefinitionLegalStatusOfSupplyCopyWithImpl<$Res,
        $Val extends PackagedProductDefinitionLegalStatusOfSupply>
    implements $PackagedProductDefinitionLegalStatusOfSupplyCopyWith<$Res> {
  _$PackagedProductDefinitionLegalStatusOfSupplyCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PackagedProductDefinitionLegalStatusOfSupply
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? code = freezed,
    Object? jurisdiction = freezed,
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
      jurisdiction: freezed == jurisdiction
          ? _value.jurisdiction
          : jurisdiction // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
    ) as $Val);
  }

  /// Create a copy of PackagedProductDefinitionLegalStatusOfSupply
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of PackagedProductDefinitionLegalStatusOfSupply
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get jurisdiction {
    if (_value.jurisdiction == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.jurisdiction!, (value) {
      return _then(_value.copyWith(jurisdiction: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PackagedProductDefinitionLegalStatusOfSupplyImplCopyWith<$Res>
    implements $PackagedProductDefinitionLegalStatusOfSupplyCopyWith<$Res> {
  factory _$$PackagedProductDefinitionLegalStatusOfSupplyImplCopyWith(
          _$PackagedProductDefinitionLegalStatusOfSupplyImpl value,
          $Res Function(_$PackagedProductDefinitionLegalStatusOfSupplyImpl)
              then) =
      __$$PackagedProductDefinitionLegalStatusOfSupplyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableConcept? code,
      CodeableConcept? jurisdiction});

  @override
  $CodeableConceptCopyWith<$Res>? get code;
  @override
  $CodeableConceptCopyWith<$Res>? get jurisdiction;
}

/// @nodoc
class __$$PackagedProductDefinitionLegalStatusOfSupplyImplCopyWithImpl<$Res>
    extends _$PackagedProductDefinitionLegalStatusOfSupplyCopyWithImpl<$Res,
        _$PackagedProductDefinitionLegalStatusOfSupplyImpl>
    implements
        _$$PackagedProductDefinitionLegalStatusOfSupplyImplCopyWith<$Res> {
  __$$PackagedProductDefinitionLegalStatusOfSupplyImplCopyWithImpl(
      _$PackagedProductDefinitionLegalStatusOfSupplyImpl _value,
      $Res Function(_$PackagedProductDefinitionLegalStatusOfSupplyImpl) _then)
      : super(_value, _then);

  /// Create a copy of PackagedProductDefinitionLegalStatusOfSupply
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? code = freezed,
    Object? jurisdiction = freezed,
  }) {
    return _then(_$PackagedProductDefinitionLegalStatusOfSupplyImpl(
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
      jurisdiction: freezed == jurisdiction
          ? _value.jurisdiction
          : jurisdiction // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PackagedProductDefinitionLegalStatusOfSupplyImpl
    extends _PackagedProductDefinitionLegalStatusOfSupply {
  _$PackagedProductDefinitionLegalStatusOfSupplyImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.code,
      this.jurisdiction})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$PackagedProductDefinitionLegalStatusOfSupplyImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PackagedProductDefinitionLegalStatusOfSupplyImplFromJson(json);

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

  /// [code] The actual status of supply. Conveys in what situation this package type may be supplied for use.;
  @override
  final CodeableConcept? code;

  /// [jurisdiction] The place where the legal status of supply applies. When not specified, this indicates it is unknown in this context.;
  @override
  final CodeableConcept? jurisdiction;

  @override
  String toString() {
    return 'PackagedProductDefinitionLegalStatusOfSupply(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, code: $code, jurisdiction: $jurisdiction)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PackagedProductDefinitionLegalStatusOfSupplyImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.jurisdiction, jurisdiction) ||
                other.jurisdiction == jurisdiction));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      code,
      jurisdiction);

  /// Create a copy of PackagedProductDefinitionLegalStatusOfSupply
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PackagedProductDefinitionLegalStatusOfSupplyImplCopyWith<
          _$PackagedProductDefinitionLegalStatusOfSupplyImpl>
      get copyWith =>
          __$$PackagedProductDefinitionLegalStatusOfSupplyImplCopyWithImpl<
                  _$PackagedProductDefinitionLegalStatusOfSupplyImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PackagedProductDefinitionLegalStatusOfSupplyImplToJson(
      this,
    );
  }
}

abstract class _PackagedProductDefinitionLegalStatusOfSupply
    extends PackagedProductDefinitionLegalStatusOfSupply {
  factory _PackagedProductDefinitionLegalStatusOfSupply(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final CodeableConcept? code,
          final CodeableConcept? jurisdiction}) =
      _$PackagedProductDefinitionLegalStatusOfSupplyImpl;
  _PackagedProductDefinitionLegalStatusOfSupply._() : super._();

  factory _PackagedProductDefinitionLegalStatusOfSupply.fromJson(
          Map<String, dynamic> json) =
      _$PackagedProductDefinitionLegalStatusOfSupplyImpl.fromJson;

  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  @override
  String? get id;

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  @override
  List<FhirExtension>? get modifierExtension;

  /// [code] The actual status of supply. Conveys in what situation this package type may be supplied for use.;
  @override
  CodeableConcept? get code;

  /// [jurisdiction] The place where the legal status of supply applies. When not specified, this indicates it is unknown in this context.;
  @override
  CodeableConcept? get jurisdiction;

  /// Create a copy of PackagedProductDefinitionLegalStatusOfSupply
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PackagedProductDefinitionLegalStatusOfSupplyImplCopyWith<
          _$PackagedProductDefinitionLegalStatusOfSupplyImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PackagedProductDefinitionPackage _$PackagedProductDefinitionPackageFromJson(
    Map<String, dynamic> json) {
  return _PackagedProductDefinitionPackage.fromJson(json);
}

/// @nodoc
mixin _$PackagedProductDefinitionPackage {
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [identifier] A business identifier that is specific to this particular part of the packaging, often assigned by the manufacturer. Including possibly Data Carrier Identifier (a GS1 barcode).;
  List<Identifier>? get identifier => throw _privateConstructorUsedError;

  /// [type] The physical type of the container of the items.;
  CodeableConcept? get type => throw _privateConstructorUsedError;

  /// [quantity] The quantity of packaging items contained at this layer of the package. This does not relate to the number of contained items but relates solely to the number of packaging items. When looking at the outermost layer it is always 1. If there are two boxes within, at the next layer it would be 2.;
  FhirInteger? get quantity => throw _privateConstructorUsedError;

  /// [quantityElement] (_quantity): Extensions for quantity;
  @JsonKey(name: '_quantity')
  PrimitiveElement? get quantityElement => throw _privateConstructorUsedError;

  /// [material] Material type of the package item.;
  List<CodeableConcept>? get material => throw _privateConstructorUsedError;

  /// [alternateMaterial] A possible alternate material for this part of the packaging, that is allowed to be used instead of the usual material (e.g. different types of plastic for a blister sleeve).;
  List<CodeableConcept>? get alternateMaterial =>
      throw _privateConstructorUsedError;

  /// [shelfLifeStorage] Shelf Life and storage information.;
  List<PackagedProductDefinitionShelfLifeStorage>? get shelfLifeStorage =>
      throw _privateConstructorUsedError;

  /// [manufacturer] Manufacturer of this packaging item. When there are multiple values each one is a potential manufacturer of this packaging item.;
  List<Reference>? get manufacturer => throw _privateConstructorUsedError;

  /// [property] General characteristics of this item.;
  List<PackagedProductDefinitionProperty>? get property =>
      throw _privateConstructorUsedError;

  /// [containedItem] The item(s) within the packaging.;
  List<PackagedProductDefinitionContainedItem>? get containedItem =>
      throw _privateConstructorUsedError;

  /// [package] Allows containers (and parts of containers) parwithin containers, still a single packaged product.  See also PackagedProductDefinition.package.containedItem.item(PackagedProductDefinition).;
  List<PackagedProductDefinitionPackage>? get package =>
      throw _privateConstructorUsedError;

  /// Serializes this PackagedProductDefinitionPackage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PackagedProductDefinitionPackage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PackagedProductDefinitionPackageCopyWith<PackagedProductDefinitionPackage>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackagedProductDefinitionPackageCopyWith<$Res> {
  factory $PackagedProductDefinitionPackageCopyWith(
          PackagedProductDefinitionPackage value,
          $Res Function(PackagedProductDefinitionPackage) then) =
      _$PackagedProductDefinitionPackageCopyWithImpl<$Res,
          PackagedProductDefinitionPackage>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<Identifier>? identifier,
      CodeableConcept? type,
      FhirInteger? quantity,
      @JsonKey(name: '_quantity') PrimitiveElement? quantityElement,
      List<CodeableConcept>? material,
      List<CodeableConcept>? alternateMaterial,
      List<PackagedProductDefinitionShelfLifeStorage>? shelfLifeStorage,
      List<Reference>? manufacturer,
      List<PackagedProductDefinitionProperty>? property,
      List<PackagedProductDefinitionContainedItem>? containedItem,
      List<PackagedProductDefinitionPackage>? package});

  $CodeableConceptCopyWith<$Res>? get type;
}

/// @nodoc
class _$PackagedProductDefinitionPackageCopyWithImpl<$Res,
        $Val extends PackagedProductDefinitionPackage>
    implements $PackagedProductDefinitionPackageCopyWith<$Res> {
  _$PackagedProductDefinitionPackageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PackagedProductDefinitionPackage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? identifier = freezed,
    Object? type = freezed,
    Object? quantity = freezed,
    Object? quantityElement = freezed,
    Object? material = freezed,
    Object? alternateMaterial = freezed,
    Object? shelfLifeStorage = freezed,
    Object? manufacturer = freezed,
    Object? property = freezed,
    Object? containedItem = freezed,
    Object? package = freezed,
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
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as List<Identifier>?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as FhirInteger?,
      quantityElement: freezed == quantityElement
          ? _value.quantityElement
          : quantityElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      material: freezed == material
          ? _value.material
          : material // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      alternateMaterial: freezed == alternateMaterial
          ? _value.alternateMaterial
          : alternateMaterial // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      shelfLifeStorage: freezed == shelfLifeStorage
          ? _value.shelfLifeStorage
          : shelfLifeStorage // ignore: cast_nullable_to_non_nullable
              as List<PackagedProductDefinitionShelfLifeStorage>?,
      manufacturer: freezed == manufacturer
          ? _value.manufacturer
          : manufacturer // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      property: freezed == property
          ? _value.property
          : property // ignore: cast_nullable_to_non_nullable
              as List<PackagedProductDefinitionProperty>?,
      containedItem: freezed == containedItem
          ? _value.containedItem
          : containedItem // ignore: cast_nullable_to_non_nullable
              as List<PackagedProductDefinitionContainedItem>?,
      package: freezed == package
          ? _value.package
          : package // ignore: cast_nullable_to_non_nullable
              as List<PackagedProductDefinitionPackage>?,
    ) as $Val);
  }

  /// Create a copy of PackagedProductDefinitionPackage
  /// with the given fields replaced by the non-null parameter values.
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
}

/// @nodoc
abstract class _$$PackagedProductDefinitionPackageImplCopyWith<$Res>
    implements $PackagedProductDefinitionPackageCopyWith<$Res> {
  factory _$$PackagedProductDefinitionPackageImplCopyWith(
          _$PackagedProductDefinitionPackageImpl value,
          $Res Function(_$PackagedProductDefinitionPackageImpl) then) =
      __$$PackagedProductDefinitionPackageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      List<Identifier>? identifier,
      CodeableConcept? type,
      FhirInteger? quantity,
      @JsonKey(name: '_quantity') PrimitiveElement? quantityElement,
      List<CodeableConcept>? material,
      List<CodeableConcept>? alternateMaterial,
      List<PackagedProductDefinitionShelfLifeStorage>? shelfLifeStorage,
      List<Reference>? manufacturer,
      List<PackagedProductDefinitionProperty>? property,
      List<PackagedProductDefinitionContainedItem>? containedItem,
      List<PackagedProductDefinitionPackage>? package});

  @override
  $CodeableConceptCopyWith<$Res>? get type;
}

/// @nodoc
class __$$PackagedProductDefinitionPackageImplCopyWithImpl<$Res>
    extends _$PackagedProductDefinitionPackageCopyWithImpl<$Res,
        _$PackagedProductDefinitionPackageImpl>
    implements _$$PackagedProductDefinitionPackageImplCopyWith<$Res> {
  __$$PackagedProductDefinitionPackageImplCopyWithImpl(
      _$PackagedProductDefinitionPackageImpl _value,
      $Res Function(_$PackagedProductDefinitionPackageImpl) _then)
      : super(_value, _then);

  /// Create a copy of PackagedProductDefinitionPackage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? identifier = freezed,
    Object? type = freezed,
    Object? quantity = freezed,
    Object? quantityElement = freezed,
    Object? material = freezed,
    Object? alternateMaterial = freezed,
    Object? shelfLifeStorage = freezed,
    Object? manufacturer = freezed,
    Object? property = freezed,
    Object? containedItem = freezed,
    Object? package = freezed,
  }) {
    return _then(_$PackagedProductDefinitionPackageImpl(
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
      identifier: freezed == identifier
          ? _value._identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as List<Identifier>?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as FhirInteger?,
      quantityElement: freezed == quantityElement
          ? _value.quantityElement
          : quantityElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      material: freezed == material
          ? _value._material
          : material // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      alternateMaterial: freezed == alternateMaterial
          ? _value._alternateMaterial
          : alternateMaterial // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      shelfLifeStorage: freezed == shelfLifeStorage
          ? _value._shelfLifeStorage
          : shelfLifeStorage // ignore: cast_nullable_to_non_nullable
              as List<PackagedProductDefinitionShelfLifeStorage>?,
      manufacturer: freezed == manufacturer
          ? _value._manufacturer
          : manufacturer // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      property: freezed == property
          ? _value._property
          : property // ignore: cast_nullable_to_non_nullable
              as List<PackagedProductDefinitionProperty>?,
      containedItem: freezed == containedItem
          ? _value._containedItem
          : containedItem // ignore: cast_nullable_to_non_nullable
              as List<PackagedProductDefinitionContainedItem>?,
      package: freezed == package
          ? _value._package
          : package // ignore: cast_nullable_to_non_nullable
              as List<PackagedProductDefinitionPackage>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PackagedProductDefinitionPackageImpl
    extends _PackagedProductDefinitionPackage {
  _$PackagedProductDefinitionPackageImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final List<Identifier>? identifier,
      this.type,
      this.quantity,
      @JsonKey(name: '_quantity') this.quantityElement,
      final List<CodeableConcept>? material,
      final List<CodeableConcept>? alternateMaterial,
      final List<PackagedProductDefinitionShelfLifeStorage>? shelfLifeStorage,
      final List<Reference>? manufacturer,
      final List<PackagedProductDefinitionProperty>? property,
      final List<PackagedProductDefinitionContainedItem>? containedItem,
      final List<PackagedProductDefinitionPackage>? package})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _identifier = identifier,
        _material = material,
        _alternateMaterial = alternateMaterial,
        _shelfLifeStorage = shelfLifeStorage,
        _manufacturer = manufacturer,
        _property = property,
        _containedItem = containedItem,
        _package = package,
        super._();

  factory _$PackagedProductDefinitionPackageImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PackagedProductDefinitionPackageImplFromJson(json);

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

  /// [identifier] A business identifier that is specific to this particular part of the packaging, often assigned by the manufacturer. Including possibly Data Carrier Identifier (a GS1 barcode).;
  final List<Identifier>? _identifier;

  /// [identifier] A business identifier that is specific to this particular part of the packaging, often assigned by the manufacturer. Including possibly Data Carrier Identifier (a GS1 barcode).;
  @override
  List<Identifier>? get identifier {
    final value = _identifier;
    if (value == null) return null;
    if (_identifier is EqualUnmodifiableListView) return _identifier;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [type] The physical type of the container of the items.;
  @override
  final CodeableConcept? type;

  /// [quantity] The quantity of packaging items contained at this layer of the package. This does not relate to the number of contained items but relates solely to the number of packaging items. When looking at the outermost layer it is always 1. If there are two boxes within, at the next layer it would be 2.;
  @override
  final FhirInteger? quantity;

  /// [quantityElement] (_quantity): Extensions for quantity;
  @override
  @JsonKey(name: '_quantity')
  final PrimitiveElement? quantityElement;

  /// [material] Material type of the package item.;
  final List<CodeableConcept>? _material;

  /// [material] Material type of the package item.;
  @override
  List<CodeableConcept>? get material {
    final value = _material;
    if (value == null) return null;
    if (_material is EqualUnmodifiableListView) return _material;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [alternateMaterial] A possible alternate material for this part of the packaging, that is allowed to be used instead of the usual material (e.g. different types of plastic for a blister sleeve).;
  final List<CodeableConcept>? _alternateMaterial;

  /// [alternateMaterial] A possible alternate material for this part of the packaging, that is allowed to be used instead of the usual material (e.g. different types of plastic for a blister sleeve).;
  @override
  List<CodeableConcept>? get alternateMaterial {
    final value = _alternateMaterial;
    if (value == null) return null;
    if (_alternateMaterial is EqualUnmodifiableListView)
      return _alternateMaterial;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [shelfLifeStorage] Shelf Life and storage information.;
  final List<PackagedProductDefinitionShelfLifeStorage>? _shelfLifeStorage;

  /// [shelfLifeStorage] Shelf Life and storage information.;
  @override
  List<PackagedProductDefinitionShelfLifeStorage>? get shelfLifeStorage {
    final value = _shelfLifeStorage;
    if (value == null) return null;
    if (_shelfLifeStorage is EqualUnmodifiableListView)
      return _shelfLifeStorage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [manufacturer] Manufacturer of this packaging item. When there are multiple values each one is a potential manufacturer of this packaging item.;
  final List<Reference>? _manufacturer;

  /// [manufacturer] Manufacturer of this packaging item. When there are multiple values each one is a potential manufacturer of this packaging item.;
  @override
  List<Reference>? get manufacturer {
    final value = _manufacturer;
    if (value == null) return null;
    if (_manufacturer is EqualUnmodifiableListView) return _manufacturer;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [property] General characteristics of this item.;
  final List<PackagedProductDefinitionProperty>? _property;

  /// [property] General characteristics of this item.;
  @override
  List<PackagedProductDefinitionProperty>? get property {
    final value = _property;
    if (value == null) return null;
    if (_property is EqualUnmodifiableListView) return _property;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [containedItem] The item(s) within the packaging.;
  final List<PackagedProductDefinitionContainedItem>? _containedItem;

  /// [containedItem] The item(s) within the packaging.;
  @override
  List<PackagedProductDefinitionContainedItem>? get containedItem {
    final value = _containedItem;
    if (value == null) return null;
    if (_containedItem is EqualUnmodifiableListView) return _containedItem;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [package] Allows containers (and parts of containers) parwithin containers, still a single packaged product.  See also PackagedProductDefinition.package.containedItem.item(PackagedProductDefinition).;
  final List<PackagedProductDefinitionPackage>? _package;

  /// [package] Allows containers (and parts of containers) parwithin containers, still a single packaged product.  See also PackagedProductDefinition.package.containedItem.item(PackagedProductDefinition).;
  @override
  List<PackagedProductDefinitionPackage>? get package {
    final value = _package;
    if (value == null) return null;
    if (_package is EqualUnmodifiableListView) return _package;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PackagedProductDefinitionPackage(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, identifier: $identifier, type: $type, quantity: $quantity, quantityElement: $quantityElement, material: $material, alternateMaterial: $alternateMaterial, shelfLifeStorage: $shelfLifeStorage, manufacturer: $manufacturer, property: $property, containedItem: $containedItem, package: $package)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PackagedProductDefinitionPackageImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            const DeepCollectionEquality()
                .equals(other._identifier, _identifier) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.quantityElement, quantityElement) ||
                other.quantityElement == quantityElement) &&
            const DeepCollectionEquality().equals(other._material, _material) &&
            const DeepCollectionEquality()
                .equals(other._alternateMaterial, _alternateMaterial) &&
            const DeepCollectionEquality()
                .equals(other._shelfLifeStorage, _shelfLifeStorage) &&
            const DeepCollectionEquality()
                .equals(other._manufacturer, _manufacturer) &&
            const DeepCollectionEquality().equals(other._property, _property) &&
            const DeepCollectionEquality()
                .equals(other._containedItem, _containedItem) &&
            const DeepCollectionEquality().equals(other._package, _package));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      const DeepCollectionEquality().hash(_identifier),
      type,
      quantity,
      quantityElement,
      const DeepCollectionEquality().hash(_material),
      const DeepCollectionEquality().hash(_alternateMaterial),
      const DeepCollectionEquality().hash(_shelfLifeStorage),
      const DeepCollectionEquality().hash(_manufacturer),
      const DeepCollectionEquality().hash(_property),
      const DeepCollectionEquality().hash(_containedItem),
      const DeepCollectionEquality().hash(_package));

  /// Create a copy of PackagedProductDefinitionPackage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PackagedProductDefinitionPackageImplCopyWith<
          _$PackagedProductDefinitionPackageImpl>
      get copyWith => __$$PackagedProductDefinitionPackageImplCopyWithImpl<
          _$PackagedProductDefinitionPackageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PackagedProductDefinitionPackageImplToJson(
      this,
    );
  }
}

abstract class _PackagedProductDefinitionPackage
    extends PackagedProductDefinitionPackage {
  factory _PackagedProductDefinitionPackage(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final List<Identifier>? identifier,
      final CodeableConcept? type,
      final FhirInteger? quantity,
      @JsonKey(name: '_quantity') final PrimitiveElement? quantityElement,
      final List<CodeableConcept>? material,
      final List<CodeableConcept>? alternateMaterial,
      final List<PackagedProductDefinitionShelfLifeStorage>? shelfLifeStorage,
      final List<Reference>? manufacturer,
      final List<PackagedProductDefinitionProperty>? property,
      final List<PackagedProductDefinitionContainedItem>? containedItem,
      final List<PackagedProductDefinitionPackage>?
          package}) = _$PackagedProductDefinitionPackageImpl;
  _PackagedProductDefinitionPackage._() : super._();

  factory _PackagedProductDefinitionPackage.fromJson(
          Map<String, dynamic> json) =
      _$PackagedProductDefinitionPackageImpl.fromJson;

  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  @override
  String? get id;

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  @override
  List<FhirExtension>? get modifierExtension;

  /// [identifier] A business identifier that is specific to this particular part of the packaging, often assigned by the manufacturer. Including possibly Data Carrier Identifier (a GS1 barcode).;
  @override
  List<Identifier>? get identifier;

  /// [type] The physical type of the container of the items.;
  @override
  CodeableConcept? get type;

  /// [quantity] The quantity of packaging items contained at this layer of the package. This does not relate to the number of contained items but relates solely to the number of packaging items. When looking at the outermost layer it is always 1. If there are two boxes within, at the next layer it would be 2.;
  @override
  FhirInteger? get quantity;

  /// [quantityElement] (_quantity): Extensions for quantity;
  @override
  @JsonKey(name: '_quantity')
  PrimitiveElement? get quantityElement;

  /// [material] Material type of the package item.;
  @override
  List<CodeableConcept>? get material;

  /// [alternateMaterial] A possible alternate material for this part of the packaging, that is allowed to be used instead of the usual material (e.g. different types of plastic for a blister sleeve).;
  @override
  List<CodeableConcept>? get alternateMaterial;

  /// [shelfLifeStorage] Shelf Life and storage information.;
  @override
  List<PackagedProductDefinitionShelfLifeStorage>? get shelfLifeStorage;

  /// [manufacturer] Manufacturer of this packaging item. When there are multiple values each one is a potential manufacturer of this packaging item.;
  @override
  List<Reference>? get manufacturer;

  /// [property] General characteristics of this item.;
  @override
  List<PackagedProductDefinitionProperty>? get property;

  /// [containedItem] The item(s) within the packaging.;
  @override
  List<PackagedProductDefinitionContainedItem>? get containedItem;

  /// [package] Allows containers (and parts of containers) parwithin containers, still a single packaged product.  See also PackagedProductDefinition.package.containedItem.item(PackagedProductDefinition).;
  @override
  List<PackagedProductDefinitionPackage>? get package;

  /// Create a copy of PackagedProductDefinitionPackage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PackagedProductDefinitionPackageImplCopyWith<
          _$PackagedProductDefinitionPackageImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PackagedProductDefinitionShelfLifeStorage
    _$PackagedProductDefinitionShelfLifeStorageFromJson(
        Map<String, dynamic> json) {
  return _PackagedProductDefinitionShelfLifeStorage.fromJson(json);
}

/// @nodoc
mixin _$PackagedProductDefinitionShelfLifeStorage {
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

  /// [identifier] Unique identifier for the packaged Medicinal Product.
  Identifier? get identifier => throw _privateConstructorUsedError;

  /// [type] This describes the shelf life, taking into account various
  /// scenarios such as shelf life of the packaged Medicinal Product itself,
  /// shelf life after transformation where necessary and shelf life after the
  /// first opening of a bottle, etc. The shelf life type shall be specified
  /// using an appropriate controlled vocabulary The controlled term and the
  ///  controlled term identifier shall be specified.
  CodeableConcept get type => throw _privateConstructorUsedError;

  /// [periodDuration] The shelf life time period can be specified using a
  /// numerical value for the period of time and its unit of time measurement
  /// The unit of measurement shall be specified in accordance with ISO 11240
  /// and the resulting terminology The symbol and the symbol identifier shall
  /// be used.
  FhirDuration? get periodDuration => throw _privateConstructorUsedError;

  /// [periodString] The shelf life time period can be specified using a
  /// numerical value for the period of time and its unit of time measurement
  /// The unit of measurement shall be specified in accordance with ISO 11240
  /// and the resulting terminology The symbol and the symbol identifier shall
  /// be used.
  String? get periodString => throw _privateConstructorUsedError;

  /// [periodStringElement] (_periodString) Extensions for periodString
  @JsonKey(name: '_periodString')
  PrimitiveElement? get periodStringElement =>
      throw _privateConstructorUsedError;

  /// [specialPrecautionsForStorage] Special precautions for storage, if any,
  /// can be specified using an appropriate controlled vocabulary The controlled
  ///  term and the controlled term identifier shall be specified.
  List<CodeableConcept>? get specialPrecautionsForStorage =>
      throw _privateConstructorUsedError;

  /// Serializes this PackagedProductDefinitionShelfLifeStorage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PackagedProductDefinitionShelfLifeStorage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PackagedProductDefinitionShelfLifeStorageCopyWith<
          PackagedProductDefinitionShelfLifeStorage>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackagedProductDefinitionShelfLifeStorageCopyWith<$Res> {
  factory $PackagedProductDefinitionShelfLifeStorageCopyWith(
          PackagedProductDefinitionShelfLifeStorage value,
          $Res Function(PackagedProductDefinitionShelfLifeStorage) then) =
      _$PackagedProductDefinitionShelfLifeStorageCopyWithImpl<$Res,
          PackagedProductDefinitionShelfLifeStorage>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      Identifier? identifier,
      CodeableConcept type,
      FhirDuration? periodDuration,
      String? periodString,
      @JsonKey(name: '_periodString') PrimitiveElement? periodStringElement,
      List<CodeableConcept>? specialPrecautionsForStorage});

  $IdentifierCopyWith<$Res>? get identifier;
  $CodeableConceptCopyWith<$Res> get type;
  $FhirDurationCopyWith<$Res>? get periodDuration;
}

/// @nodoc
class _$PackagedProductDefinitionShelfLifeStorageCopyWithImpl<$Res,
        $Val extends PackagedProductDefinitionShelfLifeStorage>
    implements $PackagedProductDefinitionShelfLifeStorageCopyWith<$Res> {
  _$PackagedProductDefinitionShelfLifeStorageCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PackagedProductDefinitionShelfLifeStorage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? identifier = freezed,
    Object? type = null,
    Object? periodDuration = freezed,
    Object? periodString = freezed,
    Object? periodStringElement = freezed,
    Object? specialPrecautionsForStorage = freezed,
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
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as Identifier?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      periodDuration: freezed == periodDuration
          ? _value.periodDuration
          : periodDuration // ignore: cast_nullable_to_non_nullable
              as FhirDuration?,
      periodString: freezed == periodString
          ? _value.periodString
          : periodString // ignore: cast_nullable_to_non_nullable
              as String?,
      periodStringElement: freezed == periodStringElement
          ? _value.periodStringElement
          : periodStringElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      specialPrecautionsForStorage: freezed == specialPrecautionsForStorage
          ? _value.specialPrecautionsForStorage
          : specialPrecautionsForStorage // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
    ) as $Val);
  }

  /// Create a copy of PackagedProductDefinitionShelfLifeStorage
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of PackagedProductDefinitionShelfLifeStorage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res> get type {
    return $CodeableConceptCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }

  /// Create a copy of PackagedProductDefinitionShelfLifeStorage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FhirDurationCopyWith<$Res>? get periodDuration {
    if (_value.periodDuration == null) {
      return null;
    }

    return $FhirDurationCopyWith<$Res>(_value.periodDuration!, (value) {
      return _then(_value.copyWith(periodDuration: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PackagedProductDefinitionShelfLifeStorageImplCopyWith<$Res>
    implements $PackagedProductDefinitionShelfLifeStorageCopyWith<$Res> {
  factory _$$PackagedProductDefinitionShelfLifeStorageImplCopyWith(
          _$PackagedProductDefinitionShelfLifeStorageImpl value,
          $Res Function(_$PackagedProductDefinitionShelfLifeStorageImpl) then) =
      __$$PackagedProductDefinitionShelfLifeStorageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      Identifier? identifier,
      CodeableConcept type,
      FhirDuration? periodDuration,
      String? periodString,
      @JsonKey(name: '_periodString') PrimitiveElement? periodStringElement,
      List<CodeableConcept>? specialPrecautionsForStorage});

  @override
  $IdentifierCopyWith<$Res>? get identifier;
  @override
  $CodeableConceptCopyWith<$Res> get type;
  @override
  $FhirDurationCopyWith<$Res>? get periodDuration;
}

/// @nodoc
class __$$PackagedProductDefinitionShelfLifeStorageImplCopyWithImpl<$Res>
    extends _$PackagedProductDefinitionShelfLifeStorageCopyWithImpl<$Res,
        _$PackagedProductDefinitionShelfLifeStorageImpl>
    implements _$$PackagedProductDefinitionShelfLifeStorageImplCopyWith<$Res> {
  __$$PackagedProductDefinitionShelfLifeStorageImplCopyWithImpl(
      _$PackagedProductDefinitionShelfLifeStorageImpl _value,
      $Res Function(_$PackagedProductDefinitionShelfLifeStorageImpl) _then)
      : super(_value, _then);

  /// Create a copy of PackagedProductDefinitionShelfLifeStorage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? identifier = freezed,
    Object? type = null,
    Object? periodDuration = freezed,
    Object? periodString = freezed,
    Object? periodStringElement = freezed,
    Object? specialPrecautionsForStorage = freezed,
  }) {
    return _then(_$PackagedProductDefinitionShelfLifeStorageImpl(
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
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as Identifier?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      periodDuration: freezed == periodDuration
          ? _value.periodDuration
          : periodDuration // ignore: cast_nullable_to_non_nullable
              as FhirDuration?,
      periodString: freezed == periodString
          ? _value.periodString
          : periodString // ignore: cast_nullable_to_non_nullable
              as String?,
      periodStringElement: freezed == periodStringElement
          ? _value.periodStringElement
          : periodStringElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      specialPrecautionsForStorage: freezed == specialPrecautionsForStorage
          ? _value._specialPrecautionsForStorage
          : specialPrecautionsForStorage // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PackagedProductDefinitionShelfLifeStorageImpl
    extends _PackagedProductDefinitionShelfLifeStorage {
  _$PackagedProductDefinitionShelfLifeStorageImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.identifier,
      required this.type,
      this.periodDuration,
      this.periodString,
      @JsonKey(name: '_periodString') this.periodStringElement,
      final List<CodeableConcept>? specialPrecautionsForStorage})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _specialPrecautionsForStorage = specialPrecautionsForStorage,
        super._();

  factory _$PackagedProductDefinitionShelfLifeStorageImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PackagedProductDefinitionShelfLifeStorageImplFromJson(json);

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

  /// [identifier] Unique identifier for the packaged Medicinal Product.
  @override
  final Identifier? identifier;

  /// [type] This describes the shelf life, taking into account various
  /// scenarios such as shelf life of the packaged Medicinal Product itself,
  /// shelf life after transformation where necessary and shelf life after the
  /// first opening of a bottle, etc. The shelf life type shall be specified
  /// using an appropriate controlled vocabulary The controlled term and the
  ///  controlled term identifier shall be specified.
  @override
  final CodeableConcept type;

  /// [periodDuration] The shelf life time period can be specified using a
  /// numerical value for the period of time and its unit of time measurement
  /// The unit of measurement shall be specified in accordance with ISO 11240
  /// and the resulting terminology The symbol and the symbol identifier shall
  /// be used.
  @override
  final FhirDuration? periodDuration;

  /// [periodString] The shelf life time period can be specified using a
  /// numerical value for the period of time and its unit of time measurement
  /// The unit of measurement shall be specified in accordance with ISO 11240
  /// and the resulting terminology The symbol and the symbol identifier shall
  /// be used.
  @override
  final String? periodString;

  /// [periodStringElement] (_periodString) Extensions for periodString
  @override
  @JsonKey(name: '_periodString')
  final PrimitiveElement? periodStringElement;

  /// [specialPrecautionsForStorage] Special precautions for storage, if any,
  /// can be specified using an appropriate controlled vocabulary The controlled
  ///  term and the controlled term identifier shall be specified.
  final List<CodeableConcept>? _specialPrecautionsForStorage;

  /// [specialPrecautionsForStorage] Special precautions for storage, if any,
  /// can be specified using an appropriate controlled vocabulary The controlled
  ///  term and the controlled term identifier shall be specified.
  @override
  List<CodeableConcept>? get specialPrecautionsForStorage {
    final value = _specialPrecautionsForStorage;
    if (value == null) return null;
    if (_specialPrecautionsForStorage is EqualUnmodifiableListView)
      return _specialPrecautionsForStorage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PackagedProductDefinitionShelfLifeStorage(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, identifier: $identifier, type: $type, periodDuration: $periodDuration, periodString: $periodString, periodStringElement: $periodStringElement, specialPrecautionsForStorage: $specialPrecautionsForStorage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PackagedProductDefinitionShelfLifeStorageImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.periodDuration, periodDuration) ||
                other.periodDuration == periodDuration) &&
            (identical(other.periodString, periodString) ||
                other.periodString == periodString) &&
            (identical(other.periodStringElement, periodStringElement) ||
                other.periodStringElement == periodStringElement) &&
            const DeepCollectionEquality().equals(
                other._specialPrecautionsForStorage,
                _specialPrecautionsForStorage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      identifier,
      type,
      periodDuration,
      periodString,
      periodStringElement,
      const DeepCollectionEquality().hash(_specialPrecautionsForStorage));

  /// Create a copy of PackagedProductDefinitionShelfLifeStorage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PackagedProductDefinitionShelfLifeStorageImplCopyWith<
          _$PackagedProductDefinitionShelfLifeStorageImpl>
      get copyWith =>
          __$$PackagedProductDefinitionShelfLifeStorageImplCopyWithImpl<
                  _$PackagedProductDefinitionShelfLifeStorageImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PackagedProductDefinitionShelfLifeStorageImplToJson(
      this,
    );
  }
}

abstract class _PackagedProductDefinitionShelfLifeStorage
    extends PackagedProductDefinitionShelfLifeStorage {
  factory _PackagedProductDefinitionShelfLifeStorage(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final Identifier? identifier,
          required final CodeableConcept type,
          final FhirDuration? periodDuration,
          final String? periodString,
          @JsonKey(name: '_periodString')
          final PrimitiveElement? periodStringElement,
          final List<CodeableConcept>? specialPrecautionsForStorage}) =
      _$PackagedProductDefinitionShelfLifeStorageImpl;
  _PackagedProductDefinitionShelfLifeStorage._() : super._();

  factory _PackagedProductDefinitionShelfLifeStorage.fromJson(
          Map<String, dynamic> json) =
      _$PackagedProductDefinitionShelfLifeStorageImpl.fromJson;

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  String? get id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;

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
  List<FhirExtension>? get modifierExtension;

  /// [identifier] Unique identifier for the packaged Medicinal Product.
  @override
  Identifier? get identifier;

  /// [type] This describes the shelf life, taking into account various
  /// scenarios such as shelf life of the packaged Medicinal Product itself,
  /// shelf life after transformation where necessary and shelf life after the
  /// first opening of a bottle, etc. The shelf life type shall be specified
  /// using an appropriate controlled vocabulary The controlled term and the
  ///  controlled term identifier shall be specified.
  @override
  CodeableConcept get type;

  /// [periodDuration] The shelf life time period can be specified using a
  /// numerical value for the period of time and its unit of time measurement
  /// The unit of measurement shall be specified in accordance with ISO 11240
  /// and the resulting terminology The symbol and the symbol identifier shall
  /// be used.
  @override
  FhirDuration? get periodDuration;

  /// [periodString] The shelf life time period can be specified using a
  /// numerical value for the period of time and its unit of time measurement
  /// The unit of measurement shall be specified in accordance with ISO 11240
  /// and the resulting terminology The symbol and the symbol identifier shall
  /// be used.
  @override
  String? get periodString;

  /// [periodStringElement] (_periodString) Extensions for periodString
  @override
  @JsonKey(name: '_periodString')
  PrimitiveElement? get periodStringElement;

  /// [specialPrecautionsForStorage] Special precautions for storage, if any,
  /// can be specified using an appropriate controlled vocabulary The controlled
  ///  term and the controlled term identifier shall be specified.
  @override
  List<CodeableConcept>? get specialPrecautionsForStorage;

  /// Create a copy of PackagedProductDefinitionShelfLifeStorage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PackagedProductDefinitionShelfLifeStorageImplCopyWith<
          _$PackagedProductDefinitionShelfLifeStorageImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PackagedProductDefinitionProperty _$PackagedProductDefinitionPropertyFromJson(
    Map<String, dynamic> json) {
  return _PackagedProductDefinitionProperty.fromJson(json);
}

/// @nodoc
mixin _$PackagedProductDefinitionProperty {
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [type] A code expressing the type of characteristic.;
  CodeableConcept get type => throw _privateConstructorUsedError;

  /// [valueCodeableConcept] A value for the characteristic.;
  CodeableConcept? get valueCodeableConcept =>
      throw _privateConstructorUsedError;

  /// [valueQuantity] A value for the characteristic.;
  Quantity? get valueQuantity => throw _privateConstructorUsedError;

  /// [valueDate] A value for the characteristic.;
  FhirDate? get valueDate => throw _privateConstructorUsedError;

  /// [valueDateElement] (_valueDate): Extensions for valueDate;
  @JsonKey(name: '_valueDate')
  PrimitiveElement? get valueDateElement => throw _privateConstructorUsedError;

  /// [valueBoolean] A value for the characteristic.;
  FhirBoolean? get valueBoolean => throw _privateConstructorUsedError;

  /// [valueBooleanElement] (_valueBoolean): Extensions for valueBoolean;
  @JsonKey(name: '_valueBoolean')
  PrimitiveElement? get valueBooleanElement =>
      throw _privateConstructorUsedError;

  /// [valueAttachment] A value for the characteristic.;
  Attachment? get valueAttachment => throw _privateConstructorUsedError;

  /// Serializes this PackagedProductDefinitionProperty to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PackagedProductDefinitionProperty
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PackagedProductDefinitionPropertyCopyWith<PackagedProductDefinitionProperty>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackagedProductDefinitionPropertyCopyWith<$Res> {
  factory $PackagedProductDefinitionPropertyCopyWith(
          PackagedProductDefinitionProperty value,
          $Res Function(PackagedProductDefinitionProperty) then) =
      _$PackagedProductDefinitionPropertyCopyWithImpl<$Res,
          PackagedProductDefinitionProperty>;
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
class _$PackagedProductDefinitionPropertyCopyWithImpl<$Res,
        $Val extends PackagedProductDefinitionProperty>
    implements $PackagedProductDefinitionPropertyCopyWith<$Res> {
  _$PackagedProductDefinitionPropertyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PackagedProductDefinitionProperty
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of PackagedProductDefinitionProperty
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res> get type {
    return $CodeableConceptCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }

  /// Create a copy of PackagedProductDefinitionProperty
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of PackagedProductDefinitionProperty
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of PackagedProductDefinitionProperty
  /// with the given fields replaced by the non-null parameter values.
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
abstract class _$$PackagedProductDefinitionPropertyImplCopyWith<$Res>
    implements $PackagedProductDefinitionPropertyCopyWith<$Res> {
  factory _$$PackagedProductDefinitionPropertyImplCopyWith(
          _$PackagedProductDefinitionPropertyImpl value,
          $Res Function(_$PackagedProductDefinitionPropertyImpl) then) =
      __$$PackagedProductDefinitionPropertyImplCopyWithImpl<$Res>;
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
class __$$PackagedProductDefinitionPropertyImplCopyWithImpl<$Res>
    extends _$PackagedProductDefinitionPropertyCopyWithImpl<$Res,
        _$PackagedProductDefinitionPropertyImpl>
    implements _$$PackagedProductDefinitionPropertyImplCopyWith<$Res> {
  __$$PackagedProductDefinitionPropertyImplCopyWithImpl(
      _$PackagedProductDefinitionPropertyImpl _value,
      $Res Function(_$PackagedProductDefinitionPropertyImpl) _then)
      : super(_value, _then);

  /// Create a copy of PackagedProductDefinitionProperty
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_$PackagedProductDefinitionPropertyImpl(
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
class _$PackagedProductDefinitionPropertyImpl
    extends _PackagedProductDefinitionProperty {
  _$PackagedProductDefinitionPropertyImpl(
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

  factory _$PackagedProductDefinitionPropertyImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PackagedProductDefinitionPropertyImplFromJson(json);

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

  /// [type] A code expressing the type of characteristic.;
  @override
  final CodeableConcept type;

  /// [valueCodeableConcept] A value for the characteristic.;
  @override
  final CodeableConcept? valueCodeableConcept;

  /// [valueQuantity] A value for the characteristic.;
  @override
  final Quantity? valueQuantity;

  /// [valueDate] A value for the characteristic.;
  @override
  final FhirDate? valueDate;

  /// [valueDateElement] (_valueDate): Extensions for valueDate;
  @override
  @JsonKey(name: '_valueDate')
  final PrimitiveElement? valueDateElement;

  /// [valueBoolean] A value for the characteristic.;
  @override
  final FhirBoolean? valueBoolean;

  /// [valueBooleanElement] (_valueBoolean): Extensions for valueBoolean;
  @override
  @JsonKey(name: '_valueBoolean')
  final PrimitiveElement? valueBooleanElement;

  /// [valueAttachment] A value for the characteristic.;
  @override
  final Attachment? valueAttachment;

  @override
  String toString() {
    return 'PackagedProductDefinitionProperty(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, type: $type, valueCodeableConcept: $valueCodeableConcept, valueQuantity: $valueQuantity, valueDate: $valueDate, valueDateElement: $valueDateElement, valueBoolean: $valueBoolean, valueBooleanElement: $valueBooleanElement, valueAttachment: $valueAttachment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PackagedProductDefinitionPropertyImpl &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of PackagedProductDefinitionProperty
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PackagedProductDefinitionPropertyImplCopyWith<
          _$PackagedProductDefinitionPropertyImpl>
      get copyWith => __$$PackagedProductDefinitionPropertyImplCopyWithImpl<
          _$PackagedProductDefinitionPropertyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PackagedProductDefinitionPropertyImplToJson(
      this,
    );
  }
}

abstract class _PackagedProductDefinitionProperty
    extends PackagedProductDefinitionProperty {
  factory _PackagedProductDefinitionProperty(
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
          final Attachment? valueAttachment}) =
      _$PackagedProductDefinitionPropertyImpl;
  _PackagedProductDefinitionProperty._() : super._();

  factory _PackagedProductDefinitionProperty.fromJson(
          Map<String, dynamic> json) =
      _$PackagedProductDefinitionPropertyImpl.fromJson;

  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  @override
  String? get id;

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  @override
  List<FhirExtension>? get modifierExtension;

  /// [type] A code expressing the type of characteristic.;
  @override
  CodeableConcept get type;

  /// [valueCodeableConcept] A value for the characteristic.;
  @override
  CodeableConcept? get valueCodeableConcept;

  /// [valueQuantity] A value for the characteristic.;
  @override
  Quantity? get valueQuantity;

  /// [valueDate] A value for the characteristic.;
  @override
  FhirDate? get valueDate;

  /// [valueDateElement] (_valueDate): Extensions for valueDate;
  @override
  @JsonKey(name: '_valueDate')
  PrimitiveElement? get valueDateElement;

  /// [valueBoolean] A value for the characteristic.;
  @override
  FhirBoolean? get valueBoolean;

  /// [valueBooleanElement] (_valueBoolean): Extensions for valueBoolean;
  @override
  @JsonKey(name: '_valueBoolean')
  PrimitiveElement? get valueBooleanElement;

  /// [valueAttachment] A value for the characteristic.;
  @override
  Attachment? get valueAttachment;

  /// Create a copy of PackagedProductDefinitionProperty
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PackagedProductDefinitionPropertyImplCopyWith<
          _$PackagedProductDefinitionPropertyImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PackagedProductDefinitionContainedItem
    _$PackagedProductDefinitionContainedItemFromJson(
        Map<String, dynamic> json) {
  return _PackagedProductDefinitionContainedItem.fromJson(json);
}

/// @nodoc
mixin _$PackagedProductDefinitionContainedItem {
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [item] The actual item(s) of medication, as manufactured, or a device (typically, but not necessarily, a co-packaged one), or other medically related item (such as food, biologicals, raw materials, medical fluids, gases etc.), as contained in the package. This also allows another whole packaged product to be included, which is solely for the case where a package of other entire packages is wanted - such as a wholesale or distribution pack (for layers within one package, use PackagedProductDefinition.package.package).;
  CodeableReference get item => throw _privateConstructorUsedError;

  /// [amount] The number of this type of item within this packaging.;
  Quantity? get amount => throw _privateConstructorUsedError;

  /// Serializes this PackagedProductDefinitionContainedItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PackagedProductDefinitionContainedItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PackagedProductDefinitionContainedItemCopyWith<
          PackagedProductDefinitionContainedItem>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackagedProductDefinitionContainedItemCopyWith<$Res> {
  factory $PackagedProductDefinitionContainedItemCopyWith(
          PackagedProductDefinitionContainedItem value,
          $Res Function(PackagedProductDefinitionContainedItem) then) =
      _$PackagedProductDefinitionContainedItemCopyWithImpl<$Res,
          PackagedProductDefinitionContainedItem>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableReference item,
      Quantity? amount});

  $CodeableReferenceCopyWith<$Res> get item;
  $QuantityCopyWith<$Res>? get amount;
}

/// @nodoc
class _$PackagedProductDefinitionContainedItemCopyWithImpl<$Res,
        $Val extends PackagedProductDefinitionContainedItem>
    implements $PackagedProductDefinitionContainedItemCopyWith<$Res> {
  _$PackagedProductDefinitionContainedItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PackagedProductDefinitionContainedItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? item = null,
    Object? amount = freezed,
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
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as CodeableReference,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as Quantity?,
    ) as $Val);
  }

  /// Create a copy of PackagedProductDefinitionContainedItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CodeableReferenceCopyWith<$Res> get item {
    return $CodeableReferenceCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value) as $Val);
    });
  }

  /// Create a copy of PackagedProductDefinitionContainedItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $QuantityCopyWith<$Res>? get amount {
    if (_value.amount == null) {
      return null;
    }

    return $QuantityCopyWith<$Res>(_value.amount!, (value) {
      return _then(_value.copyWith(amount: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PackagedProductDefinitionContainedItemImplCopyWith<$Res>
    implements $PackagedProductDefinitionContainedItemCopyWith<$Res> {
  factory _$$PackagedProductDefinitionContainedItemImplCopyWith(
          _$PackagedProductDefinitionContainedItemImpl value,
          $Res Function(_$PackagedProductDefinitionContainedItemImpl) then) =
      __$$PackagedProductDefinitionContainedItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableReference item,
      Quantity? amount});

  @override
  $CodeableReferenceCopyWith<$Res> get item;
  @override
  $QuantityCopyWith<$Res>? get amount;
}

/// @nodoc
class __$$PackagedProductDefinitionContainedItemImplCopyWithImpl<$Res>
    extends _$PackagedProductDefinitionContainedItemCopyWithImpl<$Res,
        _$PackagedProductDefinitionContainedItemImpl>
    implements _$$PackagedProductDefinitionContainedItemImplCopyWith<$Res> {
  __$$PackagedProductDefinitionContainedItemImplCopyWithImpl(
      _$PackagedProductDefinitionContainedItemImpl _value,
      $Res Function(_$PackagedProductDefinitionContainedItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of PackagedProductDefinitionContainedItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? item = null,
    Object? amount = freezed,
  }) {
    return _then(_$PackagedProductDefinitionContainedItemImpl(
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
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as CodeableReference,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as Quantity?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PackagedProductDefinitionContainedItemImpl
    extends _PackagedProductDefinitionContainedItem {
  _$PackagedProductDefinitionContainedItemImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required this.item,
      this.amount})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$PackagedProductDefinitionContainedItemImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PackagedProductDefinitionContainedItemImplFromJson(json);

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

  /// [item] The actual item(s) of medication, as manufactured, or a device (typically, but not necessarily, a co-packaged one), or other medically related item (such as food, biologicals, raw materials, medical fluids, gases etc.), as contained in the package. This also allows another whole packaged product to be included, which is solely for the case where a package of other entire packages is wanted - such as a wholesale or distribution pack (for layers within one package, use PackagedProductDefinition.package.package).;
  @override
  final CodeableReference item;

  /// [amount] The number of this type of item within this packaging.;
  @override
  final Quantity? amount;

  @override
  String toString() {
    return 'PackagedProductDefinitionContainedItem(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, item: $item, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PackagedProductDefinitionContainedItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.item, item) || other.item == item) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      item,
      amount);

  /// Create a copy of PackagedProductDefinitionContainedItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PackagedProductDefinitionContainedItemImplCopyWith<
          _$PackagedProductDefinitionContainedItemImpl>
      get copyWith =>
          __$$PackagedProductDefinitionContainedItemImplCopyWithImpl<
              _$PackagedProductDefinitionContainedItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PackagedProductDefinitionContainedItemImplToJson(
      this,
    );
  }
}

abstract class _PackagedProductDefinitionContainedItem
    extends PackagedProductDefinitionContainedItem {
  factory _PackagedProductDefinitionContainedItem(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required final CodeableReference item,
      final Quantity? amount}) = _$PackagedProductDefinitionContainedItemImpl;
  _PackagedProductDefinitionContainedItem._() : super._();

  factory _PackagedProductDefinitionContainedItem.fromJson(
          Map<String, dynamic> json) =
      _$PackagedProductDefinitionContainedItemImpl.fromJson;

  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  @override
  String? get id;

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  @override
  List<FhirExtension>? get modifierExtension;

  /// [item] The actual item(s) of medication, as manufactured, or a device (typically, but not necessarily, a co-packaged one), or other medically related item (such as food, biologicals, raw materials, medical fluids, gases etc.), as contained in the package. This also allows another whole packaged product to be included, which is solely for the case where a package of other entire packages is wanted - such as a wholesale or distribution pack (for layers within one package, use PackagedProductDefinition.package.package).;
  @override
  CodeableReference get item;

  /// [amount] The number of this type of item within this packaging.;
  @override
  Quantity? get amount;

  /// Create a copy of PackagedProductDefinitionContainedItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PackagedProductDefinitionContainedItemImplCopyWith<
          _$PackagedProductDefinitionContainedItemImpl>
      get copyWith => throw _privateConstructorUsedError;
}
