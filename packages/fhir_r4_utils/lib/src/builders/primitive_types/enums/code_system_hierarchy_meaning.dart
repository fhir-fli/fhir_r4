// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The meaning of the hierarchy of concepts in a code system.
class CodeSystemHierarchyMeaningBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  CodeSystemHierarchyMeaningBuilder._({
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
  factory CodeSystemHierarchyMeaningBuilder(
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
    return CodeSystemHierarchyMeaningBuilder._(
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

  /// Create empty [CodeSystemHierarchyMeaningBuilder] with element only
  factory CodeSystemHierarchyMeaningBuilder.empty() =>
      CodeSystemHierarchyMeaningBuilder._(valueString: '');

  /// Factory constructor to create [CodeSystemHierarchyMeaningBuilder]
  /// from JSON.
  factory CodeSystemHierarchyMeaningBuilder.fromJson(
      Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CodeSystemHierarchyMeaningBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'CodeSystemHierarchyMeaningBuilder cannot be constructed from JSON.',
      );
    }
    return CodeSystemHierarchyMeaningBuilder._(
      valueString: value,
      element: element,
    );
  }

  /// grouped_by
  static CodeSystemHierarchyMeaningBuilder grouped_by =
      CodeSystemHierarchyMeaningBuilder._(
    valueString: 'grouped-by',
    system: 'http://hl7.org/fhir/ValueSet/codesystem-hierarchy-meaning'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Grouped By'.toFhirStringBuilder,
  );

  /// is_a
  static CodeSystemHierarchyMeaningBuilder is_a =
      CodeSystemHierarchyMeaningBuilder._(
    valueString: 'is-a',
    system: 'http://hl7.org/fhir/ValueSet/codesystem-hierarchy-meaning'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Is-A'.toFhirStringBuilder,
  );

  /// part_of
  static CodeSystemHierarchyMeaningBuilder part_of =
      CodeSystemHierarchyMeaningBuilder._(
    valueString: 'part-of',
    system: 'http://hl7.org/fhir/ValueSet/codesystem-hierarchy-meaning'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Part Of'.toFhirStringBuilder,
  );

  /// classified_with
  static CodeSystemHierarchyMeaningBuilder classified_with =
      CodeSystemHierarchyMeaningBuilder._(
    valueString: 'classified-with',
    system: 'http://hl7.org/fhir/ValueSet/codesystem-hierarchy-meaning'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Classified With'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static CodeSystemHierarchyMeaningBuilder elementOnly =
      CodeSystemHierarchyMeaningBuilder._(valueString: '');

  /// List of all enum-like values
  static List<CodeSystemHierarchyMeaningBuilder> values = [
    grouped_by,
    is_a,
    part_of,
    classified_with,
  ];

  /// Clones the current instance
  @override
  CodeSystemHierarchyMeaningBuilder clone() =>
      CodeSystemHierarchyMeaningBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  CodeSystemHierarchyMeaningBuilder withElement(ElementBuilder? newElement) {
    return CodeSystemHierarchyMeaningBuilder._(
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
  CodeSystemHierarchyMeaningBuilder copyWith({
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
          'Invalid input for CodeSystemHierarchyMeaning: $newValue');
    }
    return CodeSystemHierarchyMeaningBuilder._(
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
