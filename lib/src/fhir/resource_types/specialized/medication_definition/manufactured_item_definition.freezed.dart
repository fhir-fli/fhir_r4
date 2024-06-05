// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'manufactured_item_definition.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ManufacturedItemDefinition _$ManufacturedItemDefinitionFromJson(
    Map<String, dynamic> json) {
  return _ManufacturedItemDefinition.fromJson(json);
}

/// @nodoc
mixin _$ManufacturedItemDefinition {
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

  /// [identifier] Unique identifier.;
  List<Identifier>? get identifier => throw _privateConstructorUsedError;

  /// [status] The status of this item. Enables tracking the life-cycle of the content.;
  FhirCode? get status => throw _privateConstructorUsedError;

  /// [statusElement] (_status): Extensions for status;
  @JsonKey(name: '_status')
  PrimitiveElement? get statusElement => throw _privateConstructorUsedError;

  /// [manufacturedDoseForm] Dose form as manufactured and before any transformation into the pharmaceutical product.;
  CodeableConcept get manufacturedDoseForm =>
      throw _privateConstructorUsedError;

  /// [unitOfPresentation] The “real world” units in which the quantity of the manufactured item is described.;
  CodeableConcept? get unitOfPresentation => throw _privateConstructorUsedError;

  /// [manufacturer] Manufacturer of the item (Note that this should be named "manufacturer" but it currently causes technical issues).;
  List<Reference>? get manufacturer => throw _privateConstructorUsedError;

  /// [ingredient] The ingredients of this manufactured item. This is only needed if the ingredients are not specified by incoming references from the Ingredient resource.;
  List<CodeableConcept>? get ingredient => throw _privateConstructorUsedError;

  /// [property] General characteristics of this item.;
  List<ManufacturedItemDefinitionProperty>? get property =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ManufacturedItemDefinitionCopyWith<ManufacturedItemDefinition>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ManufacturedItemDefinitionCopyWith<$Res> {
  factory $ManufacturedItemDefinitionCopyWith(ManufacturedItemDefinition value,
          $Res Function(ManufacturedItemDefinition) then) =
      _$ManufacturedItemDefinitionCopyWithImpl<$Res,
          ManufacturedItemDefinition>;
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
      FhirCode? status,
      @JsonKey(name: '_status') PrimitiveElement? statusElement,
      CodeableConcept manufacturedDoseForm,
      CodeableConcept? unitOfPresentation,
      List<Reference>? manufacturer,
      List<CodeableConcept>? ingredient,
      List<ManufacturedItemDefinitionProperty>? property});

  $FhirMetaCopyWith<$Res>? get meta;
  $NarrativeCopyWith<$Res>? get text;
  $CodeableConceptCopyWith<$Res> get manufacturedDoseForm;
  $CodeableConceptCopyWith<$Res>? get unitOfPresentation;
}

/// @nodoc
class _$ManufacturedItemDefinitionCopyWithImpl<$Res,
        $Val extends ManufacturedItemDefinition>
    implements $ManufacturedItemDefinitionCopyWith<$Res> {
  _$ManufacturedItemDefinitionCopyWithImpl(this._value, this._then);

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
    Object? status = freezed,
    Object? statusElement = freezed,
    Object? manufacturedDoseForm = null,
    Object? unitOfPresentation = freezed,
    Object? manufacturer = freezed,
    Object? ingredient = freezed,
    Object? property = freezed,
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
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      statusElement: freezed == statusElement
          ? _value.statusElement
          : statusElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      manufacturedDoseForm: null == manufacturedDoseForm
          ? _value.manufacturedDoseForm
          : manufacturedDoseForm // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      unitOfPresentation: freezed == unitOfPresentation
          ? _value.unitOfPresentation
          : unitOfPresentation // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      manufacturer: freezed == manufacturer
          ? _value.manufacturer
          : manufacturer // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      ingredient: freezed == ingredient
          ? _value.ingredient
          : ingredient // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      property: freezed == property
          ? _value.property
          : property // ignore: cast_nullable_to_non_nullable
              as List<ManufacturedItemDefinitionProperty>?,
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
  $CodeableConceptCopyWith<$Res> get manufacturedDoseForm {
    return $CodeableConceptCopyWith<$Res>(_value.manufacturedDoseForm, (value) {
      return _then(_value.copyWith(manufacturedDoseForm: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get unitOfPresentation {
    if (_value.unitOfPresentation == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.unitOfPresentation!, (value) {
      return _then(_value.copyWith(unitOfPresentation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ManufacturedItemDefinitionImplCopyWith<$Res>
    implements $ManufacturedItemDefinitionCopyWith<$Res> {
  factory _$$ManufacturedItemDefinitionImplCopyWith(
          _$ManufacturedItemDefinitionImpl value,
          $Res Function(_$ManufacturedItemDefinitionImpl) then) =
      __$$ManufacturedItemDefinitionImplCopyWithImpl<$Res>;
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
      FhirCode? status,
      @JsonKey(name: '_status') PrimitiveElement? statusElement,
      CodeableConcept manufacturedDoseForm,
      CodeableConcept? unitOfPresentation,
      List<Reference>? manufacturer,
      List<CodeableConcept>? ingredient,
      List<ManufacturedItemDefinitionProperty>? property});

  @override
  $FhirMetaCopyWith<$Res>? get meta;
  @override
  $NarrativeCopyWith<$Res>? get text;
  @override
  $CodeableConceptCopyWith<$Res> get manufacturedDoseForm;
  @override
  $CodeableConceptCopyWith<$Res>? get unitOfPresentation;
}

/// @nodoc
class __$$ManufacturedItemDefinitionImplCopyWithImpl<$Res>
    extends _$ManufacturedItemDefinitionCopyWithImpl<$Res,
        _$ManufacturedItemDefinitionImpl>
    implements _$$ManufacturedItemDefinitionImplCopyWith<$Res> {
  __$$ManufacturedItemDefinitionImplCopyWithImpl(
      _$ManufacturedItemDefinitionImpl _value,
      $Res Function(_$ManufacturedItemDefinitionImpl) _then)
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
    Object? status = freezed,
    Object? statusElement = freezed,
    Object? manufacturedDoseForm = null,
    Object? unitOfPresentation = freezed,
    Object? manufacturer = freezed,
    Object? ingredient = freezed,
    Object? property = freezed,
  }) {
    return _then(_$ManufacturedItemDefinitionImpl(
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
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      statusElement: freezed == statusElement
          ? _value.statusElement
          : statusElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      manufacturedDoseForm: null == manufacturedDoseForm
          ? _value.manufacturedDoseForm
          : manufacturedDoseForm // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      unitOfPresentation: freezed == unitOfPresentation
          ? _value.unitOfPresentation
          : unitOfPresentation // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      manufacturer: freezed == manufacturer
          ? _value._manufacturer
          : manufacturer // ignore: cast_nullable_to_non_nullable
              as List<Reference>?,
      ingredient: freezed == ingredient
          ? _value._ingredient
          : ingredient // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      property: freezed == property
          ? _value._property
          : property // ignore: cast_nullable_to_non_nullable
              as List<ManufacturedItemDefinitionProperty>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ManufacturedItemDefinitionImpl extends _ManufacturedItemDefinition {
  const _$ManufacturedItemDefinitionImpl(
      {this.resourceType = R4ResourceType.ManufacturedItemDefinition,
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
      this.status,
      @JsonKey(name: '_status') this.statusElement,
      required this.manufacturedDoseForm,
      this.unitOfPresentation,
      final List<Reference>? manufacturer,
      final List<CodeableConcept>? ingredient,
      final List<ManufacturedItemDefinitionProperty>? property})
      : _contained = contained,
        _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _identifier = identifier,
        _manufacturer = manufacturer,
        _ingredient = ingredient,
        _property = property,
        super._();

  factory _$ManufacturedItemDefinitionImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ManufacturedItemDefinitionImplFromJson(json);

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

  /// [identifier] Unique identifier.;
  final List<Identifier>? _identifier;

  /// [identifier] Unique identifier.;
  @override
  List<Identifier>? get identifier {
    final value = _identifier;
    if (value == null) return null;
    if (_identifier is EqualUnmodifiableListView) return _identifier;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [status] The status of this item. Enables tracking the life-cycle of the content.;
  @override
  final FhirCode? status;

  /// [statusElement] (_status): Extensions for status;
  @override
  @JsonKey(name: '_status')
  final PrimitiveElement? statusElement;

  /// [manufacturedDoseForm] Dose form as manufactured and before any transformation into the pharmaceutical product.;
  @override
  final CodeableConcept manufacturedDoseForm;

  /// [unitOfPresentation] The “real world” units in which the quantity of the manufactured item is described.;
  @override
  final CodeableConcept? unitOfPresentation;

  /// [manufacturer] Manufacturer of the item (Note that this should be named "manufacturer" but it currently causes technical issues).;
  final List<Reference>? _manufacturer;

  /// [manufacturer] Manufacturer of the item (Note that this should be named "manufacturer" but it currently causes technical issues).;
  @override
  List<Reference>? get manufacturer {
    final value = _manufacturer;
    if (value == null) return null;
    if (_manufacturer is EqualUnmodifiableListView) return _manufacturer;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [ingredient] The ingredients of this manufactured item. This is only needed if the ingredients are not specified by incoming references from the Ingredient resource.;
  final List<CodeableConcept>? _ingredient;

  /// [ingredient] The ingredients of this manufactured item. This is only needed if the ingredients are not specified by incoming references from the Ingredient resource.;
  @override
  List<CodeableConcept>? get ingredient {
    final value = _ingredient;
    if (value == null) return null;
    if (_ingredient is EqualUnmodifiableListView) return _ingredient;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [property] General characteristics of this item.;
  final List<ManufacturedItemDefinitionProperty>? _property;

  /// [property] General characteristics of this item.;
  @override
  List<ManufacturedItemDefinitionProperty>? get property {
    final value = _property;
    if (value == null) return null;
    if (_property is EqualUnmodifiableListView) return _property;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ManufacturedItemDefinition(resourceType: $resourceType, id: $id, meta: $meta, implicitRules: $implicitRules, implicitRulesElement: $implicitRulesElement, language: $language, languageElement: $languageElement, text: $text, contained: $contained, extension_: $extension_, modifierExtension: $modifierExtension, identifier: $identifier, status: $status, statusElement: $statusElement, manufacturedDoseForm: $manufacturedDoseForm, unitOfPresentation: $unitOfPresentation, manufacturer: $manufacturer, ingredient: $ingredient, property: $property)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ManufacturedItemDefinitionImpl &&
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
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusElement, statusElement) ||
                other.statusElement == statusElement) &&
            (identical(other.manufacturedDoseForm, manufacturedDoseForm) ||
                other.manufacturedDoseForm == manufacturedDoseForm) &&
            (identical(other.unitOfPresentation, unitOfPresentation) ||
                other.unitOfPresentation == unitOfPresentation) &&
            const DeepCollectionEquality()
                .equals(other._manufacturer, _manufacturer) &&
            const DeepCollectionEquality()
                .equals(other._ingredient, _ingredient) &&
            const DeepCollectionEquality().equals(other._property, _property));
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
        status,
        statusElement,
        manufacturedDoseForm,
        unitOfPresentation,
        const DeepCollectionEquality().hash(_manufacturer),
        const DeepCollectionEquality().hash(_ingredient),
        const DeepCollectionEquality().hash(_property)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ManufacturedItemDefinitionImplCopyWith<_$ManufacturedItemDefinitionImpl>
      get copyWith => __$$ManufacturedItemDefinitionImplCopyWithImpl<
          _$ManufacturedItemDefinitionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ManufacturedItemDefinitionImplToJson(
      this,
    );
  }
}

abstract class _ManufacturedItemDefinition extends ManufacturedItemDefinition {
  const factory _ManufacturedItemDefinition(
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
          final FhirCode? status,
          @JsonKey(name: '_status') final PrimitiveElement? statusElement,
          required final CodeableConcept manufacturedDoseForm,
          final CodeableConcept? unitOfPresentation,
          final List<Reference>? manufacturer,
          final List<CodeableConcept>? ingredient,
          final List<ManufacturedItemDefinitionProperty>? property}) =
      _$ManufacturedItemDefinitionImpl;
  const _ManufacturedItemDefinition._() : super._();

  factory _ManufacturedItemDefinition.fromJson(Map<String, dynamic> json) =
      _$ManufacturedItemDefinitionImpl.fromJson;

  @override
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

  /// [identifier] Unique identifier.;
  List<Identifier>? get identifier;
  @override

  /// [status] The status of this item. Enables tracking the life-cycle of the content.;
  FhirCode? get status;
  @override

  /// [statusElement] (_status): Extensions for status;
  @JsonKey(name: '_status')
  PrimitiveElement? get statusElement;
  @override

  /// [manufacturedDoseForm] Dose form as manufactured and before any transformation into the pharmaceutical product.;
  CodeableConcept get manufacturedDoseForm;
  @override

  /// [unitOfPresentation] The “real world” units in which the quantity of the manufactured item is described.;
  CodeableConcept? get unitOfPresentation;
  @override

  /// [manufacturer] Manufacturer of the item (Note that this should be named "manufacturer" but it currently causes technical issues).;
  List<Reference>? get manufacturer;
  @override

  /// [ingredient] The ingredients of this manufactured item. This is only needed if the ingredients are not specified by incoming references from the Ingredient resource.;
  List<CodeableConcept>? get ingredient;
  @override

  /// [property] General characteristics of this item.;
  List<ManufacturedItemDefinitionProperty>? get property;
  @override
  @JsonKey(ignore: true)
  _$$ManufacturedItemDefinitionImplCopyWith<_$ManufacturedItemDefinitionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ManufacturedItemDefinitionProperty _$ManufacturedItemDefinitionPropertyFromJson(
    Map<String, dynamic> json) {
  return _ManufacturedItemDefinitionProperty.fromJson(json);
}

/// @nodoc
mixin _$ManufacturedItemDefinitionProperty {
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

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ManufacturedItemDefinitionPropertyCopyWith<
          ManufacturedItemDefinitionProperty>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ManufacturedItemDefinitionPropertyCopyWith<$Res> {
  factory $ManufacturedItemDefinitionPropertyCopyWith(
          ManufacturedItemDefinitionProperty value,
          $Res Function(ManufacturedItemDefinitionProperty) then) =
      _$ManufacturedItemDefinitionPropertyCopyWithImpl<$Res,
          ManufacturedItemDefinitionProperty>;
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
class _$ManufacturedItemDefinitionPropertyCopyWithImpl<$Res,
        $Val extends ManufacturedItemDefinitionProperty>
    implements $ManufacturedItemDefinitionPropertyCopyWith<$Res> {
  _$ManufacturedItemDefinitionPropertyCopyWithImpl(this._value, this._then);

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
abstract class _$$ManufacturedItemDefinitionPropertyImplCopyWith<$Res>
    implements $ManufacturedItemDefinitionPropertyCopyWith<$Res> {
  factory _$$ManufacturedItemDefinitionPropertyImplCopyWith(
          _$ManufacturedItemDefinitionPropertyImpl value,
          $Res Function(_$ManufacturedItemDefinitionPropertyImpl) then) =
      __$$ManufacturedItemDefinitionPropertyImplCopyWithImpl<$Res>;
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
class __$$ManufacturedItemDefinitionPropertyImplCopyWithImpl<$Res>
    extends _$ManufacturedItemDefinitionPropertyCopyWithImpl<$Res,
        _$ManufacturedItemDefinitionPropertyImpl>
    implements _$$ManufacturedItemDefinitionPropertyImplCopyWith<$Res> {
  __$$ManufacturedItemDefinitionPropertyImplCopyWithImpl(
      _$ManufacturedItemDefinitionPropertyImpl _value,
      $Res Function(_$ManufacturedItemDefinitionPropertyImpl) _then)
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
    return _then(_$ManufacturedItemDefinitionPropertyImpl(
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
class _$ManufacturedItemDefinitionPropertyImpl
    extends _ManufacturedItemDefinitionProperty {
  const _$ManufacturedItemDefinitionPropertyImpl(
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

  factory _$ManufacturedItemDefinitionPropertyImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ManufacturedItemDefinitionPropertyImplFromJson(json);

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
    return 'ManufacturedItemDefinitionProperty(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, type: $type, valueCodeableConcept: $valueCodeableConcept, valueQuantity: $valueQuantity, valueDate: $valueDate, valueDateElement: $valueDateElement, valueBoolean: $valueBoolean, valueBooleanElement: $valueBooleanElement, valueAttachment: $valueAttachment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ManufacturedItemDefinitionPropertyImpl &&
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
  _$$ManufacturedItemDefinitionPropertyImplCopyWith<
          _$ManufacturedItemDefinitionPropertyImpl>
      get copyWith => __$$ManufacturedItemDefinitionPropertyImplCopyWithImpl<
          _$ManufacturedItemDefinitionPropertyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ManufacturedItemDefinitionPropertyImplToJson(
      this,
    );
  }
}

abstract class _ManufacturedItemDefinitionProperty
    extends ManufacturedItemDefinitionProperty {
  const factory _ManufacturedItemDefinitionProperty(
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
      _$ManufacturedItemDefinitionPropertyImpl;
  const _ManufacturedItemDefinitionProperty._() : super._();

  factory _ManufacturedItemDefinitionProperty.fromJson(
          Map<String, dynamic> json) =
      _$ManufacturedItemDefinitionPropertyImpl.fromJson;

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

  /// [type] A code expressing the type of characteristic.;
  CodeableConcept get type;
  @override

  /// [valueCodeableConcept] A value for the characteristic.;
  CodeableConcept? get valueCodeableConcept;
  @override

  /// [valueQuantity] A value for the characteristic.;
  Quantity? get valueQuantity;
  @override

  /// [valueDate] A value for the characteristic.;
  FhirDate? get valueDate;
  @override

  /// [valueDateElement] (_valueDate): Extensions for valueDate;
  @JsonKey(name: '_valueDate')
  PrimitiveElement? get valueDateElement;
  @override

  /// [valueBoolean] A value for the characteristic.;
  FhirBoolean? get valueBoolean;
  @override

  /// [valueBooleanElement] (_valueBoolean): Extensions for valueBoolean;
  @JsonKey(name: '_valueBoolean')
  PrimitiveElement? get valueBooleanElement;
  @override

  /// [valueAttachment] A value for the characteristic.;
  Attachment? get valueAttachment;
  @override
  @JsonKey(ignore: true)
  _$$ManufacturedItemDefinitionPropertyImplCopyWith<
          _$ManufacturedItemDefinitionPropertyImpl>
      get copyWith => throw _privateConstructorUsedError;
}
