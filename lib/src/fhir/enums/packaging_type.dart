import 'package:fhir_r4/fhir_r4.dart';

/// A type of packaging.
enum PackagingType {
  /// Display: Ampoule
  /// Definition:
  value100000073490('100000073490'),

  /// Display: Applicator
  /// Definition:
  value100000073491('100000073491'),

  /// Display: Automatic injection device
  /// Definition:
  value100000073492('100000073492'),

  /// Display: Bag
  /// Definition:
  value100000073493('100000073493'),

  /// Display: Balling gun
  /// Definition:
  value100000073494('100000073494'),

  /// Display: Barrel
  /// Definition:
  value100000073495('100000073495'),

  /// Display: Blister
  /// Definition:
  value100000073496('100000073496'),

  /// Display: Bottle
  /// Definition:
  value100000073497('100000073497'),

  /// Display: Box
  /// Definition:
  value100000073498('100000073498'),

  /// Display: Brush
  /// Definition:
  value100000073499('100000073499'),

  /// Display: Brush applicator
  /// Definition:
  value100000073500('100000073500'),

  /// Display: Cannula
  /// Definition:
  value100000073501('100000073501'),

  /// Display: Cap
  /// Definition:
  value100000073502('100000073502'),

  /// Display: Cartridge
  /// Definition:
  value100000073503('100000073503'),

  /// Display: Child-resistant closure
  /// Definition:
  value100000073504('100000073504'),

  /// Display: Cup
  /// Definition:
  value100000073505('100000073505'),

  /// Display: Dabbing applicator
  /// Definition:
  value100000073506('100000073506'),

  /// Display: Dart
  /// Definition:
  value100000073507('100000073507'),

  /// Display: Dredging applicator
  /// Definition:
  value100000073508('100000073508'),

  /// Display: Dredging container
  /// Definition:
  value100000073509('100000073509'),

  /// Display: Drench gun
  /// Definition:
  value100000073510('100000073510'),

  /// Display: Dropper applicator
  /// Definition:
  value100000073511('100000073511'),

  /// Display: Dropper container
  /// Definition:
  value100000073512('100000073512'),

  /// Display: Fixed cryogenic vessel
  /// Definition:
  value100000073513('100000073513'),

  /// Display: Gas cylinder
  /// Definition:
  value100000073514('100000073514'),

  /// Display: High pressure transdermal delivery device
  /// Definition:
  value100000073515('100000073515'),

  /// Display: Implanter
  /// Definition:
  value100000073516('100000073516'),

  /// Display: Inhaler
  /// Definition:
  value100000073517('100000073517'),

  /// Display: In-ovo injection device
  /// Definition:
  value100000073518('100000073518'),

  /// Display: Injection needle
  /// Definition:
  value100000073519('100000073519'),

  /// Display: Injection syringe
  /// Definition:
  value100000073520('100000073520'),

  /// Display: Internal graduated calibration chamber
  /// Definition:
  value100000073521('100000073521'),

  /// Display: Intramammary syringe
  /// Definition:
  value100000073522('100000073522'),

  /// Display: Jar
  /// Definition:
  value100000073523('100000073523'),

  /// Display: Measuring device
  /// Definition:
  value100000073524('100000073524'),

  /// Display: Measuring spoon
  /// Definition:
  value100000073525('100000073525'),

  /// Display: Metering pump
  /// Definition:
  value100000073526('100000073526'),

  /// Display: Metering valve
  /// Definition:
  value100000073527('100000073527'),

  /// Display: Mobile cryogenic vessel
  /// Definition:
  value100000073528('100000073528'),

  /// Display: Mouthpiece
  /// Definition:
  value100000073529('100000073529'),

  /// Display: Multidose container
  /// Definition:
  value100000073530('100000073530'),

  /// Display: Multidose container with airless pump
  /// Definition:
  value100000073531('100000073531'),

  /// Display: Multipuncturer
  /// Definition:
  value100000073532('100000073532'),

  /// Display: Nasal applicator
  /// Definition:
  value100000073533('100000073533'),

  /// Display: Nebuliser
  /// Definition:
  value100000073534('100000073534'),

  /// Display: Needle applicator
  /// Definition:
  value100000073535('100000073535'),

  /// Display: Nozzle
  /// Definition:
  value100000073536('100000073536'),

  /// Display: Oral syringe
  /// Definition:
  value100000073537('100000073537'),

  /// Display: Pipette
  /// Definition:
  value100000073538('100000073538'),

  /// Display: Pipette applicator
  /// Definition:
  value100000073539('100000073539'),

  /// Display: Pouch
  /// Definition:
  value100000073540('100000073540'),

  /// Display: Pour-on container
  /// Definition:
  value100000073541('100000073541'),

  /// Display: Pre-filled gastroenteral tube
  /// Definition:
  value100000073542('100000073542'),

  /// Display: Pre-filled pen
  /// Definition:
  value100000073543('100000073543'),

  /// Display: Pre-filled syringe
  /// Definition:
  value100000073544('100000073544'),

  /// Display: Pressurised container
  /// Definition:
  value100000073545('100000073545'),

  /// Display: Prick test applicator
  /// Definition:
  value100000073546('100000073546'),

  /// Display: Sachet
  /// Definition:
  value100000073547('100000073547'),

  /// Display: Scarifier
  /// Definition:
  value100000073548('100000073548'),

  /// Display: Screw cap
  /// Definition:
  value100000073549('100000073549'),

  /// Display: Single-dose container
  /// Definition:
  value100000073550('100000073550'),

  /// Display: Spatula
  /// Definition:
  value100000073551('100000073551'),

  /// Display: Spot-on applicator
  /// Definition:
  value100000073552('100000073552'),

  /// Display: Spray container
  /// Definition:
  value100000073553('100000073553'),

  /// Display: Spray pump
  /// Definition:
  value100000073554('100000073554'),

  /// Display: Spray valve
  /// Definition:
  value100000073555('100000073555'),

  /// Display: Stab vaccinator
  /// Definition:
  value100000073556('100000073556'),

  /// Display: Stopper
  /// Definition:
  value100000073557('100000073557'),

  /// Display: Straw
  /// Definition:
  value100000073558('100000073558'),

  /// Display: Strip
  /// Definition:
  value100000073559('100000073559'),

  /// Display: Tablet container
  /// Definition:
  value100000073560('100000073560'),

  /// Display: Tube
  /// Definition:
  value100000073561('100000073561'),

  /// Display: Vaginal sponge applicator
  /// Definition:
  value100000073562('100000073562'),

  /// Display: Vial
  /// Definition:
  value100000073563('100000073563'),

  /// Display: Administration system
  /// Definition:
  value100000075664('100000075664'),

  /// Display: Calendar package
  /// Definition:
  value100000116195('100000116195'),

  /// Display: Needle-free injector
  /// Definition:
  value100000116196('100000116196'),

  /// Display: Roll-on container
  /// Definition:
  value100000116197('100000116197'),

  /// Display: Multidose container with pump
  /// Definition:
  value100000125779('100000125779'),

  /// Display: Container
  /// Definition:
  value100000137702('100000137702'),

  /// Display: Oral applicator
  /// Definition:
  value100000137703('100000137703'),

  /// Display: Multidose container with metering pump
  /// Definition:
  value100000143554('100000143554'),

  /// Display: Pack
  /// Definition:
  value100000143555('100000143555'),

  /// Display: disk
  /// Definition:
  value100000163233('100000163233'),

  /// Display: plunger
  /// Definition:
  value100000163234('100000163234'),

  /// Display: infusion port
  /// Definition:
  value100000164143('100000164143'),

  /// Display: Valve
  /// Definition:
  value100000166980('100000166980'),

  /// Display: Jerrycan
  /// Definition:
  value100000169899('100000169899'),

  /// Display: Oral applicator
  /// Definition:
  value100000173982('100000173982'),

  /// Display: Dose dispenser
  /// Definition:
  value100000173983('100000173983'),

  /// Display: Unit-dose blister
  /// Definition:
  value100000174066('100000174066'),

  /// Display: Pre-filled injector
  /// Definition:
  value100000174067('100000174067'),

  /// Display: Pre-filled oral syringe
  /// Definition:
  value100000174068('100000174068'),

  /// Display: Pre-filled oral applicator
  /// Definition:
  value100000174069('100000174069'),

  /// Display: Dose-dispenser cartridge
  /// Definition:
  value100000174070('100000174070'),

  /// Display: Pen
  /// Definition:
  value200000005068('200000005068'),

  /// Display: Wrapper
  /// Definition:
  value200000005585('200000005585'),

  /// Display: Lid
  /// Definition:
  value200000010647('200000010647'),

  /// Display: Capsule for opening
  /// Definition:
  value200000011726('200000011726'),

  /// Display: Child-resistant sachet
  /// Definition:
  value200000012539('200000012539'),

  /// Display: Tamper-evident closure
  /// Definition:
  value200000013191('200000013191'),

  /// Display: Tablet tube
  /// Definition:
  value200000024874('200000024874'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const PackagingType(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static PackagingType fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return PackagingType.elementOnly.withElement(element);
    }
    return PackagingType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  PackagingType withElement(Element? newElement) {
    return PackagingType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
