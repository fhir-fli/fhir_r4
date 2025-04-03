// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The status of the document reference.
class DocumentReferenceStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  DocumentReferenceStatus._({
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
  factory DocumentReferenceStatus(
    String? rawValue, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final valueString =
        rawValue != null ? FhirCode._validateCode(rawValue) : null;
    return DocumentReferenceStatus._(
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

  /// Create empty [DocumentReferenceStatus] with element only
  factory DocumentReferenceStatus.empty() =>
      DocumentReferenceStatus._(valueString: '');

  /// Factory constructor to create [DocumentReferenceStatus] from JSON.
  factory DocumentReferenceStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DocumentReferenceStatus.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'DocumentReferenceStatus cannot be constructed from JSON.',
      );
    }
    return DocumentReferenceStatus._(
      valueString: value,
      element: element,
    );
  }

  /// current
  static final DocumentReferenceStatus current = DocumentReferenceStatus._(
    valueString: 'current',
    system: 'http://hl7.org/fhir/ValueSet/document-reference-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Current'.toFhirString,
  );

  /// superseded
  static final DocumentReferenceStatus superseded = DocumentReferenceStatus._(
    valueString: 'superseded',
    system: 'http://hl7.org/fhir/ValueSet/document-reference-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Superseded'.toFhirString,
  );

  /// entered_in_error
  static final DocumentReferenceStatus entered_in_error =
      DocumentReferenceStatus._(
    valueString: 'entered-in-error',
    system: 'http://hl7.org/fhir/ValueSet/document-reference-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Entered in Error'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final DocumentReferenceStatus elementOnly =
      DocumentReferenceStatus._(valueString: '');

  /// List of all enum-like values
  static final List<DocumentReferenceStatus> values = [
    current,
    superseded,
    entered_in_error,
  ];

  /// Clones the current instance
  @override
  DocumentReferenceStatus clone() => DocumentReferenceStatus._(
        valueString: valueString,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  DocumentReferenceStatus withElement(Element? newElement) {
    return DocumentReferenceStatus._(
      valueString: valueString,
      element: newElement,
    );
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
  DocumentReferenceStatus copyWith({
    dynamic newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    bool? disallowExtensions,
    String? objectPath,
  }) {
    if (newValue is! String?) {
      throw ArgumentError(
          'Invalid input for DocumentReferenceStatus: $newValue',);
    }
    return DocumentReferenceStatus._(
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
