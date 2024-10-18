// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// A tissue type of an animal.
enum AnimalTissueType {
  /// Display: All relevant tissues
  /// Definition:
  value100000072091('100000072091'),

  /// Display: Fat
  /// Definition:
  value100000072092('100000072092'),

  /// Display: Honey
  /// Definition:
  value100000072093('100000072093'),

  /// Display: Liver
  /// Definition:
  value100000072094('100000072094'),

  /// Display: Fresh Milk
  /// Definition:
  value100000072095('100000072095'),

  /// Display: Muscle and skin in natural proportions
  /// Definition:
  value100000072096('100000072096'),

  /// Display: Eggs
  /// Definition:
  value100000072104('100000072104'),

  /// Display: Skin and fat
  /// Definition:
  value100000072105('100000072105'),

  /// Display: Kidney
  /// Definition:
  value100000072106('100000072106'),

  /// Display: Meat and offal
  /// Definition:
  value100000072107('100000072107'),

  /// Display: Muscle
  /// Definition:
  value100000072108('100000072108'),

  /// Display: Unspecified
  /// Definition:
  value100000072109('100000072109'),

  /// Display: Adipose tissue
  /// Definition:
  value100000111053('100000111053'),

  /// Display: Adrenal
  /// Definition:
  value100000111054('100000111054'),

  /// Display: Blood vessels
  /// Definition:
  value100000111055('100000111055'),

  /// Display: Bone
  /// Definition:
  value100000111056('100000111056'),

  /// Display: Bone marrow
  /// Definition:
  value100000111057('100000111057'),

  /// Display: Brain
  /// Definition:
  value100000111058('100000111058'),

  /// Display: Connective tissue
  /// Definition:
  value100000111059('100000111059'),

  /// Display: Cornea
  /// Definition:
  value100000111060('100000111060'),

  /// Display: Dental pulp
  /// Definition:
  value100000111061('100000111061'),

  /// Display: Duodenum
  /// Definition:
  value100000111062('100000111062'),

  /// Display: Dura mater
  /// Definition:
  value100000111063('100000111063'),

  /// Display: Egg, embryonated
  /// Definition:
  value100000111064('100000111064'),

  /// Display: Egg
  /// Definition:
  value100000111065('100000111065'),

  /// Display: Egg white
  /// Definition:
  value100000111066('100000111066'),

  /// Display: Egg yolk
  /// Definition:
  value100000111067('100000111067'),

  /// Display: Embryos
  /// Definition:
  value100000111068('100000111068'),

  /// Display: Enteric plexuses
  /// Definition:
  value100000111069('100000111069'),

  /// Display: Esophagus
  /// Definition:
  value100000111070('100000111070'),

  /// Display: Feathers
  /// Definition:
  value100000111071('100000111071'),

  /// Display: Foetus
  /// Definition:
  value100000111072('100000111072'),

  /// Display: Fore-stomach (ruminants only)
  /// Definition:
  value100000111073('100000111073'),

  /// Display: Gingival tissue
  /// Definition:
  value100000111074('100000111074'),

  /// Display: Hair
  /// Definition:
  value100000111075('100000111075'),

  /// Display: Heart/pericardium
  /// Definition:
  value100000111076('100000111076'),

  /// Display: Hide
  /// Definition:
  value100000111077('100000111077'),

  /// Display: Hooves
  /// Definition:
  value100000111078('100000111078'),

  /// Display: Ileum
  /// Definition:
  value100000111079('100000111079'),

  /// Display: Jejunum
  /// Definition:
  value100000111080('100000111080'),

  /// Display: Kidney
  /// Definition:
  value100000111081('100000111081'),

  /// Display: Lard/lard oil
  /// Definition:
  value100000111082('100000111082'),

  /// Display: Large intestine
  /// Definition:
  value100000111083('100000111083'),

  /// Display: Liver
  /// Definition:
  value100000111084('100000111084'),

  /// Display: Lung
  /// Definition:
  value100000111085('100000111085'),

  /// Display: Lymph nodes
  /// Definition:
  value100000111086('100000111086'),

  /// Display: Mammary gland
  /// Definition:
  value100000111087('100000111087'),

  /// Display: Udder
  /// Definition:
  value100000111088('100000111088'),

  /// Display: Mammary tumour
  /// Definition:
  value100000111089('100000111089'),

  /// Display: Meat extract
  /// Definition:
  value100000111090('100000111090'),

  /// Display: Nasopharyngeal
  /// Definition:
  value100000111091('100000111091'),

  /// Display: Nictitating membrane
  /// Definition:
  value100000111092('100000111092'),

  /// Display: Nasal mucosa
  /// Definition:
  value100000111093('100000111093'),

  /// Display: Ovary
  /// Definition:
  value100000111094('100000111094'),

  /// Display: Pancreas
  /// Definition:
  value100000111095('100000111095'),

  /// Display: Peripheral nerves
  /// Definition:
  value100000111096('100000111096'),

  /// Display: Pituitary gland
  /// Definition:
  value100000111097('100000111097'),

  /// Display: Placenta
  /// Definition:
  value100000111098('100000111098'),

  /// Display: Prostate
  /// Definition:
  value100000111099('100000111099'),

  /// Display: Epididymis
  /// Definition:
  value100000111100('100000111100'),

  /// Display: Seminal vesicle
  /// Definition:
  value100000111101('100000111101'),

  /// Display: Rennet, calf
  /// Definition:
  value100000111102('100000111102'),

  /// Display: Retina
  /// Definition:
  value100000111103('100000111103'),

  /// Display: Optic nerve
  /// Definition:
  value100000111104('100000111104'),

  /// Display: Salivary gland
  /// Definition:
  value100000111105('100000111105'),

  /// Display: Shank
  /// Definition:
  value100000111106('100000111106'),

  /// Display: Skeletal muscle
  /// Definition:
  value100000111107('100000111107'),

  /// Display: Skin
  /// Definition:
  value100000111108('100000111108'),

  /// Display: Spinal ganglia
  /// Definition:
  value100000111109('100000111109'),

  /// Display: Spinal cord
  /// Definition:
  value100000111110('100000111110'),

  /// Display: Spleen
  /// Definition:
  value100000111111('100000111111'),

  /// Display: Stomach
  /// Definition:
  value100000111112('100000111112'),

  /// Display: Abomasum
  /// Definition:
  value100000111113('100000111113'),

  /// Display: Submaxillary glands
  /// Definition:
  value100000111114('100000111114'),

  /// Display: Tallow
  /// Definition:
  value100000111115('100000111115'),

  /// Display: Tendon
  /// Definition:
  value100000111116('100000111116'),

  /// Display: Testis
  /// Definition:
  value100000111117('100000111117'),

  /// Display: Thymus
  /// Definition:
  value100000111118('100000111118'),

  /// Display: Thyroid gland
  /// Definition:
  value100000111119('100000111119'),

  /// Display: Tongue
  /// Definition:
  value100000111120('100000111120'),

  /// Display: Tonsil
  /// Definition:
  value100000111121('100000111121'),

  /// Display: Trachea
  /// Definition:
  value100000111122('100000111122'),

  /// Display: Trigeminal ganglia
  /// Definition:
  value100000111123('100000111123'),

  /// Display: Tripe
  /// Definition:
  value100000111124('100000111124'),

  /// Display: Uterus (Non-gravid)
  /// Definition:
  value100000111125('100000111125'),

  /// Display: Wool
  /// Definition:
  value100000111126('100000111126'),

  /// Display: Ascites fluid
  /// Definition:
  value100000111127('100000111127'),

  /// Display: Bile
  /// Definition:
  value100000111128('100000111128'),

  /// Display: Blood1
  /// Definition:
  value100000111129('100000111129'),

  /// Display: Blood, foetal
  /// Definition:
  value100000111130('100000111130'),

  /// Display: Colostrum
  /// Definition:
  value100000111131('100000111131'),

  /// Display: Cord blood
  /// Definition:
  value100000111132('100000111132'),

  /// Display: CSF
  /// Definition:
  value100000111133('100000111133'),

  /// Display: Faeces
  /// Definition:
  value100000111134('100000111134'),

  /// Display: Milk
  /// Definition:
  value100000111135('100000111135'),

  /// Display: Nasal mucus
  /// Definition:
  value100000111136('100000111136'),

  /// Display: Placenta fluids
  /// Definition:
  value100000111137('100000111137'),

  /// Display: Plasma
  /// Definition:
  value100000111138('100000111138'),

  /// Display: Saliva
  /// Definition:
  value100000111139('100000111139'),

  /// Display: Secretion from bees
  /// Definition:
  value100000111140('100000111140'),

  /// Display: Semen
  /// Definition:
  value100000111141('100000111141'),

  /// Display: Serum, calf
  /// Definition:
  value100000111142('100000111142'),

  /// Display: Serum, donor adult bovine
  /// Definition:
  value100000111143('100000111143'),

  /// Display: Serum, donor calf
  /// Definition:
  value100000111144('100000111144'),

  /// Display: Serum, foetal bovine
  /// Definition:
  value100000111145('100000111145'),

  /// Display: Serum, newborn calf
  /// Definition:
  value100000111146('100000111146'),

  /// Display: Serum/plasma derivate, adult bovine
  /// Definition:
  value100000111147('100000111147'),

  /// Display: Serum/plasma, adult bovine
  /// Definition:
  value100000111148('100000111148'),

  /// Display: Sweat
  /// Definition:
  value100000111149('100000111149'),

  /// Display: Tears
  /// Definition:
  value100000111150('100000111150'),

  /// Display: Urine
  /// Definition:
  value100000111151('100000111151'),

  /// Display: Venom
  /// Definition:
  value100000111152('100000111152'),

  /// Display: Whey
  /// Definition:
  value100000111153('100000111153'),

  /// Display: Casein
  /// Definition:
  value100000111154('100000111154'),

  /// Display: Fermentation products
  /// Definition:
  value100000111155('100000111155'),

  /// Display: Gelatin
  /// Definition:
  value100000111156('100000111156'),

  /// Display: Lactose
  /// Definition:
  value100000111157('100000111157'),

  /// Display: Protein
  /// Definition:
  value100000111158('100000111158'),

  /// Display: Insulin
  /// Definition:
  value100000111159('100000111159'),

  /// Display: Collagen
  /// Definition:
  value100000111160('100000111160'),

  /// Display: Animal Charcoal
  /// Definition:
  value100000111161('100000111161'),

  /// Display: Peptones
  /// Definition:
  value100000111162('100000111162'),

  /// Display: Fatty acids
  /// Definition:
  value100000111163('100000111163'),

  /// Display: Glycerol
  /// Definition:
  value100000111164('100000111164'),

  /// Display: Not applicable
  /// Definition:
  value100000125717('100000125717'),

  /// Display: Meat and offal, milk
  /// Definition:
  value100000136180('100000136180'),

  /// Display: Agar blood
  /// Definition:
  value100000136181('100000136181'),

  /// Display: Casamino acid
  /// Definition:
  value100000136182('100000136182'),

  /// Display: Casein, hydrolysate
  /// Definition:
  value100000136183('100000136183'),

  /// Display: Casein, pancreatic digest
  /// Definition:
  value100000136184('100000136184'),

  /// Display: Casein, peptides N3
  /// Definition:
  value100000136185('100000136185'),

  /// Display: Cells
  /// Definition:
  value100000136186('100000136186'),

  /// Display: Cells, BHK21
  /// Definition:
  value100000136187('100000136187'),

  /// Display: Cells, CHO
  /// Definition:
  value100000136188('100000136188'),

  /// Display: Cells, CRFK
  /// Definition:
  value100000136189('100000136189'),

  /// Display: Cells, embryo SPF
  /// Definition:
  value100000136190('100000136190'),

  /// Display: Cells, IRC5
  /// Definition:
  value100000136191('100000136191'),

  /// Display: Cells, kidney
  /// Definition:
  value100000136192('100000136192'),

  /// Display: Cells, MDCK
  /// Definition:
  value100000136193('100000136193'),

  /// Display: Cells, red blood
  /// Definition:
  value100000136194('100000136194'),

  /// Display: Collagen, hydrolysate
  /// Definition:
  value100000136195('100000136195'),

  /// Display: Cholesterol
  /// Definition:
  value100000136196('100000136196'),

  /// Display: Egg, SPF embryonated
  /// Definition:
  value100000136197('100000136197'),

  /// Display: Enzyme
  /// Definition:
  value100000136198('100000136198'),

  /// Display: Enzyme, pancreatic enzymes
  /// Definition:
  value100000136199('100000136199'),

  /// Display: Enzyme, pancreatin 6NF
  /// Definition:
  value100000136200('100000136200'),

  /// Display: Enzyme, pepsin
  /// Definition:
  value100000136201('100000136201'),

  /// Display: Enzyme, pronase
  /// Definition:
  value100000136202('100000136202'),

  /// Display: Enzyme, trypsin
  /// Definition:
  value100000136203('100000136203'),

  /// Display: Heart, digest
  /// Definition:
  value100000136204('100000136204'),

  /// Display: Heart, extract
  /// Definition:
  value100000136205('100000136205'),

  /// Display: Intestinal mucosae
  /// Definition:
  value100000136206('100000136206'),

  /// Display: Lactalbumin hydrolysate
  /// Definition:
  value100000136207('100000136207'),

  /// Display: Liver, digest
  /// Definition:
  value100000136208('100000136208'),

  /// Display: Lymphocytes
  /// Definition:
  value100000136209('100000136209'),

  /// Display: Meat
  /// Definition:
  value100000136210('100000136210'),

  /// Display: Meat, enzymic hydrolysate
  /// Definition:
  value100000136211('100000136211'),

  /// Display: Medium, cooked meat
  /// Definition:
  value100000136212('100000136212'),

  /// Display: Medium, F10-199 medium
  /// Definition:
  value100000136213('100000136213'),

  /// Display: Medium, FMD culture medium
  /// Definition:
  value100000136214('100000136214'),

  /// Display: Medium, Glasgow MEM culture
  /// Definition:
  value100000136215('100000136215'),

  /// Display: Medium, LB Agar Lennox
  /// Definition:
  value100000136216('100000136216'),

  /// Display: Medium, LB Broth Lennox
  /// Definition:
  value100000136217('100000136217'),

  /// Display: Medium, modified thioglycolate medium
  /// Definition:
  value100000136218('100000136218'),

  /// Display: Medium, trypticase soy broth
  /// Definition:
  value100000136219('100000136219'),

  /// Display: Medium, tryptose phosphate broth
  /// Definition:
  value100000136220('100000136220'),

  /// Display: Milk, skimmed
  /// Definition:
  value100000136221('100000136221'),

  /// Display: Pancreas, extract
  /// Definition:
  value100000136222('100000136222'),

  /// Display: Peptones, casein hydrochloric peptone
  /// Definition:
  value100000136223('100000136223'),

  /// Display: Peptones, casein tryptic peptone
  /// Definition:
  value100000136224('100000136224'),

  /// Display: Pituitary extract
  /// Definition:
  value100000136225('100000136225'),

  /// Display: Rennet
  /// Definition:
  value100000136226('100000136226'),

  /// Display: Medium, nutrient broth
  /// Definition:
  value100000136227('100000136227'),

  /// Display: Medium, NZ-Amine
  /// Definition:
  value100000136228('100000136228'),

  /// Display: Medium, thioglycolate medium
  /// Definition:
  value100000136229('100000136229'),

  /// Display: Peptones, proteose peptone
  /// Definition:
  value100000136230('100000136230'),

  /// Display: Serum
  /// Definition:
  value100000136231('100000136231'),

  /// Display: Serum, albumin
  /// Definition:
  value100000136232('100000136232'),

  /// Display: Serum, Iron fortified calf
  /// Definition:
  value100000136233('100000136233'),

  /// Display: Skin, connective tissue and bone
  /// Definition:
  value100000136234('100000136234'),

  /// Display: Sperm
  /// Definition:
  value100000136235('100000136235'),

  /// Display: Tryptone
  /// Definition:
  value100000136236('100000136236'),

  /// Display: Meat, extract desiccated
  /// Definition:
  value100000136237('100000136237'),

  /// Display: Stomach mucosa
  /// Definition:
  value100000136247('100000136247'),

  /// Display: Transferin
  /// Definition:
  value100000136248('100000136248'),

  /// Display: Non-neural
  /// Definition:
  value100000136554('100000136554'),

  /// Display: Not specified
  /// Definition:
  value100000136555('100000136555'),

  /// Display: Organ tissue
  /// Definition:
  value100000136556('100000136556'),

  /// Display: Skin and fat in natural proportions
  /// Definition:
  value100000142485('100000142485'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const AnimalTissueType(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [AnimalTissueType] instances.
  static AnimalTissueType fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AnimalTissueType.elementOnly.withElement(
        element,
      );
    }
    return AnimalTissueType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  AnimalTissueType withElement(Element? newElement) {
    return AnimalTissueType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
