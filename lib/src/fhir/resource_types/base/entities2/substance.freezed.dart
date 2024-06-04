// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'substance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Substance _$SubstanceFromJson(Map<String, dynamic> json) {
  return _Substance.fromJson(json);
}

/// @nodoc
mixin _$Substance {
  @JsonKey(unknownEnumValue: R4ResourceType.Substance)
  R4ResourceType get resourceType => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  FhirMeta? get meta => throw _privateConstructorUsedError;
  FhirUri? get implicitRules => throw _privateConstructorUsedError;
  @JsonKey(name: '_implicitRules')
  PrimitiveElement? get implicitRulesElement =>
      throw _privateConstructorUsedError;
  FhirCode? get language => throw _privateConstructorUsedError;
  @JsonKey(name: '_language')
  PrimitiveElement? get languageElement => throw _privateConstructorUsedError;
  Narrative? get text => throw _privateConstructorUsedError;
  List<Resource>? get contained => throw _privateConstructorUsedError;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;
  List<Identifier>? get identifier => throw _privateConstructorUsedError;

  /// [status] The current state of the product.;
  SubstanceStatus? get status => throw _privateConstructorUsedError;

  /// [statusElement] (_status): Extensions for status;
  @JsonKey(name: '_status')
  PrimitiveElement? get statusElement => throw _privateConstructorUsedError;

  /// [category] Nutrition products can have different classifications - according to its nutritional properties, preparation methods, etc.;
  List<CodeableConcept>? get category => throw _privateConstructorUsedError;
  CodeableConcept get code => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement =>
      throw _privateConstructorUsedError;
  List<SubstanceInstance>? get instance => throw _privateConstructorUsedError;
  List<SubstanceIngredient>? get ingredient =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubstanceCopyWith<Substance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubstanceCopyWith<$Res> {
  factory $SubstanceCopyWith(Substance value, $Res Function(Substance) then) =
      _$SubstanceCopyWithImpl<$Res, Substance>;
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R4ResourceType.Substance)
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
      SubstanceStatus? status,
      @JsonKey(name: '_status') PrimitiveElement? statusElement,
      List<CodeableConcept>? category,
      CodeableConcept code,
      String? description,
      @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
      List<SubstanceInstance>? instance,
      List<SubstanceIngredient>? ingredient});

  $FhirMetaCopyWith<$Res>? get meta;
  $NarrativeCopyWith<$Res>? get text;
  $CodeableConceptCopyWith<$Res> get code;
}

/// @nodoc
class _$SubstanceCopyWithImpl<$Res, $Val extends Substance>
    implements $SubstanceCopyWith<$Res> {
  _$SubstanceCopyWithImpl(this._value, this._then);

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
    Object? category = freezed,
    Object? code = null,
    Object? description = freezed,
    Object? descriptionElement = freezed,
    Object? instance = freezed,
    Object? ingredient = freezed,
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
              as SubstanceStatus?,
      statusElement: freezed == statusElement
          ? _value.statusElement
          : statusElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptionElement: freezed == descriptionElement
          ? _value.descriptionElement
          : descriptionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      instance: freezed == instance
          ? _value.instance
          : instance // ignore: cast_nullable_to_non_nullable
              as List<SubstanceInstance>?,
      ingredient: freezed == ingredient
          ? _value.ingredient
          : ingredient // ignore: cast_nullable_to_non_nullable
              as List<SubstanceIngredient>?,
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
  $CodeableConceptCopyWith<$Res> get code {
    return $CodeableConceptCopyWith<$Res>(_value.code, (value) {
      return _then(_value.copyWith(code: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SubstanceImplCopyWith<$Res>
    implements $SubstanceCopyWith<$Res> {
  factory _$$SubstanceImplCopyWith(
          _$SubstanceImpl value, $Res Function(_$SubstanceImpl) then) =
      __$$SubstanceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(unknownEnumValue: R4ResourceType.Substance)
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
      SubstanceStatus? status,
      @JsonKey(name: '_status') PrimitiveElement? statusElement,
      List<CodeableConcept>? category,
      CodeableConcept code,
      String? description,
      @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
      List<SubstanceInstance>? instance,
      List<SubstanceIngredient>? ingredient});

  @override
  $FhirMetaCopyWith<$Res>? get meta;
  @override
  $NarrativeCopyWith<$Res>? get text;
  @override
  $CodeableConceptCopyWith<$Res> get code;
}

/// @nodoc
class __$$SubstanceImplCopyWithImpl<$Res>
    extends _$SubstanceCopyWithImpl<$Res, _$SubstanceImpl>
    implements _$$SubstanceImplCopyWith<$Res> {
  __$$SubstanceImplCopyWithImpl(
      _$SubstanceImpl _value, $Res Function(_$SubstanceImpl) _then)
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
    Object? category = freezed,
    Object? code = null,
    Object? description = freezed,
    Object? descriptionElement = freezed,
    Object? instance = freezed,
    Object? ingredient = freezed,
  }) {
    return _then(_$SubstanceImpl(
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
              as SubstanceStatus?,
      statusElement: freezed == statusElement
          ? _value.statusElement
          : statusElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      category: freezed == category
          ? _value._category
          : category // ignore: cast_nullable_to_non_nullable
              as List<CodeableConcept>?,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as CodeableConcept,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptionElement: freezed == descriptionElement
          ? _value.descriptionElement
          : descriptionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      instance: freezed == instance
          ? _value._instance
          : instance // ignore: cast_nullable_to_non_nullable
              as List<SubstanceInstance>?,
      ingredient: freezed == ingredient
          ? _value._ingredient
          : ingredient // ignore: cast_nullable_to_non_nullable
              as List<SubstanceIngredient>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubstanceImpl extends _Substance {
  const _$SubstanceImpl(
      {@JsonKey(unknownEnumValue: R4ResourceType.Substance)
      this.resourceType = R4ResourceType.Substance,
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
      final List<CodeableConcept>? category,
      required this.code,
      this.description,
      @JsonKey(name: '_description') this.descriptionElement,
      final List<SubstanceInstance>? instance,
      final List<SubstanceIngredient>? ingredient})
      : _contained = contained,
        _extension_ = extension_,
        _modifierExtension = modifierExtension,
        _identifier = identifier,
        _category = category,
        _instance = instance,
        _ingredient = ingredient,
        super._();

  factory _$SubstanceImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubstanceImplFromJson(json);

  @override
  @JsonKey(unknownEnumValue: R4ResourceType.Substance)
  final R4ResourceType resourceType;
  @override
  final String? id;
  @override
  final FhirMeta? meta;
  @override
  final FhirUri? implicitRules;
  @override
  @JsonKey(name: '_implicitRules')
  final PrimitiveElement? implicitRulesElement;
  @override
  final FhirCode? language;
  @override
  @JsonKey(name: '_language')
  final PrimitiveElement? languageElement;
  @override
  final Narrative? text;
  final List<Resource>? _contained;
  @override
  List<Resource>? get contained {
    final value = _contained;
    if (value == null) return null;
    if (_contained is EqualUnmodifiableListView) return _contained;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<FhirExtension>? _extension_;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<FhirExtension>? _modifierExtension;
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Identifier>? _identifier;
  @override
  List<Identifier>? get identifier {
    final value = _identifier;
    if (value == null) return null;
    if (_identifier is EqualUnmodifiableListView) return _identifier;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [status] The current state of the product.;
  @override
  final SubstanceStatus? status;

  /// [statusElement] (_status): Extensions for status;
  @override
  @JsonKey(name: '_status')
  final PrimitiveElement? statusElement;

  /// [category] Nutrition products can have different classifications - according to its nutritional properties, preparation methods, etc.;
  final List<CodeableConcept>? _category;

  /// [category] Nutrition products can have different classifications - according to its nutritional properties, preparation methods, etc.;
  @override
  List<CodeableConcept>? get category {
    final value = _category;
    if (value == null) return null;
    if (_category is EqualUnmodifiableListView) return _category;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final CodeableConcept code;
  @override
  final String? description;
  @override
  @JsonKey(name: '_description')
  final PrimitiveElement? descriptionElement;
  final List<SubstanceInstance>? _instance;
  @override
  List<SubstanceInstance>? get instance {
    final value = _instance;
    if (value == null) return null;
    if (_instance is EqualUnmodifiableListView) return _instance;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<SubstanceIngredient>? _ingredient;
  @override
  List<SubstanceIngredient>? get ingredient {
    final value = _ingredient;
    if (value == null) return null;
    if (_ingredient is EqualUnmodifiableListView) return _ingredient;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Substance(resourceType: $resourceType, id: $id, meta: $meta, implicitRules: $implicitRules, implicitRulesElement: $implicitRulesElement, language: $language, languageElement: $languageElement, text: $text, contained: $contained, extension_: $extension_, modifierExtension: $modifierExtension, identifier: $identifier, status: $status, statusElement: $statusElement, category: $category, code: $code, description: $description, descriptionElement: $descriptionElement, instance: $instance, ingredient: $ingredient)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubstanceImpl &&
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
            const DeepCollectionEquality().equals(other._category, _category) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.descriptionElement, descriptionElement) ||
                other.descriptionElement == descriptionElement) &&
            const DeepCollectionEquality().equals(other._instance, _instance) &&
            const DeepCollectionEquality()
                .equals(other._ingredient, _ingredient));
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
        const DeepCollectionEquality().hash(_category),
        code,
        description,
        descriptionElement,
        const DeepCollectionEquality().hash(_instance),
        const DeepCollectionEquality().hash(_ingredient)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubstanceImplCopyWith<_$SubstanceImpl> get copyWith =>
      __$$SubstanceImplCopyWithImpl<_$SubstanceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubstanceImplToJson(
      this,
    );
  }
}

abstract class _Substance extends Substance {
  const factory _Substance(
      {@JsonKey(unknownEnumValue: R4ResourceType.Substance)
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
      final SubstanceStatus? status,
      @JsonKey(name: '_status') final PrimitiveElement? statusElement,
      final List<CodeableConcept>? category,
      required final CodeableConcept code,
      final String? description,
      @JsonKey(name: '_description') final PrimitiveElement? descriptionElement,
      final List<SubstanceInstance>? instance,
      final List<SubstanceIngredient>? ingredient}) = _$SubstanceImpl;
  const _Substance._() : super._();

  factory _Substance.fromJson(Map<String, dynamic> json) =
      _$SubstanceImpl.fromJson;

  @override
  @JsonKey(unknownEnumValue: R4ResourceType.Substance)
  R4ResourceType get resourceType;
  @override
  String? get id;
  @override
  FhirMeta? get meta;
  @override
  FhirUri? get implicitRules;
  @override
  @JsonKey(name: '_implicitRules')
  PrimitiveElement? get implicitRulesElement;
  @override
  FhirCode? get language;
  @override
  @JsonKey(name: '_language')
  PrimitiveElement? get languageElement;
  @override
  Narrative? get text;
  @override
  List<Resource>? get contained;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override
  List<FhirExtension>? get modifierExtension;
  @override
  List<Identifier>? get identifier;
  @override

  /// [status] The current state of the product.;
  SubstanceStatus? get status;
  @override

  /// [statusElement] (_status): Extensions for status;
  @JsonKey(name: '_status')
  PrimitiveElement? get statusElement;
  @override

  /// [category] Nutrition products can have different classifications - according to its nutritional properties, preparation methods, etc.;
  List<CodeableConcept>? get category;
  @override
  CodeableConcept get code;
  @override
  String? get description;
  @override
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement;
  @override
  List<SubstanceInstance>? get instance;
  @override
  List<SubstanceIngredient>? get ingredient;
  @override
  @JsonKey(ignore: true)
  _$$SubstanceImplCopyWith<_$SubstanceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SubstanceInstance _$SubstanceInstanceFromJson(Map<String, dynamic> json) {
  return _SubstanceInstance.fromJson(json);
}

/// @nodoc
mixin _$SubstanceInstance {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;
  Identifier? get identifier => throw _privateConstructorUsedError;
  FhirDateTime? get expiry => throw _privateConstructorUsedError;
  @JsonKey(name: '_expiry')
  PrimitiveElement? get expiryElement => throw _privateConstructorUsedError;
  Quantity? get quantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubstanceInstanceCopyWith<SubstanceInstance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubstanceInstanceCopyWith<$Res> {
  factory $SubstanceInstanceCopyWith(
          SubstanceInstance value, $Res Function(SubstanceInstance) then) =
      _$SubstanceInstanceCopyWithImpl<$Res, SubstanceInstance>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      Identifier? identifier,
      FhirDateTime? expiry,
      @JsonKey(name: '_expiry') PrimitiveElement? expiryElement,
      Quantity? quantity});

  $IdentifierCopyWith<$Res>? get identifier;
  $QuantityCopyWith<$Res>? get quantity;
}

/// @nodoc
class _$SubstanceInstanceCopyWithImpl<$Res, $Val extends SubstanceInstance>
    implements $SubstanceInstanceCopyWith<$Res> {
  _$SubstanceInstanceCopyWithImpl(this._value, this._then);

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
    Object? identifier = freezed,
    Object? expiry = freezed,
    Object? expiryElement = freezed,
    Object? quantity = freezed,
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
      expiry: freezed == expiry
          ? _value.expiry
          : expiry // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      expiryElement: freezed == expiryElement
          ? _value.expiryElement
          : expiryElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as Quantity?,
    ) as $Val);
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
  $QuantityCopyWith<$Res>? get quantity {
    if (_value.quantity == null) {
      return null;
    }

    return $QuantityCopyWith<$Res>(_value.quantity!, (value) {
      return _then(_value.copyWith(quantity: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SubstanceInstanceImplCopyWith<$Res>
    implements $SubstanceInstanceCopyWith<$Res> {
  factory _$$SubstanceInstanceImplCopyWith(_$SubstanceInstanceImpl value,
          $Res Function(_$SubstanceInstanceImpl) then) =
      __$$SubstanceInstanceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      Identifier? identifier,
      FhirDateTime? expiry,
      @JsonKey(name: '_expiry') PrimitiveElement? expiryElement,
      Quantity? quantity});

  @override
  $IdentifierCopyWith<$Res>? get identifier;
  @override
  $QuantityCopyWith<$Res>? get quantity;
}

/// @nodoc
class __$$SubstanceInstanceImplCopyWithImpl<$Res>
    extends _$SubstanceInstanceCopyWithImpl<$Res, _$SubstanceInstanceImpl>
    implements _$$SubstanceInstanceImplCopyWith<$Res> {
  __$$SubstanceInstanceImplCopyWithImpl(_$SubstanceInstanceImpl _value,
      $Res Function(_$SubstanceInstanceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? identifier = freezed,
    Object? expiry = freezed,
    Object? expiryElement = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_$SubstanceInstanceImpl(
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
      expiry: freezed == expiry
          ? _value.expiry
          : expiry // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      expiryElement: freezed == expiryElement
          ? _value.expiryElement
          : expiryElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as Quantity?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubstanceInstanceImpl extends _SubstanceInstance {
  const _$SubstanceInstanceImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.identifier,
      this.expiry,
      @JsonKey(name: '_expiry') this.expiryElement,
      this.quantity})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$SubstanceInstanceImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubstanceInstanceImplFromJson(json);

  @override
  final String? id;
  final List<FhirExtension>? _extension_;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<FhirExtension>? _modifierExtension;
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Identifier? identifier;
  @override
  final FhirDateTime? expiry;
  @override
  @JsonKey(name: '_expiry')
  final PrimitiveElement? expiryElement;
  @override
  final Quantity? quantity;

  @override
  String toString() {
    return 'SubstanceInstance(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, identifier: $identifier, expiry: $expiry, expiryElement: $expiryElement, quantity: $quantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubstanceInstanceImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier) &&
            (identical(other.expiry, expiry) || other.expiry == expiry) &&
            (identical(other.expiryElement, expiryElement) ||
                other.expiryElement == expiryElement) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      identifier,
      expiry,
      expiryElement,
      quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubstanceInstanceImplCopyWith<_$SubstanceInstanceImpl> get copyWith =>
      __$$SubstanceInstanceImplCopyWithImpl<_$SubstanceInstanceImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubstanceInstanceImplToJson(
      this,
    );
  }
}

abstract class _SubstanceInstance extends SubstanceInstance {
  const factory _SubstanceInstance(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final Identifier? identifier,
      final FhirDateTime? expiry,
      @JsonKey(name: '_expiry') final PrimitiveElement? expiryElement,
      final Quantity? quantity}) = _$SubstanceInstanceImpl;
  const _SubstanceInstance._() : super._();

  factory _SubstanceInstance.fromJson(Map<String, dynamic> json) =
      _$SubstanceInstanceImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override
  List<FhirExtension>? get modifierExtension;
  @override
  Identifier? get identifier;
  @override
  FhirDateTime? get expiry;
  @override
  @JsonKey(name: '_expiry')
  PrimitiveElement? get expiryElement;
  @override
  Quantity? get quantity;
  @override
  @JsonKey(ignore: true)
  _$$SubstanceInstanceImplCopyWith<_$SubstanceInstanceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SubstanceIngredient _$SubstanceIngredientFromJson(Map<String, dynamic> json) {
  return _SubstanceIngredient.fromJson(json);
}

/// @nodoc
mixin _$SubstanceIngredient {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;
  List<FhirExtension>? get modifierExtension =>
      throw _privateConstructorUsedError;
  Ratio? get quantity => throw _privateConstructorUsedError;
  CodeableConcept? get substanceCodeableConcept =>
      throw _privateConstructorUsedError;
  Reference? get substanceReference => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubstanceIngredientCopyWith<SubstanceIngredient> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubstanceIngredientCopyWith<$Res> {
  factory $SubstanceIngredientCopyWith(
          SubstanceIngredient value, $Res Function(SubstanceIngredient) then) =
      _$SubstanceIngredientCopyWithImpl<$Res, SubstanceIngredient>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      Ratio? quantity,
      CodeableConcept? substanceCodeableConcept,
      Reference? substanceReference});

  $RatioCopyWith<$Res>? get quantity;
  $CodeableConceptCopyWith<$Res>? get substanceCodeableConcept;
  $ReferenceCopyWith<$Res>? get substanceReference;
}

/// @nodoc
class _$SubstanceIngredientCopyWithImpl<$Res, $Val extends SubstanceIngredient>
    implements $SubstanceIngredientCopyWith<$Res> {
  _$SubstanceIngredientCopyWithImpl(this._value, this._then);

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
    Object? quantity = freezed,
    Object? substanceCodeableConcept = freezed,
    Object? substanceReference = freezed,
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
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as Ratio?,
      substanceCodeableConcept: freezed == substanceCodeableConcept
          ? _value.substanceCodeableConcept
          : substanceCodeableConcept // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      substanceReference: freezed == substanceReference
          ? _value.substanceReference
          : substanceReference // ignore: cast_nullable_to_non_nullable
              as Reference?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RatioCopyWith<$Res>? get quantity {
    if (_value.quantity == null) {
      return null;
    }

    return $RatioCopyWith<$Res>(_value.quantity!, (value) {
      return _then(_value.copyWith(quantity: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get substanceCodeableConcept {
    if (_value.substanceCodeableConcept == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.substanceCodeableConcept!,
        (value) {
      return _then(_value.copyWith(substanceCodeableConcept: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get substanceReference {
    if (_value.substanceReference == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.substanceReference!, (value) {
      return _then(_value.copyWith(substanceReference: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SubstanceIngredientImplCopyWith<$Res>
    implements $SubstanceIngredientCopyWith<$Res> {
  factory _$$SubstanceIngredientImplCopyWith(_$SubstanceIngredientImpl value,
          $Res Function(_$SubstanceIngredientImpl) then) =
      __$$SubstanceIngredientImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      Ratio? quantity,
      CodeableConcept? substanceCodeableConcept,
      Reference? substanceReference});

  @override
  $RatioCopyWith<$Res>? get quantity;
  @override
  $CodeableConceptCopyWith<$Res>? get substanceCodeableConcept;
  @override
  $ReferenceCopyWith<$Res>? get substanceReference;
}

/// @nodoc
class __$$SubstanceIngredientImplCopyWithImpl<$Res>
    extends _$SubstanceIngredientCopyWithImpl<$Res, _$SubstanceIngredientImpl>
    implements _$$SubstanceIngredientImplCopyWith<$Res> {
  __$$SubstanceIngredientImplCopyWithImpl(_$SubstanceIngredientImpl _value,
      $Res Function(_$SubstanceIngredientImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? quantity = freezed,
    Object? substanceCodeableConcept = freezed,
    Object? substanceReference = freezed,
  }) {
    return _then(_$SubstanceIngredientImpl(
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
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as Ratio?,
      substanceCodeableConcept: freezed == substanceCodeableConcept
          ? _value.substanceCodeableConcept
          : substanceCodeableConcept // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      substanceReference: freezed == substanceReference
          ? _value.substanceReference
          : substanceReference // ignore: cast_nullable_to_non_nullable
              as Reference?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubstanceIngredientImpl extends _SubstanceIngredient {
  const _$SubstanceIngredientImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.quantity,
      this.substanceCodeableConcept,
      this.substanceReference})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$SubstanceIngredientImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubstanceIngredientImplFromJson(json);

  @override
  final String? id;
  final List<FhirExtension>? _extension_;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<FhirExtension>? _modifierExtension;
  @override
  List<FhirExtension>? get modifierExtension {
    final value = _modifierExtension;
    if (value == null) return null;
    if (_modifierExtension is EqualUnmodifiableListView)
      return _modifierExtension;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Ratio? quantity;
  @override
  final CodeableConcept? substanceCodeableConcept;
  @override
  final Reference? substanceReference;

  @override
  String toString() {
    return 'SubstanceIngredient(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, quantity: $quantity, substanceCodeableConcept: $substanceCodeableConcept, substanceReference: $substanceReference)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubstanceIngredientImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(
                    other.substanceCodeableConcept, substanceCodeableConcept) ||
                other.substanceCodeableConcept == substanceCodeableConcept) &&
            (identical(other.substanceReference, substanceReference) ||
                other.substanceReference == substanceReference));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      quantity,
      substanceCodeableConcept,
      substanceReference);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubstanceIngredientImplCopyWith<_$SubstanceIngredientImpl> get copyWith =>
      __$$SubstanceIngredientImplCopyWithImpl<_$SubstanceIngredientImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubstanceIngredientImplToJson(
      this,
    );
  }
}

abstract class _SubstanceIngredient extends SubstanceIngredient {
  const factory _SubstanceIngredient(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final Ratio? quantity,
      final CodeableConcept? substanceCodeableConcept,
      final Reference? substanceReference}) = _$SubstanceIngredientImpl;
  const _SubstanceIngredient._() : super._();

  factory _SubstanceIngredient.fromJson(Map<String, dynamic> json) =
      _$SubstanceIngredientImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override
  List<FhirExtension>? get modifierExtension;
  @override
  Ratio? get quantity;
  @override
  CodeableConcept? get substanceCodeableConcept;
  @override
  Reference? get substanceReference;
  @override
  @JsonKey(ignore: true)
  _$$SubstanceIngredientImplCopyWith<_$SubstanceIngredientImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
