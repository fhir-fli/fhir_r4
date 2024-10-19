// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// A type of packaging.
@collection
class PackagingType {
  /// Constructor for internal use (like enum)
  PackagingType({this.fhirCode, this.element})
      : assert(
          fhirCode != null || element != null,
          'Either fhirCode or element should be provided',
        );

  /// The ID of the object in the database.
  Id dbId = Isar.autoIncrement;

  /// The String value of this enum (FHIR code)
  final String? fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// PackagingType values
  /// value100000073490
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000073490 = PackagingType(
    fhirCode: '100000073490',
  );

  /// value100000073491
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000073491 = PackagingType(
    fhirCode: '100000073491',
  );

  /// value100000073492
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000073492 = PackagingType(
    fhirCode: '100000073492',
  );

  /// value100000073493
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000073493 = PackagingType(
    fhirCode: '100000073493',
  );

  /// value100000073494
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000073494 = PackagingType(
    fhirCode: '100000073494',
  );

  /// value100000073495
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000073495 = PackagingType(
    fhirCode: '100000073495',
  );

  /// value100000073496
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000073496 = PackagingType(
    fhirCode: '100000073496',
  );

  /// value100000073497
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000073497 = PackagingType(
    fhirCode: '100000073497',
  );

  /// value100000073498
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000073498 = PackagingType(
    fhirCode: '100000073498',
  );

  /// value100000073499
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000073499 = PackagingType(
    fhirCode: '100000073499',
  );

  /// value100000073500
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000073500 = PackagingType(
    fhirCode: '100000073500',
  );

  /// value100000073501
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000073501 = PackagingType(
    fhirCode: '100000073501',
  );

  /// value100000073502
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000073502 = PackagingType(
    fhirCode: '100000073502',
  );

  /// value100000073503
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000073503 = PackagingType(
    fhirCode: '100000073503',
  );

  /// value100000073504
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000073504 = PackagingType(
    fhirCode: '100000073504',
  );

  /// value100000073505
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000073505 = PackagingType(
    fhirCode: '100000073505',
  );

  /// value100000073506
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000073506 = PackagingType(
    fhirCode: '100000073506',
  );

  /// value100000073507
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000073507 = PackagingType(
    fhirCode: '100000073507',
  );

  /// value100000073508
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000073508 = PackagingType(
    fhirCode: '100000073508',
  );

  /// value100000073509
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000073509 = PackagingType(
    fhirCode: '100000073509',
  );

  /// value100000073510
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000073510 = PackagingType(
    fhirCode: '100000073510',
  );

  /// value100000073511
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000073511 = PackagingType(
    fhirCode: '100000073511',
  );

  /// value100000073512
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000073512 = PackagingType(
    fhirCode: '100000073512',
  );

  /// value100000073513
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000073513 = PackagingType(
    fhirCode: '100000073513',
  );

  /// value100000073514
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000073514 = PackagingType(
    fhirCode: '100000073514',
  );

  /// value100000073515
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000073515 = PackagingType(
    fhirCode: '100000073515',
  );

  /// value100000073516
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000073516 = PackagingType(
    fhirCode: '100000073516',
  );

  /// value100000073517
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000073517 = PackagingType(
    fhirCode: '100000073517',
  );

  /// value100000073518
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000073518 = PackagingType(
    fhirCode: '100000073518',
  );

  /// value100000073519
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000073519 = PackagingType(
    fhirCode: '100000073519',
  );

  /// value100000073520
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000073520 = PackagingType(
    fhirCode: '100000073520',
  );

  /// value100000073521
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000073521 = PackagingType(
    fhirCode: '100000073521',
  );

  /// value100000073522
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000073522 = PackagingType(
    fhirCode: '100000073522',
  );

  /// value100000073523
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000073523 = PackagingType(
    fhirCode: '100000073523',
  );

  /// value100000073524
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000073524 = PackagingType(
    fhirCode: '100000073524',
  );

  /// value100000073525
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000073525 = PackagingType(
    fhirCode: '100000073525',
  );

  /// value100000073526
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000073526 = PackagingType(
    fhirCode: '100000073526',
  );

  /// value100000073527
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000073527 = PackagingType(
    fhirCode: '100000073527',
  );

  /// value100000073528
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000073528 = PackagingType(
    fhirCode: '100000073528',
  );

  /// value100000073529
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000073529 = PackagingType(
    fhirCode: '100000073529',
  );

  /// value100000073530
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000073530 = PackagingType(
    fhirCode: '100000073530',
  );

  /// value100000073531
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000073531 = PackagingType(
    fhirCode: '100000073531',
  );

  /// value100000073532
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000073532 = PackagingType(
    fhirCode: '100000073532',
  );

  /// value100000073533
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000073533 = PackagingType(
    fhirCode: '100000073533',
  );

  /// value100000073534
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000073534 = PackagingType(
    fhirCode: '100000073534',
  );

  /// value100000073535
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000073535 = PackagingType(
    fhirCode: '100000073535',
  );

  /// value100000073536
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000073536 = PackagingType(
    fhirCode: '100000073536',
  );

  /// value100000073537
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000073537 = PackagingType(
    fhirCode: '100000073537',
  );

  /// value100000073538
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000073538 = PackagingType(
    fhirCode: '100000073538',
  );

  /// value100000073539
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000073539 = PackagingType(
    fhirCode: '100000073539',
  );

  /// value100000073540
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000073540 = PackagingType(
    fhirCode: '100000073540',
  );

  /// value100000073541
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000073541 = PackagingType(
    fhirCode: '100000073541',
  );

  /// value100000073542
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000073542 = PackagingType(
    fhirCode: '100000073542',
  );

  /// value100000073543
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000073543 = PackagingType(
    fhirCode: '100000073543',
  );

  /// value100000073544
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000073544 = PackagingType(
    fhirCode: '100000073544',
  );

  /// value100000073545
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000073545 = PackagingType(
    fhirCode: '100000073545',
  );

  /// value100000073546
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000073546 = PackagingType(
    fhirCode: '100000073546',
  );

  /// value100000073547
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000073547 = PackagingType(
    fhirCode: '100000073547',
  );

  /// value100000073548
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000073548 = PackagingType(
    fhirCode: '100000073548',
  );

  /// value100000073549
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000073549 = PackagingType(
    fhirCode: '100000073549',
  );

  /// value100000073550
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000073550 = PackagingType(
    fhirCode: '100000073550',
  );

  /// value100000073551
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000073551 = PackagingType(
    fhirCode: '100000073551',
  );

  /// value100000073552
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000073552 = PackagingType(
    fhirCode: '100000073552',
  );

  /// value100000073553
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000073553 = PackagingType(
    fhirCode: '100000073553',
  );

  /// value100000073554
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000073554 = PackagingType(
    fhirCode: '100000073554',
  );

  /// value100000073555
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000073555 = PackagingType(
    fhirCode: '100000073555',
  );

  /// value100000073556
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000073556 = PackagingType(
    fhirCode: '100000073556',
  );

  /// value100000073557
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000073557 = PackagingType(
    fhirCode: '100000073557',
  );

  /// value100000073558
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000073558 = PackagingType(
    fhirCode: '100000073558',
  );

  /// value100000073559
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000073559 = PackagingType(
    fhirCode: '100000073559',
  );

  /// value100000073560
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000073560 = PackagingType(
    fhirCode: '100000073560',
  );

  /// value100000073561
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000073561 = PackagingType(
    fhirCode: '100000073561',
  );

  /// value100000073562
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000073562 = PackagingType(
    fhirCode: '100000073562',
  );

  /// value100000073563
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000073563 = PackagingType(
    fhirCode: '100000073563',
  );

  /// value100000075664
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000075664 = PackagingType(
    fhirCode: '100000075664',
  );

  /// value100000116195
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000116195 = PackagingType(
    fhirCode: '100000116195',
  );

  /// value100000116196
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000116196 = PackagingType(
    fhirCode: '100000116196',
  );

  /// value100000116197
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000116197 = PackagingType(
    fhirCode: '100000116197',
  );

  /// value100000125779
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000125779 = PackagingType(
    fhirCode: '100000125779',
  );

  /// value100000137702
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000137702 = PackagingType(
    fhirCode: '100000137702',
  );

  /// value100000137703
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000137703 = PackagingType(
    fhirCode: '100000137703',
  );

  /// value100000143554
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000143554 = PackagingType(
    fhirCode: '100000143554',
  );

  /// value100000143555
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000143555 = PackagingType(
    fhirCode: '100000143555',
  );

  /// value100000163233
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000163233 = PackagingType(
    fhirCode: '100000163233',
  );

  /// value100000163234
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000163234 = PackagingType(
    fhirCode: '100000163234',
  );

  /// value100000164143
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000164143 = PackagingType(
    fhirCode: '100000164143',
  );

  /// value100000166980
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000166980 = PackagingType(
    fhirCode: '100000166980',
  );

  /// value100000169899
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000169899 = PackagingType(
    fhirCode: '100000169899',
  );

  /// value100000173982
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000173982 = PackagingType(
    fhirCode: '100000173982',
  );

  /// value100000173983
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000173983 = PackagingType(
    fhirCode: '100000173983',
  );

  /// value100000174066
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000174066 = PackagingType(
    fhirCode: '100000174066',
  );

  /// value100000174067
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000174067 = PackagingType(
    fhirCode: '100000174067',
  );

  /// value100000174068
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000174068 = PackagingType(
    fhirCode: '100000174068',
  );

  /// value100000174069
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000174069 = PackagingType(
    fhirCode: '100000174069',
  );

  /// value100000174070
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value100000174070 = PackagingType(
    fhirCode: '100000174070',
  );

  /// value200000005068
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value200000005068 = PackagingType(
    fhirCode: '200000005068',
  );

  /// value200000005585
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value200000005585 = PackagingType(
    fhirCode: '200000005585',
  );

  /// value200000010647
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value200000010647 = PackagingType(
    fhirCode: '200000010647',
  );

  /// value200000011726
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value200000011726 = PackagingType(
    fhirCode: '200000011726',
  );

  /// value200000012539
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value200000012539 = PackagingType(
    fhirCode: '200000012539',
  );

  /// value200000013191
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value200000013191 = PackagingType(
    fhirCode: '200000013191',
  );

  /// value200000024874
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PackagingType value200000024874 = PackagingType(
    fhirCode: '200000024874',
  );

  /// For instances where an Element is present but not value

  static final PackagingType elementOnly = PackagingType();

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

  /// Returns the enum value with an element attached
  PackagingType withElement(Element? newElement) {
    return PackagingType(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [PackagingType] from JSON.
  static PackagingType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return PackagingType.elementOnly.withElement(element);
    }
    return PackagingType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'PackagingType.$fhirCode';
}
