part of '../primitive_types.dart';

/// Actual enum for SlotStatus
enum SlotStatusBuilderEnum {
  /// busy
  busy,

  /// free
  free,

  /// busy-unavailable
  busyUnavailable,

  /// busy-tentative
  busyTentative,

  /// entered-in-error
  enteredInError,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case SlotStatusBuilderEnum.busy:
        return 'busy';
      case SlotStatusBuilderEnum.free:
        return 'free';
      case SlotStatusBuilderEnum.busyUnavailable:
        return 'busy-unavailable';
      case SlotStatusBuilderEnum.busyTentative:
        return 'busy-tentative';
      case SlotStatusBuilderEnum.enteredInError:
        return 'entered-in-error';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static SlotStatusBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return SlotStatusBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static SlotStatusBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'busy':
        return SlotStatusBuilderEnum.busy;
      case 'free':
        return SlotStatusBuilderEnum.free;
      case 'busy-unavailable':
        return SlotStatusBuilderEnum.busyUnavailable;
      case 'busy-tentative':
        return SlotStatusBuilderEnum.busyTentative;
      case 'entered-in-error':
        return SlotStatusBuilderEnum.enteredInError;
    }
    return null;
  }
}

/// The free/busy status of the slot.
class SlotStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  SlotStatusBuilder._({
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
  factory SlotStatusBuilder(
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
    final valueEnum = SlotStatusBuilderEnum.fromString(
      valueString,
    );
    return SlotStatusBuilder._(
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

  /// Create empty [SlotStatusBuilder]
  /// with element only
  factory SlotStatusBuilder.empty() => SlotStatusBuilder._(valueString: null);

  /// Factory constructor to create
  /// [SlotStatusBuilder] from JSON.
  factory SlotStatusBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SlotStatusBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SlotStatusBuilder cannot be constructed from JSON.',
      );
    }
    return SlotStatusBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for SlotStatusBuilder
  final SlotStatusBuilderEnum? valueEnum;

  /// busy
  static SlotStatusBuilder busy = SlotStatusBuilder._(
    valueString: 'busy',
    valueEnum: SlotStatusBuilderEnum.busy,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/slotstatus',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Busy',
    ),
  );

  /// free
  static SlotStatusBuilder free = SlotStatusBuilder._(
    valueString: 'free',
    valueEnum: SlotStatusBuilderEnum.free,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/slotstatus',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Free',
    ),
  );

  /// busy_unavailable
  static SlotStatusBuilder busyUnavailable = SlotStatusBuilder._(
    valueString: 'busy-unavailable',
    valueEnum: SlotStatusBuilderEnum.busyUnavailable,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/slotstatus',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Busy (Unavailable)',
    ),
  );

  /// busy_tentative
  static SlotStatusBuilder busyTentative = SlotStatusBuilder._(
    valueString: 'busy-tentative',
    valueEnum: SlotStatusBuilderEnum.busyTentative,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/slotstatus',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Busy (Tentative)',
    ),
  );

  /// entered_in_error
  static SlotStatusBuilder enteredInError = SlotStatusBuilder._(
    valueString: 'entered-in-error',
    valueEnum: SlotStatusBuilderEnum.enteredInError,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/slotstatus',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Entered in error',
    ),
  );

  /// For instances where an Element is present but not value
  static SlotStatusBuilder elementOnly = SlotStatusBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<SlotStatusBuilder> values = [
    busy,
    free,
    busyUnavailable,
    busyTentative,
    enteredInError,
  ];

  /// Returns the enum value with an element attached
  SlotStatusBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return SlotStatusBuilder._(
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
