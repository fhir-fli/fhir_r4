import 'package:json_annotation/json_annotation.dart';

/// Dose form for a medication, in the form suitable for administering to the patient, after mixing, where necessary.
enum AdministrableDoseForm {
  /// Display: Oral suspension
  @JsonValue('100000073362')
  value100000073362,

  /// Display: Oral gel
  @JsonValue('100000073363')
  value100000073363,

  /// Display: Powder for oral solution
  @JsonValue('100000073364')
  value100000073364,

  /// Display: Granules for oral solution
  @JsonValue('100000073365')
  value100000073365,

  /// Display: Lyophilisate for suspension
  @JsonValue('100000073367')
  value100000073367,

  /// Display: Powder for syrup
  @JsonValue('100000073368')
  value100000073368,

  /// Display: Soluble tablet
  @JsonValue('100000073369')
  value100000073369,

  /// Display: Herbal tea
  @JsonValue('100000073370')
  value100000073370,

  /// Display: Instant herbal tea
  @JsonValue('100000073371')
  value100000073371,

  /// Display: Granules
  @JsonValue('100000073372')
  value100000073372,

  /// Display: Gastro-resistant granules
  @JsonValue('100000073373')
  value100000073373,

  /// Display: Modified-release granules
  @JsonValue('100000073374')
  value100000073374,

  /// Display: Capsule, hard
  @JsonValue('100000073375')
  value100000073375,

  /// Display: Gastro-resistant capsule, hard
  @JsonValue('100000073376')
  value100000073376,

  /// Display: Chewable capsule, soft
  @JsonValue('100000073377')
  value100000073377,

  /// Display: Prolonged-release capsule, soft
  @JsonValue('100000073378')
  value100000073378,

  /// Display: Modified-release capsule, soft
  @JsonValue('100000073379')
  value100000073379,

  /// Display: Coated tablet
  @JsonValue('100000073380')
  value100000073380,

  /// Display: Oral drops, solution
  @JsonValue('100000073642')
  value100000073642,

  /// Display: Oral drops, suspension
  @JsonValue('100000073643')
  value100000073643,

  /// Display: Oral drops, emulsion
  @JsonValue('100000073644')
  value100000073644,

  /// Display: Oral liquid
  @JsonValue('100000073645')
  value100000073645,

  /// Display: Oral solution
  @JsonValue('100000073646')
  value100000073646,

  /// Display: Oral emulsion
  @JsonValue('100000073647')
  value100000073647,

  /// Display: Oral paste
  @JsonValue('100000073648')
  value100000073648,

  /// Display: Powder for oral suspension
  @JsonValue('100000073649')
  value100000073649,

  /// Display: Granules for oral suspension
  @JsonValue('100000073650')
  value100000073650,

  /// Display: Syrup
  @JsonValue('100000073652')
  value100000073652,

  /// Display: Granules for syrup
  @JsonValue('100000073653')
  value100000073653,

  /// Display: Dispersible tablet
  @JsonValue('100000073654')
  value100000073654,

  /// Display: Oral powder
  @JsonValue('100000073655')
  value100000073655,

  /// Display: Effervescent powder
  @JsonValue('100000073656')
  value100000073656,

  /// Display: Effervescent granules
  @JsonValue('100000073657')
  value100000073657,

  /// Display: Prolonged-release granules
  @JsonValue('100000073658')
  value100000073658,

  /// Display: Cachet
  @JsonValue('100000073659')
  value100000073659,

  /// Display: Capsule, soft
  @JsonValue('100000073660')
  value100000073660,

  /// Display: Gastro-resistant capsule, soft
  @JsonValue('100000073661')
  value100000073661,

  /// Display: Prolonged-release capsule, hard
  @JsonValue('100000073662')
  value100000073662,

  /// Display: Modified-release capsule, hard
  @JsonValue('100000073663')
  value100000073663,

  /// Display: Tablet
  @JsonValue('100000073664')
  value100000073664,

  /// Display: Film-coated tablet
  @JsonValue('100000073665')
  value100000073665,

  /// Display: Orodispersible tablet
  @JsonValue('100000073666')
  value100000073666,

  /// Display: Gastro-resistant tablet
  @JsonValue('100000073667')
  value100000073667,

  /// Display: Modified-release tablet
  @JsonValue('100000073668')
  value100000073668,

  /// Display: Medicated chewing-gum
  @JsonValue('100000073669')
  value100000073669,

  /// Display: Pillules
  @JsonValue('100000073670')
  value100000073670,

  /// Display: Pulsatile-release intraruminal device
  @JsonValue('100000073671')
  value100000073671,

  /// Display: Premix for medicated feeding stuff
  @JsonValue('100000073672')
  value100000073672,

  /// Display: Gargle
  @JsonValue('100000073673')
  value100000073673,

  /// Display: Gargle, powder for solution
  @JsonValue('100000073674')
  value100000073674,

  /// Display: Oromucosal suspension
  @JsonValue('100000073675')
  value100000073675,

  /// Display: Oromucosal spray
  @JsonValue('100000073676')
  value100000073676,

  /// Display: Mouthwash
  @JsonValue('100000073677')
  value100000073677,

  /// Display: Gingival solution
  @JsonValue('100000073678')
  value100000073678,

  /// Display: Oromucosal paste
  @JsonValue('100000073679')
  value100000073679,

  /// Display: Gingival gel
  @JsonValue('100000073680')
  value100000073680,

  /// Display: Effervescent tablet
  @JsonValue('100000073681')
  value100000073681,

  /// Display: Oral lyophilisate
  @JsonValue('100000073682')
  value100000073682,

  /// Display: Prolonged-release tablet
  @JsonValue('100000073683')
  value100000073683,

  /// Display: Chewable tablet
  @JsonValue('100000073684')
  value100000073684,

  /// Display: Oral gum
  @JsonValue('100000073685')
  value100000073685,

  /// Display: Continuous-release intraruminal device
  @JsonValue('100000073686')
  value100000073686,

  /// Display: Lick block
  @JsonValue('100000073687')
  value100000073687,

  /// Display: Medicated pellets
  @JsonValue('100000073688')
  value100000073688,

  /// Display: Concentrate for gargle
  @JsonValue('100000073689')
  value100000073689,

  /// Display: Gargle, tablet for solution
  @JsonValue('100000073690')
  value100000073690,

  /// Display: Oromucosal solution
  @JsonValue('100000073691')
  value100000073691,

  /// Display: Oromucosal drops
  @JsonValue('100000073692')
  value100000073692,

  /// Display: Sublingual spray
  @JsonValue('100000073693')
  value100000073693,

  /// Display: Mouthwash, tablet for solution
  @JsonValue('100000073694')
  value100000073694,

  /// Display: Oromucosal gel
  @JsonValue('100000073695')
  value100000073695,

  /// Display: Oromucosal cream
  @JsonValue('100000073696')
  value100000073696,

  /// Display: Gingival paste
  @JsonValue('100000073697')
  value100000073697,

  /// Display: Sublingual tablet
  @JsonValue('100000073698')
  value100000073698,

  /// Display: Buccal tablet
  @JsonValue('100000073699')
  value100000073699,

  /// Display: Compressed lozenge
  @JsonValue('100000073700')
  value100000073700,

  /// Display: Oromucosal capsule
  @JsonValue('100000073701')
  value100000073701,

  /// Display: Muco-adhesive buccal tablet
  @JsonValue('100000073702')
  value100000073702,

  /// Display: Lozenge
  @JsonValue('100000073703')
  value100000073703,

  /// Display: Pastille
  @JsonValue('100000073704')
  value100000073704,

  /// Display: Dental gel
  @JsonValue('100000073705')
  value100000073705,

  /// Display: Dental insert
  @JsonValue('100000073706')
  value100000073706,

  /// Display: Dental powder
  @JsonValue('100000073707')
  value100000073707,

  /// Display: Dental suspension
  @JsonValue('100000073708')
  value100000073708,

  /// Display: Toothpaste
  @JsonValue('100000073709')
  value100000073709,

  /// Display: Periodontal gel
  @JsonValue('100000073710')
  value100000073710,

  /// Display: Bath additive
  @JsonValue('100000073711')
  value100000073711,

  /// Display: Cream
  @JsonValue('100000073712')
  value100000073712,

  /// Display: Ointment
  @JsonValue('100000073713')
  value100000073713,

  /// Display: Medicated plaster
  @JsonValue('100000073714')
  value100000073714,

  /// Display: Shampoo
  @JsonValue('100000073715')
  value100000073715,

  /// Display: Cutaneous spray, suspension
  @JsonValue('100000073716')
  value100000073716,

  /// Display: Cutaneous liquid
  @JsonValue('100000073717')
  value100000073717,

  /// Display: Concentrate for cutaneous solution
  @JsonValue('100000073718')
  value100000073718,

  /// Display: Cutaneous emulsion
  @JsonValue('100000073719')
  value100000073719,

  /// Display: Cutaneous patch
  @JsonValue('100000073720')
  value100000073720,

  /// Display: Periodontal powder
  @JsonValue('100000073721')
  value100000073721,

  /// Display: Dental stick
  @JsonValue('100000073722')
  value100000073722,

  /// Display: Dental solution
  @JsonValue('100000073723')
  value100000073723,

  /// Display: Dental emulsion
  @JsonValue('100000073724')
  value100000073724,

  /// Display: Periodontal insert
  @JsonValue('100000073725')
  value100000073725,

  /// Display: Gel
  @JsonValue('100000073726')
  value100000073726,

  /// Display: Cutaneous paste
  @JsonValue('100000073727')
  value100000073727,

  /// Display: Cutaneous foam
  @JsonValue('100000073728')
  value100000073728,

  /// Display: Cutaneous spray, solution
  @JsonValue('100000073729')
  value100000073729,

  /// Display: Cutaneous spray, powder
  @JsonValue('100000073730')
  value100000073730,

  /// Display: Cutaneous solution
  @JsonValue('100000073731')
  value100000073731,

  /// Display: Cutaneous suspension
  @JsonValue('100000073732')
  value100000073732,

  /// Display: Cutaneous powder
  @JsonValue('100000073733')
  value100000073733,

  /// Display: Solution for iontophoresis
  @JsonValue('100000073734')
  value100000073734,

  /// Display: Collodion
  @JsonValue('100000073735')
  value100000073735,

  /// Display: Poultice
  @JsonValue('100000073736')
  value100000073736,

  /// Display: Cutaneous sponge
  @JsonValue('100000073737')
  value100000073737,

  /// Display: Collar
  @JsonValue('100000073738')
  value100000073738,

  /// Display: Ear tag
  @JsonValue('100000073739')
  value100000073739,

  /// Display: Dip suspension
  @JsonValue('100000073740')
  value100000073740,

  /// Display: Transdermal patch
  @JsonValue('100000073741')
  value100000073741,

  /// Display: Medicated nail lacquer
  @JsonValue('100000073742')
  value100000073742,

  /// Display: Cutaneous stick
  @JsonValue('100000073743')
  value100000073743,

  /// Display: Impregnated dressing
  @JsonValue('100000073744')
  value100000073744,

  /// Display: Medicated pendant
  @JsonValue('100000073745')
  value100000073745,

  /// Display: Dip solution
  @JsonValue('100000073746')
  value100000073746,

  /// Display: Dip emulsion
  @JsonValue('100000073747')
  value100000073747,

  /// Display: Concentrate for dip suspension
  @JsonValue('100000073748')
  value100000073748,

  /// Display: Powder for dip solution
  @JsonValue('100000073749')
  value100000073749,

  /// Display: Powder for suspension for fish treatment
  @JsonValue('100000073750')
  value100000073750,

  /// Display: Pour-on suspension
  @JsonValue('100000073751')
  value100000073751,

  /// Display: Spot-on solution
  @JsonValue('100000073752')
  value100000073752,

  /// Display: Spot-on emulsion
  @JsonValue('100000073753')
  value100000073753,

  /// Display: Teat dip suspension
  @JsonValue('100000073754')
  value100000073754,

  /// Display: Teat spray solution
  @JsonValue('100000073755')
  value100000073755,

  /// Display: Solution for skin-prick test
  @JsonValue('100000073756')
  value100000073756,

  /// Display: Plaster for provocation test
  @JsonValue('100000073757')
  value100000073757,

  /// Display: Eye gel
  @JsonValue('100000073758')
  value100000073758,

  /// Display: Eye drops, solution
  @JsonValue('100000073759')
  value100000073759,

  /// Display: Eye drops, suspension
  @JsonValue('100000073760')
  value100000073760,

  /// Display: Concentrate for dip solution
  @JsonValue('100000073761')
  value100000073761,

  /// Display: Concentrate for dip emulsion
  @JsonValue('100000073762')
  value100000073762,

  /// Display: Concentrate for solution for fish treatment
  @JsonValue('100000073763')
  value100000073763,

  /// Display: Pour-on solution
  @JsonValue('100000073764')
  value100000073764,

  /// Display: Pour-on emulsion
  @JsonValue('100000073765')
  value100000073765,

  /// Display: Spot-on suspension
  @JsonValue('100000073766')
  value100000073766,

  /// Display: Teat dip solution
  @JsonValue('100000073767')
  value100000073767,

  /// Display: Teat dip emulsion
  @JsonValue('100000073768')
  value100000073768,

  /// Display: Transdermal system
  @JsonValue('100000073769')
  value100000073769,

  /// Display: Solution for skin-scratch test
  @JsonValue('100000073770')
  value100000073770,

  /// Display: Eye cream
  @JsonValue('100000073771')
  value100000073771,

  /// Display: Eye ointment
  @JsonValue('100000073772')
  value100000073772,

  /// Display: Eye drops, emulsion
  @JsonValue('100000073773')
  value100000073773,

  /// Display: Eye drops, solvent for reconstitution
  @JsonValue('100000073775')
  value100000073775,

  /// Display: Eye lotion
  @JsonValue('100000073776')
  value100000073776,

  /// Display: Ophthalmic insert
  @JsonValue('100000073777')
  value100000073777,

  /// Display: Ear cream
  @JsonValue('100000073778')
  value100000073778,

  /// Display: Ear ointment
  @JsonValue('100000073779')
  value100000073779,

  /// Display: Ear drops, suspension
  @JsonValue('100000073780')
  value100000073780,

  /// Display: Eye drops, prolonged-release
  @JsonValue('100000073782')
  value100000073782,

  /// Display: Eye lotion, solvent for reconstitution
  @JsonValue('100000073783')
  value100000073783,

  /// Display: Ophthalmic strip
  @JsonValue('100000073784')
  value100000073784,

  /// Display: Ear gel
  @JsonValue('100000073785')
  value100000073785,

  /// Display: Ear drops, solution
  @JsonValue('100000073786')
  value100000073786,

  /// Display: Ear drops, emulsion
  @JsonValue('100000073787')
  value100000073787,

  /// Display: Ear powder
  @JsonValue('100000073788')
  value100000073788,

  /// Display: Ear spray, suspension
  @JsonValue('100000073789')
  value100000073789,

  /// Display: Ear wash, solution
  @JsonValue('100000073790')
  value100000073790,

  /// Display: Ear tampon
  @JsonValue('100000073791')
  value100000073791,

  /// Display: Nasal cream
  @JsonValue('100000073792')
  value100000073792,

  /// Display: Nasal gel
  @JsonValue('100000073793')
  value100000073793,

  /// Display: Nasal drops, solution
  @JsonValue('100000073794')
  value100000073794,

  /// Display: Nasal drops, emulsion
  @JsonValue('100000073795')
  value100000073795,

  /// Display: Nasal spray, solution
  @JsonValue('100000073796')
  value100000073796,

  /// Display: Nasal spray, emulsion
  @JsonValue('100000073797')
  value100000073797,

  /// Display: Nasal stick
  @JsonValue('100000073798')
  value100000073798,

  /// Display: Vaginal gel
  @JsonValue('100000073799')
  value100000073799,

  /// Display: Vaginal foam
  @JsonValue('100000073800')
  value100000073800,

  /// Display: Ear spray, solution
  @JsonValue('100000073802')
  value100000073802,

  /// Display: Ear spray, emulsion
  @JsonValue('100000073803')
  value100000073803,

  /// Display: Ear wash, emulsion
  @JsonValue('100000073804')
  value100000073804,

  /// Display: Ear stick
  @JsonValue('100000073805')
  value100000073805,

  /// Display: Nasal ointment
  @JsonValue('100000073806')
  value100000073806,

  /// Display: Nasal drops, suspension
  @JsonValue('100000073807')
  value100000073807,

  /// Display: Nasal powder
  @JsonValue('100000073808')
  value100000073808,

  /// Display: Nasal spray, suspension
  @JsonValue('100000073809')
  value100000073809,

  /// Display: Nasal wash
  @JsonValue('100000073810')
  value100000073810,

  /// Display: Vaginal cream
  @JsonValue('100000073811')
  value100000073811,

  /// Display: Vaginal ointment
  @JsonValue('100000073812')
  value100000073812,

  /// Display: Vaginal solution
  @JsonValue('100000073813')
  value100000073813,

  /// Display: Vaginal emulsion
  @JsonValue('100000073814')
  value100000073814,

  /// Display: Pessary
  @JsonValue('100000073815')
  value100000073815,

  /// Display: Vaginal capsule, soft
  @JsonValue('100000073816')
  value100000073816,

  /// Display: Effervescent vaginal tablet
  @JsonValue('100000073817')
  value100000073817,

  /// Display: Vaginal delivery system
  @JsonValue('100000073818')
  value100000073818,

  /// Display: Rectal cream
  @JsonValue('100000073819')
  value100000073819,

  /// Display: Rectal foam
  @JsonValue('100000073820')
  value100000073820,

  /// Display: Vaginal suspension
  @JsonValue('100000073821')
  value100000073821,

  /// Display: Tablet for vaginal solution
  @JsonValue('100000073822')
  value100000073822,

  /// Display: Vaginal capsule, hard
  @JsonValue('100000073823')
  value100000073823,

  /// Display: Vaginal tablet
  @JsonValue('100000073824')
  value100000073824,

  /// Display: Medicated vaginal tampon
  @JsonValue('100000073825')
  value100000073825,

  /// Display: Vaginal sponge
  @JsonValue('100000073826')
  value100000073826,

  /// Display: Rectal gel
  @JsonValue('100000073827')
  value100000073827,

  /// Display: Solution for injection
  @JsonValue('100000073863')
  value100000073863,
  ;

  @override
  String toString() {
    switch (this) {
      case value100000073362:
        return '100000073362';
      case value100000073363:
        return '100000073363';
      case value100000073364:
        return '100000073364';
      case value100000073365:
        return '100000073365';
      case value100000073367:
        return '100000073367';
      case value100000073368:
        return '100000073368';
      case value100000073369:
        return '100000073369';
      case value100000073370:
        return '100000073370';
      case value100000073371:
        return '100000073371';
      case value100000073372:
        return '100000073372';
      case value100000073373:
        return '100000073373';
      case value100000073374:
        return '100000073374';
      case value100000073375:
        return '100000073375';
      case value100000073376:
        return '100000073376';
      case value100000073377:
        return '100000073377';
      case value100000073378:
        return '100000073378';
      case value100000073379:
        return '100000073379';
      case value100000073380:
        return '100000073380';
      case value100000073642:
        return '100000073642';
      case value100000073643:
        return '100000073643';
      case value100000073644:
        return '100000073644';
      case value100000073645:
        return '100000073645';
      case value100000073646:
        return '100000073646';
      case value100000073647:
        return '100000073647';
      case value100000073648:
        return '100000073648';
      case value100000073649:
        return '100000073649';
      case value100000073650:
        return '100000073650';
      case value100000073652:
        return '100000073652';
      case value100000073653:
        return '100000073653';
      case value100000073654:
        return '100000073654';
      case value100000073655:
        return '100000073655';
      case value100000073656:
        return '100000073656';
      case value100000073657:
        return '100000073657';
      case value100000073658:
        return '100000073658';
      case value100000073659:
        return '100000073659';
      case value100000073660:
        return '100000073660';
      case value100000073661:
        return '100000073661';
      case value100000073662:
        return '100000073662';
      case value100000073663:
        return '100000073663';
      case value100000073664:
        return '100000073664';
      case value100000073665:
        return '100000073665';
      case value100000073666:
        return '100000073666';
      case value100000073667:
        return '100000073667';
      case value100000073668:
        return '100000073668';
      case value100000073669:
        return '100000073669';
      case value100000073670:
        return '100000073670';
      case value100000073671:
        return '100000073671';
      case value100000073672:
        return '100000073672';
      case value100000073673:
        return '100000073673';
      case value100000073674:
        return '100000073674';
      case value100000073675:
        return '100000073675';
      case value100000073676:
        return '100000073676';
      case value100000073677:
        return '100000073677';
      case value100000073678:
        return '100000073678';
      case value100000073679:
        return '100000073679';
      case value100000073680:
        return '100000073680';
      case value100000073681:
        return '100000073681';
      case value100000073682:
        return '100000073682';
      case value100000073683:
        return '100000073683';
      case value100000073684:
        return '100000073684';
      case value100000073685:
        return '100000073685';
      case value100000073686:
        return '100000073686';
      case value100000073687:
        return '100000073687';
      case value100000073688:
        return '100000073688';
      case value100000073689:
        return '100000073689';
      case value100000073690:
        return '100000073690';
      case value100000073691:
        return '100000073691';
      case value100000073692:
        return '100000073692';
      case value100000073693:
        return '100000073693';
      case value100000073694:
        return '100000073694';
      case value100000073695:
        return '100000073695';
      case value100000073696:
        return '100000073696';
      case value100000073697:
        return '100000073697';
      case value100000073698:
        return '100000073698';
      case value100000073699:
        return '100000073699';
      case value100000073700:
        return '100000073700';
      case value100000073701:
        return '100000073701';
      case value100000073702:
        return '100000073702';
      case value100000073703:
        return '100000073703';
      case value100000073704:
        return '100000073704';
      case value100000073705:
        return '100000073705';
      case value100000073706:
        return '100000073706';
      case value100000073707:
        return '100000073707';
      case value100000073708:
        return '100000073708';
      case value100000073709:
        return '100000073709';
      case value100000073710:
        return '100000073710';
      case value100000073711:
        return '100000073711';
      case value100000073712:
        return '100000073712';
      case value100000073713:
        return '100000073713';
      case value100000073714:
        return '100000073714';
      case value100000073715:
        return '100000073715';
      case value100000073716:
        return '100000073716';
      case value100000073717:
        return '100000073717';
      case value100000073718:
        return '100000073718';
      case value100000073719:
        return '100000073719';
      case value100000073720:
        return '100000073720';
      case value100000073721:
        return '100000073721';
      case value100000073722:
        return '100000073722';
      case value100000073723:
        return '100000073723';
      case value100000073724:
        return '100000073724';
      case value100000073725:
        return '100000073725';
      case value100000073726:
        return '100000073726';
      case value100000073727:
        return '100000073727';
      case value100000073728:
        return '100000073728';
      case value100000073729:
        return '100000073729';
      case value100000073730:
        return '100000073730';
      case value100000073731:
        return '100000073731';
      case value100000073732:
        return '100000073732';
      case value100000073733:
        return '100000073733';
      case value100000073734:
        return '100000073734';
      case value100000073735:
        return '100000073735';
      case value100000073736:
        return '100000073736';
      case value100000073737:
        return '100000073737';
      case value100000073738:
        return '100000073738';
      case value100000073739:
        return '100000073739';
      case value100000073740:
        return '100000073740';
      case value100000073741:
        return '100000073741';
      case value100000073742:
        return '100000073742';
      case value100000073743:
        return '100000073743';
      case value100000073744:
        return '100000073744';
      case value100000073745:
        return '100000073745';
      case value100000073746:
        return '100000073746';
      case value100000073747:
        return '100000073747';
      case value100000073748:
        return '100000073748';
      case value100000073749:
        return '100000073749';
      case value100000073750:
        return '100000073750';
      case value100000073751:
        return '100000073751';
      case value100000073752:
        return '100000073752';
      case value100000073753:
        return '100000073753';
      case value100000073754:
        return '100000073754';
      case value100000073755:
        return '100000073755';
      case value100000073756:
        return '100000073756';
      case value100000073757:
        return '100000073757';
      case value100000073758:
        return '100000073758';
      case value100000073759:
        return '100000073759';
      case value100000073760:
        return '100000073760';
      case value100000073761:
        return '100000073761';
      case value100000073762:
        return '100000073762';
      case value100000073763:
        return '100000073763';
      case value100000073764:
        return '100000073764';
      case value100000073765:
        return '100000073765';
      case value100000073766:
        return '100000073766';
      case value100000073767:
        return '100000073767';
      case value100000073768:
        return '100000073768';
      case value100000073769:
        return '100000073769';
      case value100000073770:
        return '100000073770';
      case value100000073771:
        return '100000073771';
      case value100000073772:
        return '100000073772';
      case value100000073773:
        return '100000073773';
      case value100000073775:
        return '100000073775';
      case value100000073776:
        return '100000073776';
      case value100000073777:
        return '100000073777';
      case value100000073778:
        return '100000073778';
      case value100000073779:
        return '100000073779';
      case value100000073780:
        return '100000073780';
      case value100000073782:
        return '100000073782';
      case value100000073783:
        return '100000073783';
      case value100000073784:
        return '100000073784';
      case value100000073785:
        return '100000073785';
      case value100000073786:
        return '100000073786';
      case value100000073787:
        return '100000073787';
      case value100000073788:
        return '100000073788';
      case value100000073789:
        return '100000073789';
      case value100000073790:
        return '100000073790';
      case value100000073791:
        return '100000073791';
      case value100000073792:
        return '100000073792';
      case value100000073793:
        return '100000073793';
      case value100000073794:
        return '100000073794';
      case value100000073795:
        return '100000073795';
      case value100000073796:
        return '100000073796';
      case value100000073797:
        return '100000073797';
      case value100000073798:
        return '100000073798';
      case value100000073799:
        return '100000073799';
      case value100000073800:
        return '100000073800';
      case value100000073802:
        return '100000073802';
      case value100000073803:
        return '100000073803';
      case value100000073804:
        return '100000073804';
      case value100000073805:
        return '100000073805';
      case value100000073806:
        return '100000073806';
      case value100000073807:
        return '100000073807';
      case value100000073808:
        return '100000073808';
      case value100000073809:
        return '100000073809';
      case value100000073810:
        return '100000073810';
      case value100000073811:
        return '100000073811';
      case value100000073812:
        return '100000073812';
      case value100000073813:
        return '100000073813';
      case value100000073814:
        return '100000073814';
      case value100000073815:
        return '100000073815';
      case value100000073816:
        return '100000073816';
      case value100000073817:
        return '100000073817';
      case value100000073818:
        return '100000073818';
      case value100000073819:
        return '100000073819';
      case value100000073820:
        return '100000073820';
      case value100000073821:
        return '100000073821';
      case value100000073822:
        return '100000073822';
      case value100000073823:
        return '100000073823';
      case value100000073824:
        return '100000073824';
      case value100000073825:
        return '100000073825';
      case value100000073826:
        return '100000073826';
      case value100000073827:
        return '100000073827';
      case value100000073863:
        return '100000073863';
    }
  }

  String toJson() => toString();
  AdministrableDoseForm fromString(String str) {
    switch (str) {
      case '100000073362':
        return AdministrableDoseForm.value100000073362;
      case '100000073363':
        return AdministrableDoseForm.value100000073363;
      case '100000073364':
        return AdministrableDoseForm.value100000073364;
      case '100000073365':
        return AdministrableDoseForm.value100000073365;
      case '100000073367':
        return AdministrableDoseForm.value100000073367;
      case '100000073368':
        return AdministrableDoseForm.value100000073368;
      case '100000073369':
        return AdministrableDoseForm.value100000073369;
      case '100000073370':
        return AdministrableDoseForm.value100000073370;
      case '100000073371':
        return AdministrableDoseForm.value100000073371;
      case '100000073372':
        return AdministrableDoseForm.value100000073372;
      case '100000073373':
        return AdministrableDoseForm.value100000073373;
      case '100000073374':
        return AdministrableDoseForm.value100000073374;
      case '100000073375':
        return AdministrableDoseForm.value100000073375;
      case '100000073376':
        return AdministrableDoseForm.value100000073376;
      case '100000073377':
        return AdministrableDoseForm.value100000073377;
      case '100000073378':
        return AdministrableDoseForm.value100000073378;
      case '100000073379':
        return AdministrableDoseForm.value100000073379;
      case '100000073380':
        return AdministrableDoseForm.value100000073380;
      case '100000073642':
        return AdministrableDoseForm.value100000073642;
      case '100000073643':
        return AdministrableDoseForm.value100000073643;
      case '100000073644':
        return AdministrableDoseForm.value100000073644;
      case '100000073645':
        return AdministrableDoseForm.value100000073645;
      case '100000073646':
        return AdministrableDoseForm.value100000073646;
      case '100000073647':
        return AdministrableDoseForm.value100000073647;
      case '100000073648':
        return AdministrableDoseForm.value100000073648;
      case '100000073649':
        return AdministrableDoseForm.value100000073649;
      case '100000073650':
        return AdministrableDoseForm.value100000073650;
      case '100000073652':
        return AdministrableDoseForm.value100000073652;
      case '100000073653':
        return AdministrableDoseForm.value100000073653;
      case '100000073654':
        return AdministrableDoseForm.value100000073654;
      case '100000073655':
        return AdministrableDoseForm.value100000073655;
      case '100000073656':
        return AdministrableDoseForm.value100000073656;
      case '100000073657':
        return AdministrableDoseForm.value100000073657;
      case '100000073658':
        return AdministrableDoseForm.value100000073658;
      case '100000073659':
        return AdministrableDoseForm.value100000073659;
      case '100000073660':
        return AdministrableDoseForm.value100000073660;
      case '100000073661':
        return AdministrableDoseForm.value100000073661;
      case '100000073662':
        return AdministrableDoseForm.value100000073662;
      case '100000073663':
        return AdministrableDoseForm.value100000073663;
      case '100000073664':
        return AdministrableDoseForm.value100000073664;
      case '100000073665':
        return AdministrableDoseForm.value100000073665;
      case '100000073666':
        return AdministrableDoseForm.value100000073666;
      case '100000073667':
        return AdministrableDoseForm.value100000073667;
      case '100000073668':
        return AdministrableDoseForm.value100000073668;
      case '100000073669':
        return AdministrableDoseForm.value100000073669;
      case '100000073670':
        return AdministrableDoseForm.value100000073670;
      case '100000073671':
        return AdministrableDoseForm.value100000073671;
      case '100000073672':
        return AdministrableDoseForm.value100000073672;
      case '100000073673':
        return AdministrableDoseForm.value100000073673;
      case '100000073674':
        return AdministrableDoseForm.value100000073674;
      case '100000073675':
        return AdministrableDoseForm.value100000073675;
      case '100000073676':
        return AdministrableDoseForm.value100000073676;
      case '100000073677':
        return AdministrableDoseForm.value100000073677;
      case '100000073678':
        return AdministrableDoseForm.value100000073678;
      case '100000073679':
        return AdministrableDoseForm.value100000073679;
      case '100000073680':
        return AdministrableDoseForm.value100000073680;
      case '100000073681':
        return AdministrableDoseForm.value100000073681;
      case '100000073682':
        return AdministrableDoseForm.value100000073682;
      case '100000073683':
        return AdministrableDoseForm.value100000073683;
      case '100000073684':
        return AdministrableDoseForm.value100000073684;
      case '100000073685':
        return AdministrableDoseForm.value100000073685;
      case '100000073686':
        return AdministrableDoseForm.value100000073686;
      case '100000073687':
        return AdministrableDoseForm.value100000073687;
      case '100000073688':
        return AdministrableDoseForm.value100000073688;
      case '100000073689':
        return AdministrableDoseForm.value100000073689;
      case '100000073690':
        return AdministrableDoseForm.value100000073690;
      case '100000073691':
        return AdministrableDoseForm.value100000073691;
      case '100000073692':
        return AdministrableDoseForm.value100000073692;
      case '100000073693':
        return AdministrableDoseForm.value100000073693;
      case '100000073694':
        return AdministrableDoseForm.value100000073694;
      case '100000073695':
        return AdministrableDoseForm.value100000073695;
      case '100000073696':
        return AdministrableDoseForm.value100000073696;
      case '100000073697':
        return AdministrableDoseForm.value100000073697;
      case '100000073698':
        return AdministrableDoseForm.value100000073698;
      case '100000073699':
        return AdministrableDoseForm.value100000073699;
      case '100000073700':
        return AdministrableDoseForm.value100000073700;
      case '100000073701':
        return AdministrableDoseForm.value100000073701;
      case '100000073702':
        return AdministrableDoseForm.value100000073702;
      case '100000073703':
        return AdministrableDoseForm.value100000073703;
      case '100000073704':
        return AdministrableDoseForm.value100000073704;
      case '100000073705':
        return AdministrableDoseForm.value100000073705;
      case '100000073706':
        return AdministrableDoseForm.value100000073706;
      case '100000073707':
        return AdministrableDoseForm.value100000073707;
      case '100000073708':
        return AdministrableDoseForm.value100000073708;
      case '100000073709':
        return AdministrableDoseForm.value100000073709;
      case '100000073710':
        return AdministrableDoseForm.value100000073710;
      case '100000073711':
        return AdministrableDoseForm.value100000073711;
      case '100000073712':
        return AdministrableDoseForm.value100000073712;
      case '100000073713':
        return AdministrableDoseForm.value100000073713;
      case '100000073714':
        return AdministrableDoseForm.value100000073714;
      case '100000073715':
        return AdministrableDoseForm.value100000073715;
      case '100000073716':
        return AdministrableDoseForm.value100000073716;
      case '100000073717':
        return AdministrableDoseForm.value100000073717;
      case '100000073718':
        return AdministrableDoseForm.value100000073718;
      case '100000073719':
        return AdministrableDoseForm.value100000073719;
      case '100000073720':
        return AdministrableDoseForm.value100000073720;
      case '100000073721':
        return AdministrableDoseForm.value100000073721;
      case '100000073722':
        return AdministrableDoseForm.value100000073722;
      case '100000073723':
        return AdministrableDoseForm.value100000073723;
      case '100000073724':
        return AdministrableDoseForm.value100000073724;
      case '100000073725':
        return AdministrableDoseForm.value100000073725;
      case '100000073726':
        return AdministrableDoseForm.value100000073726;
      case '100000073727':
        return AdministrableDoseForm.value100000073727;
      case '100000073728':
        return AdministrableDoseForm.value100000073728;
      case '100000073729':
        return AdministrableDoseForm.value100000073729;
      case '100000073730':
        return AdministrableDoseForm.value100000073730;
      case '100000073731':
        return AdministrableDoseForm.value100000073731;
      case '100000073732':
        return AdministrableDoseForm.value100000073732;
      case '100000073733':
        return AdministrableDoseForm.value100000073733;
      case '100000073734':
        return AdministrableDoseForm.value100000073734;
      case '100000073735':
        return AdministrableDoseForm.value100000073735;
      case '100000073736':
        return AdministrableDoseForm.value100000073736;
      case '100000073737':
        return AdministrableDoseForm.value100000073737;
      case '100000073738':
        return AdministrableDoseForm.value100000073738;
      case '100000073739':
        return AdministrableDoseForm.value100000073739;
      case '100000073740':
        return AdministrableDoseForm.value100000073740;
      case '100000073741':
        return AdministrableDoseForm.value100000073741;
      case '100000073742':
        return AdministrableDoseForm.value100000073742;
      case '100000073743':
        return AdministrableDoseForm.value100000073743;
      case '100000073744':
        return AdministrableDoseForm.value100000073744;
      case '100000073745':
        return AdministrableDoseForm.value100000073745;
      case '100000073746':
        return AdministrableDoseForm.value100000073746;
      case '100000073747':
        return AdministrableDoseForm.value100000073747;
      case '100000073748':
        return AdministrableDoseForm.value100000073748;
      case '100000073749':
        return AdministrableDoseForm.value100000073749;
      case '100000073750':
        return AdministrableDoseForm.value100000073750;
      case '100000073751':
        return AdministrableDoseForm.value100000073751;
      case '100000073752':
        return AdministrableDoseForm.value100000073752;
      case '100000073753':
        return AdministrableDoseForm.value100000073753;
      case '100000073754':
        return AdministrableDoseForm.value100000073754;
      case '100000073755':
        return AdministrableDoseForm.value100000073755;
      case '100000073756':
        return AdministrableDoseForm.value100000073756;
      case '100000073757':
        return AdministrableDoseForm.value100000073757;
      case '100000073758':
        return AdministrableDoseForm.value100000073758;
      case '100000073759':
        return AdministrableDoseForm.value100000073759;
      case '100000073760':
        return AdministrableDoseForm.value100000073760;
      case '100000073761':
        return AdministrableDoseForm.value100000073761;
      case '100000073762':
        return AdministrableDoseForm.value100000073762;
      case '100000073763':
        return AdministrableDoseForm.value100000073763;
      case '100000073764':
        return AdministrableDoseForm.value100000073764;
      case '100000073765':
        return AdministrableDoseForm.value100000073765;
      case '100000073766':
        return AdministrableDoseForm.value100000073766;
      case '100000073767':
        return AdministrableDoseForm.value100000073767;
      case '100000073768':
        return AdministrableDoseForm.value100000073768;
      case '100000073769':
        return AdministrableDoseForm.value100000073769;
      case '100000073770':
        return AdministrableDoseForm.value100000073770;
      case '100000073771':
        return AdministrableDoseForm.value100000073771;
      case '100000073772':
        return AdministrableDoseForm.value100000073772;
      case '100000073773':
        return AdministrableDoseForm.value100000073773;
      case '100000073775':
        return AdministrableDoseForm.value100000073775;
      case '100000073776':
        return AdministrableDoseForm.value100000073776;
      case '100000073777':
        return AdministrableDoseForm.value100000073777;
      case '100000073778':
        return AdministrableDoseForm.value100000073778;
      case '100000073779':
        return AdministrableDoseForm.value100000073779;
      case '100000073780':
        return AdministrableDoseForm.value100000073780;
      case '100000073782':
        return AdministrableDoseForm.value100000073782;
      case '100000073783':
        return AdministrableDoseForm.value100000073783;
      case '100000073784':
        return AdministrableDoseForm.value100000073784;
      case '100000073785':
        return AdministrableDoseForm.value100000073785;
      case '100000073786':
        return AdministrableDoseForm.value100000073786;
      case '100000073787':
        return AdministrableDoseForm.value100000073787;
      case '100000073788':
        return AdministrableDoseForm.value100000073788;
      case '100000073789':
        return AdministrableDoseForm.value100000073789;
      case '100000073790':
        return AdministrableDoseForm.value100000073790;
      case '100000073791':
        return AdministrableDoseForm.value100000073791;
      case '100000073792':
        return AdministrableDoseForm.value100000073792;
      case '100000073793':
        return AdministrableDoseForm.value100000073793;
      case '100000073794':
        return AdministrableDoseForm.value100000073794;
      case '100000073795':
        return AdministrableDoseForm.value100000073795;
      case '100000073796':
        return AdministrableDoseForm.value100000073796;
      case '100000073797':
        return AdministrableDoseForm.value100000073797;
      case '100000073798':
        return AdministrableDoseForm.value100000073798;
      case '100000073799':
        return AdministrableDoseForm.value100000073799;
      case '100000073800':
        return AdministrableDoseForm.value100000073800;
      case '100000073802':
        return AdministrableDoseForm.value100000073802;
      case '100000073803':
        return AdministrableDoseForm.value100000073803;
      case '100000073804':
        return AdministrableDoseForm.value100000073804;
      case '100000073805':
        return AdministrableDoseForm.value100000073805;
      case '100000073806':
        return AdministrableDoseForm.value100000073806;
      case '100000073807':
        return AdministrableDoseForm.value100000073807;
      case '100000073808':
        return AdministrableDoseForm.value100000073808;
      case '100000073809':
        return AdministrableDoseForm.value100000073809;
      case '100000073810':
        return AdministrableDoseForm.value100000073810;
      case '100000073811':
        return AdministrableDoseForm.value100000073811;
      case '100000073812':
        return AdministrableDoseForm.value100000073812;
      case '100000073813':
        return AdministrableDoseForm.value100000073813;
      case '100000073814':
        return AdministrableDoseForm.value100000073814;
      case '100000073815':
        return AdministrableDoseForm.value100000073815;
      case '100000073816':
        return AdministrableDoseForm.value100000073816;
      case '100000073817':
        return AdministrableDoseForm.value100000073817;
      case '100000073818':
        return AdministrableDoseForm.value100000073818;
      case '100000073819':
        return AdministrableDoseForm.value100000073819;
      case '100000073820':
        return AdministrableDoseForm.value100000073820;
      case '100000073821':
        return AdministrableDoseForm.value100000073821;
      case '100000073822':
        return AdministrableDoseForm.value100000073822;
      case '100000073823':
        return AdministrableDoseForm.value100000073823;
      case '100000073824':
        return AdministrableDoseForm.value100000073824;
      case '100000073825':
        return AdministrableDoseForm.value100000073825;
      case '100000073826':
        return AdministrableDoseForm.value100000073826;
      case '100000073827':
        return AdministrableDoseForm.value100000073827;
      case '100000073863':
        return AdministrableDoseForm.value100000073863;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  AdministrableDoseForm fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
