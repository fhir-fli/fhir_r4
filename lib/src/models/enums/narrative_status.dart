// ignore_for_file: unused_element_parameter, non_constant_identifier_names

import 'package:fhir_r4/fhir_r4.dart';

/// The status of a resource narrative.
class NarrativeStatus extends FhirCodeEnum {
  // Private constructor for internal use (like enum)
  NarrativeStatus._(
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

  /// Create empty [NarrativeStatus] with element only
  factory NarrativeStatus.empty() => NarrativeStatus._('');

  /// Factory constructor to create [NarrativeStatus] from JSON.
  factory NarrativeStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return NarrativeStatus.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'NarrativeStatus cannot be constructed from JSON.',
      );
    }
    return NarrativeStatus._(
      value,
      element: element,
    );
  }

  /// generated
  static final NarrativeStatus generated = NarrativeStatus._(
    'generated',
    system: 'http://hl7.org/fhir/ValueSet/narrative-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Generated'.toFhirString,
  );

  /// extensions
  static final NarrativeStatus extensions = NarrativeStatus._(
    'extensions',
    system: 'http://hl7.org/fhir/ValueSet/narrative-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Extensions'.toFhirString,
  );

  /// additional
  static final NarrativeStatus additional = NarrativeStatus._(
    'additional',
    system: 'http://hl7.org/fhir/ValueSet/narrative-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Additional'.toFhirString,
  );

  /// empty_
  static final NarrativeStatus empty_ = NarrativeStatus._(
    'empty',
    system: 'http://hl7.org/fhir/ValueSet/narrative-status'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Empty'.toFhirString,
  );

  /// For instances where an Element is present but not value

  static final NarrativeStatus elementOnly = NarrativeStatus._('');

  /// List of all enum-like values
  static final List<NarrativeStatus> values = [
    generated,
    extensions,
    additional,
    empty_,
  ];

  /// Clones the current instance
  @override
  NarrativeStatus clone() => NarrativeStatus._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  NarrativeStatus withElement(Element? newElement) {
    return NarrativeStatus._(
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
  NarrativeStatus copyWith({
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
    return NarrativeStatus._(
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
