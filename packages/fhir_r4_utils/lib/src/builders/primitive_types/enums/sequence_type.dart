// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Type if a sequence -- DNA, RNA, or amino acid sequence.
class SequenceTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  SequenceTypeBuilder._({
    required super.validatedValue,
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
    String? raw, {
    FhirUriBuilder? system,
    FhirStringBuilder? version,
    FhirStringBuilder? display,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final validated = raw != null ? FhirCodeBuilder._validateCode(raw) : null;
    return SequenceTypeBuilder._(
      validatedValue: validated,
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

  /// Create empty [SequenceTypeBuilder] with element only
  factory SequenceTypeBuilder.empty() =>
      SequenceTypeBuilder._(validatedValue: '');

  /// Factory constructor to create [SequenceTypeBuilder]
  /// from JSON.
  factory SequenceTypeBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SequenceTypeBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SequenceTypeBuilder cannot be constructed from JSON.',
      );
    }
    return SequenceTypeBuilder._(
      validatedValue: value,
      element: element,
    );
  }

  /// aa
  static SequenceTypeBuilder aa = SequenceTypeBuilder._(
    validatedValue: 'aa',
    system: 'http://hl7.org/fhir/ValueSet/sequence-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'AA Sequence'.toFhirStringBuilder,
  );

  /// dna
  static SequenceTypeBuilder dna = SequenceTypeBuilder._(
    validatedValue: 'dna',
    system: 'http://hl7.org/fhir/ValueSet/sequence-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'DNA Sequence'.toFhirStringBuilder,
  );

  /// rna
  static SequenceTypeBuilder rna = SequenceTypeBuilder._(
    validatedValue: 'rna',
    system: 'http://hl7.org/fhir/ValueSet/sequence-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'RNA Sequence'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static SequenceTypeBuilder elementOnly =
      SequenceTypeBuilder._(validatedValue: '');

  /// List of all enum-like values
  static List<SequenceTypeBuilder> values = [
    aa,
    dna,
    rna,
  ];

  /// Clones the current instance
  @override
  SequenceTypeBuilder clone() => SequenceTypeBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  SequenceTypeBuilder withElement(ElementBuilder? newElement) {
    return SequenceTypeBuilder._(validatedValue: value, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (value?.isEmpty ?? false) ? null : value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => value ?? '';

  /// Creates a modified copy with updated properties.
  @override
  SequenceTypeBuilder copyWith({
    String? newValue,
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
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return SequenceTypeBuilder._(
      validatedValue: newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath,
    );
  }
}
