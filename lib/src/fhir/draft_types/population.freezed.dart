// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'population.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Population _$PopulationFromJson(Map<String, dynamic> json) {
  return _Population.fromJson(json);
}

/// @nodoc
mixin _$Population {
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

  /// [ageRange] The age of the specific population.
  Range? get ageRange => throw _privateConstructorUsedError;

  /// [ageCodeableConcept] The age of the specific population.
  CodeableConcept? get ageCodeableConcept => throw _privateConstructorUsedError;

  /// [gender] The gender of the specific population.
  CodeableConcept? get gender => throw _privateConstructorUsedError;

  /// [race] Race of the specific population.
  CodeableConcept? get race => throw _privateConstructorUsedError;

  /// [physiologicalCondition] The existing physiological conditions of the
  ///  specific population to which this applies.
  CodeableConcept? get physiologicalCondition =>
      throw _privateConstructorUsedError;

  /// Serializes this Population to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Population
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PopulationCopyWith<Population> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PopulationCopyWith<$Res> {
  factory $PopulationCopyWith(
          Population value, $Res Function(Population) then) =
      _$PopulationCopyWithImpl<$Res, Population>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      Range? ageRange,
      CodeableConcept? ageCodeableConcept,
      CodeableConcept? gender,
      CodeableConcept? race,
      CodeableConcept? physiologicalCondition});

  $RangeCopyWith<$Res>? get ageRange;
  $CodeableConceptCopyWith<$Res>? get ageCodeableConcept;
  $CodeableConceptCopyWith<$Res>? get gender;
  $CodeableConceptCopyWith<$Res>? get race;
  $CodeableConceptCopyWith<$Res>? get physiologicalCondition;
}

/// @nodoc
class _$PopulationCopyWithImpl<$Res, $Val extends Population>
    implements $PopulationCopyWith<$Res> {
  _$PopulationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Population
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? ageRange = freezed,
    Object? ageCodeableConcept = freezed,
    Object? gender = freezed,
    Object? race = freezed,
    Object? physiologicalCondition = freezed,
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
      ageRange: freezed == ageRange
          ? _value.ageRange
          : ageRange // ignore: cast_nullable_to_non_nullable
              as Range?,
      ageCodeableConcept: freezed == ageCodeableConcept
          ? _value.ageCodeableConcept
          : ageCodeableConcept // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      race: freezed == race
          ? _value.race
          : race // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      physiologicalCondition: freezed == physiologicalCondition
          ? _value.physiologicalCondition
          : physiologicalCondition // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
    ) as $Val);
  }

  /// Create a copy of Population
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RangeCopyWith<$Res>? get ageRange {
    if (_value.ageRange == null) {
      return null;
    }

    return $RangeCopyWith<$Res>(_value.ageRange!, (value) {
      return _then(_value.copyWith(ageRange: value) as $Val);
    });
  }

  /// Create a copy of Population
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get ageCodeableConcept {
    if (_value.ageCodeableConcept == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.ageCodeableConcept!, (value) {
      return _then(_value.copyWith(ageCodeableConcept: value) as $Val);
    });
  }

  /// Create a copy of Population
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get gender {
    if (_value.gender == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.gender!, (value) {
      return _then(_value.copyWith(gender: value) as $Val);
    });
  }

  /// Create a copy of Population
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get race {
    if (_value.race == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.race!, (value) {
      return _then(_value.copyWith(race: value) as $Val);
    });
  }

  /// Create a copy of Population
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CodeableConceptCopyWith<$Res>? get physiologicalCondition {
    if (_value.physiologicalCondition == null) {
      return null;
    }

    return $CodeableConceptCopyWith<$Res>(_value.physiologicalCondition!,
        (value) {
      return _then(_value.copyWith(physiologicalCondition: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PopulationImplCopyWith<$Res>
    implements $PopulationCopyWith<$Res> {
  factory _$$PopulationImplCopyWith(
          _$PopulationImpl value, $Res Function(_$PopulationImpl) then) =
      __$$PopulationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<FhirExtension>? modifierExtension,
      Range? ageRange,
      CodeableConcept? ageCodeableConcept,
      CodeableConcept? gender,
      CodeableConcept? race,
      CodeableConcept? physiologicalCondition});

  @override
  $RangeCopyWith<$Res>? get ageRange;
  @override
  $CodeableConceptCopyWith<$Res>? get ageCodeableConcept;
  @override
  $CodeableConceptCopyWith<$Res>? get gender;
  @override
  $CodeableConceptCopyWith<$Res>? get race;
  @override
  $CodeableConceptCopyWith<$Res>? get physiologicalCondition;
}

/// @nodoc
class __$$PopulationImplCopyWithImpl<$Res>
    extends _$PopulationCopyWithImpl<$Res, _$PopulationImpl>
    implements _$$PopulationImplCopyWith<$Res> {
  __$$PopulationImplCopyWithImpl(
      _$PopulationImpl _value, $Res Function(_$PopulationImpl) _then)
      : super(_value, _then);

  /// Create a copy of Population
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? modifierExtension = freezed,
    Object? ageRange = freezed,
    Object? ageCodeableConcept = freezed,
    Object? gender = freezed,
    Object? race = freezed,
    Object? physiologicalCondition = freezed,
  }) {
    return _then(_$PopulationImpl(
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
      ageRange: freezed == ageRange
          ? _value.ageRange
          : ageRange // ignore: cast_nullable_to_non_nullable
              as Range?,
      ageCodeableConcept: freezed == ageCodeableConcept
          ? _value.ageCodeableConcept
          : ageCodeableConcept // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      race: freezed == race
          ? _value.race
          : race // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
      physiologicalCondition: freezed == physiologicalCondition
          ? _value.physiologicalCondition
          : physiologicalCondition // ignore: cast_nullable_to_non_nullable
              as CodeableConcept?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PopulationImpl extends _Population {
  _$PopulationImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      this.ageRange,
      this.ageCodeableConcept,
      this.gender,
      this.race,
      this.physiologicalCondition})
      : _extension_ = extension_,
        _modifierExtension = modifierExtension,
        super._();

  factory _$PopulationImpl.fromJson(Map<String, dynamic> json) =>
      _$$PopulationImplFromJson(json);

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

  /// [ageRange] The age of the specific population.
  @override
  final Range? ageRange;

  /// [ageCodeableConcept] The age of the specific population.
  @override
  final CodeableConcept? ageCodeableConcept;

  /// [gender] The gender of the specific population.
  @override
  final CodeableConcept? gender;

  /// [race] Race of the specific population.
  @override
  final CodeableConcept? race;

  /// [physiologicalCondition] The existing physiological conditions of the
  ///  specific population to which this applies.
  @override
  final CodeableConcept? physiologicalCondition;

  @override
  String toString() {
    return 'Population(id: $id, extension_: $extension_, modifierExtension: $modifierExtension, ageRange: $ageRange, ageCodeableConcept: $ageCodeableConcept, gender: $gender, race: $race, physiologicalCondition: $physiologicalCondition)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PopulationImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality()
                .equals(other._modifierExtension, _modifierExtension) &&
            (identical(other.ageRange, ageRange) ||
                other.ageRange == ageRange) &&
            (identical(other.ageCodeableConcept, ageCodeableConcept) ||
                other.ageCodeableConcept == ageCodeableConcept) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.race, race) || other.race == race) &&
            (identical(other.physiologicalCondition, physiologicalCondition) ||
                other.physiologicalCondition == physiologicalCondition));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_modifierExtension),
      ageRange,
      ageCodeableConcept,
      gender,
      race,
      physiologicalCondition);

  /// Create a copy of Population
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PopulationImplCopyWith<_$PopulationImpl> get copyWith =>
      __$$PopulationImplCopyWithImpl<_$PopulationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PopulationImplToJson(
      this,
    );
  }
}

abstract class _Population extends Population {
  factory _Population(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final List<FhirExtension>? modifierExtension,
      final Range? ageRange,
      final CodeableConcept? ageCodeableConcept,
      final CodeableConcept? gender,
      final CodeableConcept? race,
      final CodeableConcept? physiologicalCondition}) = _$PopulationImpl;
  _Population._() : super._();

  factory _Population.fromJson(Map<String, dynamic> json) =
      _$PopulationImpl.fromJson;

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

  /// [ageRange] The age of the specific population.
  @override
  Range? get ageRange;

  /// [ageCodeableConcept] The age of the specific population.
  @override
  CodeableConcept? get ageCodeableConcept;

  /// [gender] The gender of the specific population.
  @override
  CodeableConcept? get gender;

  /// [race] Race of the specific population.
  @override
  CodeableConcept? get race;

  /// [physiologicalCondition] The existing physiological conditions of the
  ///  specific population to which this applies.
  @override
  CodeableConcept? get physiologicalCondition;

  /// Create a copy of Population
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PopulationImplCopyWith<_$PopulationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
