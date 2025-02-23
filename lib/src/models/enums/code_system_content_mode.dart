// ignore_for_file: unused_element_parameter, non_constant_identifier_names

import 'package:fhir_r4/fhir_r4.dart';

/// The extent of the content of the code system (the concepts and codes it
/// defines) are represented in a code system resource.
class CodeSystemContentMode extends FhirCodeEnum {
  // Private constructor for internal use (like enum)
  CodeSystemContentMode._(
    super.value, {
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  });

  /// Create empty [CodeSystemContentMode] with element only
  factory CodeSystemContentMode.empty() => CodeSystemContentMode._('');

  /// Factory constructor to create [CodeSystemContentMode] from JSON.
  factory CodeSystemContentMode.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CodeSystemContentMode.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'CodeSystemContentMode cannot be constructed from JSON.',
      );
    }
    return CodeSystemContentMode._(
      value,
      element: element,
    );
  }

  /// not_present
  static final CodeSystemContentMode not_present = CodeSystemContentMode._(
    'not-present',
    system: 'http://hl7.org/fhir/ValueSet/codesystem-content-mode'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Not Present'.toFhirString,
  );

  /// example
  static final CodeSystemContentMode example = CodeSystemContentMode._(
    'example',
    system: 'http://hl7.org/fhir/ValueSet/codesystem-content-mode'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Example'.toFhirString,
  );

  /// fragment
  static final CodeSystemContentMode fragment = CodeSystemContentMode._(
    'fragment',
    system: 'http://hl7.org/fhir/ValueSet/codesystem-content-mode'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Fragment'.toFhirString,
  );

  /// complete
  static final CodeSystemContentMode complete = CodeSystemContentMode._(
    'complete',
    system: 'http://hl7.org/fhir/ValueSet/codesystem-content-mode'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Complete'.toFhirString,
  );

  /// supplement
  static final CodeSystemContentMode supplement = CodeSystemContentMode._(
    'supplement',
    system: 'http://hl7.org/fhir/ValueSet/codesystem-content-mode'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Supplement'.toFhirString,
  );

  /// For instances where an Element is present but not value

  static final CodeSystemContentMode elementOnly = CodeSystemContentMode._('');

  /// List of all enum-like values
  static final List<CodeSystemContentMode> values = [
    not_present,
    example,
    fragment,
    complete,
    supplement,
  ];

  /// Clones the current instance
  @override
  CodeSystemContentMode clone() => CodeSystemContentMode._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  CodeSystemContentMode withElement(Element? newElement) {
    return CodeSystemContentMode._(
      value,
      element: newElement,
    );
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
  CodeSystemContentMode copyWith({
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
    return CodeSystemContentMode._(
      newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath,
    );
  }
}
