part of '../primitive_types.dart';

/// Actual enum for SequenceType
enum SequenceTypeBuilderEnum {
  /// aa
  aa,

  /// dna
  dna,

  /// rna
  rna,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case SequenceTypeBuilderEnum.aa:
        return 'aa';
      case SequenceTypeBuilderEnum.dna:
        return 'dna';
      case SequenceTypeBuilderEnum.rna:
        return 'rna';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static SequenceTypeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return SequenceTypeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static SequenceTypeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'aa':
        return SequenceTypeBuilderEnum.aa;
      case 'dna':
        return SequenceTypeBuilderEnum.dna;
      case 'rna':
        return SequenceTypeBuilderEnum.rna;
    }
    return null;
  }
}

/// Type if a sequence -- DNA, RNA, or amino acid sequence.
class SequenceTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  SequenceTypeBuilder._({
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
  factory SequenceTypeBuilder(
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
    final valueEnum = SequenceTypeBuilderEnum.fromString(
      valueString,
    );
    return SequenceTypeBuilder._(
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

  /// Create empty [SequenceTypeBuilder]
  /// with element only
  factory SequenceTypeBuilder.empty() =>
      SequenceTypeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [SequenceTypeBuilder] from JSON.
  factory SequenceTypeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SequenceTypeBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SequenceTypeBuilder cannot be constructed from JSON.',
      );
    }
    return SequenceTypeBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for SequenceTypeBuilder
  final SequenceTypeBuilderEnum? valueEnum;

  /// aa
  static SequenceTypeBuilder aa = SequenceTypeBuilder._(
    valueString: 'aa',
    valueEnum: SequenceTypeBuilderEnum.aa,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/sequence-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'AA Sequence',
    ),
  );

  /// dna
  static SequenceTypeBuilder dna = SequenceTypeBuilder._(
    valueString: 'dna',
    valueEnum: SequenceTypeBuilderEnum.dna,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/sequence-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'DNA Sequence',
    ),
  );

  /// rna
  static SequenceTypeBuilder rna = SequenceTypeBuilder._(
    valueString: 'rna',
    valueEnum: SequenceTypeBuilderEnum.rna,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/sequence-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'RNA Sequence',
    ),
  );

  /// For instances where an Element is present but not value
  static SequenceTypeBuilder elementOnly = SequenceTypeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<SequenceTypeBuilder> values = [
    aa,
    dna,
    rna,
  ];

  /// Returns the enum value with an element attached
  SequenceTypeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return SequenceTypeBuilder._(
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
