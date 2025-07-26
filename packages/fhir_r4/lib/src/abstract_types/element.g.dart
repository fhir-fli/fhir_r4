// ignore_for_file: sort_constructors_first

part of 'element.dart';

/// The public interface for copyWith for Element.
/// Notice that each parameter is declared with its proper type.
abstract class $ElementCopyWith<T> extends $FhirBaseCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
  });
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class $ElementCopyWithImpl<T> implements $ElementCopyWith<T> {
  final Element _value;
  final T Function(Element) _then;

  /// Constructor for the copyWith implementation.
  $ElementCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      Element(
        // If a parameter remains equal to fhirSentinel (i.e. it was omitted),
        // use the original value; otherwise, cast to the proper type.
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        disallowExtensions: identical(id, disallowExtensions)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}
