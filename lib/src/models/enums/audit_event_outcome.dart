// ignore_for_file: unused_element_parameter, non_constant_identifier_names

import 'package:fhir_r4/fhir_r4.dart';

/// Indicates whether the event succeeded or failed.
class AuditEventOutcome extends FhirCode {
  // Private constructor for internal use (like enum)
  AuditEventOutcome._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  });

  /// Factory constructor to create [AuditEventOutcome] from JSON.
  factory AuditEventOutcome.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AuditEventOutcome.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AuditEventOutcome cannot be constructed from JSON.',
      );
    }
    return AuditEventOutcome._(
      value,
      element: element,
    );
  }

  /// value0
  static final AuditEventOutcome value0 = AuditEventOutcome._(
    '0',
  );

  /// value4
  static final AuditEventOutcome value4 = AuditEventOutcome._(
    '4',
  );

  /// value8
  static final AuditEventOutcome value8 = AuditEventOutcome._(
    '8',
  );

  /// value12
  static final AuditEventOutcome value12 = AuditEventOutcome._(
    '12',
  );

  /// For instances where an Element is present but not value

  static final AuditEventOutcome elementOnly = AuditEventOutcome._('');

  /// List of all enum-like values
  static final List<AuditEventOutcome> values = [
    value0,
    value4,
    value8,
    value12,
  ];

  /// Clones the current instance
  @override
  AuditEventOutcome clone() => AuditEventOutcome._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  AuditEventOutcome withElement(Element? newElement) {
    return AuditEventOutcome._(
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
  AuditEventOutcome copyWith({
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
    return AuditEventOutcome._(
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
