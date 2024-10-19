// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// What Search Comparator Codes are supported in search.
@Entity()
class SearchComparator extends FhirCode {
  /// Factory constructor to create [SearchComparator] from JSON.
  factory SearchComparator.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SearchComparator.elementOnly(element);
    }
    if (values.contains(value)) {
      return SearchComparator._(value, element);
    }
    throw ArgumentError(
      'SearchComparator.fromJson: JSON value is not a valid value',
    );
  }

  /// eq
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SearchComparator.eq([this.element])
      : dbValue = 'eq',
        super('eq', element);

  /// ne
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SearchComparator.ne([this.element])
      : dbValue = 'ne',
        super('ne', element);

  /// gt
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SearchComparator.gt([this.element])
      : dbValue = 'gt',
        super('gt', element);

  /// lt
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SearchComparator.lt([this.element])
      : dbValue = 'lt',
        super('lt', element);

  /// ge
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SearchComparator.ge([this.element])
      : dbValue = 'ge',
        super('ge', element);

  /// le
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SearchComparator.le([this.element])
      : dbValue = 'le',
        super('le', element);

  /// sa
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SearchComparator.sa([this.element])
      : dbValue = 'sa',
        super('sa', element);

  /// eb
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SearchComparator.eb([this.element])
      : dbValue = 'eb',
        super('eb', element);

  /// ap
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SearchComparator.ap([this.element])
      : dbValue = 'ap',
        super('ap', element);

  /// For instances where an Element is present but not value

  SearchComparator.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  SearchComparator._(super.input, [super.element])
      : dbValue = input,
        // ignore: prefer_initializing_formals
        element = element;

  @override
  @Id()
  // ignore: overridden_fields
  int dbId = 0;

  /// Value to store in ObjectBox
  @override
  // ignore: overridden_fields
  String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  Element? element;

  /// List of all enum-like values
  @Transient()
  static final List<String> values = [
    'eq',
    'ne',
    'gt',
    'lt',
    'ge',
    'le',
    'sa',
    'eb',
    'ap',
  ];

  /// Returns the enum value with an element attached
  SearchComparator withElement(Element? newElement) {
    return SearchComparator._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'SearchComparator.$value';
}
