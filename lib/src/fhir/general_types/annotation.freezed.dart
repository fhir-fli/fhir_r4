// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'annotation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Annotation _$AnnotationFromJson(Map<String, dynamic> json) {
  return _Annotation.fromJson(json);
}

/// @nodoc
mixin _$Annotation {
  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  String? get id => throw _privateConstructorUsedError;

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [authorReference] The individual responsible for making the annotation.
  Reference? get authorReference => throw _privateConstructorUsedError;

  /// [authorString] The individual responsible for making the annotation.
  String? get authorString => throw _privateConstructorUsedError;

  /// [authorStringElement] Extensions for authorString
  @JsonKey(name: '_authorString')
  PrimitiveElement? get authorStringElement =>
      throw _privateConstructorUsedError;

  /// [time] Indicates when this particular annotation was made.
  FhirDateTime? get time => throw _privateConstructorUsedError;

  /// [timeElement] Extensions for time
  @JsonKey(name: '_time')
  PrimitiveElement? get timeElement => throw _privateConstructorUsedError;

  /// [text] The text of the annotation in markdown format.
  FhirMarkdown? get text => throw _privateConstructorUsedError;

  /// [textElement] Extensions for text
  @JsonKey(name: '_text')
  PrimitiveElement? get textElement => throw _privateConstructorUsedError;

  /// Serializes this Annotation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Annotation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnnotationCopyWith<Annotation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnnotationCopyWith<$Res> {
  factory $AnnotationCopyWith(
          Annotation value, $Res Function(Annotation) then) =
      _$AnnotationCopyWithImpl<$Res, Annotation>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      Reference? authorReference,
      String? authorString,
      @JsonKey(name: '_authorString') PrimitiveElement? authorStringElement,
      FhirDateTime? time,
      @JsonKey(name: '_time') PrimitiveElement? timeElement,
      FhirMarkdown? text,
      @JsonKey(name: '_text') PrimitiveElement? textElement});

  $ReferenceCopyWith<$Res>? get authorReference;
}

/// @nodoc
class _$AnnotationCopyWithImpl<$Res, $Val extends Annotation>
    implements $AnnotationCopyWith<$Res> {
  _$AnnotationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Annotation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? authorReference = freezed,
    Object? authorString = freezed,
    Object? authorStringElement = freezed,
    Object? time = freezed,
    Object? timeElement = freezed,
    Object? text = freezed,
    Object? textElement = freezed,
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
      authorReference: freezed == authorReference
          ? _value.authorReference
          : authorReference // ignore: cast_nullable_to_non_nullable
              as Reference?,
      authorString: freezed == authorString
          ? _value.authorString
          : authorString // ignore: cast_nullable_to_non_nullable
              as String?,
      authorStringElement: freezed == authorStringElement
          ? _value.authorStringElement
          : authorStringElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      timeElement: freezed == timeElement
          ? _value.timeElement
          : timeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      textElement: freezed == textElement
          ? _value.textElement
          : textElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
  }

  /// Create a copy of Annotation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get authorReference {
    if (_value.authorReference == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.authorReference!, (value) {
      return _then(_value.copyWith(authorReference: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AnnotationImplCopyWith<$Res>
    implements $AnnotationCopyWith<$Res> {
  factory _$$AnnotationImplCopyWith(
          _$AnnotationImpl value, $Res Function(_$AnnotationImpl) then) =
      __$$AnnotationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      Reference? authorReference,
      String? authorString,
      @JsonKey(name: '_authorString') PrimitiveElement? authorStringElement,
      FhirDateTime? time,
      @JsonKey(name: '_time') PrimitiveElement? timeElement,
      FhirMarkdown? text,
      @JsonKey(name: '_text') PrimitiveElement? textElement});

  @override
  $ReferenceCopyWith<$Res>? get authorReference;
}

/// @nodoc
class __$$AnnotationImplCopyWithImpl<$Res>
    extends _$AnnotationCopyWithImpl<$Res, _$AnnotationImpl>
    implements _$$AnnotationImplCopyWith<$Res> {
  __$$AnnotationImplCopyWithImpl(
      _$AnnotationImpl _value, $Res Function(_$AnnotationImpl) _then)
      : super(_value, _then);

  /// Create a copy of Annotation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? authorReference = freezed,
    Object? authorString = freezed,
    Object? authorStringElement = freezed,
    Object? time = freezed,
    Object? timeElement = freezed,
    Object? text = freezed,
    Object? textElement = freezed,
  }) {
    return _then(_$AnnotationImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      authorReference: freezed == authorReference
          ? _value.authorReference
          : authorReference // ignore: cast_nullable_to_non_nullable
              as Reference?,
      authorString: freezed == authorString
          ? _value.authorString
          : authorString // ignore: cast_nullable_to_non_nullable
              as String?,
      authorStringElement: freezed == authorStringElement
          ? _value.authorStringElement
          : authorStringElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      timeElement: freezed == timeElement
          ? _value.timeElement
          : timeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as FhirMarkdown?,
      textElement: freezed == textElement
          ? _value.textElement
          : textElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnnotationImpl extends _Annotation {
  _$AnnotationImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      this.authorReference,
      this.authorString,
      @JsonKey(name: '_authorString') this.authorStringElement,
      this.time,
      @JsonKey(name: '_time') this.timeElement,
      this.text,
      @JsonKey(name: '_text') this.textElement})
      : _extension_ = extension_,
        super._();

  factory _$AnnotationImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnnotationImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  final String? id;

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension] May be used to represent additional information that is not
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

  /// [authorReference] The individual responsible for making the annotation.
  @override
  final Reference? authorReference;

  /// [authorString] The individual responsible for making the annotation.
  @override
  final String? authorString;

  /// [authorStringElement] Extensions for authorString
  @override
  @JsonKey(name: '_authorString')
  final PrimitiveElement? authorStringElement;

  /// [time] Indicates when this particular annotation was made.
  @override
  final FhirDateTime? time;

  /// [timeElement] Extensions for time
  @override
  @JsonKey(name: '_time')
  final PrimitiveElement? timeElement;

  /// [text] The text of the annotation in markdown format.
  @override
  final FhirMarkdown? text;

  /// [textElement] Extensions for text
  @override
  @JsonKey(name: '_text')
  final PrimitiveElement? textElement;

  @override
  String toString() {
    return 'Annotation(id: $id, extension_: $extension_, authorReference: $authorReference, authorString: $authorString, authorStringElement: $authorStringElement, time: $time, timeElement: $timeElement, text: $text, textElement: $textElement)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnnotationImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            (identical(other.authorReference, authorReference) ||
                other.authorReference == authorReference) &&
            (identical(other.authorString, authorString) ||
                other.authorString == authorString) &&
            (identical(other.authorStringElement, authorStringElement) ||
                other.authorStringElement == authorStringElement) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.timeElement, timeElement) ||
                other.timeElement == timeElement) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.textElement, textElement) ||
                other.textElement == textElement));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      authorReference,
      authorString,
      authorStringElement,
      time,
      timeElement,
      text,
      textElement);

  /// Create a copy of Annotation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnnotationImplCopyWith<_$AnnotationImpl> get copyWith =>
      __$$AnnotationImplCopyWithImpl<_$AnnotationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnnotationImplToJson(
      this,
    );
  }
}

abstract class _Annotation extends Annotation {
  factory _Annotation(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final Reference? authorReference,
          final String? authorString,
          @JsonKey(name: '_authorString')
          final PrimitiveElement? authorStringElement,
          final FhirDateTime? time,
          @JsonKey(name: '_time') final PrimitiveElement? timeElement,
          final FhirMarkdown? text,
          @JsonKey(name: '_text') final PrimitiveElement? textElement}) =
      _$AnnotationImpl;
  _Annotation._() : super._();

  factory _Annotation.fromJson(Map<String, dynamic> json) =
      _$AnnotationImpl.fromJson;

  /// [id] Unique id for the element within a resource (for internal
  ///  references). This may be any string value that does not contain spaces.
  @override
  String? get id;

  /// [extension] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  ///  definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;

  /// [authorReference] The individual responsible for making the annotation.
  @override
  Reference? get authorReference;

  /// [authorString] The individual responsible for making the annotation.
  @override
  String? get authorString;

  /// [authorStringElement] Extensions for authorString
  @override
  @JsonKey(name: '_authorString')
  PrimitiveElement? get authorStringElement;

  /// [time] Indicates when this particular annotation was made.
  @override
  FhirDateTime? get time;

  /// [timeElement] Extensions for time
  @override
  @JsonKey(name: '_time')
  PrimitiveElement? get timeElement;

  /// [text] The text of the annotation in markdown format.
  @override
  FhirMarkdown? get text;

  /// [textElement] Extensions for text
  @override
  @JsonKey(name: '_text')
  PrimitiveElement? get textElement;

  /// Create a copy of Annotation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnnotationImplCopyWith<_$AnnotationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
