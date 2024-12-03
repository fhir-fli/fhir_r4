// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Code representing the role the entity played in the audit event.
class AuditEventEntityRole extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  AuditEventEntityRole._(super.value, [super.element]);

  /// Factory constructor to create [AuditEventEntityRole] from JSON.
  factory AuditEventEntityRole.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AuditEventEntityRole.elementOnly.withElement(element);
    }
    return AuditEventEntityRole._(value, element);
  }

  /// value1
  static final AuditEventEntityRole value1 = AuditEventEntityRole._(
    '1',
  );

  /// value2
  static final AuditEventEntityRole value2 = AuditEventEntityRole._(
    '2',
  );

  /// value3
  static final AuditEventEntityRole value3 = AuditEventEntityRole._(
    '3',
  );

  /// value4
  static final AuditEventEntityRole value4 = AuditEventEntityRole._(
    '4',
  );

  /// value5
  static final AuditEventEntityRole value5 = AuditEventEntityRole._(
    '5',
  );

  /// value6
  static final AuditEventEntityRole value6 = AuditEventEntityRole._(
    '6',
  );

  /// value7
  static final AuditEventEntityRole value7 = AuditEventEntityRole._(
    '7',
  );

  /// value8
  static final AuditEventEntityRole value8 = AuditEventEntityRole._(
    '8',
  );

  /// value9
  static final AuditEventEntityRole value9 = AuditEventEntityRole._(
    '9',
  );

  /// value10
  static final AuditEventEntityRole value10 = AuditEventEntityRole._(
    '10',
  );

  /// value11
  static final AuditEventEntityRole value11 = AuditEventEntityRole._(
    '11',
  );

  /// value12
  static final AuditEventEntityRole value12 = AuditEventEntityRole._(
    '12',
  );

  /// value13
  static final AuditEventEntityRole value13 = AuditEventEntityRole._(
    '13',
  );

  /// value14
  static final AuditEventEntityRole value14 = AuditEventEntityRole._(
    '14',
  );

  /// value15
  static final AuditEventEntityRole value15 = AuditEventEntityRole._(
    '15',
  );

  /// value16
  static final AuditEventEntityRole value16 = AuditEventEntityRole._(
    '16',
  );

  /// value17
  static final AuditEventEntityRole value17 = AuditEventEntityRole._(
    '17',
  );

  /// value18
  static final AuditEventEntityRole value18 = AuditEventEntityRole._(
    '18',
  );

  /// value19
  static final AuditEventEntityRole value19 = AuditEventEntityRole._(
    '19',
  );

  /// value20
  static final AuditEventEntityRole value20 = AuditEventEntityRole._(
    '20',
  );

  /// value21
  static final AuditEventEntityRole value21 = AuditEventEntityRole._(
    '21',
  );

  /// value22
  static final AuditEventEntityRole value22 = AuditEventEntityRole._(
    '22',
  );

  /// value23
  static final AuditEventEntityRole value23 = AuditEventEntityRole._(
    '23',
  );

  /// value24
  static final AuditEventEntityRole value24 = AuditEventEntityRole._(
    '24',
  );

  /// For instances where an Element is present but not value

  static final AuditEventEntityRole elementOnly = AuditEventEntityRole._('');

  /// List of all enum-like values
  static final List<AuditEventEntityRole> values = [
    value1,
    value2,
    value3,
    value4,
    value5,
    value6,
    value7,
    value8,
    value9,
    value10,
    value11,
    value12,
    value13,
    value14,
    value15,
    value16,
    value17,
    value18,
    value19,
    value20,
    value21,
    value22,
    value23,
    value24,
  ];

  /// Clones the current instance
  @override
  AuditEventEntityRole clone() =>
      AuditEventEntityRole._(value, element?.clone() as Element?);

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  AuditEventEntityRole setElement(String name, dynamic elementValue) {
    return AuditEventEntityRole._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  AuditEventEntityRole withElement(Element? newElement) {
    return AuditEventEntityRole._(value, newElement);
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
  AuditEventEntityRole copyWith({
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
    return AuditEventEntityRole._(
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
