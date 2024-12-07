// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// MedicationDispense Status Codes
class MedicationDispenseStatusCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  MedicationDispenseStatusCodes._(super.value, [super.element]);

  /// Factory constructor to create [MedicationDispenseStatusCodes] from JSON.
  factory MedicationDispenseStatusCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationDispenseStatusCodes.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'MedicationDispenseStatusCodes cannot be constructed from JSON.',
      );
    }
    return MedicationDispenseStatusCodes._(value, element);
  }

  /// preparation
  static final MedicationDispenseStatusCodes preparation =
      MedicationDispenseStatusCodes._(
    'preparation',
  );

  /// in_progress
  static final MedicationDispenseStatusCodes in_progress =
      MedicationDispenseStatusCodes._(
    'in-progress',
  );

  /// cancelled
  static final MedicationDispenseStatusCodes cancelled =
      MedicationDispenseStatusCodes._(
    'cancelled',
  );

  /// on_hold
  static final MedicationDispenseStatusCodes on_hold =
      MedicationDispenseStatusCodes._(
    'on-hold',
  );

  /// completed
  static final MedicationDispenseStatusCodes completed =
      MedicationDispenseStatusCodes._(
    'completed',
  );

  /// entered_in_error
  static final MedicationDispenseStatusCodes entered_in_error =
      MedicationDispenseStatusCodes._(
    'entered-in-error',
  );

  /// stopped
  static final MedicationDispenseStatusCodes stopped =
      MedicationDispenseStatusCodes._(
    'stopped',
  );

  /// declined
  static final MedicationDispenseStatusCodes declined =
      MedicationDispenseStatusCodes._(
    'declined',
  );

  /// unknown
  static final MedicationDispenseStatusCodes unknown =
      MedicationDispenseStatusCodes._(
    'unknown',
  );

  /// For instances where an Element is present but not value

  static final MedicationDispenseStatusCodes elementOnly =
      MedicationDispenseStatusCodes._('');

  /// List of all enum-like values
  static final List<MedicationDispenseStatusCodes> values = [
    preparation,
    in_progress,
    cancelled,
    on_hold,
    completed,
    entered_in_error,
    stopped,
    declined,
    unknown,
  ];

  /// Clones the current instance
  @override
  MedicationDispenseStatusCodes clone() => MedicationDispenseStatusCodes._(
        value,
        element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  MedicationDispenseStatusCodes withElement(Element? newElement) {
    return MedicationDispenseStatusCodes._(value, newElement);
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
  MedicationDispenseStatusCodes copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    Map<String, List<void Function()>>? propertyChanged,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return MedicationDispenseStatusCodes._(
      newValue ?? value,
      (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
    );
  }
}
