// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Dose form for a medication, in the form suitable for administering to the patient, after mixing, where necessary.
@Entity()
class AdministrableDoseForm extends FhirCode {
  /// Factory constructor to create [AdministrableDoseForm] from JSON.
  factory AdministrableDoseForm.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AdministrableDoseForm.elementOnly(element);
    }
    if (values.contains(value)) {
      return AdministrableDoseForm._(value, element);
    }
    throw ArgumentError(
      'AdministrableDoseForm.fromJson: JSON value is not a valid value',
    );
  }

  /// value100000073362
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073362([this.element])
      : dbValue = '100000073362',
        super('100000073362', element);

  /// value100000073363
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073363([this.element])
      : dbValue = '100000073363',
        super('100000073363', element);

  /// value100000073364
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073364([this.element])
      : dbValue = '100000073364',
        super('100000073364', element);

  /// value100000073365
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073365([this.element])
      : dbValue = '100000073365',
        super('100000073365', element);

  /// value100000073367
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073367([this.element])
      : dbValue = '100000073367',
        super('100000073367', element);

  /// value100000073368
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073368([this.element])
      : dbValue = '100000073368',
        super('100000073368', element);

  /// value100000073369
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073369([this.element])
      : dbValue = '100000073369',
        super('100000073369', element);

  /// value100000073370
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073370([this.element])
      : dbValue = '100000073370',
        super('100000073370', element);

  /// value100000073371
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073371([this.element])
      : dbValue = '100000073371',
        super('100000073371', element);

  /// value100000073372
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073372([this.element])
      : dbValue = '100000073372',
        super('100000073372', element);

  /// value100000073373
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073373([this.element])
      : dbValue = '100000073373',
        super('100000073373', element);

  /// value100000073374
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073374([this.element])
      : dbValue = '100000073374',
        super('100000073374', element);

  /// value100000073375
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073375([this.element])
      : dbValue = '100000073375',
        super('100000073375', element);

  /// value100000073376
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073376([this.element])
      : dbValue = '100000073376',
        super('100000073376', element);

  /// value100000073377
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073377([this.element])
      : dbValue = '100000073377',
        super('100000073377', element);

  /// value100000073378
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073378([this.element])
      : dbValue = '100000073378',
        super('100000073378', element);

  /// value100000073379
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073379([this.element])
      : dbValue = '100000073379',
        super('100000073379', element);

  /// value100000073380
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073380([this.element])
      : dbValue = '100000073380',
        super('100000073380', element);

  /// value100000073642
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073642([this.element])
      : dbValue = '100000073642',
        super('100000073642', element);

  /// value100000073643
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073643([this.element])
      : dbValue = '100000073643',
        super('100000073643', element);

  /// value100000073644
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073644([this.element])
      : dbValue = '100000073644',
        super('100000073644', element);

  /// value100000073645
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073645([this.element])
      : dbValue = '100000073645',
        super('100000073645', element);

  /// value100000073646
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073646([this.element])
      : dbValue = '100000073646',
        super('100000073646', element);

  /// value100000073647
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073647([this.element])
      : dbValue = '100000073647',
        super('100000073647', element);

  /// value100000073648
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073648([this.element])
      : dbValue = '100000073648',
        super('100000073648', element);

  /// value100000073649
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073649([this.element])
      : dbValue = '100000073649',
        super('100000073649', element);

  /// value100000073650
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073650([this.element])
      : dbValue = '100000073650',
        super('100000073650', element);

  /// value100000073652
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073652([this.element])
      : dbValue = '100000073652',
        super('100000073652', element);

  /// value100000073653
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073653([this.element])
      : dbValue = '100000073653',
        super('100000073653', element);

  /// value100000073654
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073654([this.element])
      : dbValue = '100000073654',
        super('100000073654', element);

  /// value100000073655
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073655([this.element])
      : dbValue = '100000073655',
        super('100000073655', element);

  /// value100000073656
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073656([this.element])
      : dbValue = '100000073656',
        super('100000073656', element);

  /// value100000073657
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073657([this.element])
      : dbValue = '100000073657',
        super('100000073657', element);

  /// value100000073658
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073658([this.element])
      : dbValue = '100000073658',
        super('100000073658', element);

  /// value100000073659
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073659([this.element])
      : dbValue = '100000073659',
        super('100000073659', element);

  /// value100000073660
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073660([this.element])
      : dbValue = '100000073660',
        super('100000073660', element);

  /// value100000073661
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073661([this.element])
      : dbValue = '100000073661',
        super('100000073661', element);

  /// value100000073662
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073662([this.element])
      : dbValue = '100000073662',
        super('100000073662', element);

  /// value100000073663
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073663([this.element])
      : dbValue = '100000073663',
        super('100000073663', element);

  /// value100000073664
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073664([this.element])
      : dbValue = '100000073664',
        super('100000073664', element);

  /// value100000073665
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073665([this.element])
      : dbValue = '100000073665',
        super('100000073665', element);

  /// value100000073666
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073666([this.element])
      : dbValue = '100000073666',
        super('100000073666', element);

  /// value100000073667
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073667([this.element])
      : dbValue = '100000073667',
        super('100000073667', element);

  /// value100000073668
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073668([this.element])
      : dbValue = '100000073668',
        super('100000073668', element);

  /// value100000073669
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073669([this.element])
      : dbValue = '100000073669',
        super('100000073669', element);

  /// value100000073670
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073670([this.element])
      : dbValue = '100000073670',
        super('100000073670', element);

  /// value100000073671
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073671([this.element])
      : dbValue = '100000073671',
        super('100000073671', element);

  /// value100000073672
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073672([this.element])
      : dbValue = '100000073672',
        super('100000073672', element);

  /// value100000073673
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073673([this.element])
      : dbValue = '100000073673',
        super('100000073673', element);

  /// value100000073674
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073674([this.element])
      : dbValue = '100000073674',
        super('100000073674', element);

  /// value100000073675
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073675([this.element])
      : dbValue = '100000073675',
        super('100000073675', element);

  /// value100000073676
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073676([this.element])
      : dbValue = '100000073676',
        super('100000073676', element);

  /// value100000073677
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073677([this.element])
      : dbValue = '100000073677',
        super('100000073677', element);

  /// value100000073678
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073678([this.element])
      : dbValue = '100000073678',
        super('100000073678', element);

  /// value100000073679
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073679([this.element])
      : dbValue = '100000073679',
        super('100000073679', element);

  /// value100000073680
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073680([this.element])
      : dbValue = '100000073680',
        super('100000073680', element);

  /// value100000073681
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073681([this.element])
      : dbValue = '100000073681',
        super('100000073681', element);

  /// value100000073682
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073682([this.element])
      : dbValue = '100000073682',
        super('100000073682', element);

  /// value100000073683
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073683([this.element])
      : dbValue = '100000073683',
        super('100000073683', element);

  /// value100000073684
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073684([this.element])
      : dbValue = '100000073684',
        super('100000073684', element);

  /// value100000073685
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073685([this.element])
      : dbValue = '100000073685',
        super('100000073685', element);

  /// value100000073686
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073686([this.element])
      : dbValue = '100000073686',
        super('100000073686', element);

  /// value100000073687
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073687([this.element])
      : dbValue = '100000073687',
        super('100000073687', element);

  /// value100000073688
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073688([this.element])
      : dbValue = '100000073688',
        super('100000073688', element);

  /// value100000073689
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073689([this.element])
      : dbValue = '100000073689',
        super('100000073689', element);

  /// value100000073690
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073690([this.element])
      : dbValue = '100000073690',
        super('100000073690', element);

  /// value100000073691
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073691([this.element])
      : dbValue = '100000073691',
        super('100000073691', element);

  /// value100000073692
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073692([this.element])
      : dbValue = '100000073692',
        super('100000073692', element);

  /// value100000073693
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073693([this.element])
      : dbValue = '100000073693',
        super('100000073693', element);

  /// value100000073694
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073694([this.element])
      : dbValue = '100000073694',
        super('100000073694', element);

  /// value100000073695
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073695([this.element])
      : dbValue = '100000073695',
        super('100000073695', element);

  /// value100000073696
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073696([this.element])
      : dbValue = '100000073696',
        super('100000073696', element);

  /// value100000073697
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073697([this.element])
      : dbValue = '100000073697',
        super('100000073697', element);

  /// value100000073698
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073698([this.element])
      : dbValue = '100000073698',
        super('100000073698', element);

  /// value100000073699
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073699([this.element])
      : dbValue = '100000073699',
        super('100000073699', element);

  /// value100000073700
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073700([this.element])
      : dbValue = '100000073700',
        super('100000073700', element);

  /// value100000073701
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073701([this.element])
      : dbValue = '100000073701',
        super('100000073701', element);

  /// value100000073702
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073702([this.element])
      : dbValue = '100000073702',
        super('100000073702', element);

  /// value100000073703
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073703([this.element])
      : dbValue = '100000073703',
        super('100000073703', element);

  /// value100000073704
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073704([this.element])
      : dbValue = '100000073704',
        super('100000073704', element);

  /// value100000073705
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073705([this.element])
      : dbValue = '100000073705',
        super('100000073705', element);

  /// value100000073706
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073706([this.element])
      : dbValue = '100000073706',
        super('100000073706', element);

  /// value100000073707
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073707([this.element])
      : dbValue = '100000073707',
        super('100000073707', element);

  /// value100000073708
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073708([this.element])
      : dbValue = '100000073708',
        super('100000073708', element);

  /// value100000073709
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073709([this.element])
      : dbValue = '100000073709',
        super('100000073709', element);

  /// value100000073710
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073710([this.element])
      : dbValue = '100000073710',
        super('100000073710', element);

  /// value100000073711
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073711([this.element])
      : dbValue = '100000073711',
        super('100000073711', element);

  /// value100000073712
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073712([this.element])
      : dbValue = '100000073712',
        super('100000073712', element);

  /// value100000073713
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073713([this.element])
      : dbValue = '100000073713',
        super('100000073713', element);

  /// value100000073714
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073714([this.element])
      : dbValue = '100000073714',
        super('100000073714', element);

  /// value100000073715
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073715([this.element])
      : dbValue = '100000073715',
        super('100000073715', element);

  /// value100000073716
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073716([this.element])
      : dbValue = '100000073716',
        super('100000073716', element);

  /// value100000073717
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073717([this.element])
      : dbValue = '100000073717',
        super('100000073717', element);

  /// value100000073718
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073718([this.element])
      : dbValue = '100000073718',
        super('100000073718', element);

  /// value100000073719
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073719([this.element])
      : dbValue = '100000073719',
        super('100000073719', element);

  /// value100000073720
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073720([this.element])
      : dbValue = '100000073720',
        super('100000073720', element);

  /// value100000073721
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073721([this.element])
      : dbValue = '100000073721',
        super('100000073721', element);

  /// value100000073722
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073722([this.element])
      : dbValue = '100000073722',
        super('100000073722', element);

  /// value100000073723
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073723([this.element])
      : dbValue = '100000073723',
        super('100000073723', element);

  /// value100000073724
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073724([this.element])
      : dbValue = '100000073724',
        super('100000073724', element);

  /// value100000073725
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073725([this.element])
      : dbValue = '100000073725',
        super('100000073725', element);

  /// value100000073726
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073726([this.element])
      : dbValue = '100000073726',
        super('100000073726', element);

  /// value100000073727
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073727([this.element])
      : dbValue = '100000073727',
        super('100000073727', element);

  /// value100000073728
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073728([this.element])
      : dbValue = '100000073728',
        super('100000073728', element);

  /// value100000073729
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073729([this.element])
      : dbValue = '100000073729',
        super('100000073729', element);

  /// value100000073730
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073730([this.element])
      : dbValue = '100000073730',
        super('100000073730', element);

  /// value100000073731
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073731([this.element])
      : dbValue = '100000073731',
        super('100000073731', element);

  /// value100000073732
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073732([this.element])
      : dbValue = '100000073732',
        super('100000073732', element);

  /// value100000073733
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073733([this.element])
      : dbValue = '100000073733',
        super('100000073733', element);

  /// value100000073734
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073734([this.element])
      : dbValue = '100000073734',
        super('100000073734', element);

  /// value100000073735
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073735([this.element])
      : dbValue = '100000073735',
        super('100000073735', element);

  /// value100000073736
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073736([this.element])
      : dbValue = '100000073736',
        super('100000073736', element);

  /// value100000073737
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073737([this.element])
      : dbValue = '100000073737',
        super('100000073737', element);

  /// value100000073738
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073738([this.element])
      : dbValue = '100000073738',
        super('100000073738', element);

  /// value100000073739
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073739([this.element])
      : dbValue = '100000073739',
        super('100000073739', element);

  /// value100000073740
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073740([this.element])
      : dbValue = '100000073740',
        super('100000073740', element);

  /// value100000073741
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073741([this.element])
      : dbValue = '100000073741',
        super('100000073741', element);

  /// value100000073742
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073742([this.element])
      : dbValue = '100000073742',
        super('100000073742', element);

  /// value100000073743
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073743([this.element])
      : dbValue = '100000073743',
        super('100000073743', element);

  /// value100000073744
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073744([this.element])
      : dbValue = '100000073744',
        super('100000073744', element);

  /// value100000073745
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073745([this.element])
      : dbValue = '100000073745',
        super('100000073745', element);

  /// value100000073746
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073746([this.element])
      : dbValue = '100000073746',
        super('100000073746', element);

  /// value100000073747
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073747([this.element])
      : dbValue = '100000073747',
        super('100000073747', element);

  /// value100000073748
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073748([this.element])
      : dbValue = '100000073748',
        super('100000073748', element);

  /// value100000073749
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073749([this.element])
      : dbValue = '100000073749',
        super('100000073749', element);

  /// value100000073750
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073750([this.element])
      : dbValue = '100000073750',
        super('100000073750', element);

  /// value100000073751
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073751([this.element])
      : dbValue = '100000073751',
        super('100000073751', element);

  /// value100000073752
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073752([this.element])
      : dbValue = '100000073752',
        super('100000073752', element);

  /// value100000073753
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073753([this.element])
      : dbValue = '100000073753',
        super('100000073753', element);

  /// value100000073754
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073754([this.element])
      : dbValue = '100000073754',
        super('100000073754', element);

  /// value100000073755
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073755([this.element])
      : dbValue = '100000073755',
        super('100000073755', element);

  /// value100000073756
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073756([this.element])
      : dbValue = '100000073756',
        super('100000073756', element);

  /// value100000073757
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073757([this.element])
      : dbValue = '100000073757',
        super('100000073757', element);

  /// value100000073758
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073758([this.element])
      : dbValue = '100000073758',
        super('100000073758', element);

  /// value100000073759
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073759([this.element])
      : dbValue = '100000073759',
        super('100000073759', element);

  /// value100000073760
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073760([this.element])
      : dbValue = '100000073760',
        super('100000073760', element);

  /// value100000073761
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073761([this.element])
      : dbValue = '100000073761',
        super('100000073761', element);

  /// value100000073762
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073762([this.element])
      : dbValue = '100000073762',
        super('100000073762', element);

  /// value100000073763
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073763([this.element])
      : dbValue = '100000073763',
        super('100000073763', element);

  /// value100000073764
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073764([this.element])
      : dbValue = '100000073764',
        super('100000073764', element);

  /// value100000073765
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073765([this.element])
      : dbValue = '100000073765',
        super('100000073765', element);

  /// value100000073766
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073766([this.element])
      : dbValue = '100000073766',
        super('100000073766', element);

  /// value100000073767
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073767([this.element])
      : dbValue = '100000073767',
        super('100000073767', element);

  /// value100000073768
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073768([this.element])
      : dbValue = '100000073768',
        super('100000073768', element);

  /// value100000073769
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073769([this.element])
      : dbValue = '100000073769',
        super('100000073769', element);

  /// value100000073770
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073770([this.element])
      : dbValue = '100000073770',
        super('100000073770', element);

  /// value100000073771
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073771([this.element])
      : dbValue = '100000073771',
        super('100000073771', element);

  /// value100000073772
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073772([this.element])
      : dbValue = '100000073772',
        super('100000073772', element);

  /// value100000073773
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073773([this.element])
      : dbValue = '100000073773',
        super('100000073773', element);

  /// value100000073775
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073775([this.element])
      : dbValue = '100000073775',
        super('100000073775', element);

  /// value100000073776
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073776([this.element])
      : dbValue = '100000073776',
        super('100000073776', element);

  /// value100000073777
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073777([this.element])
      : dbValue = '100000073777',
        super('100000073777', element);

  /// value100000073778
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073778([this.element])
      : dbValue = '100000073778',
        super('100000073778', element);

  /// value100000073779
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073779([this.element])
      : dbValue = '100000073779',
        super('100000073779', element);

  /// value100000073780
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073780([this.element])
      : dbValue = '100000073780',
        super('100000073780', element);

  /// value100000073782
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073782([this.element])
      : dbValue = '100000073782',
        super('100000073782', element);

  /// value100000073783
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073783([this.element])
      : dbValue = '100000073783',
        super('100000073783', element);

  /// value100000073784
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073784([this.element])
      : dbValue = '100000073784',
        super('100000073784', element);

  /// value100000073785
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073785([this.element])
      : dbValue = '100000073785',
        super('100000073785', element);

  /// value100000073786
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073786([this.element])
      : dbValue = '100000073786',
        super('100000073786', element);

  /// value100000073787
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073787([this.element])
      : dbValue = '100000073787',
        super('100000073787', element);

  /// value100000073788
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073788([this.element])
      : dbValue = '100000073788',
        super('100000073788', element);

  /// value100000073789
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073789([this.element])
      : dbValue = '100000073789',
        super('100000073789', element);

  /// value100000073790
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073790([this.element])
      : dbValue = '100000073790',
        super('100000073790', element);

  /// value100000073791
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073791([this.element])
      : dbValue = '100000073791',
        super('100000073791', element);

  /// value100000073792
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073792([this.element])
      : dbValue = '100000073792',
        super('100000073792', element);

  /// value100000073793
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073793([this.element])
      : dbValue = '100000073793',
        super('100000073793', element);

  /// value100000073794
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073794([this.element])
      : dbValue = '100000073794',
        super('100000073794', element);

  /// value100000073795
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073795([this.element])
      : dbValue = '100000073795',
        super('100000073795', element);

  /// value100000073796
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073796([this.element])
      : dbValue = '100000073796',
        super('100000073796', element);

  /// value100000073797
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073797([this.element])
      : dbValue = '100000073797',
        super('100000073797', element);

  /// value100000073798
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073798([this.element])
      : dbValue = '100000073798',
        super('100000073798', element);

  /// value100000073799
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073799([this.element])
      : dbValue = '100000073799',
        super('100000073799', element);

  /// value100000073800
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073800([this.element])
      : dbValue = '100000073800',
        super('100000073800', element);

  /// value100000073802
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073802([this.element])
      : dbValue = '100000073802',
        super('100000073802', element);

  /// value100000073803
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073803([this.element])
      : dbValue = '100000073803',
        super('100000073803', element);

  /// value100000073804
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073804([this.element])
      : dbValue = '100000073804',
        super('100000073804', element);

  /// value100000073805
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073805([this.element])
      : dbValue = '100000073805',
        super('100000073805', element);

  /// value100000073806
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073806([this.element])
      : dbValue = '100000073806',
        super('100000073806', element);

  /// value100000073807
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073807([this.element])
      : dbValue = '100000073807',
        super('100000073807', element);

  /// value100000073808
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073808([this.element])
      : dbValue = '100000073808',
        super('100000073808', element);

  /// value100000073809
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073809([this.element])
      : dbValue = '100000073809',
        super('100000073809', element);

  /// value100000073810
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073810([this.element])
      : dbValue = '100000073810',
        super('100000073810', element);

  /// value100000073811
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073811([this.element])
      : dbValue = '100000073811',
        super('100000073811', element);

  /// value100000073812
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073812([this.element])
      : dbValue = '100000073812',
        super('100000073812', element);

  /// value100000073813
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073813([this.element])
      : dbValue = '100000073813',
        super('100000073813', element);

  /// value100000073814
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073814([this.element])
      : dbValue = '100000073814',
        super('100000073814', element);

  /// value100000073815
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073815([this.element])
      : dbValue = '100000073815',
        super('100000073815', element);

  /// value100000073816
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073816([this.element])
      : dbValue = '100000073816',
        super('100000073816', element);

  /// value100000073817
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073817([this.element])
      : dbValue = '100000073817',
        super('100000073817', element);

  /// value100000073818
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073818([this.element])
      : dbValue = '100000073818',
        super('100000073818', element);

  /// value100000073819
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073819([this.element])
      : dbValue = '100000073819',
        super('100000073819', element);

  /// value100000073820
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073820([this.element])
      : dbValue = '100000073820',
        super('100000073820', element);

  /// value100000073821
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073821([this.element])
      : dbValue = '100000073821',
        super('100000073821', element);

  /// value100000073822
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073822([this.element])
      : dbValue = '100000073822',
        super('100000073822', element);

  /// value100000073823
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073823([this.element])
      : dbValue = '100000073823',
        super('100000073823', element);

  /// value100000073824
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073824([this.element])
      : dbValue = '100000073824',
        super('100000073824', element);

  /// value100000073825
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073825([this.element])
      : dbValue = '100000073825',
        super('100000073825', element);

  /// value100000073826
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073826([this.element])
      : dbValue = '100000073826',
        super('100000073826', element);

  /// value100000073827
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073827([this.element])
      : dbValue = '100000073827',
        super('100000073827', element);

  /// value100000073863
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdministrableDoseForm.value100000073863([this.element])
      : dbValue = '100000073863',
        super('100000073863', element);

  /// For instances where an Element is present but not value

  AdministrableDoseForm.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  AdministrableDoseForm._(super.input, [super.element])
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
    '100000073362',
    '100000073363',
    '100000073364',
    '100000073365',
    '100000073367',
    '100000073368',
    '100000073369',
    '100000073370',
    '100000073371',
    '100000073372',
    '100000073373',
    '100000073374',
    '100000073375',
    '100000073376',
    '100000073377',
    '100000073378',
    '100000073379',
    '100000073380',
    '100000073642',
    '100000073643',
    '100000073644',
    '100000073645',
    '100000073646',
    '100000073647',
    '100000073648',
    '100000073649',
    '100000073650',
    '100000073652',
    '100000073653',
    '100000073654',
    '100000073655',
    '100000073656',
    '100000073657',
    '100000073658',
    '100000073659',
    '100000073660',
    '100000073661',
    '100000073662',
    '100000073663',
    '100000073664',
    '100000073665',
    '100000073666',
    '100000073667',
    '100000073668',
    '100000073669',
    '100000073670',
    '100000073671',
    '100000073672',
    '100000073673',
    '100000073674',
    '100000073675',
    '100000073676',
    '100000073677',
    '100000073678',
    '100000073679',
    '100000073680',
    '100000073681',
    '100000073682',
    '100000073683',
    '100000073684',
    '100000073685',
    '100000073686',
    '100000073687',
    '100000073688',
    '100000073689',
    '100000073690',
    '100000073691',
    '100000073692',
    '100000073693',
    '100000073694',
    '100000073695',
    '100000073696',
    '100000073697',
    '100000073698',
    '100000073699',
    '100000073700',
    '100000073701',
    '100000073702',
    '100000073703',
    '100000073704',
    '100000073705',
    '100000073706',
    '100000073707',
    '100000073708',
    '100000073709',
    '100000073710',
    '100000073711',
    '100000073712',
    '100000073713',
    '100000073714',
    '100000073715',
    '100000073716',
    '100000073717',
    '100000073718',
    '100000073719',
    '100000073720',
    '100000073721',
    '100000073722',
    '100000073723',
    '100000073724',
    '100000073725',
    '100000073726',
    '100000073727',
    '100000073728',
    '100000073729',
    '100000073730',
    '100000073731',
    '100000073732',
    '100000073733',
    '100000073734',
    '100000073735',
    '100000073736',
    '100000073737',
    '100000073738',
    '100000073739',
    '100000073740',
    '100000073741',
    '100000073742',
    '100000073743',
    '100000073744',
    '100000073745',
    '100000073746',
    '100000073747',
    '100000073748',
    '100000073749',
    '100000073750',
    '100000073751',
    '100000073752',
    '100000073753',
    '100000073754',
    '100000073755',
    '100000073756',
    '100000073757',
    '100000073758',
    '100000073759',
    '100000073760',
    '100000073761',
    '100000073762',
    '100000073763',
    '100000073764',
    '100000073765',
    '100000073766',
    '100000073767',
    '100000073768',
    '100000073769',
    '100000073770',
    '100000073771',
    '100000073772',
    '100000073773',
    '100000073775',
    '100000073776',
    '100000073777',
    '100000073778',
    '100000073779',
    '100000073780',
    '100000073782',
    '100000073783',
    '100000073784',
    '100000073785',
    '100000073786',
    '100000073787',
    '100000073788',
    '100000073789',
    '100000073790',
    '100000073791',
    '100000073792',
    '100000073793',
    '100000073794',
    '100000073795',
    '100000073796',
    '100000073797',
    '100000073798',
    '100000073799',
    '100000073800',
    '100000073802',
    '100000073803',
    '100000073804',
    '100000073805',
    '100000073806',
    '100000073807',
    '100000073808',
    '100000073809',
    '100000073810',
    '100000073811',
    '100000073812',
    '100000073813',
    '100000073814',
    '100000073815',
    '100000073816',
    '100000073817',
    '100000073818',
    '100000073819',
    '100000073820',
    '100000073821',
    '100000073822',
    '100000073823',
    '100000073824',
    '100000073825',
    '100000073826',
    '100000073827',
    '100000073863',
  ];

  /// Returns the enum value with an element attached
  AdministrableDoseForm withElement(Element? newElement) {
    return AdministrableDoseForm._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'AdministrableDoseForm.$value';
}
