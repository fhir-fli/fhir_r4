// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Dose form for a medication, in the form suitable for administering to the patient, after mixing, where necessary.
@collection
class AdministrableDoseForm {
  /// Constructor for internal use (like enum)
  AdministrableDoseForm({this.fhirCode, this.element})
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

  /// AdministrableDoseForm values
  /// value100000073362
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073362 = AdministrableDoseForm(
    fhirCode: '100000073362',
  );

  /// value100000073363
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073363 = AdministrableDoseForm(
    fhirCode: '100000073363',
  );

  /// value100000073364
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073364 = AdministrableDoseForm(
    fhirCode: '100000073364',
  );

  /// value100000073365
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073365 = AdministrableDoseForm(
    fhirCode: '100000073365',
  );

  /// value100000073367
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073367 = AdministrableDoseForm(
    fhirCode: '100000073367',
  );

  /// value100000073368
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073368 = AdministrableDoseForm(
    fhirCode: '100000073368',
  );

  /// value100000073369
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073369 = AdministrableDoseForm(
    fhirCode: '100000073369',
  );

  /// value100000073370
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073370 = AdministrableDoseForm(
    fhirCode: '100000073370',
  );

  /// value100000073371
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073371 = AdministrableDoseForm(
    fhirCode: '100000073371',
  );

  /// value100000073372
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073372 = AdministrableDoseForm(
    fhirCode: '100000073372',
  );

  /// value100000073373
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073373 = AdministrableDoseForm(
    fhirCode: '100000073373',
  );

  /// value100000073374
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073374 = AdministrableDoseForm(
    fhirCode: '100000073374',
  );

  /// value100000073375
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073375 = AdministrableDoseForm(
    fhirCode: '100000073375',
  );

  /// value100000073376
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073376 = AdministrableDoseForm(
    fhirCode: '100000073376',
  );

  /// value100000073377
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073377 = AdministrableDoseForm(
    fhirCode: '100000073377',
  );

  /// value100000073378
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073378 = AdministrableDoseForm(
    fhirCode: '100000073378',
  );

  /// value100000073379
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073379 = AdministrableDoseForm(
    fhirCode: '100000073379',
  );

  /// value100000073380
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073380 = AdministrableDoseForm(
    fhirCode: '100000073380',
  );

  /// value100000073642
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073642 = AdministrableDoseForm(
    fhirCode: '100000073642',
  );

  /// value100000073643
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073643 = AdministrableDoseForm(
    fhirCode: '100000073643',
  );

  /// value100000073644
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073644 = AdministrableDoseForm(
    fhirCode: '100000073644',
  );

  /// value100000073645
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073645 = AdministrableDoseForm(
    fhirCode: '100000073645',
  );

  /// value100000073646
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073646 = AdministrableDoseForm(
    fhirCode: '100000073646',
  );

  /// value100000073647
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073647 = AdministrableDoseForm(
    fhirCode: '100000073647',
  );

  /// value100000073648
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073648 = AdministrableDoseForm(
    fhirCode: '100000073648',
  );

  /// value100000073649
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073649 = AdministrableDoseForm(
    fhirCode: '100000073649',
  );

  /// value100000073650
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073650 = AdministrableDoseForm(
    fhirCode: '100000073650',
  );

  /// value100000073652
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073652 = AdministrableDoseForm(
    fhirCode: '100000073652',
  );

  /// value100000073653
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073653 = AdministrableDoseForm(
    fhirCode: '100000073653',
  );

  /// value100000073654
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073654 = AdministrableDoseForm(
    fhirCode: '100000073654',
  );

  /// value100000073655
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073655 = AdministrableDoseForm(
    fhirCode: '100000073655',
  );

  /// value100000073656
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073656 = AdministrableDoseForm(
    fhirCode: '100000073656',
  );

  /// value100000073657
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073657 = AdministrableDoseForm(
    fhirCode: '100000073657',
  );

  /// value100000073658
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073658 = AdministrableDoseForm(
    fhirCode: '100000073658',
  );

  /// value100000073659
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073659 = AdministrableDoseForm(
    fhirCode: '100000073659',
  );

  /// value100000073660
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073660 = AdministrableDoseForm(
    fhirCode: '100000073660',
  );

  /// value100000073661
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073661 = AdministrableDoseForm(
    fhirCode: '100000073661',
  );

  /// value100000073662
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073662 = AdministrableDoseForm(
    fhirCode: '100000073662',
  );

  /// value100000073663
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073663 = AdministrableDoseForm(
    fhirCode: '100000073663',
  );

  /// value100000073664
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073664 = AdministrableDoseForm(
    fhirCode: '100000073664',
  );

  /// value100000073665
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073665 = AdministrableDoseForm(
    fhirCode: '100000073665',
  );

  /// value100000073666
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073666 = AdministrableDoseForm(
    fhirCode: '100000073666',
  );

  /// value100000073667
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073667 = AdministrableDoseForm(
    fhirCode: '100000073667',
  );

  /// value100000073668
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073668 = AdministrableDoseForm(
    fhirCode: '100000073668',
  );

  /// value100000073669
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073669 = AdministrableDoseForm(
    fhirCode: '100000073669',
  );

  /// value100000073670
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073670 = AdministrableDoseForm(
    fhirCode: '100000073670',
  );

  /// value100000073671
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073671 = AdministrableDoseForm(
    fhirCode: '100000073671',
  );

  /// value100000073672
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073672 = AdministrableDoseForm(
    fhirCode: '100000073672',
  );

  /// value100000073673
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073673 = AdministrableDoseForm(
    fhirCode: '100000073673',
  );

  /// value100000073674
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073674 = AdministrableDoseForm(
    fhirCode: '100000073674',
  );

  /// value100000073675
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073675 = AdministrableDoseForm(
    fhirCode: '100000073675',
  );

  /// value100000073676
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073676 = AdministrableDoseForm(
    fhirCode: '100000073676',
  );

  /// value100000073677
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073677 = AdministrableDoseForm(
    fhirCode: '100000073677',
  );

  /// value100000073678
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073678 = AdministrableDoseForm(
    fhirCode: '100000073678',
  );

  /// value100000073679
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073679 = AdministrableDoseForm(
    fhirCode: '100000073679',
  );

  /// value100000073680
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073680 = AdministrableDoseForm(
    fhirCode: '100000073680',
  );

  /// value100000073681
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073681 = AdministrableDoseForm(
    fhirCode: '100000073681',
  );

  /// value100000073682
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073682 = AdministrableDoseForm(
    fhirCode: '100000073682',
  );

  /// value100000073683
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073683 = AdministrableDoseForm(
    fhirCode: '100000073683',
  );

  /// value100000073684
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073684 = AdministrableDoseForm(
    fhirCode: '100000073684',
  );

  /// value100000073685
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073685 = AdministrableDoseForm(
    fhirCode: '100000073685',
  );

  /// value100000073686
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073686 = AdministrableDoseForm(
    fhirCode: '100000073686',
  );

  /// value100000073687
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073687 = AdministrableDoseForm(
    fhirCode: '100000073687',
  );

  /// value100000073688
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073688 = AdministrableDoseForm(
    fhirCode: '100000073688',
  );

  /// value100000073689
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073689 = AdministrableDoseForm(
    fhirCode: '100000073689',
  );

  /// value100000073690
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073690 = AdministrableDoseForm(
    fhirCode: '100000073690',
  );

  /// value100000073691
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073691 = AdministrableDoseForm(
    fhirCode: '100000073691',
  );

  /// value100000073692
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073692 = AdministrableDoseForm(
    fhirCode: '100000073692',
  );

  /// value100000073693
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073693 = AdministrableDoseForm(
    fhirCode: '100000073693',
  );

  /// value100000073694
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073694 = AdministrableDoseForm(
    fhirCode: '100000073694',
  );

  /// value100000073695
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073695 = AdministrableDoseForm(
    fhirCode: '100000073695',
  );

  /// value100000073696
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073696 = AdministrableDoseForm(
    fhirCode: '100000073696',
  );

  /// value100000073697
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073697 = AdministrableDoseForm(
    fhirCode: '100000073697',
  );

  /// value100000073698
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073698 = AdministrableDoseForm(
    fhirCode: '100000073698',
  );

  /// value100000073699
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073699 = AdministrableDoseForm(
    fhirCode: '100000073699',
  );

  /// value100000073700
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073700 = AdministrableDoseForm(
    fhirCode: '100000073700',
  );

  /// value100000073701
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073701 = AdministrableDoseForm(
    fhirCode: '100000073701',
  );

  /// value100000073702
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073702 = AdministrableDoseForm(
    fhirCode: '100000073702',
  );

  /// value100000073703
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073703 = AdministrableDoseForm(
    fhirCode: '100000073703',
  );

  /// value100000073704
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073704 = AdministrableDoseForm(
    fhirCode: '100000073704',
  );

  /// value100000073705
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073705 = AdministrableDoseForm(
    fhirCode: '100000073705',
  );

  /// value100000073706
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073706 = AdministrableDoseForm(
    fhirCode: '100000073706',
  );

  /// value100000073707
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073707 = AdministrableDoseForm(
    fhirCode: '100000073707',
  );

  /// value100000073708
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073708 = AdministrableDoseForm(
    fhirCode: '100000073708',
  );

  /// value100000073709
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073709 = AdministrableDoseForm(
    fhirCode: '100000073709',
  );

  /// value100000073710
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073710 = AdministrableDoseForm(
    fhirCode: '100000073710',
  );

  /// value100000073711
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073711 = AdministrableDoseForm(
    fhirCode: '100000073711',
  );

  /// value100000073712
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073712 = AdministrableDoseForm(
    fhirCode: '100000073712',
  );

  /// value100000073713
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073713 = AdministrableDoseForm(
    fhirCode: '100000073713',
  );

  /// value100000073714
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073714 = AdministrableDoseForm(
    fhirCode: '100000073714',
  );

  /// value100000073715
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073715 = AdministrableDoseForm(
    fhirCode: '100000073715',
  );

  /// value100000073716
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073716 = AdministrableDoseForm(
    fhirCode: '100000073716',
  );

  /// value100000073717
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073717 = AdministrableDoseForm(
    fhirCode: '100000073717',
  );

  /// value100000073718
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073718 = AdministrableDoseForm(
    fhirCode: '100000073718',
  );

  /// value100000073719
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073719 = AdministrableDoseForm(
    fhirCode: '100000073719',
  );

  /// value100000073720
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073720 = AdministrableDoseForm(
    fhirCode: '100000073720',
  );

  /// value100000073721
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073721 = AdministrableDoseForm(
    fhirCode: '100000073721',
  );

  /// value100000073722
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073722 = AdministrableDoseForm(
    fhirCode: '100000073722',
  );

  /// value100000073723
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073723 = AdministrableDoseForm(
    fhirCode: '100000073723',
  );

  /// value100000073724
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073724 = AdministrableDoseForm(
    fhirCode: '100000073724',
  );

  /// value100000073725
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073725 = AdministrableDoseForm(
    fhirCode: '100000073725',
  );

  /// value100000073726
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073726 = AdministrableDoseForm(
    fhirCode: '100000073726',
  );

  /// value100000073727
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073727 = AdministrableDoseForm(
    fhirCode: '100000073727',
  );

  /// value100000073728
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073728 = AdministrableDoseForm(
    fhirCode: '100000073728',
  );

  /// value100000073729
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073729 = AdministrableDoseForm(
    fhirCode: '100000073729',
  );

  /// value100000073730
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073730 = AdministrableDoseForm(
    fhirCode: '100000073730',
  );

  /// value100000073731
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073731 = AdministrableDoseForm(
    fhirCode: '100000073731',
  );

  /// value100000073732
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073732 = AdministrableDoseForm(
    fhirCode: '100000073732',
  );

  /// value100000073733
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073733 = AdministrableDoseForm(
    fhirCode: '100000073733',
  );

  /// value100000073734
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073734 = AdministrableDoseForm(
    fhirCode: '100000073734',
  );

  /// value100000073735
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073735 = AdministrableDoseForm(
    fhirCode: '100000073735',
  );

  /// value100000073736
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073736 = AdministrableDoseForm(
    fhirCode: '100000073736',
  );

  /// value100000073737
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073737 = AdministrableDoseForm(
    fhirCode: '100000073737',
  );

  /// value100000073738
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073738 = AdministrableDoseForm(
    fhirCode: '100000073738',
  );

  /// value100000073739
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073739 = AdministrableDoseForm(
    fhirCode: '100000073739',
  );

  /// value100000073740
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073740 = AdministrableDoseForm(
    fhirCode: '100000073740',
  );

  /// value100000073741
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073741 = AdministrableDoseForm(
    fhirCode: '100000073741',
  );

  /// value100000073742
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073742 = AdministrableDoseForm(
    fhirCode: '100000073742',
  );

  /// value100000073743
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073743 = AdministrableDoseForm(
    fhirCode: '100000073743',
  );

  /// value100000073744
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073744 = AdministrableDoseForm(
    fhirCode: '100000073744',
  );

  /// value100000073745
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073745 = AdministrableDoseForm(
    fhirCode: '100000073745',
  );

  /// value100000073746
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073746 = AdministrableDoseForm(
    fhirCode: '100000073746',
  );

  /// value100000073747
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073747 = AdministrableDoseForm(
    fhirCode: '100000073747',
  );

  /// value100000073748
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073748 = AdministrableDoseForm(
    fhirCode: '100000073748',
  );

  /// value100000073749
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073749 = AdministrableDoseForm(
    fhirCode: '100000073749',
  );

  /// value100000073750
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073750 = AdministrableDoseForm(
    fhirCode: '100000073750',
  );

  /// value100000073751
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073751 = AdministrableDoseForm(
    fhirCode: '100000073751',
  );

  /// value100000073752
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073752 = AdministrableDoseForm(
    fhirCode: '100000073752',
  );

  /// value100000073753
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073753 = AdministrableDoseForm(
    fhirCode: '100000073753',
  );

  /// value100000073754
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073754 = AdministrableDoseForm(
    fhirCode: '100000073754',
  );

  /// value100000073755
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073755 = AdministrableDoseForm(
    fhirCode: '100000073755',
  );

  /// value100000073756
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073756 = AdministrableDoseForm(
    fhirCode: '100000073756',
  );

  /// value100000073757
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073757 = AdministrableDoseForm(
    fhirCode: '100000073757',
  );

  /// value100000073758
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073758 = AdministrableDoseForm(
    fhirCode: '100000073758',
  );

  /// value100000073759
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073759 = AdministrableDoseForm(
    fhirCode: '100000073759',
  );

  /// value100000073760
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073760 = AdministrableDoseForm(
    fhirCode: '100000073760',
  );

  /// value100000073761
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073761 = AdministrableDoseForm(
    fhirCode: '100000073761',
  );

  /// value100000073762
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073762 = AdministrableDoseForm(
    fhirCode: '100000073762',
  );

  /// value100000073763
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073763 = AdministrableDoseForm(
    fhirCode: '100000073763',
  );

  /// value100000073764
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073764 = AdministrableDoseForm(
    fhirCode: '100000073764',
  );

  /// value100000073765
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073765 = AdministrableDoseForm(
    fhirCode: '100000073765',
  );

  /// value100000073766
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073766 = AdministrableDoseForm(
    fhirCode: '100000073766',
  );

  /// value100000073767
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073767 = AdministrableDoseForm(
    fhirCode: '100000073767',
  );

  /// value100000073768
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073768 = AdministrableDoseForm(
    fhirCode: '100000073768',
  );

  /// value100000073769
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073769 = AdministrableDoseForm(
    fhirCode: '100000073769',
  );

  /// value100000073770
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073770 = AdministrableDoseForm(
    fhirCode: '100000073770',
  );

  /// value100000073771
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073771 = AdministrableDoseForm(
    fhirCode: '100000073771',
  );

  /// value100000073772
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073772 = AdministrableDoseForm(
    fhirCode: '100000073772',
  );

  /// value100000073773
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073773 = AdministrableDoseForm(
    fhirCode: '100000073773',
  );

  /// value100000073775
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073775 = AdministrableDoseForm(
    fhirCode: '100000073775',
  );

  /// value100000073776
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073776 = AdministrableDoseForm(
    fhirCode: '100000073776',
  );

  /// value100000073777
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073777 = AdministrableDoseForm(
    fhirCode: '100000073777',
  );

  /// value100000073778
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073778 = AdministrableDoseForm(
    fhirCode: '100000073778',
  );

  /// value100000073779
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073779 = AdministrableDoseForm(
    fhirCode: '100000073779',
  );

  /// value100000073780
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073780 = AdministrableDoseForm(
    fhirCode: '100000073780',
  );

  /// value100000073782
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073782 = AdministrableDoseForm(
    fhirCode: '100000073782',
  );

  /// value100000073783
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073783 = AdministrableDoseForm(
    fhirCode: '100000073783',
  );

  /// value100000073784
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073784 = AdministrableDoseForm(
    fhirCode: '100000073784',
  );

  /// value100000073785
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073785 = AdministrableDoseForm(
    fhirCode: '100000073785',
  );

  /// value100000073786
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073786 = AdministrableDoseForm(
    fhirCode: '100000073786',
  );

  /// value100000073787
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073787 = AdministrableDoseForm(
    fhirCode: '100000073787',
  );

  /// value100000073788
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073788 = AdministrableDoseForm(
    fhirCode: '100000073788',
  );

  /// value100000073789
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073789 = AdministrableDoseForm(
    fhirCode: '100000073789',
  );

  /// value100000073790
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073790 = AdministrableDoseForm(
    fhirCode: '100000073790',
  );

  /// value100000073791
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073791 = AdministrableDoseForm(
    fhirCode: '100000073791',
  );

  /// value100000073792
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073792 = AdministrableDoseForm(
    fhirCode: '100000073792',
  );

  /// value100000073793
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073793 = AdministrableDoseForm(
    fhirCode: '100000073793',
  );

  /// value100000073794
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073794 = AdministrableDoseForm(
    fhirCode: '100000073794',
  );

  /// value100000073795
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073795 = AdministrableDoseForm(
    fhirCode: '100000073795',
  );

  /// value100000073796
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073796 = AdministrableDoseForm(
    fhirCode: '100000073796',
  );

  /// value100000073797
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073797 = AdministrableDoseForm(
    fhirCode: '100000073797',
  );

  /// value100000073798
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073798 = AdministrableDoseForm(
    fhirCode: '100000073798',
  );

  /// value100000073799
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073799 = AdministrableDoseForm(
    fhirCode: '100000073799',
  );

  /// value100000073800
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073800 = AdministrableDoseForm(
    fhirCode: '100000073800',
  );

  /// value100000073802
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073802 = AdministrableDoseForm(
    fhirCode: '100000073802',
  );

  /// value100000073803
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073803 = AdministrableDoseForm(
    fhirCode: '100000073803',
  );

  /// value100000073804
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073804 = AdministrableDoseForm(
    fhirCode: '100000073804',
  );

  /// value100000073805
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073805 = AdministrableDoseForm(
    fhirCode: '100000073805',
  );

  /// value100000073806
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073806 = AdministrableDoseForm(
    fhirCode: '100000073806',
  );

  /// value100000073807
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073807 = AdministrableDoseForm(
    fhirCode: '100000073807',
  );

  /// value100000073808
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073808 = AdministrableDoseForm(
    fhirCode: '100000073808',
  );

  /// value100000073809
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073809 = AdministrableDoseForm(
    fhirCode: '100000073809',
  );

  /// value100000073810
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073810 = AdministrableDoseForm(
    fhirCode: '100000073810',
  );

  /// value100000073811
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073811 = AdministrableDoseForm(
    fhirCode: '100000073811',
  );

  /// value100000073812
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073812 = AdministrableDoseForm(
    fhirCode: '100000073812',
  );

  /// value100000073813
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073813 = AdministrableDoseForm(
    fhirCode: '100000073813',
  );

  /// value100000073814
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073814 = AdministrableDoseForm(
    fhirCode: '100000073814',
  );

  /// value100000073815
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073815 = AdministrableDoseForm(
    fhirCode: '100000073815',
  );

  /// value100000073816
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073816 = AdministrableDoseForm(
    fhirCode: '100000073816',
  );

  /// value100000073817
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073817 = AdministrableDoseForm(
    fhirCode: '100000073817',
  );

  /// value100000073818
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073818 = AdministrableDoseForm(
    fhirCode: '100000073818',
  );

  /// value100000073819
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073819 = AdministrableDoseForm(
    fhirCode: '100000073819',
  );

  /// value100000073820
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073820 = AdministrableDoseForm(
    fhirCode: '100000073820',
  );

  /// value100000073821
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073821 = AdministrableDoseForm(
    fhirCode: '100000073821',
  );

  /// value100000073822
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073822 = AdministrableDoseForm(
    fhirCode: '100000073822',
  );

  /// value100000073823
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073823 = AdministrableDoseForm(
    fhirCode: '100000073823',
  );

  /// value100000073824
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073824 = AdministrableDoseForm(
    fhirCode: '100000073824',
  );

  /// value100000073825
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073825 = AdministrableDoseForm(
    fhirCode: '100000073825',
  );

  /// value100000073826
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073826 = AdministrableDoseForm(
    fhirCode: '100000073826',
  );

  /// value100000073827
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073827 = AdministrableDoseForm(
    fhirCode: '100000073827',
  );

  /// value100000073863
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final AdministrableDoseForm value100000073863 = AdministrableDoseForm(
    fhirCode: '100000073863',
  );

  /// For instances where an Element is present but not value

  static final AdministrableDoseForm elementOnly = AdministrableDoseForm();

  /// List of all enum-like values
  static final List<AdministrableDoseForm> values = [
    value100000073362,
    value100000073363,
    value100000073364,
    value100000073365,
    value100000073367,
    value100000073368,
    value100000073369,
    value100000073370,
    value100000073371,
    value100000073372,
    value100000073373,
    value100000073374,
    value100000073375,
    value100000073376,
    value100000073377,
    value100000073378,
    value100000073379,
    value100000073380,
    value100000073642,
    value100000073643,
    value100000073644,
    value100000073645,
    value100000073646,
    value100000073647,
    value100000073648,
    value100000073649,
    value100000073650,
    value100000073652,
    value100000073653,
    value100000073654,
    value100000073655,
    value100000073656,
    value100000073657,
    value100000073658,
    value100000073659,
    value100000073660,
    value100000073661,
    value100000073662,
    value100000073663,
    value100000073664,
    value100000073665,
    value100000073666,
    value100000073667,
    value100000073668,
    value100000073669,
    value100000073670,
    value100000073671,
    value100000073672,
    value100000073673,
    value100000073674,
    value100000073675,
    value100000073676,
    value100000073677,
    value100000073678,
    value100000073679,
    value100000073680,
    value100000073681,
    value100000073682,
    value100000073683,
    value100000073684,
    value100000073685,
    value100000073686,
    value100000073687,
    value100000073688,
    value100000073689,
    value100000073690,
    value100000073691,
    value100000073692,
    value100000073693,
    value100000073694,
    value100000073695,
    value100000073696,
    value100000073697,
    value100000073698,
    value100000073699,
    value100000073700,
    value100000073701,
    value100000073702,
    value100000073703,
    value100000073704,
    value100000073705,
    value100000073706,
    value100000073707,
    value100000073708,
    value100000073709,
    value100000073710,
    value100000073711,
    value100000073712,
    value100000073713,
    value100000073714,
    value100000073715,
    value100000073716,
    value100000073717,
    value100000073718,
    value100000073719,
    value100000073720,
    value100000073721,
    value100000073722,
    value100000073723,
    value100000073724,
    value100000073725,
    value100000073726,
    value100000073727,
    value100000073728,
    value100000073729,
    value100000073730,
    value100000073731,
    value100000073732,
    value100000073733,
    value100000073734,
    value100000073735,
    value100000073736,
    value100000073737,
    value100000073738,
    value100000073739,
    value100000073740,
    value100000073741,
    value100000073742,
    value100000073743,
    value100000073744,
    value100000073745,
    value100000073746,
    value100000073747,
    value100000073748,
    value100000073749,
    value100000073750,
    value100000073751,
    value100000073752,
    value100000073753,
    value100000073754,
    value100000073755,
    value100000073756,
    value100000073757,
    value100000073758,
    value100000073759,
    value100000073760,
    value100000073761,
    value100000073762,
    value100000073763,
    value100000073764,
    value100000073765,
    value100000073766,
    value100000073767,
    value100000073768,
    value100000073769,
    value100000073770,
    value100000073771,
    value100000073772,
    value100000073773,
    value100000073775,
    value100000073776,
    value100000073777,
    value100000073778,
    value100000073779,
    value100000073780,
    value100000073782,
    value100000073783,
    value100000073784,
    value100000073785,
    value100000073786,
    value100000073787,
    value100000073788,
    value100000073789,
    value100000073790,
    value100000073791,
    value100000073792,
    value100000073793,
    value100000073794,
    value100000073795,
    value100000073796,
    value100000073797,
    value100000073798,
    value100000073799,
    value100000073800,
    value100000073802,
    value100000073803,
    value100000073804,
    value100000073805,
    value100000073806,
    value100000073807,
    value100000073808,
    value100000073809,
    value100000073810,
    value100000073811,
    value100000073812,
    value100000073813,
    value100000073814,
    value100000073815,
    value100000073816,
    value100000073817,
    value100000073818,
    value100000073819,
    value100000073820,
    value100000073821,
    value100000073822,
    value100000073823,
    value100000073824,
    value100000073825,
    value100000073826,
    value100000073827,
    value100000073863,
  ];

  /// Returns the enum value with an element attached
  AdministrableDoseForm withElement(Element? newElement) {
    return AdministrableDoseForm(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [AdministrableDoseForm] from JSON.
  static AdministrableDoseForm fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AdministrableDoseForm.elementOnly.withElement(element);
    }
    return AdministrableDoseForm.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'AdministrableDoseForm.$fhirCode';
}
