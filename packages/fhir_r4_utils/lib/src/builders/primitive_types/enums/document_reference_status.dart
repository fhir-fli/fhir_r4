// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The status of the document reference.
class DocumentReferenceStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  DocumentReferenceStatusBuilder._({
    required super.valueString,
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  }) : super._();

  /// Public factory if you want a fallback approach or custom creation.
  // ignore: sort_unnamed_constructors_first
  factory DocumentReferenceStatusBuilder(
    String? rawValue, {
    FhirUriBuilder? system,
    FhirStringBuilder? version,
    FhirStringBuilder? display,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final valueString =
        rawValue != null ? FhirCodeBuilder._validateCode(rawValue) : null;
    return DocumentReferenceStatusBuilder._(
      valueString: valueString,
      system: system,
      version: version,
      display: display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Create empty [DocumentReferenceStatusBuilder] with element only
  factory DocumentReferenceStatusBuilder.empty() =>
      DocumentReferenceStatusBuilder._(valueString: '');

  /// Factory constructor to create [DocumentReferenceStatusBuilder]
  /// from JSON.
  factory DocumentReferenceStatusBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DocumentReferenceStatusBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'DocumentReferenceStatusBuilder cannot be constructed from JSON.',
      );
    }
    return DocumentReferenceStatusBuilder._(
      valueString: value,
      element: element,
    );
  }

  /// current
  static DocumentReferenceStatusBuilder current =
      DocumentReferenceStatusBuilder._(
    valueString: 'current',
    system: 'http://hl7.org/fhir/ValueSet/document-reference-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Current'.toFhirStringBuilder,
  );

  /// superseded
  static DocumentReferenceStatusBuilder superseded =
      DocumentReferenceStatusBuilder._(
    valueString: 'superseded',
    system: 'http://hl7.org/fhir/ValueSet/document-reference-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Superseded'.toFhirStringBuilder,
  );

  /// entered_in_error
  static DocumentReferenceStatusBuilder entered_in_error =
      DocumentReferenceStatusBuilder._(
    valueString: 'entered-in-error',
    system: 'http://hl7.org/fhir/ValueSet/document-reference-status'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Entered in Error'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static DocumentReferenceStatusBuilder elementOnly =
      DocumentReferenceStatusBuilder._(valueString: '');

  /// List of all enum-like values
  static List<DocumentReferenceStatusBuilder> values = [
    current,
    superseded,
    entered_in_error,
  ];

  /// Clones the current instance
  @override
  DocumentReferenceStatusBuilder clone() => DocumentReferenceStatusBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  DocumentReferenceStatusBuilder withElement(ElementBuilder? newElement) {
    return DocumentReferenceStatusBuilder._(
        valueString: valueString, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (valueString?.isEmpty ?? false) ? null : valueString,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => valueString ?? '';

  /// Creates a modified copy with updated properties.
  @override
  DocumentReferenceStatusBuilder copyWith({
    dynamic newValue,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    bool? disallowExtensions,
    String? objectPath,
  }) {
    if (newValue is! String?) {
      throw ArgumentError(
          'Invalid input for DocumentReferenceStatus: $newValue');
    }
    return DocumentReferenceStatusBuilder._(
      valueString: newValue ?? valueString,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath!,
    );
  }
}
