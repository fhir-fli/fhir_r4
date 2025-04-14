// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for ConsentState
enum ConsentStateBuilderEnum {
  /// draft
  draft,

  /// proposed
  proposed,

  /// active
  active,

  /// rejected
  rejected,

  /// inactive
  inactive,

  /// entered-in-error
  enteredInError,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ConsentStateBuilderEnum.draft:
        return 'draft';
      case ConsentStateBuilderEnum.proposed:
        return 'proposed';
      case ConsentStateBuilderEnum.active:
        return 'active';
      case ConsentStateBuilderEnum.rejected:
        return 'rejected';
      case ConsentStateBuilderEnum.inactive:
        return 'inactive';
      case ConsentStateBuilderEnum.enteredInError:
        return 'entered-in-error';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ConsentStateBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return ConsentStateBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ConsentStateBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'draft':
        return ConsentStateBuilderEnum.draft;
      case 'proposed':
        return ConsentStateBuilderEnum.proposed;
      case 'active':
        return ConsentStateBuilderEnum.active;
      case 'rejected':
        return ConsentStateBuilderEnum.rejected;
      case 'inactive':
        return ConsentStateBuilderEnum.inactive;
      case 'entered-in-error':
        return ConsentStateBuilderEnum.enteredInError;
    }
    return null;
  }
}

/// Indicates the state of the consent.
class ConsentStateBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ConsentStateBuilder._({
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
  factory ConsentStateBuilder(
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
    final valueEnum = ConsentStateBuilderEnum.fromString(
      valueString,
    );
    return ConsentStateBuilder._(
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

  /// Create empty [ConsentStateBuilder]
  /// with element only
  factory ConsentStateBuilder.empty() =>
      ConsentStateBuilder._(valueString: null);

  /// Factory constructor to create
  /// [ConsentStateBuilder] from JSON.
  factory ConsentStateBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConsentStateBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ConsentStateBuilder cannot be constructed from JSON.',
      );
    }
    return ConsentStateBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for ConsentStateBuilder
  final ConsentStateBuilderEnum? valueEnum;

  /// draft
  static ConsentStateBuilder draft = ConsentStateBuilder._(
    valueString: 'draft',
    valueEnum: ConsentStateBuilderEnum.draft,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/consent-state-codes',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Pending',
    ),
  );

  /// proposed
  static ConsentStateBuilder proposed = ConsentStateBuilder._(
    valueString: 'proposed',
    valueEnum: ConsentStateBuilderEnum.proposed,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/consent-state-codes',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Proposed',
    ),
  );

  /// active
  static ConsentStateBuilder active = ConsentStateBuilder._(
    valueString: 'active',
    valueEnum: ConsentStateBuilderEnum.active,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/consent-state-codes',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Active',
    ),
  );

  /// rejected
  static ConsentStateBuilder rejected = ConsentStateBuilder._(
    valueString: 'rejected',
    valueEnum: ConsentStateBuilderEnum.rejected,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/consent-state-codes',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Rejected',
    ),
  );

  /// inactive
  static ConsentStateBuilder inactive = ConsentStateBuilder._(
    valueString: 'inactive',
    valueEnum: ConsentStateBuilderEnum.inactive,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/consent-state-codes',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Inactive',
    ),
  );

  /// entered_in_error
  static ConsentStateBuilder enteredInError = ConsentStateBuilder._(
    valueString: 'entered-in-error',
    valueEnum: ConsentStateBuilderEnum.enteredInError,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/consent-state-codes',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Entered in Error',
    ),
  );

  /// For instances where an Element is present but not value
  static ConsentStateBuilder elementOnly = ConsentStateBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<ConsentStateBuilder> values = [
    draft,
    proposed,
    active,
    rejected,
    inactive,
    enteredInError,
  ];

  /// Returns the enum value with an element attached
  ConsentStateBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return ConsentStateBuilder._(
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
