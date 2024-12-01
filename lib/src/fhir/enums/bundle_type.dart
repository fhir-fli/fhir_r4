// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Indicates the purpose of a bundle - how it is intended to be used.
class BundleType {
  // Private constructor for internal use (like enum)
  BundleType._(this.fhirCode, {this.element});

  /// Factory constructor to create [BundleType] from JSON.
  factory BundleType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return BundleType.elementOnly.withElement(element);
    }
    return BundleType._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// BundleType values
  /// document
  static final BundleType document = BundleType._(
    'document',
  );

  /// message
  static final BundleType message = BundleType._(
    'message',
  );

  /// transaction
  static final BundleType transaction = BundleType._(
    'transaction',
  );

  /// transaction_response
  static final BundleType transaction_response = BundleType._(
    'transaction-response',
  );

  /// batch
  static final BundleType batch = BundleType._(
    'batch',
  );

  /// batch_response
  static final BundleType batch_response = BundleType._(
    'batch-response',
  );

  /// history
  static final BundleType history = BundleType._(
    'history',
  );

  /// searchset
  static final BundleType searchset = BundleType._(
    'searchset',
  );

  /// collection
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

  /// String representation
  @override
  String toString() => fhirCode;
}
