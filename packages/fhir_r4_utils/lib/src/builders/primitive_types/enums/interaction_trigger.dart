// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// FHIR RESTful interaction codes used for SubscriptionTopic trigger.
class InteractionTriggerBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  InteractionTriggerBuilder._({
    required super.valueString,
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
    return InteractionTriggerBuilder._(
      valueString: valueString,
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

  /// Create empty [InteractionTriggerBuilder] with element only
  factory InteractionTriggerBuilder.empty() =>
      InteractionTriggerBuilder._(valueString: '');

  /// Factory constructor to create [InteractionTriggerBuilder]
  /// from JSON.
  factory InteractionTriggerBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return InteractionTriggerBuilder.elementOnly.withElement(element);
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

  /// read
  static InteractionTriggerBuilder read = InteractionTriggerBuilder._(
    valueString: 'read',
    system: 'http://hl7.org/fhir/ValueSet/interaction-trigger'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'read'.toFhirStringBuilder,
  );

  /// vread
  static InteractionTriggerBuilder vread = InteractionTriggerBuilder._(
    valueString: 'vread',
    system: 'http://hl7.org/fhir/ValueSet/interaction-trigger'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'vread'.toFhirStringBuilder,
  );

  /// update
  static InteractionTriggerBuilder update = InteractionTriggerBuilder._(
    valueString: 'update',
    system: 'http://hl7.org/fhir/ValueSet/interaction-trigger'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'update'.toFhirStringBuilder,
  );

  /// patch
  static InteractionTriggerBuilder patch = InteractionTriggerBuilder._(
    valueString: 'patch',
    system: 'http://hl7.org/fhir/ValueSet/interaction-trigger'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'patch'.toFhirStringBuilder,
  );

  /// delete
  static InteractionTriggerBuilder delete = InteractionTriggerBuilder._(
    valueString: 'delete',
    system: 'http://hl7.org/fhir/ValueSet/interaction-trigger'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'delete'.toFhirStringBuilder,
  );

  /// history
  static InteractionTriggerBuilder history = InteractionTriggerBuilder._(
    valueString: 'history',
    system: 'http://hl7.org/fhir/ValueSet/interaction-trigger'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'history'.toFhirStringBuilder,
  );

  /// history_instance
  static InteractionTriggerBuilder history_instance =
      InteractionTriggerBuilder._(
    valueString: 'history-instance',
    system: 'http://hl7.org/fhir/ValueSet/interaction-trigger'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'history-instance'.toFhirStringBuilder,
  );

  /// history_type
  static InteractionTriggerBuilder history_type = InteractionTriggerBuilder._(
    valueString: 'history-type',
    system: 'http://hl7.org/fhir/ValueSet/interaction-trigger'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'history-type'.toFhirStringBuilder,
  );

  /// history_system
  static InteractionTriggerBuilder history_system = InteractionTriggerBuilder._(
    valueString: 'history-system',
    system: 'http://hl7.org/fhir/ValueSet/interaction-trigger'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'history-system'.toFhirStringBuilder,
  );

  /// create
  static InteractionTriggerBuilder create = InteractionTriggerBuilder._(
    valueString: 'create',
    system: 'http://hl7.org/fhir/ValueSet/interaction-trigger'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'create'.toFhirStringBuilder,
  );

  /// search
  static InteractionTriggerBuilder search = InteractionTriggerBuilder._(
    valueString: 'search',
    system: 'http://hl7.org/fhir/ValueSet/interaction-trigger'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'search'.toFhirStringBuilder,
  );

  /// search_type
  static InteractionTriggerBuilder search_type = InteractionTriggerBuilder._(
    valueString: 'search-type',
    system: 'http://hl7.org/fhir/ValueSet/interaction-trigger'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'search-type'.toFhirStringBuilder,
  );

  /// search_system
  static InteractionTriggerBuilder search_system = InteractionTriggerBuilder._(
    valueString: 'search-system',
    system: 'http://hl7.org/fhir/ValueSet/interaction-trigger'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'search-system'.toFhirStringBuilder,
  );

  /// capabilities
  static InteractionTriggerBuilder capabilities = InteractionTriggerBuilder._(
    valueString: 'capabilities',
    system: 'http://hl7.org/fhir/ValueSet/interaction-trigger'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'capabilities'.toFhirStringBuilder,
  );

  /// transaction
  static InteractionTriggerBuilder transaction = InteractionTriggerBuilder._(
    valueString: 'transaction',
    system: 'http://hl7.org/fhir/ValueSet/interaction-trigger'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'transaction'.toFhirStringBuilder,
  );

  /// batch
  static InteractionTriggerBuilder batch = InteractionTriggerBuilder._(
    valueString: 'batch',
    system: 'http://hl7.org/fhir/ValueSet/interaction-trigger'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'batch'.toFhirStringBuilder,
  );

  /// operation
  static InteractionTriggerBuilder operation = InteractionTriggerBuilder._(
    valueString: 'operation',
    system: 'http://hl7.org/fhir/ValueSet/interaction-trigger'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'operation'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static InteractionTriggerBuilder elementOnly =
      InteractionTriggerBuilder._(valueString: '');

  /// List of all enum-like values
  static List<InteractionTriggerBuilder> values = [
    read,
    vread,
    update,
    patch,
    delete,
    history,
    history_instance,
    history_type,
    history_system,
    create,
    search,
    search_type,
    search_system,
    capabilities,
    transaction,
    batch,
    operation,
  ];

  /// Clones the current instance
  @override
  InteractionTriggerBuilder clone() => InteractionTriggerBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  InteractionTriggerBuilder withElement(ElementBuilder? newElement) {
    return InteractionTriggerBuilder._(
        valueString: valueString, element: newElement);
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

  /// Creates a modified copy with updated properties.
  @override
  InteractionTriggerBuilder copyWith({
    dynamic newValue,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    bool? disallowExtensions,
    String? objectPath,
  }) {
    if (newValue is! String?) {
      throw ArgumentError('Invalid input for InteractionTrigger: $newValue');
    }
    return InteractionTriggerBuilder._(
      valueString: newValue ?? valueString,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath!,
    );
  }
}
