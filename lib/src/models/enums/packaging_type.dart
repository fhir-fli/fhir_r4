// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// A type of packaging.
class PackagingType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  PackagingType._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [PackagingType] from JSON.
  factory PackagingType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return PackagingType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'PackagingType cannot be constructed from JSON.',
      );
    }
    return PackagingType._(value: value, element: element);
  }

  /// value100000073490
  static final PackagingType value100000073490 = PackagingType._(
    value: '100000073490',
  );

  /// value100000073491
  static final PackagingType value100000073491 = PackagingType._(
    value: '100000073491',
  );

  /// value100000073492
  static final PackagingType value100000073492 = PackagingType._(
    value: '100000073492',
  );

  /// value100000073493
  static final PackagingType value100000073493 = PackagingType._(
    value: '100000073493',
  );

  /// value100000073494
  static final PackagingType value100000073494 = PackagingType._(
    value: '100000073494',
  );

  /// value100000073495
  static final PackagingType value100000073495 = PackagingType._(
    value: '100000073495',
  );

  /// value100000073496
  static final PackagingType value100000073496 = PackagingType._(
    value: '100000073496',
  );

  /// value100000073497
  static final PackagingType value100000073497 = PackagingType._(
    value: '100000073497',
  );

  /// value100000073498
  static final PackagingType value100000073498 = PackagingType._(
    value: '100000073498',
  );

  /// value100000073499
  static final PackagingType value100000073499 = PackagingType._(
    value: '100000073499',
  );

  /// value100000073500
  static final PackagingType value100000073500 = PackagingType._(
    value: '100000073500',
  );

  /// value100000073501
  static final PackagingType value100000073501 = PackagingType._(
    value: '100000073501',
  );

  /// value100000073502
  static final PackagingType value100000073502 = PackagingType._(
    value: '100000073502',
  );

  /// value100000073503
  static final PackagingType value100000073503 = PackagingType._(
    value: '100000073503',
  );

  /// value100000073504
  static final PackagingType value100000073504 = PackagingType._(
    value: '100000073504',
  );

  /// value100000073505
  static final PackagingType value100000073505 = PackagingType._(
    value: '100000073505',
  );

  /// value100000073506
  static final PackagingType value100000073506 = PackagingType._(
    value: '100000073506',
  );

  /// value100000073507
  static final PackagingType value100000073507 = PackagingType._(
    value: '100000073507',
  );

  /// value100000073508
  static final PackagingType value100000073508 = PackagingType._(
    value: '100000073508',
  );

  /// value100000073509
  static final PackagingType value100000073509 = PackagingType._(
    value: '100000073509',
  );

  /// value100000073510
  static final PackagingType value100000073510 = PackagingType._(
    value: '100000073510',
  );

  /// value100000073511
  static final PackagingType value100000073511 = PackagingType._(
    value: '100000073511',
  );

  /// value100000073512
  static final PackagingType value100000073512 = PackagingType._(
    value: '100000073512',
  );

  /// value100000073513
  static final PackagingType value100000073513 = PackagingType._(
    value: '100000073513',
  );

  /// value100000073514
  static final PackagingType value100000073514 = PackagingType._(
    value: '100000073514',
  );

  /// value100000073515
  static final PackagingType value100000073515 = PackagingType._(
    value: '100000073515',
  );

  /// value100000073516
  static final PackagingType value100000073516 = PackagingType._(
    value: '100000073516',
  );

  /// value100000073517
  static final PackagingType value100000073517 = PackagingType._(
    value: '100000073517',
  );

  /// value100000073518
  static final PackagingType value100000073518 = PackagingType._(
    value: '100000073518',
  );

  /// value100000073519
  static final PackagingType value100000073519 = PackagingType._(
    value: '100000073519',
  );

  /// value100000073520
  static final PackagingType value100000073520 = PackagingType._(
    value: '100000073520',
  );

  /// value100000073521
  static final PackagingType value100000073521 = PackagingType._(
    value: '100000073521',
  );

  /// value100000073522
  static final PackagingType value100000073522 = PackagingType._(
    value: '100000073522',
  );

  /// value100000073523
  static final PackagingType value100000073523 = PackagingType._(
    value: '100000073523',
  );

  /// value100000073524
  static final PackagingType value100000073524 = PackagingType._(
    value: '100000073524',
  );

  /// value100000073525
  static final PackagingType value100000073525 = PackagingType._(
    value: '100000073525',
  );

  /// value100000073526
  static final PackagingType value100000073526 = PackagingType._(
    value: '100000073526',
  );

  /// value100000073527
  static final PackagingType value100000073527 = PackagingType._(
    value: '100000073527',
  );

  /// value100000073528
  static final PackagingType value100000073528 = PackagingType._(
    value: '100000073528',
  );

  /// value100000073529
  static final PackagingType value100000073529 = PackagingType._(
    value: '100000073529',
  );

  /// value100000073530
  static final PackagingType value100000073530 = PackagingType._(
    value: '100000073530',
  );

  /// value100000073531
  static final PackagingType value100000073531 = PackagingType._(
    value: '100000073531',
  );

  /// value100000073532
  static final PackagingType value100000073532 = PackagingType._(
    value: '100000073532',
  );

  /// value100000073533
  static final PackagingType value100000073533 = PackagingType._(
    value: '100000073533',
  );

  /// value100000073534
  static final PackagingType value100000073534 = PackagingType._(
    value: '100000073534',
  );

  /// value100000073535
  static final PackagingType value100000073535 = PackagingType._(
    value: '100000073535',
  );

  /// value100000073536
  static final PackagingType value100000073536 = PackagingType._(
    value: '100000073536',
  );

  /// value100000073537
  static final PackagingType value100000073537 = PackagingType._(
    value: '100000073537',
  );

  /// value100000073538
  static final PackagingType value100000073538 = PackagingType._(
    value: '100000073538',
  );

  /// value100000073539
  static final PackagingType value100000073539 = PackagingType._(
    value: '100000073539',
  );

  /// value100000073540
  static final PackagingType value100000073540 = PackagingType._(
    value: '100000073540',
  );

  /// value100000073541
  static final PackagingType value100000073541 = PackagingType._(
    value: '100000073541',
  );

  /// value100000073542
  static final PackagingType value100000073542 = PackagingType._(
    value: '100000073542',
  );

  /// value100000073543
  static final PackagingType value100000073543 = PackagingType._(
    value: '100000073543',
  );

  /// value100000073544
  static final PackagingType value100000073544 = PackagingType._(
    value: '100000073544',
  );

  /// value100000073545
  static final PackagingType value100000073545 = PackagingType._(
    value: '100000073545',
  );

  /// value100000073546
  static final PackagingType value100000073546 = PackagingType._(
    value: '100000073546',
  );

  /// value100000073547
  static final PackagingType value100000073547 = PackagingType._(
    value: '100000073547',
  );

  /// value100000073548
  static final PackagingType value100000073548 = PackagingType._(
    value: '100000073548',
  );

  /// value100000073549
  static final PackagingType value100000073549 = PackagingType._(
    value: '100000073549',
  );

  /// value100000073550
  static final PackagingType value100000073550 = PackagingType._(
    value: '100000073550',
  );

  /// value100000073551
  static final PackagingType value100000073551 = PackagingType._(
    value: '100000073551',
  );

  /// value100000073552
  static final PackagingType value100000073552 = PackagingType._(
    value: '100000073552',
  );

  /// value100000073553
  static final PackagingType value100000073553 = PackagingType._(
    value: '100000073553',
  );

  /// value100000073554
  static final PackagingType value100000073554 = PackagingType._(
    value: '100000073554',
  );

  /// value100000073555
  static final PackagingType value100000073555 = PackagingType._(
    value: '100000073555',
  );

  /// value100000073556
  static final PackagingType value100000073556 = PackagingType._(
    value: '100000073556',
  );

  /// value100000073557
  static final PackagingType value100000073557 = PackagingType._(
    value: '100000073557',
  );

  /// value100000073558
  static final PackagingType value100000073558 = PackagingType._(
    value: '100000073558',
  );

  /// value100000073559
  static final PackagingType value100000073559 = PackagingType._(
    value: '100000073559',
  );

  /// value100000073560
  static final PackagingType value100000073560 = PackagingType._(
    value: '100000073560',
  );

  /// value100000073561
  static final PackagingType value100000073561 = PackagingType._(
    value: '100000073561',
  );

  /// value100000073562
  static final PackagingType value100000073562 = PackagingType._(
    value: '100000073562',
  );

  /// value100000073563
  static final PackagingType value100000073563 = PackagingType._(
    value: '100000073563',
  );

  /// value100000075664
  static final PackagingType value100000075664 = PackagingType._(
    value: '100000075664',
  );

  /// value100000116195
  static final PackagingType value100000116195 = PackagingType._(
    value: '100000116195',
  );

  /// value100000116196
  static final PackagingType value100000116196 = PackagingType._(
    value: '100000116196',
  );

  /// value100000116197
  static final PackagingType value100000116197 = PackagingType._(
    value: '100000116197',
  );

  /// value100000125779
  static final PackagingType value100000125779 = PackagingType._(
    value: '100000125779',
  );

  /// value100000137702
  static final PackagingType value100000137702 = PackagingType._(
    value: '100000137702',
  );

  /// value100000137703
  static final PackagingType value100000137703 = PackagingType._(
    value: '100000137703',
  );

  /// value100000143554
  static final PackagingType value100000143554 = PackagingType._(
    value: '100000143554',
  );

  /// value100000143555
  static final PackagingType value100000143555 = PackagingType._(
    value: '100000143555',
  );

  /// value100000163233
  static final PackagingType value100000163233 = PackagingType._(
    value: '100000163233',
  );

  /// value100000163234
  static final PackagingType value100000163234 = PackagingType._(
    value: '100000163234',
  );

  /// value100000164143
  static final PackagingType value100000164143 = PackagingType._(
    value: '100000164143',
  );

  /// value100000166980
  static final PackagingType value100000166980 = PackagingType._(
    value: '100000166980',
  );

  /// value100000169899
  static final PackagingType value100000169899 = PackagingType._(
    value: '100000169899',
  );

  /// value100000173982
  static final PackagingType value100000173982 = PackagingType._(
    value: '100000173982',
  );

  /// value100000173983
  static final PackagingType value100000173983 = PackagingType._(
    value: '100000173983',
  );

  /// value100000174066
  static final PackagingType value100000174066 = PackagingType._(
    value: '100000174066',
  );

  /// value100000174067
  static final PackagingType value100000174067 = PackagingType._(
    value: '100000174067',
  );

  /// value100000174068
  static final PackagingType value100000174068 = PackagingType._(
    value: '100000174068',
  );

  /// value100000174069
  static final PackagingType value100000174069 = PackagingType._(
    value: '100000174069',
  );

  /// value100000174070
  static final PackagingType value100000174070 = PackagingType._(
    value: '100000174070',
  );

  /// value200000005068
  static final PackagingType value200000005068 = PackagingType._(
    value: '200000005068',
  );

  /// value200000005585
  static final PackagingType value200000005585 = PackagingType._(
    value: '200000005585',
  );

  /// value200000010647
  static final PackagingType value200000010647 = PackagingType._(
    value: '200000010647',
  );

  /// value200000011726
  static final PackagingType value200000011726 = PackagingType._(
    value: '200000011726',
  );

  /// value200000012539
  static final PackagingType value200000012539 = PackagingType._(
    value: '200000012539',
  );

  /// value200000013191
  static final PackagingType value200000013191 = PackagingType._(
    value: '200000013191',
  );

  /// value200000024874
  static final PackagingType value200000024874 = PackagingType._(
    value: '200000024874',
  );

  /// For instances where an Element is present but not value

  static final PackagingType elementOnly = PackagingType._(value: '');

  /// List of all enum-like values
  static final List<PackagingType> values = [
    value100000073490,
    value100000073491,
    value100000073492,
    value100000073493,
    value100000073494,
    value100000073495,
    value100000073496,
    value100000073497,
    value100000073498,
    value100000073499,
    value100000073500,
    value100000073501,
    value100000073502,
    value100000073503,
    value100000073504,
    value100000073505,
    value100000073506,
    value100000073507,
    value100000073508,
    value100000073509,
    value100000073510,
    value100000073511,
    value100000073512,
    value100000073513,
    value100000073514,
    value100000073515,
    value100000073516,
    value100000073517,
    value100000073518,
    value100000073519,
    value100000073520,
    value100000073521,
    value100000073522,
    value100000073523,
    value100000073524,
    value100000073525,
    value100000073526,
    value100000073527,
    value100000073528,
    value100000073529,
    value100000073530,
    value100000073531,
    value100000073532,
    value100000073533,
    value100000073534,
    value100000073535,
    value100000073536,
    value100000073537,
    value100000073538,
    value100000073539,
    value100000073540,
    value100000073541,
    value100000073542,
    value100000073543,
    value100000073544,
    value100000073545,
    value100000073546,
    value100000073547,
    value100000073548,
    value100000073549,
    value100000073550,
    value100000073551,
    value100000073552,
    value100000073553,
    value100000073554,
    value100000073555,
    value100000073556,
    value100000073557,
    value100000073558,
    value100000073559,
    value100000073560,
    value100000073561,
    value100000073562,
    value100000073563,
    value100000075664,
    value100000116195,
    value100000116196,
    value100000116197,
    value100000125779,
    value100000137702,
    value100000137703,
    value100000143554,
    value100000143555,
    value100000163233,
    value100000163234,
    value100000164143,
    value100000166980,
    value100000169899,
    value100000173982,
    value100000173983,
    value100000174066,
    value100000174067,
    value100000174068,
    value100000174069,
    value100000174070,
    value200000005068,
    value200000005585,
    value200000010647,
    value200000011726,
    value200000012539,
    value200000013191,
    value200000024874,
  ];

  /// Clones the current instance
  @override
  PackagingType clone() => PackagingType._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  PackagingType withElement(Element? newElement) {
    return PackagingType._(value: value, element: newElement);
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
  PackagingType copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return PackagingType._(
      value: newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
    );
  }
}
