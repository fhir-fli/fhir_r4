// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for BundleType
enum BundleTypeBuilderEnum {
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
      case BundleTypeBuilderEnum.document:
        return 'document';
      case BundleTypeBuilderEnum.message:
        return 'message';
      case BundleTypeBuilderEnum.transaction:
        return 'transaction';
      case BundleTypeBuilderEnum.transactionResponse:
        return 'transaction-response';
      case BundleTypeBuilderEnum.batch:
        return 'batch';
      case BundleTypeBuilderEnum.batchResponse:
        return 'batch-response';
      case BundleTypeBuilderEnum.history:
        return 'history';
      case BundleTypeBuilderEnum.searchset:
        return 'searchset';
      case BundleTypeBuilderEnum.collection:
        return 'collection';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static BundleTypeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return BundleTypeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static BundleTypeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'document':
        return BundleTypeBuilderEnum.document;
      case 'message':
        return BundleTypeBuilderEnum.message;
      case 'transaction':
        return BundleTypeBuilderEnum.transaction;
      case 'transaction-response':
        return BundleTypeBuilderEnum.transactionResponse;
      case 'batch':
        return BundleTypeBuilderEnum.batch;
      case 'batch-response':
        return BundleTypeBuilderEnum.batchResponse;
      case 'history':
        return BundleTypeBuilderEnum.history;
      case 'searchset':
        return BundleTypeBuilderEnum.searchset;
      case 'collection':
        return BundleTypeBuilderEnum.collection;
    }
    return null;
  }
}

/// Indicates the purpose of a bundle - how it is intended to be used.
class BundleTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  BundleTypeBuilder._({
    required super.valueString,
    this.valueEnum,
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  }) : super._();

  /// Public factory if you want a fallback approach or custom creation.
  // ignore: sort_unnamed_constructors_first
  factory BundleTypeBuilder(
    String? rawValue, {
    FhirUriBuilder? system,
    FhirStringBuilder? version,
    FhirStringBuilder? display,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final valueString =
        rawValue != null ? FhirCodeBuilder._validateCode(rawValue) : null;
    final valueEnum = BundleTypeBuilderEnum.fromString(
      valueString,
    );
    return BundleTypeBuilder._(
      valueString: valueString,
      valueEnum: valueEnum,
      system: system,
      version: version,
      display: display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Create empty [BundleTypeBuilder]
  /// with element only
  factory BundleTypeBuilder.empty() => BundleTypeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [BundleTypeBuilder] from JSON.
  factory BundleTypeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return BundleTypeBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'BundleTypeBuilder cannot be constructed from JSON.',
      );
    }
    return BundleTypeBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for BundleTypeBuilder
  final BundleTypeBuilderEnum? valueEnum;

  /// document
  static BundleTypeBuilder document = BundleTypeBuilder._(
    valueString: 'document',
    valueEnum: BundleTypeBuilderEnum.document,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/bundle-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Document',
    ),
  );

  /// message
  static BundleTypeBuilder message = BundleTypeBuilder._(
    valueString: 'message',
    valueEnum: BundleTypeBuilderEnum.message,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/bundle-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Message',
    ),
  );

  /// transaction
  static BundleTypeBuilder transaction = BundleTypeBuilder._(
    valueString: 'transaction',
    valueEnum: BundleTypeBuilderEnum.transaction,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/bundle-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Transaction',
    ),
  );

  /// transaction_response
  static BundleTypeBuilder transactionResponse = BundleTypeBuilder._(
    valueString: 'transaction-response',
    valueEnum: BundleTypeBuilderEnum.transactionResponse,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/bundle-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Transaction Response',
    ),
  );

  /// batch
  static BundleTypeBuilder batch = BundleTypeBuilder._(
    valueString: 'batch',
    valueEnum: BundleTypeBuilderEnum.batch,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/bundle-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Batch',
    ),
  );

  /// batch_response
  static BundleTypeBuilder batchResponse = BundleTypeBuilder._(
    valueString: 'batch-response',
    valueEnum: BundleTypeBuilderEnum.batchResponse,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/bundle-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Batch Response',
    ),
  );

  /// history
  static BundleTypeBuilder history = BundleTypeBuilder._(
    valueString: 'history',
    valueEnum: BundleTypeBuilderEnum.history,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/bundle-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'History List',
    ),
  );

  /// searchset
  static BundleTypeBuilder searchset = BundleTypeBuilder._(
    valueString: 'searchset',
    valueEnum: BundleTypeBuilderEnum.searchset,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/bundle-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Search Results',
    ),
  );

  /// collection
  static BundleTypeBuilder collection = BundleTypeBuilder._(
    valueString: 'collection',
    valueEnum: BundleTypeBuilderEnum.collection,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/bundle-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Collection',
    ),
  );

  /// For instances where an Element is present but not value
  static BundleTypeBuilder elementOnly = BundleTypeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<BundleTypeBuilder> values = [
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
  BundleTypeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return BundleTypeBuilder._(
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
}
