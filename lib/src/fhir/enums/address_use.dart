// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The use of an address.
class AddressUse {
  // Private constructor for internal use (like enum)
  AddressUse._(this.fhirCode, {this.element});

  /// Factory constructor to create [AddressUse] from JSON.
  factory AddressUse.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AddressUse.elementOnly.withElement(element);
    }
    return AddressUse._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// AddressUse values
  /// home
  static final AddressUse home = AddressUse._(
    'home',
  );

  /// work
  static final AddressUse work = AddressUse._(
    'work',
  );

  /// temp
  static final AddressUse temp = AddressUse._(
    'temp',
  );

  /// old
  static final AddressUse old = AddressUse._(
    'old',
  );

  /// billing
  static final AddressUse billing = AddressUse._(
    'billing',
  );

  /// For instances where an Element is present but not value

  static final AddressUse elementOnly = AddressUse._('');

  /// List of all enum-like values
  static final List<AddressUse> values = [
    home,
    work,
    temp,
    old,
    billing,
  ];

  /// Returns the enum value with an element attached
  AddressUse withElement(Element? newElement) {
    return AddressUse._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => fhirCode;
}
