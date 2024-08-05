// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fhir_expression.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FhirExpression _$FhirExpressionFromJson(Map<String, dynamic> json) {
  return _FhirExpression.fromJson(json);
}

/// @nodoc
mixin _$FhirExpression {
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

  /// [description] A brief, natural language description of the condition that
  ///  effectively communicates the intended semantics.
  String? get description => throw _privateConstructorUsedError;

  /// [descriptionElement] Extensions for description
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement =>
      throw _privateConstructorUsedError;

  /// [name] A short name assigned to the expression to allow for multiple
  ///  reuse of the expression in the context where it is defined.
  FhirId? get name => throw _privateConstructorUsedError;

  /// [nameElement] Extensions for name
  @JsonKey(name: '_name')
  PrimitiveElement? get nameElement => throw _privateConstructorUsedError;
  @JsonKey(unknownEnumValue: FhirExpressionLanguage.unknown)
  FhirExpressionLanguage? get language => throw _privateConstructorUsedError;

  /// [languageElement] Extensions for language
  @JsonKey(name: '_language')
  PrimitiveElement? get languageElement => throw _privateConstructorUsedError;

  /// [expression] An expression in the specified language that returns a
  ///  value.
  String? get expression => throw _privateConstructorUsedError;

  /// [expressionElement] Extensions for expression
  @JsonKey(name: '_expression')
  PrimitiveElement? get expressionElement => throw _privateConstructorUsedError;

  /// [reference] A URI that defines where the expression is found.
  FhirUri? get reference => throw _privateConstructorUsedError;

  /// [referenceElement] Extensions for reference
  @JsonKey(name: '_reference')
  PrimitiveElement? get referenceElement => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FhirExpressionCopyWith<FhirExpression> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FhirExpressionCopyWith<$Res> {
  factory $FhirExpressionCopyWith(
          FhirExpression value, $Res Function(FhirExpression) then) =
      _$FhirExpressionCopyWithImpl<$Res, FhirExpression>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      String? description,
      @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
      FhirId? name,
      @JsonKey(name: '_name') PrimitiveElement? nameElement,
      @JsonKey(unknownEnumValue: FhirExpressionLanguage.unknown)
      FhirExpressionLanguage? language,
      @JsonKey(name: '_language') PrimitiveElement? languageElement,
      String? expression,
      @JsonKey(name: '_expression') PrimitiveElement? expressionElement,
      FhirUri? reference,
      @JsonKey(name: '_reference') PrimitiveElement? referenceElement});
}

/// @nodoc
class _$FhirExpressionCopyWithImpl<$Res, $Val extends FhirExpression>
    implements $FhirExpressionCopyWith<$Res> {
  _$FhirExpressionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? description = freezed,
    Object? descriptionElement = freezed,
    Object? name = freezed,
    Object? nameElement = freezed,
    Object? language = freezed,
    Object? languageElement = freezed,
    Object? expression = freezed,
    Object? expressionElement = freezed,
    Object? reference = freezed,
    Object? referenceElement = freezed,
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptionElement: freezed == descriptionElement
          ? _value.descriptionElement
          : descriptionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as FhirId?,
      nameElement: freezed == nameElement
          ? _value.nameElement
          : nameElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as FhirExpressionLanguage?,
      languageElement: freezed == languageElement
          ? _value.languageElement
          : languageElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      expression: freezed == expression
          ? _value.expression
          : expression // ignore: cast_nullable_to_non_nullable
              as String?,
      expressionElement: freezed == expressionElement
          ? _value.expressionElement
          : expressionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      reference: freezed == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      referenceElement: freezed == referenceElement
          ? _value.referenceElement
          : referenceElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FhirExpressionImplCopyWith<$Res>
    implements $FhirExpressionCopyWith<$Res> {
  factory _$$FhirExpressionImplCopyWith(_$FhirExpressionImpl value,
          $Res Function(_$FhirExpressionImpl) then) =
      __$$FhirExpressionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      String? description,
      @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
      FhirId? name,
      @JsonKey(name: '_name') PrimitiveElement? nameElement,
      @JsonKey(unknownEnumValue: FhirExpressionLanguage.unknown)
      FhirExpressionLanguage? language,
      @JsonKey(name: '_language') PrimitiveElement? languageElement,
      String? expression,
      @JsonKey(name: '_expression') PrimitiveElement? expressionElement,
      FhirUri? reference,
      @JsonKey(name: '_reference') PrimitiveElement? referenceElement});
}

/// @nodoc
class __$$FhirExpressionImplCopyWithImpl<$Res>
    extends _$FhirExpressionCopyWithImpl<$Res, _$FhirExpressionImpl>
    implements _$$FhirExpressionImplCopyWith<$Res> {
  __$$FhirExpressionImplCopyWithImpl(
      _$FhirExpressionImpl _value, $Res Function(_$FhirExpressionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? description = freezed,
    Object? descriptionElement = freezed,
    Object? name = freezed,
    Object? nameElement = freezed,
    Object? language = freezed,
    Object? languageElement = freezed,
    Object? expression = freezed,
    Object? expressionElement = freezed,
    Object? reference = freezed,
    Object? referenceElement = freezed,
  }) {
    return _then(_$FhirExpressionImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptionElement: freezed == descriptionElement
          ? _value.descriptionElement
          : descriptionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as FhirId?,
      nameElement: freezed == nameElement
          ? _value.nameElement
          : nameElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as FhirExpressionLanguage?,
      languageElement: freezed == languageElement
          ? _value.languageElement
          : languageElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      expression: freezed == expression
          ? _value.expression
          : expression // ignore: cast_nullable_to_non_nullable
              as String?,
      expressionElement: freezed == expressionElement
          ? _value.expressionElement
          : expressionElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      reference: freezed == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      referenceElement: freezed == referenceElement
          ? _value.referenceElement
          : referenceElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FhirExpressionImpl extends _FhirExpression {
  const _$FhirExpressionImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      this.description,
      @JsonKey(name: '_description') this.descriptionElement,
      this.name,
      @JsonKey(name: '_name') this.nameElement,
      @JsonKey(unknownEnumValue: FhirExpressionLanguage.unknown) this.language,
      @JsonKey(name: '_language') this.languageElement,
      this.expression,
      @JsonKey(name: '_expression') this.expressionElement,
      this.reference,
      @JsonKey(name: '_reference') this.referenceElement})
      : _extension_ = extension_,
        super._();

  factory _$FhirExpressionImpl.fromJson(Map<String, dynamic> json) =>
      _$$FhirExpressionImplFromJson(json);

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

  /// [description] A brief, natural language description of the condition that
  ///  effectively communicates the intended semantics.
  @override
  final String? description;

  /// [descriptionElement] Extensions for description
  @override
  @JsonKey(name: '_description')
  final PrimitiveElement? descriptionElement;

  /// [name] A short name assigned to the expression to allow for multiple
  ///  reuse of the expression in the context where it is defined.
  @override
  final FhirId? name;

  /// [nameElement] Extensions for name
  @override
  @JsonKey(name: '_name')
  final PrimitiveElement? nameElement;
  @override
  @JsonKey(unknownEnumValue: FhirExpressionLanguage.unknown)
  final FhirExpressionLanguage? language;

  /// [languageElement] Extensions for language
  @override
  @JsonKey(name: '_language')
  final PrimitiveElement? languageElement;

  /// [expression] An expression in the specified language that returns a
  ///  value.
  @override
  final String? expression;

  /// [expressionElement] Extensions for expression
  @override
  @JsonKey(name: '_expression')
  final PrimitiveElement? expressionElement;

  /// [reference] A URI that defines where the expression is found.
  @override
  final FhirUri? reference;

  /// [referenceElement] Extensions for reference
  @override
  @JsonKey(name: '_reference')
  final PrimitiveElement? referenceElement;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FhirExpressionImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.descriptionElement, descriptionElement) ||
                other.descriptionElement == descriptionElement) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nameElement, nameElement) ||
                other.nameElement == nameElement) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.languageElement, languageElement) ||
                other.languageElement == languageElement) &&
            (identical(other.expression, expression) ||
                other.expression == expression) &&
            (identical(other.expressionElement, expressionElement) ||
                other.expressionElement == expressionElement) &&
            (identical(other.reference, reference) ||
                other.reference == reference) &&
            (identical(other.referenceElement, referenceElement) ||
                other.referenceElement == referenceElement));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      description,
      descriptionElement,
      name,
      nameElement,
      language,
      languageElement,
      expression,
      expressionElement,
      reference,
      referenceElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FhirExpressionImplCopyWith<_$FhirExpressionImpl> get copyWith =>
      __$$FhirExpressionImplCopyWithImpl<_$FhirExpressionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FhirExpressionImplToJson(
      this,
    );
  }
}

abstract class _FhirExpression extends FhirExpression {
  factory _FhirExpression(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final String? description,
      @JsonKey(name: '_description') final PrimitiveElement? descriptionElement,
      final FhirId? name,
      @JsonKey(name: '_name') final PrimitiveElement? nameElement,
      @JsonKey(unknownEnumValue: FhirExpressionLanguage.unknown)
      final FhirExpressionLanguage? language,
      @JsonKey(name: '_language') final PrimitiveElement? languageElement,
      final String? expression,
      @JsonKey(name: '_expression') final PrimitiveElement? expressionElement,
      final FhirUri? reference,
      @JsonKey(name: '_reference')
      final PrimitiveElement? referenceElement}) = _$FhirExpressionImpl;
  const _FhirExpression._() : super._();

  factory _FhirExpression.fromJson(Map<String, dynamic> json) =
      _$FhirExpressionImpl.fromJson;

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

  /// [description] A brief, natural language description of the condition that
  ///  effectively communicates the intended semantics.
  String? get description;
  @override

  /// [descriptionElement] Extensions for description
  @JsonKey(name: '_description')
  PrimitiveElement? get descriptionElement;
  @override

  /// [name] A short name assigned to the expression to allow for multiple
  ///  reuse of the expression in the context where it is defined.
  FhirId? get name;
  @override

  /// [nameElement] Extensions for name
  @JsonKey(name: '_name')
  PrimitiveElement? get nameElement;
  @override
  @JsonKey(unknownEnumValue: FhirExpressionLanguage.unknown)
  FhirExpressionLanguage? get language;
  @override

  /// [languageElement] Extensions for language
  @JsonKey(name: '_language')
  PrimitiveElement? get languageElement;
  @override

  /// [expression] An expression in the specified language that returns a
  ///  value.
  String? get expression;
  @override

  /// [expressionElement] Extensions for expression
  @JsonKey(name: '_expression')
  PrimitiveElement? get expressionElement;
  @override

  /// [reference] A URI that defines where the expression is found.
  FhirUri? get reference;
  @override

  /// [referenceElement] Extensions for reference
  @JsonKey(name: '_reference')
  PrimitiveElement? get referenceElement;
  @override
  @JsonKey(ignore: true)
  _$$FhirExpressionImplCopyWith<_$FhirExpressionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
