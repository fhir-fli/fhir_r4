part of 'annotation.dart';

/// The individual responsible for making the annotation.
sealed class AuthorXAnnotationAnnotation extends DataType {}

/// The individual responsible for making the annotation.
class ReferenceAuthorAnnotationAnnotation extends Reference
    implements AuthorXAnnotationAnnotation {
  /// Factory constructor for super class
  factory ReferenceAuthorAnnotationAnnotation.fromJson(
    Map<String, dynamic> json,
  ) =>
      Reference.fromJson(json) as ReferenceAuthorAnnotationAnnotation;
}

/// The individual responsible for making the annotation.
class StringAuthorAnnotationAnnotation extends FhirString
    implements AuthorXAnnotationAnnotation {
  /// Constructor for [StringAuthorAnnotationAnnotation]
  StringAuthorAnnotationAnnotation(
    super.input, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor for super class
  factory StringAuthorAnnotationAnnotation.fromJson(
    Map<String, dynamic> json,
  ) =>
      FhirString.fromJson(json) as StringAuthorAnnotationAnnotation;
}
