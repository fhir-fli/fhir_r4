// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The presentation type in which an administrable medicinal product is given to a patient.
enum UnitOfPresentation {
  /// Display: Barrel
  /// Definition:
  value200000002108('200000002108'),

  /// Display: Blister
  /// Definition:
  value200000002109('200000002109'),

  /// Display: Block
  /// Definition:
  value200000002110('200000002110'),

  /// Display: Bottle
  /// Definition:
  value200000002111('200000002111'),

  /// Display: Cachet
  /// Definition:
  value200000002112('200000002112'),

  /// Display: Capsule
  /// Definition:
  value200000002113('200000002113'),

  /// Display: Cartridge
  /// Definition:
  value200000002114('200000002114'),

  /// Display: Collar
  /// Definition:
  value200000002115('200000002115'),

  /// Display: Container
  /// Definition:
  value200000002116('200000002116'),

  /// Display: Cup
  /// Definition:
  value200000002117('200000002117'),

  /// Display: Cylinder
  /// Definition:
  value200000002118('200000002118'),

  /// Display: Dart
  /// Definition:
  value200000002119('200000002119'),

  /// Display: Dressing
  /// Definition:
  value200000002120('200000002120'),

  /// Display: Drop
  /// Definition:
  value200000002121('200000002121'),

  /// Display: Film
  /// Definition:
  value200000002122('200000002122'),

  /// Display: Chewing gum
  /// Definition:
  value200000002123('200000002123'),

  /// Display: Implant
  /// Definition:
  value200000002124('200000002124'),

  /// Display: Inhaler
  /// Definition:
  value200000002125('200000002125'),

  /// Display: Insert
  /// Definition:
  value200000002126('200000002126'),

  /// Display: Jar
  /// Definition:
  value200000002127('200000002127'),

  /// Display: Lozenge
  /// Definition:
  value200000002128('200000002128'),

  /// Display: Lyophilisate
  /// Definition:
  value200000002129('200000002129'),

  /// Display: Matrix
  /// Definition:
  value200000002130('200000002130'),

  /// Display: Pad
  /// Definition:
  value200000002131('200000002131'),

  /// Display: Paper
  /// Definition:
  value200000002132('200000002132'),

  /// Display: Pastille
  /// Definition:
  value200000002133('200000002133'),

  /// Display: Patch
  /// Definition:
  value200000002134('200000002134'),

  /// Display: Pen
  /// Definition:
  value200000002135('200000002135'),

  /// Display: Pendant
  /// Definition:
  value200000002136('200000002136'),

  /// Display: Pessary
  /// Definition:
  value200000002137('200000002137'),

  /// Display: Pillule
  /// Definition:
  value200000002138('200000002138'),

  /// Display: Pipette
  /// Definition:
  value200000002139('200000002139'),

  /// Display: Plaster
  /// Definition:
  value200000002140('200000002140'),

  /// Display: Plug
  /// Definition:
  value200000002141('200000002141'),

  /// Display: Pouch
  /// Definition:
  value200000002142('200000002142'),

  /// Display: Sachet
  /// Definition:
  value200000002143('200000002143'),

  /// Display: Sponge
  /// Definition:
  value200000002144('200000002144'),

  /// Display: Spoonful
  /// Definition:
  value200000002145('200000002145'),

  /// Display: Stick
  /// Definition:
  value200000002146('200000002146'),

  /// Display: Straw
  /// Definition:
  value200000002147('200000002147'),

  /// Display: Strip
  /// Definition:
  value200000002148('200000002148'),

  /// Display: Suppository
  /// Definition:
  value200000002149('200000002149'),

  /// Display: Syringe
  /// Definition:
  value200000002150('200000002150'),

  /// Display: System
  /// Definition:
  value200000002151('200000002151'),

  /// Display: Tablet
  /// Definition:
  value200000002152('200000002152'),

  /// Display: Tag
  /// Definition:
  value200000002153('200000002153'),

  /// Display: Tampon
  /// Definition:
  value200000002154('200000002154'),

  /// Display: Thread
  /// Definition:
  value200000002155('200000002155'),

  /// Display: Tube
  /// Definition:
  value200000002156('200000002156'),

  /// Display: Vessel
  /// Definition:
  value200000002157('200000002157'),

  /// Display: Vial
  /// Definition:
  value200000002158('200000002158'),

  /// Display: Puff
  /// Definition:
  value200000002159('200000002159'),

  /// Display: Actuation
  /// Definition:
  value200000002163('200000002163'),

  /// Display: Ampoule
  /// Definition:
  value200000002164('200000002164'),

  /// Display: Applicator
  /// Definition:
  value200000002165('200000002165'),

  /// Display: Bag
  /// Definition:
  value200000002166('200000002166'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const UnitOfPresentation(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [UnitOfPresentation] instances.
  static UnitOfPresentation fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return UnitOfPresentation.elementOnly.withElement(
        element,
      );
    }
    return UnitOfPresentation.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  UnitOfPresentation withElement(Element? newElement) {
    return UnitOfPresentation.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
