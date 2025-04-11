// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for BundleType
enum BundleTypeEnum {
  /// document
  document,

  /// message
  message,

  /// transaction
  transaction,

  /// transaction-response
  transactionResponse,

  /// batch
  batch,

  /// batch-response
  batchResponse,

  /// history
  history,

  /// searchset
  searchset,

  /// collection
  collection,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case BundleTypeEnum.document:
        return 'document';
      case BundleTypeEnum.message:
        return 'message';
      case BundleTypeEnum.transaction:
        return 'transaction';
      case BundleTypeEnum.transactionResponse:
        return 'transaction-response';
      case BundleTypeEnum.batch:
        return 'batch';
      case BundleTypeEnum.batchResponse:
        return 'batch-response';
      case BundleTypeEnum.history:
        return 'history';
      case BundleTypeEnum.searchset:
        return 'searchset';
      case BundleTypeEnum.collection:
        return 'collection';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static BundleTypeEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return BundleTypeEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static BundleTypeEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'document':
        return BundleTypeEnum.document;
      case 'message':
        return BundleTypeEnum.message;
      case 'transaction':
        return BundleTypeEnum.transaction;
      case 'transaction-response':
        return BundleTypeEnum.transactionResponse;
      case 'batch':
        return BundleTypeEnum.batch;
      case 'batch-response':
        return BundleTypeEnum.batchResponse;
      case 'history':
        return BundleTypeEnum.history;
      case 'searchset':
        return BundleTypeEnum.searchset;
      case 'collection':
        return BundleTypeEnum.collection;
    }
    return null;
  }
}

/// Indicates the purpose of a bundle - how it is intended to be used.
class BundleType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const BundleType._({
    required super.valueString,
    this.valueEnum,
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
  }) : super._();

  /// Public factory if you want a fallback approach or custom creation.
  // ignore: sort_unnamed_constructors_first
  factory BundleType(
    String? rawValue, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
  }) {
    final valueString =
        rawValue != null ? FhirCode._validateCode(rawValue) : null;
    final valueEnum = BundleTypeEnum.fromString(valueString);
    return BundleType._(
      valueString: valueString,
      valueEnum: valueEnum,
      system: system,
      version: version,
      display: display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
    );
  }

  /// Factory constructor to create [BundleType]
  /// from JSON.
  factory BundleType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = BundleTypeEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return BundleType._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'BundleType cannot be constructed from JSON.',
      );
    }
    return BundleType._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for BundleType
  final BundleTypeEnum? valueEnum;

  /// document
  static const BundleType document = BundleType._(
    valueString: 'document',
    valueEnum: BundleTypeEnum.document,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/bundle-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Document',
    ),
  );

  /// message
  static const BundleType message = BundleType._(
    valueString: 'message',
    valueEnum: BundleTypeEnum.message,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/bundle-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Message',
    ),
  );

  /// transaction
  static const BundleType transaction = BundleType._(
    valueString: 'transaction',
    valueEnum: BundleTypeEnum.transaction,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/bundle-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Transaction',
    ),
  );

  /// transaction_response
  static const BundleType transactionResponse = BundleType._(
    valueString: 'transaction-response',
    valueEnum: BundleTypeEnum.transactionResponse,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/bundle-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Transaction Response',
    ),
  );

  /// batch
  static const BundleType batch = BundleType._(
    valueString: 'batch',
    valueEnum: BundleTypeEnum.batch,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/bundle-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Batch',
    ),
  );

  /// batch_response
  static const BundleType batchResponse = BundleType._(
    valueString: 'batch-response',
    valueEnum: BundleTypeEnum.batchResponse,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/bundle-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Batch Response',
    ),
  );

  /// history
  static const BundleType history = BundleType._(
    valueString: 'history',
    valueEnum: BundleTypeEnum.history,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/bundle-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'History List',
    ),
  );

  /// searchset
  static const BundleType searchset = BundleType._(
    valueString: 'searchset',
    valueEnum: BundleTypeEnum.searchset,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/bundle-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Search Results',
    ),
  );

  /// collection
  static const BundleType collection = BundleType._(
    valueString: 'collection',
    valueEnum: BundleTypeEnum.collection,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/bundle-type',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Collection',
    ),
  );

  /// List of all enum-like values
  static final List<BundleType> values = [
    document,
    message,
    transaction,
    transactionResponse,
    batch,
    batchResponse,
    history,
    searchset,
    collection,
  ];

  /// Returns the enum value with an element attached
  BundleType withElement(Element? newElement) {
    return BundleType._(
      valueString: valueString,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (valueString?.isEmpty ?? false) ? null : valueString,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => valueString ?? '';

  @override
  BundleType clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  BundleTypeCopyWithImpl<BundleType> get copyWith =>
      BundleTypeCopyWithImpl<BundleType>(
        this,
        (v) => v as BundleType,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class BundleTypeCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  BundleTypeCopyWithImpl(super._value, super._then);

  @override
  T call({
    Object? newValue = fhirSentinel,
    Object? element = fhirSentinel,
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    if (!identical(newValue, fhirSentinel) && newValue is! String?) {
      throw ArgumentError(
        'newValue must be a String or null, but found ${newValue.runtimeType}',
        'newValue',
      );
    }
    return _then(
      BundleType(
        identical(newValue, fhirSentinel)
            ? _value.valueString
            : newValue as String?,
        element: identical(element, fhirSentinel)
            ? _value.element
            : element as Element?,
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}
