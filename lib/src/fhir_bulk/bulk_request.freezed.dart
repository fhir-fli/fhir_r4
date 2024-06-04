// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bulk_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BulkRequest {
  Uri get base => throw _privateConstructorUsedError;
  FhirDateTime? get since => throw _privateConstructorUsedError;
  List<WhichResource>? get types => throw _privateConstructorUsedError;
  Client? get client => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Uri base, FhirDateTime? since,
            List<WhichResource>? types, Client? client)
        patient,
    required TResult Function(Uri base, FhirId id, FhirDateTime? since,
            List<WhichResource>? types, Client? client)
        group,
    required TResult Function(Uri base, FhirDateTime? since,
            List<WhichResource>? types, Client? client)
        system,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Uri base, FhirDateTime? since, List<WhichResource>? types,
            Client? client)?
        patient,
    TResult? Function(Uri base, FhirId id, FhirDateTime? since,
            List<WhichResource>? types, Client? client)?
        group,
    TResult? Function(Uri base, FhirDateTime? since, List<WhichResource>? types,
            Client? client)?
        system,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Uri base, FhirDateTime? since, List<WhichResource>? types,
            Client? client)?
        patient,
    TResult Function(Uri base, FhirId id, FhirDateTime? since,
            List<WhichResource>? types, Client? client)?
        group,
    TResult Function(Uri base, FhirDateTime? since, List<WhichResource>? types,
            Client? client)?
        system,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BulkPatientRequest value) patient,
    required TResult Function(_BulkGroupRequest value) group,
    required TResult Function(_BulkSystemRequest value) system,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BulkPatientRequest value)? patient,
    TResult? Function(_BulkGroupRequest value)? group,
    TResult? Function(_BulkSystemRequest value)? system,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BulkPatientRequest value)? patient,
    TResult Function(_BulkGroupRequest value)? group,
    TResult Function(_BulkSystemRequest value)? system,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BulkRequestCopyWith<BulkRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BulkRequestCopyWith<$Res> {
  factory $BulkRequestCopyWith(
          BulkRequest value, $Res Function(BulkRequest) then) =
      _$BulkRequestCopyWithImpl<$Res, BulkRequest>;
  @useResult
  $Res call(
      {Uri base,
      FhirDateTime? since,
      List<WhichResource>? types,
      Client? client});
}

/// @nodoc
class _$BulkRequestCopyWithImpl<$Res, $Val extends BulkRequest>
    implements $BulkRequestCopyWith<$Res> {
  _$BulkRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? base = null,
    Object? since = freezed,
    Object? types = freezed,
    Object? client = freezed,
  }) {
    return _then(_value.copyWith(
      base: null == base
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as Uri,
      since: freezed == since
          ? _value.since
          : since // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      types: freezed == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<WhichResource>?,
      client: freezed == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as Client?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BulkPatientRequestImplCopyWith<$Res>
    implements $BulkRequestCopyWith<$Res> {
  factory _$$BulkPatientRequestImplCopyWith(_$BulkPatientRequestImpl value,
          $Res Function(_$BulkPatientRequestImpl) then) =
      __$$BulkPatientRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Uri base,
      FhirDateTime? since,
      List<WhichResource>? types,
      Client? client});
}

/// @nodoc
class __$$BulkPatientRequestImplCopyWithImpl<$Res>
    extends _$BulkRequestCopyWithImpl<$Res, _$BulkPatientRequestImpl>
    implements _$$BulkPatientRequestImplCopyWith<$Res> {
  __$$BulkPatientRequestImplCopyWithImpl(_$BulkPatientRequestImpl _value,
      $Res Function(_$BulkPatientRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? base = null,
    Object? since = freezed,
    Object? types = freezed,
    Object? client = freezed,
  }) {
    return _then(_$BulkPatientRequestImpl(
      base: null == base
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as Uri,
      since: freezed == since
          ? _value.since
          : since // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      types: freezed == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<WhichResource>?,
      client: freezed == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as Client?,
    ));
  }
}

/// @nodoc

class _$BulkPatientRequestImpl extends _BulkPatientRequest {
  const _$BulkPatientRequestImpl(
      {required this.base,
      this.since,
      final List<WhichResource>? types,
      this.client})
      : _types = types,
        super._();

  @override
  final Uri base;
  @override
  final FhirDateTime? since;
  final List<WhichResource>? _types;
  @override
  List<WhichResource>? get types {
    final value = _types;
    if (value == null) return null;
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Client? client;

  @override
  String toString() {
    return 'BulkRequest.patient(base: $base, since: $since, types: $types, client: $client)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BulkPatientRequestImpl &&
            (identical(other.base, base) || other.base == base) &&
            (identical(other.since, since) || other.since == since) &&
            const DeepCollectionEquality().equals(other._types, _types) &&
            (identical(other.client, client) || other.client == client));
  }

  @override
  int get hashCode => Object.hash(runtimeType, base, since,
      const DeepCollectionEquality().hash(_types), client);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BulkPatientRequestImplCopyWith<_$BulkPatientRequestImpl> get copyWith =>
      __$$BulkPatientRequestImplCopyWithImpl<_$BulkPatientRequestImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Uri base, FhirDateTime? since,
            List<WhichResource>? types, Client? client)
        patient,
    required TResult Function(Uri base, FhirId id, FhirDateTime? since,
            List<WhichResource>? types, Client? client)
        group,
    required TResult Function(Uri base, FhirDateTime? since,
            List<WhichResource>? types, Client? client)
        system,
  }) {
    return patient(base, since, types, client);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Uri base, FhirDateTime? since, List<WhichResource>? types,
            Client? client)?
        patient,
    TResult? Function(Uri base, FhirId id, FhirDateTime? since,
            List<WhichResource>? types, Client? client)?
        group,
    TResult? Function(Uri base, FhirDateTime? since, List<WhichResource>? types,
            Client? client)?
        system,
  }) {
    return patient?.call(base, since, types, client);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Uri base, FhirDateTime? since, List<WhichResource>? types,
            Client? client)?
        patient,
    TResult Function(Uri base, FhirId id, FhirDateTime? since,
            List<WhichResource>? types, Client? client)?
        group,
    TResult Function(Uri base, FhirDateTime? since, List<WhichResource>? types,
            Client? client)?
        system,
    required TResult orElse(),
  }) {
    if (patient != null) {
      return patient(base, since, types, client);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BulkPatientRequest value) patient,
    required TResult Function(_BulkGroupRequest value) group,
    required TResult Function(_BulkSystemRequest value) system,
  }) {
    return patient(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BulkPatientRequest value)? patient,
    TResult? Function(_BulkGroupRequest value)? group,
    TResult? Function(_BulkSystemRequest value)? system,
  }) {
    return patient?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BulkPatientRequest value)? patient,
    TResult Function(_BulkGroupRequest value)? group,
    TResult Function(_BulkSystemRequest value)? system,
    required TResult orElse(),
  }) {
    if (patient != null) {
      return patient(this);
    }
    return orElse();
  }
}

abstract class _BulkPatientRequest extends BulkRequest {
  const factory _BulkPatientRequest(
      {required final Uri base,
      final FhirDateTime? since,
      final List<WhichResource>? types,
      final Client? client}) = _$BulkPatientRequestImpl;
  const _BulkPatientRequest._() : super._();

  @override
  Uri get base;
  @override
  FhirDateTime? get since;
  @override
  List<WhichResource>? get types;
  @override
  Client? get client;
  @override
  @JsonKey(ignore: true)
  _$$BulkPatientRequestImplCopyWith<_$BulkPatientRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BulkGroupRequestImplCopyWith<$Res>
    implements $BulkRequestCopyWith<$Res> {
  factory _$$BulkGroupRequestImplCopyWith(_$BulkGroupRequestImpl value,
          $Res Function(_$BulkGroupRequestImpl) then) =
      __$$BulkGroupRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Uri base,
      FhirId id,
      FhirDateTime? since,
      List<WhichResource>? types,
      Client? client});
}

/// @nodoc
class __$$BulkGroupRequestImplCopyWithImpl<$Res>
    extends _$BulkRequestCopyWithImpl<$Res, _$BulkGroupRequestImpl>
    implements _$$BulkGroupRequestImplCopyWith<$Res> {
  __$$BulkGroupRequestImplCopyWithImpl(_$BulkGroupRequestImpl _value,
      $Res Function(_$BulkGroupRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? base = null,
    Object? id = null,
    Object? since = freezed,
    Object? types = freezed,
    Object? client = freezed,
  }) {
    return _then(_$BulkGroupRequestImpl(
      base: null == base
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as Uri,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as FhirId,
      since: freezed == since
          ? _value.since
          : since // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      types: freezed == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<WhichResource>?,
      client: freezed == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as Client?,
    ));
  }
}

/// @nodoc

class _$BulkGroupRequestImpl extends _BulkGroupRequest {
  const _$BulkGroupRequestImpl(
      {required this.base,
      required this.id,
      this.since,
      final List<WhichResource>? types,
      this.client})
      : _types = types,
        super._();

  @override
  final Uri base;
  @override
  final FhirId id;
  @override
  final FhirDateTime? since;
  final List<WhichResource>? _types;
  @override
  List<WhichResource>? get types {
    final value = _types;
    if (value == null) return null;
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Client? client;

  @override
  String toString() {
    return 'BulkRequest.group(base: $base, id: $id, since: $since, types: $types, client: $client)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BulkGroupRequestImpl &&
            (identical(other.base, base) || other.base == base) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.since, since) || other.since == since) &&
            const DeepCollectionEquality().equals(other._types, _types) &&
            (identical(other.client, client) || other.client == client));
  }

  @override
  int get hashCode => Object.hash(runtimeType, base, id, since,
      const DeepCollectionEquality().hash(_types), client);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BulkGroupRequestImplCopyWith<_$BulkGroupRequestImpl> get copyWith =>
      __$$BulkGroupRequestImplCopyWithImpl<_$BulkGroupRequestImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Uri base, FhirDateTime? since,
            List<WhichResource>? types, Client? client)
        patient,
    required TResult Function(Uri base, FhirId id, FhirDateTime? since,
            List<WhichResource>? types, Client? client)
        group,
    required TResult Function(Uri base, FhirDateTime? since,
            List<WhichResource>? types, Client? client)
        system,
  }) {
    return group(base, id, since, types, client);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Uri base, FhirDateTime? since, List<WhichResource>? types,
            Client? client)?
        patient,
    TResult? Function(Uri base, FhirId id, FhirDateTime? since,
            List<WhichResource>? types, Client? client)?
        group,
    TResult? Function(Uri base, FhirDateTime? since, List<WhichResource>? types,
            Client? client)?
        system,
  }) {
    return group?.call(base, id, since, types, client);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Uri base, FhirDateTime? since, List<WhichResource>? types,
            Client? client)?
        patient,
    TResult Function(Uri base, FhirId id, FhirDateTime? since,
            List<WhichResource>? types, Client? client)?
        group,
    TResult Function(Uri base, FhirDateTime? since, List<WhichResource>? types,
            Client? client)?
        system,
    required TResult orElse(),
  }) {
    if (group != null) {
      return group(base, id, since, types, client);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BulkPatientRequest value) patient,
    required TResult Function(_BulkGroupRequest value) group,
    required TResult Function(_BulkSystemRequest value) system,
  }) {
    return group(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BulkPatientRequest value)? patient,
    TResult? Function(_BulkGroupRequest value)? group,
    TResult? Function(_BulkSystemRequest value)? system,
  }) {
    return group?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BulkPatientRequest value)? patient,
    TResult Function(_BulkGroupRequest value)? group,
    TResult Function(_BulkSystemRequest value)? system,
    required TResult orElse(),
  }) {
    if (group != null) {
      return group(this);
    }
    return orElse();
  }
}

abstract class _BulkGroupRequest extends BulkRequest {
  const factory _BulkGroupRequest(
      {required final Uri base,
      required final FhirId id,
      final FhirDateTime? since,
      final List<WhichResource>? types,
      final Client? client}) = _$BulkGroupRequestImpl;
  const _BulkGroupRequest._() : super._();

  @override
  Uri get base;
  FhirId get id;
  @override
  FhirDateTime? get since;
  @override
  List<WhichResource>? get types;
  @override
  Client? get client;
  @override
  @JsonKey(ignore: true)
  _$$BulkGroupRequestImplCopyWith<_$BulkGroupRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BulkSystemRequestImplCopyWith<$Res>
    implements $BulkRequestCopyWith<$Res> {
  factory _$$BulkSystemRequestImplCopyWith(_$BulkSystemRequestImpl value,
          $Res Function(_$BulkSystemRequestImpl) then) =
      __$$BulkSystemRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Uri base,
      FhirDateTime? since,
      List<WhichResource>? types,
      Client? client});
}

/// @nodoc
class __$$BulkSystemRequestImplCopyWithImpl<$Res>
    extends _$BulkRequestCopyWithImpl<$Res, _$BulkSystemRequestImpl>
    implements _$$BulkSystemRequestImplCopyWith<$Res> {
  __$$BulkSystemRequestImplCopyWithImpl(_$BulkSystemRequestImpl _value,
      $Res Function(_$BulkSystemRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? base = null,
    Object? since = freezed,
    Object? types = freezed,
    Object? client = freezed,
  }) {
    return _then(_$BulkSystemRequestImpl(
      base: null == base
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as Uri,
      since: freezed == since
          ? _value.since
          : since // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      types: freezed == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<WhichResource>?,
      client: freezed == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as Client?,
    ));
  }
}

/// @nodoc

class _$BulkSystemRequestImpl extends _BulkSystemRequest {
  const _$BulkSystemRequestImpl(
      {required this.base,
      this.since,
      final List<WhichResource>? types,
      this.client})
      : _types = types,
        super._();

  @override
  final Uri base;
  @override
  final FhirDateTime? since;
  final List<WhichResource>? _types;
  @override
  List<WhichResource>? get types {
    final value = _types;
    if (value == null) return null;
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Client? client;

  @override
  String toString() {
    return 'BulkRequest.system(base: $base, since: $since, types: $types, client: $client)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BulkSystemRequestImpl &&
            (identical(other.base, base) || other.base == base) &&
            (identical(other.since, since) || other.since == since) &&
            const DeepCollectionEquality().equals(other._types, _types) &&
            (identical(other.client, client) || other.client == client));
  }

  @override
  int get hashCode => Object.hash(runtimeType, base, since,
      const DeepCollectionEquality().hash(_types), client);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BulkSystemRequestImplCopyWith<_$BulkSystemRequestImpl> get copyWith =>
      __$$BulkSystemRequestImplCopyWithImpl<_$BulkSystemRequestImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Uri base, FhirDateTime? since,
            List<WhichResource>? types, Client? client)
        patient,
    required TResult Function(Uri base, FhirId id, FhirDateTime? since,
            List<WhichResource>? types, Client? client)
        group,
    required TResult Function(Uri base, FhirDateTime? since,
            List<WhichResource>? types, Client? client)
        system,
  }) {
    return system(base, since, types, client);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Uri base, FhirDateTime? since, List<WhichResource>? types,
            Client? client)?
        patient,
    TResult? Function(Uri base, FhirId id, FhirDateTime? since,
            List<WhichResource>? types, Client? client)?
        group,
    TResult? Function(Uri base, FhirDateTime? since, List<WhichResource>? types,
            Client? client)?
        system,
  }) {
    return system?.call(base, since, types, client);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Uri base, FhirDateTime? since, List<WhichResource>? types,
            Client? client)?
        patient,
    TResult Function(Uri base, FhirId id, FhirDateTime? since,
            List<WhichResource>? types, Client? client)?
        group,
    TResult Function(Uri base, FhirDateTime? since, List<WhichResource>? types,
            Client? client)?
        system,
    required TResult orElse(),
  }) {
    if (system != null) {
      return system(base, since, types, client);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BulkPatientRequest value) patient,
    required TResult Function(_BulkGroupRequest value) group,
    required TResult Function(_BulkSystemRequest value) system,
  }) {
    return system(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BulkPatientRequest value)? patient,
    TResult? Function(_BulkGroupRequest value)? group,
    TResult? Function(_BulkSystemRequest value)? system,
  }) {
    return system?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BulkPatientRequest value)? patient,
    TResult Function(_BulkGroupRequest value)? group,
    TResult Function(_BulkSystemRequest value)? system,
    required TResult orElse(),
  }) {
    if (system != null) {
      return system(this);
    }
    return orElse();
  }
}

abstract class _BulkSystemRequest extends BulkRequest {
  const factory _BulkSystemRequest(
      {required final Uri base,
      final FhirDateTime? since,
      final List<WhichResource>? types,
      final Client? client}) = _$BulkSystemRequestImpl;
  const _BulkSystemRequest._() : super._();

  @override
  Uri get base;
  @override
  FhirDateTime? get since;
  @override
  List<WhichResource>? get types;
  @override
  Client? get client;
  @override
  @JsonKey(ignore: true)
  _$$BulkSystemRequestImplCopyWith<_$BulkSystemRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
