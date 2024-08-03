// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'codeable_reference.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CodeableReference _$CodeableReferenceFromJson(Map<String, dynamic> json) {
  return _CodeableReference.fromJson(json);
}

/// @nodoc
mixin _$CodeableReference {
  /// [id] Unique id for the element within a resource (for internal references).
  /// This may be any string value that does not contain spaces.",
  String? get id => throw _privateConstructorUsedError;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ => throw _privateConstructorUsedError;

  /// [concept] A reference to a concept - e.g. the information is identified by
  /// its general class to the degree of precision found in the terminology.",
  CodeableConcept? get concept => throw _privateConstructorUsedError;

  /// [reference] A reference to a resource the provides exact details about the
  /// information being referenced.
  Reference? get reference => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CodeableReferenceCopyWith<CodeableReference> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CodeableReferenceCopyWith<$Res> {
  factory $CodeableReferenceCopyWith(
          CodeableReference value, $Res Function(CodeableReference) then) =
      _$CodeableReferenceCopyWithImpl<$Res, CodeableReference>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      CodeableConcept? concept,
      Reference? reference});

  $CodeableConceptCopyWith<$Res>? get concept;
  $ReferenceCopyWith<$Res>? get reference;
}

/// @nodoc
class _$CodeableReferenceCopyWithImpl<$Res, $Val extends CodeableReference>
    implements $CodeableReferenceCopyWith<$Res> {
  _$CodeableReferenceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? concept = freezed,
    Object? reference = freezed,
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
      concept: freezed == concept
          ? _value.concept
          : concept // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      reference: freezed == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as Reference?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get concept {
    if (_value.concept == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.concept!, (value) {
      return _then(_value.copyWith(concept: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get reference {
    if (_value.reference == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.reference!, (value) {
      return _then(_value.copyWith(reference: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CodeableReferenceImplCopyWith<$Res>
    implements $CodeableReferenceCopyWith<$Res> {
  factory _$$CodeableReferenceImplCopyWith(_$CodeableReferenceImpl value,
          $Res Function(_$CodeableReferenceImpl) then) =
      __$$CodeableReferenceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      CodeableConcept? concept,
      Reference? reference});

  @override
  $CodeableConceptCopyWith<$Res>? get concept;
  @override
  $ReferenceCopyWith<$Res>? get reference;
}

/// @nodoc
class __$$CodeableReferenceImplCopyWithImpl<$Res>
    extends _$CodeableReferenceCopyWithImpl<$Res, _$CodeableReferenceImpl>
    implements _$$CodeableReferenceImplCopyWith<$Res> {
  __$$CodeableReferenceImplCopyWithImpl(_$CodeableReferenceImpl _value,
      $Res Function(_$CodeableReferenceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? concept = freezed,
    Object? reference = freezed,
  }) {
    return _then(_$CodeableReferenceImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      concept: freezed == concept
          ? _value.concept
          : concept // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      reference: freezed == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as Reference?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CodeableReferenceImpl extends _CodeableReference {
  const _$CodeableReferenceImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      this.concept,
      this.reference})
      : _extension_ = extension_,
        super._();

  factory _$CodeableReferenceImpl.fromJson(Map<String, dynamic> json) =>
      _$$CodeableReferenceImplFromJson(json);

  /// [id] Unique id for the element within a resource (for internal references).
  /// This may be any string value that does not contain spaces.",
  @override
  final String? id;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension.
  final List<FhirExtension>? _extension_;

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension.
  @override
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_ {
    final value = _extension_;
    if (value == null) return null;
    if (_extension_ is EqualUnmodifiableListView) return _extension_;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [concept] A reference to a concept - e.g. the information is identified by
  /// its general class to the degree of precision found in the terminology.",
  @override
  final CodeableConcept? concept;

  /// [reference] A reference to a resource the provides exact details about the
  /// information being referenced.
  @override
  final Reference? reference;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CodeableReferenceImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            (identical(other.concept, concept) || other.concept == concept) &&
            (identical(other.reference, reference) ||
                other.reference == reference));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id,
      const DeepCollectionEquality().hash(_extension_), concept, reference);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CodeableReferenceImplCopyWith<_$CodeableReferenceImpl> get copyWith =>
      __$$CodeableReferenceImplCopyWithImpl<_$CodeableReferenceImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CodeableReferenceImplToJson(
      this,
    );
  }
}

abstract class _CodeableReference extends CodeableReference {
  const factory _CodeableReference(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final CodeableConcept? concept,
      final Reference? reference}) = _$CodeableReferenceImpl;
  const _CodeableReference._() : super._();

  factory _CodeableReference.fromJson(Map<String, dynamic> json) =
      _$CodeableReferenceImpl.fromJson;

  @override

  /// [id] Unique id for the element within a resource (for internal references).
  /// This may be any string value that does not contain spaces.",
  String? get id;
  @override

  /// [extension_] May be used to represent additional information that is not
  /// part of the basic definition of the element. To make the use of extensions
  /// safe and manageable, there is a strict set of governance  applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of the
  /// definition of the extension.
  @JsonKey(name: 'extension')
  List<FhirExtension>? get extension_;
  @override

  /// [concept] A reference to a concept - e.g. the information is identified by
  /// its general class to the degree of precision found in the terminology.",
  CodeableConcept? get concept;
  @override

  /// [reference] A reference to a resource the provides exact details about the
  /// information being referenced.
  Reference? get reference;
  @override
  @JsonKey(ignore: true)
  _$$CodeableReferenceImplCopyWith<_$CodeableReferenceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
