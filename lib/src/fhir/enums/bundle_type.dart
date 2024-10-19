// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Indicates the purpose of a bundle - how it is intended to be used.
@Entity()
class BundleType extends FhirCode {
  /// Factory constructor to create [BundleType] from JSON.
  factory BundleType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return BundleType.elementOnly(element);
    }
    if (values.contains(value)) {
      return BundleType._(value, element);
    }
    throw ArgumentError(
      'BundleType.fromJson: JSON value is not a valid value',
    );
  }

  /// document
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BundleType.document([this.element])
      : dbValue = 'document',
        super('document', element);

  /// message
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BundleType.message([this.element])
      : dbValue = 'message',
        super('message', element);

  /// transaction
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BundleType.transaction([this.element])
      : dbValue = 'transaction',
        super('transaction', element);

  /// transaction_response
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BundleType.transaction_response([this.element])
      : dbValue = 'transaction-response',
        super('transaction-response', element);

  /// batch
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BundleType.batch([this.element])
      : dbValue = 'batch',
        super('batch', element);

  /// batch_response
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BundleType.batch_response([this.element])
      : dbValue = 'batch-response',
        super('batch-response', element);

  /// history
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BundleType.history([this.element])
      : dbValue = 'history',
        super('history', element);

  /// searchset
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BundleType.searchset([this.element])
      : dbValue = 'searchset',
        super('searchset', element);

  /// collection
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  BundleType.collection([this.element])
      : dbValue = 'collection',
        super('collection', element);

  /// For instances where an Element is present but not value

  BundleType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  BundleType._(super.input, [super.element])
      : dbValue = input,
        // ignore: prefer_initializing_formals
        element = element;

  @override
  @Id()
  // ignore: overridden_fields
  int dbId = 0;

  /// Value to store in ObjectBox
  @override
  // ignore: overridden_fields
  final String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  final Element? element;

  /// List of all enum-like values
  static final List<String> values = [
    'document',
    'message',
    'transaction',
    'transaction-response',
    'batch',
    'batch-response',
    'history',
    'searchset',
    'collection',
  ];

  /// Returns the enum value with an element attached
  BundleType withElement(Element? newElement) {
    return BundleType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'BundleType.$value';
}
