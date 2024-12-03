// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Dose form for a medication, in the form suitable for administering to the patient, after mixing, where necessary.
class AdministrableDoseForm extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  AdministrableDoseForm._(super.value, [super.element]);

  /// Factory constructor to create [AdministrableDoseForm] from JSON.
  factory AdministrableDoseForm.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AdministrableDoseForm.elementOnly.withElement(element);
    }
    return AdministrableDoseForm._(value, element);
  }

  /// value100000073362
  static final AdministrableDoseForm value100000073362 =
      AdministrableDoseForm._(
    '100000073362',
  );

  /// value100000073363
  static final AdministrableDoseForm value100000073363 =
      AdministrableDoseForm._(
    '100000073363',
  );

  /// value100000073364
  static final AdministrableDoseForm value100000073364 =
      AdministrableDoseForm._(
    '100000073364',
  );

  /// value100000073365
  static final AdministrableDoseForm value100000073365 =
      AdministrableDoseForm._(
    '100000073365',
  );

  /// value100000073367
  static final AdministrableDoseForm value100000073367 =
      AdministrableDoseForm._(
    '100000073367',
  );

  /// value100000073368
  static final AdministrableDoseForm value100000073368 =
      AdministrableDoseForm._(
    '100000073368',
  );

  /// value100000073369
  static final AdministrableDoseForm value100000073369 =
      AdministrableDoseForm._(
    '100000073369',
  );

  /// value100000073370
  static final AdministrableDoseForm value100000073370 =
      AdministrableDoseForm._(
    '100000073370',
  );

  /// value100000073371
  static final AdministrableDoseForm value100000073371 =
      AdministrableDoseForm._(
    '100000073371',
  );

  /// value100000073372
  static final AdministrableDoseForm value100000073372 =
      AdministrableDoseForm._(
    '100000073372',
  );

  /// value100000073373
  static final AdministrableDoseForm value100000073373 =
      AdministrableDoseForm._(
    '100000073373',
  );

  /// value100000073374
  static final AdministrableDoseForm value100000073374 =
      AdministrableDoseForm._(
    '100000073374',
  );

  /// value100000073375
  static final AdministrableDoseForm value100000073375 =
      AdministrableDoseForm._(
    '100000073375',
  );

  /// value100000073376
  static final AdministrableDoseForm value100000073376 =
      AdministrableDoseForm._(
    '100000073376',
  );

  /// value100000073377
  static final AdministrableDoseForm value100000073377 =
      AdministrableDoseForm._(
    '100000073377',
  );

  /// value100000073378
  static final AdministrableDoseForm value100000073378 =
      AdministrableDoseForm._(
    '100000073378',
  );

  /// value100000073379
  static final AdministrableDoseForm value100000073379 =
      AdministrableDoseForm._(
    '100000073379',
  );

  /// value100000073380
  static final AdministrableDoseForm value100000073380 =
      AdministrableDoseForm._(
    '100000073380',
  );

  /// value100000073642
  static final AdministrableDoseForm value100000073642 =
      AdministrableDoseForm._(
    '100000073642',
  );

  /// value100000073643
  static final AdministrableDoseForm value100000073643 =
      AdministrableDoseForm._(
    '100000073643',
  );

  /// value100000073644
  static final AdministrableDoseForm value100000073644 =
      AdministrableDoseForm._(
    '100000073644',
  );

  /// value100000073645
  static final AdministrableDoseForm value100000073645 =
      AdministrableDoseForm._(
    '100000073645',
  );

  /// value100000073646
  static final AdministrableDoseForm value100000073646 =
      AdministrableDoseForm._(
    '100000073646',
  );

  /// value100000073647
  static final AdministrableDoseForm value100000073647 =
      AdministrableDoseForm._(
    '100000073647',
  );

  /// value100000073648
  static final AdministrableDoseForm value100000073648 =
      AdministrableDoseForm._(
    '100000073648',
  );

  /// value100000073649
  static final AdministrableDoseForm value100000073649 =
      AdministrableDoseForm._(
    '100000073649',
  );

  /// value100000073650
  static final AdministrableDoseForm value100000073650 =
      AdministrableDoseForm._(
    '100000073650',
  );

  /// value100000073652
  static final AdministrableDoseForm value100000073652 =
      AdministrableDoseForm._(
    '100000073652',
  );

  /// value100000073653
  static final AdministrableDoseForm value100000073653 =
      AdministrableDoseForm._(
    '100000073653',
  );

  /// value100000073654
  static final AdministrableDoseForm value100000073654 =
      AdministrableDoseForm._(
    '100000073654',
  );

  /// value100000073655
  static final AdministrableDoseForm value100000073655 =
      AdministrableDoseForm._(
    '100000073655',
  );

  /// value100000073656
  static final AdministrableDoseForm value100000073656 =
      AdministrableDoseForm._(
    '100000073656',
  );

  /// value100000073657
  static final AdministrableDoseForm value100000073657 =
      AdministrableDoseForm._(
    '100000073657',
  );

  /// value100000073658
  static final AdministrableDoseForm value100000073658 =
      AdministrableDoseForm._(
    '100000073658',
  );

  /// value100000073659
  static final AdministrableDoseForm value100000073659 =
      AdministrableDoseForm._(
    '100000073659',
  );

  /// value100000073660
  static final AdministrableDoseForm value100000073660 =
      AdministrableDoseForm._(
    '100000073660',
  );

  /// value100000073661
  static final AdministrableDoseForm value100000073661 =
      AdministrableDoseForm._(
    '100000073661',
  );

  /// value100000073662
  static final AdministrableDoseForm value100000073662 =
      AdministrableDoseForm._(
    '100000073662',
  );

  /// value100000073663
  static final AdministrableDoseForm value100000073663 =
      AdministrableDoseForm._(
    '100000073663',
  );

  /// value100000073664
  static final AdministrableDoseForm value100000073664 =
      AdministrableDoseForm._(
    '100000073664',
  );

  /// value100000073665
  static final AdministrableDoseForm value100000073665 =
      AdministrableDoseForm._(
    '100000073665',
  );

  /// value100000073666
  static final AdministrableDoseForm value100000073666 =
      AdministrableDoseForm._(
    '100000073666',
  );

  /// value100000073667
  static final AdministrableDoseForm value100000073667 =
      AdministrableDoseForm._(
    '100000073667',
  );

  /// value100000073668
  static final AdministrableDoseForm value100000073668 =
      AdministrableDoseForm._(
    '100000073668',
  );

  /// value100000073669
  static final AdministrableDoseForm value100000073669 =
      AdministrableDoseForm._(
    '100000073669',
  );

  /// value100000073670
  static final AdministrableDoseForm value100000073670 =
      AdministrableDoseForm._(
    '100000073670',
  );

  /// value100000073671
  static final AdministrableDoseForm value100000073671 =
      AdministrableDoseForm._(
    '100000073671',
  );

  /// value100000073672
  static final AdministrableDoseForm value100000073672 =
      AdministrableDoseForm._(
    '100000073672',
  );

  /// value100000073673
  static final AdministrableDoseForm value100000073673 =
      AdministrableDoseForm._(
    '100000073673',
  );

  /// value100000073674
  static final AdministrableDoseForm value100000073674 =
      AdministrableDoseForm._(
    '100000073674',
  );

  /// value100000073675
  static final AdministrableDoseForm value100000073675 =
      AdministrableDoseForm._(
    '100000073675',
  );

  /// value100000073676
  static final AdministrableDoseForm value100000073676 =
      AdministrableDoseForm._(
    '100000073676',
  );

  /// value100000073677
  static final AdministrableDoseForm value100000073677 =
      AdministrableDoseForm._(
    '100000073677',
  );

  /// value100000073678
  static final AdministrableDoseForm value100000073678 =
      AdministrableDoseForm._(
    '100000073678',
  );

  /// value100000073679
  static final AdministrableDoseForm value100000073679 =
      AdministrableDoseForm._(
    '100000073679',
  );

  /// value100000073680
  static final AdministrableDoseForm value100000073680 =
      AdministrableDoseForm._(
    '100000073680',
  );

  /// value100000073681
  static final AdministrableDoseForm value100000073681 =
      AdministrableDoseForm._(
    '100000073681',
  );

  /// value100000073682
  static final AdministrableDoseForm value100000073682 =
      AdministrableDoseForm._(
    '100000073682',
  );

  /// value100000073683
  static final AdministrableDoseForm value100000073683 =
      AdministrableDoseForm._(
    '100000073683',
  );

  /// value100000073684
  static final AdministrableDoseForm value100000073684 =
      AdministrableDoseForm._(
    '100000073684',
  );

  /// value100000073685
  static final AdministrableDoseForm value100000073685 =
      AdministrableDoseForm._(
    '100000073685',
  );

  /// value100000073686
  static final AdministrableDoseForm value100000073686 =
      AdministrableDoseForm._(
    '100000073686',
  );

  /// value100000073687
  static final AdministrableDoseForm value100000073687 =
      AdministrableDoseForm._(
    '100000073687',
  );

  /// value100000073688
  static final AdministrableDoseForm value100000073688 =
      AdministrableDoseForm._(
    '100000073688',
  );

  /// value100000073689
  static final AdministrableDoseForm value100000073689 =
      AdministrableDoseForm._(
    '100000073689',
  );

  /// value100000073690
  static final AdministrableDoseForm value100000073690 =
      AdministrableDoseForm._(
    '100000073690',
  );

  /// value100000073691
  static final AdministrableDoseForm value100000073691 =
      AdministrableDoseForm._(
    '100000073691',
  );

  /// value100000073692
  static final AdministrableDoseForm value100000073692 =
      AdministrableDoseForm._(
    '100000073692',
  );

  /// value100000073693
  static final AdministrableDoseForm value100000073693 =
      AdministrableDoseForm._(
    '100000073693',
  );

  /// value100000073694
  static final AdministrableDoseForm value100000073694 =
      AdministrableDoseForm._(
    '100000073694',
  );

  /// value100000073695
  static final AdministrableDoseForm value100000073695 =
      AdministrableDoseForm._(
    '100000073695',
  );

  /// value100000073696
  static final AdministrableDoseForm value100000073696 =
      AdministrableDoseForm._(
    '100000073696',
  );

  /// value100000073697
  static final AdministrableDoseForm value100000073697 =
      AdministrableDoseForm._(
    '100000073697',
  );

  /// value100000073698
  static final AdministrableDoseForm value100000073698 =
      AdministrableDoseForm._(
    '100000073698',
  );

  /// value100000073699
  static final AdministrableDoseForm value100000073699 =
      AdministrableDoseForm._(
    '100000073699',
  );

  /// value100000073700
  static final AdministrableDoseForm value100000073700 =
      AdministrableDoseForm._(
    '100000073700',
  );

  /// value100000073701
  static final AdministrableDoseForm value100000073701 =
      AdministrableDoseForm._(
    '100000073701',
  );

  /// value100000073702
  static final AdministrableDoseForm value100000073702 =
      AdministrableDoseForm._(
    '100000073702',
  );

  /// value100000073703
  static final AdministrableDoseForm value100000073703 =
      AdministrableDoseForm._(
    '100000073703',
  );

  /// value100000073704
  static final AdministrableDoseForm value100000073704 =
      AdministrableDoseForm._(
    '100000073704',
  );

  /// value100000073705
  static final AdministrableDoseForm value100000073705 =
      AdministrableDoseForm._(
    '100000073705',
  );

  /// value100000073706
  static final AdministrableDoseForm value100000073706 =
      AdministrableDoseForm._(
    '100000073706',
  );

  /// value100000073707
  static final AdministrableDoseForm value100000073707 =
      AdministrableDoseForm._(
    '100000073707',
  );

  /// value100000073708
  static final AdministrableDoseForm value100000073708 =
      AdministrableDoseForm._(
    '100000073708',
  );

  /// value100000073709
  static final AdministrableDoseForm value100000073709 =
      AdministrableDoseForm._(
    '100000073709',
  );

  /// value100000073710
  static final AdministrableDoseForm value100000073710 =
      AdministrableDoseForm._(
    '100000073710',
  );

  /// value100000073711
  static final AdministrableDoseForm value100000073711 =
      AdministrableDoseForm._(
    '100000073711',
  );

  /// value100000073712
  static final AdministrableDoseForm value100000073712 =
      AdministrableDoseForm._(
    '100000073712',
  );

  /// value100000073713
  static final AdministrableDoseForm value100000073713 =
      AdministrableDoseForm._(
    '100000073713',
  );

  /// value100000073714
  static final AdministrableDoseForm value100000073714 =
      AdministrableDoseForm._(
    '100000073714',
  );

  /// value100000073715
  static final AdministrableDoseForm value100000073715 =
      AdministrableDoseForm._(
    '100000073715',
  );

  /// value100000073716
  static final AdministrableDoseForm value100000073716 =
      AdministrableDoseForm._(
    '100000073716',
  );

  /// value100000073717
  static final AdministrableDoseForm value100000073717 =
      AdministrableDoseForm._(
    '100000073717',
  );

  /// value100000073718
  static final AdministrableDoseForm value100000073718 =
      AdministrableDoseForm._(
    '100000073718',
  );

  /// value100000073719
  static final AdministrableDoseForm value100000073719 =
      AdministrableDoseForm._(
    '100000073719',
  );

  /// value100000073720
  static final AdministrableDoseForm value100000073720 =
      AdministrableDoseForm._(
    '100000073720',
  );

  /// value100000073721
  static final AdministrableDoseForm value100000073721 =
      AdministrableDoseForm._(
    '100000073721',
  );

  /// value100000073722
  static final AdministrableDoseForm value100000073722 =
      AdministrableDoseForm._(
    '100000073722',
  );

  /// value100000073723
  static final AdministrableDoseForm value100000073723 =
      AdministrableDoseForm._(
    '100000073723',
  );

  /// value100000073724
  static final AdministrableDoseForm value100000073724 =
      AdministrableDoseForm._(
    '100000073724',
  );

  /// value100000073725
  static final AdministrableDoseForm value100000073725 =
      AdministrableDoseForm._(
    '100000073725',
  );

  /// value100000073726
  static final AdministrableDoseForm value100000073726 =
      AdministrableDoseForm._(
    '100000073726',
  );

  /// value100000073727
  static final AdministrableDoseForm value100000073727 =
      AdministrableDoseForm._(
    '100000073727',
  );

  /// value100000073728
  static final AdministrableDoseForm value100000073728 =
      AdministrableDoseForm._(
    '100000073728',
  );

  /// value100000073729
  static final AdministrableDoseForm value100000073729 =
      AdministrableDoseForm._(
    '100000073729',
  );

  /// value100000073730
  static final AdministrableDoseForm value100000073730 =
      AdministrableDoseForm._(
    '100000073730',
  );

  /// value100000073731
  static final AdministrableDoseForm value100000073731 =
      AdministrableDoseForm._(
    '100000073731',
  );

  /// value100000073732
  static final AdministrableDoseForm value100000073732 =
      AdministrableDoseForm._(
    '100000073732',
  );

  /// value100000073733
  static final AdministrableDoseForm value100000073733 =
      AdministrableDoseForm._(
    '100000073733',
  );

  /// value100000073734
  static final AdministrableDoseForm value100000073734 =
      AdministrableDoseForm._(
    '100000073734',
  );

  /// value100000073735
  static final AdministrableDoseForm value100000073735 =
      AdministrableDoseForm._(
    '100000073735',
  );

  /// value100000073736
  static final AdministrableDoseForm value100000073736 =
      AdministrableDoseForm._(
    '100000073736',
  );

  /// value100000073737
  static final AdministrableDoseForm value100000073737 =
      AdministrableDoseForm._(
    '100000073737',
  );

  /// value100000073738
  static final AdministrableDoseForm value100000073738 =
      AdministrableDoseForm._(
    '100000073738',
  );

  /// value100000073739
  static final AdministrableDoseForm value100000073739 =
      AdministrableDoseForm._(
    '100000073739',
  );

  /// value100000073740
  static final AdministrableDoseForm value100000073740 =
      AdministrableDoseForm._(
    '100000073740',
  );

  /// value100000073741
  static final AdministrableDoseForm value100000073741 =
      AdministrableDoseForm._(
    '100000073741',
  );

  /// value100000073742
  static final AdministrableDoseForm value100000073742 =
      AdministrableDoseForm._(
    '100000073742',
  );

  /// value100000073743
  static final AdministrableDoseForm value100000073743 =
      AdministrableDoseForm._(
    '100000073743',
  );

  /// value100000073744
  static final AdministrableDoseForm value100000073744 =
      AdministrableDoseForm._(
    '100000073744',
  );

  /// value100000073745
  static final AdministrableDoseForm value100000073745 =
      AdministrableDoseForm._(
    '100000073745',
  );

  /// value100000073746
  static final AdministrableDoseForm value100000073746 =
      AdministrableDoseForm._(
    '100000073746',
  );

  /// value100000073747
  static final AdministrableDoseForm value100000073747 =
      AdministrableDoseForm._(
    '100000073747',
  );

  /// value100000073748
  static final AdministrableDoseForm value100000073748 =
      AdministrableDoseForm._(
    '100000073748',
  );

  /// value100000073749
  static final AdministrableDoseForm value100000073749 =
      AdministrableDoseForm._(
    '100000073749',
  );

  /// value100000073750
  static final AdministrableDoseForm value100000073750 =
      AdministrableDoseForm._(
    '100000073750',
  );

  /// value100000073751
  static final AdministrableDoseForm value100000073751 =
      AdministrableDoseForm._(
    '100000073751',
  );

  /// value100000073752
  static final AdministrableDoseForm value100000073752 =
      AdministrableDoseForm._(
    '100000073752',
  );

  /// value100000073753
  static final AdministrableDoseForm value100000073753 =
      AdministrableDoseForm._(
    '100000073753',
  );

  /// value100000073754
  static final AdministrableDoseForm value100000073754 =
      AdministrableDoseForm._(
    '100000073754',
  );

  /// value100000073755
  static final AdministrableDoseForm value100000073755 =
      AdministrableDoseForm._(
    '100000073755',
  );

  /// value100000073756
  static final AdministrableDoseForm value100000073756 =
      AdministrableDoseForm._(
    '100000073756',
  );

  /// value100000073757
  static final AdministrableDoseForm value100000073757 =
      AdministrableDoseForm._(
    '100000073757',
  );

  /// value100000073758
  static final AdministrableDoseForm value100000073758 =
      AdministrableDoseForm._(
    '100000073758',
  );

  /// value100000073759
  static final AdministrableDoseForm value100000073759 =
      AdministrableDoseForm._(
    '100000073759',
  );

  /// value100000073760
  static final AdministrableDoseForm value100000073760 =
      AdministrableDoseForm._(
    '100000073760',
  );

  /// value100000073761
  static final AdministrableDoseForm value100000073761 =
      AdministrableDoseForm._(
    '100000073761',
  );

  /// value100000073762
  static final AdministrableDoseForm value100000073762 =
      AdministrableDoseForm._(
    '100000073762',
  );

  /// value100000073763
  static final AdministrableDoseForm value100000073763 =
      AdministrableDoseForm._(
    '100000073763',
  );

  /// value100000073764
  static final AdministrableDoseForm value100000073764 =
      AdministrableDoseForm._(
    '100000073764',
  );

  /// value100000073765
  static final AdministrableDoseForm value100000073765 =
      AdministrableDoseForm._(
    '100000073765',
  );

  /// value100000073766
  static final AdministrableDoseForm value100000073766 =
      AdministrableDoseForm._(
    '100000073766',
  );

  /// value100000073767
  static final AdministrableDoseForm value100000073767 =
      AdministrableDoseForm._(
    '100000073767',
  );

  /// value100000073768
  static final AdministrableDoseForm value100000073768 =
      AdministrableDoseForm._(
    '100000073768',
  );

  /// value100000073769
  static final AdministrableDoseForm value100000073769 =
      AdministrableDoseForm._(
    '100000073769',
  );

  /// value100000073770
  static final AdministrableDoseForm value100000073770 =
      AdministrableDoseForm._(
    '100000073770',
  );

  /// value100000073771
  static final AdministrableDoseForm value100000073771 =
      AdministrableDoseForm._(
    '100000073771',
  );

  /// value100000073772
  static final AdministrableDoseForm value100000073772 =
      AdministrableDoseForm._(
    '100000073772',
  );

  /// value100000073773
  static final AdministrableDoseForm value100000073773 =
      AdministrableDoseForm._(
    '100000073773',
  );

  /// value100000073775
  static final AdministrableDoseForm value100000073775 =
      AdministrableDoseForm._(
    '100000073775',
  );

  /// value100000073776
  static final AdministrableDoseForm value100000073776 =
      AdministrableDoseForm._(
    '100000073776',
  );

  /// value100000073777
  static final AdministrableDoseForm value100000073777 =
      AdministrableDoseForm._(
    '100000073777',
  );

  /// value100000073778
  static final AdministrableDoseForm value100000073778 =
      AdministrableDoseForm._(
    '100000073778',
  );

  /// value100000073779
  static final AdministrableDoseForm value100000073779 =
      AdministrableDoseForm._(
    '100000073779',
  );

  /// value100000073780
  static final AdministrableDoseForm value100000073780 =
      AdministrableDoseForm._(
    '100000073780',
  );

  /// value100000073782
  static final AdministrableDoseForm value100000073782 =
      AdministrableDoseForm._(
    '100000073782',
  );

  /// value100000073783
  static final AdministrableDoseForm value100000073783 =
      AdministrableDoseForm._(
    '100000073783',
  );

  /// value100000073784
  static final AdministrableDoseForm value100000073784 =
      AdministrableDoseForm._(
    '100000073784',
  );

  /// value100000073785
  static final AdministrableDoseForm value100000073785 =
      AdministrableDoseForm._(
    '100000073785',
  );

  /// value100000073786
  static final AdministrableDoseForm value100000073786 =
      AdministrableDoseForm._(
    '100000073786',
  );

  /// value100000073787
  static final AdministrableDoseForm value100000073787 =
      AdministrableDoseForm._(
    '100000073787',
  );

  /// value100000073788
  static final AdministrableDoseForm value100000073788 =
      AdministrableDoseForm._(
    '100000073788',
  );

  /// value100000073789
  static final AdministrableDoseForm value100000073789 =
      AdministrableDoseForm._(
    '100000073789',
  );

  /// value100000073790
  static final AdministrableDoseForm value100000073790 =
      AdministrableDoseForm._(
    '100000073790',
  );

  /// value100000073791
  static final AdministrableDoseForm value100000073791 =
      AdministrableDoseForm._(
    '100000073791',
  );

  /// value100000073792
  static final AdministrableDoseForm value100000073792 =
      AdministrableDoseForm._(
    '100000073792',
  );

  /// value100000073793
  static final AdministrableDoseForm value100000073793 =
      AdministrableDoseForm._(
    '100000073793',
  );

  /// value100000073794
  static final AdministrableDoseForm value100000073794 =
      AdministrableDoseForm._(
    '100000073794',
  );

  /// value100000073795
  static final AdministrableDoseForm value100000073795 =
      AdministrableDoseForm._(
    '100000073795',
  );

  /// value100000073796
  static final AdministrableDoseForm value100000073796 =
      AdministrableDoseForm._(
    '100000073796',
  );

  /// value100000073797
  static final AdministrableDoseForm value100000073797 =
      AdministrableDoseForm._(
    '100000073797',
  );

  /// value100000073798
  static final AdministrableDoseForm value100000073798 =
      AdministrableDoseForm._(
    '100000073798',
  );

  /// value100000073799
  static final AdministrableDoseForm value100000073799 =
      AdministrableDoseForm._(
    '100000073799',
  );

  /// value100000073800
  static final AdministrableDoseForm value100000073800 =
      AdministrableDoseForm._(
    '100000073800',
  );

  /// value100000073802
  static final AdministrableDoseForm value100000073802 =
      AdministrableDoseForm._(
    '100000073802',
  );

  /// value100000073803
  static final AdministrableDoseForm value100000073803 =
      AdministrableDoseForm._(
    '100000073803',
  );

  /// value100000073804
  static final AdministrableDoseForm value100000073804 =
      AdministrableDoseForm._(
    '100000073804',
  );

  /// value100000073805
  static final AdministrableDoseForm value100000073805 =
      AdministrableDoseForm._(
    '100000073805',
  );

  /// value100000073806
  static final AdministrableDoseForm value100000073806 =
      AdministrableDoseForm._(
    '100000073806',
  );

  /// value100000073807
  static final AdministrableDoseForm value100000073807 =
      AdministrableDoseForm._(
    '100000073807',
  );

  /// value100000073808
  static final AdministrableDoseForm value100000073808 =
      AdministrableDoseForm._(
    '100000073808',
  );

  /// value100000073809
  static final AdministrableDoseForm value100000073809 =
      AdministrableDoseForm._(
    '100000073809',
  );

  /// value100000073810
  static final AdministrableDoseForm value100000073810 =
      AdministrableDoseForm._(
    '100000073810',
  );

  /// value100000073811
  static final AdministrableDoseForm value100000073811 =
      AdministrableDoseForm._(
    '100000073811',
  );

  /// value100000073812
  static final AdministrableDoseForm value100000073812 =
      AdministrableDoseForm._(
    '100000073812',
  );

  /// value100000073813
  static final AdministrableDoseForm value100000073813 =
      AdministrableDoseForm._(
    '100000073813',
  );

  /// value100000073814
  static final AdministrableDoseForm value100000073814 =
      AdministrableDoseForm._(
    '100000073814',
  );

  /// value100000073815
  static final AdministrableDoseForm value100000073815 =
      AdministrableDoseForm._(
    '100000073815',
  );

  /// value100000073816
  static final AdministrableDoseForm value100000073816 =
      AdministrableDoseForm._(
    '100000073816',
  );

  /// value100000073817
  static final AdministrableDoseForm value100000073817 =
      AdministrableDoseForm._(
    '100000073817',
  );

  /// value100000073818
  static final AdministrableDoseForm value100000073818 =
      AdministrableDoseForm._(
    '100000073818',
  );

  /// value100000073819
  static final AdministrableDoseForm value100000073819 =
      AdministrableDoseForm._(
    '100000073819',
  );

  /// value100000073820
  static final AdministrableDoseForm value100000073820 =
      AdministrableDoseForm._(
    '100000073820',
  );

  /// value100000073821
  static final AdministrableDoseForm value100000073821 =
      AdministrableDoseForm._(
    '100000073821',
  );

  /// value100000073822
  static final AdministrableDoseForm value100000073822 =
      AdministrableDoseForm._(
    '100000073822',
  );

  /// value100000073823
  static final AdministrableDoseForm value100000073823 =
      AdministrableDoseForm._(
    '100000073823',
  );

  /// value100000073824
  static final AdministrableDoseForm value100000073824 =
      AdministrableDoseForm._(
    '100000073824',
  );

  /// value100000073825
  static final AdministrableDoseForm value100000073825 =
      AdministrableDoseForm._(
    '100000073825',
  );

  /// value100000073826
  static final AdministrableDoseForm value100000073826 =
      AdministrableDoseForm._(
    '100000073826',
  );

  /// value100000073827
  static final AdministrableDoseForm value100000073827 =
      AdministrableDoseForm._(
    '100000073827',
  );

  /// value100000073863
  static final AdministrableDoseForm value100000073863 =
      AdministrableDoseForm._(
    '100000073863',
  );

  /// For instances where an Element is present but not value

  static final AdministrableDoseForm elementOnly = AdministrableDoseForm._('');

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

  /// Clones the current instance
  @override
  AdministrableDoseForm clone() => AdministrableDoseForm._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  AdministrableDoseForm setElement(
    String name,
    dynamic elementValue,
  ) {
    return AdministrableDoseForm._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  AdministrableDoseForm withElement(Element? newElement) {
    return AdministrableDoseForm._(value, newElement);
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
  AdministrableDoseForm copyWith({
    String? newValue,
    Element? element,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return AdministrableDoseForm._(
      newValue ?? value,
      (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
        children: children ?? this.element?.children,
        namedChildren: namedChildren ?? this.element?.namedChildren,
      ),
    );
  }
}
