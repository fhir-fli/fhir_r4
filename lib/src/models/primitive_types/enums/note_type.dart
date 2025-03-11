// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The presentation types of notes.
class NoteType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  NoteType._({
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
  factory NoteType(
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
    return NoteType._(
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

  /// Create empty [NoteType] with element only
  factory NoteType.empty() => NoteType._(validatedValue: '');

  /// Factory constructor to create [NoteType] from JSON.
  factory NoteType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return NoteType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError('NoteType cannot be constructed from JSON.');
    }
    return NoteType._(validatedValue: value, element: element);
  }

  /// display_
  static final NoteType display_ = NoteType._(
    validatedValue: 'display',
    system: 'http://hl7.org/fhir/ValueSet/note-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Display'.toFhirString,
  );

  /// print
  static final NoteType print = NoteType._(
    validatedValue: 'print',
    system: 'http://hl7.org/fhir/ValueSet/note-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Print (Form)'.toFhirString,
  );

  /// printoper
  static final NoteType printoper = NoteType._(
    validatedValue: 'printoper',
    system: 'http://hl7.org/fhir/ValueSet/note-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Print (Operator)'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final NoteType elementOnly = NoteType._(validatedValue: '');

  /// List of all enum-like values
  static final List<NoteType> values = [
    display_,
    print,
    printoper,
  ];

  /// Clones the current instance
  @override
  NoteType clone() => NoteType._(
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  NoteType withElement(Element? newElement) {
    return NoteType._(validatedValue: value, element: newElement);
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
  NoteType copyWith({
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
    return NoteType._(
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
