// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reference.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Reference _$ReferenceFromJson(Map<String, dynamic> json) {
  return _Reference.fromJson(json);
}

/// @nodoc
mixin _$Reference {
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

  /// [reference] A reference to a location at which the other resource is
  /// found. The reference may be a relative reference, in which case it is
  /// relative to the service base URL, or an absolute URL that resolves to the
  /// location where the resource is found. The reference may be version
  /// specific or not. If the reference is not to a FHIR RESTful server, then it
  /// should be assumed to be version specific. Internal fragment references
  ///  (start with '#') refer to contained resources.
  String? get reference => throw _privateConstructorUsedError;

  /// [referenceElement] Extensions for reference
  @JsonKey(name: '_reference')
  PrimitiveElement? get referenceElement => throw _privateConstructorUsedError;

  /// [type] The expected type of the target of the reference. If both
  /// Reference.type and Reference.reference are populated and
  ///  Reference.reference is a FHIR URL, both SHALL be consistent.
  /// The type is the Canonical URL of Resource Definition that is the type this
  /// reference refers to. References are URLs that are relative to
  /// http://hl7.org/fhir/StructureDefinition/ e.g. "Patient" is a reference to
  /// http://hl7.org/fhir/StructureDefinition/Patient. Absolute URLs are only
  /// allowed for logical models (and can only be used in references in logical
  ///  models, not resources).
  FhirUri? get type => throw _privateConstructorUsedError;

  /// [typeElement] Extensions for type
  @JsonKey(name: '_type')
  PrimitiveElement? get typeElement => throw _privateConstructorUsedError;

  /// [identifier] An identifier for the target resource. This is used when
  /// there is no way to reference the other resource directly, either because
  /// the entity it represents is not available through a FHIR server, or
  /// because there is no way for the author of the resource to convert a known
  /// identifier to an actual location. There is no requirement that a
  /// Reference.identifier point to something that is actually exposed as a FHIR
  /// instance, but it SHALL point to a business concept that would be expected
  /// to be exposed as a FHIR instance, and that instance would need to be of a
  ///  FHIR resource type allowed by the reference.
  Identifier? get identifier => throw _privateConstructorUsedError;

  /// [display] Plain text narrative that identifies the resource in addition
  ///  to the resource reference.
  String? get display => throw _privateConstructorUsedError;

  /// [displayElement] Extensions for display
  @JsonKey(name: '_display')
  PrimitiveElement? get displayElement => throw _privateConstructorUsedError;

  /// Serializes this Reference to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Reference
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReferenceCopyWith<Reference> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReferenceCopyWith<$Res> {
  factory $ReferenceCopyWith(Reference value, $Res Function(Reference) then) =
      _$ReferenceCopyWithImpl<$Res, Reference>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      String? reference,
      @JsonKey(name: '_reference') PrimitiveElement? referenceElement,
      FhirUri? type,
      @JsonKey(name: '_type') PrimitiveElement? typeElement,
      Identifier? identifier,
      String? display,
      @JsonKey(name: '_display') PrimitiveElement? displayElement});

  $IdentifierCopyWith<$Res>? get identifier;
}

/// @nodoc
class _$ReferenceCopyWithImpl<$Res, $Val extends Reference>
    implements $ReferenceCopyWith<$Res> {
  _$ReferenceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Reference
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? reference = freezed,
    Object? referenceElement = freezed,
    Object? type = freezed,
    Object? typeElement = freezed,
    Object? identifier = freezed,
    Object? display = freezed,
    Object? displayElement = freezed,
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
      reference: freezed == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String?,
      referenceElement: freezed == referenceElement
          ? _value.referenceElement
          : referenceElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      typeElement: freezed == typeElement
          ? _value.typeElement
          : typeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as Identifier?,
      display: freezed == display
          ? _value.display
          : display // ignore: cast_nullable_to_non_nullable
              as String?,
      displayElement: freezed == displayElement
          ? _value.displayElement
          : displayElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
  }

  /// Create a copy of Reference
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
}

/// @nodoc
abstract class _$$ReferenceImplCopyWith<$Res>
    implements $ReferenceCopyWith<$Res> {
  factory _$$ReferenceImplCopyWith(
          _$ReferenceImpl value, $Res Function(_$ReferenceImpl) then) =
      __$$ReferenceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      String? reference,
      @JsonKey(name: '_reference') PrimitiveElement? referenceElement,
      FhirUri? type,
      @JsonKey(name: '_type') PrimitiveElement? typeElement,
      Identifier? identifier,
      String? display,
      @JsonKey(name: '_display') PrimitiveElement? displayElement});

  @override
  $IdentifierCopyWith<$Res>? get identifier;
}

/// @nodoc
class __$$ReferenceImplCopyWithImpl<$Res>
    extends _$ReferenceCopyWithImpl<$Res, _$ReferenceImpl>
    implements _$$ReferenceImplCopyWith<$Res> {
  __$$ReferenceImplCopyWithImpl(
      _$ReferenceImpl _value, $Res Function(_$ReferenceImpl) _then)
      : super(_value, _then);

  /// Create a copy of Reference
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? reference = freezed,
    Object? referenceElement = freezed,
    Object? type = freezed,
    Object? typeElement = freezed,
    Object? identifier = freezed,
    Object? display = freezed,
    Object? displayElement = freezed,
  }) {
    return _then(_$ReferenceImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      reference: freezed == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String?,
      referenceElement: freezed == referenceElement
          ? _value.referenceElement
          : referenceElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      typeElement: freezed == typeElement
          ? _value.typeElement
          : typeElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as Identifier?,
      display: freezed == display
          ? _value.display
          : display // ignore: cast_nullable_to_non_nullable
              as String?,
      displayElement: freezed == displayElement
          ? _value.displayElement
          : displayElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReferenceImpl extends _Reference {
  const _$ReferenceImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      this.reference,
      @JsonKey(name: '_reference') this.referenceElement,
      this.type,
      @JsonKey(name: '_type') this.typeElement,
      this.identifier,
      this.display,
      @JsonKey(name: '_display') this.displayElement})
      : _extension_ = extension_,
        super._();

  factory _$ReferenceImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReferenceImplFromJson(json);

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

  /// [reference] A reference to a location at which the other resource is
  /// found. The reference may be a relative reference, in which case it is
  /// relative to the service base URL, or an absolute URL that resolves to the
  /// location where the resource is found. The reference may be version
  /// specific or not. If the reference is not to a FHIR RESTful server, then it
  /// should be assumed to be version specific. Internal fragment references
  ///  (start with '#') refer to contained resources.
  @override
  final String? reference;

  /// [referenceElement] Extensions for reference
  @override
  @JsonKey(name: '_reference')
  final PrimitiveElement? referenceElement;

  /// [type] The expected type of the target of the reference. If both
  /// Reference.type and Reference.reference are populated and
  ///  Reference.reference is a FHIR URL, both SHALL be consistent.
  /// The type is the Canonical URL of Resource Definition that is the type this
  /// reference refers to. References are URLs that are relative to
  /// http://hl7.org/fhir/StructureDefinition/ e.g. "Patient" is a reference to
  /// http://hl7.org/fhir/StructureDefinition/Patient. Absolute URLs are only
  /// allowed for logical models (and can only be used in references in logical
  ///  models, not resources).
  @override
  final FhirUri? type;

  /// [typeElement] Extensions for type
  @override
  @JsonKey(name: '_type')
  final PrimitiveElement? typeElement;

  /// [identifier] An identifier for the target resource. This is used when
  /// there is no way to reference the other resource directly, either because
  /// the entity it represents is not available through a FHIR server, or
  /// because there is no way for the author of the resource to convert a known
  /// identifier to an actual location. There is no requirement that a
  /// Reference.identifier point to something that is actually exposed as a FHIR
  /// instance, but it SHALL point to a business concept that would be expected
  /// to be exposed as a FHIR instance, and that instance would need to be of a
  ///  FHIR resource type allowed by the reference.
  @override
  final Identifier? identifier;

  /// [display] Plain text narrative that identifies the resource in addition
  ///  to the resource reference.
  @override
  final String? display;

  /// [displayElement] Extensions for display
  @override
  @JsonKey(name: '_display')
  final PrimitiveElement? displayElement;

  @override
  String toString() {
    return 'Reference(id: $id, extension_: $extension_, reference: $reference, referenceElement: $referenceElement, type: $type, typeElement: $typeElement, identifier: $identifier, display: $display, displayElement: $displayElement)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReferenceImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            (identical(other.reference, reference) ||
                other.reference == reference) &&
            (identical(other.referenceElement, referenceElement) ||
                other.referenceElement == referenceElement) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.typeElement, typeElement) ||
                other.typeElement == typeElement) &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier) &&
            (identical(other.display, display) || other.display == display) &&
            (identical(other.displayElement, displayElement) ||
                other.displayElement == displayElement));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      reference,
      referenceElement,
      type,
      typeElement,
      identifier,
      display,
      displayElement);

  /// Create a copy of Reference
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReferenceImplCopyWith<_$ReferenceImpl> get copyWith =>
      __$$ReferenceImplCopyWithImpl<_$ReferenceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReferenceImplToJson(
      this,
    );
  }
}

abstract class _Reference extends Reference {
  const factory _Reference(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          final String? reference,
          @JsonKey(name: '_reference') final PrimitiveElement? referenceElement,
          final FhirUri? type,
          @JsonKey(name: '_type') final PrimitiveElement? typeElement,
          final Identifier? identifier,
          final String? display,
          @JsonKey(name: '_display') final PrimitiveElement? displayElement}) =
      _$ReferenceImpl;
  const _Reference._() : super._();

  factory _Reference.fromJson(Map<String, dynamic> json) =
      _$ReferenceImpl.fromJson;

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

  /// [reference] A reference to a location at which the other resource is
  /// found. The reference may be a relative reference, in which case it is
  /// relative to the service base URL, or an absolute URL that resolves to the
  /// location where the resource is found. The reference may be version
  /// specific or not. If the reference is not to a FHIR RESTful server, then it
  /// should be assumed to be version specific. Internal fragment references
  ///  (start with '#') refer to contained resources.
  @override
  String? get reference;

  /// [referenceElement] Extensions for reference
  @override
  @JsonKey(name: '_reference')
  PrimitiveElement? get referenceElement;

  /// [type] The expected type of the target of the reference. If both
  /// Reference.type and Reference.reference are populated and
  ///  Reference.reference is a FHIR URL, both SHALL be consistent.
  /// The type is the Canonical URL of Resource Definition that is the type this
  /// reference refers to. References are URLs that are relative to
  /// http://hl7.org/fhir/StructureDefinition/ e.g. "Patient" is a reference to
  /// http://hl7.org/fhir/StructureDefinition/Patient. Absolute URLs are only
  /// allowed for logical models (and can only be used in references in logical
  ///  models, not resources).
  @override
  FhirUri? get type;

  /// [typeElement] Extensions for type
  @override
  @JsonKey(name: '_type')
  PrimitiveElement? get typeElement;

  /// [identifier] An identifier for the target resource. This is used when
  /// there is no way to reference the other resource directly, either because
  /// the entity it represents is not available through a FHIR server, or
  /// because there is no way for the author of the resource to convert a known
  /// identifier to an actual location. There is no requirement that a
  /// Reference.identifier point to something that is actually exposed as a FHIR
  /// instance, but it SHALL point to a business concept that would be expected
  /// to be exposed as a FHIR instance, and that instance would need to be of a
  ///  FHIR resource type allowed by the reference.
  @override
  Identifier? get identifier;

  /// [display] Plain text narrative that identifies the resource in addition
  ///  to the resource reference.
  @override
  String? get display;

  /// [displayElement] Extensions for display
  @override
  @JsonKey(name: '_display')
  PrimitiveElement? get displayElement;

  /// Create a copy of Reference
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReferenceImplCopyWith<_$ReferenceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
