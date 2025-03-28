// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The type of relationship between documents.
class DocumentRelationshipType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  DocumentRelationshipType._({
    required super.validatedValue,
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
  factory DocumentRelationshipType(
    String? raw, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final validated = raw != null ? FhirCode._validateCode(raw) : null;
    return DocumentRelationshipType._(
      validatedValue: validated,
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

  /// Create empty [DocumentRelationshipType] with element only
  factory DocumentRelationshipType.empty() =>
      DocumentRelationshipType._(validatedValue: '');

  /// Factory constructor to create [DocumentRelationshipType] from JSON.
  factory DocumentRelationshipType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DocumentRelationshipType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'DocumentRelationshipType cannot be constructed from JSON.',
      );
    }
    return DocumentRelationshipType._(
      validatedValue: value,
      element: element,
    );
  }

  /// replaces
  static final DocumentRelationshipType replaces = DocumentRelationshipType._(
    validatedValue: 'replaces',
    system: 'http://hl7.org/fhir/ValueSet/document-relationship-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Replaces'.toFhirString,
  );

  /// transforms
  static final DocumentRelationshipType transforms = DocumentRelationshipType._(
    validatedValue: 'transforms',
    system: 'http://hl7.org/fhir/ValueSet/document-relationship-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Transforms'.toFhirString,
  );

  /// signs
  static final DocumentRelationshipType signs = DocumentRelationshipType._(
    validatedValue: 'signs',
    system: 'http://hl7.org/fhir/ValueSet/document-relationship-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Signs'.toFhirString,
  );

  /// appends
  static final DocumentRelationshipType appends = DocumentRelationshipType._(
    validatedValue: 'appends',
    system: 'http://hl7.org/fhir/ValueSet/document-relationship-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Appends'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final DocumentRelationshipType elementOnly =
      DocumentRelationshipType._(validatedValue: '');

  /// List of all enum-like values
  static final List<DocumentRelationshipType> values = [
    replaces,
    transforms,
    signs,
    appends,
  ];

  /// Clones the current instance
  @override
  DocumentRelationshipType clone() => DocumentRelationshipType._(
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  DocumentRelationshipType withElement(Element? newElement) {
    return DocumentRelationshipType._(
        validatedValue: value, element: newElement,);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (value?.isEmpty ?? false) ? null : value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => value ?? '';

  /// Creates a modified copy with updated properties.
  @override
  DocumentRelationshipType copyWith({
    String? newValue,
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
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return DocumentRelationshipType._(
      validatedValue: newValue ?? value,
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
