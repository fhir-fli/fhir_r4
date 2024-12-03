// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// MedicationStatement Status Codes
class MedicationStatementStatusCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  MedicationStatementStatusCodes._(super.value, [super.element]);

  /// Factory constructor to create [MedicationStatementStatusCodes] from JSON.
  factory MedicationStatementStatusCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationStatementStatusCodes.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'MedicationStatementStatusCodes cannot be constructed from JSON.',
      );
    }
    return MedicationStatementStatusCodes._(value, element);
  }

  /// active
  static final MedicationStatementStatusCodes active =
      MedicationStatementStatusCodes._(
    'active',
  );

  /// completed
  static final MedicationStatementStatusCodes completed =
      MedicationStatementStatusCodes._(
    'completed',
  );

  /// entered_in_error
  static final MedicationStatementStatusCodes entered_in_error =
      MedicationStatementStatusCodes._(
    'entered-in-error',
  );

  /// intended
  static final MedicationStatementStatusCodes intended =
      MedicationStatementStatusCodes._(
    'intended',
  );

  /// stopped
  static final MedicationStatementStatusCodes stopped =
      MedicationStatementStatusCodes._(
    'stopped',
  );

  /// on_hold
  static final MedicationStatementStatusCodes on_hold =
      MedicationStatementStatusCodes._(
    'on-hold',
  );

  /// unknown
  static final MedicationStatementStatusCodes unknown =
      MedicationStatementStatusCodes._(
    'unknown',
  );

  /// not_taken
  static final MedicationStatementStatusCodes not_taken =
      MedicationStatementStatusCodes._(
    'not-taken',
  );

  /// For instances where an Element is present but not value

  static final MedicationStatementStatusCodes elementOnly =
      MedicationStatementStatusCodes._('');

  /// List of all enum-like values
  static final List<MedicationStatementStatusCodes> values = [
    active,
    completed,
    entered_in_error,
    intended,
    stopped,
    on_hold,
    unknown,
    not_taken,
  ];

  /// Clones the current instance
  @override
  MedicationStatementStatusCodes clone() => MedicationStatementStatusCodes._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  MedicationStatementStatusCodes setElement(
    String name,
    dynamic elementValue,
  ) {
    return MedicationStatementStatusCodes._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  MedicationStatementStatusCodes withElement(Element? newElement) {
    return MedicationStatementStatusCodes._(value, newElement);
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
  MedicationStatementStatusCodes copyWith({
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
    return MedicationStatementStatusCodes._(
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
