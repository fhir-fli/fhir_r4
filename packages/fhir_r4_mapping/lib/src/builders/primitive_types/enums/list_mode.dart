part of '../primitive_types.dart';

/// Actual enum for ListMode
enum ListModeBuilderEnum {
  /// working
  working,

  /// snapshot
  snapshot,

  /// changes
  changes,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ListModeBuilderEnum.working:
        return 'working';
      case ListModeBuilderEnum.snapshot:
        return 'snapshot';
      case ListModeBuilderEnum.changes:
        return 'changes';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ListModeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return ListModeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ListModeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'working':
        return ListModeBuilderEnum.working;
      case 'snapshot':
        return ListModeBuilderEnum.snapshot;
      case 'changes':
        return ListModeBuilderEnum.changes;
    }
    return null;
  }
}

/// The processing mode that applies to this list.
class ListModeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ListModeBuilder._({
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
  factory ListModeBuilder(
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
    final valueEnum = ListModeBuilderEnum.fromString(
      valueString,
    );
    return ListModeBuilder._(
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

  /// Create empty [ListModeBuilder]
  /// with element only
  factory ListModeBuilder.empty() => ListModeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [ListModeBuilder] from JSON.
  factory ListModeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ListModeBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ListModeBuilder cannot be constructed from JSON.',
      );
    }
    return ListModeBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for ListModeBuilder
  final ListModeBuilderEnum? valueEnum;

  /// working
  static ListModeBuilder working = ListModeBuilder._(
    valueString: 'working',
    valueEnum: ListModeBuilderEnum.working,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/list-mode',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Working List',
    ),
  );

  /// snapshot
  static ListModeBuilder snapshot = ListModeBuilder._(
    valueString: 'snapshot',
    valueEnum: ListModeBuilderEnum.snapshot,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/list-mode',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Snapshot List',
    ),
  );

  /// changes
  static ListModeBuilder changes = ListModeBuilder._(
    valueString: 'changes',
    valueEnum: ListModeBuilderEnum.changes,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/list-mode',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Change List',
    ),
  );

  /// For instances where an Element is present but not value
  static ListModeBuilder elementOnly = ListModeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<ListModeBuilder> values = [
    working,
    snapshot,
    changes,
  ];

  /// Returns the enum value with an element attached
  ListModeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return ListModeBuilder._(
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
