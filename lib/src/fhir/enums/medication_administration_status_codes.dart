// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// MedicationAdministration Status Codes
class MedicationAdministrationStatusCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  MedicationAdministrationStatusCodes._(super.value, [super.element]);

  /// Factory constructor to create [MedicationAdministrationStatusCodes] from JSON.
  factory MedicationAdministrationStatusCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationAdministrationStatusCodes.elementOnly
          .withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
          'MedicationAdministrationStatusCodes cannot be constructed from JSON.');
    }
    return MedicationAdministrationStatusCodes._(value, element);
  }

  /// in_progress
  static final MedicationAdministrationStatusCodes in_progress =
      MedicationAdministrationStatusCodes._(
    'in-progress',
  );

  /// not_done
  static final MedicationAdministrationStatusCodes not_done =
      MedicationAdministrationStatusCodes._(
    'not-done',
  );

  /// on_hold
  static final MedicationAdministrationStatusCodes on_hold =
      MedicationAdministrationStatusCodes._(
    'on-hold',
  );

  /// completed
  static final MedicationAdministrationStatusCodes completed =
      MedicationAdministrationStatusCodes._(
    'completed',
  );

  /// entered_in_error
  static final MedicationAdministrationStatusCodes entered_in_error =
      MedicationAdministrationStatusCodes._(
    'entered-in-error',
  );

  /// stopped
  static final MedicationAdministrationStatusCodes stopped =
      MedicationAdministrationStatusCodes._(
    'stopped',
  );

  /// unknown
  static final MedicationAdministrationStatusCodes unknown =
      MedicationAdministrationStatusCodes._(
    'unknown',
  );

  /// For instances where an Element is present but not value

  static final MedicationAdministrationStatusCodes elementOnly =
      MedicationAdministrationStatusCodes._('');

  /// List of all enum-like values
  static final List<MedicationAdministrationStatusCodes> values = [
    in_progress,
    not_done,
    on_hold,
    completed,
    entered_in_error,
    stopped,
    unknown,
  ];

  /// Clones the current instance
  @override
  MedicationAdministrationStatusCodes clone() =>
      MedicationAdministrationStatusCodes._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  MedicationAdministrationStatusCodes setElement(
    String name,
    dynamic elementValue,
  ) {
    return MedicationAdministrationStatusCodes._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  MedicationAdministrationStatusCodes withElement(Element? newElement) {
    return MedicationAdministrationStatusCodes._(value, newElement);
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
  MedicationAdministrationStatusCodes copyWith({
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
    return MedicationAdministrationStatusCodes._(
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
