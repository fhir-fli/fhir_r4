// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Type if a sequence -- DNA, RNA, or amino acid sequence.
class SequenceType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  SequenceType._({
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
  factory SequenceType(
    String? raw, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final validated = raw != null ? FhirCode._validateCode(raw) : null;
    return SequenceType._(
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

  /// Create empty [SequenceType] with element only
  factory SequenceType.empty() => SequenceType._(validatedValue: '');

  /// Factory constructor to create [SequenceType] from JSON.
  factory SequenceType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SequenceType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SequenceType cannot be constructed from JSON.',
      );
    }
    return SequenceType._(
      validatedValue: value,
      element: element,
    );
  }

  /// aa
  static final SequenceType aa = SequenceType._(
    validatedValue: 'aa',
    system: 'http://hl7.org/fhir/ValueSet/sequence-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'AA Sequence'.toFhirString,
  );

  /// dna
  static final SequenceType dna = SequenceType._(
    validatedValue: 'dna',
    system: 'http://hl7.org/fhir/ValueSet/sequence-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'DNA Sequence'.toFhirString,
  );

  /// rna
  static final SequenceType rna = SequenceType._(
    validatedValue: 'rna',
    system: 'http://hl7.org/fhir/ValueSet/sequence-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'RNA Sequence'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final SequenceType elementOnly = SequenceType._(validatedValue: '');

  /// List of all enum-like values
  static final List<SequenceType> values = [
    aa,
    dna,
    rna,
  ];

  /// Clones the current instance
  @override
  SequenceType clone() => SequenceType._(
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  SequenceType withElement(Element? newElement) {
    return SequenceType._(
      validatedValue: value,
      element: newElement,
    );
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
  SequenceType copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
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
    return SequenceType._(
      validatedValue: newValue ?? value,
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
