// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The type of relationship between documents.
class DocumentRelationshipTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  DocumentRelationshipTypeBuilder._({
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
  factory DocumentRelationshipTypeBuilder(
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
    return DocumentRelationshipTypeBuilder._(
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

  /// Create empty [DocumentRelationshipTypeBuilder] with element only
  factory DocumentRelationshipTypeBuilder.empty() =>
      DocumentRelationshipTypeBuilder._(valueString: '');

  /// Factory constructor to create [DocumentRelationshipTypeBuilder]
  /// from JSON.
  factory DocumentRelationshipTypeBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DocumentRelationshipTypeBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'DocumentRelationshipTypeBuilder cannot be constructed from JSON.',
      );
    }
    return DocumentRelationshipTypeBuilder._(
      valueString: value,
      element: element,
    );
  }

  /// replaces
  static DocumentRelationshipTypeBuilder replaces =
      DocumentRelationshipTypeBuilder._(
    valueString: 'replaces',
    system: 'http://hl7.org/fhir/ValueSet/document-relationship-type'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Replaces'.toFhirStringBuilder,
  );

  /// transforms
  static DocumentRelationshipTypeBuilder transforms =
      DocumentRelationshipTypeBuilder._(
    valueString: 'transforms',
    system: 'http://hl7.org/fhir/ValueSet/document-relationship-type'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Transforms'.toFhirStringBuilder,
  );

  /// signs
  static DocumentRelationshipTypeBuilder signs =
      DocumentRelationshipTypeBuilder._(
    valueString: 'signs',
    system: 'http://hl7.org/fhir/ValueSet/document-relationship-type'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Signs'.toFhirStringBuilder,
  );

  /// appends
  static DocumentRelationshipTypeBuilder appends =
      DocumentRelationshipTypeBuilder._(
    valueString: 'appends',
    system: 'http://hl7.org/fhir/ValueSet/document-relationship-type'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Appends'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static DocumentRelationshipTypeBuilder elementOnly =
      DocumentRelationshipTypeBuilder._(valueString: '');

  /// List of all enum-like values
  static List<DocumentRelationshipTypeBuilder> values = [
    replaces,
    transforms,
    signs,
    appends,
  ];

  /// Clones the current instance
  @override
  DocumentRelationshipTypeBuilder clone() => DocumentRelationshipTypeBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  DocumentRelationshipTypeBuilder withElement(ElementBuilder? newElement) {
    return DocumentRelationshipTypeBuilder._(
        valueString: valueString, element: newElement,);
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
  DocumentRelationshipTypeBuilder copyWith({
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
          'Invalid input for DocumentRelationshipType: $newValue',);
    }
    return DocumentRelationshipTypeBuilder._(
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
