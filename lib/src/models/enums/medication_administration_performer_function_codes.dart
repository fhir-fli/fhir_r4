// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// MedicationAdministration Performer Function Codes
class MedicationAdministrationPerformerFunctionCodes
    extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  MedicationAdministrationPerformerFunctionCodes._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [MedicationAdministrationPerformerFunctionCodes] from JSON.
  factory MedicationAdministrationPerformerFunctionCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationAdministrationPerformerFunctionCodes.elementOnly
          .withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'MedicationAdministrationPerformerFunctionCodes cannot be constructed from JSON.',
      );
    }
    return MedicationAdministrationPerformerFunctionCodes._(
        value: value, element: element);
  }

  /// performer
  static final MedicationAdministrationPerformerFunctionCodes performer =
      MedicationAdministrationPerformerFunctionCodes._(
    value: 'performer',
  );

  /// verifier
  static final MedicationAdministrationPerformerFunctionCodes verifier =
      MedicationAdministrationPerformerFunctionCodes._(
    value: 'verifier',
  );

  /// witness
  static final MedicationAdministrationPerformerFunctionCodes witness =
      MedicationAdministrationPerformerFunctionCodes._(
    value: 'witness',
  );

  /// For instances where an Element is present but not value

  static final MedicationAdministrationPerformerFunctionCodes elementOnly =
      MedicationAdministrationPerformerFunctionCodes._(value: '');

  /// List of all enum-like values
  static final List<MedicationAdministrationPerformerFunctionCodes> values = [
    performer,
    verifier,
    witness,
  ];

  /// Clones the current instance
  @override
  MedicationAdministrationPerformerFunctionCodes clone() =>
      MedicationAdministrationPerformerFunctionCodes._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  MedicationAdministrationPerformerFunctionCodes withElement(
      Element? newElement) {
    return MedicationAdministrationPerformerFunctionCodes._(
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
  MedicationAdministrationPerformerFunctionCodes copyWith({
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
    return MedicationAdministrationPerformerFunctionCodes._(
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
