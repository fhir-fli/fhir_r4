part of '../primitive_types.dart';

/// Actual enum for NoteType
enum NoteTypeBuilderEnum {
  /// display
  display_,

  /// print
  print,

  /// printoper
  printoper,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case NoteTypeBuilderEnum.display_:
        return 'display';
      case NoteTypeBuilderEnum.print:
        return 'print';
      case NoteTypeBuilderEnum.printoper:
        return 'printoper';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static NoteTypeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return NoteTypeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static NoteTypeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'display':
        return NoteTypeBuilderEnum.display_;
      case 'print':
        return NoteTypeBuilderEnum.print;
      case 'printoper':
        return NoteTypeBuilderEnum.printoper;
    }
    return null;
  }
}

/// The presentation types of notes.
class NoteTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  NoteTypeBuilder._({
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
  factory NoteTypeBuilder(
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
    final valueEnum = NoteTypeBuilderEnum.fromString(
      valueString,
    );
    return NoteTypeBuilder._(
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

  /// Create empty [NoteTypeBuilder]
  /// with element only
  factory NoteTypeBuilder.empty() => NoteTypeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [NoteTypeBuilder] from JSON.
  factory NoteTypeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return NoteTypeBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'NoteTypeBuilder cannot be constructed from JSON.',
      );
    }
    return NoteTypeBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for NoteTypeBuilder
  final NoteTypeBuilderEnum? valueEnum;

  /// display_
  static NoteTypeBuilder display_ = NoteTypeBuilder._(
    valueString: 'display',
    valueEnum: NoteTypeBuilderEnum.display_,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/note-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Display',
    ),
  );

  /// print
  static NoteTypeBuilder print = NoteTypeBuilder._(
    valueString: 'print',
    valueEnum: NoteTypeBuilderEnum.print,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/note-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Print (Form)',
    ),
  );

  /// printoper
  static NoteTypeBuilder printoper = NoteTypeBuilder._(
    valueString: 'printoper',
    valueEnum: NoteTypeBuilderEnum.printoper,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/note-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Print (Operator)',
    ),
  );

  /// For instances where an Element is present but not value
  static NoteTypeBuilder elementOnly = NoteTypeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<NoteTypeBuilder> values = [
    display_,
    print,
    printoper,
  ];

  /// Returns the enum value with an element attached
  NoteTypeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return NoteTypeBuilder._(
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
