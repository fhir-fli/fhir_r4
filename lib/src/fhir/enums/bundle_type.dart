// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Indicates the purpose of a bundle - how it is intended to be used.
class BundleType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  BundleType._(super.value, [super.element]);

  /// Factory constructor to create [BundleType] from JSON.
  factory BundleType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return BundleType.elementOnly.withElement(element);
    }
    return BundleType._(value, element);
  }

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

  /// Clones the current instance
  @override
  BundleType clone() => BundleType._(value, element?.clone() as Element?);

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  BundleType setElement(String name, dynamic elementValue) {
    return BundleType._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  BundleType withElement(Element? newElement) {
    return BundleType._(value, newElement);
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
  BundleType copyWith({
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
    return BundleType._(
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
