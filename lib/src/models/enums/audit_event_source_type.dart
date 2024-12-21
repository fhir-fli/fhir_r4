// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The type of process where the audit event originated from.
class AuditEventSourceType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  AuditEventSourceType._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [AuditEventSourceType] from JSON.
  factory AuditEventSourceType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AuditEventSourceType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AuditEventSourceType cannot be constructed from JSON.',
      );
    }
    return AuditEventSourceType._(value, element: element);
  }

  /// value1
  static final AuditEventSourceType value1 = AuditEventSourceType._(
    '1',
  );

  /// value2
  static final AuditEventSourceType value2 = AuditEventSourceType._(
    '2',
  );

  /// value3
  static final AuditEventSourceType value3 = AuditEventSourceType._(
    '3',
  );

  /// value4
  static final AuditEventSourceType value4 = AuditEventSourceType._(
    '4',
  );

  /// value5
  static final AuditEventSourceType value5 = AuditEventSourceType._(
    '5',
  );

  /// value6
  static final AuditEventSourceType value6 = AuditEventSourceType._(
    '6',
  );

  /// value7
  static final AuditEventSourceType value7 = AuditEventSourceType._(
    '7',
  );

  /// value8
  static final AuditEventSourceType value8 = AuditEventSourceType._(
    '8',
  );

  /// value9
  static final AuditEventSourceType value9 = AuditEventSourceType._(
    '9',
  );

  /// For instances where an Element is present but not value

  static final AuditEventSourceType elementOnly = AuditEventSourceType._('');

  /// List of all enum-like values
  static final List<AuditEventSourceType> values = [
    value1,
    value2,
    value3,
    value4,
    value5,
    value6,
    value7,
    value8,
    value9,
  ];

  /// Clones the current instance
  @override
  AuditEventSourceType clone() => AuditEventSourceType._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  AuditEventSourceType withElement(Element? newElement) {
    return AuditEventSourceType._(
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
  AuditEventSourceType copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return AuditEventSourceType._(
      newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
    );
  }
}
