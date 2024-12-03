// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Status of the supply request.
class SupplyRequestStatus extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  SupplyRequestStatus._(super.value, [super.element]);

  /// Factory constructor to create [SupplyRequestStatus] from JSON.
  factory SupplyRequestStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SupplyRequestStatus.elementOnly.withElement(element);
    }
    return SupplyRequestStatus._(value, element);
  }

  /// draft
  static final SupplyRequestStatus draft = SupplyRequestStatus._(
    'draft',
  );

  /// active
  static final SupplyRequestStatus active = SupplyRequestStatus._(
    'active',
  );

  /// suspended
  static final SupplyRequestStatus suspended = SupplyRequestStatus._(
    'suspended',
  );

  /// cancelled
  static final SupplyRequestStatus cancelled = SupplyRequestStatus._(
    'cancelled',
  );

  /// completed
  static final SupplyRequestStatus completed = SupplyRequestStatus._(
    'completed',
  );

  /// entered_in_error
  static final SupplyRequestStatus entered_in_error = SupplyRequestStatus._(
    'entered-in-error',
  );

  /// unknown
  static final SupplyRequestStatus unknown = SupplyRequestStatus._(
    'unknown',
  );

  /// For instances where an Element is present but not value

  static final SupplyRequestStatus elementOnly = SupplyRequestStatus._('');

  /// List of all enum-like values
  static final List<SupplyRequestStatus> values = [
    draft,
    active,
    suspended,
    cancelled,
    completed,
    entered_in_error,
    unknown,
  ];

  /// Clones the current instance
  @override
  SupplyRequestStatus clone() =>
      SupplyRequestStatus._(value, element?.clone() as Element?);

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  SupplyRequestStatus setElement(String name, dynamic elementValue) {
    return SupplyRequestStatus._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  SupplyRequestStatus withElement(Element? newElement) {
    return SupplyRequestStatus._(value, newElement);
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
  SupplyRequestStatus copyWith({
    String? newValue,
    Element? element,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return SupplyRequestStatus._(
      newValue ?? value,
      (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
        children: children ?? this.element?.children,
        namedChildren: namedChildren ?? this.element?.namedChildren,
      ),
    );
  }
}
