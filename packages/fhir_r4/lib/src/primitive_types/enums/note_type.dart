// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The presentation types of notes.
class NoteType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  NoteType._({
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
  factory NoteType(
    String? rawValue, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final valueString =
        rawValue != null ? FhirCode._validateCode(rawValue) : null;
    return NoteType._(
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

  /// Create empty [NoteType] with element only
  factory NoteType.empty() => NoteType._(valueString: '');

  /// Factory constructor to create [NoteType] from JSON.
  factory NoteType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return NoteType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'NoteType cannot be constructed from JSON.',
      );
    }
    return NoteType._(
      valueString: value,
      element: element,
    );
  }

  /// display_
  static final NoteType display_ = NoteType._(
    valueString: 'display',
    system: 'http://hl7.org/fhir/ValueSet/note-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Display'.toFhirString,
  );

  /// print
  static final NoteType print = NoteType._(
    valueString: 'print',
    system: 'http://hl7.org/fhir/ValueSet/note-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Print (Form)'.toFhirString,
  );

  /// printoper
  static final NoteType printoper = NoteType._(
    valueString: 'printoper',
    system: 'http://hl7.org/fhir/ValueSet/note-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Print (Operator)'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final NoteType elementOnly = NoteType._(valueString: '');

  /// List of all enum-like values
  static final List<NoteType> values = [
    display_,
    print,
    printoper,
  ];

  /// Clones the current instance
  @override
  NoteType clone() => NoteType._(
        valueString: valueString,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  NoteType withElement(Element? newElement) {
    return NoteType._(
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

  /// Creates a modified copy with updated properties.
  @override
  NoteType copyWith({
    dynamic newValue,
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
    if (newValue is! String?) {
      throw ArgumentError('Invalid input for NoteType: $newValue');
    }
    return NoteType._(
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
