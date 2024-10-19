// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// A type of packaging.
@Entity()
class PackagingType extends FhirCode {
  /// Factory constructor to create [PackagingType] from JSON.
  factory PackagingType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return PackagingType.elementOnly(element);
    }
    if (values.contains(value)) {
      return PackagingType._(value, element);
    }
    throw ArgumentError(
      'PackagingType.fromJson: JSON value is not a valid value',
    );
  }

  /// value100000073490
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000073490([this.element])
      : dbValue = '100000073490',
        super('100000073490', element);

  /// value100000073491
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000073491([this.element])
      : dbValue = '100000073491',
        super('100000073491', element);

  /// value100000073492
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000073492([this.element])
      : dbValue = '100000073492',
        super('100000073492', element);

  /// value100000073493
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000073493([this.element])
      : dbValue = '100000073493',
        super('100000073493', element);

  /// value100000073494
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000073494([this.element])
      : dbValue = '100000073494',
        super('100000073494', element);

  /// value100000073495
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000073495([this.element])
      : dbValue = '100000073495',
        super('100000073495', element);

  /// value100000073496
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000073496([this.element])
      : dbValue = '100000073496',
        super('100000073496', element);

  /// value100000073497
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000073497([this.element])
      : dbValue = '100000073497',
        super('100000073497', element);

  /// value100000073498
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000073498([this.element])
      : dbValue = '100000073498',
        super('100000073498', element);

  /// value100000073499
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000073499([this.element])
      : dbValue = '100000073499',
        super('100000073499', element);

  /// value100000073500
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000073500([this.element])
      : dbValue = '100000073500',
        super('100000073500', element);

  /// value100000073501
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000073501([this.element])
      : dbValue = '100000073501',
        super('100000073501', element);

  /// value100000073502
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000073502([this.element])
      : dbValue = '100000073502',
        super('100000073502', element);

  /// value100000073503
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000073503([this.element])
      : dbValue = '100000073503',
        super('100000073503', element);

  /// value100000073504
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000073504([this.element])
      : dbValue = '100000073504',
        super('100000073504', element);

  /// value100000073505
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000073505([this.element])
      : dbValue = '100000073505',
        super('100000073505', element);

  /// value100000073506
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000073506([this.element])
      : dbValue = '100000073506',
        super('100000073506', element);

  /// value100000073507
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000073507([this.element])
      : dbValue = '100000073507',
        super('100000073507', element);

  /// value100000073508
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000073508([this.element])
      : dbValue = '100000073508',
        super('100000073508', element);

  /// value100000073509
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000073509([this.element])
      : dbValue = '100000073509',
        super('100000073509', element);

  /// value100000073510
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000073510([this.element])
      : dbValue = '100000073510',
        super('100000073510', element);

  /// value100000073511
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000073511([this.element])
      : dbValue = '100000073511',
        super('100000073511', element);

  /// value100000073512
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000073512([this.element])
      : dbValue = '100000073512',
        super('100000073512', element);

  /// value100000073513
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000073513([this.element])
      : dbValue = '100000073513',
        super('100000073513', element);

  /// value100000073514
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000073514([this.element])
      : dbValue = '100000073514',
        super('100000073514', element);

  /// value100000073515
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000073515([this.element])
      : dbValue = '100000073515',
        super('100000073515', element);

  /// value100000073516
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000073516([this.element])
      : dbValue = '100000073516',
        super('100000073516', element);

  /// value100000073517
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000073517([this.element])
      : dbValue = '100000073517',
        super('100000073517', element);

  /// value100000073518
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000073518([this.element])
      : dbValue = '100000073518',
        super('100000073518', element);

  /// value100000073519
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000073519([this.element])
      : dbValue = '100000073519',
        super('100000073519', element);

  /// value100000073520
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000073520([this.element])
      : dbValue = '100000073520',
        super('100000073520', element);

  /// value100000073521
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000073521([this.element])
      : dbValue = '100000073521',
        super('100000073521', element);

  /// value100000073522
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000073522([this.element])
      : dbValue = '100000073522',
        super('100000073522', element);

  /// value100000073523
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000073523([this.element])
      : dbValue = '100000073523',
        super('100000073523', element);

  /// value100000073524
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000073524([this.element])
      : dbValue = '100000073524',
        super('100000073524', element);

  /// value100000073525
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000073525([this.element])
      : dbValue = '100000073525',
        super('100000073525', element);

  /// value100000073526
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000073526([this.element])
      : dbValue = '100000073526',
        super('100000073526', element);

  /// value100000073527
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000073527([this.element])
      : dbValue = '100000073527',
        super('100000073527', element);

  /// value100000073528
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000073528([this.element])
      : dbValue = '100000073528',
        super('100000073528', element);

  /// value100000073529
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000073529([this.element])
      : dbValue = '100000073529',
        super('100000073529', element);

  /// value100000073530
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000073530([this.element])
      : dbValue = '100000073530',
        super('100000073530', element);

  /// value100000073531
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000073531([this.element])
      : dbValue = '100000073531',
        super('100000073531', element);

  /// value100000073532
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000073532([this.element])
      : dbValue = '100000073532',
        super('100000073532', element);

  /// value100000073533
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000073533([this.element])
      : dbValue = '100000073533',
        super('100000073533', element);

  /// value100000073534
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000073534([this.element])
      : dbValue = '100000073534',
        super('100000073534', element);

  /// value100000073535
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000073535([this.element])
      : dbValue = '100000073535',
        super('100000073535', element);

  /// value100000073536
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000073536([this.element])
      : dbValue = '100000073536',
        super('100000073536', element);

  /// value100000073537
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000073537([this.element])
      : dbValue = '100000073537',
        super('100000073537', element);

  /// value100000073538
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000073538([this.element])
      : dbValue = '100000073538',
        super('100000073538', element);

  /// value100000073539
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000073539([this.element])
      : dbValue = '100000073539',
        super('100000073539', element);

  /// value100000073540
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000073540([this.element])
      : dbValue = '100000073540',
        super('100000073540', element);

  /// value100000073541
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000073541([this.element])
      : dbValue = '100000073541',
        super('100000073541', element);

  /// value100000073542
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000073542([this.element])
      : dbValue = '100000073542',
        super('100000073542', element);

  /// value100000073543
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000073543([this.element])
      : dbValue = '100000073543',
        super('100000073543', element);

  /// value100000073544
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000073544([this.element])
      : dbValue = '100000073544',
        super('100000073544', element);

  /// value100000073545
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000073545([this.element])
      : dbValue = '100000073545',
        super('100000073545', element);

  /// value100000073546
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000073546([this.element])
      : dbValue = '100000073546',
        super('100000073546', element);

  /// value100000073547
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000073547([this.element])
      : dbValue = '100000073547',
        super('100000073547', element);

  /// value100000073548
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000073548([this.element])
      : dbValue = '100000073548',
        super('100000073548', element);

  /// value100000073549
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000073549([this.element])
      : dbValue = '100000073549',
        super('100000073549', element);

  /// value100000073550
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000073550([this.element])
      : dbValue = '100000073550',
        super('100000073550', element);

  /// value100000073551
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000073551([this.element])
      : dbValue = '100000073551',
        super('100000073551', element);

  /// value100000073552
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000073552([this.element])
      : dbValue = '100000073552',
        super('100000073552', element);

  /// value100000073553
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000073553([this.element])
      : dbValue = '100000073553',
        super('100000073553', element);

  /// value100000073554
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000073554([this.element])
      : dbValue = '100000073554',
        super('100000073554', element);

  /// value100000073555
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000073555([this.element])
      : dbValue = '100000073555',
        super('100000073555', element);

  /// value100000073556
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000073556([this.element])
      : dbValue = '100000073556',
        super('100000073556', element);

  /// value100000073557
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000073557([this.element])
      : dbValue = '100000073557',
        super('100000073557', element);

  /// value100000073558
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000073558([this.element])
      : dbValue = '100000073558',
        super('100000073558', element);

  /// value100000073559
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000073559([this.element])
      : dbValue = '100000073559',
        super('100000073559', element);

  /// value100000073560
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000073560([this.element])
      : dbValue = '100000073560',
        super('100000073560', element);

  /// value100000073561
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000073561([this.element])
      : dbValue = '100000073561',
        super('100000073561', element);

  /// value100000073562
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000073562([this.element])
      : dbValue = '100000073562',
        super('100000073562', element);

  /// value100000073563
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000073563([this.element])
      : dbValue = '100000073563',
        super('100000073563', element);

  /// value100000075664
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000075664([this.element])
      : dbValue = '100000075664',
        super('100000075664', element);

  /// value100000116195
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000116195([this.element])
      : dbValue = '100000116195',
        super('100000116195', element);

  /// value100000116196
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000116196([this.element])
      : dbValue = '100000116196',
        super('100000116196', element);

  /// value100000116197
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000116197([this.element])
      : dbValue = '100000116197',
        super('100000116197', element);

  /// value100000125779
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000125779([this.element])
      : dbValue = '100000125779',
        super('100000125779', element);

  /// value100000137702
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000137702([this.element])
      : dbValue = '100000137702',
        super('100000137702', element);

  /// value100000137703
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000137703([this.element])
      : dbValue = '100000137703',
        super('100000137703', element);

  /// value100000143554
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000143554([this.element])
      : dbValue = '100000143554',
        super('100000143554', element);

  /// value100000143555
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000143555([this.element])
      : dbValue = '100000143555',
        super('100000143555', element);

  /// value100000163233
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000163233([this.element])
      : dbValue = '100000163233',
        super('100000163233', element);

  /// value100000163234
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000163234([this.element])
      : dbValue = '100000163234',
        super('100000163234', element);

  /// value100000164143
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000164143([this.element])
      : dbValue = '100000164143',
        super('100000164143', element);

  /// value100000166980
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000166980([this.element])
      : dbValue = '100000166980',
        super('100000166980', element);

  /// value100000169899
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000169899([this.element])
      : dbValue = '100000169899',
        super('100000169899', element);

  /// value100000173982
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000173982([this.element])
      : dbValue = '100000173982',
        super('100000173982', element);

  /// value100000173983
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000173983([this.element])
      : dbValue = '100000173983',
        super('100000173983', element);

  /// value100000174066
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000174066([this.element])
      : dbValue = '100000174066',
        super('100000174066', element);

  /// value100000174067
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000174067([this.element])
      : dbValue = '100000174067',
        super('100000174067', element);

  /// value100000174068
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000174068([this.element])
      : dbValue = '100000174068',
        super('100000174068', element);

  /// value100000174069
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000174069([this.element])
      : dbValue = '100000174069',
        super('100000174069', element);

  /// value100000174070
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value100000174070([this.element])
      : dbValue = '100000174070',
        super('100000174070', element);

  /// value200000005068
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value200000005068([this.element])
      : dbValue = '200000005068',
        super('200000005068', element);

  /// value200000005585
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value200000005585([this.element])
      : dbValue = '200000005585',
        super('200000005585', element);

  /// value200000010647
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value200000010647([this.element])
      : dbValue = '200000010647',
        super('200000010647', element);

  /// value200000011726
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value200000011726([this.element])
      : dbValue = '200000011726',
        super('200000011726', element);

  /// value200000012539
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value200000012539([this.element])
      : dbValue = '200000012539',
        super('200000012539', element);

  /// value200000013191
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value200000013191([this.element])
      : dbValue = '200000013191',
        super('200000013191', element);

  /// value200000024874
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PackagingType.value200000024874([this.element])
      : dbValue = '200000024874',
        super('200000024874', element);

  /// For instances where an Element is present but not value

  PackagingType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  PackagingType._(super.input, [super.element])
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
  final String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  final Element? element;

  /// List of all enum-like values
  static final List<String> values = [
    '100000073490',
    '100000073491',
    '100000073492',
    '100000073493',
    '100000073494',
    '100000073495',
    '100000073496',
    '100000073497',
    '100000073498',
    '100000073499',
    '100000073500',
    '100000073501',
    '100000073502',
    '100000073503',
    '100000073504',
    '100000073505',
    '100000073506',
    '100000073507',
    '100000073508',
    '100000073509',
    '100000073510',
    '100000073511',
    '100000073512',
    '100000073513',
    '100000073514',
    '100000073515',
    '100000073516',
    '100000073517',
    '100000073518',
    '100000073519',
    '100000073520',
    '100000073521',
    '100000073522',
    '100000073523',
    '100000073524',
    '100000073525',
    '100000073526',
    '100000073527',
    '100000073528',
    '100000073529',
    '100000073530',
    '100000073531',
    '100000073532',
    '100000073533',
    '100000073534',
    '100000073535',
    '100000073536',
    '100000073537',
    '100000073538',
    '100000073539',
    '100000073540',
    '100000073541',
    '100000073542',
    '100000073543',
    '100000073544',
    '100000073545',
    '100000073546',
    '100000073547',
    '100000073548',
    '100000073549',
    '100000073550',
    '100000073551',
    '100000073552',
    '100000073553',
    '100000073554',
    '100000073555',
    '100000073556',
    '100000073557',
    '100000073558',
    '100000073559',
    '100000073560',
    '100000073561',
    '100000073562',
    '100000073563',
    '100000075664',
    '100000116195',
    '100000116196',
    '100000116197',
    '100000125779',
    '100000137702',
    '100000137703',
    '100000143554',
    '100000143555',
    '100000163233',
    '100000163234',
    '100000164143',
    '100000166980',
    '100000169899',
    '100000173982',
    '100000173983',
    '100000174066',
    '100000174067',
    '100000174068',
    '100000174069',
    '100000174070',
    '200000005068',
    '200000005585',
    '200000010647',
    '200000011726',
    '200000012539',
    '200000013191',
    '200000024874',
  ];

  /// Returns the enum value with an element attached
  PackagingType withElement(Element? newElement) {
    return PackagingType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'PackagingType.$value';
}
