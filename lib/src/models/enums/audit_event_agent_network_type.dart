// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The type of network access point of this agent in the audit event.
class AuditEventAgentNetworkType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  AuditEventAgentNetworkType._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [AuditEventAgentNetworkType] from JSON.
  factory AuditEventAgentNetworkType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AuditEventAgentNetworkType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AuditEventAgentNetworkType cannot be constructed from JSON.',
      );
    }
    return AuditEventAgentNetworkType._(value: value, element: element);
  }

  /// value1
  static final AuditEventAgentNetworkType value1 = AuditEventAgentNetworkType._(
    value: '1',
  );

  /// value2
  static final AuditEventAgentNetworkType value2 = AuditEventAgentNetworkType._(
    value: '2',
  );

  /// value3
  static final AuditEventAgentNetworkType value3 = AuditEventAgentNetworkType._(
    value: '3',
  );

  /// value4
  static final AuditEventAgentNetworkType value4 = AuditEventAgentNetworkType._(
    value: '4',
  );

  /// value5
  static final AuditEventAgentNetworkType value5 = AuditEventAgentNetworkType._(
    value: '5',
  );

  /// For instances where an Element is present but not value

  static final AuditEventAgentNetworkType elementOnly =
      AuditEventAgentNetworkType._(value: '');

  /// List of all enum-like values
  static final List<AuditEventAgentNetworkType> values = [
    value1,
    value2,
    value3,
    value4,
    value5,
  ];

  /// Clones the current instance
  @override
  AuditEventAgentNetworkType clone() => AuditEventAgentNetworkType._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  AuditEventAgentNetworkType withElement(Element? newElement) {
    return AuditEventAgentNetworkType._(value: value, element: newElement);
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
  AuditEventAgentNetworkType copyWith({
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
    return AuditEventAgentNetworkType._(
      value: newValue ?? value,
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
