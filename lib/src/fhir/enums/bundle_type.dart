// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Indicates the purpose of a bundle - how it is intended to be used.
@collection
class BundleType {
  /// Constructor for internal use (like enum)
  BundleType({this.fhirCode, this.element})
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

  /// BundleType values
  /// document
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BundleType document = BundleType(
    fhirCode: 'document',
  );

  /// message
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BundleType message = BundleType(
    fhirCode: 'message',
  );

  /// transaction
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BundleType transaction = BundleType(
    fhirCode: 'transaction',
  );

  /// transaction_response
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BundleType transaction_response = BundleType(
    fhirCode: 'transaction-response',
  );

  /// batch
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BundleType batch = BundleType(
    fhirCode: 'batch',
  );

  /// batch_response
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BundleType batch_response = BundleType(
    fhirCode: 'batch-response',
  );

  /// history
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BundleType history = BundleType(
    fhirCode: 'history',
  );

  /// searchset
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BundleType searchset = BundleType(
    fhirCode: 'searchset',
  );

  /// collection
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BundleType collection = BundleType(
    fhirCode: 'collection',
  );

  /// For instances where an Element is present but not value

  static final BundleType elementOnly = BundleType();

  /// List of all enum-like values
  static final List<BundleType> values = [
    document,
    message,
    transaction,
    transaction_response,
    batch,
    batch_response,
    history,
    searchset,
    collection,
  ];

  /// Returns the enum value with an element attached
  BundleType withElement(Element? newElement) {
    return BundleType(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [BundleType] from JSON.
  static BundleType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return BundleType.elementOnly.withElement(element);
    }
    return BundleType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'BundleType.$fhirCode';
}
