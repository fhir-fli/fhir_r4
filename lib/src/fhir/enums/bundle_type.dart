// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Indicates the purpose of a bundle - how it is intended to be used.
class BundleType {
  // Private constructor for internal use (like enum)
  BundleType._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// BundleType values
  /// document
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BundleType document = BundleType._(
    'document',
  );

  /// message
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BundleType message = BundleType._(
    'message',
  );

  /// transaction
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BundleType transaction = BundleType._(
    'transaction',
  );

  /// transaction_response
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BundleType transaction_response = BundleType._(
    'transaction-response',
  );

  /// batch
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BundleType batch = BundleType._(
    'batch',
  );

  /// batch_response
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BundleType batch_response = BundleType._(
    'batch-response',
  );

  /// history
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BundleType history = BundleType._(
    'history',
  );

  /// searchset
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BundleType searchset = BundleType._(
    'searchset',
  );

  /// collection
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final BundleType collection = BundleType._(
    'collection',
  );

  /// For instances where an Element is present but not value

  static final BundleType elementOnly = BundleType._('');

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
    return BundleType._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
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
    return BundleType._(value!, element: element);
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
