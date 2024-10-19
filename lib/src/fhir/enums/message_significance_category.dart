// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// The impact of the content of a message.
@collection
class MessageSignificanceCategory {
  /// Constructor for internal use (like enum)
  MessageSignificanceCategory({this.fhirCode, this.element})
      : assert(
          fhirCode != null || element != null,
          'Either fhirCode or element should be provided',
        );

  /// The ID of the object in the database.
  Id dbId = Isar.autoIncrement;

  /// The String value of this enum (FHIR code)
  final String? fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// MessageSignificanceCategory values
  /// consequence
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MessageSignificanceCategory consequence =
      MessageSignificanceCategory(
    fhirCode: 'consequence',
  );

  /// currency
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MessageSignificanceCategory currency =
      MessageSignificanceCategory(
    fhirCode: 'currency',
  );

  /// notification
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final MessageSignificanceCategory notification =
      MessageSignificanceCategory(
    fhirCode: 'notification',
  );

  /// For instances where an Element is present but not value

  static final MessageSignificanceCategory elementOnly =
      MessageSignificanceCategory();

  /// List of all enum-like values
  static final List<MessageSignificanceCategory> values = [
    consequence,
    currency,
    notification,
  ];

  /// Returns the enum value with an element attached
  MessageSignificanceCategory withElement(Element? newElement) {
    return MessageSignificanceCategory(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [MessageSignificanceCategory] from JSON.
  static MessageSignificanceCategory fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MessageSignificanceCategory.elementOnly.withElement(element);
    }
    return MessageSignificanceCategory.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'MessageSignificanceCategory.$fhirCode';
}
