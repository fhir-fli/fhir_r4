// ignore_for_file: unused_element_parameter, non_constant_identifier_names

import 'package:fhir_r4/fhir_r4.dart';

/// The way in which a person authenticated a composition.
class CompositionAttestationMode extends FhirCode {
  // Private constructor for internal use (like enum)
  CompositionAttestationMode._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  });

  /// Factory constructor to create [CompositionAttestationMode] from JSON.
  factory CompositionAttestationMode.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CompositionAttestationMode.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'CompositionAttestationMode cannot be constructed from JSON.',
      );
    }
    return CompositionAttestationMode._(
      value,
      element: element,
    );
  }

  /// personal
  static final CompositionAttestationMode personal =
      CompositionAttestationMode._(
    'personal',
  );

  /// professional
  static final CompositionAttestationMode professional =
      CompositionAttestationMode._(
    'professional',
  );

  /// legal
  static final CompositionAttestationMode legal = CompositionAttestationMode._(
    'legal',
  );

  /// official
  static final CompositionAttestationMode official =
      CompositionAttestationMode._(
    'official',
  );

  /// For instances where an Element is present but not value

  static final CompositionAttestationMode elementOnly =
      CompositionAttestationMode._('');

  /// List of all enum-like values
  static final List<CompositionAttestationMode> values = [
    personal,
    professional,
    legal,
    official,
  ];

  /// Clones the current instance
  @override
  CompositionAttestationMode clone() => CompositionAttestationMode._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  CompositionAttestationMode withElement(Element? newElement) {
    return CompositionAttestationMode._(
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
  CompositionAttestationMode copyWith({
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
    return CompositionAttestationMode._(
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
