// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signature.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Signature _$SignatureFromJson(Map<String, dynamic> json) {
  return _Signature.fromJson(json);
}

/// @nodoc
mixin _$Signature {
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

  /// [type] An indication of the reason that the entity signed this document.
  /// This may be explicitly included as part of the signature information and
  /// can be used when determining accountability for various actions concerning
  ///  the document.
  List<Coding> get type => throw _privateConstructorUsedError;

  /// [when] When the digital signature was signed.
  FhirInstant? get when => throw _privateConstructorUsedError;

  /// [whenElement] Extensions for when
  @JsonKey(name: '_when')
  PrimitiveElement? get whenElement => throw _privateConstructorUsedError;

  /// [who] A reference to an application-usable description of the identity
  ///  that signed  (e.g. the signature used their private key).
  Reference get who => throw _privateConstructorUsedError;

  /// [onBehalfOf] A reference to an application-usable description of the
  ///  identity that is represented by the signature.
  Reference? get onBehalfOf => throw _privateConstructorUsedError;

  /// [targetFormat] A mime type that indicates the technical format of the
  ///  target resources signed by the signature.
  FhirCode? get targetFormat => throw _privateConstructorUsedError;

  /// [targetFormatElement] Extensions for targetFormat
  @JsonKey(name: '_targetFormat')
  PrimitiveElement? get targetFormatElement =>
      throw _privateConstructorUsedError;

  /// [sigFormat] A mime type that indicates the technical format of the
  /// signature. Important mime types are application/signature+xml for X ML
  /// DigSig, application/jose for JWS, and image/* for a graphical image of a
  ///  signature, etc.
  FhirCode? get sigFormat => throw _privateConstructorUsedError;

  /// [sigFormatElement] Extensions for sigFormat
  @JsonKey(name: '_sigFormat')
  PrimitiveElement? get sigFormatElement => throw _privateConstructorUsedError;

  /// [data] The base64 encoding of the Signature content. When signature is
  ///  not recorded electronically this element would be empty.
  FhirBase64Binary? get data => throw _privateConstructorUsedError;

  /// [dataElement] Extensions for data
  @JsonKey(name: '_data')
  PrimitiveElement? get dataElement => throw _privateConstructorUsedError;

  /// Serializes this Signature to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Signature
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignatureCopyWith<Signature> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignatureCopyWith<$Res> {
  factory $SignatureCopyWith(Signature value, $Res Function(Signature) then) =
      _$SignatureCopyWithImpl<$Res, Signature>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<Coding> type,
      FhirInstant? when,
      @JsonKey(name: '_when') PrimitiveElement? whenElement,
      Reference who,
      Reference? onBehalfOf,
      FhirCode? targetFormat,
      @JsonKey(name: '_targetFormat') PrimitiveElement? targetFormatElement,
      FhirCode? sigFormat,
      @JsonKey(name: '_sigFormat') PrimitiveElement? sigFormatElement,
      FhirBase64Binary? data,
      @JsonKey(name: '_data') PrimitiveElement? dataElement});

  $ReferenceCopyWith<$Res> get who;
  $ReferenceCopyWith<$Res>? get onBehalfOf;
}

/// @nodoc
class _$SignatureCopyWithImpl<$Res, $Val extends Signature>
    implements $SignatureCopyWith<$Res> {
  _$SignatureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Signature
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? type = null,
    Object? when = freezed,
    Object? whenElement = freezed,
    Object? who = null,
    Object? onBehalfOf = freezed,
    Object? targetFormat = freezed,
    Object? targetFormatElement = freezed,
    Object? sigFormat = freezed,
    Object? sigFormatElement = freezed,
    Object? data = freezed,
    Object? dataElement = freezed,
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
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as List<Coding>,
      when: freezed == when
          ? _value.when
          : when // ignore: cast_nullable_to_non_nullable
              as FhirInstant?,
      whenElement: freezed == whenElement
          ? _value.whenElement
          : whenElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      who: null == who
          ? _value.who
          : who // ignore: cast_nullable_to_non_nullable
              as Reference,
      onBehalfOf: freezed == onBehalfOf
          ? _value.onBehalfOf
          : onBehalfOf // ignore: cast_nullable_to_non_nullable
              as Reference?,
      targetFormat: freezed == targetFormat
          ? _value.targetFormat
          : targetFormat // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      targetFormatElement: freezed == targetFormatElement
          ? _value.targetFormatElement
          : targetFormatElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      sigFormat: freezed == sigFormat
          ? _value.sigFormat
          : sigFormat // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      sigFormatElement: freezed == sigFormatElement
          ? _value.sigFormatElement
          : sigFormatElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as FhirBase64Binary?,
      dataElement: freezed == dataElement
          ? _value.dataElement
          : dataElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ) as $Val);
  }

  /// Create a copy of Signature
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res> get who {
    return $ReferenceCopyWith<$Res>(_value.who, (value) {
      return _then(_value.copyWith(who: value) as $Val);
    });
  }

  /// Create a copy of Signature
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ReferenceCopyWith<$Res>? get onBehalfOf {
    if (_value.onBehalfOf == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.onBehalfOf!, (value) {
      return _then(_value.copyWith(onBehalfOf: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SignatureImplCopyWith<$Res>
    implements $SignatureCopyWith<$Res> {
  factory _$$SignatureImplCopyWith(
          _$SignatureImpl value, $Res Function(_$SignatureImpl) then) =
      __$$SignatureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'extension') List<FhirExtension>? extension_,
      List<Coding> type,
      FhirInstant? when,
      @JsonKey(name: '_when') PrimitiveElement? whenElement,
      Reference who,
      Reference? onBehalfOf,
      FhirCode? targetFormat,
      @JsonKey(name: '_targetFormat') PrimitiveElement? targetFormatElement,
      FhirCode? sigFormat,
      @JsonKey(name: '_sigFormat') PrimitiveElement? sigFormatElement,
      FhirBase64Binary? data,
      @JsonKey(name: '_data') PrimitiveElement? dataElement});

  @override
  $ReferenceCopyWith<$Res> get who;
  @override
  $ReferenceCopyWith<$Res>? get onBehalfOf;
}

/// @nodoc
class __$$SignatureImplCopyWithImpl<$Res>
    extends _$SignatureCopyWithImpl<$Res, _$SignatureImpl>
    implements _$$SignatureImplCopyWith<$Res> {
  __$$SignatureImplCopyWithImpl(
      _$SignatureImpl _value, $Res Function(_$SignatureImpl) _then)
      : super(_value, _then);

  /// Create a copy of Signature
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? extension_ = freezed,
    Object? type = null,
    Object? when = freezed,
    Object? whenElement = freezed,
    Object? who = null,
    Object? onBehalfOf = freezed,
    Object? targetFormat = freezed,
    Object? targetFormatElement = freezed,
    Object? sigFormat = freezed,
    Object? sigFormatElement = freezed,
    Object? data = freezed,
    Object? dataElement = freezed,
  }) {
    return _then(_$SignatureImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      extension_: freezed == extension_
          ? _value._extension_
          : extension_ // ignore: cast_nullable_to_non_nullable
              as List<FhirExtension>?,
      type: null == type
          ? _value._type
          : type // ignore: cast_nullable_to_non_nullable
              as List<Coding>,
      when: freezed == when
          ? _value.when
          : when // ignore: cast_nullable_to_non_nullable
              as FhirInstant?,
      whenElement: freezed == whenElement
          ? _value.whenElement
          : whenElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      who: null == who
          ? _value.who
          : who // ignore: cast_nullable_to_non_nullable
              as Reference,
      onBehalfOf: freezed == onBehalfOf
          ? _value.onBehalfOf
          : onBehalfOf // ignore: cast_nullable_to_non_nullable
              as Reference?,
      targetFormat: freezed == targetFormat
          ? _value.targetFormat
          : targetFormat // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      targetFormatElement: freezed == targetFormatElement
          ? _value.targetFormatElement
          : targetFormatElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      sigFormat: freezed == sigFormat
          ? _value.sigFormat
          : sigFormat // ignore: cast_nullable_to_non_nullable
              as FhirCode?,
      sigFormatElement: freezed == sigFormatElement
          ? _value.sigFormatElement
          : sigFormatElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as FhirBase64Binary?,
      dataElement: freezed == dataElement
          ? _value.dataElement
          : dataElement // ignore: cast_nullable_to_non_nullable
              as PrimitiveElement?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignatureImpl extends _Signature {
  _$SignatureImpl(
      {this.id,
      @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
      required final List<Coding> type,
      this.when,
      @JsonKey(name: '_when') this.whenElement,
      required this.who,
      this.onBehalfOf,
      this.targetFormat,
      @JsonKey(name: '_targetFormat') this.targetFormatElement,
      this.sigFormat,
      @JsonKey(name: '_sigFormat') this.sigFormatElement,
      this.data,
      @JsonKey(name: '_data') this.dataElement})
      : _extension_ = extension_,
        _type = type,
        super._();

  factory _$SignatureImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignatureImplFromJson(json);

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

  /// [type] An indication of the reason that the entity signed this document.
  /// This may be explicitly included as part of the signature information and
  /// can be used when determining accountability for various actions concerning
  ///  the document.
  final List<Coding> _type;

  /// [type] An indication of the reason that the entity signed this document.
  /// This may be explicitly included as part of the signature information and
  /// can be used when determining accountability for various actions concerning
  ///  the document.
  @override
  List<Coding> get type {
    if (_type is EqualUnmodifiableListView) return _type;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_type);
  }

  /// [when] When the digital signature was signed.
  @override
  final FhirInstant? when;

  /// [whenElement] Extensions for when
  @override
  @JsonKey(name: '_when')
  final PrimitiveElement? whenElement;

  /// [who] A reference to an application-usable description of the identity
  ///  that signed  (e.g. the signature used their private key).
  @override
  final Reference who;

  /// [onBehalfOf] A reference to an application-usable description of the
  ///  identity that is represented by the signature.
  @override
  final Reference? onBehalfOf;

  /// [targetFormat] A mime type that indicates the technical format of the
  ///  target resources signed by the signature.
  @override
  final FhirCode? targetFormat;

  /// [targetFormatElement] Extensions for targetFormat
  @override
  @JsonKey(name: '_targetFormat')
  final PrimitiveElement? targetFormatElement;

  /// [sigFormat] A mime type that indicates the technical format of the
  /// signature. Important mime types are application/signature+xml for X ML
  /// DigSig, application/jose for JWS, and image/* for a graphical image of a
  ///  signature, etc.
  @override
  final FhirCode? sigFormat;

  /// [sigFormatElement] Extensions for sigFormat
  @override
  @JsonKey(name: '_sigFormat')
  final PrimitiveElement? sigFormatElement;

  /// [data] The base64 encoding of the Signature content. When signature is
  ///  not recorded electronically this element would be empty.
  @override
  final FhirBase64Binary? data;

  /// [dataElement] Extensions for data
  @override
  @JsonKey(name: '_data')
  final PrimitiveElement? dataElement;

  @override
  String toString() {
    return 'Signature(id: $id, extension_: $extension_, type: $type, when: $when, whenElement: $whenElement, who: $who, onBehalfOf: $onBehalfOf, targetFormat: $targetFormat, targetFormatElement: $targetFormatElement, sigFormat: $sigFormat, sigFormatElement: $sigFormatElement, data: $data, dataElement: $dataElement)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignatureImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._extension_, _extension_) &&
            const DeepCollectionEquality().equals(other._type, _type) &&
            (identical(other.when, when) || other.when == when) &&
            (identical(other.whenElement, whenElement) ||
                other.whenElement == whenElement) &&
            (identical(other.who, who) || other.who == who) &&
            (identical(other.onBehalfOf, onBehalfOf) ||
                other.onBehalfOf == onBehalfOf) &&
            (identical(other.targetFormat, targetFormat) ||
                other.targetFormat == targetFormat) &&
            (identical(other.targetFormatElement, targetFormatElement) ||
                other.targetFormatElement == targetFormatElement) &&
            (identical(other.sigFormat, sigFormat) ||
                other.sigFormat == sigFormat) &&
            (identical(other.sigFormatElement, sigFormatElement) ||
                other.sigFormatElement == sigFormatElement) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.dataElement, dataElement) ||
                other.dataElement == dataElement));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_extension_),
      const DeepCollectionEquality().hash(_type),
      when,
      whenElement,
      who,
      onBehalfOf,
      targetFormat,
      targetFormatElement,
      sigFormat,
      sigFormatElement,
      data,
      dataElement);

  /// Create a copy of Signature
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignatureImplCopyWith<_$SignatureImpl> get copyWith =>
      __$$SignatureImplCopyWithImpl<_$SignatureImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignatureImplToJson(
      this,
    );
  }
}

abstract class _Signature extends Signature {
  factory _Signature(
          {final String? id,
          @JsonKey(name: 'extension') final List<FhirExtension>? extension_,
          required final List<Coding> type,
          final FhirInstant? when,
          @JsonKey(name: '_when') final PrimitiveElement? whenElement,
          required final Reference who,
          final Reference? onBehalfOf,
          final FhirCode? targetFormat,
          @JsonKey(name: '_targetFormat')
          final PrimitiveElement? targetFormatElement,
          final FhirCode? sigFormat,
          @JsonKey(name: '_sigFormat') final PrimitiveElement? sigFormatElement,
          final FhirBase64Binary? data,
          @JsonKey(name: '_data') final PrimitiveElement? dataElement}) =
      _$SignatureImpl;
  _Signature._() : super._();

  factory _Signature.fromJson(Map<String, dynamic> json) =
      _$SignatureImpl.fromJson;

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

  /// [type] An indication of the reason that the entity signed this document.
  /// This may be explicitly included as part of the signature information and
  /// can be used when determining accountability for various actions concerning
  ///  the document.
  @override
  List<Coding> get type;

  /// [when] When the digital signature was signed.
  @override
  FhirInstant? get when;

  /// [whenElement] Extensions for when
  @override
  @JsonKey(name: '_when')
  PrimitiveElement? get whenElement;

  /// [who] A reference to an application-usable description of the identity
  ///  that signed  (e.g. the signature used their private key).
  @override
  Reference get who;

  /// [onBehalfOf] A reference to an application-usable description of the
  ///  identity that is represented by the signature.
  @override
  Reference? get onBehalfOf;

  /// [targetFormat] A mime type that indicates the technical format of the
  ///  target resources signed by the signature.
  @override
  FhirCode? get targetFormat;

  /// [targetFormatElement] Extensions for targetFormat
  @override
  @JsonKey(name: '_targetFormat')
  PrimitiveElement? get targetFormatElement;

  /// [sigFormat] A mime type that indicates the technical format of the
  /// signature. Important mime types are application/signature+xml for X ML
  /// DigSig, application/jose for JWS, and image/* for a graphical image of a
  ///  signature, etc.
  @override
  FhirCode? get sigFormat;

  /// [sigFormatElement] Extensions for sigFormat
  @override
  @JsonKey(name: '_sigFormat')
  PrimitiveElement? get sigFormatElement;

  /// [data] The base64 encoding of the Signature content. When signature is
  ///  not recorded electronically this element would be empty.
  @override
  FhirBase64Binary? get data;

  /// [dataElement] Extensions for data
  @override
  @JsonKey(name: '_data')
  PrimitiveElement? get dataElement;

  /// Create a copy of Signature
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignatureImplCopyWith<_$SignatureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
