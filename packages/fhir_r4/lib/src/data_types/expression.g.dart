// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: one_member_abstracts

part of 'expression.dart';

/// Using the shared fhirSentinel defined in FhirBase

abstract class $FhirExpressionCopyWith<T> extends $DataTypeCopyWith<T> {
  @override
  T call({
    FhirString? id,
    List<FhirExtension>? extension_,
    FhirString? description,
    FhirId? name,
    ExpressionLanguage? language,
    FhirString? expression,
    FhirUri? reference,
    bool? disallowExtensions,
  });
}

class _$FhirExpressionCopyWithImpl<T> implements $FhirExpressionCopyWith<T> {
  final FhirExpression _value;
  final T Function(FhirExpression) _then;

  _$FhirExpressionCopyWithImpl(this._value, this._then);

  @override
  T call({
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? description = fhirSentinel,
    Object? name = fhirSentinel,
    Object? language = fhirSentinel,
    Object? expression = fhirSentinel,
    Object? reference = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      FhirExpression(
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        description: identical(description, fhirSentinel)
            ? _value.description
            : description as FhirString?,
        name: identical(name, fhirSentinel) ? _value.name : name as FhirId?,
        language: language as ExpressionLanguage? ?? _value.language,
        expression: identical(expression, fhirSentinel)
            ? _value.expression
            : expression as FhirString?,
        reference: identical(reference, fhirSentinel)
            ? _value.reference
            : reference as FhirUri?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}

extension FhirExpressionCopyWithExtension on FhirExpression {
  $FhirExpressionCopyWith<FhirExpression> get copyWith =>
      _$FhirExpressionCopyWithImpl<FhirExpression>(
        this,
        (value) => value,
      );
}
