// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The meaning of the hierarchy of concepts in a code system.
class CodeSystemHierarchyMeaning extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  CodeSystemHierarchyMeaning._({
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
  factory CodeSystemHierarchyMeaning(
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
    return CodeSystemHierarchyMeaning._(
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

  /// Create empty [CodeSystemHierarchyMeaning] with element only
  factory CodeSystemHierarchyMeaning.empty() =>
      CodeSystemHierarchyMeaning._(valueString: '');

  /// Factory constructor to create [CodeSystemHierarchyMeaning] from JSON.
  factory CodeSystemHierarchyMeaning.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CodeSystemHierarchyMeaning.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'CodeSystemHierarchyMeaning cannot be constructed from JSON.',
      );
    }
    return CodeSystemHierarchyMeaning._(
      valueString: value,
      element: element,
    );
  }

  /// grouped_by
  static final CodeSystemHierarchyMeaning grouped_by =
      CodeSystemHierarchyMeaning._(
    valueString: 'grouped-by',
    system:
        'http://hl7.org/fhir/ValueSet/codesystem-hierarchy-meaning'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Grouped By'.toFhirString,
  );

  /// is_a
  static final CodeSystemHierarchyMeaning is_a = CodeSystemHierarchyMeaning._(
    valueString: 'is-a',
    system:
        'http://hl7.org/fhir/ValueSet/codesystem-hierarchy-meaning'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Is-A'.toFhirString,
  );

  /// part_of
  static final CodeSystemHierarchyMeaning part_of =
      CodeSystemHierarchyMeaning._(
    valueString: 'part-of',
    system:
        'http://hl7.org/fhir/ValueSet/codesystem-hierarchy-meaning'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Part Of'.toFhirString,
  );

  /// classified_with
  static final CodeSystemHierarchyMeaning classified_with =
      CodeSystemHierarchyMeaning._(
    valueString: 'classified-with',
    system:
        'http://hl7.org/fhir/ValueSet/codesystem-hierarchy-meaning'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Classified With'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final CodeSystemHierarchyMeaning elementOnly =
      CodeSystemHierarchyMeaning._(valueString: '');

  /// List of all enum-like values
  static final List<CodeSystemHierarchyMeaning> values = [
    grouped_by,
    is_a,
    part_of,
    classified_with,
  ];

  /// Clones the current instance
  @override
  CodeSystemHierarchyMeaning clone() => CodeSystemHierarchyMeaning._(
        valueString: valueString,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  CodeSystemHierarchyMeaning withElement(Element? newElement) {
    return CodeSystemHierarchyMeaning._(
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
  CodeSystemHierarchyMeaning copyWith({
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
          'Invalid input for CodeSystemHierarchyMeaning: $newValue',);
    }
    return CodeSystemHierarchyMeaning._(
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
