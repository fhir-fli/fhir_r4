import 'package:fhir_r4/fhir_r4.dart';

/// A species for which a medicinal product is intended.
enum TargetSpecies {
  /// Display: Dove
  /// Definition:
  value100000108874('100000108874'),

  /// Display: Quail
  /// Definition:
  value100000108875('100000108875'),

  /// Display: Snipe
  /// Definition:
  value100000108876('100000108876'),

  /// Display: Sparrow
  /// Definition:
  value100000108877('100000108877'),

  /// Display: Starling
  /// Definition:
  value100000108878('100000108878'),

  /// Display: Swan
  /// Definition:
  value100000108879('100000108879'),

  /// Display: Turkey hen
  /// Definition:
  value100000108880('100000108880'),

  /// Display: Turkey cock
  /// Definition:
  value100000108881('100000108881'),

  /// Display: Turkeys
  /// Definition:
  value100000108882('100000108882'),

  /// Display: Turkey for reproduction
  /// Definition:
  value100000108883('100000108883'),

  /// Display: Poult
  /// Definition:
  value100000108884('100000108884'),

  /// Display: Turtle dove
  /// Definition:
  value100000108885('100000108885'),

  /// Display: Bison
  /// Definition:
  value100000108886('100000108886'),

  /// Display: Buffalo
  /// Definition:
  value100000108887('100000108887'),

  /// Display: Cows
  /// Definition:
  value100000108888('100000108888'),

  /// Display: Cow for reproduction
  /// Definition:
  value100000108889('100000108889'),

  /// Display: Bull for reproduction
  /// Definition:
  value100000108890('100000108890'),

  /// Display: Ox
  /// Definition:
  value100000108891('100000108891'),

  /// Display: Bullock
  /// Definition:
  value100000108892('100000108892'),

  /// Display: Cattle
  /// Definition:
  value100000108893('100000108893'),

  /// Display: Beef cattle
  /// Definition:
  value100000108894('100000108894'),

  /// Display: Dairy cattle
  /// Definition:
  value100000108895('100000108895'),

  /// Display: Dry cow
  /// Definition:
  value100000108896('100000108896'),

  /// Display: Bull
  /// Definition:
  value100000108897('100000108897'),

  /// Display: Lactating cow
  /// Definition:
  value100000108898('100000108898'),

  /// Display: All other food producing species
  /// Definition:
  value100000108899('100000108899'),

  /// Display: All non-food producing species
  /// Definition:
  value100000108900('100000108900'),

  /// Display: All species
  /// Definition:
  value100000108901('100000108901'),

  /// Display: Carnivores
  /// Definition:
  value100000108902('100000108902'),

  /// Display: Domestic animals
  /// Definition:
  value100000108903('100000108903'),

  /// Display: Fur animals
  /// Definition:
  value100000108904('100000108904'),

  /// Display: Game animals
  /// Definition:
  value100000108905('100000108905'),

  /// Display: Laboratory animals
  /// Definition:
  value100000108906('100000108906'),

  /// Display: Major species
  /// Definition:
  value100000108907('100000108907'),

  /// Display: Minor species
  /// Definition:
  value100000108908('100000108908'),

  /// Display: Ruminant
  /// Definition:
  value100000108909('100000108909'),

  /// Display: Ruminant and porcine
  /// Definition:
  value100000108910('100000108910'),

  /// Display: Small animals
  /// Definition:
  value100000108911('100000108911'),

  /// Display: Crocodile
  /// Definition:
  value100000108912('100000108912'),

  /// Display: Frog
  /// Definition:
  value100000108913('100000108913'),

  /// Display: Iguana
  /// Definition:
  value100000108914('100000108914'),

  /// Display: Lizard
  /// Definition:
  value100000108915('100000108915'),

  /// Display: Amphibians
  /// Definition:
  value100000108916('100000108916'),

  /// Display: Reptiles
  /// Definition:
  value100000108917('100000108917'),

  /// Display: Reptiles for production
  /// Definition:
  value100000108918('100000108918'),

  /// Display: Snake
  /// Definition:
  value100000108919('100000108919'),

  /// Display: Tortoise
  /// Definition:
  value100000108920('100000108920'),

  /// Display: Turtle
  /// Definition:
  value100000108921('100000108921'),

  /// Display: Honey bees
  /// Definition:
  value100000108922('100000108922'),

  /// Display: Crustacean
  /// Definition:
  value100000108923('100000108923'),

  /// Display: Spider
  /// Definition:
  value100000108924('100000108924'),

  /// Display: Indian hen
  /// Definition:
  value100000108925('100000108925'),

  /// Display: African Goshawk
  /// Definition:
  value100000108926('100000108926'),

  /// Display: Black Kite
  /// Definition:
  value100000108927('100000108927'),

  /// Display: Budgerigar
  /// Definition:
  value100000108928('100000108928'),

  /// Display: Bustard
  /// Definition:
  value100000108929('100000108929'),

  /// Display: Buzzard
  /// Definition:
  value100000108930('100000108930'),

  /// Display: Hen
  /// Definition:
  value100000108931('100000108931'),

  /// Display: Layer hen
  /// Definition:
  value100000108932('100000108932'),

  /// Display: Cock
  /// Definition:
  value100000108933('100000108933'),

  /// Display: Broiler
  /// Definition:
  value100000108934('100000108934'),

  /// Display: Chickens
  /// Definition:
  value100000108935('100000108935'),

  /// Display: Chicken embryonated eggs
  /// Definition:
  value100000108936('100000108936'),

  /// Display: Chicken for reproduction
  /// Definition:
  value100000108937('100000108937'),

  /// Display: Replacement chick
  /// Definition:
  value100000108938('100000108938'),

  /// Display: Chick
  /// Definition:
  value100000108939('100000108939'),

  /// Display: Pullet
  /// Definition:
  value100000108940('100000108940'),

  /// Display: Cockatiel
  /// Definition:
  value100000108941('100000108941'),

  /// Display: Cockatoo
  /// Definition:
  value100000108942('100000108942'),

  /// Display: Common canary
  /// Definition:
  value100000108943('100000108943'),

  /// Display: Crow
  /// Definition:
  value100000108944('100000108944'),

  /// Display: Duck
  /// Definition:
  value100000108945('100000108945'),

  /// Display: Duck broiler
  /// Definition:
  value100000108946('100000108946'),

  /// Display: Duckling
  /// Definition:
  value100000108947('100000108947'),

  /// Display: Eagle
  /// Definition:
  value100000108948('100000108948'),

  /// Display: Emu
  /// Definition:
  value100000108949('100000108949'),

  /// Display: Goose
  /// Definition:
  value100000108950('100000108950'),

  /// Display: Guinea fowl
  /// Definition:
  value100000108951('100000108951'),

  /// Display: Kestrel
  /// Definition:
  value100000108952('100000108952'),

  /// Display: Kite
  /// Definition:
  value100000108953('100000108953'),

  /// Display: Macaw
  /// Definition:
  value100000108954('100000108954'),

  /// Display: Ostrich
  /// Definition:
  value100000108955('100000108955'),

  /// Display: Birds
  /// Definition:
  value100000108956('100000108956'),

  /// Display: Fowls
  /// Definition:
  value100000108957('100000108957'),

  /// Display: Finch
  /// Definition:
  value100000108958('100000108958'),

  /// Display: Galliformes
  /// Definition:
  value100000108959('100000108959'),

  /// Display: Game birds
  /// Definition:
  value100000108960('100000108960'),

  /// Display: Pekin duck
  /// Definition:
  value100000108961('100000108961'),

  /// Display: Ornamental birds
  /// Definition:
  value100000108962('100000108962'),

  /// Display: Poultry
  /// Definition:
  value100000108963('100000108963'),

  /// Display: Owl
  /// Definition:
  value100000108964('100000108964'),

  /// Display: Parakeet
  /// Definition:
  value100000108965('100000108965'),

  /// Display: Parrot
  /// Definition:
  value100000108966('100000108966'),

  /// Display: Partridge
  /// Definition:
  value100000108967('100000108967'),

  /// Display: Peregrine Falcon
  /// Definition:
  value100000108968('100000108968'),

  /// Display: Pheasants
  /// Definition:
  value100000108969('100000108969'),

  /// Display: Carrier pigeon
  /// Definition:
  value100000108970('100000108970'),

  /// Display: Newborn calves
  /// Definition:
  value100000108971('100000108971'),

  /// Display: Pregnant cow
  /// Definition:
  value100000108972('100000108972'),

  /// Display: Pregnant heifer
  /// Definition:
  value100000108973('100000108973'),

  /// Display: Pre-ruminant cattle
  /// Definition:
  value100000108974('100000108974'),

  /// Display: Ruminant cattle
  /// Definition:
  value100000108975('100000108975'),

  /// Display: Wild cattle
  /// Definition:
  value100000108976('100000108976'),

  /// Display: Calf
  /// Definition:
  value100000108977('100000108977'),

  /// Display: Heifers
  /// Definition:
  value100000108978('100000108978'),

  /// Display: Other Bovids
  /// Definition:
  value100000108979('100000108979'),

  /// Display: Alpaca
  /// Definition:
  value100000108980('100000108980'),

  /// Display: Camel
  /// Definition:
  value100000108981('100000108981'),

  /// Display: Llama
  /// Definition:
  value100000108982('100000108982'),

  /// Display: Other Camelids
  /// Definition:
  value100000108983('100000108983'),

  /// Display: Bitch
  /// Definition:
  value100000108984('100000108984'),

  /// Display: Bitch for reproduction
  /// Definition:
  value100000108985('100000108985'),

  /// Display: Adult male dog
  /// Definition:
  value100000108986('100000108986'),

  /// Display: Adult male dog for reproduction
  /// Definition:
  value100000108987('100000108987'),

  /// Display: Dogs
  /// Definition:
  value100000108988('100000108988'),

  /// Display: Lactating bitch
  /// Definition:
  value100000108989('100000108989'),

  /// Display: Large dog
  /// Definition:
  value100000108990('100000108990'),

  /// Display: Medium dog
  /// Definition:
  value100000108991('100000108991'),

  /// Display: Pregnant bitch
  /// Definition:
  value100000108992('100000108992'),

  /// Display: Small dog
  /// Definition:
  value100000108993('100000108993'),

  /// Display: Very large dog
  /// Definition:
  value100000108994('100000108994'),

  /// Display: Very small dog
  /// Definition:
  value100000108995('100000108995'),

  /// Display: Puppy
  /// Definition:
  value100000108996('100000108996'),

  /// Display: Foxes
  /// Definition:
  value100000108997('100000108997'),

  /// Display: Jackal
  /// Definition:
  value100000108998('100000108998'),

  /// Display: Other Canids
  /// Definition:
  value100000108999('100000108999'),

  /// Display: Raccoon dogs
  /// Definition:
  value100000109000('100000109000'),

  /// Display: Wolf
  /// Definition:
  value100000109001('100000109001'),

  /// Display: Chamois
  /// Definition:
  value100000109002('100000109002'),

  /// Display: Other Caprines
  /// Definition:
  value100000109003('100000109003'),

  /// Display: Adult female goat
  /// Definition:
  value100000109004('100000109004'),

  /// Display: Adult male goat
  /// Definition:
  value100000109005('100000109005'),

  /// Display: Dry adult female goat
  /// Definition:
  value100000109006('100000109006'),

  /// Display: Goats
  /// Definition:
  value100000109007('100000109007'),

  /// Display: Lactating adult female goat
  /// Definition:
  value100000109008('100000109008'),

  /// Display: Pregnant adult female goat
  /// Definition:
  value100000109009('100000109009'),

  /// Display: Pre-ruminant goat
  /// Definition:
  value100000109010('100000109010'),

  /// Display: Ruminant goat
  /// Definition:
  value100000109011('100000109011'),

  /// Display: Wild goat
  /// Definition:
  value100000109012('100000109012'),

  /// Display: Kid
  /// Definition:
  value100000109013('100000109013'),

  /// Display: Other Ovids
  /// Definition:
  value100000109014('100000109014'),

  /// Display: Ewe
  /// Definition:
  value100000109015('100000109015'),

  /// Display: Ram
  /// Definition:
  value100000109016('100000109016'),

  /// Display: Dry ewe
  /// Definition:
  value100000109017('100000109017'),

  /// Display: Lactating ewe
  /// Definition:
  value100000109018('100000109018'),

  /// Display: Pregnant ewe
  /// Definition:
  value100000109019('100000109019'),

  /// Display: Pre-ruminant sheep
  /// Definition:
  value100000109020('100000109020'),

  /// Display: Ruminant sheep
  /// Definition:
  value100000109021('100000109021'),

  /// Display: Sheep
  /// Definition:
  value100000109022('100000109022'),

  /// Display: Sheep for meat production
  /// Definition:
  value100000109023('100000109023'),

  /// Display: Dairy sheep
  /// Definition:
  value100000109024('100000109024'),

  /// Display: Wild sheep
  /// Definition:
  value100000109025('100000109025'),

  /// Display: Lamb
  /// Definition:
  value100000109026('100000109026'),

  /// Display: Elk
  /// Definition:
  value100000109027('100000109027'),

  /// Display: Fallow deer
  /// Definition:
  value100000109028('100000109028'),

  /// Display: Moose
  /// Definition:
  value100000109029('100000109029'),

  /// Display: Antelope
  /// Definition:
  value100000109030('100000109030'),

  /// Display: Cervid
  /// Definition:
  value100000109031('100000109031'),

  /// Display: Deer
  /// Definition:
  value100000109032('100000109032'),

  /// Display: Other Deer
  /// Definition:
  value100000109033('100000109033'),

  /// Display: Red deer
  /// Definition:
  value100000109034('100000109034'),

  /// Display: Reindeer
  /// Definition:
  value100000109035('100000109035'),

  /// Display: Roe deer
  /// Definition:
  value100000109036('100000109036'),

  /// Display: Donkey
  /// Definition:
  value100000109037('100000109037'),

  /// Display: Mare
  /// Definition:
  value100000109038('100000109038'),

  /// Display: Gelding
  /// Definition:
  value100000109039('100000109039'),

  /// Display: Horses
  /// Definition:
  value100000109040('100000109040'),

  /// Display: Stallion
  /// Definition:
  value100000109041('100000109041'),

  /// Display: Pony
  /// Definition:
  value100000109042('100000109042'),

  /// Display: Pregnant mare
  /// Definition:
  value100000109043('100000109043'),

  /// Display: Non food-producing horse
  /// Definition:
  value100000109044('100000109044'),

  /// Display: Suckling colt
  /// Definition:
  value100000109045('100000109045'),

  /// Display: Colt
  /// Definition:
  value100000109046('100000109046'),

  /// Display: Mule
  /// Definition:
  value100000109047('100000109047'),

  /// Display: Equid
  /// Definition:
  value100000109048('100000109048'),

  /// Display: Female equid
  /// Definition:
  value100000109049('100000109049'),

  /// Display: Other Equids
  /// Definition:
  value100000109050('100000109050'),

  /// Display: Zebra
  /// Definition:
  value100000109051('100000109051'),

  /// Display: Bobcat
  /// Definition:
  value100000109052('100000109052'),

  /// Display: Adult female cat
  /// Definition:
  value100000109053('100000109053'),

  /// Display: Adult female cat for reproduction
  /// Definition:
  value100000109054('100000109054'),

  /// Display: Adult male cat
  /// Definition:
  value100000109055('100000109055'),

  /// Display: Cats
  /// Definition:
  value100000109056('100000109056'),

  /// Display: Lactating cat
  /// Definition:
  value100000109057('100000109057'),

  /// Display: Large cat
  /// Definition:
  value100000109058('100000109058'),

  /// Display: Medium cat
  /// Definition:
  value100000109059('100000109059'),

  /// Display: Pregnant cat
  /// Definition:
  value100000109060('100000109060'),

  /// Display: Small cat
  /// Definition:
  value100000109061('100000109061'),

  /// Display: Kitten
  /// Definition:
  value100000109062('100000109062'),

  /// Display: Cougar
  /// Definition:
  value100000109063('100000109063'),

  /// Display: Jaguar
  /// Definition:
  value100000109064('100000109064'),

  /// Display: Leopard
  /// Definition:
  value100000109065('100000109065'),

  /// Display: Lion
  /// Definition:
  value100000109066('100000109066'),

  /// Display: Lynx
  /// Definition:
  value100000109067('100000109067'),

  /// Display: Other Felids
  /// Definition:
  value100000109068('100000109068'),

  /// Display: Tiger
  /// Definition:
  value100000109069('100000109069'),

  /// Display: Tsushima wild cat
  /// Definition:
  value100000109070('100000109070'),

  /// Display: Other Leporids
  /// Definition:
  value100000109071('100000109071'),

  /// Display: Hare
  /// Definition:
  value100000109072('100000109072'),

  /// Display: Female rabbit for reproduction
  /// Definition:
  value100000109073('100000109073'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const TargetSpecies(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static TargetSpecies fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TargetSpecies.elementOnly.withElement(element);
    }
    return TargetSpecies.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  TargetSpecies withElement(Element? newElement) {
    return TargetSpecies.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
