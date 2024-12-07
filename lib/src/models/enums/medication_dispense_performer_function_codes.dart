// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// MedicationDispense Performer Function Codes
class MedicationDispensePerformerFunctionCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  MedicationDispensePerformerFunctionCodes._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [MedicationDispensePerformerFunctionCodes] from JSON.
  factory MedicationDispensePerformerFunctionCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationDispensePerformerFunctionCodes.elementOnly
          .withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'MedicationDispensePerformerFunctionCodes cannot be constructed from JSON.',
      );
    }
    return MedicationDispensePerformerFunctionCodes._(
        value: value, element: element);
  }

  /// dataenterer
  static final MedicationDispensePerformerFunctionCodes dataenterer =
      MedicationDispensePerformerFunctionCodes._(
    value: 'dataenterer',
  );

  /// packager
  static final MedicationDispensePerformerFunctionCodes packager =
      MedicationDispensePerformerFunctionCodes._(
    value: 'packager',
  );

  /// checker
  static final MedicationDispensePerformerFunctionCodes checker =
      MedicationDispensePerformerFunctionCodes._(
    value: 'checker',
  );

  /// finalchecker
  static final MedicationDispensePerformerFunctionCodes finalchecker =
      MedicationDispensePerformerFunctionCodes._(
    value: 'finalchecker',
  );

  /// For instances where an Element is present but not value

  static final MedicationDispensePerformerFunctionCodes elementOnly =
      MedicationDispensePerformerFunctionCodes._(value: '');

  /// List of all enum-like values
  static final List<MedicationDispensePerformerFunctionCodes> values = [
    dataenterer,
    packager,
    checker,
    finalchecker,
  ];

  /// Clones the current instance
  @override
  MedicationDispensePerformerFunctionCodes clone() =>
      MedicationDispensePerformerFunctionCodes._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  MedicationDispensePerformerFunctionCodes withElement(Element? newElement) {
    return MedicationDispensePerformerFunctionCodes._(
        value: value, element: newElement);
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
  MedicationDispensePerformerFunctionCodes copyWith({
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
    return MedicationDispensePerformerFunctionCodes._(
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
