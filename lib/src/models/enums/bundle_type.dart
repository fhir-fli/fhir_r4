// ignore_for_file: unused_element_parameter, non_constant_identifier_names

import 'package:fhir_r4/fhir_r4.dart';

/// Indicates the purpose of a bundle - how it is intended to be used.
class BundleType extends FhirCodeEnum {
  // Private constructor for internal use (like enum)
  BundleType._(
    super.value, {
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  });

  /// Create empty [BundleType] with element only
  factory BundleType.empty() => BundleType._('');

  /// Factory constructor to create [BundleType] from JSON.
  factory BundleType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return BundleType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'BundleType cannot be constructed from JSON.',
      );
    }
    return BundleType._(
      value,
      element: element,
    );
  }

  /// document
  static final BundleType document = BundleType._(
    'document',
    system: 'http://hl7.org/fhir/ValueSet/bundle-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Document'.toFhirString,
  );

  /// message
  static final BundleType message = BundleType._(
    'message',
    system: 'http://hl7.org/fhir/ValueSet/bundle-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Message'.toFhirString,
  );

  /// transaction
  static final BundleType transaction = BundleType._(
    'transaction',
    system: 'http://hl7.org/fhir/ValueSet/bundle-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Transaction'.toFhirString,
  );

  /// transaction_response
  static final BundleType transaction_response = BundleType._(
    'transaction-response',
    system: 'http://hl7.org/fhir/ValueSet/bundle-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Transaction Response'.toFhirString,
  );

  /// batch
  static final BundleType batch = BundleType._(
    'batch',
    system: 'http://hl7.org/fhir/ValueSet/bundle-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Batch'.toFhirString,
  );

  /// batch_response
  static final BundleType batch_response = BundleType._(
    'batch-response',
    system: 'http://hl7.org/fhir/ValueSet/bundle-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Batch Response'.toFhirString,
  );

  /// history
  static final BundleType history = BundleType._(
    'history',
    system: 'http://hl7.org/fhir/ValueSet/bundle-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'History List'.toFhirString,
  );

  /// searchset
  static final BundleType searchset = BundleType._(
    'searchset',
    system: 'http://hl7.org/fhir/ValueSet/bundle-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Search Results'.toFhirString,
  );

  /// collection
  static final BundleType collection = BundleType._(
    'collection',
    system: 'http://hl7.org/fhir/ValueSet/bundle-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Collection'.toFhirString,
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
  BundleType clone() => BundleType._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  BundleType withElement(Element? newElement) {
    return BundleType._(
      value,
      element: newElement,
    );
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
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    bool? disallowExtensions,
    String? objectPath,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return BundleType._(
      newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath,
    );
  }
}
