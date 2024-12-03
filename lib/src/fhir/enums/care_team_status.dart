// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Indicates the status of the care team.
class CareTeamStatus extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  CareTeamStatus._(super.value, [super.element]);

  /// Factory constructor to create [CareTeamStatus] from JSON.
  factory CareTeamStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CareTeamStatus.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'CareTeamStatus cannot be constructed from JSON.',
      );
    }
    return CareTeamStatus._(value, element);
  }

  /// proposed
  static final CareTeamStatus proposed = CareTeamStatus._(
    'proposed',
  );

  /// active
  static final CareTeamStatus active = CareTeamStatus._(
    'active',
  );

  /// suspended
  static final CareTeamStatus suspended = CareTeamStatus._(
    'suspended',
  );

  /// inactive
  static final CareTeamStatus inactive = CareTeamStatus._(
    'inactive',
  );

  /// entered_in_error
  static final CareTeamStatus entered_in_error = CareTeamStatus._(
    'entered-in-error',
  );

  /// For instances where an Element is present but not value

  static final CareTeamStatus elementOnly = CareTeamStatus._('');

  /// List of all enum-like values
  static final List<CareTeamStatus> values = [
    proposed,
    active,
    suspended,
    inactive,
    entered_in_error,
  ];

  /// Clones the current instance
  @override
  CareTeamStatus clone() => CareTeamStatus._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  CareTeamStatus setElement(
    String name,
    dynamic elementValue,
  ) {
    return CareTeamStatus._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  CareTeamStatus withElement(Element? newElement) {
    return CareTeamStatus._(value, newElement);
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
  CareTeamStatus copyWith({
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
    return CareTeamStatus._(
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
