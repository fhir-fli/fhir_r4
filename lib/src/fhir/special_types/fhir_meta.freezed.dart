// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fhir_meta.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FhirMeta _$FhirMetaFromJson(Map<String, dynamic> json) {
  return _FhirMeta.fromJson(json);
}

/// @nodoc
mixin _$FhirMeta {
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

  /// [versionId] The version specific identifier, as it appears in the version
  /// portion of the URL. This value changes when the resource is created,
  ///  updated, or deleted.
  FhirId? get versionId => throw _privateConstructorUsedError;

  /// [versionIdElement] Extensions for versionId
  @JsonKey(name: '_versionId')
  PrimitiveElement? get versionIdElement => throw _privateConstructorUsedError;

  /// [lastUpdated] When the resource last changed - e.g. when the version
  ///  changed.
  FhirInstant? get lastUpdated => throw _privateConstructorUsedError;

  /// [lastUpdatedElement] Extensions for lastUpdated
  @JsonKey(name: '_lastUpdated')
  PrimitiveElement? get lastUpdatedElement =>
      throw _privateConstructorUsedError;

  /// [source] A uri that identifies the source system of the resource. This
  /// provides a minimal amount of [[[Provenance]]] information that can be used
  /// to track or differentiate the source of information in the resource. The
  /// source may identify another FHIR server, document, message, database,
  ///  etc.
  FhirUri? get source => throw _privateConstructorUsedError;

  /// [sourceElement] Extensions for source
  @JsonKey(name: '_source')
  PrimitiveElement? get sourceElement => throw _privateConstructorUsedError;

  /// [profile] A list of profiles (references to [[[StructureDefinition]]]
  /// resources) that this resource claims to conform to. The URL is a reference
  ///  to [[[StructureDefinition.url]]].
  List<FhirCanonical>? get profile => throw _privateConstructorUsedError;

  /// [security] Security labels applied to this resource. These tags connect
  ///  specific resources to the overall security policy and infrastructure.
  List<Coding>? get security => throw _privateConstructorUsedError;

  /// [tag] Tags applied to this resource. Tags are intended to be used to
  /// identify and relate resources to process and workflow, and applications
  /// are not required to consider the tags when interpreting the meaning of a
  ///  resource.
  List<Coding>? get tag => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FhirMetaCopyWith<FhirMeta> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FhirMetaCopyWith<$Res> {
  factory $FhirMetaCopyWith(FhirMeta value, $Res Function(FhirMeta) then) =
      _$FhirMetaCopyWithImpl<$Res, FhirMeta>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      FhirId? versionId,
      @JsonKey(name: '_versionId') PrimitiveElement? versionIdElement,
      FhirInstant? lastUpdated,
      @JsonKey(name: '_lastUpdated') PrimitiveElement? lastUpdatedElement,
      FhirUri? source,
      @JsonKey(name: '_source') PrimitiveElement? sourceElement,
      List<FhirCanonical>? profile,
      List<Coding>? security,
      List<Coding>? tag});
}

/// @nodoc
class _$FhirMetaCopyWithImpl<$Res, $Val extends FhirMeta>
    implements $FhirMetaCopyWith<$Res> {
  _$FhirMetaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? versionId = freezed,
    Object? versionIdElement = freezed,
    Object? lastUpdated = freezed,
    Object? lastUpdatedElement = freezed,
    Object? source = freezed,
    Object? sourceElement = freezed,
    Object? profile = freezed,
    Object? security = freezed,
    Object? tag = freezed,
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
      versionId: freezed == versionId
          ? _value.versionId
          : versionId // ignore: cast_nullable_to_non_nullable
              as FhirId?,
      versionIdElement: freezed == versionIdElement
          ? _value.versionIdElement
          : versionIdElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      lastUpdated: freezed == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as FhirInstant?,
      lastUpdatedElement: freezed == lastUpdatedElement
          ? _value.lastUpdatedElement
          : lastUpdatedElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      sourceElement: freezed == sourceElement
          ? _value.sourceElement
          : sourceElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as List<FhirCanonical>?,
      security: freezed == security
          ? _value.security
          : security // ignore: cast_nullable_to_non_nullable
              as List<Coding>?,
      tag: freezed == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as List<Coding>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FhirMetaImplCopyWith<$Res>
    implements $FhirMetaCopyWith<$Res> {
  factory _$$FhirMetaImplCopyWith(
          _$FhirMetaImpl value, $Res Function(_$FhirMetaImpl) then) =
      __$$FhirMetaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      FhirId? versionId,
      @JsonKey(name: '_versionId') PrimitiveElement? versionIdElement,
      FhirInstant? lastUpdated,
      @JsonKey(name: '_lastUpdated') PrimitiveElement? lastUpdatedElement,
      FhirUri? source,
      @JsonKey(name: '_source') PrimitiveElement? sourceElement,
      List<FhirCanonical>? profile,
      List<Coding>? security,
      List<Coding>? tag});
}

/// @nodoc
class __$$FhirMetaImplCopyWithImpl<$Res>
    extends _$FhirMetaCopyWithImpl<$Res, _$FhirMetaImpl>
    implements _$$FhirMetaImplCopyWith<$Res> {
  __$$FhirMetaImplCopyWithImpl(
      _$FhirMetaImpl _value, $Res Function(_$FhirMetaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? versionId = freezed,
    Object? versionIdElement = freezed,
    Object? lastUpdated = freezed,
    Object? lastUpdatedElement = freezed,
    Object? source = freezed,
    Object? sourceElement = freezed,
    Object? profile = freezed,
    Object? security = freezed,
    Object? tag = freezed,
  }) {
    return _then(_$FhirMetaImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      versionId: freezed == versionId
          ? _value.versionId
          : versionId // ignore: cast_nullable_to_non_nullable
              as FhirId?,
      versionIdElement: freezed == versionIdElement
          ? _value.versionIdElement
          : versionIdElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      lastUpdated: freezed == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as FhirInstant?,
      lastUpdatedElement: freezed == lastUpdatedElement
          ? _value.lastUpdatedElement
          : lastUpdatedElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as FhirUri?,
      sourceElement: freezed == sourceElement
          ? _value.sourceElement
          : sourceElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      profile: freezed == profile
          ? _value._profile
          : profile // ignore: cast_nullable_to_non_nullable
              as List<FhirCanonical>?,
      security: freezed == security
          ? _value._security
          : security // ignore: cast_nullable_to_non_nullable
              as List<Coding>?,
      tag: freezed == tag
          ? _value._tag
          : tag // ignore: cast_nullable_to_non_nullable
              as List<Coding>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FhirMetaImpl extends _FhirMeta {
  const _$FhirMetaImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      this.versionId,
      @JsonKey(name: '_versionId') this.versionIdElement,
      this.lastUpdated,
      @JsonKey(name: '_lastUpdated') this.lastUpdatedElement,
      this.source,
      @JsonKey(name: '_source') this.sourceElement,
      final List<FhirCanonical>? profile,
      final List<Coding>? security,
      final List<Coding>? tag})
      : _extension_ = extension_,
        _profile = profile,
        _security = security,
        _tag = tag,
        super._();

  factory _$FhirMetaImpl.fromJson(Map<String, dynamic> json) =>
      _$$FhirMetaImplFromJson(json);

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

  /// [versionId] The version specific identifier, as it appears in the version
  /// portion of the URL. This value changes when the resource is created,
  ///  updated, or deleted.
  @override
  final FhirId? versionId;

  /// [versionIdElement] Extensions for versionId
  @override
  @JsonKey(name: '_versionId')
  final PrimitiveElement? versionIdElement;

  /// [lastUpdated] When the resource last changed - e.g. when the version
  ///  changed.
  @override
  final FhirInstant? lastUpdated;

  /// [lastUpdatedElement] Extensions for lastUpdated
  @override
  @JsonKey(name: '_lastUpdated')
  final PrimitiveElement? lastUpdatedElement;

  /// [source] A uri that identifies the source system of the resource. This
  /// provides a minimal amount of [[[Provenance]]] information that can be used
  /// to track or differentiate the source of information in the resource. The
  /// source may identify another FHIR server, document, message, database,
  ///  etc.
  @override
  final FhirUri? source;

  /// [sourceElement] Extensions for source
  @override
  @JsonKey(name: '_source')
  final PrimitiveElement? sourceElement;

  /// [profile] A list of profiles (references to [[[StructureDefinition]]]
  /// resources) that this resource claims to conform to. The URL is a reference
  ///  to [[[StructureDefinition.url]]].
  final List<FhirCanonical>? _profile;

  /// [profile] A list of profiles (references to [[[StructureDefinition]]]
  /// resources) that this resource claims to conform to. The URL is a reference
  ///  to [[[StructureDefinition.url]]].
  @override
  List<FhirCanonical>? get profile {
    final value = _profile;
    if (value == null) return null;
    if (_profile is EqualUnmodifiableListView) return _profile;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [security] Security labels applied to this resource. These tags connect
  ///  specific resources to the overall security policy and infrastructure.
  final List<Coding>? _security;

  /// [security] Security labels applied to this resource. These tags connect
  ///  specific resources to the overall security policy and infrastructure.
  @override
  List<Coding>? get security {
    final value = _security;
    if (value == null) return null;
    if (_security is EqualUnmodifiableListView) return _security;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// [tag] Tags applied to this resource. Tags are intended to be used to
  /// identify and relate resources to process and workflow, and applications
  /// are not required to consider the tags when interpreting the meaning of a
  ///  resource.
  final List<Coding>? _tag;

  /// [tag] Tags applied to this resource. Tags are intended to be used to
  /// identify and relate resources to process and workflow, and applications
  /// are not required to consider the tags when interpreting the meaning of a
  ///  resource.
  @override
  List<Coding>? get tag {
    final value = _tag;
    if (value == null) return null;
    if (_tag is EqualUnmodifiableListView) return _tag;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FhirMetaImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            (identical(other.versionId, versionId) ||
                other.versionId == versionId) &&
            (identical(other.versionIdElement, versionIdElement) ||
                other.versionIdElement == versionIdElement) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.lastUpdatedElement, lastUpdatedElement) ||
                other.lastUpdatedElement == lastUpdatedElement) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.sourceElement, sourceElement) ||
                other.sourceElement == sourceElement) &&
            const DeepCollectionEquality().equals(other._profile, _profile) &&
            const DeepCollectionEquality().equals(other._security, _security) &&
            const DeepCollectionEquality().equals(other._tag, _tag));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      versionId,
      versionIdElement,
      lastUpdated,
      lastUpdatedElement,
      source,
      sourceElement,
      const DeepCollectionEquality().hash(_profile),
      const DeepCollectionEquality().hash(_security),
      const DeepCollectionEquality().hash(_tag));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FhirMetaImplCopyWith<_$FhirMetaImpl> get copyWith =>
      __$$FhirMetaImplCopyWithImpl<_$FhirMetaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FhirMetaImplToJson(
      this,
    );
  }
}

abstract class _FhirMeta extends FhirMeta {
  const factory _FhirMeta(
      {final String? id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      final FhirId? versionId,
      @JsonKey(name: '_versionId') final PrimitiveElement? versionIdElement,
      final FhirInstant? lastUpdated,
      @JsonKey(name: '_lastUpdated') final PrimitiveElement? lastUpdatedElement,
      final FhirUri? source,
      @JsonKey(name: '_source') final PrimitiveElement? sourceElement,
      final List<FhirCanonical>? profile,
      final List<Coding>? security,
      final List<Coding>? tag}) = _$FhirMetaImpl;
  const _FhirMeta._() : super._();

  factory _FhirMeta.fromJson(Map<String, dynamic> json) =
      _$FhirMetaImpl.fromJson;

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

  /// [versionId] The version specific identifier, as it appears in the version
  /// portion of the URL. This value changes when the resource is created,
  ///  updated, or deleted.
  FhirId? get versionId;
  @override

  /// [versionIdElement] Extensions for versionId
  @JsonKey(name: '_versionId')
  PrimitiveElement? get versionIdElement;
  @override

  /// [lastUpdated] When the resource last changed - e.g. when the version
  ///  changed.
  FhirInstant? get lastUpdated;
  @override

  /// [lastUpdatedElement] Extensions for lastUpdated
  @JsonKey(name: '_lastUpdated')
  PrimitiveElement? get lastUpdatedElement;
  @override

  /// [source] A uri that identifies the source system of the resource. This
  /// provides a minimal amount of [[[Provenance]]] information that can be used
  /// to track or differentiate the source of information in the resource. The
  /// source may identify another FHIR server, document, message, database,
  ///  etc.
  FhirUri? get source;
  @override

  /// [sourceElement] Extensions for source
  @JsonKey(name: '_source')
  PrimitiveElement? get sourceElement;
  @override

  /// [profile] A list of profiles (references to [[[StructureDefinition]]]
  /// resources) that this resource claims to conform to. The URL is a reference
  ///  to [[[StructureDefinition.url]]].
  List<FhirCanonical>? get profile;
  @override

  /// [security] Security labels applied to this resource. These tags connect
  ///  specific resources to the overall security policy and infrastructure.
  List<Coding>? get security;
  @override

  /// [tag] Tags applied to this resource. Tags are intended to be used to
  /// identify and relate resources to process and workflow, and applications
  /// are not required to consider the tags when interpreting the meaning of a
  ///  resource.
  List<Coding>? get tag;
  @override
  @JsonKey(ignore: true)
  _$$FhirMetaImplCopyWith<_$FhirMetaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
