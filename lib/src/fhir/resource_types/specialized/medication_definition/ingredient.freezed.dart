// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ingredient.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Ingredient _$IngredientFromJson(Map<String, dynamic> json) {
  return _Ingredient.fromJson(json);
}

/// @nodoc
mixin _$Ingredient {
  /// [resourceType] This is a Ingredient resource;
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

  /// [identifier] The identifier(s) of this Ingredient that are assigned by business processes and/or used to refer to it when a direct URL reference to the resource itself is not appropriate.;
  Identifier? get identifier => throw _privateConstructorUsedError;

  /// [status] The status of this ingredient. Enables tracking the life-cycle of the content.;
  FhirCode? get status => throw _privateConstructorUsedError;

  /// [statusElement] (_status): Extensions for status;
  @JsonKey(name: '_status')
  PrimitiveElement? get statusElement => throw _privateConstructorUsedError;

  /// [for] The product which this ingredient is a constituent part of.;
  @JsonKey(name: 'for')
  List<Reference>? get for_ => throw _privateConstructorUsedError;

  /// [role] A classification of the ingredient identifying its purpose within the product, e.g. active, inactive.;
  CodeableConcept get role => throw _privateConstructorUsedError;

  /// [function] A classification of the ingredient identifying its precise purpose(s) in the drug product. This extends the Ingredient.role to add more detail. Example: antioxidant, alkalizing agent.;
  List<CodeableConcept>? get function => throw _privateConstructorUsedError;

  /// [group] A classification of the ingredient according to where in the physical item it tends to be used, such the outer shell of a tablet, inner body or ink.;
  CodeableConcept? get group => throw _privateConstructorUsedError;

  /// [allergenicIndicator] If the ingredient is a known or suspected allergen. Note that this is a property of the substance, so if a reference to a SubstanceDefinition is used to decribe that (rather than just a code), the allergen information should go there, not here.;
  FhirBoolean? get allergenicIndicator => throw _privateConstructorUsedError;

  /// [allergenicIndicatorElement] (_allergenicIndicator): Extensions for allergenicIndicator;
  @JsonKey(name: '_allergenicIndicator')
  PrimitiveElement? get allergenicIndicatorElement =>
      throw _privateConstructorUsedError;

  /// [manufacturer] The organization(s) that manufacture this ingredient. Can be used to indicate:         1) Organizations we are aware of that manufacture this ingredient         2) Specific Manufacturer(s) currently being used         3) Set of organisations allowed to manufacture this ingredient for this product         Users must be clear on the application of context relevant to their use case.;
  List<IngredientManufacturer>? get manufacturer =>
      throw _privateConstructorUsedError;

  /// [substance] The substance that comprises this ingredient.;
  IngredientSubstance get substance => throw _privateConstructorUsedError;

  /// Serializes this Ingredient to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Ingredient
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IngredientCopyWith<Ingredient> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IngredientCopyWith<$Res> {
  factory $IngredientCopyWith(
          Ingredient value, $Res Function(Ingredient) then) =
      _$IngredientCopyWithImpl<$Res, Ingredient>;
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
      Identifier? identifier,
      FhirCode? status,
      @JsonKey(name: '_status') PrimitiveElement? statusElement,
      @JsonKey(name: 'for') List<Reference>? for_,
      CodeableConcept role,
      List<CodeableConcept>? function,
      CodeableConcept? group,
      FhirBoolean? allergenicIndicator,
      @JsonKey(name: '_allergenicIndicator')
      PrimitiveElement? allergenicIndicatorElement,
      List<IngredientManufacturer>? manufacturer,
      IngredientSubstance substance});

  $FhirMetaCopyWith<$Res>? get meta;
  $NarrativeCopyWith<$Res>? get text;
  $IdentifierCopyWith<$Res>? get identifier;
  $CodeableConceptCopyWith<$Res> get role;
  $CodeableConceptCopyWith<$Res>? get group;
  $IngredientSubstanceCopyWith<$Res> get substance;
}

/// @nodoc
class _$IngredientCopyWithImpl<$Res, $Val extends Ingredient>
    implements $IngredientCopyWith<$Res> {
  _$IngredientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Ingredient
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
    Object? status = freezed,
    Object? statusElement = freezed,
    Object? for_ = freezed,
    Object? role = null,
    Object? function = freezed,
    Object? group = freezed,
    Object? allergenicIndicator = freezed,
    Object? allergenicIndicatorElement = freezed,
    Object? manufacturer = freezed,
    Object? substance = null,
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
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      statusElement: freezed == statusElement
          ? _value.statusElement
          : statusElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      for_: freezed == for_
          ? _value.for_
          : for_ // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      function: freezed == function
          ? _value.function
          : function // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      group: freezed == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      allergenicIndicator: freezed == allergenicIndicator
          ? _value.allergenicIndicator
          : allergenicIndicator // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      allergenicIndicatorElement: freezed == allergenicIndicatorElement
          ? _value.allergenicIndicatorElement
          : allergenicIndicatorElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      manufacturer: freezed == manufacturer
          ? _value.manufacturer
          : manufacturer // ignore: cast_nullable_to_non_nullable
              as List<IngredientManufacturer>?,
      substance: null == substance
          ? _value.substance
          : substance // ignore: cast_nullable_to_non_nullable
              as IngredientSubstance,
    ) as $Val);
  }

  /// Create a copy of Ingredient
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

  /// Create a copy of Ingredient
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

  /// Create a copy of Ingredient
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

  /// Create a copy of Ingredient
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res> get role {
    return $CodeableConceptCopyWith<$Res>(_value.role, (value) {
      return _then(_value.copyWith(role: value) as $Val);
    });
  }

  /// Create a copy of Ingredient
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get group {
    if (_value.group == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.group!, (value) {
      return _then(_value.copyWith(group: value) as $Val);
    });
  }

  /// Create a copy of Ingredient
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IngredientSubstanceCopyWith<$Res> get substance {
    return $IngredientSubstanceCopyWith<$Res>(_value.substance, (value) {
      return _then(_value.copyWith(substance: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$IngredientImplCopyWith<$Res>
    implements $IngredientCopyWith<$Res> {
  factory _$$IngredientImplCopyWith(
          _$IngredientImpl value, $Res Function(_$IngredientImpl) then) =
      __$$IngredientImplCopyWithImpl<$Res>;
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
      Identifier? identifier,
      FhirCode? status,
      @JsonKey(name: '_status') PrimitiveElement? statusElement,
      @JsonKey(name: 'for') List<Reference>? for_,
      CodeableConcept role,
      List<CodeableConcept>? function,
      CodeableConcept? group,
      FhirBoolean? allergenicIndicator,
      @JsonKey(name: '_allergenicIndicator')
      PrimitiveElement? allergenicIndicatorElement,
      List<IngredientManufacturer>? manufacturer,
      IngredientSubstance substance});

  @override
  $FhirMetaCopyWith<$Res>? get meta;
  @override
  $NarrativeCopyWith<$Res>? get text;
  @override
  $IdentifierCopyWith<$Res>? get identifier;
  @override
  $CodeableConceptCopyWith<$Res> get role;
  @override
  $CodeableConceptCopyWith<$Res>? get group;
  @override
  $IngredientSubstanceCopyWith<$Res> get substance;
}

/// @nodoc
class __$$IngredientImplCopyWithImpl<$Res>
    extends _$IngredientCopyWithImpl<$Res, _$IngredientImpl>
    implements _$$IngredientImplCopyWith<$Res> {
  __$$IngredientImplCopyWithImpl(
      _$IngredientImpl _value, $Res Function(_$IngredientImpl) _then)
      : super(_value, _then);

  /// Create a copy of Ingredient
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
    Object? status = freezed,
    Object? statusElement = freezed,
    Object? for_ = freezed,
    Object? role = null,
    Object? function = freezed,
    Object? group = freezed,
    Object? allergenicIndicator = freezed,
    Object? allergenicIndicatorElement = freezed,
    Object? manufacturer = freezed,
    Object? substance = null,
  }) {
    return _then(_$IngredientImpl(
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
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      statusElement: freezed == statusElement
          ? _value.statusElement
          : statusElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      for_: freezed == for_
          ? _value._for_
          : for_ // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      function: freezed == function
          ? _value._function
          : function // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      group: freezed == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      allergenicIndicator: freezed == allergenicIndicator
          ? _value.allergenicIndicator
          : allergenicIndicator // ignore: cast_nullable_to_non_nullable
              as FhirBoolean?,
      allergenicIndicatorElement: freezed == allergenicIndicatorElement
          ? _value.allergenicIndicatorElement
          : allergenicIndicatorElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      manufacturer: freezed == manufacturer
          ? _value._manufacturer
          : manufacturer // ignore: cast_nullable_to_non_nullable
              as List<IngredientManufacturer>?,
      substance: null == substance
          ? _value.substance
          : substance // ignore: cast_nullable_to_non_nullable
              as IngredientSubstance,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IngredientImpl extends _Ingredient {
  const _$IngredientImpl(
      {this.resourceType = R4ResourceType.Ingredient,
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
      this.status,
      @JsonKey(name: '_status') this.statusElement,
      @JsonKey(name: 'for') final List<Reference>? for_,
      required this.role,
      final List<CodeableConcept>? function,
      this.group,
      this.allergenicIndicator,
      @JsonKey(name: '_allergenicIndicator') this.allergenicIndicatorElement,
      final List<IngredientManufacturer>? manufacturer,
      required this.substance})
      : _contained = contained,
        _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _for_ = for_,
        _function = function,
        _manufacturer = manufacturer,
        super._();

  factory _$IngredientImpl.fromJson(Map<String, dynamic> json) =>
      _$$IngredientImplFromJson(json);

  /// [resourceType] This is a Ingredient resource;
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

  /// [identifier] The identifier(s) of this Ingredient that are assigned by business processes and/or used to refer to it when a direct URL reference to the resource itself is not appropriate.;
  @override
  final Identifier? identifier;

  /// [status] The status of this ingredient. Enables tracking the life-cycle of the content.;
  @override
  final FhirCode? status;

  /// [statusElement] (_status): Extensions for status;
  @override
  @JsonKey(name: '_status')
  final PrimitiveElement? statusElement;

  /// [for] The product which this ingredient is a constituent part of.;
  final List<Reference>? _for_;

  /// [for] The product which this ingredient is a constituent part of.;
  @override
  @JsonKey(name: 'for')
  List<Reference>? get for_ {
    final value = _for_;
    if (value == null) return null;
    if (_for_ is EqualUnmodifiableListView) return _for_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [role] A classification of the ingredient identifying its purpose within the product, e.g. active, inactive.;
  @override
  final CodeableConcept role;

  /// [function] A classification of the ingredient identifying its precise purpose(s) in the drug product. This extends the Ingredient.role to add more detail. Example: antioxidant, alkalizing agent.;
  final List<CodeableConcept>? _function;

  /// [function] A classification of the ingredient identifying its precise purpose(s) in the drug product. This extends the Ingredient.role to add more detail. Example: antioxidant, alkalizing agent.;
  @override
  List<CodeableConcept>? get function {
    final value = _function;
    if (value == null) return null;
    if (_function is EqualUnmodifiableListView) return _function;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [group] A classification of the ingredient according to where in the physical item it tends to be used, such the outer shell of a tablet, inner body or ink.;
  @override
  final CodeableConcept? group;

  /// [allergenicIndicator] If the ingredient is a known or suspected allergen. Note that this is a property of the substance, so if a reference to a SubstanceDefinition is used to decribe that (rather than just a code), the allergen information should go there, not here.;
  @override
  final FhirBoolean? allergenicIndicator;

  /// [allergenicIndicatorElement] (_allergenicIndicator): Extensions for allergenicIndicator;
  @override
  @JsonKey(name: '_allergenicIndicator')
  final PrimitiveElement? allergenicIndicatorElement;

  /// [manufacturer] The organization(s) that manufacture this ingredient. Can be used to indicate:         1) Organizations we are aware of that manufacture this ingredient         2) Specific Manufacturer(s) currently being used         3) Set of organisations allowed to manufacture this ingredient for this product         Users must be clear on the application of context relevant to their use case.;
  final List<IngredientManufacturer>? _manufacturer;

  /// [manufacturer] The organization(s) that manufacture this ingredient. Can be used to indicate:         1) Organizations we are aware of that manufacture this ingredient         2) Specific Manufacturer(s) currently being used         3) Set of organisations allowed to manufacture this ingredient for this product         Users must be clear on the application of context relevant to their use case.;
  @override
  List<IngredientManufacturer>? get manufacturer {
    final value = _manufacturer;
    if (value == null) return null;
    if (_manufacturer is EqualUnmodifiableListView) return _manufacturer;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [substance] The substance that comprises this ingredient.;
  @override
  final IngredientSubstance substance;

  @override
  String toString() {
    return 'Ingredient(resourceType: $resourceType, id: $id, meta: $meta, implicitRules: $implicitRules, implicitRulesElement: $implicitRulesElement, language: $language, languageElement: $languageElement, text: $text, contained: $contained, extension_: $extension_, modifierExtension: $modifierExtension, identifier: $identifier, status: $status, statusElement: $statusElement, for_: $for_, role: $role, function: $function, group: $group, allergenicIndicator: $allergenicIndicator, allergenicIndicatorElement: $allergenicIndicatorElement, manufacturer: $manufacturer, substance: $substance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IngredientImpl &&
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
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusElement, statusElement) ||
                other.statusElement == statusElement) &&
            const DeepCollectionEquality().equals(other._for_, _for_) &&
            (identical(other.role, role) || other.role == role) &&
            const DeepCollectionEquality().equals(other._function, _function) &&
            (identical(other.group, group) || other.group == group) &&
            (identical(other.allergenicIndicator, allergenicIndicator) ||
                other.allergenicIndicator == allergenicIndicator) &&
            (identical(other.allergenicIndicatorElement,
                    allergenicIndicatorElement) ||
                other.allergenicIndicatorElement ==
                    allergenicIndicatorElement) &&
            const DeepCollectionEquality()
                .equals(other._manufacturer, _manufacturer) &&
            (identical(other.substance, substance) ||
                other.substance == substance));
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
        identifier,
        status,
        statusElement,
        const DeepCollectionEquality().hash(_for_),
        role,
        const DeepCollectionEquality().hash(_function),
        group,
        allergenicIndicator,
        allergenicIndicatorElement,
        const DeepCollectionEquality().hash(_manufacturer),
        substance
      ]);

  /// Create a copy of Ingredient
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IngredientImplCopyWith<_$IngredientImpl> get copyWith =>
      __$$IngredientImplCopyWithImpl<_$IngredientImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IngredientImplToJson(
      this,
    );
  }
}

abstract class _Ingredient extends Ingredient {
  const factory _Ingredient(
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
      final Identifier? identifier,
      final FhirCode? status,
      @JsonKey(name: '_status') final PrimitiveElement? statusElement,
      @JsonKey(name: 'for') final List<Reference>? for_,
      required final CodeableConcept role,
      final List<CodeableConcept>? function,
      final CodeableConcept? group,
      final FhirBoolean? allergenicIndicator,
      @JsonKey(name: '_allergenicIndicator')
      final PrimitiveElement? allergenicIndicatorElement,
      final List<IngredientManufacturer>? manufacturer,
      required final IngredientSubstance substance}) = _$IngredientImpl;
  const _Ingredient._() : super._();

  factory _Ingredient.fromJson(Map<String, dynamic> json) =
      _$IngredientImpl.fromJson;

  /// [resourceType] This is a Ingredient resource;
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

  /// [identifier] The identifier(s) of this Ingredient that are assigned by business processes and/or used to refer to it when a direct URL reference to the resource itself is not appropriate.;
  @override
  Identifier? get identifier;

  /// [status] The status of this ingredient. Enables tracking the life-cycle of the content.;
  @override
  FhirCode? get status;

  /// [statusElement] (_status): Extensions for status;
  @override
  @JsonKey(name: '_status')
  PrimitiveElement? get statusElement;

  /// [for] The product which this ingredient is a constituent part of.;
  @override
  @JsonKey(name: 'for')
  List<Reference>? get for_;

  /// [role] A classification of the ingredient identifying its purpose within the product, e.g. active, inactive.;
  @override
  CodeableConcept get role;

  /// [function] A classification of the ingredient identifying its precise purpose(s) in the drug product. This extends the Ingredient.role to add more detail. Example: antioxidant, alkalizing agent.;
  @override
  List<CodeableConcept>? get function;

  /// [group] A classification of the ingredient according to where in the physical item it tends to be used, such the outer shell of a tablet, inner body or ink.;
  @override
  CodeableConcept? get group;

  /// [allergenicIndicator] If the ingredient is a known or suspected allergen. Note that this is a property of the substance, so if a reference to a SubstanceDefinition is used to decribe that (rather than just a code), the allergen information should go there, not here.;
  @override
  FhirBoolean? get allergenicIndicator;

  /// [allergenicIndicatorElement] (_allergenicIndicator): Extensions for allergenicIndicator;
  @override
  @JsonKey(name: '_allergenicIndicator')
  PrimitiveElement? get allergenicIndicatorElement;

  /// [manufacturer] The organization(s) that manufacture this ingredient. Can be used to indicate:         1) Organizations we are aware of that manufacture this ingredient         2) Specific Manufacturer(s) currently being used         3) Set of organisations allowed to manufacture this ingredient for this product         Users must be clear on the application of context relevant to their use case.;
  @override
  List<IngredientManufacturer>? get manufacturer;

  /// [substance] The substance that comprises this ingredient.;
  @override
  IngredientSubstance get substance;

  /// Create a copy of Ingredient
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IngredientImplCopyWith<_$IngredientImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

IngredientManufacturer _$IngredientManufacturerFromJson(
    Map<String, dynamic> json) {
  return _IngredientManufacturer.fromJson(json);
}

/// @nodoc
mixin _$IngredientManufacturer {
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [role] The way in which this manufacturer is associated with the ingredient. For example whether it is a possible one (others allowed), or an exclusive authorized one for this ingredient. Note that this is not the manufacturing process role.;
  FhirCode? get role => throw _privateConstructorUsedError;

  /// [roleElement] (_role): Extensions for role;
  @JsonKey(name: '_role')
  PrimitiveElement? get roleElement => throw _privateConstructorUsedError;

  /// [manufacturer] An organization that manufactures this ingredient.;
  Reference get manufacturer => throw _privateConstructorUsedError;

  /// Serializes this IngredientManufacturer to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of IngredientManufacturer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IngredientManufacturerCopyWith<IngredientManufacturer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IngredientManufacturerCopyWith<$Res> {
  factory $IngredientManufacturerCopyWith(IngredientManufacturer value,
          $Res Function(IngredientManufacturer) then) =
      _$IngredientManufacturerCopyWithImpl<$Res, IngredientManufacturer>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirCode? role,
      @JsonKey(name: '_role') PrimitiveElement? roleElement,
      Reference manufacturer});

  $ReferenceCopyWith<$Res> get manufacturer;
}

/// @nodoc
class _$IngredientManufacturerCopyWithImpl<$Res,
        $Val extends IngredientManufacturer>
    implements $IngredientManufacturerCopyWith<$Res> {
  _$IngredientManufacturerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IngredientManufacturer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? role = freezed,
    Object? roleElement = freezed,
    Object? manufacturer = null,
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
              as FhirCode?,
      roleElement: freezed == roleElement
          ? _value.roleElement
          : roleElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      manufacturer: null == manufacturer
          ? _value.manufacturer
          : manufacturer // ignore: cast_nullable_to_non_nullable
              as Reference,
    ) as $Val);
  }

  /// Create a copy of IngredientManufacturer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res> get manufacturer {
    return $ReferenceCopyWith<$Res>(_value.manufacturer, (value) {
      return _then(_value.copyWith(manufacturer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$IngredientManufacturerImplCopyWith<$Res>
    implements $IngredientManufacturerCopyWith<$Res> {
  factory _$$IngredientManufacturerImplCopyWith(
          _$IngredientManufacturerImpl value,
          $Res Function(_$IngredientManufacturerImpl) then) =
      __$$IngredientManufacturerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      FhirCode? role,
      @JsonKey(name: '_role') PrimitiveElement? roleElement,
      Reference manufacturer});

  @override
  $ReferenceCopyWith<$Res> get manufacturer;
}

/// @nodoc
class __$$IngredientManufacturerImplCopyWithImpl<$Res>
    extends _$IngredientManufacturerCopyWithImpl<$Res,
        _$IngredientManufacturerImpl>
    implements _$$IngredientManufacturerImplCopyWith<$Res> {
  __$$IngredientManufacturerImplCopyWithImpl(
      _$IngredientManufacturerImpl _value,
      $Res Function(_$IngredientManufacturerImpl) _then)
      : super(_value, _then);

  /// Create a copy of IngredientManufacturer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? role = freezed,
    Object? roleElement = freezed,
    Object? manufacturer = null,
  }) {
    return _then(_$IngredientManufacturerImpl(
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
              as FhirCode?,
      roleElement: freezed == roleElement
          ? _value.roleElement
          : roleElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      manufacturer: null == manufacturer
          ? _value.manufacturer
          : manufacturer // ignore: cast_nullable_to_non_nullable
              as Reference,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IngredientManufacturerImpl extends _IngredientManufacturer {
  const _$IngredientManufacturerImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.role,
      @JsonKey(name: '_role') this.roleElement,
      required this.manufacturer})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$IngredientManufacturerImpl.fromJson(Map<String, dynamic> json) =>
      _$$IngredientManufacturerImplFromJson(json);

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

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  final List<FhirExtension>? _modifierExtension;

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [role] The way in which this manufacturer is associated with the ingredient. For example whether it is a possible one (others allowed), or an exclusive authorized one for this ingredient. Note that this is not the manufacturing process role.;
  @override
  final FhirCode? role;

  /// [roleElement] (_role): Extensions for role;
  @override
  @JsonKey(name: '_role')
  final PrimitiveElement? roleElement;

  /// [manufacturer] An organization that manufactures this ingredient.;
  @override
  final Reference manufacturer;

  @override
  String toString() {
    return 'IngredientManufacturer(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, role: $role, roleElement: $roleElement, manufacturer: $manufacturer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IngredientManufacturerImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.roleElement, roleElement) ||
                other.roleElement == roleElement) &&
            (identical(other.manufacturer, manufacturer) ||
                other.manufacturer == manufacturer));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      role,
      roleElement,
      manufacturer);

  /// Create a copy of IngredientManufacturer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IngredientManufacturerImplCopyWith<_$IngredientManufacturerImpl>
      get copyWith => __$$IngredientManufacturerImplCopyWithImpl<
          _$IngredientManufacturerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IngredientManufacturerImplToJson(
      this,
    );
  }
}

abstract class _IngredientManufacturer extends IngredientManufacturer {
  const factory _IngredientManufacturer(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final FhirCode? role,
      @JsonKey(name: '_role') final PrimitiveElement? roleElement,
      required final Reference manufacturer}) = _$IngredientManufacturerImpl;
  const _IngredientManufacturer._() : super._();

  factory _IngredientManufacturer.fromJson(Map<String, dynamic> json) =
      _$IngredientManufacturerImpl.fromJson;

  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  @override
  String? get id;

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions. Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  @override
  List<FhirExtension>? get modifierExtension;

  /// [role] The way in which this manufacturer is associated with the ingredient. For example whether it is a possible one (others allowed), or an exclusive authorized one for this ingredient. Note that this is not the manufacturing process role.;
  @override
  FhirCode? get role;

  /// [roleElement] (_role): Extensions for role;
  @override
  @JsonKey(name: '_role')
  PrimitiveElement? get roleElement;

  /// [manufacturer] An organization that manufactures this ingredient.;
  @override
  Reference get manufacturer;

  /// Create a copy of IngredientManufacturer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IngredientManufacturerImplCopyWith<_$IngredientManufacturerImpl>
      get copyWith => throw _privateConstructorUsedError;
}

IngredientSubstance _$IngredientSubstanceFromJson(Map<String, dynamic> json) {
  return _IngredientSubstance.fromJson(json);
}

/// @nodoc
mixin _$IngredientSubstance {
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [code] A code or full resource that represents the ingredient's substance.;
  CodeableReference get code => throw _privateConstructorUsedError;

  /// [strength] The quantity of substance in the unit of presentation, or in the volume (or mass) of the single pharmaceutical product or manufactured item. The allowed repetitions do not represent different strengths, but are different representations - mathematically equivalent - of a single strength.;
  List<IngredientStrength>? get strength => throw _privateConstructorUsedError;

  /// Serializes this IngredientSubstance to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of IngredientSubstance
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IngredientSubstanceCopyWith<IngredientSubstance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IngredientSubstanceCopyWith<$Res> {
  factory $IngredientSubstanceCopyWith(
          IngredientSubstance value, $Res Function(IngredientSubstance) then) =
      _$IngredientSubstanceCopyWithImpl<$Res, IngredientSubstance>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableReference code,
      List<IngredientStrength>? strength});

  $CodeableReferenceCopyWith<$Res> get code;
}

/// @nodoc
class _$IngredientSubstanceCopyWithImpl<$Res, $Val extends IngredientSubstance>
    implements $IngredientSubstanceCopyWith<$Res> {
  _$IngredientSubstanceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IngredientSubstance
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? code = null,
    Object? strength = freezed,
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
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as CodeableReference,
      strength: freezed == strength
          ? _value.strength
          : strength // ignore: cast_nullable_to_non_nullable
              as List<IngredientStrength>?,
    ) as $Val);
  }

  /// Create a copy of IngredientSubstance
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CodeableReferenceCopyWith<$Res> get code {
    return $CodeableReferenceCopyWith<$Res>(_value.code, (value) {
      return _then(_value.copyWith(code: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$IngredientSubstanceImplCopyWith<$Res>
    implements $IngredientSubstanceCopyWith<$Res> {
  factory _$$IngredientSubstanceImplCopyWith(_$IngredientSubstanceImpl value,
          $Res Function(_$IngredientSubstanceImpl) then) =
      __$$IngredientSubstanceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableReference code,
      List<IngredientStrength>? strength});

  @override
  $CodeableReferenceCopyWith<$Res> get code;
}

/// @nodoc
class __$$IngredientSubstanceImplCopyWithImpl<$Res>
    extends _$IngredientSubstanceCopyWithImpl<$Res, _$IngredientSubstanceImpl>
    implements _$$IngredientSubstanceImplCopyWith<$Res> {
  __$$IngredientSubstanceImplCopyWithImpl(_$IngredientSubstanceImpl _value,
      $Res Function(_$IngredientSubstanceImpl) _then)
      : super(_value, _then);

  /// Create a copy of IngredientSubstance
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? code = null,
    Object? strength = freezed,
  }) {
    return _then(_$IngredientSubstanceImpl(
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
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as CodeableReference,
      strength: freezed == strength
          ? _value._strength
          : strength // ignore: cast_nullable_to_non_nullable
              as List<IngredientStrength>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IngredientSubstanceImpl extends _IngredientSubstance {
  const _$IngredientSubstanceImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required this.code,
      final List<IngredientStrength>? strength})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _strength = strength,
        super._();

  factory _$IngredientSubstanceImpl.fromJson(Map<String, dynamic> json) =>
      _$$IngredientSubstanceImplFromJson(json);

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

  /// [code] A code or full resource that represents the ingredient's substance.;
  @override
  final CodeableReference code;

  /// [strength] The quantity of substance in the unit of presentation, or in the volume (or mass) of the single pharmaceutical product or manufactured item. The allowed repetitions do not represent different strengths, but are different representations - mathematically equivalent - of a single strength.;
  final List<IngredientStrength>? _strength;

  /// [strength] The quantity of substance in the unit of presentation, or in the volume (or mass) of the single pharmaceutical product or manufactured item. The allowed repetitions do not represent different strengths, but are different representations - mathematically equivalent - of a single strength.;
  @override
  List<IngredientStrength>? get strength {
    final value = _strength;
    if (value == null) return null;
    if (_strength is EqualUnmodifiableListView) return _strength;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'IngredientSubstance(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, code: $code, strength: $strength)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IngredientSubstanceImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.code, code) || other.code == code) &&
            const DeepCollectionEquality().equals(other._strength, _strength));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      code,
      const DeepCollectionEquality().hash(_strength));

  /// Create a copy of IngredientSubstance
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IngredientSubstanceImplCopyWith<_$IngredientSubstanceImpl> get copyWith =>
      __$$IngredientSubstanceImplCopyWithImpl<_$IngredientSubstanceImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IngredientSubstanceImplToJson(
      this,
    );
  }
}

abstract class _IngredientSubstance extends IngredientSubstance {
  const factory _IngredientSubstance(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      required final CodeableReference code,
      final List<IngredientStrength>? strength}) = _$IngredientSubstanceImpl;
  const _IngredientSubstance._() : super._();

  factory _IngredientSubstance.fromJson(Map<String, dynamic> json) =
      _$IngredientSubstanceImpl.fromJson;

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

  /// [code] A code or full resource that represents the ingredient's substance.;
  @override
  CodeableReference get code;

  /// [strength] The quantity of substance in the unit of presentation, or in the volume (or mass) of the single pharmaceutical product or manufactured item. The allowed repetitions do not represent different strengths, but are different representations - mathematically equivalent - of a single strength.;
  @override
  List<IngredientStrength>? get strength;

  /// Create a copy of IngredientSubstance
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IngredientSubstanceImplCopyWith<_$IngredientSubstanceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

IngredientStrength _$IngredientStrengthFromJson(Map<String, dynamic> json) {
  return _IngredientStrength.fromJson(json);
}

/// @nodoc
mixin _$IngredientStrength {
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [presentationRatio] The quantity of substance in the unit of presentation, or in the volume (or mass) of the single pharmaceutical product or manufactured item. Unit of presentation refers to the quantity that the item occurs in e.g. a strength per tablet size, perhaps 'per 20mg' (the size of the tablet). It is not generally normalized as a unitary unit, which would be 'per mg').;
  Ratio? get presentationRatio => throw _privateConstructorUsedError;

  /// [presentationRatioRange] The quantity of substance in the unit of presentation, or in the volume (or mass) of the single pharmaceutical product or manufactured item. Unit of presentation refers to the quantity that the item occurs in e.g. a strength per tablet size, perhaps 'per 20mg' (the size of the tablet). It is not generally normalized as a unitary unit, which would be 'per mg').;
  RatioRange? get presentationRatioRange => throw _privateConstructorUsedError;

  /// [textPresentation] A textual represention of either the whole of the presentation strength or a part of it - with the rest being in Strength.presentation as a ratio.;
  String? get textPresentation => throw _privateConstructorUsedError;

  /// [textPresentationElement] (_textPresentation): Extensions for textPresentation;
  @JsonKey(name: '_textPresentation')
  PrimitiveElement? get textPresentationElement =>
      throw _privateConstructorUsedError;

  /// [concentrationRatio] The strength per unitary volume (or mass).;
  Ratio? get concentrationRatio => throw _privateConstructorUsedError;

  /// [concentrationRatioRange] The strength per unitary volume (or mass).;
  RatioRange? get concentrationRatioRange => throw _privateConstructorUsedError;

  /// [textConcentration] A textual represention of either the whole of the concentration strength or a part of it - with the rest being in Strength.concentration as a ratio.;
  String? get textConcentration => throw _privateConstructorUsedError;

  /// [textConcentrationElement] (_textConcentration): Extensions for textConcentration;
  @JsonKey(name: '_textConcentration')
  PrimitiveElement? get textConcentrationElement =>
      throw _privateConstructorUsedError;

  /// [measurementPoint] For when strength is measured at a particular point or distance. There are products where strength is measured at a particular point. For example, the strength of the ingredient in some inhalers is measured at a particular position relative to the point of aerosolization.;
  String? get measurementPoint => throw _privateConstructorUsedError;

  /// [measurementPointElement] (_measurementPoint): Extensions for measurementPoint;
  @JsonKey(name: '_measurementPoint')
  PrimitiveElement? get measurementPointElement =>
      throw _privateConstructorUsedError;

  /// [country] The country or countries for which the strength range applies.;
  List<CodeableConcept>? get country => throw _privateConstructorUsedError;

  /// [referenceStrength] Strength expressed in terms of a reference substance. For when the ingredient strength is additionally expressed as equivalent to the strength of some other closely related substance (e.g. salt vs. base). Reference strength represents the strength (quantitative composition) of the active moiety of the active substance. There are situations when the active substance and active moiety are different, therefore both a strength and a reference strength are needed.;
  List<IngredientReferenceStrength>? get referenceStrength =>
      throw _privateConstructorUsedError;

  /// Serializes this IngredientStrength to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of IngredientStrength
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IngredientStrengthCopyWith<IngredientStrength> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IngredientStrengthCopyWith<$Res> {
  factory $IngredientStrengthCopyWith(
          IngredientStrength value, $Res Function(IngredientStrength) then) =
      _$IngredientStrengthCopyWithImpl<$Res, IngredientStrength>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      Ratio? presentationRatio,
      RatioRange? presentationRatioRange,
      String? textPresentation,
      @JsonKey(name: '_textPresentation')
      PrimitiveElement? textPresentationElement,
      Ratio? concentrationRatio,
      RatioRange? concentrationRatioRange,
      String? textConcentration,
      @JsonKey(name: '_textConcentration')
      PrimitiveElement? textConcentrationElement,
      String? measurementPoint,
      @JsonKey(name: '_measurementPoint')
      PrimitiveElement? measurementPointElement,
      List<CodeableConcept>? country,
      List<IngredientReferenceStrength>? referenceStrength});

  $RatioCopyWith<$Res>? get presentationRatio;
  $RatioRangeCopyWith<$Res>? get presentationRatioRange;
  $RatioCopyWith<$Res>? get concentrationRatio;
  $RatioRangeCopyWith<$Res>? get concentrationRatioRange;
}

/// @nodoc
class _$IngredientStrengthCopyWithImpl<$Res, $Val extends IngredientStrength>
    implements $IngredientStrengthCopyWith<$Res> {
  _$IngredientStrengthCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IngredientStrength
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? presentationRatio = freezed,
    Object? presentationRatioRange = freezed,
    Object? textPresentation = freezed,
    Object? textPresentationElement = freezed,
    Object? concentrationRatio = freezed,
    Object? concentrationRatioRange = freezed,
    Object? textConcentration = freezed,
    Object? textConcentrationElement = freezed,
    Object? measurementPoint = freezed,
    Object? measurementPointElement = freezed,
    Object? country = freezed,
    Object? referenceStrength = freezed,
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
      presentationRatio: freezed == presentationRatio
          ? _value.presentationRatio
          : presentationRatio // ignore: cast_nullable_to_non_nullable
              as Ratio?,
      presentationRatioRange: freezed == presentationRatioRange
          ? _value.presentationRatioRange
          : presentationRatioRange // ignore: cast_nullable_to_non_nullable
              as RatioRange?,
      textPresentation: freezed == textPresentation
          ? _value.textPresentation
          : textPresentation // ignore: cast_nullable_to_non_nullable
              as String?,
      textPresentationElement: freezed == textPresentationElement
          ? _value.textPresentationElement
          : textPresentationElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      concentrationRatio: freezed == concentrationRatio
          ? _value.concentrationRatio
          : concentrationRatio // ignore: cast_nullable_to_non_nullable
              as Ratio?,
      concentrationRatioRange: freezed == concentrationRatioRange
          ? _value.concentrationRatioRange
          : concentrationRatioRange // ignore: cast_nullable_to_non_nullable
              as RatioRange?,
      textConcentration: freezed == textConcentration
          ? _value.textConcentration
          : textConcentration // ignore: cast_nullable_to_non_nullable
              as String?,
      textConcentrationElement: freezed == textConcentrationElement
          ? _value.textConcentrationElement
          : textConcentrationElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      measurementPoint: freezed == measurementPoint
          ? _value.measurementPoint
          : measurementPoint // ignore: cast_nullable_to_non_nullable
              as String?,
      measurementPointElement: freezed == measurementPointElement
          ? _value.measurementPointElement
          : measurementPointElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      referenceStrength: freezed == referenceStrength
          ? _value.referenceStrength
          : referenceStrength // ignore: cast_nullable_to_non_nullable
              as List<IngredientReferenceStrength>?,
    ) as $Val);
  }

  /// Create a copy of IngredientStrength
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RatioCopyWith<$Res>? get presentationRatio {
    if (_value.presentationRatio == null) {
      return null;
    }

    return $RatioCopyWith<$Res>(_value.presentationRatio!, (value) {
      return _then(_value.copyWith(presentationRatio: value) as $Val);
    });
  }

  /// Create a copy of IngredientStrength
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RatioRangeCopyWith<$Res>? get presentationRatioRange {
    if (_value.presentationRatioRange == null) {
      return null;
    }

    return $RatioRangeCopyWith<$Res>(_value.presentationRatioRange!, (value) {
      return _then(_value.copyWith(presentationRatioRange: value) as $Val);
    });
  }

  /// Create a copy of IngredientStrength
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RatioCopyWith<$Res>? get concentrationRatio {
    if (_value.concentrationRatio == null) {
      return null;
    }

    return $RatioCopyWith<$Res>(_value.concentrationRatio!, (value) {
      return _then(_value.copyWith(concentrationRatio: value) as $Val);
    });
  }

  /// Create a copy of IngredientStrength
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RatioRangeCopyWith<$Res>? get concentrationRatioRange {
    if (_value.concentrationRatioRange == null) {
      return null;
    }

    return $RatioRangeCopyWith<$Res>(_value.concentrationRatioRange!, (value) {
      return _then(_value.copyWith(concentrationRatioRange: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$IngredientStrengthImplCopyWith<$Res>
    implements $IngredientStrengthCopyWith<$Res> {
  factory _$$IngredientStrengthImplCopyWith(_$IngredientStrengthImpl value,
          $Res Function(_$IngredientStrengthImpl) then) =
      __$$IngredientStrengthImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      Ratio? presentationRatio,
      RatioRange? presentationRatioRange,
      String? textPresentation,
      @JsonKey(name: '_textPresentation')
      PrimitiveElement? textPresentationElement,
      Ratio? concentrationRatio,
      RatioRange? concentrationRatioRange,
      String? textConcentration,
      @JsonKey(name: '_textConcentration')
      PrimitiveElement? textConcentrationElement,
      String? measurementPoint,
      @JsonKey(name: '_measurementPoint')
      PrimitiveElement? measurementPointElement,
      List<CodeableConcept>? country,
      List<IngredientReferenceStrength>? referenceStrength});

  @override
  $RatioCopyWith<$Res>? get presentationRatio;
  @override
  $RatioRangeCopyWith<$Res>? get presentationRatioRange;
  @override
  $RatioCopyWith<$Res>? get concentrationRatio;
  @override
  $RatioRangeCopyWith<$Res>? get concentrationRatioRange;
}

/// @nodoc
class __$$IngredientStrengthImplCopyWithImpl<$Res>
    extends _$IngredientStrengthCopyWithImpl<$Res, _$IngredientStrengthImpl>
    implements _$$IngredientStrengthImplCopyWith<$Res> {
  __$$IngredientStrengthImplCopyWithImpl(_$IngredientStrengthImpl _value,
      $Res Function(_$IngredientStrengthImpl) _then)
      : super(_value, _then);

  /// Create a copy of IngredientStrength
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? presentationRatio = freezed,
    Object? presentationRatioRange = freezed,
    Object? textPresentation = freezed,
    Object? textPresentationElement = freezed,
    Object? concentrationRatio = freezed,
    Object? concentrationRatioRange = freezed,
    Object? textConcentration = freezed,
    Object? textConcentrationElement = freezed,
    Object? measurementPoint = freezed,
    Object? measurementPointElement = freezed,
    Object? country = freezed,
    Object? referenceStrength = freezed,
  }) {
    return _then(_$IngredientStrengthImpl(
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
      presentationRatio: freezed == presentationRatio
          ? _value.presentationRatio
          : presentationRatio // ignore: cast_nullable_to_non_nullable
              as Ratio?,
      presentationRatioRange: freezed == presentationRatioRange
          ? _value.presentationRatioRange
          : presentationRatioRange // ignore: cast_nullable_to_non_nullable
              as RatioRange?,
      textPresentation: freezed == textPresentation
          ? _value.textPresentation
          : textPresentation // ignore: cast_nullable_to_non_nullable
              as String?,
      textPresentationElement: freezed == textPresentationElement
          ? _value.textPresentationElement
          : textPresentationElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      concentrationRatio: freezed == concentrationRatio
          ? _value.concentrationRatio
          : concentrationRatio // ignore: cast_nullable_to_non_nullable
              as Ratio?,
      concentrationRatioRange: freezed == concentrationRatioRange
          ? _value.concentrationRatioRange
          : concentrationRatioRange // ignore: cast_nullable_to_non_nullable
              as RatioRange?,
      textConcentration: freezed == textConcentration
          ? _value.textConcentration
          : textConcentration // ignore: cast_nullable_to_non_nullable
              as String?,
      textConcentrationElement: freezed == textConcentrationElement
          ? _value.textConcentrationElement
          : textConcentrationElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      measurementPoint: freezed == measurementPoint
          ? _value.measurementPoint
          : measurementPoint // ignore: cast_nullable_to_non_nullable
              as String?,
      measurementPointElement: freezed == measurementPointElement
          ? _value.measurementPointElement
          : measurementPointElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      country: freezed == country
          ? _value._country
          : country // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      referenceStrength: freezed == referenceStrength
          ? _value._referenceStrength
          : referenceStrength // ignore: cast_nullable_to_non_nullable
              as List<IngredientReferenceStrength>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IngredientStrengthImpl extends _IngredientStrength {
  const _$IngredientStrengthImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.presentationRatio,
      this.presentationRatioRange,
      this.textPresentation,
      @JsonKey(name: '_textPresentation') this.textPresentationElement,
      this.concentrationRatio,
      this.concentrationRatioRange,
      this.textConcentration,
      @JsonKey(name: '_textConcentration') this.textConcentrationElement,
      this.measurementPoint,
      @JsonKey(name: '_measurementPoint') this.measurementPointElement,
      final List<CodeableConcept>? country,
      final List<IngredientReferenceStrength>? referenceStrength})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _country = country,
        _referenceStrength = referenceStrength,
        super._();

  factory _$IngredientStrengthImpl.fromJson(Map<String, dynamic> json) =>
      _$$IngredientStrengthImplFromJson(json);

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

  /// [presentationRatio] The quantity of substance in the unit of presentation, or in the volume (or mass) of the single pharmaceutical product or manufactured item. Unit of presentation refers to the quantity that the item occurs in e.g. a strength per tablet size, perhaps 'per 20mg' (the size of the tablet). It is not generally normalized as a unitary unit, which would be 'per mg').;
  @override
  final Ratio? presentationRatio;

  /// [presentationRatioRange] The quantity of substance in the unit of presentation, or in the volume (or mass) of the single pharmaceutical product or manufactured item. Unit of presentation refers to the quantity that the item occurs in e.g. a strength per tablet size, perhaps 'per 20mg' (the size of the tablet). It is not generally normalized as a unitary unit, which would be 'per mg').;
  @override
  final RatioRange? presentationRatioRange;

  /// [textPresentation] A textual represention of either the whole of the presentation strength or a part of it - with the rest being in Strength.presentation as a ratio.;
  @override
  final String? textPresentation;

  /// [textPresentationElement] (_textPresentation): Extensions for textPresentation;
  @override
  @JsonKey(name: '_textPresentation')
  final PrimitiveElement? textPresentationElement;

  /// [concentrationRatio] The strength per unitary volume (or mass).;
  @override
  final Ratio? concentrationRatio;

  /// [concentrationRatioRange] The strength per unitary volume (or mass).;
  @override
  final RatioRange? concentrationRatioRange;

  /// [textConcentration] A textual represention of either the whole of the concentration strength or a part of it - with the rest being in Strength.concentration as a ratio.;
  @override
  final String? textConcentration;

  /// [textConcentrationElement] (_textConcentration): Extensions for textConcentration;
  @override
  @JsonKey(name: '_textConcentration')
  final PrimitiveElement? textConcentrationElement;

  /// [measurementPoint] For when strength is measured at a particular point or distance. There are products where strength is measured at a particular point. For example, the strength of the ingredient in some inhalers is measured at a particular position relative to the point of aerosolization.;
  @override
  final String? measurementPoint;

  /// [measurementPointElement] (_measurementPoint): Extensions for measurementPoint;
  @override
  @JsonKey(name: '_measurementPoint')
  final PrimitiveElement? measurementPointElement;

  /// [country] The country or countries for which the strength range applies.;
  final List<CodeableConcept>? _country;

  /// [country] The country or countries for which the strength range applies.;
  @override
  List<CodeableConcept>? get country {
    final value = _country;
    if (value == null) return null;
    if (_country is EqualUnmodifiableListView) return _country;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [referenceStrength] Strength expressed in terms of a reference substance. For when the ingredient strength is additionally expressed as equivalent to the strength of some other closely related substance (e.g. salt vs. base). Reference strength represents the strength (quantitative composition) of the active moiety of the active substance. There are situations when the active substance and active moiety are different, therefore both a strength and a reference strength are needed.;
  final List<IngredientReferenceStrength>? _referenceStrength;

  /// [referenceStrength] Strength expressed in terms of a reference substance. For when the ingredient strength is additionally expressed as equivalent to the strength of some other closely related substance (e.g. salt vs. base). Reference strength represents the strength (quantitative composition) of the active moiety of the active substance. There are situations when the active substance and active moiety are different, therefore both a strength and a reference strength are needed.;
  @override
  List<IngredientReferenceStrength>? get referenceStrength {
    final value = _referenceStrength;
    if (value == null) return null;
    if (_referenceStrength is EqualUnmodifiableListView)
      return _referenceStrength;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'IngredientStrength(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, presentationRatio: $presentationRatio, presentationRatioRange: $presentationRatioRange, textPresentation: $textPresentation, textPresentationElement: $textPresentationElement, concentrationRatio: $concentrationRatio, concentrationRatioRange: $concentrationRatioRange, textConcentration: $textConcentration, textConcentrationElement: $textConcentrationElement, measurementPoint: $measurementPoint, measurementPointElement: $measurementPointElement, country: $country, referenceStrength: $referenceStrength)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IngredientStrengthImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.presentationRatio, presentationRatio) ||
                other.presentationRatio == presentationRatio) &&
            (identical(other.presentationRatioRange, presentationRatioRange) ||
                other.presentationRatioRange == presentationRatioRange) &&
            (identical(other.textPresentation, textPresentation) ||
                other.textPresentation == textPresentation) &&
            (identical(
                    other.textPresentationElement, textPresentationElement) ||
                other.textPresentationElement == textPresentationElement) &&
            (identical(other.concentrationRatio, concentrationRatio) ||
                other.concentrationRatio == concentrationRatio) &&
            (identical(
                    other.concentrationRatioRange, concentrationRatioRange) ||
                other.concentrationRatioRange == concentrationRatioRange) &&
            (identical(other.textConcentration, textConcentration) ||
                other.textConcentration == textConcentration) &&
            (identical(
                    other.textConcentrationElement, textConcentrationElement) ||
                other.textConcentrationElement == textConcentrationElement) &&
            (identical(other.measurementPoint, measurementPoint) ||
                other.measurementPoint == measurementPoint) &&
            (identical(
                    other.measurementPointElement, measurementPointElement) ||
                other.measurementPointElement == measurementPointElement) &&
            const DeepCollectionEquality().equals(other._country, _country) &&
            const DeepCollectionEquality()
                .equals(other._referenceStrength, _referenceStrength));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      presentationRatio,
      presentationRatioRange,
      textPresentation,
      textPresentationElement,
      concentrationRatio,
      concentrationRatioRange,
      textConcentration,
      textConcentrationElement,
      measurementPoint,
      measurementPointElement,
      const DeepCollectionEquality().hash(_country),
      const DeepCollectionEquality().hash(_referenceStrength));

  /// Create a copy of IngredientStrength
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IngredientStrengthImplCopyWith<_$IngredientStrengthImpl> get copyWith =>
      __$$IngredientStrengthImplCopyWithImpl<_$IngredientStrengthImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IngredientStrengthImplToJson(
      this,
    );
  }
}

abstract class _IngredientStrength extends IngredientStrength {
  const factory _IngredientStrength(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final Ratio? presentationRatio,
          final RatioRange? presentationRatioRange,
          final String? textPresentation,
          @JsonKey(name: '_textPresentation')
          final PrimitiveElement? textPresentationElement,
          final Ratio? concentrationRatio,
          final RatioRange? concentrationRatioRange,
          final String? textConcentration,
          @JsonKey(name: '_textConcentration')
          final PrimitiveElement? textConcentrationElement,
          final String? measurementPoint,
          @JsonKey(name: '_measurementPoint')
          final PrimitiveElement? measurementPointElement,
          final List<CodeableConcept>? country,
          final List<IngredientReferenceStrength>? referenceStrength}) =
      _$IngredientStrengthImpl;
  const _IngredientStrength._() : super._();

  factory _IngredientStrength.fromJson(Map<String, dynamic> json) =
      _$IngredientStrengthImpl.fromJson;

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

  /// [presentationRatio] The quantity of substance in the unit of presentation, or in the volume (or mass) of the single pharmaceutical product or manufactured item. Unit of presentation refers to the quantity that the item occurs in e.g. a strength per tablet size, perhaps 'per 20mg' (the size of the tablet). It is not generally normalized as a unitary unit, which would be 'per mg').;
  @override
  Ratio? get presentationRatio;

  /// [presentationRatioRange] The quantity of substance in the unit of presentation, or in the volume (or mass) of the single pharmaceutical product or manufactured item. Unit of presentation refers to the quantity that the item occurs in e.g. a strength per tablet size, perhaps 'per 20mg' (the size of the tablet). It is not generally normalized as a unitary unit, which would be 'per mg').;
  @override
  RatioRange? get presentationRatioRange;

  /// [textPresentation] A textual represention of either the whole of the presentation strength or a part of it - with the rest being in Strength.presentation as a ratio.;
  @override
  String? get textPresentation;

  /// [textPresentationElement] (_textPresentation): Extensions for textPresentation;
  @override
  @JsonKey(name: '_textPresentation')
  PrimitiveElement? get textPresentationElement;

  /// [concentrationRatio] The strength per unitary volume (or mass).;
  @override
  Ratio? get concentrationRatio;

  /// [concentrationRatioRange] The strength per unitary volume (or mass).;
  @override
  RatioRange? get concentrationRatioRange;

  /// [textConcentration] A textual represention of either the whole of the concentration strength or a part of it - with the rest being in Strength.concentration as a ratio.;
  @override
  String? get textConcentration;

  /// [textConcentrationElement] (_textConcentration): Extensions for textConcentration;
  @override
  @JsonKey(name: '_textConcentration')
  PrimitiveElement? get textConcentrationElement;

  /// [measurementPoint] For when strength is measured at a particular point or distance. There are products where strength is measured at a particular point. For example, the strength of the ingredient in some inhalers is measured at a particular position relative to the point of aerosolization.;
  @override
  String? get measurementPoint;

  /// [measurementPointElement] (_measurementPoint): Extensions for measurementPoint;
  @override
  @JsonKey(name: '_measurementPoint')
  PrimitiveElement? get measurementPointElement;

  /// [country] The country or countries for which the strength range applies.;
  @override
  List<CodeableConcept>? get country;

  /// [referenceStrength] Strength expressed in terms of a reference substance. For when the ingredient strength is additionally expressed as equivalent to the strength of some other closely related substance (e.g. salt vs. base). Reference strength represents the strength (quantitative composition) of the active moiety of the active substance. There are situations when the active substance and active moiety are different, therefore both a strength and a reference strength are needed.;
  @override
  List<IngredientReferenceStrength>? get referenceStrength;

  /// Create a copy of IngredientStrength
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IngredientStrengthImplCopyWith<_$IngredientStrengthImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

IngredientReferenceStrength _$IngredientReferenceStrengthFromJson(
    Map<String, dynamic> json) {
  return _IngredientReferenceStrength.fromJson(json);
}

/// @nodoc
mixin _$IngredientReferenceStrength {
  /// [id] Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.;
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [modifierExtension] May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.
  /// Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).;
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;

  /// [substance] Relevant reference substance.;
  CodeableReference? get substance => throw _privateConstructorUsedError;

  /// [strengthRatio] Strength expressed in terms of a reference substance.;
  Ratio? get strengthRatio => throw _privateConstructorUsedError;

  /// [strengthRatioRange] Strength expressed in terms of a reference substance.;
  RatioRange? get strengthRatioRange => throw _privateConstructorUsedError;

  /// [strengthQuantity] Strength expressed in terms of a reference substance.;
  Quantity? get strengthQuantity => throw _privateConstructorUsedError;

  /// [measurementPoint] For when strength is measured at a particular point or distance.;
  String? get measurementPoint => throw _privateConstructorUsedError;

  /// [measurementPointElement] (_measurementPoint): Extensions for measurementPoint;
  @JsonKey(name: '_measurementPoint')
  PrimitiveElement? get measurementPointElement =>
      throw _privateConstructorUsedError;

  /// [country] The country or countries for which the strength range applies.;
  List<CodeableConcept>? get country => throw _privateConstructorUsedError;

  /// Serializes this IngredientReferenceStrength to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of IngredientReferenceStrength
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IngredientReferenceStrengthCopyWith<IngredientReferenceStrength>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IngredientReferenceStrengthCopyWith<$Res> {
  factory $IngredientReferenceStrengthCopyWith(
          IngredientReferenceStrength value,
          $Res Function(IngredientReferenceStrength) then) =
      _$IngredientReferenceStrengthCopyWithImpl<$Res,
          IngredientReferenceStrength>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableReference? substance,
      Ratio? strengthRatio,
      RatioRange? strengthRatioRange,
      Quantity? strengthQuantity,
      String? measurementPoint,
      @JsonKey(name: '_measurementPoint')
      PrimitiveElement? measurementPointElement,
      List<CodeableConcept>? country});

  $CodeableReferenceCopyWith<$Res>? get substance;
  $RatioCopyWith<$Res>? get strengthRatio;
  $RatioRangeCopyWith<$Res>? get strengthRatioRange;
  $QuantityCopyWith<$Res>? get strengthQuantity;
}

/// @nodoc
class _$IngredientReferenceStrengthCopyWithImpl<$Res,
        $Val extends IngredientReferenceStrength>
    implements $IngredientReferenceStrengthCopyWith<$Res> {
  _$IngredientReferenceStrengthCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IngredientReferenceStrength
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? substance = freezed,
    Object? strengthRatio = freezed,
    Object? strengthRatioRange = freezed,
    Object? strengthQuantity = freezed,
    Object? measurementPoint = freezed,
    Object? measurementPointElement = freezed,
    Object? country = freezed,
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
      substance: freezed == substance
          ? _value.substance
          : substance // ignore: cast_nullable_to_non_nullable
              as CodeableReference?,
      strengthRatio: freezed == strengthRatio
          ? _value.strengthRatio
          : strengthRatio // ignore: cast_nullable_to_non_nullable
              as Ratio?,
      strengthRatioRange: freezed == strengthRatioRange
          ? _value.strengthRatioRange
          : strengthRatioRange // ignore: cast_nullable_to_non_nullable
              as RatioRange?,
      strengthQuantity: freezed == strengthQuantity
          ? _value.strengthQuantity
          : strengthQuantity // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      measurementPoint: freezed == measurementPoint
          ? _value.measurementPoint
          : measurementPoint // ignore: cast_nullable_to_non_nullable
              as String?,
      measurementPointElement: freezed == measurementPointElement
          ? _value.measurementPointElement
          : measurementPointElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
    ) as $Val);
  }

  /// Create a copy of IngredientReferenceStrength
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CodeableReferenceCopyWith<$Res>? get substance {
    if (_value.substance == null) {
      return null;
    }

    return $CodeableReferenceCopyWith<$Res>(_value.substance!, (value) {
      return _then(_value.copyWith(substance: value) as $Val);
    });
  }

  /// Create a copy of IngredientReferenceStrength
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RatioCopyWith<$Res>? get strengthRatio {
    if (_value.strengthRatio == null) {
      return null;
    }

    return $RatioCopyWith<$Res>(_value.strengthRatio!, (value) {
      return _then(_value.copyWith(strengthRatio: value) as $Val);
    });
  }

  /// Create a copy of IngredientReferenceStrength
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RatioRangeCopyWith<$Res>? get strengthRatioRange {
    if (_value.strengthRatioRange == null) {
      return null;
    }

    return $RatioRangeCopyWith<$Res>(_value.strengthRatioRange!, (value) {
      return _then(_value.copyWith(strengthRatioRange: value) as $Val);
    });
  }

  /// Create a copy of IngredientReferenceStrength
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $QuantityCopyWith<$Res>? get strengthQuantity {
    if (_value.strengthQuantity == null) {
      return null;
    }

    return $QuantityCopyWith<$Res>(_value.strengthQuantity!, (value) {
      return _then(_value.copyWith(strengthQuantity: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$IngredientReferenceStrengthImplCopyWith<$Res>
    implements $IngredientReferenceStrengthCopyWith<$Res> {
  factory _$$IngredientReferenceStrengthImplCopyWith(
          _$IngredientReferenceStrengthImpl value,
          $Res Function(_$IngredientReferenceStrengthImpl) then) =
      __$$IngredientReferenceStrengthImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      CodeableReference? substance,
      Ratio? strengthRatio,
      RatioRange? strengthRatioRange,
      Quantity? strengthQuantity,
      String? measurementPoint,
      @JsonKey(name: '_measurementPoint')
      PrimitiveElement? measurementPointElement,
      List<CodeableConcept>? country});

  @override
  $CodeableReferenceCopyWith<$Res>? get substance;
  @override
  $RatioCopyWith<$Res>? get strengthRatio;
  @override
  $RatioRangeCopyWith<$Res>? get strengthRatioRange;
  @override
  $QuantityCopyWith<$Res>? get strengthQuantity;
}

/// @nodoc
class __$$IngredientReferenceStrengthImplCopyWithImpl<$Res>
    extends _$IngredientReferenceStrengthCopyWithImpl<$Res,
        _$IngredientReferenceStrengthImpl>
    implements _$$IngredientReferenceStrengthImplCopyWith<$Res> {
  __$$IngredientReferenceStrengthImplCopyWithImpl(
      _$IngredientReferenceStrengthImpl _value,
      $Res Function(_$IngredientReferenceStrengthImpl) _then)
      : super(_value, _then);

  /// Create a copy of IngredientReferenceStrength
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? substance = freezed,
    Object? strengthRatio = freezed,
    Object? strengthRatioRange = freezed,
    Object? strengthQuantity = freezed,
    Object? measurementPoint = freezed,
    Object? measurementPointElement = freezed,
    Object? country = freezed,
  }) {
    return _then(_$IngredientReferenceStrengthImpl(
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
      substance: freezed == substance
          ? _value.substance
          : substance // ignore: cast_nullable_to_non_nullable
              as CodeableReference?,
      strengthRatio: freezed == strengthRatio
          ? _value.strengthRatio
          : strengthRatio // ignore: cast_nullable_to_non_nullable
              as Ratio?,
      strengthRatioRange: freezed == strengthRatioRange
          ? _value.strengthRatioRange
          : strengthRatioRange // ignore: cast_nullable_to_non_nullable
              as RatioRange?,
      strengthQuantity: freezed == strengthQuantity
          ? _value.strengthQuantity
          : strengthQuantity // ignore: cast_nullable_to_non_nullable
              as Quantity?,
      measurementPoint: freezed == measurementPoint
          ? _value.measurementPoint
          : measurementPoint // ignore: cast_nullable_to_non_nullable
              as String?,
      measurementPointElement: freezed == measurementPointElement
          ? _value.measurementPointElement
          : measurementPointElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      country: freezed == country
          ? _value._country
          : country // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IngredientReferenceStrengthImpl extends _IngredientReferenceStrength {
  const _$IngredientReferenceStrengthImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.substance,
      this.strengthRatio,
      this.strengthRatioRange,
      this.strengthQuantity,
      this.measurementPoint,
      @JsonKey(name: '_measurementPoint') this.measurementPointElement,
      final List<CodeableConcept>? country})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _country = country,
        super._();

  factory _$IngredientReferenceStrengthImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$IngredientReferenceStrengthImplFromJson(json);

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

  /// [substance] Relevant reference substance.;
  @override
  final CodeableReference? substance;

  /// [strengthRatio] Strength expressed in terms of a reference substance.;
  @override
  final Ratio? strengthRatio;

  /// [strengthRatioRange] Strength expressed in terms of a reference substance.;
  @override
  final RatioRange? strengthRatioRange;

  /// [strengthQuantity] Strength expressed in terms of a reference substance.;
  @override
  final Quantity? strengthQuantity;

  /// [measurementPoint] For when strength is measured at a particular point or distance.;
  @override
  final String? measurementPoint;

  /// [measurementPointElement] (_measurementPoint): Extensions for measurementPoint;
  @override
  @JsonKey(name: '_measurementPoint')
  final PrimitiveElement? measurementPointElement;

  /// [country] The country or countries for which the strength range applies.;
  final List<CodeableConcept>? _country;

  /// [country] The country or countries for which the strength range applies.;
  @override
  List<CodeableConcept>? get country {
    final value = _country;
    if (value == null) return null;
    if (_country is EqualUnmodifiableListView) return _country;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'IngredientReferenceStrength(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, substance: $substance, strengthRatio: $strengthRatio, strengthRatioRange: $strengthRatioRange, strengthQuantity: $strengthQuantity, measurementPoint: $measurementPoint, measurementPointElement: $measurementPointElement, country: $country)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IngredientReferenceStrengthImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.substance, substance) ||
                other.substance == substance) &&
            (identical(other.strengthRatio, strengthRatio) ||
                other.strengthRatio == strengthRatio) &&
            (identical(other.strengthRatioRange, strengthRatioRange) ||
                other.strengthRatioRange == strengthRatioRange) &&
            (identical(other.strengthQuantity, strengthQuantity) ||
                other.strengthQuantity == strengthQuantity) &&
            (identical(other.measurementPoint, measurementPoint) ||
                other.measurementPoint == measurementPoint) &&
            (identical(
                    other.measurementPointElement, measurementPointElement) ||
                other.measurementPointElement == measurementPointElement) &&
            const DeepCollectionEquality().equals(other._country, _country));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      substance,
      strengthRatio,
      strengthRatioRange,
      strengthQuantity,
      measurementPoint,
      measurementPointElement,
      const DeepCollectionEquality().hash(_country));

  /// Create a copy of IngredientReferenceStrength
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IngredientReferenceStrengthImplCopyWith<_$IngredientReferenceStrengthImpl>
      get copyWith => __$$IngredientReferenceStrengthImplCopyWithImpl<
          _$IngredientReferenceStrengthImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IngredientReferenceStrengthImplToJson(
      this,
    );
  }
}

abstract class _IngredientReferenceStrength
    extends IngredientReferenceStrength {
  const factory _IngredientReferenceStrength(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final List<FhirExtension>? modifierExtension,
          final CodeableReference? substance,
          final Ratio? strengthRatio,
          final RatioRange? strengthRatioRange,
          final Quantity? strengthQuantity,
          final String? measurementPoint,
          @JsonKey(name: '_measurementPoint')
          final PrimitiveElement? measurementPointElement,
          final List<CodeableConcept>? country}) =
      _$IngredientReferenceStrengthImpl;
  const _IngredientReferenceStrength._() : super._();

  factory _IngredientReferenceStrength.fromJson(Map<String, dynamic> json) =
      _$IngredientReferenceStrengthImpl.fromJson;

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

  /// [substance] Relevant reference substance.;
  @override
  CodeableReference? get substance;

  /// [strengthRatio] Strength expressed in terms of a reference substance.;
  @override
  Ratio? get strengthRatio;

  /// [strengthRatioRange] Strength expressed in terms of a reference substance.;
  @override
  RatioRange? get strengthRatioRange;

  /// [strengthQuantity] Strength expressed in terms of a reference substance.;
  @override
  Quantity? get strengthQuantity;

  /// [measurementPoint] For when strength is measured at a particular point or distance.;
  @override
  String? get measurementPoint;

  /// [measurementPointElement] (_measurementPoint): Extensions for measurementPoint;
  @override
  @JsonKey(name: '_measurementPoint')
  PrimitiveElement? get measurementPointElement;

  /// [country] The country or countries for which the strength range applies.;
  @override
  List<CodeableConcept>? get country;

  /// Create a copy of IngredientReferenceStrength
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IngredientReferenceStrengthImplCopyWith<_$IngredientReferenceStrengthImpl>
      get copyWith => throw _privateConstructorUsedError;
}
