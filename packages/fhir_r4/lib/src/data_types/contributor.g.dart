// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'contributor.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $ContributorCopyWith<T> extends $DataTypeCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    ContributorType? type,
    FhirString? name,
    List<ContactDetail>? contact,
    bool? disallowExtensions,
  });
}

class _$ContributorCopyWithImpl<T> implements $ContributorCopyWith<T> {
  final Contributor _value;
  final T Function(Contributor) _then;

  _$ContributorCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? type = fhirSentinel,
    Object? name = fhirSentinel,
    Object? contact = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      Contributor(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        type: identical(type, fhirSentinel)
            ? _value.type
            : (type as ContributorType?) ?? _value.type,
        name: identical(name, fhirSentinel)
            ? _value.name
            : (name as FhirString?) ?? _value.name,
        contact: identical(contact, fhirSentinel)
            ? _value.contact
            : contact as List<ContactDetail>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension ContributorCopyWithExtension on Contributor {
  $ContributorCopyWith<Contributor> get copyWith =>
      _$ContributorCopyWithImpl<Contributor>(
        this,
        (value) => value,
      );
}
