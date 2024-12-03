// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes sample funds reservation type codes.
class FundsReservationCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  FundsReservationCodes._(super.value, [super.element]);

  /// Factory constructor to create [FundsReservationCodes] from JSON.
  factory FundsReservationCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FundsReservationCodes.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
          'FundsReservationCodes cannot be constructed from JSON.');
    }
    return FundsReservationCodes._(value, element);
  }

  /// patient
  static final FundsReservationCodes patient = FundsReservationCodes._(
    'patient',
  );

  /// provider
  static final FundsReservationCodes provider = FundsReservationCodes._(
    'provider',
  );

  /// none
  static final FundsReservationCodes none = FundsReservationCodes._(
    'none',
  );

  /// For instances where an Element is present but not value

  static final FundsReservationCodes elementOnly = FundsReservationCodes._('');

  /// List of all enum-like values
  static final List<FundsReservationCodes> values = [
    patient,
    provider,
    none,
  ];

  /// Clones the current instance
  @override
  FundsReservationCodes clone() => FundsReservationCodes._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  FundsReservationCodes setElement(
    String name,
    dynamic elementValue,
  ) {
    return FundsReservationCodes._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  FundsReservationCodes withElement(Element? newElement) {
    return FundsReservationCodes._(value, newElement);
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
  FundsReservationCodes copyWith({
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
    return FundsReservationCodes._(
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
