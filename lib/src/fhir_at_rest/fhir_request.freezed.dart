// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fhir_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FhirRequest _$FhirRequestFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'read':
      return FhirReadRequest.fromJson(json);
    case 'vRead':
      return FhirVReadRequest.fromJson(json);
    case 'update':
      return FhirUpdateRequest.fromJson(json);
    case 'patch':
      return FhirPatchRequest.fromJson(json);
    case 'delete':
      return FhirDeleteRequest.fromJson(json);
    case 'create':
      return FhirCreateRequest.fromJson(json);
    case 'search':
      return FhirSearchRequest.fromJson(json);
    case 'searchAll':
      return FhirSearchAllRequest.fromJson(json);
    case 'capabilities':
      return FhirCapabilitiesRequest.fromJson(json);
    case 'transaction':
      return FhirTransactionRequest.fromJson(json);
    case 'batch':
      return FhirBatchRequest.fromJson(json);
    case 'history':
      return FhirHistoryRequest.fromJson(json);
    case 'historyType':
      return FhirHistoryTypeRequest.fromJson(json);
    case 'historyAll':
      return FhirHistoryAllRequest.fromJson(json);
    case 'operation':
      return FhirOperationRequest.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'FhirRequest',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$FhirRequest {
  /// [base] - the base URI for the FHIR server
  Uri get base => throw _privateConstructorUsedError;

  /// [pretty] - pretty print the json formatting in the response
  bool? get pretty => throw _privateConstructorUsedError;

  /// [summary] - do you want the result to be a summary
  Summary get summary => throw _privateConstructorUsedError;

  /// [format] - Possible formats are: json, json+fhir or fhir+json
  /// (would not request XML as this library doesn't work with XML)
  String? get format => throw _privateConstructorUsedError;

  /// [elements] - elements you need to pass in
  List<String> get elements => throw _privateConstructorUsedError;

  /// [parameters] - any extra parameters
  List<String> get parameters => throw _privateConstructorUsedError;

  /// [mimeType] - specify the MimeType in the Header - this should be fhir+json
  ///   but there are some older systems that won't accept that
  SupportedMimeType? get mimeType => throw _privateConstructorUsedError;

  /// [accept] - this will default to fhir+json just so it will stop sending
  /// me XML - I hate XML
  String get accept => throw _privateConstructorUsedError;

  /// [client] - if there's a specific client that you're going to be using
// ignore: invalid_annotation_target
  @JsonKey(includeFromJson: false, includeToJson: false)
  Client? get client => throw _privateConstructorUsedError;

  /// [headers] - because there are some times it's easier to incldue the
  /// headers in the object instead of only passing it in with the
  /// request
  Map<String, String>? get headers => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        read,
    required TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            FhirId vid,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        vRead,
    required TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        update,
    required TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        patch,
    required TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        delete,
    required TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        create,
    required TResult Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            bool usePost,
            RestfulRequest restfulRequest,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        search,
    required TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        searchAll,
    required TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Mode mode,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        capabilities,
    required TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        transaction,
    required TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        batch,
    required TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        history,
    required TResult Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        historyType,
    required TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        historyAll,
    required TResult Function(
            Uri base,
            R4ResourceType? type,
            String? id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Parameters? fhirParameter,
            String operation,
            bool usePost,
            bool useFormData,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        operation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        read,
    TResult? Function(
            Uri base,
            R4ResourceType type,
            String id,
            FhirId vid,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        vRead,
    TResult? Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        update,
    TResult? Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        patch,
    TResult? Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        delete,
    TResult? Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        create,
    TResult? Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            bool usePost,
            RestfulRequest restfulRequest,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        search,
    TResult? Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        searchAll,
    TResult? Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Mode mode,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        capabilities,
    TResult? Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        transaction,
    TResult? Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        batch,
    TResult? Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        history,
    TResult? Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        historyType,
    TResult? Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        historyAll,
    TResult? Function(
            Uri base,
            R4ResourceType? type,
            String? id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Parameters? fhirParameter,
            String operation,
            bool usePost,
            bool useFormData,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        operation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        read,
    TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            FhirId vid,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        vRead,
    TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        update,
    TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        patch,
    TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        delete,
    TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        create,
    TResult Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            bool usePost,
            RestfulRequest restfulRequest,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        search,
    TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        searchAll,
    TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Mode mode,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        capabilities,
    TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        transaction,
    TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        batch,
    TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        history,
    TResult Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        historyType,
    TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        historyAll,
    TResult Function(
            Uri base,
            R4ResourceType? type,
            String? id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Parameters? fhirParameter,
            String operation,
            bool usePost,
            bool useFormData,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        operation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FhirReadRequest value) read,
    required TResult Function(FhirVReadRequest value) vRead,
    required TResult Function(FhirUpdateRequest value) update,
    required TResult Function(FhirPatchRequest value) patch,
    required TResult Function(FhirDeleteRequest value) delete,
    required TResult Function(FhirCreateRequest value) create,
    required TResult Function(FhirSearchRequest value) search,
    required TResult Function(FhirSearchAllRequest value) searchAll,
    required TResult Function(FhirCapabilitiesRequest value) capabilities,
    required TResult Function(FhirTransactionRequest value) transaction,
    required TResult Function(FhirBatchRequest value) batch,
    required TResult Function(FhirHistoryRequest value) history,
    required TResult Function(FhirHistoryTypeRequest value) historyType,
    required TResult Function(FhirHistoryAllRequest value) historyAll,
    required TResult Function(FhirOperationRequest value) operation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FhirReadRequest value)? read,
    TResult? Function(FhirVReadRequest value)? vRead,
    TResult? Function(FhirUpdateRequest value)? update,
    TResult? Function(FhirPatchRequest value)? patch,
    TResult? Function(FhirDeleteRequest value)? delete,
    TResult? Function(FhirCreateRequest value)? create,
    TResult? Function(FhirSearchRequest value)? search,
    TResult? Function(FhirSearchAllRequest value)? searchAll,
    TResult? Function(FhirCapabilitiesRequest value)? capabilities,
    TResult? Function(FhirTransactionRequest value)? transaction,
    TResult? Function(FhirBatchRequest value)? batch,
    TResult? Function(FhirHistoryRequest value)? history,
    TResult? Function(FhirHistoryTypeRequest value)? historyType,
    TResult? Function(FhirHistoryAllRequest value)? historyAll,
    TResult? Function(FhirOperationRequest value)? operation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FhirReadRequest value)? read,
    TResult Function(FhirVReadRequest value)? vRead,
    TResult Function(FhirUpdateRequest value)? update,
    TResult Function(FhirPatchRequest value)? patch,
    TResult Function(FhirDeleteRequest value)? delete,
    TResult Function(FhirCreateRequest value)? create,
    TResult Function(FhirSearchRequest value)? search,
    TResult Function(FhirSearchAllRequest value)? searchAll,
    TResult Function(FhirCapabilitiesRequest value)? capabilities,
    TResult Function(FhirTransactionRequest value)? transaction,
    TResult Function(FhirBatchRequest value)? batch,
    TResult Function(FhirHistoryRequest value)? history,
    TResult Function(FhirHistoryTypeRequest value)? historyType,
    TResult Function(FhirHistoryAllRequest value)? historyAll,
    TResult Function(FhirOperationRequest value)? operation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FhirRequestCopyWith<FhirRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FhirRequestCopyWith<$Res> {
  factory $FhirRequestCopyWith(
          FhirRequest value, $Res Function(FhirRequest) then) =
      _$FhirRequestCopyWithImpl<$Res, FhirRequest>;
  @useResult
  $Res call(
      {Uri base,
      bool? pretty,
      Summary summary,
      String? format,
      List<String> elements,
      List<String> parameters,
      SupportedMimeType? mimeType,
      String accept,
      @JsonKey(includeFromJson: false, includeToJson: false) Client? client,
      Map<String, String>? headers});
}

/// @nodoc
class _$FhirRequestCopyWithImpl<$Res, $Val extends FhirRequest>
    implements $FhirRequestCopyWith<$Res> {
  _$FhirRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? base = null,
    Object? pretty = freezed,
    Object? summary = null,
    Object? format = freezed,
    Object? elements = null,
    Object? parameters = null,
    Object? mimeType = freezed,
    Object? accept = null,
    Object? client = freezed,
    Object? headers = freezed,
  }) {
    return _then(_value.copyWith(
      base: null == base
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as Uri,
      pretty: freezed == pretty
          ? _value.pretty
          : pretty // ignore: cast_nullable_to_non_nullable
              as bool?,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as Summary,
      format: freezed == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String?,
      elements: null == elements
          ? _value.elements
          : elements // ignore: cast_nullable_to_non_nullable
              as List<String>,
      parameters: null == parameters
          ? _value.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as List<String>,
      mimeType: freezed == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as SupportedMimeType?,
      accept: null == accept
          ? _value.accept
          : accept // ignore: cast_nullable_to_non_nullable
              as String,
      client: freezed == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as Client?,
      headers: freezed == headers
          ? _value.headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FhirReadRequestImplCopyWith<$Res>
    implements $FhirRequestCopyWith<$Res> {
  factory _$$FhirReadRequestImplCopyWith(_$FhirReadRequestImpl value,
          $Res Function(_$FhirReadRequestImpl) then) =
      __$$FhirReadRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Uri base,
      R4ResourceType type,
      String id,
      bool? pretty,
      Summary summary,
      String? format,
      List<String> elements,
      List<String> parameters,
      SupportedMimeType? mimeType,
      String accept,
      @JsonKey(includeFromJson: false, includeToJson: false) Client? client,
      Map<String, String>? headers});
}

/// @nodoc
class __$$FhirReadRequestImplCopyWithImpl<$Res>
    extends _$FhirRequestCopyWithImpl<$Res, _$FhirReadRequestImpl>
    implements _$$FhirReadRequestImplCopyWith<$Res> {
  __$$FhirReadRequestImplCopyWithImpl(
      _$FhirReadRequestImpl _value, $Res Function(_$FhirReadRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? base = null,
    Object? type = null,
    Object? id = null,
    Object? pretty = freezed,
    Object? summary = null,
    Object? format = freezed,
    Object? elements = null,
    Object? parameters = null,
    Object? mimeType = freezed,
    Object? accept = null,
    Object? client = freezed,
    Object? headers = freezed,
  }) {
    return _then(_$FhirReadRequestImpl(
      base: null == base
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as Uri,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as R4ResourceType,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      pretty: freezed == pretty
          ? _value.pretty
          : pretty // ignore: cast_nullable_to_non_nullable
              as bool?,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as Summary,
      format: freezed == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String?,
      elements: null == elements
          ? _value._elements
          : elements // ignore: cast_nullable_to_non_nullable
              as List<String>,
      parameters: null == parameters
          ? _value._parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as List<String>,
      mimeType: freezed == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as SupportedMimeType?,
      accept: null == accept
          ? _value.accept
          : accept // ignore: cast_nullable_to_non_nullable
              as String,
      client: freezed == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as Client?,
      headers: freezed == headers
          ? _value._headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FhirReadRequestImpl extends FhirReadRequest {
  _$FhirReadRequestImpl(
      {required this.base,
      required this.type,
      required this.id,
      this.pretty,
      this.summary = Summary.none,
      this.format = 'json',
      final List<String> elements = const <String>[],
      final List<String> parameters = const <String>[],
      this.mimeType,
      this.accept = 'application/fhir+json',
      @JsonKey(includeFromJson: false, includeToJson: false) this.client,
      final Map<String, String>? headers,
      final String? $type})
      : _elements = elements,
        _parameters = parameters,
        _headers = headers,
        $type = $type ?? 'read',
        super._();

  factory _$FhirReadRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$FhirReadRequestImplFromJson(json);

  /// [base] - the base URI for the FHIR server
  @override
  final Uri base;

  /// [type] - the type of resource you're looking for
  @override
  final R4ResourceType type;

  /// [id] - the id for the resource
  @override
  final String id;

  /// [pretty] - pretty print the json formatting in the response
  @override
  final bool? pretty;

  /// [summary] - do you want the result to be a summary
  @override
  @JsonKey()
  final Summary summary;

  /// [format] - Possible formats are: json, json+fhir or fhir+json
  /// (would not request XML as this library doesn't work with XML)
  @override
  @JsonKey()
  final String? format;

  /// [elements] - elements you need to pass in
  final List<String> _elements;

  /// [elements] - elements you need to pass in
  @override
  @JsonKey()
  List<String> get elements {
    if (_elements is EqualUnmodifiableListView) return _elements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_elements);
  }

  /// [parameters] - any extra parameters
  final List<String> _parameters;

  /// [parameters] - any extra parameters
  @override
  @JsonKey()
  List<String> get parameters {
    if (_parameters is EqualUnmodifiableListView) return _parameters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_parameters);
  }

  /// [mimeType] - specify the MimeType in the Header - this should be fhir+json
  ///   but there are some older systems that won't accept that
  @override
  final SupportedMimeType? mimeType;

  /// [accept] - this will default to fhir+json just so it will stop sending
  /// me XML - I hate XML
  @override
  @JsonKey()
  final String accept;

  /// [client] - if there's a specific client that you're going to be using
// ignore: invalid_annotation_target
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final Client? client;

  /// [headers] - because there are some times it's easier to incldue the
  /// headers in the object instead of only passing it in with the
  /// request
  final Map<String, String>? _headers;

  /// [headers] - because there are some times it's easier to incldue the
  /// headers in the object instead of only passing it in with the
  /// request
  @override
  Map<String, String>? get headers {
    final value = _headers;
    if (value == null) return null;
    if (_headers is EqualUnmodifiableMapView) return _headers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FhirRequest.read(base: $base, type: $type, id: $id, pretty: $pretty, summary: $summary, format: $format, elements: $elements, parameters: $parameters, mimeType: $mimeType, accept: $accept, client: $client, headers: $headers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FhirReadRequestImpl &&
            (identical(other.base, base) || other.base == base) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.pretty, pretty) || other.pretty == pretty) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.format, format) || other.format == format) &&
            const DeepCollectionEquality().equals(other._elements, _elements) &&
            const DeepCollectionEquality()
                .equals(other._parameters, _parameters) &&
            (identical(other.mimeType, mimeType) ||
                other.mimeType == mimeType) &&
            (identical(other.accept, accept) || other.accept == accept) &&
            (identical(other.client, client) || other.client == client) &&
            const DeepCollectionEquality().equals(other._headers, _headers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      base,
      type,
      id,
      pretty,
      summary,
      format,
      const DeepCollectionEquality().hash(_elements),
      const DeepCollectionEquality().hash(_parameters),
      mimeType,
      accept,
      client,
      const DeepCollectionEquality().hash(_headers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FhirReadRequestImplCopyWith<_$FhirReadRequestImpl> get copyWith =>
      __$$FhirReadRequestImplCopyWithImpl<_$FhirReadRequestImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        read,
    required TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            FhirId vid,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        vRead,
    required TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        update,
    required TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        patch,
    required TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        delete,
    required TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        create,
    required TResult Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            bool usePost,
            RestfulRequest restfulRequest,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        search,
    required TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        searchAll,
    required TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Mode mode,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        capabilities,
    required TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        transaction,
    required TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        batch,
    required TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        history,
    required TResult Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        historyType,
    required TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        historyAll,
    required TResult Function(
            Uri base,
            R4ResourceType? type,
            String? id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Parameters? fhirParameter,
            String operation,
            bool usePost,
            bool useFormData,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        operation,
  }) {
    return read(base, type, id, pretty, summary, format, elements, parameters,
        mimeType, accept, client, headers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        read,
    TResult? Function(
            Uri base,
            R4ResourceType type,
            String id,
            FhirId vid,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        vRead,
    TResult? Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        update,
    TResult? Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        patch,
    TResult? Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        delete,
    TResult? Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        create,
    TResult? Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            bool usePost,
            RestfulRequest restfulRequest,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        search,
    TResult? Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        searchAll,
    TResult? Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Mode mode,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        capabilities,
    TResult? Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        transaction,
    TResult? Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        batch,
    TResult? Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        history,
    TResult? Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        historyType,
    TResult? Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        historyAll,
    TResult? Function(
            Uri base,
            R4ResourceType? type,
            String? id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Parameters? fhirParameter,
            String operation,
            bool usePost,
            bool useFormData,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        operation,
  }) {
    return read?.call(base, type, id, pretty, summary, format, elements,
        parameters, mimeType, accept, client, headers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        read,
    TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            FhirId vid,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        vRead,
    TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        update,
    TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        patch,
    TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        delete,
    TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        create,
    TResult Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            bool usePost,
            RestfulRequest restfulRequest,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        search,
    TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        searchAll,
    TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Mode mode,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        capabilities,
    TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        transaction,
    TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        batch,
    TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        history,
    TResult Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        historyType,
    TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        historyAll,
    TResult Function(
            Uri base,
            R4ResourceType? type,
            String? id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Parameters? fhirParameter,
            String operation,
            bool usePost,
            bool useFormData,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        operation,
    required TResult orElse(),
  }) {
    if (read != null) {
      return read(base, type, id, pretty, summary, format, elements, parameters,
          mimeType, accept, client, headers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FhirReadRequest value) read,
    required TResult Function(FhirVReadRequest value) vRead,
    required TResult Function(FhirUpdateRequest value) update,
    required TResult Function(FhirPatchRequest value) patch,
    required TResult Function(FhirDeleteRequest value) delete,
    required TResult Function(FhirCreateRequest value) create,
    required TResult Function(FhirSearchRequest value) search,
    required TResult Function(FhirSearchAllRequest value) searchAll,
    required TResult Function(FhirCapabilitiesRequest value) capabilities,
    required TResult Function(FhirTransactionRequest value) transaction,
    required TResult Function(FhirBatchRequest value) batch,
    required TResult Function(FhirHistoryRequest value) history,
    required TResult Function(FhirHistoryTypeRequest value) historyType,
    required TResult Function(FhirHistoryAllRequest value) historyAll,
    required TResult Function(FhirOperationRequest value) operation,
  }) {
    return read(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FhirReadRequest value)? read,
    TResult? Function(FhirVReadRequest value)? vRead,
    TResult? Function(FhirUpdateRequest value)? update,
    TResult? Function(FhirPatchRequest value)? patch,
    TResult? Function(FhirDeleteRequest value)? delete,
    TResult? Function(FhirCreateRequest value)? create,
    TResult? Function(FhirSearchRequest value)? search,
    TResult? Function(FhirSearchAllRequest value)? searchAll,
    TResult? Function(FhirCapabilitiesRequest value)? capabilities,
    TResult? Function(FhirTransactionRequest value)? transaction,
    TResult? Function(FhirBatchRequest value)? batch,
    TResult? Function(FhirHistoryRequest value)? history,
    TResult? Function(FhirHistoryTypeRequest value)? historyType,
    TResult? Function(FhirHistoryAllRequest value)? historyAll,
    TResult? Function(FhirOperationRequest value)? operation,
  }) {
    return read?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FhirReadRequest value)? read,
    TResult Function(FhirVReadRequest value)? vRead,
    TResult Function(FhirUpdateRequest value)? update,
    TResult Function(FhirPatchRequest value)? patch,
    TResult Function(FhirDeleteRequest value)? delete,
    TResult Function(FhirCreateRequest value)? create,
    TResult Function(FhirSearchRequest value)? search,
    TResult Function(FhirSearchAllRequest value)? searchAll,
    TResult Function(FhirCapabilitiesRequest value)? capabilities,
    TResult Function(FhirTransactionRequest value)? transaction,
    TResult Function(FhirBatchRequest value)? batch,
    TResult Function(FhirHistoryRequest value)? history,
    TResult Function(FhirHistoryTypeRequest value)? historyType,
    TResult Function(FhirHistoryAllRequest value)? historyAll,
    TResult Function(FhirOperationRequest value)? operation,
    required TResult orElse(),
  }) {
    if (read != null) {
      return read(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FhirReadRequestImplToJson(
      this,
    );
  }
}

abstract class FhirReadRequest extends FhirRequest {
  factory FhirReadRequest(
      {required final Uri base,
      required final R4ResourceType type,
      required final String id,
      final bool? pretty,
      final Summary summary,
      final String? format,
      final List<String> elements,
      final List<String> parameters,
      final SupportedMimeType? mimeType,
      final String accept,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final Client? client,
      final Map<String, String>? headers}) = _$FhirReadRequestImpl;
  FhirReadRequest._() : super._();

  factory FhirReadRequest.fromJson(Map<String, dynamic> json) =
      _$FhirReadRequestImpl.fromJson;

  @override

  /// [base] - the base URI for the FHIR server
  Uri get base;

  /// [type] - the type of resource you're looking for
  R4ResourceType get type;

  /// [id] - the id for the resource
  String get id;
  @override

  /// [pretty] - pretty print the json formatting in the response
  bool? get pretty;
  @override

  /// [summary] - do you want the result to be a summary
  Summary get summary;
  @override

  /// [format] - Possible formats are: json, json+fhir or fhir+json
  /// (would not request XML as this library doesn't work with XML)
  String? get format;
  @override

  /// [elements] - elements you need to pass in
  List<String> get elements;
  @override

  /// [parameters] - any extra parameters
  List<String> get parameters;
  @override

  /// [mimeType] - specify the MimeType in the Header - this should be fhir+json
  ///   but there are some older systems that won't accept that
  SupportedMimeType? get mimeType;
  @override

  /// [accept] - this will default to fhir+json just so it will stop sending
  /// me XML - I hate XML
  String get accept;
  @override

  /// [client] - if there's a specific client that you're going to be using
// ignore: invalid_annotation_target
  @JsonKey(includeFromJson: false, includeToJson: false)
  Client? get client;
  @override

  /// [headers] - because there are some times it's easier to incldue the
  /// headers in the object instead of only passing it in with the
  /// request
  Map<String, String>? get headers;
  @override
  @JsonKey(ignore: true)
  _$$FhirReadRequestImplCopyWith<_$FhirReadRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FhirVReadRequestImplCopyWith<$Res>
    implements $FhirRequestCopyWith<$Res> {
  factory _$$FhirVReadRequestImplCopyWith(_$FhirVReadRequestImpl value,
          $Res Function(_$FhirVReadRequestImpl) then) =
      __$$FhirVReadRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Uri base,
      R4ResourceType type,
      String id,
      FhirId vid,
      bool? pretty,
      Summary summary,
      String? format,
      List<String> elements,
      List<String> parameters,
      SupportedMimeType? mimeType,
      String accept,
      @JsonKey(includeFromJson: false, includeToJson: false) Client? client,
      Map<String, String>? headers});
}

/// @nodoc
class __$$FhirVReadRequestImplCopyWithImpl<$Res>
    extends _$FhirRequestCopyWithImpl<$Res, _$FhirVReadRequestImpl>
    implements _$$FhirVReadRequestImplCopyWith<$Res> {
  __$$FhirVReadRequestImplCopyWithImpl(_$FhirVReadRequestImpl _value,
      $Res Function(_$FhirVReadRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? base = null,
    Object? type = null,
    Object? id = null,
    Object? vid = null,
    Object? pretty = freezed,
    Object? summary = null,
    Object? format = freezed,
    Object? elements = null,
    Object? parameters = null,
    Object? mimeType = freezed,
    Object? accept = null,
    Object? client = freezed,
    Object? headers = freezed,
  }) {
    return _then(_$FhirVReadRequestImpl(
      base: null == base
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as Uri,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as R4ResourceType,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      vid: null == vid
          ? _value.vid
          : vid // ignore: cast_nullable_to_non_nullable
              as FhirId,
      pretty: freezed == pretty
          ? _value.pretty
          : pretty // ignore: cast_nullable_to_non_nullable
              as bool?,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as Summary,
      format: freezed == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String?,
      elements: null == elements
          ? _value._elements
          : elements // ignore: cast_nullable_to_non_nullable
              as List<String>,
      parameters: null == parameters
          ? _value._parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as List<String>,
      mimeType: freezed == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as SupportedMimeType?,
      accept: null == accept
          ? _value.accept
          : accept // ignore: cast_nullable_to_non_nullable
              as String,
      client: freezed == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as Client?,
      headers: freezed == headers
          ? _value._headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FhirVReadRequestImpl extends FhirVReadRequest {
  _$FhirVReadRequestImpl(
      {required this.base,
      required this.type,
      required this.id,
      required this.vid,
      this.pretty,
      this.summary = Summary.none,
      this.format = 'json',
      final List<String> elements = const <String>[],
      final List<String> parameters = const <String>[],
      this.mimeType,
      this.accept = 'application/fhir+json',
      @JsonKey(includeFromJson: false, includeToJson: false) this.client,
      final Map<String, String>? headers,
      final String? $type})
      : _elements = elements,
        _parameters = parameters,
        _headers = headers,
        $type = $type ?? 'vRead',
        super._();

  factory _$FhirVReadRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$FhirVReadRequestImplFromJson(json);

  /// [base] - the base URI for the FHIR server
  @override
  final Uri base;

  /// [type] - the type of resource you're looking for
  @override
  final R4ResourceType type;

  /// [id] - the id for the resource
  @override
  final String id;
  @override
  final FhirId vid;

  /// [pretty] - pretty print the json formatting in the response
  @override
  final bool? pretty;

  /// [summary] - do you want the result to be a summary
  @override
  @JsonKey()
  final Summary summary;

  /// [format] - Possible formats are: json, json+fhir or fhir+json
  /// (would not request XML as this library doesn't work with XML)
  @override
  @JsonKey()
  final String? format;

  /// [elements] - elements you need to pass in
  final List<String> _elements;

  /// [elements] - elements you need to pass in
  @override
  @JsonKey()
  List<String> get elements {
    if (_elements is EqualUnmodifiableListView) return _elements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_elements);
  }

  /// [parameters] - any extra parameters
  final List<String> _parameters;

  /// [parameters] - any extra parameters
  @override
  @JsonKey()
  List<String> get parameters {
    if (_parameters is EqualUnmodifiableListView) return _parameters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_parameters);
  }

  /// [mimeType] - specify the MimeType in the Header - this should be fhir+json
  ///   but there are some older systems that won't accept that
  @override
  final SupportedMimeType? mimeType;

  /// [accept] - this will default to fhir+json just so it will stop sending
  /// me XML - I hate XML
  @override
  @JsonKey()
  final String accept;

  /// [client] - if there's a specific client that you're going to be using
// ignore: invalid_annotation_target
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final Client? client;

  /// [headers] - because there are some times it's easier to incldue the
  /// headers in the object instead of only passing it in with the
  /// request
  final Map<String, String>? _headers;

  /// [headers] - because there are some times it's easier to incldue the
  /// headers in the object instead of only passing it in with the
  /// request
  @override
  Map<String, String>? get headers {
    final value = _headers;
    if (value == null) return null;
    if (_headers is EqualUnmodifiableMapView) return _headers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FhirRequest.vRead(base: $base, type: $type, id: $id, vid: $vid, pretty: $pretty, summary: $summary, format: $format, elements: $elements, parameters: $parameters, mimeType: $mimeType, accept: $accept, client: $client, headers: $headers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FhirVReadRequestImpl &&
            (identical(other.base, base) || other.base == base) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.vid, vid) || other.vid == vid) &&
            (identical(other.pretty, pretty) || other.pretty == pretty) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.format, format) || other.format == format) &&
            const DeepCollectionEquality().equals(other._elements, _elements) &&
            const DeepCollectionEquality()
                .equals(other._parameters, _parameters) &&
            (identical(other.mimeType, mimeType) ||
                other.mimeType == mimeType) &&
            (identical(other.accept, accept) || other.accept == accept) &&
            (identical(other.client, client) || other.client == client) &&
            const DeepCollectionEquality().equals(other._headers, _headers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      base,
      type,
      id,
      vid,
      pretty,
      summary,
      format,
      const DeepCollectionEquality().hash(_elements),
      const DeepCollectionEquality().hash(_parameters),
      mimeType,
      accept,
      client,
      const DeepCollectionEquality().hash(_headers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FhirVReadRequestImplCopyWith<_$FhirVReadRequestImpl> get copyWith =>
      __$$FhirVReadRequestImplCopyWithImpl<_$FhirVReadRequestImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        read,
    required TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            FhirId vid,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        vRead,
    required TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        update,
    required TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        patch,
    required TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        delete,
    required TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        create,
    required TResult Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            bool usePost,
            RestfulRequest restfulRequest,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        search,
    required TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        searchAll,
    required TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Mode mode,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        capabilities,
    required TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        transaction,
    required TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        batch,
    required TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        history,
    required TResult Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        historyType,
    required TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        historyAll,
    required TResult Function(
            Uri base,
            R4ResourceType? type,
            String? id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Parameters? fhirParameter,
            String operation,
            bool usePost,
            bool useFormData,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        operation,
  }) {
    return vRead(base, type, id, vid, pretty, summary, format, elements,
        parameters, mimeType, accept, client, headers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        read,
    TResult? Function(
            Uri base,
            R4ResourceType type,
            String id,
            FhirId vid,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        vRead,
    TResult? Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        update,
    TResult? Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        patch,
    TResult? Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        delete,
    TResult? Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        create,
    TResult? Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            bool usePost,
            RestfulRequest restfulRequest,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        search,
    TResult? Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        searchAll,
    TResult? Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Mode mode,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        capabilities,
    TResult? Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        transaction,
    TResult? Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        batch,
    TResult? Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        history,
    TResult? Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        historyType,
    TResult? Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        historyAll,
    TResult? Function(
            Uri base,
            R4ResourceType? type,
            String? id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Parameters? fhirParameter,
            String operation,
            bool usePost,
            bool useFormData,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        operation,
  }) {
    return vRead?.call(base, type, id, vid, pretty, summary, format, elements,
        parameters, mimeType, accept, client, headers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        read,
    TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            FhirId vid,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        vRead,
    TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        update,
    TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        patch,
    TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        delete,
    TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        create,
    TResult Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            bool usePost,
            RestfulRequest restfulRequest,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        search,
    TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        searchAll,
    TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Mode mode,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        capabilities,
    TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        transaction,
    TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        batch,
    TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        history,
    TResult Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        historyType,
    TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        historyAll,
    TResult Function(
            Uri base,
            R4ResourceType? type,
            String? id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Parameters? fhirParameter,
            String operation,
            bool usePost,
            bool useFormData,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        operation,
    required TResult orElse(),
  }) {
    if (vRead != null) {
      return vRead(base, type, id, vid, pretty, summary, format, elements,
          parameters, mimeType, accept, client, headers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FhirReadRequest value) read,
    required TResult Function(FhirVReadRequest value) vRead,
    required TResult Function(FhirUpdateRequest value) update,
    required TResult Function(FhirPatchRequest value) patch,
    required TResult Function(FhirDeleteRequest value) delete,
    required TResult Function(FhirCreateRequest value) create,
    required TResult Function(FhirSearchRequest value) search,
    required TResult Function(FhirSearchAllRequest value) searchAll,
    required TResult Function(FhirCapabilitiesRequest value) capabilities,
    required TResult Function(FhirTransactionRequest value) transaction,
    required TResult Function(FhirBatchRequest value) batch,
    required TResult Function(FhirHistoryRequest value) history,
    required TResult Function(FhirHistoryTypeRequest value) historyType,
    required TResult Function(FhirHistoryAllRequest value) historyAll,
    required TResult Function(FhirOperationRequest value) operation,
  }) {
    return vRead(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FhirReadRequest value)? read,
    TResult? Function(FhirVReadRequest value)? vRead,
    TResult? Function(FhirUpdateRequest value)? update,
    TResult? Function(FhirPatchRequest value)? patch,
    TResult? Function(FhirDeleteRequest value)? delete,
    TResult? Function(FhirCreateRequest value)? create,
    TResult? Function(FhirSearchRequest value)? search,
    TResult? Function(FhirSearchAllRequest value)? searchAll,
    TResult? Function(FhirCapabilitiesRequest value)? capabilities,
    TResult? Function(FhirTransactionRequest value)? transaction,
    TResult? Function(FhirBatchRequest value)? batch,
    TResult? Function(FhirHistoryRequest value)? history,
    TResult? Function(FhirHistoryTypeRequest value)? historyType,
    TResult? Function(FhirHistoryAllRequest value)? historyAll,
    TResult? Function(FhirOperationRequest value)? operation,
  }) {
    return vRead?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FhirReadRequest value)? read,
    TResult Function(FhirVReadRequest value)? vRead,
    TResult Function(FhirUpdateRequest value)? update,
    TResult Function(FhirPatchRequest value)? patch,
    TResult Function(FhirDeleteRequest value)? delete,
    TResult Function(FhirCreateRequest value)? create,
    TResult Function(FhirSearchRequest value)? search,
    TResult Function(FhirSearchAllRequest value)? searchAll,
    TResult Function(FhirCapabilitiesRequest value)? capabilities,
    TResult Function(FhirTransactionRequest value)? transaction,
    TResult Function(FhirBatchRequest value)? batch,
    TResult Function(FhirHistoryRequest value)? history,
    TResult Function(FhirHistoryTypeRequest value)? historyType,
    TResult Function(FhirHistoryAllRequest value)? historyAll,
    TResult Function(FhirOperationRequest value)? operation,
    required TResult orElse(),
  }) {
    if (vRead != null) {
      return vRead(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FhirVReadRequestImplToJson(
      this,
    );
  }
}

abstract class FhirVReadRequest extends FhirRequest {
  factory FhirVReadRequest(
      {required final Uri base,
      required final R4ResourceType type,
      required final String id,
      required final FhirId vid,
      final bool? pretty,
      final Summary summary,
      final String? format,
      final List<String> elements,
      final List<String> parameters,
      final SupportedMimeType? mimeType,
      final String accept,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final Client? client,
      final Map<String, String>? headers}) = _$FhirVReadRequestImpl;
  FhirVReadRequest._() : super._();

  factory FhirVReadRequest.fromJson(Map<String, dynamic> json) =
      _$FhirVReadRequestImpl.fromJson;

  @override

  /// [base] - the base URI for the FHIR server
  Uri get base;

  /// [type] - the type of resource you're looking for
  R4ResourceType get type;

  /// [id] - the id for the resource
  String get id;
  FhirId get vid;
  @override

  /// [pretty] - pretty print the json formatting in the response
  bool? get pretty;
  @override

  /// [summary] - do you want the result to be a summary
  Summary get summary;
  @override

  /// [format] - Possible formats are: json, json+fhir or fhir+json
  /// (would not request XML as this library doesn't work with XML)
  String? get format;
  @override

  /// [elements] - elements you need to pass in
  List<String> get elements;
  @override

  /// [parameters] - any extra parameters
  List<String> get parameters;
  @override

  /// [mimeType] - specify the MimeType in the Header - this should be fhir+json
  ///   but there are some older systems that won't accept that
  SupportedMimeType? get mimeType;
  @override

  /// [accept] - this will default to fhir+json just so it will stop sending
  /// me XML - I hate XML
  String get accept;
  @override

  /// [client] - if there's a specific client that you're going to be using
// ignore: invalid_annotation_target
  @JsonKey(includeFromJson: false, includeToJson: false)
  Client? get client;
  @override

  /// [headers] - because there are some times it's easier to incldue the
  /// headers in the object instead of only passing it in with the
  /// request
  Map<String, String>? get headers;
  @override
  @JsonKey(ignore: true)
  _$$FhirVReadRequestImplCopyWith<_$FhirVReadRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FhirUpdateRequestImplCopyWith<$Res>
    implements $FhirRequestCopyWith<$Res> {
  factory _$$FhirUpdateRequestImplCopyWith(_$FhirUpdateRequestImpl value,
          $Res Function(_$FhirUpdateRequestImpl) then) =
      __$$FhirUpdateRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Uri base,
      Resource resource,
      bool? pretty,
      Summary summary,
      String? format,
      List<String> elements,
      List<String> parameters,
      SupportedMimeType? mimeType,
      String accept,
      @JsonKey(includeFromJson: false, includeToJson: false) Client? client,
      Map<String, String>? headers});
}

/// @nodoc
class __$$FhirUpdateRequestImplCopyWithImpl<$Res>
    extends _$FhirRequestCopyWithImpl<$Res, _$FhirUpdateRequestImpl>
    implements _$$FhirUpdateRequestImplCopyWith<$Res> {
  __$$FhirUpdateRequestImplCopyWithImpl(_$FhirUpdateRequestImpl _value,
      $Res Function(_$FhirUpdateRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? base = null,
    Object? resource = null,
    Object? pretty = freezed,
    Object? summary = null,
    Object? format = freezed,
    Object? elements = null,
    Object? parameters = null,
    Object? mimeType = freezed,
    Object? accept = null,
    Object? client = freezed,
    Object? headers = freezed,
  }) {
    return _then(_$FhirUpdateRequestImpl(
      base: null == base
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as Uri,
      resource: null == resource
          ? _value.resource
          : resource // ignore: cast_nullable_to_non_nullable
              as Resource,
      pretty: freezed == pretty
          ? _value.pretty
          : pretty // ignore: cast_nullable_to_non_nullable
              as bool?,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as Summary,
      format: freezed == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String?,
      elements: null == elements
          ? _value._elements
          : elements // ignore: cast_nullable_to_non_nullable
              as List<String>,
      parameters: null == parameters
          ? _value._parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as List<String>,
      mimeType: freezed == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as SupportedMimeType?,
      accept: null == accept
          ? _value.accept
          : accept // ignore: cast_nullable_to_non_nullable
              as String,
      client: freezed == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as Client?,
      headers: freezed == headers
          ? _value._headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FhirUpdateRequestImpl extends FhirUpdateRequest {
  _$FhirUpdateRequestImpl(
      {required this.base,
      required this.resource,
      this.pretty,
      this.summary = Summary.none,
      this.format = 'json',
      final List<String> elements = const <String>[],
      final List<String> parameters = const <String>[],
      this.mimeType,
      this.accept = 'application/fhir+json',
      @JsonKey(includeFromJson: false, includeToJson: false) this.client,
      final Map<String, String>? headers,
      final String? $type})
      : _elements = elements,
        _parameters = parameters,
        _headers = headers,
        $type = $type ?? 'update',
        super._();

  factory _$FhirUpdateRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$FhirUpdateRequestImplFromJson(json);

  /// [base] - the base URI for the FHIR server
  @override
  final Uri base;
  @override
  final Resource resource;

  /// [pretty] - pretty print the json formatting in the response
  @override
  final bool? pretty;

  /// [summary] - do you want the result to be a summary
  @override
  @JsonKey()
  final Summary summary;

  /// [format] - Possible formats are: json, json+fhir or fhir+json
  /// (would not request XML as this library doesn't work with XML)
  @override
  @JsonKey()
  final String? format;

  /// [elements] - elements you need to pass in
  final List<String> _elements;

  /// [elements] - elements you need to pass in
  @override
  @JsonKey()
  List<String> get elements {
    if (_elements is EqualUnmodifiableListView) return _elements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_elements);
  }

  /// [parameters] - any extra parameters
  final List<String> _parameters;

  /// [parameters] - any extra parameters
  @override
  @JsonKey()
  List<String> get parameters {
    if (_parameters is EqualUnmodifiableListView) return _parameters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_parameters);
  }

  /// [mimeType] - specify the MimeType in the Header - this should be fhir+json
  ///   but there are some older systems that won't accept that
  @override
  final SupportedMimeType? mimeType;

  /// [accept] - this will default to fhir+json just so it will stop sending
  /// me XML - I hate XML
  @override
  @JsonKey()
  final String accept;

  /// [client] - if there's a specific client that you're going to be using
// ignore: invalid_annotation_target
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final Client? client;

  /// [headers] - because there are some times it's easier to incldue the
  /// headers in the object instead of only passing it in with the
  /// request
  final Map<String, String>? _headers;

  /// [headers] - because there are some times it's easier to incldue the
  /// headers in the object instead of only passing it in with the
  /// request
  @override
  Map<String, String>? get headers {
    final value = _headers;
    if (value == null) return null;
    if (_headers is EqualUnmodifiableMapView) return _headers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FhirRequest.update(base: $base, resource: $resource, pretty: $pretty, summary: $summary, format: $format, elements: $elements, parameters: $parameters, mimeType: $mimeType, accept: $accept, client: $client, headers: $headers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FhirUpdateRequestImpl &&
            (identical(other.base, base) || other.base == base) &&
            (identical(other.resource, resource) ||
                other.resource == resource) &&
            (identical(other.pretty, pretty) || other.pretty == pretty) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.format, format) || other.format == format) &&
            const DeepCollectionEquality().equals(other._elements, _elements) &&
            const DeepCollectionEquality()
                .equals(other._parameters, _parameters) &&
            (identical(other.mimeType, mimeType) ||
                other.mimeType == mimeType) &&
            (identical(other.accept, accept) || other.accept == accept) &&
            (identical(other.client, client) || other.client == client) &&
            const DeepCollectionEquality().equals(other._headers, _headers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      base,
      resource,
      pretty,
      summary,
      format,
      const DeepCollectionEquality().hash(_elements),
      const DeepCollectionEquality().hash(_parameters),
      mimeType,
      accept,
      client,
      const DeepCollectionEquality().hash(_headers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FhirUpdateRequestImplCopyWith<_$FhirUpdateRequestImpl> get copyWith =>
      __$$FhirUpdateRequestImplCopyWithImpl<_$FhirUpdateRequestImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        read,
    required TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            FhirId vid,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        vRead,
    required TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        update,
    required TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        patch,
    required TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        delete,
    required TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        create,
    required TResult Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            bool usePost,
            RestfulRequest restfulRequest,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        search,
    required TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        searchAll,
    required TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Mode mode,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        capabilities,
    required TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        transaction,
    required TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        batch,
    required TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        history,
    required TResult Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        historyType,
    required TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        historyAll,
    required TResult Function(
            Uri base,
            R4ResourceType? type,
            String? id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Parameters? fhirParameter,
            String operation,
            bool usePost,
            bool useFormData,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        operation,
  }) {
    return update(base, resource, pretty, summary, format, elements, parameters,
        mimeType, accept, client, headers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        read,
    TResult? Function(
            Uri base,
            R4ResourceType type,
            String id,
            FhirId vid,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        vRead,
    TResult? Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        update,
    TResult? Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        patch,
    TResult? Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        delete,
    TResult? Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        create,
    TResult? Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            bool usePost,
            RestfulRequest restfulRequest,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        search,
    TResult? Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        searchAll,
    TResult? Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Mode mode,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        capabilities,
    TResult? Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        transaction,
    TResult? Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        batch,
    TResult? Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        history,
    TResult? Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        historyType,
    TResult? Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        historyAll,
    TResult? Function(
            Uri base,
            R4ResourceType? type,
            String? id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Parameters? fhirParameter,
            String operation,
            bool usePost,
            bool useFormData,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        operation,
  }) {
    return update?.call(base, resource, pretty, summary, format, elements,
        parameters, mimeType, accept, client, headers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        read,
    TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            FhirId vid,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        vRead,
    TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        update,
    TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        patch,
    TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        delete,
    TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        create,
    TResult Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            bool usePost,
            RestfulRequest restfulRequest,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        search,
    TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        searchAll,
    TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Mode mode,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        capabilities,
    TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        transaction,
    TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        batch,
    TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        history,
    TResult Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        historyType,
    TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        historyAll,
    TResult Function(
            Uri base,
            R4ResourceType? type,
            String? id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Parameters? fhirParameter,
            String operation,
            bool usePost,
            bool useFormData,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        operation,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(base, resource, pretty, summary, format, elements,
          parameters, mimeType, accept, client, headers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FhirReadRequest value) read,
    required TResult Function(FhirVReadRequest value) vRead,
    required TResult Function(FhirUpdateRequest value) update,
    required TResult Function(FhirPatchRequest value) patch,
    required TResult Function(FhirDeleteRequest value) delete,
    required TResult Function(FhirCreateRequest value) create,
    required TResult Function(FhirSearchRequest value) search,
    required TResult Function(FhirSearchAllRequest value) searchAll,
    required TResult Function(FhirCapabilitiesRequest value) capabilities,
    required TResult Function(FhirTransactionRequest value) transaction,
    required TResult Function(FhirBatchRequest value) batch,
    required TResult Function(FhirHistoryRequest value) history,
    required TResult Function(FhirHistoryTypeRequest value) historyType,
    required TResult Function(FhirHistoryAllRequest value) historyAll,
    required TResult Function(FhirOperationRequest value) operation,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FhirReadRequest value)? read,
    TResult? Function(FhirVReadRequest value)? vRead,
    TResult? Function(FhirUpdateRequest value)? update,
    TResult? Function(FhirPatchRequest value)? patch,
    TResult? Function(FhirDeleteRequest value)? delete,
    TResult? Function(FhirCreateRequest value)? create,
    TResult? Function(FhirSearchRequest value)? search,
    TResult? Function(FhirSearchAllRequest value)? searchAll,
    TResult? Function(FhirCapabilitiesRequest value)? capabilities,
    TResult? Function(FhirTransactionRequest value)? transaction,
    TResult? Function(FhirBatchRequest value)? batch,
    TResult? Function(FhirHistoryRequest value)? history,
    TResult? Function(FhirHistoryTypeRequest value)? historyType,
    TResult? Function(FhirHistoryAllRequest value)? historyAll,
    TResult? Function(FhirOperationRequest value)? operation,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FhirReadRequest value)? read,
    TResult Function(FhirVReadRequest value)? vRead,
    TResult Function(FhirUpdateRequest value)? update,
    TResult Function(FhirPatchRequest value)? patch,
    TResult Function(FhirDeleteRequest value)? delete,
    TResult Function(FhirCreateRequest value)? create,
    TResult Function(FhirSearchRequest value)? search,
    TResult Function(FhirSearchAllRequest value)? searchAll,
    TResult Function(FhirCapabilitiesRequest value)? capabilities,
    TResult Function(FhirTransactionRequest value)? transaction,
    TResult Function(FhirBatchRequest value)? batch,
    TResult Function(FhirHistoryRequest value)? history,
    TResult Function(FhirHistoryTypeRequest value)? historyType,
    TResult Function(FhirHistoryAllRequest value)? historyAll,
    TResult Function(FhirOperationRequest value)? operation,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FhirUpdateRequestImplToJson(
      this,
    );
  }
}

abstract class FhirUpdateRequest extends FhirRequest {
  factory FhirUpdateRequest(
      {required final Uri base,
      required final Resource resource,
      final bool? pretty,
      final Summary summary,
      final String? format,
      final List<String> elements,
      final List<String> parameters,
      final SupportedMimeType? mimeType,
      final String accept,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final Client? client,
      final Map<String, String>? headers}) = _$FhirUpdateRequestImpl;
  FhirUpdateRequest._() : super._();

  factory FhirUpdateRequest.fromJson(Map<String, dynamic> json) =
      _$FhirUpdateRequestImpl.fromJson;

  @override

  /// [base] - the base URI for the FHIR server
  Uri get base;
  Resource get resource;
  @override

  /// [pretty] - pretty print the json formatting in the response
  bool? get pretty;
  @override

  /// [summary] - do you want the result to be a summary
  Summary get summary;
  @override

  /// [format] - Possible formats are: json, json+fhir or fhir+json
  /// (would not request XML as this library doesn't work with XML)
  String? get format;
  @override

  /// [elements] - elements you need to pass in
  List<String> get elements;
  @override

  /// [parameters] - any extra parameters
  List<String> get parameters;
  @override

  /// [mimeType] - specify the MimeType in the Header - this should be fhir+json
  ///   but there are some older systems that won't accept that
  SupportedMimeType? get mimeType;
  @override

  /// [accept] - this will default to fhir+json just so it will stop sending
  /// me XML - I hate XML
  String get accept;
  @override

  /// [client] - if there's a specific client that you're going to be using
// ignore: invalid_annotation_target
  @JsonKey(includeFromJson: false, includeToJson: false)
  Client? get client;
  @override

  /// [headers] - because there are some times it's easier to incldue the
  /// headers in the object instead of only passing it in with the
  /// request
  Map<String, String>? get headers;
  @override
  @JsonKey(ignore: true)
  _$$FhirUpdateRequestImplCopyWith<_$FhirUpdateRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FhirPatchRequestImplCopyWith<$Res>
    implements $FhirRequestCopyWith<$Res> {
  factory _$$FhirPatchRequestImplCopyWith(_$FhirPatchRequestImpl value,
          $Res Function(_$FhirPatchRequestImpl) then) =
      __$$FhirPatchRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Uri base,
      Resource resource,
      bool? pretty,
      Summary summary,
      String? format,
      List<String> elements,
      List<String> parameters,
      SupportedMimeType? mimeType,
      String accept,
      @JsonKey(includeFromJson: false, includeToJson: false) Client? client,
      Map<String, String>? headers});
}

/// @nodoc
class __$$FhirPatchRequestImplCopyWithImpl<$Res>
    extends _$FhirRequestCopyWithImpl<$Res, _$FhirPatchRequestImpl>
    implements _$$FhirPatchRequestImplCopyWith<$Res> {
  __$$FhirPatchRequestImplCopyWithImpl(_$FhirPatchRequestImpl _value,
      $Res Function(_$FhirPatchRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? base = null,
    Object? resource = null,
    Object? pretty = freezed,
    Object? summary = null,
    Object? format = freezed,
    Object? elements = null,
    Object? parameters = null,
    Object? mimeType = freezed,
    Object? accept = null,
    Object? client = freezed,
    Object? headers = freezed,
  }) {
    return _then(_$FhirPatchRequestImpl(
      base: null == base
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as Uri,
      resource: null == resource
          ? _value.resource
          : resource // ignore: cast_nullable_to_non_nullable
              as Resource,
      pretty: freezed == pretty
          ? _value.pretty
          : pretty // ignore: cast_nullable_to_non_nullable
              as bool?,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as Summary,
      format: freezed == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String?,
      elements: null == elements
          ? _value._elements
          : elements // ignore: cast_nullable_to_non_nullable
              as List<String>,
      parameters: null == parameters
          ? _value._parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as List<String>,
      mimeType: freezed == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as SupportedMimeType?,
      accept: null == accept
          ? _value.accept
          : accept // ignore: cast_nullable_to_non_nullable
              as String,
      client: freezed == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as Client?,
      headers: freezed == headers
          ? _value._headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FhirPatchRequestImpl extends FhirPatchRequest {
  _$FhirPatchRequestImpl(
      {required this.base,
      required this.resource,
      this.pretty,
      this.summary = Summary.none,
      this.format = 'json',
      final List<String> elements = const <String>[],
      final List<String> parameters = const <String>[],
      this.mimeType,
      this.accept = 'application/fhir+json',
      @JsonKey(includeFromJson: false, includeToJson: false) this.client,
      final Map<String, String>? headers,
      final String? $type})
      : _elements = elements,
        _parameters = parameters,
        _headers = headers,
        $type = $type ?? 'patch',
        super._();

  factory _$FhirPatchRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$FhirPatchRequestImplFromJson(json);

  /// [base] - the base URI for the FHIR server
  @override
  final Uri base;
  @override
  final Resource resource;

  /// [pretty] - pretty print the json formatting in the response
  @override
  final bool? pretty;

  /// [summary] - do you want the result to be a summary
  @override
  @JsonKey()
  final Summary summary;

  /// [format] - Possible formats are: json, json+fhir or fhir+json
  /// (would not request XML as this library doesn't work with XML)
  @override
  @JsonKey()
  final String? format;

  /// [elements] - elements you need to pass in
  final List<String> _elements;

  /// [elements] - elements you need to pass in
  @override
  @JsonKey()
  List<String> get elements {
    if (_elements is EqualUnmodifiableListView) return _elements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_elements);
  }

  /// [parameters] - any extra parameters
  final List<String> _parameters;

  /// [parameters] - any extra parameters
  @override
  @JsonKey()
  List<String> get parameters {
    if (_parameters is EqualUnmodifiableListView) return _parameters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_parameters);
  }

  /// [mimeType] - specify the MimeType in the Header - this should be fhir+json
  ///   but there are some older systems that won't accept that
  @override
  final SupportedMimeType? mimeType;

  /// [accept] - this will default to fhir+json just so it will stop sending
  /// me XML - I hate XML
  @override
  @JsonKey()
  final String accept;

  /// [client] - if there's a specific client that you're going to be using
// ignore: invalid_annotation_target
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final Client? client;

  /// [headers] - because there are some times it's easier to incldue the
  /// headers in the object instead of only passing it in with the
  /// request
  final Map<String, String>? _headers;

  /// [headers] - because there are some times it's easier to incldue the
  /// headers in the object instead of only passing it in with the
  /// request
  @override
  Map<String, String>? get headers {
    final value = _headers;
    if (value == null) return null;
    if (_headers is EqualUnmodifiableMapView) return _headers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FhirRequest.patch(base: $base, resource: $resource, pretty: $pretty, summary: $summary, format: $format, elements: $elements, parameters: $parameters, mimeType: $mimeType, accept: $accept, client: $client, headers: $headers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FhirPatchRequestImpl &&
            (identical(other.base, base) || other.base == base) &&
            (identical(other.resource, resource) ||
                other.resource == resource) &&
            (identical(other.pretty, pretty) || other.pretty == pretty) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.format, format) || other.format == format) &&
            const DeepCollectionEquality().equals(other._elements, _elements) &&
            const DeepCollectionEquality()
                .equals(other._parameters, _parameters) &&
            (identical(other.mimeType, mimeType) ||
                other.mimeType == mimeType) &&
            (identical(other.accept, accept) || other.accept == accept) &&
            (identical(other.client, client) || other.client == client) &&
            const DeepCollectionEquality().equals(other._headers, _headers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      base,
      resource,
      pretty,
      summary,
      format,
      const DeepCollectionEquality().hash(_elements),
      const DeepCollectionEquality().hash(_parameters),
      mimeType,
      accept,
      client,
      const DeepCollectionEquality().hash(_headers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FhirPatchRequestImplCopyWith<_$FhirPatchRequestImpl> get copyWith =>
      __$$FhirPatchRequestImplCopyWithImpl<_$FhirPatchRequestImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        read,
    required TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            FhirId vid,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        vRead,
    required TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        update,
    required TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        patch,
    required TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        delete,
    required TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        create,
    required TResult Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            bool usePost,
            RestfulRequest restfulRequest,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        search,
    required TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        searchAll,
    required TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Mode mode,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        capabilities,
    required TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        transaction,
    required TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        batch,
    required TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        history,
    required TResult Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        historyType,
    required TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        historyAll,
    required TResult Function(
            Uri base,
            R4ResourceType? type,
            String? id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Parameters? fhirParameter,
            String operation,
            bool usePost,
            bool useFormData,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        operation,
  }) {
    return patch(base, resource, pretty, summary, format, elements, parameters,
        mimeType, accept, client, headers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        read,
    TResult? Function(
            Uri base,
            R4ResourceType type,
            String id,
            FhirId vid,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        vRead,
    TResult? Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        update,
    TResult? Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        patch,
    TResult? Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        delete,
    TResult? Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        create,
    TResult? Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            bool usePost,
            RestfulRequest restfulRequest,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        search,
    TResult? Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        searchAll,
    TResult? Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Mode mode,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        capabilities,
    TResult? Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        transaction,
    TResult? Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        batch,
    TResult? Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        history,
    TResult? Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        historyType,
    TResult? Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        historyAll,
    TResult? Function(
            Uri base,
            R4ResourceType? type,
            String? id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Parameters? fhirParameter,
            String operation,
            bool usePost,
            bool useFormData,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        operation,
  }) {
    return patch?.call(base, resource, pretty, summary, format, elements,
        parameters, mimeType, accept, client, headers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        read,
    TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            FhirId vid,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        vRead,
    TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        update,
    TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        patch,
    TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        delete,
    TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        create,
    TResult Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            bool usePost,
            RestfulRequest restfulRequest,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        search,
    TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        searchAll,
    TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Mode mode,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        capabilities,
    TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        transaction,
    TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        batch,
    TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        history,
    TResult Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        historyType,
    TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        historyAll,
    TResult Function(
            Uri base,
            R4ResourceType? type,
            String? id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Parameters? fhirParameter,
            String operation,
            bool usePost,
            bool useFormData,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        operation,
    required TResult orElse(),
  }) {
    if (patch != null) {
      return patch(base, resource, pretty, summary, format, elements,
          parameters, mimeType, accept, client, headers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FhirReadRequest value) read,
    required TResult Function(FhirVReadRequest value) vRead,
    required TResult Function(FhirUpdateRequest value) update,
    required TResult Function(FhirPatchRequest value) patch,
    required TResult Function(FhirDeleteRequest value) delete,
    required TResult Function(FhirCreateRequest value) create,
    required TResult Function(FhirSearchRequest value) search,
    required TResult Function(FhirSearchAllRequest value) searchAll,
    required TResult Function(FhirCapabilitiesRequest value) capabilities,
    required TResult Function(FhirTransactionRequest value) transaction,
    required TResult Function(FhirBatchRequest value) batch,
    required TResult Function(FhirHistoryRequest value) history,
    required TResult Function(FhirHistoryTypeRequest value) historyType,
    required TResult Function(FhirHistoryAllRequest value) historyAll,
    required TResult Function(FhirOperationRequest value) operation,
  }) {
    return patch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FhirReadRequest value)? read,
    TResult? Function(FhirVReadRequest value)? vRead,
    TResult? Function(FhirUpdateRequest value)? update,
    TResult? Function(FhirPatchRequest value)? patch,
    TResult? Function(FhirDeleteRequest value)? delete,
    TResult? Function(FhirCreateRequest value)? create,
    TResult? Function(FhirSearchRequest value)? search,
    TResult? Function(FhirSearchAllRequest value)? searchAll,
    TResult? Function(FhirCapabilitiesRequest value)? capabilities,
    TResult? Function(FhirTransactionRequest value)? transaction,
    TResult? Function(FhirBatchRequest value)? batch,
    TResult? Function(FhirHistoryRequest value)? history,
    TResult? Function(FhirHistoryTypeRequest value)? historyType,
    TResult? Function(FhirHistoryAllRequest value)? historyAll,
    TResult? Function(FhirOperationRequest value)? operation,
  }) {
    return patch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FhirReadRequest value)? read,
    TResult Function(FhirVReadRequest value)? vRead,
    TResult Function(FhirUpdateRequest value)? update,
    TResult Function(FhirPatchRequest value)? patch,
    TResult Function(FhirDeleteRequest value)? delete,
    TResult Function(FhirCreateRequest value)? create,
    TResult Function(FhirSearchRequest value)? search,
    TResult Function(FhirSearchAllRequest value)? searchAll,
    TResult Function(FhirCapabilitiesRequest value)? capabilities,
    TResult Function(FhirTransactionRequest value)? transaction,
    TResult Function(FhirBatchRequest value)? batch,
    TResult Function(FhirHistoryRequest value)? history,
    TResult Function(FhirHistoryTypeRequest value)? historyType,
    TResult Function(FhirHistoryAllRequest value)? historyAll,
    TResult Function(FhirOperationRequest value)? operation,
    required TResult orElse(),
  }) {
    if (patch != null) {
      return patch(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FhirPatchRequestImplToJson(
      this,
    );
  }
}

abstract class FhirPatchRequest extends FhirRequest {
  factory FhirPatchRequest(
      {required final Uri base,
      required final Resource resource,
      final bool? pretty,
      final Summary summary,
      final String? format,
      final List<String> elements,
      final List<String> parameters,
      final SupportedMimeType? mimeType,
      final String accept,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final Client? client,
      final Map<String, String>? headers}) = _$FhirPatchRequestImpl;
  FhirPatchRequest._() : super._();

  factory FhirPatchRequest.fromJson(Map<String, dynamic> json) =
      _$FhirPatchRequestImpl.fromJson;

  @override

  /// [base] - the base URI for the FHIR server
  Uri get base;
  Resource get resource;
  @override

  /// [pretty] - pretty print the json formatting in the response
  bool? get pretty;
  @override

  /// [summary] - do you want the result to be a summary
  Summary get summary;
  @override

  /// [format] - Possible formats are: json, json+fhir or fhir+json
  /// (would not request XML as this library doesn't work with XML)
  String? get format;
  @override

  /// [elements] - elements you need to pass in
  List<String> get elements;
  @override

  /// [parameters] - any extra parameters
  List<String> get parameters;
  @override

  /// [mimeType] - specify the MimeType in the Header - this should be fhir+json
  ///   but there are some older systems that won't accept that
  SupportedMimeType? get mimeType;
  @override

  /// [accept] - this will default to fhir+json just so it will stop sending
  /// me XML - I hate XML
  String get accept;
  @override

  /// [client] - if there's a specific client that you're going to be using
// ignore: invalid_annotation_target
  @JsonKey(includeFromJson: false, includeToJson: false)
  Client? get client;
  @override

  /// [headers] - because there are some times it's easier to incldue the
  /// headers in the object instead of only passing it in with the
  /// request
  Map<String, String>? get headers;
  @override
  @JsonKey(ignore: true)
  _$$FhirPatchRequestImplCopyWith<_$FhirPatchRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FhirDeleteRequestImplCopyWith<$Res>
    implements $FhirRequestCopyWith<$Res> {
  factory _$$FhirDeleteRequestImplCopyWith(_$FhirDeleteRequestImpl value,
          $Res Function(_$FhirDeleteRequestImpl) then) =
      __$$FhirDeleteRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Uri base,
      R4ResourceType type,
      String id,
      bool? pretty,
      Summary summary,
      String? format,
      List<String> elements,
      List<String> parameters,
      SupportedMimeType? mimeType,
      String accept,
      @JsonKey(includeFromJson: false, includeToJson: false) Client? client,
      Map<String, String>? headers});
}

/// @nodoc
class __$$FhirDeleteRequestImplCopyWithImpl<$Res>
    extends _$FhirRequestCopyWithImpl<$Res, _$FhirDeleteRequestImpl>
    implements _$$FhirDeleteRequestImplCopyWith<$Res> {
  __$$FhirDeleteRequestImplCopyWithImpl(_$FhirDeleteRequestImpl _value,
      $Res Function(_$FhirDeleteRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? base = null,
    Object? type = null,
    Object? id = null,
    Object? pretty = freezed,
    Object? summary = null,
    Object? format = freezed,
    Object? elements = null,
    Object? parameters = null,
    Object? mimeType = freezed,
    Object? accept = null,
    Object? client = freezed,
    Object? headers = freezed,
  }) {
    return _then(_$FhirDeleteRequestImpl(
      base: null == base
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as Uri,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as R4ResourceType,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      pretty: freezed == pretty
          ? _value.pretty
          : pretty // ignore: cast_nullable_to_non_nullable
              as bool?,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as Summary,
      format: freezed == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String?,
      elements: null == elements
          ? _value._elements
          : elements // ignore: cast_nullable_to_non_nullable
              as List<String>,
      parameters: null == parameters
          ? _value._parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as List<String>,
      mimeType: freezed == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as SupportedMimeType?,
      accept: null == accept
          ? _value.accept
          : accept // ignore: cast_nullable_to_non_nullable
              as String,
      client: freezed == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as Client?,
      headers: freezed == headers
          ? _value._headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FhirDeleteRequestImpl extends FhirDeleteRequest {
  _$FhirDeleteRequestImpl(
      {required this.base,
      required this.type,
      required this.id,
      this.pretty,
      this.summary = Summary.none,
      this.format = 'json',
      final List<String> elements = const <String>[],
      final List<String> parameters = const <String>[],
      this.mimeType,
      this.accept = 'application/fhir+json',
      @JsonKey(includeFromJson: false, includeToJson: false) this.client,
      final Map<String, String>? headers,
      final String? $type})
      : _elements = elements,
        _parameters = parameters,
        _headers = headers,
        $type = $type ?? 'delete',
        super._();

  factory _$FhirDeleteRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$FhirDeleteRequestImplFromJson(json);

  /// [base] - the base URI for the FHIR server
  @override
  final Uri base;

  /// [type] - the type of resource you're looking for
  @override
  final R4ResourceType type;

  /// [id] - the id for the resource
  @override
  final String id;

  /// [pretty] - pretty print the json formatting in the response
  @override
  final bool? pretty;

  /// [summary] - do you want the result to be a summary
  @override
  @JsonKey()
  final Summary summary;

  /// [format] - Possible formats are: json, json+fhir or fhir+json
  /// (would not request XML as this library doesn't work with XML)
  @override
  @JsonKey()
  final String? format;

  /// [elements] - elements you need to pass in
  final List<String> _elements;

  /// [elements] - elements you need to pass in
  @override
  @JsonKey()
  List<String> get elements {
    if (_elements is EqualUnmodifiableListView) return _elements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_elements);
  }

  /// [parameters] - any extra parameters
  final List<String> _parameters;

  /// [parameters] - any extra parameters
  @override
  @JsonKey()
  List<String> get parameters {
    if (_parameters is EqualUnmodifiableListView) return _parameters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_parameters);
  }

  /// [mimeType] - specify the MimeType in the Header - this should be fhir+json
  ///   but there are some older systems that won't accept that
  @override
  final SupportedMimeType? mimeType;

  /// [accept] - this will default to fhir+json just so it will stop sending
  /// me XML - I hate XML
  @override
  @JsonKey()
  final String accept;

  /// [client] - if there's a specific client that you're going to be using
// ignore: invalid_annotation_target
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final Client? client;

  /// [headers] - because there are some times it's easier to incldue the
  /// headers in the object instead of only passing it in with the
  /// request
  final Map<String, String>? _headers;

  /// [headers] - because there are some times it's easier to incldue the
  /// headers in the object instead of only passing it in with the
  /// request
  @override
  Map<String, String>? get headers {
    final value = _headers;
    if (value == null) return null;
    if (_headers is EqualUnmodifiableMapView) return _headers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FhirRequest.delete(base: $base, type: $type, id: $id, pretty: $pretty, summary: $summary, format: $format, elements: $elements, parameters: $parameters, mimeType: $mimeType, accept: $accept, client: $client, headers: $headers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FhirDeleteRequestImpl &&
            (identical(other.base, base) || other.base == base) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.pretty, pretty) || other.pretty == pretty) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.format, format) || other.format == format) &&
            const DeepCollectionEquality().equals(other._elements, _elements) &&
            const DeepCollectionEquality()
                .equals(other._parameters, _parameters) &&
            (identical(other.mimeType, mimeType) ||
                other.mimeType == mimeType) &&
            (identical(other.accept, accept) || other.accept == accept) &&
            (identical(other.client, client) || other.client == client) &&
            const DeepCollectionEquality().equals(other._headers, _headers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      base,
      type,
      id,
      pretty,
      summary,
      format,
      const DeepCollectionEquality().hash(_elements),
      const DeepCollectionEquality().hash(_parameters),
      mimeType,
      accept,
      client,
      const DeepCollectionEquality().hash(_headers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FhirDeleteRequestImplCopyWith<_$FhirDeleteRequestImpl> get copyWith =>
      __$$FhirDeleteRequestImplCopyWithImpl<_$FhirDeleteRequestImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        read,
    required TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            FhirId vid,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        vRead,
    required TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        update,
    required TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        patch,
    required TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        delete,
    required TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        create,
    required TResult Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            bool usePost,
            RestfulRequest restfulRequest,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        search,
    required TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        searchAll,
    required TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Mode mode,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        capabilities,
    required TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        transaction,
    required TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        batch,
    required TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        history,
    required TResult Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        historyType,
    required TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        historyAll,
    required TResult Function(
            Uri base,
            R4ResourceType? type,
            String? id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Parameters? fhirParameter,
            String operation,
            bool usePost,
            bool useFormData,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        operation,
  }) {
    return delete(base, type, id, pretty, summary, format, elements, parameters,
        mimeType, accept, client, headers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        read,
    TResult? Function(
            Uri base,
            R4ResourceType type,
            String id,
            FhirId vid,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        vRead,
    TResult? Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        update,
    TResult? Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        patch,
    TResult? Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        delete,
    TResult? Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        create,
    TResult? Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            bool usePost,
            RestfulRequest restfulRequest,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        search,
    TResult? Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        searchAll,
    TResult? Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Mode mode,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        capabilities,
    TResult? Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        transaction,
    TResult? Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        batch,
    TResult? Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        history,
    TResult? Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        historyType,
    TResult? Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        historyAll,
    TResult? Function(
            Uri base,
            R4ResourceType? type,
            String? id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Parameters? fhirParameter,
            String operation,
            bool usePost,
            bool useFormData,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        operation,
  }) {
    return delete?.call(base, type, id, pretty, summary, format, elements,
        parameters, mimeType, accept, client, headers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        read,
    TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            FhirId vid,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        vRead,
    TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        update,
    TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        patch,
    TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        delete,
    TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        create,
    TResult Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            bool usePost,
            RestfulRequest restfulRequest,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        search,
    TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        searchAll,
    TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Mode mode,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        capabilities,
    TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        transaction,
    TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        batch,
    TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        history,
    TResult Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        historyType,
    TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        historyAll,
    TResult Function(
            Uri base,
            R4ResourceType? type,
            String? id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Parameters? fhirParameter,
            String operation,
            bool usePost,
            bool useFormData,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        operation,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(base, type, id, pretty, summary, format, elements,
          parameters, mimeType, accept, client, headers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FhirReadRequest value) read,
    required TResult Function(FhirVReadRequest value) vRead,
    required TResult Function(FhirUpdateRequest value) update,
    required TResult Function(FhirPatchRequest value) patch,
    required TResult Function(FhirDeleteRequest value) delete,
    required TResult Function(FhirCreateRequest value) create,
    required TResult Function(FhirSearchRequest value) search,
    required TResult Function(FhirSearchAllRequest value) searchAll,
    required TResult Function(FhirCapabilitiesRequest value) capabilities,
    required TResult Function(FhirTransactionRequest value) transaction,
    required TResult Function(FhirBatchRequest value) batch,
    required TResult Function(FhirHistoryRequest value) history,
    required TResult Function(FhirHistoryTypeRequest value) historyType,
    required TResult Function(FhirHistoryAllRequest value) historyAll,
    required TResult Function(FhirOperationRequest value) operation,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FhirReadRequest value)? read,
    TResult? Function(FhirVReadRequest value)? vRead,
    TResult? Function(FhirUpdateRequest value)? update,
    TResult? Function(FhirPatchRequest value)? patch,
    TResult? Function(FhirDeleteRequest value)? delete,
    TResult? Function(FhirCreateRequest value)? create,
    TResult? Function(FhirSearchRequest value)? search,
    TResult? Function(FhirSearchAllRequest value)? searchAll,
    TResult? Function(FhirCapabilitiesRequest value)? capabilities,
    TResult? Function(FhirTransactionRequest value)? transaction,
    TResult? Function(FhirBatchRequest value)? batch,
    TResult? Function(FhirHistoryRequest value)? history,
    TResult? Function(FhirHistoryTypeRequest value)? historyType,
    TResult? Function(FhirHistoryAllRequest value)? historyAll,
    TResult? Function(FhirOperationRequest value)? operation,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FhirReadRequest value)? read,
    TResult Function(FhirVReadRequest value)? vRead,
    TResult Function(FhirUpdateRequest value)? update,
    TResult Function(FhirPatchRequest value)? patch,
    TResult Function(FhirDeleteRequest value)? delete,
    TResult Function(FhirCreateRequest value)? create,
    TResult Function(FhirSearchRequest value)? search,
    TResult Function(FhirSearchAllRequest value)? searchAll,
    TResult Function(FhirCapabilitiesRequest value)? capabilities,
    TResult Function(FhirTransactionRequest value)? transaction,
    TResult Function(FhirBatchRequest value)? batch,
    TResult Function(FhirHistoryRequest value)? history,
    TResult Function(FhirHistoryTypeRequest value)? historyType,
    TResult Function(FhirHistoryAllRequest value)? historyAll,
    TResult Function(FhirOperationRequest value)? operation,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FhirDeleteRequestImplToJson(
      this,
    );
  }
}

abstract class FhirDeleteRequest extends FhirRequest {
  factory FhirDeleteRequest(
      {required final Uri base,
      required final R4ResourceType type,
      required final String id,
      final bool? pretty,
      final Summary summary,
      final String? format,
      final List<String> elements,
      final List<String> parameters,
      final SupportedMimeType? mimeType,
      final String accept,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final Client? client,
      final Map<String, String>? headers}) = _$FhirDeleteRequestImpl;
  FhirDeleteRequest._() : super._();

  factory FhirDeleteRequest.fromJson(Map<String, dynamic> json) =
      _$FhirDeleteRequestImpl.fromJson;

  @override

  /// [base] - the base URI for the FHIR server
  Uri get base;

  /// [type] - the type of resource you're looking for
  R4ResourceType get type;

  /// [id] - the id for the resource
  String get id;
  @override

  /// [pretty] - pretty print the json formatting in the response
  bool? get pretty;
  @override

  /// [summary] - do you want the result to be a summary
  Summary get summary;
  @override

  /// [format] - Possible formats are: json, json+fhir or fhir+json
  /// (would not request XML as this library doesn't work with XML)
  String? get format;
  @override

  /// [elements] - elements you need to pass in
  List<String> get elements;
  @override

  /// [parameters] - any extra parameters
  List<String> get parameters;
  @override

  /// [mimeType] - specify the MimeType in the Header - this should be fhir+json
  ///   but there are some older systems that won't accept that
  SupportedMimeType? get mimeType;
  @override

  /// [accept] - this will default to fhir+json just so it will stop sending
  /// me XML - I hate XML
  String get accept;
  @override

  /// [client] - if there's a specific client that you're going to be using
// ignore: invalid_annotation_target
  @JsonKey(includeFromJson: false, includeToJson: false)
  Client? get client;
  @override

  /// [headers] - because there are some times it's easier to incldue the
  /// headers in the object instead of only passing it in with the
  /// request
  Map<String, String>? get headers;
  @override
  @JsonKey(ignore: true)
  _$$FhirDeleteRequestImplCopyWith<_$FhirDeleteRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FhirCreateRequestImplCopyWith<$Res>
    implements $FhirRequestCopyWith<$Res> {
  factory _$$FhirCreateRequestImplCopyWith(_$FhirCreateRequestImpl value,
          $Res Function(_$FhirCreateRequestImpl) then) =
      __$$FhirCreateRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Uri base,
      Resource resource,
      bool? pretty,
      Summary summary,
      String? format,
      List<String> elements,
      List<String> parameters,
      SupportedMimeType? mimeType,
      String accept,
      @JsonKey(includeFromJson: false, includeToJson: false) Client? client,
      Map<String, String>? headers});
}

/// @nodoc
class __$$FhirCreateRequestImplCopyWithImpl<$Res>
    extends _$FhirRequestCopyWithImpl<$Res, _$FhirCreateRequestImpl>
    implements _$$FhirCreateRequestImplCopyWith<$Res> {
  __$$FhirCreateRequestImplCopyWithImpl(_$FhirCreateRequestImpl _value,
      $Res Function(_$FhirCreateRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? base = null,
    Object? resource = null,
    Object? pretty = freezed,
    Object? summary = null,
    Object? format = freezed,
    Object? elements = null,
    Object? parameters = null,
    Object? mimeType = freezed,
    Object? accept = null,
    Object? client = freezed,
    Object? headers = freezed,
  }) {
    return _then(_$FhirCreateRequestImpl(
      base: null == base
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as Uri,
      resource: null == resource
          ? _value.resource
          : resource // ignore: cast_nullable_to_non_nullable
              as Resource,
      pretty: freezed == pretty
          ? _value.pretty
          : pretty // ignore: cast_nullable_to_non_nullable
              as bool?,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as Summary,
      format: freezed == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String?,
      elements: null == elements
          ? _value._elements
          : elements // ignore: cast_nullable_to_non_nullable
              as List<String>,
      parameters: null == parameters
          ? _value._parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as List<String>,
      mimeType: freezed == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as SupportedMimeType?,
      accept: null == accept
          ? _value.accept
          : accept // ignore: cast_nullable_to_non_nullable
              as String,
      client: freezed == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as Client?,
      headers: freezed == headers
          ? _value._headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FhirCreateRequestImpl extends FhirCreateRequest {
  _$FhirCreateRequestImpl(
      {required this.base,
      required this.resource,
      this.pretty,
      this.summary = Summary.none,
      this.format = 'json',
      final List<String> elements = const <String>[],
      final List<String> parameters = const <String>[],
      this.mimeType,
      this.accept = 'application/fhir+json',
      @JsonKey(includeFromJson: false, includeToJson: false) this.client,
      final Map<String, String>? headers,
      final String? $type})
      : _elements = elements,
        _parameters = parameters,
        _headers = headers,
        $type = $type ?? 'create',
        super._();

  factory _$FhirCreateRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$FhirCreateRequestImplFromJson(json);

  /// [base] - the base URI for the FHIR server
  @override
  final Uri base;
  @override
  final Resource resource;

  /// [pretty] - pretty print the json formatting in the response
  @override
  final bool? pretty;

  /// [summary] - do you want the result to be a summary
  @override
  @JsonKey()
  final Summary summary;

  /// [format] - Possible formats are: json, json+fhir or fhir+json
  /// (would not request XML as this library doesn't work with XML)
  @override
  @JsonKey()
  final String? format;

  /// [elements] - elements you need to pass in
  final List<String> _elements;

  /// [elements] - elements you need to pass in
  @override
  @JsonKey()
  List<String> get elements {
    if (_elements is EqualUnmodifiableListView) return _elements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_elements);
  }

  /// [parameters] - any extra parameters
  final List<String> _parameters;

  /// [parameters] - any extra parameters
  @override
  @JsonKey()
  List<String> get parameters {
    if (_parameters is EqualUnmodifiableListView) return _parameters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_parameters);
  }

  /// [mimeType] - specify the MimeType in the Header - this should be fhir+json
  ///   but there are some older systems that won't accept that
  @override
  final SupportedMimeType? mimeType;

  /// [accept] - this will default to fhir+json just so it will stop sending
  /// me XML - I hate XML
  @override
  @JsonKey()
  final String accept;

  /// [client] - if there's a specific client that you're going to be using
// ignore: invalid_annotation_target
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final Client? client;

  /// [headers] - because there are some times it's easier to incldue the
  /// headers in the object instead of only passing it in with the
  /// request
  final Map<String, String>? _headers;

  /// [headers] - because there are some times it's easier to incldue the
  /// headers in the object instead of only passing it in with the
  /// request
  @override
  Map<String, String>? get headers {
    final value = _headers;
    if (value == null) return null;
    if (_headers is EqualUnmodifiableMapView) return _headers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FhirRequest.create(base: $base, resource: $resource, pretty: $pretty, summary: $summary, format: $format, elements: $elements, parameters: $parameters, mimeType: $mimeType, accept: $accept, client: $client, headers: $headers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FhirCreateRequestImpl &&
            (identical(other.base, base) || other.base == base) &&
            (identical(other.resource, resource) ||
                other.resource == resource) &&
            (identical(other.pretty, pretty) || other.pretty == pretty) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.format, format) || other.format == format) &&
            const DeepCollectionEquality().equals(other._elements, _elements) &&
            const DeepCollectionEquality()
                .equals(other._parameters, _parameters) &&
            (identical(other.mimeType, mimeType) ||
                other.mimeType == mimeType) &&
            (identical(other.accept, accept) || other.accept == accept) &&
            (identical(other.client, client) || other.client == client) &&
            const DeepCollectionEquality().equals(other._headers, _headers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      base,
      resource,
      pretty,
      summary,
      format,
      const DeepCollectionEquality().hash(_elements),
      const DeepCollectionEquality().hash(_parameters),
      mimeType,
      accept,
      client,
      const DeepCollectionEquality().hash(_headers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FhirCreateRequestImplCopyWith<_$FhirCreateRequestImpl> get copyWith =>
      __$$FhirCreateRequestImplCopyWithImpl<_$FhirCreateRequestImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        read,
    required TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            FhirId vid,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        vRead,
    required TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        update,
    required TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        patch,
    required TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        delete,
    required TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        create,
    required TResult Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            bool usePost,
            RestfulRequest restfulRequest,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        search,
    required TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        searchAll,
    required TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Mode mode,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        capabilities,
    required TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        transaction,
    required TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        batch,
    required TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        history,
    required TResult Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        historyType,
    required TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        historyAll,
    required TResult Function(
            Uri base,
            R4ResourceType? type,
            String? id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Parameters? fhirParameter,
            String operation,
            bool usePost,
            bool useFormData,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        operation,
  }) {
    return create(base, resource, pretty, summary, format, elements, parameters,
        mimeType, accept, client, headers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        read,
    TResult? Function(
            Uri base,
            R4ResourceType type,
            String id,
            FhirId vid,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        vRead,
    TResult? Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        update,
    TResult? Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        patch,
    TResult? Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        delete,
    TResult? Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        create,
    TResult? Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            bool usePost,
            RestfulRequest restfulRequest,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        search,
    TResult? Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        searchAll,
    TResult? Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Mode mode,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        capabilities,
    TResult? Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        transaction,
    TResult? Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        batch,
    TResult? Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        history,
    TResult? Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        historyType,
    TResult? Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        historyAll,
    TResult? Function(
            Uri base,
            R4ResourceType? type,
            String? id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Parameters? fhirParameter,
            String operation,
            bool usePost,
            bool useFormData,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        operation,
  }) {
    return create?.call(base, resource, pretty, summary, format, elements,
        parameters, mimeType, accept, client, headers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        read,
    TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            FhirId vid,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        vRead,
    TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        update,
    TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        patch,
    TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        delete,
    TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        create,
    TResult Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            bool usePost,
            RestfulRequest restfulRequest,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        search,
    TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        searchAll,
    TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Mode mode,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        capabilities,
    TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        transaction,
    TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        batch,
    TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        history,
    TResult Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        historyType,
    TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        historyAll,
    TResult Function(
            Uri base,
            R4ResourceType? type,
            String? id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Parameters? fhirParameter,
            String operation,
            bool usePost,
            bool useFormData,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        operation,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(base, resource, pretty, summary, format, elements,
          parameters, mimeType, accept, client, headers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FhirReadRequest value) read,
    required TResult Function(FhirVReadRequest value) vRead,
    required TResult Function(FhirUpdateRequest value) update,
    required TResult Function(FhirPatchRequest value) patch,
    required TResult Function(FhirDeleteRequest value) delete,
    required TResult Function(FhirCreateRequest value) create,
    required TResult Function(FhirSearchRequest value) search,
    required TResult Function(FhirSearchAllRequest value) searchAll,
    required TResult Function(FhirCapabilitiesRequest value) capabilities,
    required TResult Function(FhirTransactionRequest value) transaction,
    required TResult Function(FhirBatchRequest value) batch,
    required TResult Function(FhirHistoryRequest value) history,
    required TResult Function(FhirHistoryTypeRequest value) historyType,
    required TResult Function(FhirHistoryAllRequest value) historyAll,
    required TResult Function(FhirOperationRequest value) operation,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FhirReadRequest value)? read,
    TResult? Function(FhirVReadRequest value)? vRead,
    TResult? Function(FhirUpdateRequest value)? update,
    TResult? Function(FhirPatchRequest value)? patch,
    TResult? Function(FhirDeleteRequest value)? delete,
    TResult? Function(FhirCreateRequest value)? create,
    TResult? Function(FhirSearchRequest value)? search,
    TResult? Function(FhirSearchAllRequest value)? searchAll,
    TResult? Function(FhirCapabilitiesRequest value)? capabilities,
    TResult? Function(FhirTransactionRequest value)? transaction,
    TResult? Function(FhirBatchRequest value)? batch,
    TResult? Function(FhirHistoryRequest value)? history,
    TResult? Function(FhirHistoryTypeRequest value)? historyType,
    TResult? Function(FhirHistoryAllRequest value)? historyAll,
    TResult? Function(FhirOperationRequest value)? operation,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FhirReadRequest value)? read,
    TResult Function(FhirVReadRequest value)? vRead,
    TResult Function(FhirUpdateRequest value)? update,
    TResult Function(FhirPatchRequest value)? patch,
    TResult Function(FhirDeleteRequest value)? delete,
    TResult Function(FhirCreateRequest value)? create,
    TResult Function(FhirSearchRequest value)? search,
    TResult Function(FhirSearchAllRequest value)? searchAll,
    TResult Function(FhirCapabilitiesRequest value)? capabilities,
    TResult Function(FhirTransactionRequest value)? transaction,
    TResult Function(FhirBatchRequest value)? batch,
    TResult Function(FhirHistoryRequest value)? history,
    TResult Function(FhirHistoryTypeRequest value)? historyType,
    TResult Function(FhirHistoryAllRequest value)? historyAll,
    TResult Function(FhirOperationRequest value)? operation,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FhirCreateRequestImplToJson(
      this,
    );
  }
}

abstract class FhirCreateRequest extends FhirRequest {
  factory FhirCreateRequest(
      {required final Uri base,
      required final Resource resource,
      final bool? pretty,
      final Summary summary,
      final String? format,
      final List<String> elements,
      final List<String> parameters,
      final SupportedMimeType? mimeType,
      final String accept,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final Client? client,
      final Map<String, String>? headers}) = _$FhirCreateRequestImpl;
  FhirCreateRequest._() : super._();

  factory FhirCreateRequest.fromJson(Map<String, dynamic> json) =
      _$FhirCreateRequestImpl.fromJson;

  @override

  /// [base] - the base URI for the FHIR server
  Uri get base;
  Resource get resource;
  @override

  /// [pretty] - pretty print the json formatting in the response
  bool? get pretty;
  @override

  /// [summary] - do you want the result to be a summary
  Summary get summary;
  @override

  /// [format] - Possible formats are: json, json+fhir or fhir+json
  /// (would not request XML as this library doesn't work with XML)
  String? get format;
  @override

  /// [elements] - elements you need to pass in
  List<String> get elements;
  @override

  /// [parameters] - any extra parameters
  List<String> get parameters;
  @override

  /// [mimeType] - specify the MimeType in the Header - this should be fhir+json
  ///   but there are some older systems that won't accept that
  SupportedMimeType? get mimeType;
  @override

  /// [accept] - this will default to fhir+json just so it will stop sending
  /// me XML - I hate XML
  String get accept;
  @override

  /// [client] - if there's a specific client that you're going to be using
// ignore: invalid_annotation_target
  @JsonKey(includeFromJson: false, includeToJson: false)
  Client? get client;
  @override

  /// [headers] - because there are some times it's easier to incldue the
  /// headers in the object instead of only passing it in with the
  /// request
  Map<String, String>? get headers;
  @override
  @JsonKey(ignore: true)
  _$$FhirCreateRequestImplCopyWith<_$FhirCreateRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FhirSearchRequestImplCopyWith<$Res>
    implements $FhirRequestCopyWith<$Res> {
  factory _$$FhirSearchRequestImplCopyWith(_$FhirSearchRequestImpl value,
          $Res Function(_$FhirSearchRequestImpl) then) =
      __$$FhirSearchRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Uri base,
      R4ResourceType type,
      bool? pretty,
      Summary summary,
      String? format,
      List<String> elements,
      List<String> parameters,
      bool usePost,
      RestfulRequest restfulRequest,
      SupportedMimeType? mimeType,
      String accept,
      @JsonKey(includeFromJson: false, includeToJson: false) Client? client,
      Map<String, String>? headers});
}

/// @nodoc
class __$$FhirSearchRequestImplCopyWithImpl<$Res>
    extends _$FhirRequestCopyWithImpl<$Res, _$FhirSearchRequestImpl>
    implements _$$FhirSearchRequestImplCopyWith<$Res> {
  __$$FhirSearchRequestImplCopyWithImpl(_$FhirSearchRequestImpl _value,
      $Res Function(_$FhirSearchRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? base = null,
    Object? type = null,
    Object? pretty = freezed,
    Object? summary = null,
    Object? format = freezed,
    Object? elements = null,
    Object? parameters = null,
    Object? usePost = null,
    Object? restfulRequest = null,
    Object? mimeType = freezed,
    Object? accept = null,
    Object? client = freezed,
    Object? headers = freezed,
  }) {
    return _then(_$FhirSearchRequestImpl(
      base: null == base
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as Uri,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as R4ResourceType,
      pretty: freezed == pretty
          ? _value.pretty
          : pretty // ignore: cast_nullable_to_non_nullable
              as bool?,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as Summary,
      format: freezed == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String?,
      elements: null == elements
          ? _value._elements
          : elements // ignore: cast_nullable_to_non_nullable
              as List<String>,
      parameters: null == parameters
          ? _value._parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as List<String>,
      usePost: null == usePost
          ? _value.usePost
          : usePost // ignore: cast_nullable_to_non_nullable
              as bool,
      restfulRequest: null == restfulRequest
          ? _value.restfulRequest
          : restfulRequest // ignore: cast_nullable_to_non_nullable
              as RestfulRequest,
      mimeType: freezed == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as SupportedMimeType?,
      accept: null == accept
          ? _value.accept
          : accept // ignore: cast_nullable_to_non_nullable
              as String,
      client: freezed == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as Client?,
      headers: freezed == headers
          ? _value._headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FhirSearchRequestImpl extends FhirSearchRequest {
  _$FhirSearchRequestImpl(
      {required this.base,
      required this.type,
      this.pretty,
      this.summary = Summary.none,
      this.format = 'json',
      final List<String> elements = const <String>[],
      final List<String> parameters = const <String>[],
      this.usePost = false,
      this.restfulRequest = RestfulRequest.get_,
      this.mimeType,
      this.accept = 'application/fhir+json',
      @JsonKey(includeFromJson: false, includeToJson: false) this.client,
      final Map<String, String>? headers,
      final String? $type})
      : _elements = elements,
        _parameters = parameters,
        _headers = headers,
        $type = $type ?? 'search',
        super._();

  factory _$FhirSearchRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$FhirSearchRequestImplFromJson(json);

  /// [base] - the base URI for the FHIR server
  @override
  final Uri base;

  /// [type] - the type of resource you're looking for
  @override
  final R4ResourceType type;

  /// [pretty] - pretty print the json formatting in the response
  @override
  final bool? pretty;

  /// [summary] - do you want the result to be a summary
  @override
  @JsonKey()
  final Summary summary;

  /// [format] - Possible formats are: json, json+fhir or fhir+json
  /// (would not request XML as this library doesn't work with XML)
  @override
  @JsonKey()
  final String? format;

  /// [elements] - elements you need to pass in
  final List<String> _elements;

  /// [elements] - elements you need to pass in
  @override
  @JsonKey()
  List<String> get elements {
    if (_elements is EqualUnmodifiableListView) return _elements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_elements);
  }

  /// [parameters] - any extra parameters
  final List<String> _parameters;

  /// [parameters] - any extra parameters
  @override
  @JsonKey()
  List<String> get parameters {
    if (_parameters is EqualUnmodifiableListView) return _parameters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_parameters);
  }

  /// [usePost] - defines if you would prefer to use a post request instead of
  ///   a get request for this search
  @override
  @JsonKey()
  final bool usePost;
  @override
  @JsonKey()
  final RestfulRequest restfulRequest;

  /// [mimeType] - specify the MimeType in the Header - this should be fhir+json
  ///   but there are some older systems that won't accept that
  @override
  final SupportedMimeType? mimeType;

  /// [accept] - this will default to fhir+json just so it will stop sending
  /// me XML - I hate XML
  @override
  @JsonKey()
  final String accept;

  /// [client] - if there's a specific client that you're going to be using
// ignore: invalid_annotation_target
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final Client? client;

  /// [headers] - because there are some times it's easier to incldue the
  /// headers in the object instead of only passing it in with the
  /// request
  final Map<String, String>? _headers;

  /// [headers] - because there are some times it's easier to incldue the
  /// headers in the object instead of only passing it in with the
  /// request
  @override
  Map<String, String>? get headers {
    final value = _headers;
    if (value == null) return null;
    if (_headers is EqualUnmodifiableMapView) return _headers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FhirRequest.search(base: $base, type: $type, pretty: $pretty, summary: $summary, format: $format, elements: $elements, parameters: $parameters, usePost: $usePost, restfulRequest: $restfulRequest, mimeType: $mimeType, accept: $accept, client: $client, headers: $headers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FhirSearchRequestImpl &&
            (identical(other.base, base) || other.base == base) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.pretty, pretty) || other.pretty == pretty) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.format, format) || other.format == format) &&
            const DeepCollectionEquality().equals(other._elements, _elements) &&
            const DeepCollectionEquality()
                .equals(other._parameters, _parameters) &&
            (identical(other.usePost, usePost) || other.usePost == usePost) &&
            (identical(other.restfulRequest, restfulRequest) ||
                other.restfulRequest == restfulRequest) &&
            (identical(other.mimeType, mimeType) ||
                other.mimeType == mimeType) &&
            (identical(other.accept, accept) || other.accept == accept) &&
            (identical(other.client, client) || other.client == client) &&
            const DeepCollectionEquality().equals(other._headers, _headers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      base,
      type,
      pretty,
      summary,
      format,
      const DeepCollectionEquality().hash(_elements),
      const DeepCollectionEquality().hash(_parameters),
      usePost,
      restfulRequest,
      mimeType,
      accept,
      client,
      const DeepCollectionEquality().hash(_headers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FhirSearchRequestImplCopyWith<_$FhirSearchRequestImpl> get copyWith =>
      __$$FhirSearchRequestImplCopyWithImpl<_$FhirSearchRequestImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        read,
    required TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            FhirId vid,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        vRead,
    required TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        update,
    required TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        patch,
    required TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        delete,
    required TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        create,
    required TResult Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            bool usePost,
            RestfulRequest restfulRequest,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        search,
    required TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        searchAll,
    required TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Mode mode,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        capabilities,
    required TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        transaction,
    required TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        batch,
    required TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        history,
    required TResult Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        historyType,
    required TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        historyAll,
    required TResult Function(
            Uri base,
            R4ResourceType? type,
            String? id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Parameters? fhirParameter,
            String operation,
            bool usePost,
            bool useFormData,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        operation,
  }) {
    return search(base, type, pretty, summary, format, elements, parameters,
        usePost, restfulRequest, mimeType, accept, client, headers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        read,
    TResult? Function(
            Uri base,
            R4ResourceType type,
            String id,
            FhirId vid,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        vRead,
    TResult? Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        update,
    TResult? Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        patch,
    TResult? Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        delete,
    TResult? Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        create,
    TResult? Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            bool usePost,
            RestfulRequest restfulRequest,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        search,
    TResult? Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        searchAll,
    TResult? Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Mode mode,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        capabilities,
    TResult? Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        transaction,
    TResult? Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        batch,
    TResult? Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        history,
    TResult? Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        historyType,
    TResult? Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        historyAll,
    TResult? Function(
            Uri base,
            R4ResourceType? type,
            String? id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Parameters? fhirParameter,
            String operation,
            bool usePost,
            bool useFormData,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        operation,
  }) {
    return search?.call(base, type, pretty, summary, format, elements,
        parameters, usePost, restfulRequest, mimeType, accept, client, headers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        read,
    TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            FhirId vid,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        vRead,
    TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        update,
    TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        patch,
    TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        delete,
    TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        create,
    TResult Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            bool usePost,
            RestfulRequest restfulRequest,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        search,
    TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        searchAll,
    TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Mode mode,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        capabilities,
    TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        transaction,
    TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        batch,
    TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        history,
    TResult Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        historyType,
    TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        historyAll,
    TResult Function(
            Uri base,
            R4ResourceType? type,
            String? id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Parameters? fhirParameter,
            String operation,
            bool usePost,
            bool useFormData,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        operation,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(base, type, pretty, summary, format, elements, parameters,
          usePost, restfulRequest, mimeType, accept, client, headers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FhirReadRequest value) read,
    required TResult Function(FhirVReadRequest value) vRead,
    required TResult Function(FhirUpdateRequest value) update,
    required TResult Function(FhirPatchRequest value) patch,
    required TResult Function(FhirDeleteRequest value) delete,
    required TResult Function(FhirCreateRequest value) create,
    required TResult Function(FhirSearchRequest value) search,
    required TResult Function(FhirSearchAllRequest value) searchAll,
    required TResult Function(FhirCapabilitiesRequest value) capabilities,
    required TResult Function(FhirTransactionRequest value) transaction,
    required TResult Function(FhirBatchRequest value) batch,
    required TResult Function(FhirHistoryRequest value) history,
    required TResult Function(FhirHistoryTypeRequest value) historyType,
    required TResult Function(FhirHistoryAllRequest value) historyAll,
    required TResult Function(FhirOperationRequest value) operation,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FhirReadRequest value)? read,
    TResult? Function(FhirVReadRequest value)? vRead,
    TResult? Function(FhirUpdateRequest value)? update,
    TResult? Function(FhirPatchRequest value)? patch,
    TResult? Function(FhirDeleteRequest value)? delete,
    TResult? Function(FhirCreateRequest value)? create,
    TResult? Function(FhirSearchRequest value)? search,
    TResult? Function(FhirSearchAllRequest value)? searchAll,
    TResult? Function(FhirCapabilitiesRequest value)? capabilities,
    TResult? Function(FhirTransactionRequest value)? transaction,
    TResult? Function(FhirBatchRequest value)? batch,
    TResult? Function(FhirHistoryRequest value)? history,
    TResult? Function(FhirHistoryTypeRequest value)? historyType,
    TResult? Function(FhirHistoryAllRequest value)? historyAll,
    TResult? Function(FhirOperationRequest value)? operation,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FhirReadRequest value)? read,
    TResult Function(FhirVReadRequest value)? vRead,
    TResult Function(FhirUpdateRequest value)? update,
    TResult Function(FhirPatchRequest value)? patch,
    TResult Function(FhirDeleteRequest value)? delete,
    TResult Function(FhirCreateRequest value)? create,
    TResult Function(FhirSearchRequest value)? search,
    TResult Function(FhirSearchAllRequest value)? searchAll,
    TResult Function(FhirCapabilitiesRequest value)? capabilities,
    TResult Function(FhirTransactionRequest value)? transaction,
    TResult Function(FhirBatchRequest value)? batch,
    TResult Function(FhirHistoryRequest value)? history,
    TResult Function(FhirHistoryTypeRequest value)? historyType,
    TResult Function(FhirHistoryAllRequest value)? historyAll,
    TResult Function(FhirOperationRequest value)? operation,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FhirSearchRequestImplToJson(
      this,
    );
  }
}

abstract class FhirSearchRequest extends FhirRequest {
  factory FhirSearchRequest(
      {required final Uri base,
      required final R4ResourceType type,
      final bool? pretty,
      final Summary summary,
      final String? format,
      final List<String> elements,
      final List<String> parameters,
      final bool usePost,
      final RestfulRequest restfulRequest,
      final SupportedMimeType? mimeType,
      final String accept,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final Client? client,
      final Map<String, String>? headers}) = _$FhirSearchRequestImpl;
  FhirSearchRequest._() : super._();

  factory FhirSearchRequest.fromJson(Map<String, dynamic> json) =
      _$FhirSearchRequestImpl.fromJson;

  @override

  /// [base] - the base URI for the FHIR server
  Uri get base;

  /// [type] - the type of resource you're looking for
  R4ResourceType get type;
  @override

  /// [pretty] - pretty print the json formatting in the response
  bool? get pretty;
  @override

  /// [summary] - do you want the result to be a summary
  Summary get summary;
  @override

  /// [format] - Possible formats are: json, json+fhir or fhir+json
  /// (would not request XML as this library doesn't work with XML)
  String? get format;
  @override

  /// [elements] - elements you need to pass in
  List<String> get elements;
  @override

  /// [parameters] - any extra parameters
  List<String> get parameters;

  /// [usePost] - defines if you would prefer to use a post request instead of
  ///   a get request for this search
  bool get usePost;
  RestfulRequest get restfulRequest;
  @override

  /// [mimeType] - specify the MimeType in the Header - this should be fhir+json
  ///   but there are some older systems that won't accept that
  SupportedMimeType? get mimeType;
  @override

  /// [accept] - this will default to fhir+json just so it will stop sending
  /// me XML - I hate XML
  String get accept;
  @override

  /// [client] - if there's a specific client that you're going to be using
// ignore: invalid_annotation_target
  @JsonKey(includeFromJson: false, includeToJson: false)
  Client? get client;
  @override

  /// [headers] - because there are some times it's easier to incldue the
  /// headers in the object instead of only passing it in with the
  /// request
  Map<String, String>? get headers;
  @override
  @JsonKey(ignore: true)
  _$$FhirSearchRequestImplCopyWith<_$FhirSearchRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FhirSearchAllRequestImplCopyWith<$Res>
    implements $FhirRequestCopyWith<$Res> {
  factory _$$FhirSearchAllRequestImplCopyWith(_$FhirSearchAllRequestImpl value,
          $Res Function(_$FhirSearchAllRequestImpl) then) =
      __$$FhirSearchAllRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Uri base,
      bool? pretty,
      Summary summary,
      String? format,
      List<String> elements,
      List<String> parameters,
      SupportedMimeType? mimeType,
      String accept,
      @JsonKey(includeFromJson: false, includeToJson: false) Client? client,
      Map<String, String>? headers});
}

/// @nodoc
class __$$FhirSearchAllRequestImplCopyWithImpl<$Res>
    extends _$FhirRequestCopyWithImpl<$Res, _$FhirSearchAllRequestImpl>
    implements _$$FhirSearchAllRequestImplCopyWith<$Res> {
  __$$FhirSearchAllRequestImplCopyWithImpl(_$FhirSearchAllRequestImpl _value,
      $Res Function(_$FhirSearchAllRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? base = null,
    Object? pretty = freezed,
    Object? summary = null,
    Object? format = freezed,
    Object? elements = null,
    Object? parameters = null,
    Object? mimeType = freezed,
    Object? accept = null,
    Object? client = freezed,
    Object? headers = freezed,
  }) {
    return _then(_$FhirSearchAllRequestImpl(
      base: null == base
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as Uri,
      pretty: freezed == pretty
          ? _value.pretty
          : pretty // ignore: cast_nullable_to_non_nullable
              as bool?,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as Summary,
      format: freezed == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String?,
      elements: null == elements
          ? _value._elements
          : elements // ignore: cast_nullable_to_non_nullable
              as List<String>,
      parameters: null == parameters
          ? _value._parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as List<String>,
      mimeType: freezed == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as SupportedMimeType?,
      accept: null == accept
          ? _value.accept
          : accept // ignore: cast_nullable_to_non_nullable
              as String,
      client: freezed == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as Client?,
      headers: freezed == headers
          ? _value._headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FhirSearchAllRequestImpl extends FhirSearchAllRequest {
  _$FhirSearchAllRequestImpl(
      {required this.base,
      this.pretty,
      this.summary = Summary.none,
      this.format = 'json',
      final List<String> elements = const <String>[],
      final List<String> parameters = const <String>[],
      this.mimeType,
      this.accept = 'application/fhir+json',
      @JsonKey(includeFromJson: false, includeToJson: false) this.client,
      final Map<String, String>? headers,
      final String? $type})
      : _elements = elements,
        _parameters = parameters,
        _headers = headers,
        $type = $type ?? 'searchAll',
        super._();

  factory _$FhirSearchAllRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$FhirSearchAllRequestImplFromJson(json);

  /// [base] - the base URI for the FHIR server
  @override
  final Uri base;

  /// [pretty] - pretty print the json formatting in the response
  @override
  final bool? pretty;

  /// [summary] - do you want the result to be a summary
  @override
  @JsonKey()
  final Summary summary;

  /// [format] - Possible formats are: json, json+fhir or fhir+json
  /// (would not request XML as this library doesn't work with XML)
  @override
  @JsonKey()
  final String? format;

  /// [elements] - elements you need to pass in
  final List<String> _elements;

  /// [elements] - elements you need to pass in
  @override
  @JsonKey()
  List<String> get elements {
    if (_elements is EqualUnmodifiableListView) return _elements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_elements);
  }

  /// [parameters] - any extra parameters
  final List<String> _parameters;

  /// [parameters] - any extra parameters
  @override
  @JsonKey()
  List<String> get parameters {
    if (_parameters is EqualUnmodifiableListView) return _parameters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_parameters);
  }

  /// [mimeType] - specify the MimeType in the Header - this should be fhir+json
  ///   but there are some older systems that won't accept that
  @override
  final SupportedMimeType? mimeType;

  /// [accept] - this will default to fhir+json just so it will stop sending
  /// me XML - I hate XML
  @override
  @JsonKey()
  final String accept;

  /// [client] - if there's a specific client that you're going to be using
// ignore: invalid_annotation_target
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final Client? client;

  /// [headers] - because there are some times it's easier to incldue the
  /// headers in the object instead of only passing it in with the
  /// request
  final Map<String, String>? _headers;

  /// [headers] - because there are some times it's easier to incldue the
  /// headers in the object instead of only passing it in with the
  /// request
  @override
  Map<String, String>? get headers {
    final value = _headers;
    if (value == null) return null;
    if (_headers is EqualUnmodifiableMapView) return _headers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FhirRequest.searchAll(base: $base, pretty: $pretty, summary: $summary, format: $format, elements: $elements, parameters: $parameters, mimeType: $mimeType, accept: $accept, client: $client, headers: $headers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FhirSearchAllRequestImpl &&
            (identical(other.base, base) || other.base == base) &&
            (identical(other.pretty, pretty) || other.pretty == pretty) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.format, format) || other.format == format) &&
            const DeepCollectionEquality().equals(other._elements, _elements) &&
            const DeepCollectionEquality()
                .equals(other._parameters, _parameters) &&
            (identical(other.mimeType, mimeType) ||
                other.mimeType == mimeType) &&
            (identical(other.accept, accept) || other.accept == accept) &&
            (identical(other.client, client) || other.client == client) &&
            const DeepCollectionEquality().equals(other._headers, _headers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      base,
      pretty,
      summary,
      format,
      const DeepCollectionEquality().hash(_elements),
      const DeepCollectionEquality().hash(_parameters),
      mimeType,
      accept,
      client,
      const DeepCollectionEquality().hash(_headers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FhirSearchAllRequestImplCopyWith<_$FhirSearchAllRequestImpl>
      get copyWith =>
          __$$FhirSearchAllRequestImplCopyWithImpl<_$FhirSearchAllRequestImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        read,
    required TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            FhirId vid,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        vRead,
    required TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        update,
    required TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        patch,
    required TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        delete,
    required TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        create,
    required TResult Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            bool usePost,
            RestfulRequest restfulRequest,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        search,
    required TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        searchAll,
    required TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Mode mode,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        capabilities,
    required TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        transaction,
    required TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        batch,
    required TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        history,
    required TResult Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        historyType,
    required TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        historyAll,
    required TResult Function(
            Uri base,
            R4ResourceType? type,
            String? id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Parameters? fhirParameter,
            String operation,
            bool usePost,
            bool useFormData,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        operation,
  }) {
    return searchAll(base, pretty, summary, format, elements, parameters,
        mimeType, accept, client, headers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        read,
    TResult? Function(
            Uri base,
            R4ResourceType type,
            String id,
            FhirId vid,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        vRead,
    TResult? Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        update,
    TResult? Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        patch,
    TResult? Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        delete,
    TResult? Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        create,
    TResult? Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            bool usePost,
            RestfulRequest restfulRequest,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        search,
    TResult? Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        searchAll,
    TResult? Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Mode mode,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        capabilities,
    TResult? Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        transaction,
    TResult? Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        batch,
    TResult? Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        history,
    TResult? Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        historyType,
    TResult? Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        historyAll,
    TResult? Function(
            Uri base,
            R4ResourceType? type,
            String? id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Parameters? fhirParameter,
            String operation,
            bool usePost,
            bool useFormData,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        operation,
  }) {
    return searchAll?.call(base, pretty, summary, format, elements, parameters,
        mimeType, accept, client, headers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        read,
    TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            FhirId vid,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        vRead,
    TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        update,
    TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        patch,
    TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        delete,
    TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        create,
    TResult Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            bool usePost,
            RestfulRequest restfulRequest,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        search,
    TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        searchAll,
    TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Mode mode,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        capabilities,
    TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        transaction,
    TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        batch,
    TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        history,
    TResult Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        historyType,
    TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        historyAll,
    TResult Function(
            Uri base,
            R4ResourceType? type,
            String? id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Parameters? fhirParameter,
            String operation,
            bool usePost,
            bool useFormData,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        operation,
    required TResult orElse(),
  }) {
    if (searchAll != null) {
      return searchAll(base, pretty, summary, format, elements, parameters,
          mimeType, accept, client, headers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FhirReadRequest value) read,
    required TResult Function(FhirVReadRequest value) vRead,
    required TResult Function(FhirUpdateRequest value) update,
    required TResult Function(FhirPatchRequest value) patch,
    required TResult Function(FhirDeleteRequest value) delete,
    required TResult Function(FhirCreateRequest value) create,
    required TResult Function(FhirSearchRequest value) search,
    required TResult Function(FhirSearchAllRequest value) searchAll,
    required TResult Function(FhirCapabilitiesRequest value) capabilities,
    required TResult Function(FhirTransactionRequest value) transaction,
    required TResult Function(FhirBatchRequest value) batch,
    required TResult Function(FhirHistoryRequest value) history,
    required TResult Function(FhirHistoryTypeRequest value) historyType,
    required TResult Function(FhirHistoryAllRequest value) historyAll,
    required TResult Function(FhirOperationRequest value) operation,
  }) {
    return searchAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FhirReadRequest value)? read,
    TResult? Function(FhirVReadRequest value)? vRead,
    TResult? Function(FhirUpdateRequest value)? update,
    TResult? Function(FhirPatchRequest value)? patch,
    TResult? Function(FhirDeleteRequest value)? delete,
    TResult? Function(FhirCreateRequest value)? create,
    TResult? Function(FhirSearchRequest value)? search,
    TResult? Function(FhirSearchAllRequest value)? searchAll,
    TResult? Function(FhirCapabilitiesRequest value)? capabilities,
    TResult? Function(FhirTransactionRequest value)? transaction,
    TResult? Function(FhirBatchRequest value)? batch,
    TResult? Function(FhirHistoryRequest value)? history,
    TResult? Function(FhirHistoryTypeRequest value)? historyType,
    TResult? Function(FhirHistoryAllRequest value)? historyAll,
    TResult? Function(FhirOperationRequest value)? operation,
  }) {
    return searchAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FhirReadRequest value)? read,
    TResult Function(FhirVReadRequest value)? vRead,
    TResult Function(FhirUpdateRequest value)? update,
    TResult Function(FhirPatchRequest value)? patch,
    TResult Function(FhirDeleteRequest value)? delete,
    TResult Function(FhirCreateRequest value)? create,
    TResult Function(FhirSearchRequest value)? search,
    TResult Function(FhirSearchAllRequest value)? searchAll,
    TResult Function(FhirCapabilitiesRequest value)? capabilities,
    TResult Function(FhirTransactionRequest value)? transaction,
    TResult Function(FhirBatchRequest value)? batch,
    TResult Function(FhirHistoryRequest value)? history,
    TResult Function(FhirHistoryTypeRequest value)? historyType,
    TResult Function(FhirHistoryAllRequest value)? historyAll,
    TResult Function(FhirOperationRequest value)? operation,
    required TResult orElse(),
  }) {
    if (searchAll != null) {
      return searchAll(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FhirSearchAllRequestImplToJson(
      this,
    );
  }
}

abstract class FhirSearchAllRequest extends FhirRequest {
  factory FhirSearchAllRequest(
      {required final Uri base,
      final bool? pretty,
      final Summary summary,
      final String? format,
      final List<String> elements,
      final List<String> parameters,
      final SupportedMimeType? mimeType,
      final String accept,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final Client? client,
      final Map<String, String>? headers}) = _$FhirSearchAllRequestImpl;
  FhirSearchAllRequest._() : super._();

  factory FhirSearchAllRequest.fromJson(Map<String, dynamic> json) =
      _$FhirSearchAllRequestImpl.fromJson;

  @override

  /// [base] - the base URI for the FHIR server
  Uri get base;
  @override

  /// [pretty] - pretty print the json formatting in the response
  bool? get pretty;
  @override

  /// [summary] - do you want the result to be a summary
  Summary get summary;
  @override

  /// [format] - Possible formats are: json, json+fhir or fhir+json
  /// (would not request XML as this library doesn't work with XML)
  String? get format;
  @override

  /// [elements] - elements you need to pass in
  List<String> get elements;
  @override

  /// [parameters] - any extra parameters
  List<String> get parameters;
  @override

  /// [mimeType] - specify the MimeType in the Header - this should be fhir+json
  ///   but there are some older systems that won't accept that
  SupportedMimeType? get mimeType;
  @override

  /// [accept] - this will default to fhir+json just so it will stop sending
  /// me XML - I hate XML
  String get accept;
  @override

  /// [client] - if there's a specific client that you're going to be using
// ignore: invalid_annotation_target
  @JsonKey(includeFromJson: false, includeToJson: false)
  Client? get client;
  @override

  /// [headers] - because there are some times it's easier to incldue the
  /// headers in the object instead of only passing it in with the
  /// request
  Map<String, String>? get headers;
  @override
  @JsonKey(ignore: true)
  _$$FhirSearchAllRequestImplCopyWith<_$FhirSearchAllRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FhirCapabilitiesRequestImplCopyWith<$Res>
    implements $FhirRequestCopyWith<$Res> {
  factory _$$FhirCapabilitiesRequestImplCopyWith(
          _$FhirCapabilitiesRequestImpl value,
          $Res Function(_$FhirCapabilitiesRequestImpl) then) =
      __$$FhirCapabilitiesRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Uri base,
      bool? pretty,
      Summary summary,
      String? format,
      List<String> elements,
      List<String> parameters,
      Mode mode,
      SupportedMimeType? mimeType,
      String accept,
      @JsonKey(includeFromJson: false, includeToJson: false) Client? client,
      Map<String, String>? headers});
}

/// @nodoc
class __$$FhirCapabilitiesRequestImplCopyWithImpl<$Res>
    extends _$FhirRequestCopyWithImpl<$Res, _$FhirCapabilitiesRequestImpl>
    implements _$$FhirCapabilitiesRequestImplCopyWith<$Res> {
  __$$FhirCapabilitiesRequestImplCopyWithImpl(
      _$FhirCapabilitiesRequestImpl _value,
      $Res Function(_$FhirCapabilitiesRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? base = null,
    Object? pretty = freezed,
    Object? summary = null,
    Object? format = freezed,
    Object? elements = null,
    Object? parameters = null,
    Object? mode = null,
    Object? mimeType = freezed,
    Object? accept = null,
    Object? client = freezed,
    Object? headers = freezed,
  }) {
    return _then(_$FhirCapabilitiesRequestImpl(
      base: null == base
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as Uri,
      pretty: freezed == pretty
          ? _value.pretty
          : pretty // ignore: cast_nullable_to_non_nullable
              as bool?,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as Summary,
      format: freezed == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String?,
      elements: null == elements
          ? _value._elements
          : elements // ignore: cast_nullable_to_non_nullable
              as List<String>,
      parameters: null == parameters
          ? _value._parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as List<String>,
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as Mode,
      mimeType: freezed == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as SupportedMimeType?,
      accept: null == accept
          ? _value.accept
          : accept // ignore: cast_nullable_to_non_nullable
              as String,
      client: freezed == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as Client?,
      headers: freezed == headers
          ? _value._headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FhirCapabilitiesRequestImpl extends FhirCapabilitiesRequest {
  _$FhirCapabilitiesRequestImpl(
      {required this.base,
      this.pretty,
      this.summary = Summary.none,
      this.format = 'json',
      final List<String> elements = const <String>[],
      final List<String> parameters = const <String>[],
      this.mode = Mode.full,
      this.mimeType,
      this.accept = 'application/fhir+json',
      @JsonKey(includeFromJson: false, includeToJson: false) this.client,
      final Map<String, String>? headers,
      final String? $type})
      : _elements = elements,
        _parameters = parameters,
        _headers = headers,
        $type = $type ?? 'capabilities',
        super._();

  factory _$FhirCapabilitiesRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$FhirCapabilitiesRequestImplFromJson(json);

  /// [base] - the base URI for the FHIR server
  @override
  final Uri base;

  /// [pretty] - pretty print the json formatting in the response
  @override
  final bool? pretty;

  /// [summary] - do you want the result to be a summary
  @override
  @JsonKey()
  final Summary summary;

  /// [format] - Possible formats are: json, json+fhir or fhir+json
  /// (would not request XML as this library doesn't work with XML)
  @override
  @JsonKey()
  final String? format;

  /// [elements] - elements you need to pass in
  final List<String> _elements;

  /// [elements] - elements you need to pass in
  @override
  @JsonKey()
  List<String> get elements {
    if (_elements is EqualUnmodifiableListView) return _elements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_elements);
  }

  /// [parameters] - any extra parameters
  final List<String> _parameters;

  /// [parameters] - any extra parameters
  @override
  @JsonKey()
  List<String> get parameters {
    if (_parameters is EqualUnmodifiableListView) return _parameters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_parameters);
  }

  /// [mode] - defines the mode as defined https://www.hl7.org/fhir/http.html#capabilities
  @override
  @JsonKey()
  final Mode mode;

  /// [mimeType] - specify the MimeType in the Header - this should be fhir+json
  ///   but there are some older systems that won't accept that
  @override
  final SupportedMimeType? mimeType;

  /// [accept] - this will default to fhir+json just so it will stop sending
  /// me XML - I hate XML
  @override
  @JsonKey()
  final String accept;

  /// [client] - if there's a specific client that you're going to be using
// ignore: invalid_annotation_target
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final Client? client;

  /// [headers] - because there are some times it's easier to incldue the
  /// headers in the object instead of only passing it in with the
  /// request
  final Map<String, String>? _headers;

  /// [headers] - because there are some times it's easier to incldue the
  /// headers in the object instead of only passing it in with the
  /// request
  @override
  Map<String, String>? get headers {
    final value = _headers;
    if (value == null) return null;
    if (_headers is EqualUnmodifiableMapView) return _headers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FhirRequest.capabilities(base: $base, pretty: $pretty, summary: $summary, format: $format, elements: $elements, parameters: $parameters, mode: $mode, mimeType: $mimeType, accept: $accept, client: $client, headers: $headers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FhirCapabilitiesRequestImpl &&
            (identical(other.base, base) || other.base == base) &&
            (identical(other.pretty, pretty) || other.pretty == pretty) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.format, format) || other.format == format) &&
            const DeepCollectionEquality().equals(other._elements, _elements) &&
            const DeepCollectionEquality()
                .equals(other._parameters, _parameters) &&
            (identical(other.mode, mode) || other.mode == mode) &&
            (identical(other.mimeType, mimeType) ||
                other.mimeType == mimeType) &&
            (identical(other.accept, accept) || other.accept == accept) &&
            (identical(other.client, client) || other.client == client) &&
            const DeepCollectionEquality().equals(other._headers, _headers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      base,
      pretty,
      summary,
      format,
      const DeepCollectionEquality().hash(_elements),
      const DeepCollectionEquality().hash(_parameters),
      mode,
      mimeType,
      accept,
      client,
      const DeepCollectionEquality().hash(_headers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FhirCapabilitiesRequestImplCopyWith<_$FhirCapabilitiesRequestImpl>
      get copyWith => __$$FhirCapabilitiesRequestImplCopyWithImpl<
          _$FhirCapabilitiesRequestImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        read,
    required TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            FhirId vid,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        vRead,
    required TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        update,
    required TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        patch,
    required TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        delete,
    required TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        create,
    required TResult Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            bool usePost,
            RestfulRequest restfulRequest,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        search,
    required TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        searchAll,
    required TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Mode mode,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        capabilities,
    required TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        transaction,
    required TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        batch,
    required TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        history,
    required TResult Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        historyType,
    required TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        historyAll,
    required TResult Function(
            Uri base,
            R4ResourceType? type,
            String? id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Parameters? fhirParameter,
            String operation,
            bool usePost,
            bool useFormData,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        operation,
  }) {
    return capabilities(base, pretty, summary, format, elements, parameters,
        mode, mimeType, accept, client, headers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        read,
    TResult? Function(
            Uri base,
            R4ResourceType type,
            String id,
            FhirId vid,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        vRead,
    TResult? Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        update,
    TResult? Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        patch,
    TResult? Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        delete,
    TResult? Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        create,
    TResult? Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            bool usePost,
            RestfulRequest restfulRequest,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        search,
    TResult? Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        searchAll,
    TResult? Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Mode mode,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        capabilities,
    TResult? Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        transaction,
    TResult? Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        batch,
    TResult? Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        history,
    TResult? Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        historyType,
    TResult? Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        historyAll,
    TResult? Function(
            Uri base,
            R4ResourceType? type,
            String? id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Parameters? fhirParameter,
            String operation,
            bool usePost,
            bool useFormData,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        operation,
  }) {
    return capabilities?.call(base, pretty, summary, format, elements,
        parameters, mode, mimeType, accept, client, headers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        read,
    TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            FhirId vid,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        vRead,
    TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        update,
    TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        patch,
    TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        delete,
    TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        create,
    TResult Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            bool usePost,
            RestfulRequest restfulRequest,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        search,
    TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        searchAll,
    TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Mode mode,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        capabilities,
    TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        transaction,
    TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        batch,
    TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        history,
    TResult Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        historyType,
    TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        historyAll,
    TResult Function(
            Uri base,
            R4ResourceType? type,
            String? id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Parameters? fhirParameter,
            String operation,
            bool usePost,
            bool useFormData,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        operation,
    required TResult orElse(),
  }) {
    if (capabilities != null) {
      return capabilities(base, pretty, summary, format, elements, parameters,
          mode, mimeType, accept, client, headers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FhirReadRequest value) read,
    required TResult Function(FhirVReadRequest value) vRead,
    required TResult Function(FhirUpdateRequest value) update,
    required TResult Function(FhirPatchRequest value) patch,
    required TResult Function(FhirDeleteRequest value) delete,
    required TResult Function(FhirCreateRequest value) create,
    required TResult Function(FhirSearchRequest value) search,
    required TResult Function(FhirSearchAllRequest value) searchAll,
    required TResult Function(FhirCapabilitiesRequest value) capabilities,
    required TResult Function(FhirTransactionRequest value) transaction,
    required TResult Function(FhirBatchRequest value) batch,
    required TResult Function(FhirHistoryRequest value) history,
    required TResult Function(FhirHistoryTypeRequest value) historyType,
    required TResult Function(FhirHistoryAllRequest value) historyAll,
    required TResult Function(FhirOperationRequest value) operation,
  }) {
    return capabilities(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FhirReadRequest value)? read,
    TResult? Function(FhirVReadRequest value)? vRead,
    TResult? Function(FhirUpdateRequest value)? update,
    TResult? Function(FhirPatchRequest value)? patch,
    TResult? Function(FhirDeleteRequest value)? delete,
    TResult? Function(FhirCreateRequest value)? create,
    TResult? Function(FhirSearchRequest value)? search,
    TResult? Function(FhirSearchAllRequest value)? searchAll,
    TResult? Function(FhirCapabilitiesRequest value)? capabilities,
    TResult? Function(FhirTransactionRequest value)? transaction,
    TResult? Function(FhirBatchRequest value)? batch,
    TResult? Function(FhirHistoryRequest value)? history,
    TResult? Function(FhirHistoryTypeRequest value)? historyType,
    TResult? Function(FhirHistoryAllRequest value)? historyAll,
    TResult? Function(FhirOperationRequest value)? operation,
  }) {
    return capabilities?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FhirReadRequest value)? read,
    TResult Function(FhirVReadRequest value)? vRead,
    TResult Function(FhirUpdateRequest value)? update,
    TResult Function(FhirPatchRequest value)? patch,
    TResult Function(FhirDeleteRequest value)? delete,
    TResult Function(FhirCreateRequest value)? create,
    TResult Function(FhirSearchRequest value)? search,
    TResult Function(FhirSearchAllRequest value)? searchAll,
    TResult Function(FhirCapabilitiesRequest value)? capabilities,
    TResult Function(FhirTransactionRequest value)? transaction,
    TResult Function(FhirBatchRequest value)? batch,
    TResult Function(FhirHistoryRequest value)? history,
    TResult Function(FhirHistoryTypeRequest value)? historyType,
    TResult Function(FhirHistoryAllRequest value)? historyAll,
    TResult Function(FhirOperationRequest value)? operation,
    required TResult orElse(),
  }) {
    if (capabilities != null) {
      return capabilities(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FhirCapabilitiesRequestImplToJson(
      this,
    );
  }
}

abstract class FhirCapabilitiesRequest extends FhirRequest {
  factory FhirCapabilitiesRequest(
      {required final Uri base,
      final bool? pretty,
      final Summary summary,
      final String? format,
      final List<String> elements,
      final List<String> parameters,
      final Mode mode,
      final SupportedMimeType? mimeType,
      final String accept,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final Client? client,
      final Map<String, String>? headers}) = _$FhirCapabilitiesRequestImpl;
  FhirCapabilitiesRequest._() : super._();

  factory FhirCapabilitiesRequest.fromJson(Map<String, dynamic> json) =
      _$FhirCapabilitiesRequestImpl.fromJson;

  @override

  /// [base] - the base URI for the FHIR server
  Uri get base;
  @override

  /// [pretty] - pretty print the json formatting in the response
  bool? get pretty;
  @override

  /// [summary] - do you want the result to be a summary
  Summary get summary;
  @override

  /// [format] - Possible formats are: json, json+fhir or fhir+json
  /// (would not request XML as this library doesn't work with XML)
  String? get format;
  @override

  /// [elements] - elements you need to pass in
  List<String> get elements;
  @override

  /// [parameters] - any extra parameters
  List<String> get parameters;

  /// [mode] - defines the mode as defined https://www.hl7.org/fhir/http.html#capabilities
  Mode get mode;
  @override

  /// [mimeType] - specify the MimeType in the Header - this should be fhir+json
  ///   but there are some older systems that won't accept that
  SupportedMimeType? get mimeType;
  @override

  /// [accept] - this will default to fhir+json just so it will stop sending
  /// me XML - I hate XML
  String get accept;
  @override

  /// [client] - if there's a specific client that you're going to be using
// ignore: invalid_annotation_target
  @JsonKey(includeFromJson: false, includeToJson: false)
  Client? get client;
  @override

  /// [headers] - because there are some times it's easier to incldue the
  /// headers in the object instead of only passing it in with the
  /// request
  Map<String, String>? get headers;
  @override
  @JsonKey(ignore: true)
  _$$FhirCapabilitiesRequestImplCopyWith<_$FhirCapabilitiesRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FhirTransactionRequestImplCopyWith<$Res>
    implements $FhirRequestCopyWith<$Res> {
  factory _$$FhirTransactionRequestImplCopyWith(
          _$FhirTransactionRequestImpl value,
          $Res Function(_$FhirTransactionRequestImpl) then) =
      __$$FhirTransactionRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Uri base,
      bool? pretty,
      Summary summary,
      String? format,
      List<String> elements,
      List<String> parameters,
      Bundle bundle,
      SupportedMimeType? mimeType,
      String accept,
      @JsonKey(includeFromJson: false, includeToJson: false) Client? client,
      Map<String, String>? headers});

  $BundleCopyWith<$Res> get bundle;
}

/// @nodoc
class __$$FhirTransactionRequestImplCopyWithImpl<$Res>
    extends _$FhirRequestCopyWithImpl<$Res, _$FhirTransactionRequestImpl>
    implements _$$FhirTransactionRequestImplCopyWith<$Res> {
  __$$FhirTransactionRequestImplCopyWithImpl(
      _$FhirTransactionRequestImpl _value,
      $Res Function(_$FhirTransactionRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? base = null,
    Object? pretty = freezed,
    Object? summary = null,
    Object? format = freezed,
    Object? elements = null,
    Object? parameters = null,
    Object? bundle = null,
    Object? mimeType = freezed,
    Object? accept = null,
    Object? client = freezed,
    Object? headers = freezed,
  }) {
    return _then(_$FhirTransactionRequestImpl(
      base: null == base
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as Uri,
      pretty: freezed == pretty
          ? _value.pretty
          : pretty // ignore: cast_nullable_to_non_nullable
              as bool?,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as Summary,
      format: freezed == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String?,
      elements: null == elements
          ? _value._elements
          : elements // ignore: cast_nullable_to_non_nullable
              as List<String>,
      parameters: null == parameters
          ? _value._parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as List<String>,
      bundle: null == bundle
          ? _value.bundle
          : bundle // ignore: cast_nullable_to_non_nullable
              as Bundle,
      mimeType: freezed == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as SupportedMimeType?,
      accept: null == accept
          ? _value.accept
          : accept // ignore: cast_nullable_to_non_nullable
              as String,
      client: freezed == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as Client?,
      headers: freezed == headers
          ? _value._headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BundleCopyWith<$Res> get bundle {
    return $BundleCopyWith<$Res>(_value.bundle, (value) {
      return _then(_value.copyWith(bundle: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$FhirTransactionRequestImpl extends FhirTransactionRequest {
  _$FhirTransactionRequestImpl(
      {required this.base,
      this.pretty,
      this.summary = Summary.none,
      this.format = 'json',
      final List<String> elements = const <String>[],
      final List<String> parameters = const <String>[],
      required this.bundle,
      this.mimeType,
      this.accept = 'application/fhir+json',
      @JsonKey(includeFromJson: false, includeToJson: false) this.client,
      final Map<String, String>? headers,
      final String? $type})
      : _elements = elements,
        _parameters = parameters,
        _headers = headers,
        $type = $type ?? 'transaction',
        super._();

  factory _$FhirTransactionRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$FhirTransactionRequestImplFromJson(json);

  /// [base] - the base URI for the FHIR server
  @override
  final Uri base;

  /// [pretty] - pretty print the json formatting in the response
  @override
  final bool? pretty;

  /// [summary] - do you want the result to be a summary
  @override
  @JsonKey()
  final Summary summary;

  /// [format] - Possible formats are: json, json+fhir or fhir+json
  /// (would not request XML as this library doesn't work with XML)
  @override
  @JsonKey()
  final String? format;

  /// [elements] - elements you need to pass in
  final List<String> _elements;

  /// [elements] - elements you need to pass in
  @override
  @JsonKey()
  List<String> get elements {
    if (_elements is EqualUnmodifiableListView) return _elements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_elements);
  }

  /// [parameters] - any extra parameters
  final List<String> _parameters;

  /// [parameters] - any extra parameters
  @override
  @JsonKey()
  List<String> get parameters {
    if (_parameters is EqualUnmodifiableListView) return _parameters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_parameters);
  }

  /// [bundle] - the bundle to be uploaded
  @override
  final Bundle bundle;

  /// [mimeType] - specify the MimeType in the Header - this should be fhir+json
  ///   but there are some older systems that won't accept that
  @override
  final SupportedMimeType? mimeType;

  /// [accept] - this will default to fhir+json just so it will stop sending
  /// me XML - I hate XML
  @override
  @JsonKey()
  final String accept;

  /// [client] - if there's a specific client that you're going to be using
// ignore: invalid_annotation_target
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final Client? client;

  /// [headers] - because there are some times it's easier to incldue the
  /// headers in the object instead of only passing it in with the
  /// request
  final Map<String, String>? _headers;

  /// [headers] - because there are some times it's easier to incldue the
  /// headers in the object instead of only passing it in with the
  /// request
  @override
  Map<String, String>? get headers {
    final value = _headers;
    if (value == null) return null;
    if (_headers is EqualUnmodifiableMapView) return _headers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FhirRequest.transaction(base: $base, pretty: $pretty, summary: $summary, format: $format, elements: $elements, parameters: $parameters, bundle: $bundle, mimeType: $mimeType, accept: $accept, client: $client, headers: $headers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FhirTransactionRequestImpl &&
            (identical(other.base, base) || other.base == base) &&
            (identical(other.pretty, pretty) || other.pretty == pretty) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.format, format) || other.format == format) &&
            const DeepCollectionEquality().equals(other._elements, _elements) &&
            const DeepCollectionEquality()
                .equals(other._parameters, _parameters) &&
            (identical(other.bundle, bundle) || other.bundle == bundle) &&
            (identical(other.mimeType, mimeType) ||
                other.mimeType == mimeType) &&
            (identical(other.accept, accept) || other.accept == accept) &&
            (identical(other.client, client) || other.client == client) &&
            const DeepCollectionEquality().equals(other._headers, _headers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      base,
      pretty,
      summary,
      format,
      const DeepCollectionEquality().hash(_elements),
      const DeepCollectionEquality().hash(_parameters),
      bundle,
      mimeType,
      accept,
      client,
      const DeepCollectionEquality().hash(_headers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FhirTransactionRequestImplCopyWith<_$FhirTransactionRequestImpl>
      get copyWith => __$$FhirTransactionRequestImplCopyWithImpl<
          _$FhirTransactionRequestImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        read,
    required TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            FhirId vid,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        vRead,
    required TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        update,
    required TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        patch,
    required TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        delete,
    required TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        create,
    required TResult Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            bool usePost,
            RestfulRequest restfulRequest,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        search,
    required TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        searchAll,
    required TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Mode mode,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        capabilities,
    required TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        transaction,
    required TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        batch,
    required TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        history,
    required TResult Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        historyType,
    required TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        historyAll,
    required TResult Function(
            Uri base,
            R4ResourceType? type,
            String? id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Parameters? fhirParameter,
            String operation,
            bool usePost,
            bool useFormData,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        operation,
  }) {
    return transaction(base, pretty, summary, format, elements, parameters,
        bundle, mimeType, accept, client, headers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        read,
    TResult? Function(
            Uri base,
            R4ResourceType type,
            String id,
            FhirId vid,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        vRead,
    TResult? Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        update,
    TResult? Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        patch,
    TResult? Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        delete,
    TResult? Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        create,
    TResult? Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            bool usePost,
            RestfulRequest restfulRequest,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        search,
    TResult? Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        searchAll,
    TResult? Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Mode mode,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        capabilities,
    TResult? Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        transaction,
    TResult? Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        batch,
    TResult? Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        history,
    TResult? Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        historyType,
    TResult? Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        historyAll,
    TResult? Function(
            Uri base,
            R4ResourceType? type,
            String? id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Parameters? fhirParameter,
            String operation,
            bool usePost,
            bool useFormData,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        operation,
  }) {
    return transaction?.call(base, pretty, summary, format, elements,
        parameters, bundle, mimeType, accept, client, headers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        read,
    TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            FhirId vid,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        vRead,
    TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        update,
    TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        patch,
    TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        delete,
    TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        create,
    TResult Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            bool usePost,
            RestfulRequest restfulRequest,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        search,
    TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        searchAll,
    TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Mode mode,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        capabilities,
    TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        transaction,
    TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        batch,
    TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        history,
    TResult Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        historyType,
    TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        historyAll,
    TResult Function(
            Uri base,
            R4ResourceType? type,
            String? id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Parameters? fhirParameter,
            String operation,
            bool usePost,
            bool useFormData,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        operation,
    required TResult orElse(),
  }) {
    if (transaction != null) {
      return transaction(base, pretty, summary, format, elements, parameters,
          bundle, mimeType, accept, client, headers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FhirReadRequest value) read,
    required TResult Function(FhirVReadRequest value) vRead,
    required TResult Function(FhirUpdateRequest value) update,
    required TResult Function(FhirPatchRequest value) patch,
    required TResult Function(FhirDeleteRequest value) delete,
    required TResult Function(FhirCreateRequest value) create,
    required TResult Function(FhirSearchRequest value) search,
    required TResult Function(FhirSearchAllRequest value) searchAll,
    required TResult Function(FhirCapabilitiesRequest value) capabilities,
    required TResult Function(FhirTransactionRequest value) transaction,
    required TResult Function(FhirBatchRequest value) batch,
    required TResult Function(FhirHistoryRequest value) history,
    required TResult Function(FhirHistoryTypeRequest value) historyType,
    required TResult Function(FhirHistoryAllRequest value) historyAll,
    required TResult Function(FhirOperationRequest value) operation,
  }) {
    return transaction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FhirReadRequest value)? read,
    TResult? Function(FhirVReadRequest value)? vRead,
    TResult? Function(FhirUpdateRequest value)? update,
    TResult? Function(FhirPatchRequest value)? patch,
    TResult? Function(FhirDeleteRequest value)? delete,
    TResult? Function(FhirCreateRequest value)? create,
    TResult? Function(FhirSearchRequest value)? search,
    TResult? Function(FhirSearchAllRequest value)? searchAll,
    TResult? Function(FhirCapabilitiesRequest value)? capabilities,
    TResult? Function(FhirTransactionRequest value)? transaction,
    TResult? Function(FhirBatchRequest value)? batch,
    TResult? Function(FhirHistoryRequest value)? history,
    TResult? Function(FhirHistoryTypeRequest value)? historyType,
    TResult? Function(FhirHistoryAllRequest value)? historyAll,
    TResult? Function(FhirOperationRequest value)? operation,
  }) {
    return transaction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FhirReadRequest value)? read,
    TResult Function(FhirVReadRequest value)? vRead,
    TResult Function(FhirUpdateRequest value)? update,
    TResult Function(FhirPatchRequest value)? patch,
    TResult Function(FhirDeleteRequest value)? delete,
    TResult Function(FhirCreateRequest value)? create,
    TResult Function(FhirSearchRequest value)? search,
    TResult Function(FhirSearchAllRequest value)? searchAll,
    TResult Function(FhirCapabilitiesRequest value)? capabilities,
    TResult Function(FhirTransactionRequest value)? transaction,
    TResult Function(FhirBatchRequest value)? batch,
    TResult Function(FhirHistoryRequest value)? history,
    TResult Function(FhirHistoryTypeRequest value)? historyType,
    TResult Function(FhirHistoryAllRequest value)? historyAll,
    TResult Function(FhirOperationRequest value)? operation,
    required TResult orElse(),
  }) {
    if (transaction != null) {
      return transaction(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FhirTransactionRequestImplToJson(
      this,
    );
  }
}

abstract class FhirTransactionRequest extends FhirRequest {
  factory FhirTransactionRequest(
      {required final Uri base,
      final bool? pretty,
      final Summary summary,
      final String? format,
      final List<String> elements,
      final List<String> parameters,
      required final Bundle bundle,
      final SupportedMimeType? mimeType,
      final String accept,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final Client? client,
      final Map<String, String>? headers}) = _$FhirTransactionRequestImpl;
  FhirTransactionRequest._() : super._();

  factory FhirTransactionRequest.fromJson(Map<String, dynamic> json) =
      _$FhirTransactionRequestImpl.fromJson;

  @override

  /// [base] - the base URI for the FHIR server
  Uri get base;
  @override

  /// [pretty] - pretty print the json formatting in the response
  bool? get pretty;
  @override

  /// [summary] - do you want the result to be a summary
  Summary get summary;
  @override

  /// [format] - Possible formats are: json, json+fhir or fhir+json
  /// (would not request XML as this library doesn't work with XML)
  String? get format;
  @override

  /// [elements] - elements you need to pass in
  List<String> get elements;
  @override

  /// [parameters] - any extra parameters
  List<String> get parameters;

  /// [bundle] - the bundle to be uploaded
  Bundle get bundle;
  @override

  /// [mimeType] - specify the MimeType in the Header - this should be fhir+json
  ///   but there are some older systems that won't accept that
  SupportedMimeType? get mimeType;
  @override

  /// [accept] - this will default to fhir+json just so it will stop sending
  /// me XML - I hate XML
  String get accept;
  @override

  /// [client] - if there's a specific client that you're going to be using
// ignore: invalid_annotation_target
  @JsonKey(includeFromJson: false, includeToJson: false)
  Client? get client;
  @override

  /// [headers] - because there are some times it's easier to incldue the
  /// headers in the object instead of only passing it in with the
  /// request
  Map<String, String>? get headers;
  @override
  @JsonKey(ignore: true)
  _$$FhirTransactionRequestImplCopyWith<_$FhirTransactionRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FhirBatchRequestImplCopyWith<$Res>
    implements $FhirRequestCopyWith<$Res> {
  factory _$$FhirBatchRequestImplCopyWith(_$FhirBatchRequestImpl value,
          $Res Function(_$FhirBatchRequestImpl) then) =
      __$$FhirBatchRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Uri base,
      bool? pretty,
      Summary summary,
      String? format,
      List<String> elements,
      List<String> parameters,
      Bundle bundle,
      SupportedMimeType? mimeType,
      String accept,
      @JsonKey(includeFromJson: false, includeToJson: false) Client? client,
      Map<String, String>? headers});

  $BundleCopyWith<$Res> get bundle;
}

/// @nodoc
class __$$FhirBatchRequestImplCopyWithImpl<$Res>
    extends _$FhirRequestCopyWithImpl<$Res, _$FhirBatchRequestImpl>
    implements _$$FhirBatchRequestImplCopyWith<$Res> {
  __$$FhirBatchRequestImplCopyWithImpl(_$FhirBatchRequestImpl _value,
      $Res Function(_$FhirBatchRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? base = null,
    Object? pretty = freezed,
    Object? summary = null,
    Object? format = freezed,
    Object? elements = null,
    Object? parameters = null,
    Object? bundle = null,
    Object? mimeType = freezed,
    Object? accept = null,
    Object? client = freezed,
    Object? headers = freezed,
  }) {
    return _then(_$FhirBatchRequestImpl(
      base: null == base
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as Uri,
      pretty: freezed == pretty
          ? _value.pretty
          : pretty // ignore: cast_nullable_to_non_nullable
              as bool?,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as Summary,
      format: freezed == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String?,
      elements: null == elements
          ? _value._elements
          : elements // ignore: cast_nullable_to_non_nullable
              as List<String>,
      parameters: null == parameters
          ? _value._parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as List<String>,
      bundle: null == bundle
          ? _value.bundle
          : bundle // ignore: cast_nullable_to_non_nullable
              as Bundle,
      mimeType: freezed == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as SupportedMimeType?,
      accept: null == accept
          ? _value.accept
          : accept // ignore: cast_nullable_to_non_nullable
              as String,
      client: freezed == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as Client?,
      headers: freezed == headers
          ? _value._headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BundleCopyWith<$Res> get bundle {
    return $BundleCopyWith<$Res>(_value.bundle, (value) {
      return _then(_value.copyWith(bundle: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$FhirBatchRequestImpl extends FhirBatchRequest {
  _$FhirBatchRequestImpl(
      {required this.base,
      this.pretty,
      this.summary = Summary.none,
      this.format = 'json',
      final List<String> elements = const <String>[],
      final List<String> parameters = const <String>[],
      required this.bundle,
      this.mimeType,
      this.accept = 'application/fhir+json',
      @JsonKey(includeFromJson: false, includeToJson: false) this.client,
      final Map<String, String>? headers,
      final String? $type})
      : _elements = elements,
        _parameters = parameters,
        _headers = headers,
        $type = $type ?? 'batch',
        super._();

  factory _$FhirBatchRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$FhirBatchRequestImplFromJson(json);

  /// [base] - the base URI for the FHIR server
  @override
  final Uri base;

  /// [pretty] - pretty print the json formatting in the response
  @override
  final bool? pretty;

  /// [summary] - do you want the result to be a summary
  @override
  @JsonKey()
  final Summary summary;

  /// [format] - Possible formats are: json, json+fhir or fhir+json
  /// (would not request XML as this library doesn't work with XML)
  @override
  @JsonKey()
  final String? format;

  /// [elements] - elements you need to pass in
  final List<String> _elements;

  /// [elements] - elements you need to pass in
  @override
  @JsonKey()
  List<String> get elements {
    if (_elements is EqualUnmodifiableListView) return _elements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_elements);
  }

  /// [parameters] - any extra parameters
  final List<String> _parameters;

  /// [parameters] - any extra parameters
  @override
  @JsonKey()
  List<String> get parameters {
    if (_parameters is EqualUnmodifiableListView) return _parameters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_parameters);
  }

  /// [bundle] - the bundle to be uploaded
  @override
  final Bundle bundle;

  /// [mimeType] - specify the MimeType in the Header - this should be fhir+json
  ///   but there are some older systems that won't accept that
  @override
  final SupportedMimeType? mimeType;

  /// [accept] - this will default to fhir+json just so it will stop sending
  /// me XML - I hate XML
  @override
  @JsonKey()
  final String accept;

  /// [client] - if there's a specific client that you're going to be using
// ignore: invalid_annotation_target
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final Client? client;

  /// [headers] - because there are some times it's easier to incldue the
  /// headers in the object instead of only passing it in with the
  /// request
  final Map<String, String>? _headers;

  /// [headers] - because there are some times it's easier to incldue the
  /// headers in the object instead of only passing it in with the
  /// request
  @override
  Map<String, String>? get headers {
    final value = _headers;
    if (value == null) return null;
    if (_headers is EqualUnmodifiableMapView) return _headers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FhirRequest.batch(base: $base, pretty: $pretty, summary: $summary, format: $format, elements: $elements, parameters: $parameters, bundle: $bundle, mimeType: $mimeType, accept: $accept, client: $client, headers: $headers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FhirBatchRequestImpl &&
            (identical(other.base, base) || other.base == base) &&
            (identical(other.pretty, pretty) || other.pretty == pretty) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.format, format) || other.format == format) &&
            const DeepCollectionEquality().equals(other._elements, _elements) &&
            const DeepCollectionEquality()
                .equals(other._parameters, _parameters) &&
            (identical(other.bundle, bundle) || other.bundle == bundle) &&
            (identical(other.mimeType, mimeType) ||
                other.mimeType == mimeType) &&
            (identical(other.accept, accept) || other.accept == accept) &&
            (identical(other.client, client) || other.client == client) &&
            const DeepCollectionEquality().equals(other._headers, _headers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      base,
      pretty,
      summary,
      format,
      const DeepCollectionEquality().hash(_elements),
      const DeepCollectionEquality().hash(_parameters),
      bundle,
      mimeType,
      accept,
      client,
      const DeepCollectionEquality().hash(_headers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FhirBatchRequestImplCopyWith<_$FhirBatchRequestImpl> get copyWith =>
      __$$FhirBatchRequestImplCopyWithImpl<_$FhirBatchRequestImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        read,
    required TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            FhirId vid,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        vRead,
    required TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        update,
    required TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        patch,
    required TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        delete,
    required TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        create,
    required TResult Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            bool usePost,
            RestfulRequest restfulRequest,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        search,
    required TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        searchAll,
    required TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Mode mode,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        capabilities,
    required TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        transaction,
    required TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        batch,
    required TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        history,
    required TResult Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        historyType,
    required TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        historyAll,
    required TResult Function(
            Uri base,
            R4ResourceType? type,
            String? id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Parameters? fhirParameter,
            String operation,
            bool usePost,
            bool useFormData,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        operation,
  }) {
    return batch(base, pretty, summary, format, elements, parameters, bundle,
        mimeType, accept, client, headers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        read,
    TResult? Function(
            Uri base,
            R4ResourceType type,
            String id,
            FhirId vid,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        vRead,
    TResult? Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        update,
    TResult? Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        patch,
    TResult? Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        delete,
    TResult? Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        create,
    TResult? Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            bool usePost,
            RestfulRequest restfulRequest,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        search,
    TResult? Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        searchAll,
    TResult? Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Mode mode,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        capabilities,
    TResult? Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        transaction,
    TResult? Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        batch,
    TResult? Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        history,
    TResult? Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        historyType,
    TResult? Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        historyAll,
    TResult? Function(
            Uri base,
            R4ResourceType? type,
            String? id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Parameters? fhirParameter,
            String operation,
            bool usePost,
            bool useFormData,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        operation,
  }) {
    return batch?.call(base, pretty, summary, format, elements, parameters,
        bundle, mimeType, accept, client, headers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        read,
    TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            FhirId vid,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        vRead,
    TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        update,
    TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        patch,
    TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        delete,
    TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        create,
    TResult Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            bool usePost,
            RestfulRequest restfulRequest,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        search,
    TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        searchAll,
    TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Mode mode,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        capabilities,
    TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        transaction,
    TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        batch,
    TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        history,
    TResult Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        historyType,
    TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        historyAll,
    TResult Function(
            Uri base,
            R4ResourceType? type,
            String? id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Parameters? fhirParameter,
            String operation,
            bool usePost,
            bool useFormData,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        operation,
    required TResult orElse(),
  }) {
    if (batch != null) {
      return batch(base, pretty, summary, format, elements, parameters, bundle,
          mimeType, accept, client, headers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FhirReadRequest value) read,
    required TResult Function(FhirVReadRequest value) vRead,
    required TResult Function(FhirUpdateRequest value) update,
    required TResult Function(FhirPatchRequest value) patch,
    required TResult Function(FhirDeleteRequest value) delete,
    required TResult Function(FhirCreateRequest value) create,
    required TResult Function(FhirSearchRequest value) search,
    required TResult Function(FhirSearchAllRequest value) searchAll,
    required TResult Function(FhirCapabilitiesRequest value) capabilities,
    required TResult Function(FhirTransactionRequest value) transaction,
    required TResult Function(FhirBatchRequest value) batch,
    required TResult Function(FhirHistoryRequest value) history,
    required TResult Function(FhirHistoryTypeRequest value) historyType,
    required TResult Function(FhirHistoryAllRequest value) historyAll,
    required TResult Function(FhirOperationRequest value) operation,
  }) {
    return batch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FhirReadRequest value)? read,
    TResult? Function(FhirVReadRequest value)? vRead,
    TResult? Function(FhirUpdateRequest value)? update,
    TResult? Function(FhirPatchRequest value)? patch,
    TResult? Function(FhirDeleteRequest value)? delete,
    TResult? Function(FhirCreateRequest value)? create,
    TResult? Function(FhirSearchRequest value)? search,
    TResult? Function(FhirSearchAllRequest value)? searchAll,
    TResult? Function(FhirCapabilitiesRequest value)? capabilities,
    TResult? Function(FhirTransactionRequest value)? transaction,
    TResult? Function(FhirBatchRequest value)? batch,
    TResult? Function(FhirHistoryRequest value)? history,
    TResult? Function(FhirHistoryTypeRequest value)? historyType,
    TResult? Function(FhirHistoryAllRequest value)? historyAll,
    TResult? Function(FhirOperationRequest value)? operation,
  }) {
    return batch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FhirReadRequest value)? read,
    TResult Function(FhirVReadRequest value)? vRead,
    TResult Function(FhirUpdateRequest value)? update,
    TResult Function(FhirPatchRequest value)? patch,
    TResult Function(FhirDeleteRequest value)? delete,
    TResult Function(FhirCreateRequest value)? create,
    TResult Function(FhirSearchRequest value)? search,
    TResult Function(FhirSearchAllRequest value)? searchAll,
    TResult Function(FhirCapabilitiesRequest value)? capabilities,
    TResult Function(FhirTransactionRequest value)? transaction,
    TResult Function(FhirBatchRequest value)? batch,
    TResult Function(FhirHistoryRequest value)? history,
    TResult Function(FhirHistoryTypeRequest value)? historyType,
    TResult Function(FhirHistoryAllRequest value)? historyAll,
    TResult Function(FhirOperationRequest value)? operation,
    required TResult orElse(),
  }) {
    if (batch != null) {
      return batch(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FhirBatchRequestImplToJson(
      this,
    );
  }
}

abstract class FhirBatchRequest extends FhirRequest {
  factory FhirBatchRequest(
      {required final Uri base,
      final bool? pretty,
      final Summary summary,
      final String? format,
      final List<String> elements,
      final List<String> parameters,
      required final Bundle bundle,
      final SupportedMimeType? mimeType,
      final String accept,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final Client? client,
      final Map<String, String>? headers}) = _$FhirBatchRequestImpl;
  FhirBatchRequest._() : super._();

  factory FhirBatchRequest.fromJson(Map<String, dynamic> json) =
      _$FhirBatchRequestImpl.fromJson;

  @override

  /// [base] - the base URI for the FHIR server
  Uri get base;
  @override

  /// [pretty] - pretty print the json formatting in the response
  bool? get pretty;
  @override

  /// [summary] - do you want the result to be a summary
  Summary get summary;
  @override

  /// [format] - Possible formats are: json, json+fhir or fhir+json
  /// (would not request XML as this library doesn't work with XML)
  String? get format;
  @override

  /// [elements] - elements you need to pass in
  List<String> get elements;
  @override

  /// [parameters] - any extra parameters
  List<String> get parameters;

  /// [bundle] - the bundle to be uploaded
  Bundle get bundle;
  @override

  /// [mimeType] - specify the MimeType in the Header - this should be fhir+json
  ///   but there are some older systems that won't accept that
  SupportedMimeType? get mimeType;
  @override

  /// [accept] - this will default to fhir+json just so it will stop sending
  /// me XML - I hate XML
  String get accept;
  @override

  /// [client] - if there's a specific client that you're going to be using
// ignore: invalid_annotation_target
  @JsonKey(includeFromJson: false, includeToJson: false)
  Client? get client;
  @override

  /// [headers] - because there are some times it's easier to incldue the
  /// headers in the object instead of only passing it in with the
  /// request
  Map<String, String>? get headers;
  @override
  @JsonKey(ignore: true)
  _$$FhirBatchRequestImplCopyWith<_$FhirBatchRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FhirHistoryRequestImplCopyWith<$Res>
    implements $FhirRequestCopyWith<$Res> {
  factory _$$FhirHistoryRequestImplCopyWith(_$FhirHistoryRequestImpl value,
          $Res Function(_$FhirHistoryRequestImpl) then) =
      __$$FhirHistoryRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Uri base,
      R4ResourceType type,
      String id,
      bool? pretty,
      Summary summary,
      String? format,
      List<String> elements,
      List<String> parameters,
      int? count,
      FhirInstant? since,
      FhirDateTime? at,
      String? reference,
      SupportedMimeType? mimeType,
      String accept,
      @JsonKey(includeFromJson: false, includeToJson: false) Client? client,
      Map<String, String>? headers});
}

/// @nodoc
class __$$FhirHistoryRequestImplCopyWithImpl<$Res>
    extends _$FhirRequestCopyWithImpl<$Res, _$FhirHistoryRequestImpl>
    implements _$$FhirHistoryRequestImplCopyWith<$Res> {
  __$$FhirHistoryRequestImplCopyWithImpl(_$FhirHistoryRequestImpl _value,
      $Res Function(_$FhirHistoryRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? base = null,
    Object? type = null,
    Object? id = null,
    Object? pretty = freezed,
    Object? summary = null,
    Object? format = freezed,
    Object? elements = null,
    Object? parameters = null,
    Object? count = freezed,
    Object? since = freezed,
    Object? at = freezed,
    Object? reference = freezed,
    Object? mimeType = freezed,
    Object? accept = null,
    Object? client = freezed,
    Object? headers = freezed,
  }) {
    return _then(_$FhirHistoryRequestImpl(
      base: null == base
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as Uri,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as R4ResourceType,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      pretty: freezed == pretty
          ? _value.pretty
          : pretty // ignore: cast_nullable_to_non_nullable
              as bool?,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as Summary,
      format: freezed == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String?,
      elements: null == elements
          ? _value._elements
          : elements // ignore: cast_nullable_to_non_nullable
              as List<String>,
      parameters: null == parameters
          ? _value._parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as List<String>,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      since: freezed == since
          ? _value.since
          : since // ignore: cast_nullable_to_non_nullable
              as FhirInstant?,
      at: freezed == at
          ? _value.at
          : at // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      reference: freezed == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String?,
      mimeType: freezed == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as SupportedMimeType?,
      accept: null == accept
          ? _value.accept
          : accept // ignore: cast_nullable_to_non_nullable
              as String,
      client: freezed == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as Client?,
      headers: freezed == headers
          ? _value._headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FhirHistoryRequestImpl extends FhirHistoryRequest {
  _$FhirHistoryRequestImpl(
      {required this.base,
      required this.type,
      required this.id,
      this.pretty,
      this.summary = Summary.none,
      this.format = 'json',
      final List<String> elements = const <String>[],
      final List<String> parameters = const <String>[],
      this.count,
      this.since,
      this.at,
      this.reference,
      this.mimeType,
      this.accept = 'application/fhir+json',
      @JsonKey(includeFromJson: false, includeToJson: false) this.client,
      final Map<String, String>? headers,
      final String? $type})
      : _elements = elements,
        _parameters = parameters,
        _headers = headers,
        $type = $type ?? 'history',
        super._();

  factory _$FhirHistoryRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$FhirHistoryRequestImplFromJson(json);

  /// [base] - the base URI for the FHIR server
  @override
  final Uri base;

  /// [type] - the type of resource you're looking for
  @override
  final R4ResourceType type;

  /// [id] - the id for the resource
  @override
  final String id;

  /// [pretty] - pretty print the json formatting in the response
  @override
  final bool? pretty;

  /// [summary] - do you want the result to be a summary
  @override
  @JsonKey()
  final Summary summary;

  /// [format] - Possible formats are: json, json+fhir or fhir+json
  /// (would not request XML as this library doesn't work with XML)
  @override
  @JsonKey()
  final String? format;

  /// [elements] - elements you need to pass in
  final List<String> _elements;

  /// [elements] - elements you need to pass in
  @override
  @JsonKey()
  List<String> get elements {
    if (_elements is EqualUnmodifiableListView) return _elements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_elements);
  }

  /// [parameters] - any extra parameters
  final List<String> _parameters;

  /// [parameters] - any extra parameters
  @override
  @JsonKey()
  List<String> get parameters {
    if (_parameters is EqualUnmodifiableListView) return _parameters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_parameters);
  }

  /// [count] - The maximum number of search results on a page, excluding related
  ///   resources included by _include or _revinclude or OperationOutcomes. The
  ///   server is not bound to return the number requested, but cannot return more
  @override
  final int? count;

  /// [since] - Only include resource versions that were created at or after the
  ///   given instant in time
  @override
  final FhirInstant? since;

  /// [at] - Only include resource versions that were current at some point
  ///   during the time period specified in the date time value
  @override
  final FhirDateTime? at;

  /// [reference] - Only include resource versions that are referenced in
  ///   the specified list
  @override
  final String? reference;

  /// [mimeType] - specify the MimeType in the Header - this should be fhir+json
  ///   but there are some older systems that won't accept that
  @override
  final SupportedMimeType? mimeType;

  /// [accept] - this will default to fhir+json just so it will stop sending
  /// me XML - I hate XML
  @override
  @JsonKey()
  final String accept;

  /// [client] - if there's a specific client that you're going to be using
// ignore: invalid_annotation_target
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final Client? client;

  /// [headers] - because there are some times it's easier to incldue the
  /// headers in the object instead of only passing it in with the
  /// request
  final Map<String, String>? _headers;

  /// [headers] - because there are some times it's easier to incldue the
  /// headers in the object instead of only passing it in with the
  /// request
  @override
  Map<String, String>? get headers {
    final value = _headers;
    if (value == null) return null;
    if (_headers is EqualUnmodifiableMapView) return _headers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FhirRequest.history(base: $base, type: $type, id: $id, pretty: $pretty, summary: $summary, format: $format, elements: $elements, parameters: $parameters, count: $count, since: $since, at: $at, reference: $reference, mimeType: $mimeType, accept: $accept, client: $client, headers: $headers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FhirHistoryRequestImpl &&
            (identical(other.base, base) || other.base == base) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.pretty, pretty) || other.pretty == pretty) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.format, format) || other.format == format) &&
            const DeepCollectionEquality().equals(other._elements, _elements) &&
            const DeepCollectionEquality()
                .equals(other._parameters, _parameters) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.since, since) || other.since == since) &&
            (identical(other.at, at) || other.at == at) &&
            (identical(other.reference, reference) ||
                other.reference == reference) &&
            (identical(other.mimeType, mimeType) ||
                other.mimeType == mimeType) &&
            (identical(other.accept, accept) || other.accept == accept) &&
            (identical(other.client, client) || other.client == client) &&
            const DeepCollectionEquality().equals(other._headers, _headers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      base,
      type,
      id,
      pretty,
      summary,
      format,
      const DeepCollectionEquality().hash(_elements),
      const DeepCollectionEquality().hash(_parameters),
      count,
      since,
      at,
      reference,
      mimeType,
      accept,
      client,
      const DeepCollectionEquality().hash(_headers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FhirHistoryRequestImplCopyWith<_$FhirHistoryRequestImpl> get copyWith =>
      __$$FhirHistoryRequestImplCopyWithImpl<_$FhirHistoryRequestImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        read,
    required TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            FhirId vid,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        vRead,
    required TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        update,
    required TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        patch,
    required TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        delete,
    required TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        create,
    required TResult Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            bool usePost,
            RestfulRequest restfulRequest,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        search,
    required TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        searchAll,
    required TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Mode mode,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        capabilities,
    required TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        transaction,
    required TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        batch,
    required TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        history,
    required TResult Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        historyType,
    required TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        historyAll,
    required TResult Function(
            Uri base,
            R4ResourceType? type,
            String? id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Parameters? fhirParameter,
            String operation,
            bool usePost,
            bool useFormData,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        operation,
  }) {
    return history(
        base,
        type,
        id,
        pretty,
        summary,
        format,
        elements,
        parameters,
        count,
        since,
        at,
        reference,
        mimeType,
        accept,
        client,
        headers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        read,
    TResult? Function(
            Uri base,
            R4ResourceType type,
            String id,
            FhirId vid,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        vRead,
    TResult? Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        update,
    TResult? Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        patch,
    TResult? Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        delete,
    TResult? Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        create,
    TResult? Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            bool usePost,
            RestfulRequest restfulRequest,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        search,
    TResult? Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        searchAll,
    TResult? Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Mode mode,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        capabilities,
    TResult? Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        transaction,
    TResult? Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        batch,
    TResult? Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        history,
    TResult? Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        historyType,
    TResult? Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        historyAll,
    TResult? Function(
            Uri base,
            R4ResourceType? type,
            String? id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Parameters? fhirParameter,
            String operation,
            bool usePost,
            bool useFormData,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        operation,
  }) {
    return history?.call(
        base,
        type,
        id,
        pretty,
        summary,
        format,
        elements,
        parameters,
        count,
        since,
        at,
        reference,
        mimeType,
        accept,
        client,
        headers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        read,
    TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            FhirId vid,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        vRead,
    TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        update,
    TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        patch,
    TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        delete,
    TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        create,
    TResult Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            bool usePost,
            RestfulRequest restfulRequest,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        search,
    TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        searchAll,
    TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Mode mode,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        capabilities,
    TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        transaction,
    TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        batch,
    TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        history,
    TResult Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        historyType,
    TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        historyAll,
    TResult Function(
            Uri base,
            R4ResourceType? type,
            String? id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Parameters? fhirParameter,
            String operation,
            bool usePost,
            bool useFormData,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        operation,
    required TResult orElse(),
  }) {
    if (history != null) {
      return history(
          base,
          type,
          id,
          pretty,
          summary,
          format,
          elements,
          parameters,
          count,
          since,
          at,
          reference,
          mimeType,
          accept,
          client,
          headers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FhirReadRequest value) read,
    required TResult Function(FhirVReadRequest value) vRead,
    required TResult Function(FhirUpdateRequest value) update,
    required TResult Function(FhirPatchRequest value) patch,
    required TResult Function(FhirDeleteRequest value) delete,
    required TResult Function(FhirCreateRequest value) create,
    required TResult Function(FhirSearchRequest value) search,
    required TResult Function(FhirSearchAllRequest value) searchAll,
    required TResult Function(FhirCapabilitiesRequest value) capabilities,
    required TResult Function(FhirTransactionRequest value) transaction,
    required TResult Function(FhirBatchRequest value) batch,
    required TResult Function(FhirHistoryRequest value) history,
    required TResult Function(FhirHistoryTypeRequest value) historyType,
    required TResult Function(FhirHistoryAllRequest value) historyAll,
    required TResult Function(FhirOperationRequest value) operation,
  }) {
    return history(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FhirReadRequest value)? read,
    TResult? Function(FhirVReadRequest value)? vRead,
    TResult? Function(FhirUpdateRequest value)? update,
    TResult? Function(FhirPatchRequest value)? patch,
    TResult? Function(FhirDeleteRequest value)? delete,
    TResult? Function(FhirCreateRequest value)? create,
    TResult? Function(FhirSearchRequest value)? search,
    TResult? Function(FhirSearchAllRequest value)? searchAll,
    TResult? Function(FhirCapabilitiesRequest value)? capabilities,
    TResult? Function(FhirTransactionRequest value)? transaction,
    TResult? Function(FhirBatchRequest value)? batch,
    TResult? Function(FhirHistoryRequest value)? history,
    TResult? Function(FhirHistoryTypeRequest value)? historyType,
    TResult? Function(FhirHistoryAllRequest value)? historyAll,
    TResult? Function(FhirOperationRequest value)? operation,
  }) {
    return history?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FhirReadRequest value)? read,
    TResult Function(FhirVReadRequest value)? vRead,
    TResult Function(FhirUpdateRequest value)? update,
    TResult Function(FhirPatchRequest value)? patch,
    TResult Function(FhirDeleteRequest value)? delete,
    TResult Function(FhirCreateRequest value)? create,
    TResult Function(FhirSearchRequest value)? search,
    TResult Function(FhirSearchAllRequest value)? searchAll,
    TResult Function(FhirCapabilitiesRequest value)? capabilities,
    TResult Function(FhirTransactionRequest value)? transaction,
    TResult Function(FhirBatchRequest value)? batch,
    TResult Function(FhirHistoryRequest value)? history,
    TResult Function(FhirHistoryTypeRequest value)? historyType,
    TResult Function(FhirHistoryAllRequest value)? historyAll,
    TResult Function(FhirOperationRequest value)? operation,
    required TResult orElse(),
  }) {
    if (history != null) {
      return history(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FhirHistoryRequestImplToJson(
      this,
    );
  }
}

abstract class FhirHistoryRequest extends FhirRequest {
  factory FhirHistoryRequest(
      {required final Uri base,
      required final R4ResourceType type,
      required final String id,
      final bool? pretty,
      final Summary summary,
      final String? format,
      final List<String> elements,
      final List<String> parameters,
      final int? count,
      final FhirInstant? since,
      final FhirDateTime? at,
      final String? reference,
      final SupportedMimeType? mimeType,
      final String accept,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final Client? client,
      final Map<String, String>? headers}) = _$FhirHistoryRequestImpl;
  FhirHistoryRequest._() : super._();

  factory FhirHistoryRequest.fromJson(Map<String, dynamic> json) =
      _$FhirHistoryRequestImpl.fromJson;

  @override

  /// [base] - the base URI for the FHIR server
  Uri get base;

  /// [type] - the type of resource you're looking for
  R4ResourceType get type;

  /// [id] - the id for the resource
  String get id;
  @override

  /// [pretty] - pretty print the json formatting in the response
  bool? get pretty;
  @override

  /// [summary] - do you want the result to be a summary
  Summary get summary;
  @override

  /// [format] - Possible formats are: json, json+fhir or fhir+json
  /// (would not request XML as this library doesn't work with XML)
  String? get format;
  @override

  /// [elements] - elements you need to pass in
  List<String> get elements;
  @override

  /// [parameters] - any extra parameters
  List<String> get parameters;

  /// [count] - The maximum number of search results on a page, excluding related
  ///   resources included by _include or _revinclude or OperationOutcomes. The
  ///   server is not bound to return the number requested, but cannot return more
  int? get count;

  /// [since] - Only include resource versions that were created at or after the
  ///   given instant in time
  FhirInstant? get since;

  /// [at] - Only include resource versions that were current at some point
  ///   during the time period specified in the date time value
  FhirDateTime? get at;

  /// [reference] - Only include resource versions that are referenced in
  ///   the specified list
  String? get reference;
  @override

  /// [mimeType] - specify the MimeType in the Header - this should be fhir+json
  ///   but there are some older systems that won't accept that
  SupportedMimeType? get mimeType;
  @override

  /// [accept] - this will default to fhir+json just so it will stop sending
  /// me XML - I hate XML
  String get accept;
  @override

  /// [client] - if there's a specific client that you're going to be using
// ignore: invalid_annotation_target
  @JsonKey(includeFromJson: false, includeToJson: false)
  Client? get client;
  @override

  /// [headers] - because there are some times it's easier to incldue the
  /// headers in the object instead of only passing it in with the
  /// request
  Map<String, String>? get headers;
  @override
  @JsonKey(ignore: true)
  _$$FhirHistoryRequestImplCopyWith<_$FhirHistoryRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FhirHistoryTypeRequestImplCopyWith<$Res>
    implements $FhirRequestCopyWith<$Res> {
  factory _$$FhirHistoryTypeRequestImplCopyWith(
          _$FhirHistoryTypeRequestImpl value,
          $Res Function(_$FhirHistoryTypeRequestImpl) then) =
      __$$FhirHistoryTypeRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Uri base,
      R4ResourceType type,
      bool? pretty,
      Summary summary,
      String? format,
      List<String> elements,
      List<String> parameters,
      int? count,
      FhirInstant? since,
      FhirDateTime? at,
      String? reference,
      SupportedMimeType? mimeType,
      String accept,
      @JsonKey(includeFromJson: false, includeToJson: false) Client? client,
      Map<String, String>? headers});
}

/// @nodoc
class __$$FhirHistoryTypeRequestImplCopyWithImpl<$Res>
    extends _$FhirRequestCopyWithImpl<$Res, _$FhirHistoryTypeRequestImpl>
    implements _$$FhirHistoryTypeRequestImplCopyWith<$Res> {
  __$$FhirHistoryTypeRequestImplCopyWithImpl(
      _$FhirHistoryTypeRequestImpl _value,
      $Res Function(_$FhirHistoryTypeRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? base = null,
    Object? type = null,
    Object? pretty = freezed,
    Object? summary = null,
    Object? format = freezed,
    Object? elements = null,
    Object? parameters = null,
    Object? count = freezed,
    Object? since = freezed,
    Object? at = freezed,
    Object? reference = freezed,
    Object? mimeType = freezed,
    Object? accept = null,
    Object? client = freezed,
    Object? headers = freezed,
  }) {
    return _then(_$FhirHistoryTypeRequestImpl(
      base: null == base
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as Uri,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as R4ResourceType,
      pretty: freezed == pretty
          ? _value.pretty
          : pretty // ignore: cast_nullable_to_non_nullable
              as bool?,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as Summary,
      format: freezed == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String?,
      elements: null == elements
          ? _value._elements
          : elements // ignore: cast_nullable_to_non_nullable
              as List<String>,
      parameters: null == parameters
          ? _value._parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as List<String>,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      since: freezed == since
          ? _value.since
          : since // ignore: cast_nullable_to_non_nullable
              as FhirInstant?,
      at: freezed == at
          ? _value.at
          : at // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      reference: freezed == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String?,
      mimeType: freezed == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as SupportedMimeType?,
      accept: null == accept
          ? _value.accept
          : accept // ignore: cast_nullable_to_non_nullable
              as String,
      client: freezed == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as Client?,
      headers: freezed == headers
          ? _value._headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FhirHistoryTypeRequestImpl extends FhirHistoryTypeRequest {
  _$FhirHistoryTypeRequestImpl(
      {required this.base,
      required this.type,
      this.pretty,
      this.summary = Summary.none,
      this.format = 'json',
      final List<String> elements = const <String>[],
      final List<String> parameters = const <String>[],
      this.count,
      this.since,
      this.at,
      this.reference,
      this.mimeType,
      this.accept = 'application/fhir+json',
      @JsonKey(includeFromJson: false, includeToJson: false) this.client,
      final Map<String, String>? headers,
      final String? $type})
      : _elements = elements,
        _parameters = parameters,
        _headers = headers,
        $type = $type ?? 'historyType',
        super._();

  factory _$FhirHistoryTypeRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$FhirHistoryTypeRequestImplFromJson(json);

  /// [base] - the base URI for the FHIR server
  @override
  final Uri base;

  /// [type] - the type of resource you're looking for
  @override
  final R4ResourceType type;

  /// [pretty] - pretty print the json formatting in the response
  @override
  final bool? pretty;

  /// [summary] - do you want the result to be a summary
  @override
  @JsonKey()
  final Summary summary;

  /// [format] - Possible formats are: json, json+fhir or fhir+json
  /// (would not request XML as this library doesn't work with XML)
  @override
  @JsonKey()
  final String? format;

  /// [elements] - elements you need to pass in
  final List<String> _elements;

  /// [elements] - elements you need to pass in
  @override
  @JsonKey()
  List<String> get elements {
    if (_elements is EqualUnmodifiableListView) return _elements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_elements);
  }

  /// [parameters] - any extra parameters
  final List<String> _parameters;

  /// [parameters] - any extra parameters
  @override
  @JsonKey()
  List<String> get parameters {
    if (_parameters is EqualUnmodifiableListView) return _parameters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_parameters);
  }

  /// [count] - The maximum number of search results on a page, excluding related
  ///   resources included by _include or _revinclude or OperationOutcomes. The
  ///   server is not bound to return the number requested, but cannot return more
  @override
  final int? count;

  /// [since] - Only include resource versions that were created at or after the
  ///   given instant in time
  @override
  final FhirInstant? since;

  /// [at] - Only include resource versions that were current at some point
  ///   during the time period specified in the date time value
  @override
  final FhirDateTime? at;

  /// [reference] - Only include resource versions that are referenced in
  ///   the specified list
  @override
  final String? reference;

  /// [mimeType] - specify the MimeType in the Header - this should be fhir+json
  ///   but there are some older systems that won't accept that
  @override
  final SupportedMimeType? mimeType;

  /// [accept] - this will default to fhir+json just so it will stop sending
  /// me XML - I hate XML
  @override
  @JsonKey()
  final String accept;

  /// [client] - if there's a specific client that you're going to be using
// ignore: invalid_annotation_target
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final Client? client;

  /// [headers] - because there are some times it's easier to incldue the
  /// headers in the object instead of only passing it in with the
  /// request
  final Map<String, String>? _headers;

  /// [headers] - because there are some times it's easier to incldue the
  /// headers in the object instead of only passing it in with the
  /// request
  @override
  Map<String, String>? get headers {
    final value = _headers;
    if (value == null) return null;
    if (_headers is EqualUnmodifiableMapView) return _headers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FhirRequest.historyType(base: $base, type: $type, pretty: $pretty, summary: $summary, format: $format, elements: $elements, parameters: $parameters, count: $count, since: $since, at: $at, reference: $reference, mimeType: $mimeType, accept: $accept, client: $client, headers: $headers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FhirHistoryTypeRequestImpl &&
            (identical(other.base, base) || other.base == base) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.pretty, pretty) || other.pretty == pretty) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.format, format) || other.format == format) &&
            const DeepCollectionEquality().equals(other._elements, _elements) &&
            const DeepCollectionEquality()
                .equals(other._parameters, _parameters) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.since, since) || other.since == since) &&
            (identical(other.at, at) || other.at == at) &&
            (identical(other.reference, reference) ||
                other.reference == reference) &&
            (identical(other.mimeType, mimeType) ||
                other.mimeType == mimeType) &&
            (identical(other.accept, accept) || other.accept == accept) &&
            (identical(other.client, client) || other.client == client) &&
            const DeepCollectionEquality().equals(other._headers, _headers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      base,
      type,
      pretty,
      summary,
      format,
      const DeepCollectionEquality().hash(_elements),
      const DeepCollectionEquality().hash(_parameters),
      count,
      since,
      at,
      reference,
      mimeType,
      accept,
      client,
      const DeepCollectionEquality().hash(_headers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FhirHistoryTypeRequestImplCopyWith<_$FhirHistoryTypeRequestImpl>
      get copyWith => __$$FhirHistoryTypeRequestImplCopyWithImpl<
          _$FhirHistoryTypeRequestImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        read,
    required TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            FhirId vid,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        vRead,
    required TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        update,
    required TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        patch,
    required TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        delete,
    required TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        create,
    required TResult Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            bool usePost,
            RestfulRequest restfulRequest,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        search,
    required TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        searchAll,
    required TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Mode mode,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        capabilities,
    required TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        transaction,
    required TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        batch,
    required TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        history,
    required TResult Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        historyType,
    required TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        historyAll,
    required TResult Function(
            Uri base,
            R4ResourceType? type,
            String? id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Parameters? fhirParameter,
            String operation,
            bool usePost,
            bool useFormData,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        operation,
  }) {
    return historyType(
        base,
        type,
        pretty,
        summary,
        format,
        elements,
        parameters,
        count,
        since,
        at,
        reference,
        mimeType,
        accept,
        client,
        headers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        read,
    TResult? Function(
            Uri base,
            R4ResourceType type,
            String id,
            FhirId vid,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        vRead,
    TResult? Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        update,
    TResult? Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        patch,
    TResult? Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        delete,
    TResult? Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        create,
    TResult? Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            bool usePost,
            RestfulRequest restfulRequest,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        search,
    TResult? Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        searchAll,
    TResult? Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Mode mode,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        capabilities,
    TResult? Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        transaction,
    TResult? Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        batch,
    TResult? Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        history,
    TResult? Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        historyType,
    TResult? Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        historyAll,
    TResult? Function(
            Uri base,
            R4ResourceType? type,
            String? id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Parameters? fhirParameter,
            String operation,
            bool usePost,
            bool useFormData,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        operation,
  }) {
    return historyType?.call(
        base,
        type,
        pretty,
        summary,
        format,
        elements,
        parameters,
        count,
        since,
        at,
        reference,
        mimeType,
        accept,
        client,
        headers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        read,
    TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            FhirId vid,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        vRead,
    TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        update,
    TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        patch,
    TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        delete,
    TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        create,
    TResult Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            bool usePost,
            RestfulRequest restfulRequest,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        search,
    TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        searchAll,
    TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Mode mode,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        capabilities,
    TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        transaction,
    TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        batch,
    TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        history,
    TResult Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        historyType,
    TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        historyAll,
    TResult Function(
            Uri base,
            R4ResourceType? type,
            String? id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Parameters? fhirParameter,
            String operation,
            bool usePost,
            bool useFormData,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        operation,
    required TResult orElse(),
  }) {
    if (historyType != null) {
      return historyType(
          base,
          type,
          pretty,
          summary,
          format,
          elements,
          parameters,
          count,
          since,
          at,
          reference,
          mimeType,
          accept,
          client,
          headers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FhirReadRequest value) read,
    required TResult Function(FhirVReadRequest value) vRead,
    required TResult Function(FhirUpdateRequest value) update,
    required TResult Function(FhirPatchRequest value) patch,
    required TResult Function(FhirDeleteRequest value) delete,
    required TResult Function(FhirCreateRequest value) create,
    required TResult Function(FhirSearchRequest value) search,
    required TResult Function(FhirSearchAllRequest value) searchAll,
    required TResult Function(FhirCapabilitiesRequest value) capabilities,
    required TResult Function(FhirTransactionRequest value) transaction,
    required TResult Function(FhirBatchRequest value) batch,
    required TResult Function(FhirHistoryRequest value) history,
    required TResult Function(FhirHistoryTypeRequest value) historyType,
    required TResult Function(FhirHistoryAllRequest value) historyAll,
    required TResult Function(FhirOperationRequest value) operation,
  }) {
    return historyType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FhirReadRequest value)? read,
    TResult? Function(FhirVReadRequest value)? vRead,
    TResult? Function(FhirUpdateRequest value)? update,
    TResult? Function(FhirPatchRequest value)? patch,
    TResult? Function(FhirDeleteRequest value)? delete,
    TResult? Function(FhirCreateRequest value)? create,
    TResult? Function(FhirSearchRequest value)? search,
    TResult? Function(FhirSearchAllRequest value)? searchAll,
    TResult? Function(FhirCapabilitiesRequest value)? capabilities,
    TResult? Function(FhirTransactionRequest value)? transaction,
    TResult? Function(FhirBatchRequest value)? batch,
    TResult? Function(FhirHistoryRequest value)? history,
    TResult? Function(FhirHistoryTypeRequest value)? historyType,
    TResult? Function(FhirHistoryAllRequest value)? historyAll,
    TResult? Function(FhirOperationRequest value)? operation,
  }) {
    return historyType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FhirReadRequest value)? read,
    TResult Function(FhirVReadRequest value)? vRead,
    TResult Function(FhirUpdateRequest value)? update,
    TResult Function(FhirPatchRequest value)? patch,
    TResult Function(FhirDeleteRequest value)? delete,
    TResult Function(FhirCreateRequest value)? create,
    TResult Function(FhirSearchRequest value)? search,
    TResult Function(FhirSearchAllRequest value)? searchAll,
    TResult Function(FhirCapabilitiesRequest value)? capabilities,
    TResult Function(FhirTransactionRequest value)? transaction,
    TResult Function(FhirBatchRequest value)? batch,
    TResult Function(FhirHistoryRequest value)? history,
    TResult Function(FhirHistoryTypeRequest value)? historyType,
    TResult Function(FhirHistoryAllRequest value)? historyAll,
    TResult Function(FhirOperationRequest value)? operation,
    required TResult orElse(),
  }) {
    if (historyType != null) {
      return historyType(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FhirHistoryTypeRequestImplToJson(
      this,
    );
  }
}

abstract class FhirHistoryTypeRequest extends FhirRequest {
  factory FhirHistoryTypeRequest(
      {required final Uri base,
      required final R4ResourceType type,
      final bool? pretty,
      final Summary summary,
      final String? format,
      final List<String> elements,
      final List<String> parameters,
      final int? count,
      final FhirInstant? since,
      final FhirDateTime? at,
      final String? reference,
      final SupportedMimeType? mimeType,
      final String accept,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final Client? client,
      final Map<String, String>? headers}) = _$FhirHistoryTypeRequestImpl;
  FhirHistoryTypeRequest._() : super._();

  factory FhirHistoryTypeRequest.fromJson(Map<String, dynamic> json) =
      _$FhirHistoryTypeRequestImpl.fromJson;

  @override

  /// [base] - the base URI for the FHIR server
  Uri get base;

  /// [type] - the type of resource you're looking for
  R4ResourceType get type;
  @override

  /// [pretty] - pretty print the json formatting in the response
  bool? get pretty;
  @override

  /// [summary] - do you want the result to be a summary
  Summary get summary;
  @override

  /// [format] - Possible formats are: json, json+fhir or fhir+json
  /// (would not request XML as this library doesn't work with XML)
  String? get format;
  @override

  /// [elements] - elements you need to pass in
  List<String> get elements;
  @override

  /// [parameters] - any extra parameters
  List<String> get parameters;

  /// [count] - The maximum number of search results on a page, excluding related
  ///   resources included by _include or _revinclude or OperationOutcomes. The
  ///   server is not bound to return the number requested, but cannot return more
  int? get count;

  /// [since] - Only include resource versions that were created at or after the
  ///   given instant in time
  FhirInstant? get since;

  /// [at] - Only include resource versions that were current at some point
  ///   during the time period specified in the date time value
  FhirDateTime? get at;

  /// [reference] - Only include resource versions that are referenced in
  ///   the specified list
  String? get reference;
  @override

  /// [mimeType] - specify the MimeType in the Header - this should be fhir+json
  ///   but there are some older systems that won't accept that
  SupportedMimeType? get mimeType;
  @override

  /// [accept] - this will default to fhir+json just so it will stop sending
  /// me XML - I hate XML
  String get accept;
  @override

  /// [client] - if there's a specific client that you're going to be using
// ignore: invalid_annotation_target
  @JsonKey(includeFromJson: false, includeToJson: false)
  Client? get client;
  @override

  /// [headers] - because there are some times it's easier to incldue the
  /// headers in the object instead of only passing it in with the
  /// request
  Map<String, String>? get headers;
  @override
  @JsonKey(ignore: true)
  _$$FhirHistoryTypeRequestImplCopyWith<_$FhirHistoryTypeRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FhirHistoryAllRequestImplCopyWith<$Res>
    implements $FhirRequestCopyWith<$Res> {
  factory _$$FhirHistoryAllRequestImplCopyWith(
          _$FhirHistoryAllRequestImpl value,
          $Res Function(_$FhirHistoryAllRequestImpl) then) =
      __$$FhirHistoryAllRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Uri base,
      bool? pretty,
      Summary summary,
      String? format,
      List<String> elements,
      List<String> parameters,
      int? count,
      FhirInstant? since,
      FhirDateTime? at,
      String? reference,
      SupportedMimeType? mimeType,
      String accept,
      @JsonKey(includeFromJson: false, includeToJson: false) Client? client,
      Map<String, String>? headers});
}

/// @nodoc
class __$$FhirHistoryAllRequestImplCopyWithImpl<$Res>
    extends _$FhirRequestCopyWithImpl<$Res, _$FhirHistoryAllRequestImpl>
    implements _$$FhirHistoryAllRequestImplCopyWith<$Res> {
  __$$FhirHistoryAllRequestImplCopyWithImpl(_$FhirHistoryAllRequestImpl _value,
      $Res Function(_$FhirHistoryAllRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? base = null,
    Object? pretty = freezed,
    Object? summary = null,
    Object? format = freezed,
    Object? elements = null,
    Object? parameters = null,
    Object? count = freezed,
    Object? since = freezed,
    Object? at = freezed,
    Object? reference = freezed,
    Object? mimeType = freezed,
    Object? accept = null,
    Object? client = freezed,
    Object? headers = freezed,
  }) {
    return _then(_$FhirHistoryAllRequestImpl(
      base: null == base
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as Uri,
      pretty: freezed == pretty
          ? _value.pretty
          : pretty // ignore: cast_nullable_to_non_nullable
              as bool?,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as Summary,
      format: freezed == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String?,
      elements: null == elements
          ? _value._elements
          : elements // ignore: cast_nullable_to_non_nullable
              as List<String>,
      parameters: null == parameters
          ? _value._parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as List<String>,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      since: freezed == since
          ? _value.since
          : since // ignore: cast_nullable_to_non_nullable
              as FhirInstant?,
      at: freezed == at
          ? _value.at
          : at // ignore: cast_nullable_to_non_nullable
              as FhirDateTime?,
      reference: freezed == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String?,
      mimeType: freezed == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as SupportedMimeType?,
      accept: null == accept
          ? _value.accept
          : accept // ignore: cast_nullable_to_non_nullable
              as String,
      client: freezed == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as Client?,
      headers: freezed == headers
          ? _value._headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FhirHistoryAllRequestImpl extends FhirHistoryAllRequest {
  _$FhirHistoryAllRequestImpl(
      {required this.base,
      this.pretty,
      this.summary = Summary.none,
      this.format = 'json',
      final List<String> elements = const <String>[],
      final List<String> parameters = const <String>[],
      this.count,
      this.since,
      this.at,
      this.reference,
      this.mimeType,
      this.accept = 'application/fhir+json',
      @JsonKey(includeFromJson: false, includeToJson: false) this.client,
      final Map<String, String>? headers,
      final String? $type})
      : _elements = elements,
        _parameters = parameters,
        _headers = headers,
        $type = $type ?? 'historyAll',
        super._();

  factory _$FhirHistoryAllRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$FhirHistoryAllRequestImplFromJson(json);

  /// [base] - the base URI for the FHIR server
  @override
  final Uri base;

  /// [pretty] - pretty print the json formatting in the response
  @override
  final bool? pretty;

  /// [summary] - do you want the result to be a summary
  @override
  @JsonKey()
  final Summary summary;

  /// [format] - Possible formats are: json, json+fhir or fhir+json
  /// (would not request XML as this library doesn't work with XML)
  @override
  @JsonKey()
  final String? format;

  /// [elements] - elements you need to pass in
  final List<String> _elements;

  /// [elements] - elements you need to pass in
  @override
  @JsonKey()
  List<String> get elements {
    if (_elements is EqualUnmodifiableListView) return _elements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_elements);
  }

  /// [parameters] - any extra parameters
  final List<String> _parameters;

  /// [parameters] - any extra parameters
  @override
  @JsonKey()
  List<String> get parameters {
    if (_parameters is EqualUnmodifiableListView) return _parameters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_parameters);
  }

  /// [count] - The maximum number of search results on a page, excluding related
  ///   resources included by _include or _revinclude or OperationOutcomes. The
  ///   server is not bound to return the number requested, but cannot return more
  @override
  final int? count;

  /// [since] - Only include resource versions that were created at or after the
  ///   given instant in time
  @override
  final FhirInstant? since;

  /// [at] - Only include resource versions that were current at some point
  ///   during the time period specified in the date time value
  @override
  final FhirDateTime? at;

  /// [reference] - Only include resource versions that are referenced in
  ///   the specified list
  @override
  final String? reference;

  /// [mimeType] - specify the MimeType in the Header - this should be fhir+json
  ///   but there are some older systems that won't accept that
  @override
  final SupportedMimeType? mimeType;

  /// [accept] - this will default to fhir+json just so it will stop sending
  /// me XML - I hate XML
  @override
  @JsonKey()
  final String accept;

  /// [client] - if there's a specific client that you're going to be using
// ignore: invalid_annotation_target
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final Client? client;

  /// [headers] - because there are some times it's easier to incldue the
  /// headers in the object instead of only passing it in with the
  /// request
  final Map<String, String>? _headers;

  /// [headers] - because there are some times it's easier to incldue the
  /// headers in the object instead of only passing it in with the
  /// request
  @override
  Map<String, String>? get headers {
    final value = _headers;
    if (value == null) return null;
    if (_headers is EqualUnmodifiableMapView) return _headers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FhirRequest.historyAll(base: $base, pretty: $pretty, summary: $summary, format: $format, elements: $elements, parameters: $parameters, count: $count, since: $since, at: $at, reference: $reference, mimeType: $mimeType, accept: $accept, client: $client, headers: $headers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FhirHistoryAllRequestImpl &&
            (identical(other.base, base) || other.base == base) &&
            (identical(other.pretty, pretty) || other.pretty == pretty) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.format, format) || other.format == format) &&
            const DeepCollectionEquality().equals(other._elements, _elements) &&
            const DeepCollectionEquality()
                .equals(other._parameters, _parameters) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.since, since) || other.since == since) &&
            (identical(other.at, at) || other.at == at) &&
            (identical(other.reference, reference) ||
                other.reference == reference) &&
            (identical(other.mimeType, mimeType) ||
                other.mimeType == mimeType) &&
            (identical(other.accept, accept) || other.accept == accept) &&
            (identical(other.client, client) || other.client == client) &&
            const DeepCollectionEquality().equals(other._headers, _headers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      base,
      pretty,
      summary,
      format,
      const DeepCollectionEquality().hash(_elements),
      const DeepCollectionEquality().hash(_parameters),
      count,
      since,
      at,
      reference,
      mimeType,
      accept,
      client,
      const DeepCollectionEquality().hash(_headers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FhirHistoryAllRequestImplCopyWith<_$FhirHistoryAllRequestImpl>
      get copyWith => __$$FhirHistoryAllRequestImplCopyWithImpl<
          _$FhirHistoryAllRequestImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        read,
    required TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            FhirId vid,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        vRead,
    required TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        update,
    required TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        patch,
    required TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        delete,
    required TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        create,
    required TResult Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            bool usePost,
            RestfulRequest restfulRequest,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        search,
    required TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        searchAll,
    required TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Mode mode,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        capabilities,
    required TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        transaction,
    required TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        batch,
    required TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        history,
    required TResult Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        historyType,
    required TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        historyAll,
    required TResult Function(
            Uri base,
            R4ResourceType? type,
            String? id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Parameters? fhirParameter,
            String operation,
            bool usePost,
            bool useFormData,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        operation,
  }) {
    return historyAll(base, pretty, summary, format, elements, parameters,
        count, since, at, reference, mimeType, accept, client, headers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        read,
    TResult? Function(
            Uri base,
            R4ResourceType type,
            String id,
            FhirId vid,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        vRead,
    TResult? Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        update,
    TResult? Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        patch,
    TResult? Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        delete,
    TResult? Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        create,
    TResult? Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            bool usePost,
            RestfulRequest restfulRequest,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        search,
    TResult? Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        searchAll,
    TResult? Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Mode mode,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        capabilities,
    TResult? Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        transaction,
    TResult? Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        batch,
    TResult? Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        history,
    TResult? Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        historyType,
    TResult? Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        historyAll,
    TResult? Function(
            Uri base,
            R4ResourceType? type,
            String? id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Parameters? fhirParameter,
            String operation,
            bool usePost,
            bool useFormData,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        operation,
  }) {
    return historyAll?.call(base, pretty, summary, format, elements, parameters,
        count, since, at, reference, mimeType, accept, client, headers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        read,
    TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            FhirId vid,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        vRead,
    TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        update,
    TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        patch,
    TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        delete,
    TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        create,
    TResult Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            bool usePost,
            RestfulRequest restfulRequest,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        search,
    TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        searchAll,
    TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Mode mode,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        capabilities,
    TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        transaction,
    TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        batch,
    TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        history,
    TResult Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        historyType,
    TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        historyAll,
    TResult Function(
            Uri base,
            R4ResourceType? type,
            String? id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Parameters? fhirParameter,
            String operation,
            bool usePost,
            bool useFormData,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        operation,
    required TResult orElse(),
  }) {
    if (historyAll != null) {
      return historyAll(base, pretty, summary, format, elements, parameters,
          count, since, at, reference, mimeType, accept, client, headers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FhirReadRequest value) read,
    required TResult Function(FhirVReadRequest value) vRead,
    required TResult Function(FhirUpdateRequest value) update,
    required TResult Function(FhirPatchRequest value) patch,
    required TResult Function(FhirDeleteRequest value) delete,
    required TResult Function(FhirCreateRequest value) create,
    required TResult Function(FhirSearchRequest value) search,
    required TResult Function(FhirSearchAllRequest value) searchAll,
    required TResult Function(FhirCapabilitiesRequest value) capabilities,
    required TResult Function(FhirTransactionRequest value) transaction,
    required TResult Function(FhirBatchRequest value) batch,
    required TResult Function(FhirHistoryRequest value) history,
    required TResult Function(FhirHistoryTypeRequest value) historyType,
    required TResult Function(FhirHistoryAllRequest value) historyAll,
    required TResult Function(FhirOperationRequest value) operation,
  }) {
    return historyAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FhirReadRequest value)? read,
    TResult? Function(FhirVReadRequest value)? vRead,
    TResult? Function(FhirUpdateRequest value)? update,
    TResult? Function(FhirPatchRequest value)? patch,
    TResult? Function(FhirDeleteRequest value)? delete,
    TResult? Function(FhirCreateRequest value)? create,
    TResult? Function(FhirSearchRequest value)? search,
    TResult? Function(FhirSearchAllRequest value)? searchAll,
    TResult? Function(FhirCapabilitiesRequest value)? capabilities,
    TResult? Function(FhirTransactionRequest value)? transaction,
    TResult? Function(FhirBatchRequest value)? batch,
    TResult? Function(FhirHistoryRequest value)? history,
    TResult? Function(FhirHistoryTypeRequest value)? historyType,
    TResult? Function(FhirHistoryAllRequest value)? historyAll,
    TResult? Function(FhirOperationRequest value)? operation,
  }) {
    return historyAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FhirReadRequest value)? read,
    TResult Function(FhirVReadRequest value)? vRead,
    TResult Function(FhirUpdateRequest value)? update,
    TResult Function(FhirPatchRequest value)? patch,
    TResult Function(FhirDeleteRequest value)? delete,
    TResult Function(FhirCreateRequest value)? create,
    TResult Function(FhirSearchRequest value)? search,
    TResult Function(FhirSearchAllRequest value)? searchAll,
    TResult Function(FhirCapabilitiesRequest value)? capabilities,
    TResult Function(FhirTransactionRequest value)? transaction,
    TResult Function(FhirBatchRequest value)? batch,
    TResult Function(FhirHistoryRequest value)? history,
    TResult Function(FhirHistoryTypeRequest value)? historyType,
    TResult Function(FhirHistoryAllRequest value)? historyAll,
    TResult Function(FhirOperationRequest value)? operation,
    required TResult orElse(),
  }) {
    if (historyAll != null) {
      return historyAll(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FhirHistoryAllRequestImplToJson(
      this,
    );
  }
}

abstract class FhirHistoryAllRequest extends FhirRequest {
  factory FhirHistoryAllRequest(
      {required final Uri base,
      final bool? pretty,
      final Summary summary,
      final String? format,
      final List<String> elements,
      final List<String> parameters,
      final int? count,
      final FhirInstant? since,
      final FhirDateTime? at,
      final String? reference,
      final SupportedMimeType? mimeType,
      final String accept,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final Client? client,
      final Map<String, String>? headers}) = _$FhirHistoryAllRequestImpl;
  FhirHistoryAllRequest._() : super._();

  factory FhirHistoryAllRequest.fromJson(Map<String, dynamic> json) =
      _$FhirHistoryAllRequestImpl.fromJson;

  @override

  /// [base] - the base URI for the FHIR server
  Uri get base;
  @override

  /// [pretty] - pretty print the json formatting in the response
  bool? get pretty;
  @override

  /// [summary] - do you want the result to be a summary
  Summary get summary;
  @override

  /// [format] - Possible formats are: json, json+fhir or fhir+json
  /// (would not request XML as this library doesn't work with XML)
  String? get format;
  @override

  /// [elements] - elements you need to pass in
  List<String> get elements;
  @override

  /// [parameters] - any extra parameters
  List<String> get parameters;

  /// [count] - The maximum number of search results on a page, excluding related
  ///   resources included by _include or _revinclude or OperationOutcomes. The
  ///   server is not bound to return the number requested, but cannot return more
  int? get count;

  /// [since] - Only include resource versions that were created at or after the
  ///   given instant in time
  FhirInstant? get since;

  /// [at] - Only include resource versions that were current at some point
  ///   during the time period specified in the date time value
  FhirDateTime? get at;

  /// [reference] - Only include resource versions that are referenced in
  ///   the specified list
  String? get reference;
  @override

  /// [mimeType] - specify the MimeType in the Header - this should be fhir+json
  ///   but there are some older systems that won't accept that
  SupportedMimeType? get mimeType;
  @override

  /// [accept] - this will default to fhir+json just so it will stop sending
  /// me XML - I hate XML
  String get accept;
  @override

  /// [client] - if there's a specific client that you're going to be using
// ignore: invalid_annotation_target
  @JsonKey(includeFromJson: false, includeToJson: false)
  Client? get client;
  @override

  /// [headers] - because there are some times it's easier to incldue the
  /// headers in the object instead of only passing it in with the
  /// request
  Map<String, String>? get headers;
  @override
  @JsonKey(ignore: true)
  _$$FhirHistoryAllRequestImplCopyWith<_$FhirHistoryAllRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FhirOperationRequestImplCopyWith<$Res>
    implements $FhirRequestCopyWith<$Res> {
  factory _$$FhirOperationRequestImplCopyWith(_$FhirOperationRequestImpl value,
          $Res Function(_$FhirOperationRequestImpl) then) =
      __$$FhirOperationRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Uri base,
      R4ResourceType? type,
      String? id,
      bool? pretty,
      Summary summary,
      String? format,
      List<String> elements,
      List<String> parameters,
      Parameters? fhirParameter,
      String operation,
      bool usePost,
      bool useFormData,
      SupportedMimeType? mimeType,
      String accept,
      @JsonKey(includeFromJson: false, includeToJson: false) Client? client,
      Map<String, String>? headers});

  $ParametersCopyWith<$Res>? get fhirParameter;
}

/// @nodoc
class __$$FhirOperationRequestImplCopyWithImpl<$Res>
    extends _$FhirRequestCopyWithImpl<$Res, _$FhirOperationRequestImpl>
    implements _$$FhirOperationRequestImplCopyWith<$Res> {
  __$$FhirOperationRequestImplCopyWithImpl(_$FhirOperationRequestImpl _value,
      $Res Function(_$FhirOperationRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? base = null,
    Object? type = freezed,
    Object? id = freezed,
    Object? pretty = freezed,
    Object? summary = null,
    Object? format = freezed,
    Object? elements = null,
    Object? parameters = null,
    Object? fhirParameter = freezed,
    Object? operation = null,
    Object? usePost = null,
    Object? useFormData = null,
    Object? mimeType = freezed,
    Object? accept = null,
    Object? client = freezed,
    Object? headers = freezed,
  }) {
    return _then(_$FhirOperationRequestImpl(
      base: null == base
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as Uri,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as R4ResourceType?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      pretty: freezed == pretty
          ? _value.pretty
          : pretty // ignore: cast_nullable_to_non_nullable
              as bool?,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as Summary,
      format: freezed == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String?,
      elements: null == elements
          ? _value._elements
          : elements // ignore: cast_nullable_to_non_nullable
              as List<String>,
      parameters: null == parameters
          ? _value._parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as List<String>,
      fhirParameter: freezed == fhirParameter
          ? _value.fhirParameter
          : fhirParameter // ignore: cast_nullable_to_non_nullable
              as Parameters?,
      operation: null == operation
          ? _value.operation
          : operation // ignore: cast_nullable_to_non_nullable
              as String,
      usePost: null == usePost
          ? _value.usePost
          : usePost // ignore: cast_nullable_to_non_nullable
              as bool,
      useFormData: null == useFormData
          ? _value.useFormData
          : useFormData // ignore: cast_nullable_to_non_nullable
              as bool,
      mimeType: freezed == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as SupportedMimeType?,
      accept: null == accept
          ? _value.accept
          : accept // ignore: cast_nullable_to_non_nullable
              as String,
      client: freezed == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as Client?,
      headers: freezed == headers
          ? _value._headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ParametersCopyWith<$Res>? get fhirParameter {
    if (_value.fhirParameter == null) {
      return null;
    }

    return $ParametersCopyWith<$Res>(_value.fhirParameter!, (value) {
      return _then(_value.copyWith(fhirParameter: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$FhirOperationRequestImpl extends FhirOperationRequest {
  _$FhirOperationRequestImpl(
      {required this.base,
      this.type,
      this.id,
      this.pretty,
      this.summary = Summary.none,
      this.format = 'json',
      final List<String> elements = const <String>[],
      final List<String> parameters = const <String>[],
      this.fhirParameter,
      required this.operation,
      this.usePost = false,
      this.useFormData = false,
      this.mimeType,
      this.accept = 'application/fhir+json',
      @JsonKey(includeFromJson: false, includeToJson: false) this.client,
      final Map<String, String>? headers,
      final String? $type})
      : _elements = elements,
        _parameters = parameters,
        _headers = headers,
        $type = $type ?? 'operation',
        super._();

  factory _$FhirOperationRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$FhirOperationRequestImplFromJson(json);

  /// [base] - the base URI for the FHIR server
  @override
  final Uri base;
  @override
  final R4ResourceType? type;
  @override
  final String? id;

  /// [pretty] - pretty print the json formatting in the response
  @override
  final bool? pretty;

  /// [summary] - do you want the result to be a summary
  @override
  @JsonKey()
  final Summary summary;

  /// [format] - Possible formats are: json, json+fhir or fhir+json
  /// (would not request XML as this library doesn't work with XML)
  @override
  @JsonKey()
  final String? format;

  /// [elements] - elements you need to pass in
  final List<String> _elements;

  /// [elements] - elements you need to pass in
  @override
  @JsonKey()
  List<String> get elements {
    if (_elements is EqualUnmodifiableListView) return _elements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_elements);
  }

  /// [parameters] - any extra parameters
  final List<String> _parameters;

  /// [parameters] - any extra parameters
  @override
  @JsonKey()
  List<String> get parameters {
    if (_parameters is EqualUnmodifiableListView) return _parameters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_parameters);
  }

  /// [fhirParameter] any extra fhirParameters
  @override
  final Parameters? fhirParameter;
  @override
  final String operation;

  /// [usePost] - defines if you would prefer to use a post request instead of
  ///   a get request for this search
  @override
  @JsonKey()
  final bool usePost;
  @override
  @JsonKey()
  final bool useFormData;

  /// [mimeType] - specify the MimeType in the Header - this should be fhir+json
  ///   but there are some older systems that won't accept that
  @override
  final SupportedMimeType? mimeType;

  /// [accept] - this will default to fhir+json just so it will stop sending
  /// me XML - I hate XML
  @override
  @JsonKey()
  final String accept;

  /// [client] - if there's a specific client that you're going to be using
// ignore: invalid_annotation_target
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final Client? client;

  /// [headers] - because there are some times it's easier to incldue the
  /// headers in the object instead of only passing it in with the
  /// request
  final Map<String, String>? _headers;

  /// [headers] - because there are some times it's easier to incldue the
  /// headers in the object instead of only passing it in with the
  /// request
  @override
  Map<String, String>? get headers {
    final value = _headers;
    if (value == null) return null;
    if (_headers is EqualUnmodifiableMapView) return _headers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'FhirRequest.operation(base: $base, type: $type, id: $id, pretty: $pretty, summary: $summary, format: $format, elements: $elements, parameters: $parameters, fhirParameter: $fhirParameter, operation: $operation, usePost: $usePost, useFormData: $useFormData, mimeType: $mimeType, accept: $accept, client: $client, headers: $headers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FhirOperationRequestImpl &&
            (identical(other.base, base) || other.base == base) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.pretty, pretty) || other.pretty == pretty) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.format, format) || other.format == format) &&
            const DeepCollectionEquality().equals(other._elements, _elements) &&
            const DeepCollectionEquality()
                .equals(other._parameters, _parameters) &&
            (identical(other.fhirParameter, fhirParameter) ||
                other.fhirParameter == fhirParameter) &&
            (identical(other.operation, operation) ||
                other.operation == operation) &&
            (identical(other.usePost, usePost) || other.usePost == usePost) &&
            (identical(other.useFormData, useFormData) ||
                other.useFormData == useFormData) &&
            (identical(other.mimeType, mimeType) ||
                other.mimeType == mimeType) &&
            (identical(other.accept, accept) || other.accept == accept) &&
            (identical(other.client, client) || other.client == client) &&
            const DeepCollectionEquality().equals(other._headers, _headers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      base,
      type,
      id,
      pretty,
      summary,
      format,
      const DeepCollectionEquality().hash(_elements),
      const DeepCollectionEquality().hash(_parameters),
      fhirParameter,
      operation,
      usePost,
      useFormData,
      mimeType,
      accept,
      client,
      const DeepCollectionEquality().hash(_headers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FhirOperationRequestImplCopyWith<_$FhirOperationRequestImpl>
      get copyWith =>
          __$$FhirOperationRequestImplCopyWithImpl<_$FhirOperationRequestImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        read,
    required TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            FhirId vid,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        vRead,
    required TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        update,
    required TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        patch,
    required TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        delete,
    required TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        create,
    required TResult Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            bool usePost,
            RestfulRequest restfulRequest,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        search,
    required TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        searchAll,
    required TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Mode mode,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        capabilities,
    required TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        transaction,
    required TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        batch,
    required TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        history,
    required TResult Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        historyType,
    required TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        historyAll,
    required TResult Function(
            Uri base,
            R4ResourceType? type,
            String? id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Parameters? fhirParameter,
            String operation,
            bool usePost,
            bool useFormData,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)
        operation,
  }) {
    return operation(
        base,
        type,
        id,
        pretty,
        summary,
        format,
        elements,
        parameters,
        fhirParameter,
        this.operation,
        usePost,
        useFormData,
        mimeType,
        accept,
        client,
        headers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        read,
    TResult? Function(
            Uri base,
            R4ResourceType type,
            String id,
            FhirId vid,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        vRead,
    TResult? Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        update,
    TResult? Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        patch,
    TResult? Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        delete,
    TResult? Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        create,
    TResult? Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            bool usePost,
            RestfulRequest restfulRequest,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        search,
    TResult? Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        searchAll,
    TResult? Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Mode mode,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        capabilities,
    TResult? Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        transaction,
    TResult? Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        batch,
    TResult? Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        history,
    TResult? Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        historyType,
    TResult? Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        historyAll,
    TResult? Function(
            Uri base,
            R4ResourceType? type,
            String? id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Parameters? fhirParameter,
            String operation,
            bool usePost,
            bool useFormData,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        operation,
  }) {
    return operation?.call(
        base,
        type,
        id,
        pretty,
        summary,
        format,
        elements,
        parameters,
        fhirParameter,
        this.operation,
        usePost,
        useFormData,
        mimeType,
        accept,
        client,
        headers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        read,
    TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            FhirId vid,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        vRead,
    TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        update,
    TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        patch,
    TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        delete,
    TResult Function(
            Uri base,
            Resource resource,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        create,
    TResult Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            bool usePost,
            RestfulRequest restfulRequest,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        search,
    TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        searchAll,
    TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Mode mode,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        capabilities,
    TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        transaction,
    TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Bundle bundle,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        batch,
    TResult Function(
            Uri base,
            R4ResourceType type,
            String id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        history,
    TResult Function(
            Uri base,
            R4ResourceType type,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        historyType,
    TResult Function(
            Uri base,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            int? count,
            FhirInstant? since,
            FhirDateTime? at,
            String? reference,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        historyAll,
    TResult Function(
            Uri base,
            R4ResourceType? type,
            String? id,
            bool? pretty,
            Summary summary,
            String? format,
            List<String> elements,
            List<String> parameters,
            Parameters? fhirParameter,
            String operation,
            bool usePost,
            bool useFormData,
            SupportedMimeType? mimeType,
            String accept,
            @JsonKey(includeFromJson: false, includeToJson: false)
            Client? client,
            Map<String, String>? headers)?
        operation,
    required TResult orElse(),
  }) {
    if (operation != null) {
      return operation(
          base,
          type,
          id,
          pretty,
          summary,
          format,
          elements,
          parameters,
          fhirParameter,
          this.operation,
          usePost,
          useFormData,
          mimeType,
          accept,
          client,
          headers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FhirReadRequest value) read,
    required TResult Function(FhirVReadRequest value) vRead,
    required TResult Function(FhirUpdateRequest value) update,
    required TResult Function(FhirPatchRequest value) patch,
    required TResult Function(FhirDeleteRequest value) delete,
    required TResult Function(FhirCreateRequest value) create,
    required TResult Function(FhirSearchRequest value) search,
    required TResult Function(FhirSearchAllRequest value) searchAll,
    required TResult Function(FhirCapabilitiesRequest value) capabilities,
    required TResult Function(FhirTransactionRequest value) transaction,
    required TResult Function(FhirBatchRequest value) batch,
    required TResult Function(FhirHistoryRequest value) history,
    required TResult Function(FhirHistoryTypeRequest value) historyType,
    required TResult Function(FhirHistoryAllRequest value) historyAll,
    required TResult Function(FhirOperationRequest value) operation,
  }) {
    return operation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FhirReadRequest value)? read,
    TResult? Function(FhirVReadRequest value)? vRead,
    TResult? Function(FhirUpdateRequest value)? update,
    TResult? Function(FhirPatchRequest value)? patch,
    TResult? Function(FhirDeleteRequest value)? delete,
    TResult? Function(FhirCreateRequest value)? create,
    TResult? Function(FhirSearchRequest value)? search,
    TResult? Function(FhirSearchAllRequest value)? searchAll,
    TResult? Function(FhirCapabilitiesRequest value)? capabilities,
    TResult? Function(FhirTransactionRequest value)? transaction,
    TResult? Function(FhirBatchRequest value)? batch,
    TResult? Function(FhirHistoryRequest value)? history,
    TResult? Function(FhirHistoryTypeRequest value)? historyType,
    TResult? Function(FhirHistoryAllRequest value)? historyAll,
    TResult? Function(FhirOperationRequest value)? operation,
  }) {
    return operation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FhirReadRequest value)? read,
    TResult Function(FhirVReadRequest value)? vRead,
    TResult Function(FhirUpdateRequest value)? update,
    TResult Function(FhirPatchRequest value)? patch,
    TResult Function(FhirDeleteRequest value)? delete,
    TResult Function(FhirCreateRequest value)? create,
    TResult Function(FhirSearchRequest value)? search,
    TResult Function(FhirSearchAllRequest value)? searchAll,
    TResult Function(FhirCapabilitiesRequest value)? capabilities,
    TResult Function(FhirTransactionRequest value)? transaction,
    TResult Function(FhirBatchRequest value)? batch,
    TResult Function(FhirHistoryRequest value)? history,
    TResult Function(FhirHistoryTypeRequest value)? historyType,
    TResult Function(FhirHistoryAllRequest value)? historyAll,
    TResult Function(FhirOperationRequest value)? operation,
    required TResult orElse(),
  }) {
    if (operation != null) {
      return operation(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FhirOperationRequestImplToJson(
      this,
    );
  }
}

abstract class FhirOperationRequest extends FhirRequest {
  factory FhirOperationRequest(
      {required final Uri base,
      final R4ResourceType? type,
      final String? id,
      final bool? pretty,
      final Summary summary,
      final String? format,
      final List<String> elements,
      final List<String> parameters,
      final Parameters? fhirParameter,
      required final String operation,
      final bool usePost,
      final bool useFormData,
      final SupportedMimeType? mimeType,
      final String accept,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final Client? client,
      final Map<String, String>? headers}) = _$FhirOperationRequestImpl;
  FhirOperationRequest._() : super._();

  factory FhirOperationRequest.fromJson(Map<String, dynamic> json) =
      _$FhirOperationRequestImpl.fromJson;

  @override

  /// [base] - the base URI for the FHIR server
  Uri get base;
  R4ResourceType? get type;
  String? get id;
  @override

  /// [pretty] - pretty print the json formatting in the response
  bool? get pretty;
  @override

  /// [summary] - do you want the result to be a summary
  Summary get summary;
  @override

  /// [format] - Possible formats are: json, json+fhir or fhir+json
  /// (would not request XML as this library doesn't work with XML)
  String? get format;
  @override

  /// [elements] - elements you need to pass in
  List<String> get elements;
  @override

  /// [parameters] - any extra parameters
  List<String> get parameters;

  /// [fhirParameter] any extra fhirParameters
  Parameters? get fhirParameter;
  String get operation;

  /// [usePost] - defines if you would prefer to use a post request instead of
  ///   a get request for this search
  bool get usePost;
  bool get useFormData;
  @override

  /// [mimeType] - specify the MimeType in the Header - this should be fhir+json
  ///   but there are some older systems that won't accept that
  SupportedMimeType? get mimeType;
  @override

  /// [accept] - this will default to fhir+json just so it will stop sending
  /// me XML - I hate XML
  String get accept;
  @override

  /// [client] - if there's a specific client that you're going to be using
// ignore: invalid_annotation_target
  @JsonKey(includeFromJson: false, includeToJson: false)
  Client? get client;
  @override

  /// [headers] - because there are some times it's easier to incldue the
  /// headers in the object instead of only passing it in with the
  /// request
  Map<String, String>? get headers;
  @override
  @JsonKey(ignore: true)
  _$$FhirOperationRequestImplCopyWith<_$FhirOperationRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

FhirHttpRequest _$FhirHttpRequestFromJson(Map<String, dynamic> json) {
  return _FhirHttpRequest.fromJson(json);
}

/// @nodoc
mixin _$FhirHttpRequest {
  RestfulRequest get type => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  Map<String, String> get headers => throw _privateConstructorUsedError;
  Map<String, dynamic>? get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FhirHttpRequestCopyWith<FhirHttpRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FhirHttpRequestCopyWith<$Res> {
  factory $FhirHttpRequestCopyWith(
          FhirHttpRequest value, $Res Function(FhirHttpRequest) then) =
      _$FhirHttpRequestCopyWithImpl<$Res, FhirHttpRequest>;
  @useResult
  $Res call(
      {RestfulRequest type,
      String url,
      Map<String, String> headers,
      Map<String, dynamic>? body});
}

/// @nodoc
class _$FhirHttpRequestCopyWithImpl<$Res, $Val extends FhirHttpRequest>
    implements $FhirHttpRequestCopyWith<$Res> {
  _$FhirHttpRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? url = null,
    Object? headers = null,
    Object? body = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as RestfulRequest,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      headers: null == headers
          ? _value.headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FhirHttpRequestImplCopyWith<$Res>
    implements $FhirHttpRequestCopyWith<$Res> {
  factory _$$FhirHttpRequestImplCopyWith(_$FhirHttpRequestImpl value,
          $Res Function(_$FhirHttpRequestImpl) then) =
      __$$FhirHttpRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RestfulRequest type,
      String url,
      Map<String, String> headers,
      Map<String, dynamic>? body});
}

/// @nodoc
class __$$FhirHttpRequestImplCopyWithImpl<$Res>
    extends _$FhirHttpRequestCopyWithImpl<$Res, _$FhirHttpRequestImpl>
    implements _$$FhirHttpRequestImplCopyWith<$Res> {
  __$$FhirHttpRequestImplCopyWithImpl(
      _$FhirHttpRequestImpl _value, $Res Function(_$FhirHttpRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? url = null,
    Object? headers = null,
    Object? body = freezed,
  }) {
    return _then(_$FhirHttpRequestImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as RestfulRequest,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      headers: null == headers
          ? _value._headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      body: freezed == body
          ? _value._body
          : body // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FhirHttpRequestImpl extends _FhirHttpRequest {
  _$FhirHttpRequestImpl(
      {required this.type,
      required this.url,
      required final Map<String, String> headers,
      final Map<String, dynamic>? body})
      : _headers = headers,
        _body = body,
        super._();

  factory _$FhirHttpRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$FhirHttpRequestImplFromJson(json);

  @override
  final RestfulRequest type;
  @override
  final String url;
  final Map<String, String> _headers;
  @override
  Map<String, String> get headers {
    if (_headers is EqualUnmodifiableMapView) return _headers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_headers);
  }

  final Map<String, dynamic>? _body;
  @override
  Map<String, dynamic>? get body {
    final value = _body;
    if (value == null) return null;
    if (_body is EqualUnmodifiableMapView) return _body;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'FhirHttpRequest(type: $type, url: $url, headers: $headers, body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FhirHttpRequestImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.url, url) || other.url == url) &&
            const DeepCollectionEquality().equals(other._headers, _headers) &&
            const DeepCollectionEquality().equals(other._body, _body));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      type,
      url,
      const DeepCollectionEquality().hash(_headers),
      const DeepCollectionEquality().hash(_body));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FhirHttpRequestImplCopyWith<_$FhirHttpRequestImpl> get copyWith =>
      __$$FhirHttpRequestImplCopyWithImpl<_$FhirHttpRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FhirHttpRequestImplToJson(
      this,
    );
  }
}

abstract class _FhirHttpRequest extends FhirHttpRequest {
  factory _FhirHttpRequest(
      {required final RestfulRequest type,
      required final String url,
      required final Map<String, String> headers,
      final Map<String, dynamic>? body}) = _$FhirHttpRequestImpl;
  _FhirHttpRequest._() : super._();

  factory _FhirHttpRequest.fromJson(Map<String, dynamic> json) =
      _$FhirHttpRequestImpl.fromJson;

  @override
  RestfulRequest get type;
  @override
  String get url;
  @override
  Map<String, String> get headers;
  @override
  Map<String, dynamic>? get body;
  @override
  @JsonKey(ignore: true)
  _$$FhirHttpRequestImplCopyWith<_$FhirHttpRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
