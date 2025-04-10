// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'data_requirement.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $DataRequirementCopyWith<T> extends $DataTypeCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    FHIRAllTypes? type,
    List<FhirCanonical>? profile,
    CodeableConcept? subjectX,
    List<FhirString>? mustSupport,
    List<DataRequirementCodeFilter>? codeFilter,
    List<DataRequirementDateFilter>? dateFilter,
    FhirPositiveInt? limit,
    List<DataRequirementSort>? sort,
    bool? disallowExtensions,
  });
}

class _$DataRequirementCopyWithImpl<T> implements $DataRequirementCopyWith<T> {
  final DataRequirement _value;
  final T Function(DataRequirement) _then;

  _$DataRequirementCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? type = fhirSentinel,
    Object? profile = fhirSentinel,
    Object? subjectX = fhirSentinel,
    Object? mustSupport = fhirSentinel,
    Object? codeFilter = fhirSentinel,
    Object? dateFilter = fhirSentinel,
    Object? limit = fhirSentinel,
    Object? sort = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      DataRequirement(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : (type as FHIRAllTypes?) ?? _value.type,
        profile: identical(profile, fhirSentinel)
            ? _value.profile
            : profile as List<FhirCanonical>?,
        subjectX: identical(subjectX, fhirSentinel)
            ? _value.subjectX
            : subjectX as CodeableConcept?,
        mustSupport: identical(mustSupport, fhirSentinel)
            ? _value.mustSupport
            : mustSupport as List<FhirString>?,
        codeFilter: identical(codeFilter, fhirSentinel)
            ? _value.codeFilter
            : codeFilter as List<DataRequirementCodeFilter>?,
        dateFilter: identical(dateFilter, fhirSentinel)
            ? _value.dateFilter
            : dateFilter as List<DataRequirementDateFilter>?,
        limit: identical(limit, fhirSentinel)
            ? _value.limit
            : limit as FhirPositiveInt?,
        sort: identical(sort, fhirSentinel)
            ? _value.sort
            : sort as List<DataRequirementSort>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension DataRequirementCopyWithExtension on DataRequirement {
  $DataRequirementCopyWith<DataRequirement> get copyWith =>
      _$DataRequirementCopyWithImpl<DataRequirement>(
        this,
        (value) => value,
      );
}

abstract class $DataRequirementCodeFilterCopyWith<T>
    extends $ElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirString? path,
    FhirString? searchParam,
    FhirCanonical? valueSet,
    List<Coding>? code,
    bool? disallowExtensions,
  });
}

class _$DataRequirementCodeFilterCopyWithImpl<T>
    implements $DataRequirementCodeFilterCopyWith<T> {
  final DataRequirementCodeFilter _value;
  final T Function(DataRequirementCodeFilter) _then;

  _$DataRequirementCodeFilterCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? path = fhirSentinel,
    Object? searchParam = fhirSentinel,
    Object? valueSet = fhirSentinel,
    Object? code = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      DataRequirementCodeFilter(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        path: identical(path, fhirSentinel) ? _value.path : path as FhirString?,
        searchParam: identical(searchParam, fhirSentinel)
            ? _value.searchParam
            : searchParam as FhirString?,
        valueSet: identical(valueSet, fhirSentinel)
            ? _value.valueSet
            : valueSet as FhirCanonical?,
        code:
            identical(code, fhirSentinel) ? _value.code : code as List<Coding>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension DataRequirementCodeFilterCopyWithExtension
    on DataRequirementCodeFilter {
  $DataRequirementCodeFilterCopyWith<DataRequirementCodeFilter> get copyWith =>
      _$DataRequirementCodeFilterCopyWithImpl<DataRequirementCodeFilter>(
        this,
        (value) => value,
      );
}

abstract class $DataRequirementDateFilterCopyWith<T>
    extends $ElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirString? path,
    FhirString? searchParam,
    FhirDateTime? valueX,
    bool? disallowExtensions,
  });
}

class _$DataRequirementDateFilterCopyWithImpl<T>
    implements $DataRequirementDateFilterCopyWith<T> {
  final DataRequirementDateFilter _value;
  final T Function(DataRequirementDateFilter) _then;

  _$DataRequirementDateFilterCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? path = fhirSentinel,
    Object? searchParam = fhirSentinel,
    Object? valueX = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      DataRequirementDateFilter(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        path: identical(path, fhirSentinel) ? _value.path : path as FhirString?,
        searchParam: identical(searchParam, fhirSentinel)
            ? _value.searchParam
            : searchParam as FhirString?,
        valueX: identical(valueX, fhirSentinel)
            ? _value.valueX
            : valueX as FhirDateTime?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension DataRequirementDateFilterCopyWithExtension
    on DataRequirementDateFilter {
  $DataRequirementDateFilterCopyWith<DataRequirementDateFilter> get copyWith =>
      _$DataRequirementDateFilterCopyWithImpl<DataRequirementDateFilter>(
        this,
        (value) => value,
      );
}

abstract class $DataRequirementSortCopyWith<T> extends $ElementCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirString? path,
    SortDirection? direction,
    bool? disallowExtensions,
  });
}

class _$DataRequirementSortCopyWithImpl<T>
    implements $DataRequirementSortCopyWith<T> {
  final DataRequirementSort _value;
  final T Function(DataRequirementSort) _then;

  _$DataRequirementSortCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? path = fhirSentinel,
    Object? direction = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      DataRequirementSort(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        path: identical(path, fhirSentinel)
            ? _value.path
            : (path as FhirString?) ?? _value.path,
        direction: identical(direction, fhirSentinel)
            ? _value.direction
            : (direction as SortDirection?) ?? _value.direction,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension DataRequirementSortCopyWithExtension on DataRequirementSort {
  $DataRequirementSortCopyWith<DataRequirementSort> get copyWith =>
      _$DataRequirementSortCopyWithImpl<DataRequirementSort>(
        this,
        (value) => value,
      );
}
