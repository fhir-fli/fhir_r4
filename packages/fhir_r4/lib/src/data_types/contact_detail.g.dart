// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'contact_detail.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $ContactDetailCopyWith<T> extends $DataTypeCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirString? name,
    List<ContactPoint>? telecom,
    bool? disallowExtensions,
  });
}

class _$ContactDetailCopyWithImpl<T> implements $ContactDetailCopyWith<T> {
  final ContactDetail _value;
  final T Function(ContactDetail) _then;

  _$ContactDetailCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? name = fhirSentinel,
    Object? telecom = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      ContactDetail(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        name: identical(name, fhirSentinel) ? _value.name : name as FhirString?,
        telecom: identical(telecom, fhirSentinel)
            ? _value.telecom
            : telecom as List<ContactPoint>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ContactDetailCopyWithExtension on ContactDetail {
  $ContactDetailCopyWith<ContactDetail> get copyWith =>
      _$ContactDetailCopyWithImpl<ContactDetail>(
        this,
        (value) => value,
      );
}
