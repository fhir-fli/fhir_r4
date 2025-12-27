part of '../primitive_types.dart';

/// Actual enum for InteractionTrigger
enum InteractionTriggerBuilderEnum {
  /// read
  read,

  /// vread
  vread,

  /// update
  update,

  /// patch
  patch,

  /// delete
  delete,

  /// history
  history,

  /// history-instance
  historyInstance,

  /// history-type
  historyType,

  /// history-system
  historySystem,

  /// create
  create,

  /// search
  search,

  /// search-type
  searchType,

  /// search-system
  searchSystem,

  /// capabilities
  capabilities,

  /// transaction
  transaction,

  /// batch
  batch,

  /// operation
  operation,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case InteractionTriggerBuilderEnum.read:
        return 'read';
      case InteractionTriggerBuilderEnum.vread:
        return 'vread';
      case InteractionTriggerBuilderEnum.update:
        return 'update';
      case InteractionTriggerBuilderEnum.patch:
        return 'patch';
      case InteractionTriggerBuilderEnum.delete:
        return 'delete';
      case InteractionTriggerBuilderEnum.history:
        return 'history';
      case InteractionTriggerBuilderEnum.historyInstance:
        return 'history-instance';
      case InteractionTriggerBuilderEnum.historyType:
        return 'history-type';
      case InteractionTriggerBuilderEnum.historySystem:
        return 'history-system';
      case InteractionTriggerBuilderEnum.create:
        return 'create';
      case InteractionTriggerBuilderEnum.search:
        return 'search';
      case InteractionTriggerBuilderEnum.searchType:
        return 'search-type';
      case InteractionTriggerBuilderEnum.searchSystem:
        return 'search-system';
      case InteractionTriggerBuilderEnum.capabilities:
        return 'capabilities';
      case InteractionTriggerBuilderEnum.transaction:
        return 'transaction';
      case InteractionTriggerBuilderEnum.batch:
        return 'batch';
      case InteractionTriggerBuilderEnum.operation:
        return 'operation';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static InteractionTriggerBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return InteractionTriggerBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static InteractionTriggerBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'read':
        return InteractionTriggerBuilderEnum.read;
      case 'vread':
        return InteractionTriggerBuilderEnum.vread;
      case 'update':
        return InteractionTriggerBuilderEnum.update;
      case 'patch':
        return InteractionTriggerBuilderEnum.patch;
      case 'delete':
        return InteractionTriggerBuilderEnum.delete;
      case 'history':
        return InteractionTriggerBuilderEnum.history;
      case 'history-instance':
        return InteractionTriggerBuilderEnum.historyInstance;
      case 'history-type':
        return InteractionTriggerBuilderEnum.historyType;
      case 'history-system':
        return InteractionTriggerBuilderEnum.historySystem;
      case 'create':
        return InteractionTriggerBuilderEnum.create;
      case 'search':
        return InteractionTriggerBuilderEnum.search;
      case 'search-type':
        return InteractionTriggerBuilderEnum.searchType;
      case 'search-system':
        return InteractionTriggerBuilderEnum.searchSystem;
      case 'capabilities':
        return InteractionTriggerBuilderEnum.capabilities;
      case 'transaction':
        return InteractionTriggerBuilderEnum.transaction;
      case 'batch':
        return InteractionTriggerBuilderEnum.batch;
      case 'operation':
        return InteractionTriggerBuilderEnum.operation;
    }
    return null;
  }
}

/// FHIR RESTful interaction codes used for SubscriptionTopic trigger.
class InteractionTriggerBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  InteractionTriggerBuilder._({
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
  factory InteractionTriggerBuilder(
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
    final valueEnum = InteractionTriggerBuilderEnum.fromString(
      valueString,
    );
    return InteractionTriggerBuilder._(
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

  /// Create empty [InteractionTriggerBuilder]
  /// with element only
  factory InteractionTriggerBuilder.empty() =>
      InteractionTriggerBuilder._(valueString: null);

  /// Factory constructor to create
  /// [InteractionTriggerBuilder] from JSON.
  factory InteractionTriggerBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return InteractionTriggerBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'InteractionTriggerBuilder cannot be constructed from JSON.',
      );
    }
    return InteractionTriggerBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for InteractionTriggerBuilder
  final InteractionTriggerBuilderEnum? valueEnum;

  /// read
  static InteractionTriggerBuilder read = InteractionTriggerBuilder._(
    valueString: 'read',
    valueEnum: InteractionTriggerBuilderEnum.read,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/interaction-trigger',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'read',
    ),
  );

  /// vread
  static InteractionTriggerBuilder vread = InteractionTriggerBuilder._(
    valueString: 'vread',
    valueEnum: InteractionTriggerBuilderEnum.vread,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/interaction-trigger',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'vread',
    ),
  );

  /// update
  static InteractionTriggerBuilder update = InteractionTriggerBuilder._(
    valueString: 'update',
    valueEnum: InteractionTriggerBuilderEnum.update,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/interaction-trigger',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'update',
    ),
  );

  /// patch
  static InteractionTriggerBuilder patch = InteractionTriggerBuilder._(
    valueString: 'patch',
    valueEnum: InteractionTriggerBuilderEnum.patch,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/interaction-trigger',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'patch',
    ),
  );

  /// delete
  static InteractionTriggerBuilder delete = InteractionTriggerBuilder._(
    valueString: 'delete',
    valueEnum: InteractionTriggerBuilderEnum.delete,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/interaction-trigger',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'delete',
    ),
  );

  /// history
  static InteractionTriggerBuilder history = InteractionTriggerBuilder._(
    valueString: 'history',
    valueEnum: InteractionTriggerBuilderEnum.history,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/interaction-trigger',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'history',
    ),
  );

  /// history_instance
  static InteractionTriggerBuilder historyInstance =
      InteractionTriggerBuilder._(
    valueString: 'history-instance',
    valueEnum: InteractionTriggerBuilderEnum.historyInstance,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/interaction-trigger',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'history-instance',
    ),
  );

  /// history_type
  static InteractionTriggerBuilder historyType = InteractionTriggerBuilder._(
    valueString: 'history-type',
    valueEnum: InteractionTriggerBuilderEnum.historyType,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/interaction-trigger',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'history-type',
    ),
  );

  /// history_system
  static InteractionTriggerBuilder historySystem = InteractionTriggerBuilder._(
    valueString: 'history-system',
    valueEnum: InteractionTriggerBuilderEnum.historySystem,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/interaction-trigger',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'history-system',
    ),
  );

  /// create
  static InteractionTriggerBuilder create = InteractionTriggerBuilder._(
    valueString: 'create',
    valueEnum: InteractionTriggerBuilderEnum.create,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/interaction-trigger',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'create',
    ),
  );

  /// search
  static InteractionTriggerBuilder search = InteractionTriggerBuilder._(
    valueString: 'search',
    valueEnum: InteractionTriggerBuilderEnum.search,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/interaction-trigger',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'search',
    ),
  );

  /// search_type
  static InteractionTriggerBuilder searchType = InteractionTriggerBuilder._(
    valueString: 'search-type',
    valueEnum: InteractionTriggerBuilderEnum.searchType,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/interaction-trigger',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'search-type',
    ),
  );

  /// search_system
  static InteractionTriggerBuilder searchSystem = InteractionTriggerBuilder._(
    valueString: 'search-system',
    valueEnum: InteractionTriggerBuilderEnum.searchSystem,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/interaction-trigger',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'search-system',
    ),
  );

  /// capabilities
  static InteractionTriggerBuilder capabilities = InteractionTriggerBuilder._(
    valueString: 'capabilities',
    valueEnum: InteractionTriggerBuilderEnum.capabilities,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/interaction-trigger',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'capabilities',
    ),
  );

  /// transaction
  static InteractionTriggerBuilder transaction = InteractionTriggerBuilder._(
    valueString: 'transaction',
    valueEnum: InteractionTriggerBuilderEnum.transaction,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/interaction-trigger',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'transaction',
    ),
  );

  /// batch
  static InteractionTriggerBuilder batch = InteractionTriggerBuilder._(
    valueString: 'batch',
    valueEnum: InteractionTriggerBuilderEnum.batch,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/interaction-trigger',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'batch',
    ),
  );

  /// operation
  static InteractionTriggerBuilder operation = InteractionTriggerBuilder._(
    valueString: 'operation',
    valueEnum: InteractionTriggerBuilderEnum.operation,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/interaction-trigger',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'operation',
    ),
  );

  /// For instances where an Element is present but not value
  static InteractionTriggerBuilder elementOnly = InteractionTriggerBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<InteractionTriggerBuilder> values = [
    read,
    vread,
    update,
    patch,
    delete,
    history,
    historyInstance,
    historyType,
    historySystem,
    create,
    search,
    searchType,
    searchSystem,
    capabilities,
    transaction,
    batch,
    operation,
  ];

  /// Returns the enum value with an element attached
  InteractionTriggerBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return InteractionTriggerBuilder._(
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
