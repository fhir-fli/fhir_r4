// ignore_for_file: unused_element_parameter, non_constant_identifier_names

import 'package:fhir_r4/fhir_r4.dart';

/// The processing mode that applies to this list.
class ListMode extends FhirCodeEnum {
  // Private constructor for internal use (like enum)
  ListMode._(
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

  /// Create empty [ListMode] with element only
  factory ListMode.empty() => ListMode._('');

  /// Factory constructor to create [ListMode] from JSON.
  factory ListMode.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ListMode.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ListMode cannot be constructed from JSON.',
      );
    }
    return ListMode._(
      value,
      element: element,
    );
  }

  /// working
  static final ListMode working = ListMode._(
    'working',
    system: 'http://hl7.org/fhir/ValueSet/list-mode'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Working List'.toFhirString,
  );

  /// snapshot
  static final ListMode snapshot = ListMode._(
    'snapshot',
    system: 'http://hl7.org/fhir/ValueSet/list-mode'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Snapshot List'.toFhirString,
  );

  /// changes
  static final ListMode changes = ListMode._(
    'changes',
    system: 'http://hl7.org/fhir/ValueSet/list-mode'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Change List'.toFhirString,
  );

  /// For instances where an Element is present but not value

  static final ListMode elementOnly = ListMode._('');

  /// List of all enum-like values
  static final List<ListMode> values = [
    working,
    snapshot,
    changes,
  ];

  /// Clones the current instance
  @override
  ListMode clone() => ListMode._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ListMode withElement(Element? newElement) {
    return ListMode._(
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
  ListMode copyWith({
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
    return ListMode._(
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
