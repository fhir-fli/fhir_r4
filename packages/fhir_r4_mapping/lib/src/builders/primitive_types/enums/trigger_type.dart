part of '../primitive_types.dart';

/// Actual enum for TriggerType
enum TriggerTypeBuilderEnum {
  /// named-event
  namedEvent,

  /// periodic
  periodic,

  /// data-changed
  dataChanged,

  /// data-added
  dataAdded,

  /// data-modified
  dataModified,

  /// data-removed
  dataRemoved,

  /// data-accessed
  dataAccessed,

  /// data-access-ended
  dataAccessEnded,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case TriggerTypeBuilderEnum.namedEvent:
        return 'named-event';
      case TriggerTypeBuilderEnum.periodic:
        return 'periodic';
      case TriggerTypeBuilderEnum.dataChanged:
        return 'data-changed';
      case TriggerTypeBuilderEnum.dataAdded:
        return 'data-added';
      case TriggerTypeBuilderEnum.dataModified:
        return 'data-modified';
      case TriggerTypeBuilderEnum.dataRemoved:
        return 'data-removed';
      case TriggerTypeBuilderEnum.dataAccessed:
        return 'data-accessed';
      case TriggerTypeBuilderEnum.dataAccessEnded:
        return 'data-access-ended';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static TriggerTypeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return TriggerTypeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static TriggerTypeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'named-event':
        return TriggerTypeBuilderEnum.namedEvent;
      case 'periodic':
        return TriggerTypeBuilderEnum.periodic;
      case 'data-changed':
        return TriggerTypeBuilderEnum.dataChanged;
      case 'data-added':
        return TriggerTypeBuilderEnum.dataAdded;
      case 'data-modified':
        return TriggerTypeBuilderEnum.dataModified;
      case 'data-removed':
        return TriggerTypeBuilderEnum.dataRemoved;
      case 'data-accessed':
        return TriggerTypeBuilderEnum.dataAccessed;
      case 'data-access-ended':
        return TriggerTypeBuilderEnum.dataAccessEnded;
    }
    return null;
  }
}

/// The type of trigger.
class TriggerTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  TriggerTypeBuilder._({
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
  factory TriggerTypeBuilder(
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
    final valueEnum = TriggerTypeBuilderEnum.fromString(
      valueString,
    );
    return TriggerTypeBuilder._(
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

  /// Create empty [TriggerTypeBuilder]
  /// with element only
  factory TriggerTypeBuilder.empty() => TriggerTypeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [TriggerTypeBuilder] from JSON.
  factory TriggerTypeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TriggerTypeBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'TriggerTypeBuilder cannot be constructed from JSON.',
      );
    }
    return TriggerTypeBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for TriggerTypeBuilder
  final TriggerTypeBuilderEnum? valueEnum;

  /// named_event
  static TriggerTypeBuilder namedEvent = TriggerTypeBuilder._(
    valueString: 'named-event',
    valueEnum: TriggerTypeBuilderEnum.namedEvent,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/trigger-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Named Event',
    ),
  );

  /// periodic
  static TriggerTypeBuilder periodic = TriggerTypeBuilder._(
    valueString: 'periodic',
    valueEnum: TriggerTypeBuilderEnum.periodic,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/trigger-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Periodic',
    ),
  );

  /// data_changed
  static TriggerTypeBuilder dataChanged = TriggerTypeBuilder._(
    valueString: 'data-changed',
    valueEnum: TriggerTypeBuilderEnum.dataChanged,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/trigger-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Data Changed',
    ),
  );

  /// data_added
  static TriggerTypeBuilder dataAdded = TriggerTypeBuilder._(
    valueString: 'data-added',
    valueEnum: TriggerTypeBuilderEnum.dataAdded,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/trigger-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Data Added',
    ),
  );

  /// data_modified
  static TriggerTypeBuilder dataModified = TriggerTypeBuilder._(
    valueString: 'data-modified',
    valueEnum: TriggerTypeBuilderEnum.dataModified,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/trigger-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Data Updated',
    ),
  );

  /// data_removed
  static TriggerTypeBuilder dataRemoved = TriggerTypeBuilder._(
    valueString: 'data-removed',
    valueEnum: TriggerTypeBuilderEnum.dataRemoved,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/trigger-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Data Removed',
    ),
  );

  /// data_accessed
  static TriggerTypeBuilder dataAccessed = TriggerTypeBuilder._(
    valueString: 'data-accessed',
    valueEnum: TriggerTypeBuilderEnum.dataAccessed,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/trigger-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Data Accessed',
    ),
  );

  /// data_access_ended
  static TriggerTypeBuilder dataAccessEnded = TriggerTypeBuilder._(
    valueString: 'data-access-ended',
    valueEnum: TriggerTypeBuilderEnum.dataAccessEnded,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/trigger-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Data Access Ended',
    ),
  );

  /// For instances where an Element is present but not value
  static TriggerTypeBuilder elementOnly = TriggerTypeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<TriggerTypeBuilder> values = [
    namedEvent,
    periodic,
    dataChanged,
    dataAdded,
    dataModified,
    dataRemoved,
    dataAccessed,
    dataAccessEnded,
  ];

  /// Returns the enum value with an element attached
  TriggerTypeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return TriggerTypeBuilder._(
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
