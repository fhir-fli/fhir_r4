import 'package:json_annotation/json_annotation.dart';

/// A tissue type of an animal.
enum AnimalTissueType {
  /// Display: All relevant tissues
  @JsonValue('100000072091')
  value100000072091,

  /// Display: Fat
  @JsonValue('100000072092')
  value100000072092,

  /// Display: Honey
  @JsonValue('100000072093')
  value100000072093,

  /// Display: Liver
  @JsonValue('100000072094')
  value100000072094,

  /// Display: Fresh Milk
  @JsonValue('100000072095')
  value100000072095,

  /// Display: Muscle and skin in natural proportions
  @JsonValue('100000072096')
  value100000072096,

  /// Display: Eggs
  @JsonValue('100000072104')
  value100000072104,

  /// Display: Skin and fat
  @JsonValue('100000072105')
  value100000072105,

  /// Display: Kidney
  @JsonValue('100000072106')
  value100000072106,

  /// Display: Meat and offal
  @JsonValue('100000072107')
  value100000072107,

  /// Display: Muscle
  @JsonValue('100000072108')
  value100000072108,

  /// Display: Unspecified
  @JsonValue('100000072109')
  value100000072109,

  /// Display: Adipose tissue
  @JsonValue('100000111053')
  value100000111053,

  /// Display: Adrenal
  @JsonValue('100000111054')
  value100000111054,

  /// Display: Blood vessels
  @JsonValue('100000111055')
  value100000111055,

  /// Display: Bone
  @JsonValue('100000111056')
  value100000111056,

  /// Display: Bone marrow
  @JsonValue('100000111057')
  value100000111057,

  /// Display: Brain
  @JsonValue('100000111058')
  value100000111058,

  /// Display: Connective tissue
  @JsonValue('100000111059')
  value100000111059,

  /// Display: Cornea
  @JsonValue('100000111060')
  value100000111060,

  /// Display: Dental pulp
  @JsonValue('100000111061')
  value100000111061,

  /// Display: Duodenum
  @JsonValue('100000111062')
  value100000111062,

  /// Display: Dura mater
  @JsonValue('100000111063')
  value100000111063,

  /// Display: Egg, embryonated
  @JsonValue('100000111064')
  value100000111064,

  /// Display: Egg
  @JsonValue('100000111065')
  value100000111065,

  /// Display: Egg white
  @JsonValue('100000111066')
  value100000111066,

  /// Display: Egg yolk
  @JsonValue('100000111067')
  value100000111067,

  /// Display: Embryos
  @JsonValue('100000111068')
  value100000111068,

  /// Display: Enteric plexuses
  @JsonValue('100000111069')
  value100000111069,

  /// Display: Esophagus
  @JsonValue('100000111070')
  value100000111070,

  /// Display: Feathers
  @JsonValue('100000111071')
  value100000111071,

  /// Display: Foetus
  @JsonValue('100000111072')
  value100000111072,

  /// Display: Fore-stomach (ruminants only)
  @JsonValue('100000111073')
  value100000111073,

  /// Display: Gingival tissue
  @JsonValue('100000111074')
  value100000111074,

  /// Display: Hair
  @JsonValue('100000111075')
  value100000111075,

  /// Display: Heart/pericardium
  @JsonValue('100000111076')
  value100000111076,

  /// Display: Hide
  @JsonValue('100000111077')
  value100000111077,

  /// Display: Hooves
  @JsonValue('100000111078')
  value100000111078,

  /// Display: Ileum
  @JsonValue('100000111079')
  value100000111079,

  /// Display: Jejunum
  @JsonValue('100000111080')
  value100000111080,

  /// Display: Kidney
  @JsonValue('100000111081')
  value100000111081,

  /// Display: Lard/lard oil
  @JsonValue('100000111082')
  value100000111082,

  /// Display: Large intestine
  @JsonValue('100000111083')
  value100000111083,

  /// Display: Liver
  @JsonValue('100000111084')
  value100000111084,

  /// Display: Lung
  @JsonValue('100000111085')
  value100000111085,

  /// Display: Lymph nodes
  @JsonValue('100000111086')
  value100000111086,

  /// Display: Mammary gland
  @JsonValue('100000111087')
  value100000111087,

  /// Display: Udder
  @JsonValue('100000111088')
  value100000111088,

  /// Display: Mammary tumour
  @JsonValue('100000111089')
  value100000111089,

  /// Display: Meat extract
  @JsonValue('100000111090')
  value100000111090,

  /// Display: Nasopharyngeal
  @JsonValue('100000111091')
  value100000111091,

  /// Display: Nictitating membrane
  @JsonValue('100000111092')
  value100000111092,

  /// Display: Nasal mucosa
  @JsonValue('100000111093')
  value100000111093,

  /// Display: Ovary
  @JsonValue('100000111094')
  value100000111094,

  /// Display: Pancreas
  @JsonValue('100000111095')
  value100000111095,

  /// Display: Peripheral nerves
  @JsonValue('100000111096')
  value100000111096,

  /// Display: Pituitary gland
  @JsonValue('100000111097')
  value100000111097,

  /// Display: Placenta
  @JsonValue('100000111098')
  value100000111098,

  /// Display: Prostate
  @JsonValue('100000111099')
  value100000111099,

  /// Display: Epididymis
  @JsonValue('100000111100')
  value100000111100,

  /// Display: Seminal vesicle
  @JsonValue('100000111101')
  value100000111101,

  /// Display: Rennet, calf
  @JsonValue('100000111102')
  value100000111102,

  /// Display: Retina
  @JsonValue('100000111103')
  value100000111103,

  /// Display: Optic nerve
  @JsonValue('100000111104')
  value100000111104,

  /// Display: Salivary gland
  @JsonValue('100000111105')
  value100000111105,

  /// Display: Shank
  @JsonValue('100000111106')
  value100000111106,

  /// Display: Skeletal muscle
  @JsonValue('100000111107')
  value100000111107,

  /// Display: Skin
  @JsonValue('100000111108')
  value100000111108,

  /// Display: Spinal ganglia
  @JsonValue('100000111109')
  value100000111109,

  /// Display: Spinal cord
  @JsonValue('100000111110')
  value100000111110,

  /// Display: Spleen
  @JsonValue('100000111111')
  value100000111111,

  /// Display: Stomach
  @JsonValue('100000111112')
  value100000111112,

  /// Display: Abomasum
  @JsonValue('100000111113')
  value100000111113,

  /// Display: Submaxillary glands
  @JsonValue('100000111114')
  value100000111114,

  /// Display: Tallow
  @JsonValue('100000111115')
  value100000111115,

  /// Display: Tendon
  @JsonValue('100000111116')
  value100000111116,

  /// Display: Testis
  @JsonValue('100000111117')
  value100000111117,

  /// Display: Thymus
  @JsonValue('100000111118')
  value100000111118,

  /// Display: Thyroid gland
  @JsonValue('100000111119')
  value100000111119,

  /// Display: Tongue
  @JsonValue('100000111120')
  value100000111120,

  /// Display: Tonsil
  @JsonValue('100000111121')
  value100000111121,

  /// Display: Trachea
  @JsonValue('100000111122')
  value100000111122,

  /// Display: Trigeminal ganglia
  @JsonValue('100000111123')
  value100000111123,

  /// Display: Tripe
  @JsonValue('100000111124')
  value100000111124,

  /// Display: Uterus (Non-gravid)
  @JsonValue('100000111125')
  value100000111125,

  /// Display: Wool
  @JsonValue('100000111126')
  value100000111126,

  /// Display: Ascites fluid
  @JsonValue('100000111127')
  value100000111127,

  /// Display: Bile
  @JsonValue('100000111128')
  value100000111128,

  /// Display: Blood1
  @JsonValue('100000111129')
  value100000111129,

  /// Display: Blood, foetal
  @JsonValue('100000111130')
  value100000111130,

  /// Display: Colostrum
  @JsonValue('100000111131')
  value100000111131,

  /// Display: Cord blood
  @JsonValue('100000111132')
  value100000111132,

  /// Display: CSF
  @JsonValue('100000111133')
  value100000111133,

  /// Display: Faeces
  @JsonValue('100000111134')
  value100000111134,

  /// Display: Milk
  @JsonValue('100000111135')
  value100000111135,

  /// Display: Nasal mucus
  @JsonValue('100000111136')
  value100000111136,

  /// Display: Placenta fluids
  @JsonValue('100000111137')
  value100000111137,

  /// Display: Plasma
  @JsonValue('100000111138')
  value100000111138,

  /// Display: Saliva
  @JsonValue('100000111139')
  value100000111139,

  /// Display: Secretion from bees
  @JsonValue('100000111140')
  value100000111140,

  /// Display: Semen
  @JsonValue('100000111141')
  value100000111141,

  /// Display: Serum, calf
  @JsonValue('100000111142')
  value100000111142,

  /// Display: Serum, donor adult bovine
  @JsonValue('100000111143')
  value100000111143,

  /// Display: Serum, donor calf
  @JsonValue('100000111144')
  value100000111144,

  /// Display: Serum, foetal bovine
  @JsonValue('100000111145')
  value100000111145,

  /// Display: Serum, newborn calf
  @JsonValue('100000111146')
  value100000111146,

  /// Display: Serum/plasma derivate, adult bovine
  @JsonValue('100000111147')
  value100000111147,

  /// Display: Serum/plasma, adult bovine
  @JsonValue('100000111148')
  value100000111148,

  /// Display: Sweat
  @JsonValue('100000111149')
  value100000111149,

  /// Display: Tears
  @JsonValue('100000111150')
  value100000111150,

  /// Display: Urine
  @JsonValue('100000111151')
  value100000111151,

  /// Display: Venom
  @JsonValue('100000111152')
  value100000111152,

  /// Display: Whey
  @JsonValue('100000111153')
  value100000111153,

  /// Display: Casein
  @JsonValue('100000111154')
  value100000111154,

  /// Display: Fermentation products
  @JsonValue('100000111155')
  value100000111155,

  /// Display: Gelatin
  @JsonValue('100000111156')
  value100000111156,

  /// Display: Lactose
  @JsonValue('100000111157')
  value100000111157,

  /// Display: Protein
  @JsonValue('100000111158')
  value100000111158,

  /// Display: Insulin
  @JsonValue('100000111159')
  value100000111159,

  /// Display: Collagen
  @JsonValue('100000111160')
  value100000111160,

  /// Display: Animal Charcoal
  @JsonValue('100000111161')
  value100000111161,

  /// Display: Peptones
  @JsonValue('100000111162')
  value100000111162,

  /// Display: Fatty acids
  @JsonValue('100000111163')
  value100000111163,

  /// Display: Glycerol
  @JsonValue('100000111164')
  value100000111164,

  /// Display: Not applicable
  @JsonValue('100000125717')
  value100000125717,

  /// Display: Meat and offal, milk
  @JsonValue('100000136180')
  value100000136180,

  /// Display: Agar blood
  @JsonValue('100000136181')
  value100000136181,

  /// Display: Casamino acid
  @JsonValue('100000136182')
  value100000136182,

  /// Display: Casein, hydrolysate
  @JsonValue('100000136183')
  value100000136183,

  /// Display: Casein, pancreatic digest
  @JsonValue('100000136184')
  value100000136184,

  /// Display: Casein, peptides N3
  @JsonValue('100000136185')
  value100000136185,

  /// Display: Cells
  @JsonValue('100000136186')
  value100000136186,

  /// Display: Cells, BHK21
  @JsonValue('100000136187')
  value100000136187,

  /// Display: Cells, CHO
  @JsonValue('100000136188')
  value100000136188,

  /// Display: Cells, CRFK
  @JsonValue('100000136189')
  value100000136189,

  /// Display: Cells, embryo SPF
  @JsonValue('100000136190')
  value100000136190,

  /// Display: Cells, IRC5
  @JsonValue('100000136191')
  value100000136191,

  /// Display: Cells, kidney
  @JsonValue('100000136192')
  value100000136192,

  /// Display: Cells, MDCK
  @JsonValue('100000136193')
  value100000136193,

  /// Display: Cells, red blood
  @JsonValue('100000136194')
  value100000136194,

  /// Display: Collagen, hydrolysate
  @JsonValue('100000136195')
  value100000136195,

  /// Display: Cholesterol
  @JsonValue('100000136196')
  value100000136196,

  /// Display: Egg, SPF embryonated
  @JsonValue('100000136197')
  value100000136197,

  /// Display: Enzyme
  @JsonValue('100000136198')
  value100000136198,

  /// Display: Enzyme, pancreatic enzymes
  @JsonValue('100000136199')
  value100000136199,

  /// Display: Enzyme, pancreatin 6NF
  @JsonValue('100000136200')
  value100000136200,

  /// Display: Enzyme, pepsin
  @JsonValue('100000136201')
  value100000136201,

  /// Display: Enzyme, pronase
  @JsonValue('100000136202')
  value100000136202,

  /// Display: Enzyme, trypsin
  @JsonValue('100000136203')
  value100000136203,

  /// Display: Heart, digest
  @JsonValue('100000136204')
  value100000136204,

  /// Display: Heart, extract
  @JsonValue('100000136205')
  value100000136205,

  /// Display: Intestinal mucosae
  @JsonValue('100000136206')
  value100000136206,

  /// Display: Lactalbumin hydrolysate
  @JsonValue('100000136207')
  value100000136207,

  /// Display: Liver, digest
  @JsonValue('100000136208')
  value100000136208,

  /// Display: Lymphocytes
  @JsonValue('100000136209')
  value100000136209,

  /// Display: Meat
  @JsonValue('100000136210')
  value100000136210,

  /// Display: Meat, enzymic hydrolysate
  @JsonValue('100000136211')
  value100000136211,

  /// Display: Medium, cooked meat
  @JsonValue('100000136212')
  value100000136212,

  /// Display: Medium, F10-199 medium
  @JsonValue('100000136213')
  value100000136213,

  /// Display: Medium, FMD culture medium
  @JsonValue('100000136214')
  value100000136214,

  /// Display: Medium, Glasgow MEM culture
  @JsonValue('100000136215')
  value100000136215,

  /// Display: Medium, LB Agar Lennox
  @JsonValue('100000136216')
  value100000136216,

  /// Display: Medium, LB Broth Lennox
  @JsonValue('100000136217')
  value100000136217,

  /// Display: Medium, modified thioglycolate medium
  @JsonValue('100000136218')
  value100000136218,

  /// Display: Medium, trypticase soy broth
  @JsonValue('100000136219')
  value100000136219,

  /// Display: Medium, tryptose phosphate broth
  @JsonValue('100000136220')
  value100000136220,

  /// Display: Milk, skimmed
  @JsonValue('100000136221')
  value100000136221,

  /// Display: Pancreas, extract
  @JsonValue('100000136222')
  value100000136222,

  /// Display: Peptones, casein hydrochloric peptone
  @JsonValue('100000136223')
  value100000136223,

  /// Display: Peptones, casein tryptic peptone
  @JsonValue('100000136224')
  value100000136224,

  /// Display: Pituitary extract
  @JsonValue('100000136225')
  value100000136225,

  /// Display: Rennet
  @JsonValue('100000136226')
  value100000136226,

  /// Display: Medium, nutrient broth
  @JsonValue('100000136227')
  value100000136227,

  /// Display: Medium, NZ-Amine
  @JsonValue('100000136228')
  value100000136228,

  /// Display: Medium, thioglycolate medium
  @JsonValue('100000136229')
  value100000136229,

  /// Display: Peptones, proteose peptone
  @JsonValue('100000136230')
  value100000136230,

  /// Display: Serum
  @JsonValue('100000136231')
  value100000136231,

  /// Display: Serum, albumin
  @JsonValue('100000136232')
  value100000136232,

  /// Display: Serum, Iron fortified calf
  @JsonValue('100000136233')
  value100000136233,

  /// Display: Skin, connective tissue and bone
  @JsonValue('100000136234')
  value100000136234,

  /// Display: Sperm
  @JsonValue('100000136235')
  value100000136235,

  /// Display: Tryptone
  @JsonValue('100000136236')
  value100000136236,

  /// Display: Meat, extract desiccated
  @JsonValue('100000136237')
  value100000136237,

  /// Display: Stomach mucosa
  @JsonValue('100000136247')
  value100000136247,

  /// Display: Transferin
  @JsonValue('100000136248')
  value100000136248,

  /// Display: Non-neural
  @JsonValue('100000136554')
  value100000136554,

  /// Display: Not specified
  @JsonValue('100000136555')
  value100000136555,

  /// Display: Organ tissue
  @JsonValue('100000136556')
  value100000136556,

  /// Display: Skin and fat in natural proportions
  @JsonValue('100000142485')
  value100000142485,
  ;

  @override
  String toString() {
    switch (this) {
      case value100000072091:
        return '100000072091';
      case value100000072092:
        return '100000072092';
      case value100000072093:
        return '100000072093';
      case value100000072094:
        return '100000072094';
      case value100000072095:
        return '100000072095';
      case value100000072096:
        return '100000072096';
      case value100000072104:
        return '100000072104';
      case value100000072105:
        return '100000072105';
      case value100000072106:
        return '100000072106';
      case value100000072107:
        return '100000072107';
      case value100000072108:
        return '100000072108';
      case value100000072109:
        return '100000072109';
      case value100000111053:
        return '100000111053';
      case value100000111054:
        return '100000111054';
      case value100000111055:
        return '100000111055';
      case value100000111056:
        return '100000111056';
      case value100000111057:
        return '100000111057';
      case value100000111058:
        return '100000111058';
      case value100000111059:
        return '100000111059';
      case value100000111060:
        return '100000111060';
      case value100000111061:
        return '100000111061';
      case value100000111062:
        return '100000111062';
      case value100000111063:
        return '100000111063';
      case value100000111064:
        return '100000111064';
      case value100000111065:
        return '100000111065';
      case value100000111066:
        return '100000111066';
      case value100000111067:
        return '100000111067';
      case value100000111068:
        return '100000111068';
      case value100000111069:
        return '100000111069';
      case value100000111070:
        return '100000111070';
      case value100000111071:
        return '100000111071';
      case value100000111072:
        return '100000111072';
      case value100000111073:
        return '100000111073';
      case value100000111074:
        return '100000111074';
      case value100000111075:
        return '100000111075';
      case value100000111076:
        return '100000111076';
      case value100000111077:
        return '100000111077';
      case value100000111078:
        return '100000111078';
      case value100000111079:
        return '100000111079';
      case value100000111080:
        return '100000111080';
      case value100000111081:
        return '100000111081';
      case value100000111082:
        return '100000111082';
      case value100000111083:
        return '100000111083';
      case value100000111084:
        return '100000111084';
      case value100000111085:
        return '100000111085';
      case value100000111086:
        return '100000111086';
      case value100000111087:
        return '100000111087';
      case value100000111088:
        return '100000111088';
      case value100000111089:
        return '100000111089';
      case value100000111090:
        return '100000111090';
      case value100000111091:
        return '100000111091';
      case value100000111092:
        return '100000111092';
      case value100000111093:
        return '100000111093';
      case value100000111094:
        return '100000111094';
      case value100000111095:
        return '100000111095';
      case value100000111096:
        return '100000111096';
      case value100000111097:
        return '100000111097';
      case value100000111098:
        return '100000111098';
      case value100000111099:
        return '100000111099';
      case value100000111100:
        return '100000111100';
      case value100000111101:
        return '100000111101';
      case value100000111102:
        return '100000111102';
      case value100000111103:
        return '100000111103';
      case value100000111104:
        return '100000111104';
      case value100000111105:
        return '100000111105';
      case value100000111106:
        return '100000111106';
      case value100000111107:
        return '100000111107';
      case value100000111108:
        return '100000111108';
      case value100000111109:
        return '100000111109';
      case value100000111110:
        return '100000111110';
      case value100000111111:
        return '100000111111';
      case value100000111112:
        return '100000111112';
      case value100000111113:
        return '100000111113';
      case value100000111114:
        return '100000111114';
      case value100000111115:
        return '100000111115';
      case value100000111116:
        return '100000111116';
      case value100000111117:
        return '100000111117';
      case value100000111118:
        return '100000111118';
      case value100000111119:
        return '100000111119';
      case value100000111120:
        return '100000111120';
      case value100000111121:
        return '100000111121';
      case value100000111122:
        return '100000111122';
      case value100000111123:
        return '100000111123';
      case value100000111124:
        return '100000111124';
      case value100000111125:
        return '100000111125';
      case value100000111126:
        return '100000111126';
      case value100000111127:
        return '100000111127';
      case value100000111128:
        return '100000111128';
      case value100000111129:
        return '100000111129';
      case value100000111130:
        return '100000111130';
      case value100000111131:
        return '100000111131';
      case value100000111132:
        return '100000111132';
      case value100000111133:
        return '100000111133';
      case value100000111134:
        return '100000111134';
      case value100000111135:
        return '100000111135';
      case value100000111136:
        return '100000111136';
      case value100000111137:
        return '100000111137';
      case value100000111138:
        return '100000111138';
      case value100000111139:
        return '100000111139';
      case value100000111140:
        return '100000111140';
      case value100000111141:
        return '100000111141';
      case value100000111142:
        return '100000111142';
      case value100000111143:
        return '100000111143';
      case value100000111144:
        return '100000111144';
      case value100000111145:
        return '100000111145';
      case value100000111146:
        return '100000111146';
      case value100000111147:
        return '100000111147';
      case value100000111148:
        return '100000111148';
      case value100000111149:
        return '100000111149';
      case value100000111150:
        return '100000111150';
      case value100000111151:
        return '100000111151';
      case value100000111152:
        return '100000111152';
      case value100000111153:
        return '100000111153';
      case value100000111154:
        return '100000111154';
      case value100000111155:
        return '100000111155';
      case value100000111156:
        return '100000111156';
      case value100000111157:
        return '100000111157';
      case value100000111158:
        return '100000111158';
      case value100000111159:
        return '100000111159';
      case value100000111160:
        return '100000111160';
      case value100000111161:
        return '100000111161';
      case value100000111162:
        return '100000111162';
      case value100000111163:
        return '100000111163';
      case value100000111164:
        return '100000111164';
      case value100000125717:
        return '100000125717';
      case value100000136180:
        return '100000136180';
      case value100000136181:
        return '100000136181';
      case value100000136182:
        return '100000136182';
      case value100000136183:
        return '100000136183';
      case value100000136184:
        return '100000136184';
      case value100000136185:
        return '100000136185';
      case value100000136186:
        return '100000136186';
      case value100000136187:
        return '100000136187';
      case value100000136188:
        return '100000136188';
      case value100000136189:
        return '100000136189';
      case value100000136190:
        return '100000136190';
      case value100000136191:
        return '100000136191';
      case value100000136192:
        return '100000136192';
      case value100000136193:
        return '100000136193';
      case value100000136194:
        return '100000136194';
      case value100000136195:
        return '100000136195';
      case value100000136196:
        return '100000136196';
      case value100000136197:
        return '100000136197';
      case value100000136198:
        return '100000136198';
      case value100000136199:
        return '100000136199';
      case value100000136200:
        return '100000136200';
      case value100000136201:
        return '100000136201';
      case value100000136202:
        return '100000136202';
      case value100000136203:
        return '100000136203';
      case value100000136204:
        return '100000136204';
      case value100000136205:
        return '100000136205';
      case value100000136206:
        return '100000136206';
      case value100000136207:
        return '100000136207';
      case value100000136208:
        return '100000136208';
      case value100000136209:
        return '100000136209';
      case value100000136210:
        return '100000136210';
      case value100000136211:
        return '100000136211';
      case value100000136212:
        return '100000136212';
      case value100000136213:
        return '100000136213';
      case value100000136214:
        return '100000136214';
      case value100000136215:
        return '100000136215';
      case value100000136216:
        return '100000136216';
      case value100000136217:
        return '100000136217';
      case value100000136218:
        return '100000136218';
      case value100000136219:
        return '100000136219';
      case value100000136220:
        return '100000136220';
      case value100000136221:
        return '100000136221';
      case value100000136222:
        return '100000136222';
      case value100000136223:
        return '100000136223';
      case value100000136224:
        return '100000136224';
      case value100000136225:
        return '100000136225';
      case value100000136226:
        return '100000136226';
      case value100000136227:
        return '100000136227';
      case value100000136228:
        return '100000136228';
      case value100000136229:
        return '100000136229';
      case value100000136230:
        return '100000136230';
      case value100000136231:
        return '100000136231';
      case value100000136232:
        return '100000136232';
      case value100000136233:
        return '100000136233';
      case value100000136234:
        return '100000136234';
      case value100000136235:
        return '100000136235';
      case value100000136236:
        return '100000136236';
      case value100000136237:
        return '100000136237';
      case value100000136247:
        return '100000136247';
      case value100000136248:
        return '100000136248';
      case value100000136554:
        return '100000136554';
      case value100000136555:
        return '100000136555';
      case value100000136556:
        return '100000136556';
      case value100000142485:
        return '100000142485';
    }
  }

  String toJson() => toString();
  static AnimalTissueType fromString(String str) {
    switch (str) {
      case '100000072091':
        return AnimalTissueType.value100000072091;
      case '100000072092':
        return AnimalTissueType.value100000072092;
      case '100000072093':
        return AnimalTissueType.value100000072093;
      case '100000072094':
        return AnimalTissueType.value100000072094;
      case '100000072095':
        return AnimalTissueType.value100000072095;
      case '100000072096':
        return AnimalTissueType.value100000072096;
      case '100000072104':
        return AnimalTissueType.value100000072104;
      case '100000072105':
        return AnimalTissueType.value100000072105;
      case '100000072106':
        return AnimalTissueType.value100000072106;
      case '100000072107':
        return AnimalTissueType.value100000072107;
      case '100000072108':
        return AnimalTissueType.value100000072108;
      case '100000072109':
        return AnimalTissueType.value100000072109;
      case '100000111053':
        return AnimalTissueType.value100000111053;
      case '100000111054':
        return AnimalTissueType.value100000111054;
      case '100000111055':
        return AnimalTissueType.value100000111055;
      case '100000111056':
        return AnimalTissueType.value100000111056;
      case '100000111057':
        return AnimalTissueType.value100000111057;
      case '100000111058':
        return AnimalTissueType.value100000111058;
      case '100000111059':
        return AnimalTissueType.value100000111059;
      case '100000111060':
        return AnimalTissueType.value100000111060;
      case '100000111061':
        return AnimalTissueType.value100000111061;
      case '100000111062':
        return AnimalTissueType.value100000111062;
      case '100000111063':
        return AnimalTissueType.value100000111063;
      case '100000111064':
        return AnimalTissueType.value100000111064;
      case '100000111065':
        return AnimalTissueType.value100000111065;
      case '100000111066':
        return AnimalTissueType.value100000111066;
      case '100000111067':
        return AnimalTissueType.value100000111067;
      case '100000111068':
        return AnimalTissueType.value100000111068;
      case '100000111069':
        return AnimalTissueType.value100000111069;
      case '100000111070':
        return AnimalTissueType.value100000111070;
      case '100000111071':
        return AnimalTissueType.value100000111071;
      case '100000111072':
        return AnimalTissueType.value100000111072;
      case '100000111073':
        return AnimalTissueType.value100000111073;
      case '100000111074':
        return AnimalTissueType.value100000111074;
      case '100000111075':
        return AnimalTissueType.value100000111075;
      case '100000111076':
        return AnimalTissueType.value100000111076;
      case '100000111077':
        return AnimalTissueType.value100000111077;
      case '100000111078':
        return AnimalTissueType.value100000111078;
      case '100000111079':
        return AnimalTissueType.value100000111079;
      case '100000111080':
        return AnimalTissueType.value100000111080;
      case '100000111081':
        return AnimalTissueType.value100000111081;
      case '100000111082':
        return AnimalTissueType.value100000111082;
      case '100000111083':
        return AnimalTissueType.value100000111083;
      case '100000111084':
        return AnimalTissueType.value100000111084;
      case '100000111085':
        return AnimalTissueType.value100000111085;
      case '100000111086':
        return AnimalTissueType.value100000111086;
      case '100000111087':
        return AnimalTissueType.value100000111087;
      case '100000111088':
        return AnimalTissueType.value100000111088;
      case '100000111089':
        return AnimalTissueType.value100000111089;
      case '100000111090':
        return AnimalTissueType.value100000111090;
      case '100000111091':
        return AnimalTissueType.value100000111091;
      case '100000111092':
        return AnimalTissueType.value100000111092;
      case '100000111093':
        return AnimalTissueType.value100000111093;
      case '100000111094':
        return AnimalTissueType.value100000111094;
      case '100000111095':
        return AnimalTissueType.value100000111095;
      case '100000111096':
        return AnimalTissueType.value100000111096;
      case '100000111097':
        return AnimalTissueType.value100000111097;
      case '100000111098':
        return AnimalTissueType.value100000111098;
      case '100000111099':
        return AnimalTissueType.value100000111099;
      case '100000111100':
        return AnimalTissueType.value100000111100;
      case '100000111101':
        return AnimalTissueType.value100000111101;
      case '100000111102':
        return AnimalTissueType.value100000111102;
      case '100000111103':
        return AnimalTissueType.value100000111103;
      case '100000111104':
        return AnimalTissueType.value100000111104;
      case '100000111105':
        return AnimalTissueType.value100000111105;
      case '100000111106':
        return AnimalTissueType.value100000111106;
      case '100000111107':
        return AnimalTissueType.value100000111107;
      case '100000111108':
        return AnimalTissueType.value100000111108;
      case '100000111109':
        return AnimalTissueType.value100000111109;
      case '100000111110':
        return AnimalTissueType.value100000111110;
      case '100000111111':
        return AnimalTissueType.value100000111111;
      case '100000111112':
        return AnimalTissueType.value100000111112;
      case '100000111113':
        return AnimalTissueType.value100000111113;
      case '100000111114':
        return AnimalTissueType.value100000111114;
      case '100000111115':
        return AnimalTissueType.value100000111115;
      case '100000111116':
        return AnimalTissueType.value100000111116;
      case '100000111117':
        return AnimalTissueType.value100000111117;
      case '100000111118':
        return AnimalTissueType.value100000111118;
      case '100000111119':
        return AnimalTissueType.value100000111119;
      case '100000111120':
        return AnimalTissueType.value100000111120;
      case '100000111121':
        return AnimalTissueType.value100000111121;
      case '100000111122':
        return AnimalTissueType.value100000111122;
      case '100000111123':
        return AnimalTissueType.value100000111123;
      case '100000111124':
        return AnimalTissueType.value100000111124;
      case '100000111125':
        return AnimalTissueType.value100000111125;
      case '100000111126':
        return AnimalTissueType.value100000111126;
      case '100000111127':
        return AnimalTissueType.value100000111127;
      case '100000111128':
        return AnimalTissueType.value100000111128;
      case '100000111129':
        return AnimalTissueType.value100000111129;
      case '100000111130':
        return AnimalTissueType.value100000111130;
      case '100000111131':
        return AnimalTissueType.value100000111131;
      case '100000111132':
        return AnimalTissueType.value100000111132;
      case '100000111133':
        return AnimalTissueType.value100000111133;
      case '100000111134':
        return AnimalTissueType.value100000111134;
      case '100000111135':
        return AnimalTissueType.value100000111135;
      case '100000111136':
        return AnimalTissueType.value100000111136;
      case '100000111137':
        return AnimalTissueType.value100000111137;
      case '100000111138':
        return AnimalTissueType.value100000111138;
      case '100000111139':
        return AnimalTissueType.value100000111139;
      case '100000111140':
        return AnimalTissueType.value100000111140;
      case '100000111141':
        return AnimalTissueType.value100000111141;
      case '100000111142':
        return AnimalTissueType.value100000111142;
      case '100000111143':
        return AnimalTissueType.value100000111143;
      case '100000111144':
        return AnimalTissueType.value100000111144;
      case '100000111145':
        return AnimalTissueType.value100000111145;
      case '100000111146':
        return AnimalTissueType.value100000111146;
      case '100000111147':
        return AnimalTissueType.value100000111147;
      case '100000111148':
        return AnimalTissueType.value100000111148;
      case '100000111149':
        return AnimalTissueType.value100000111149;
      case '100000111150':
        return AnimalTissueType.value100000111150;
      case '100000111151':
        return AnimalTissueType.value100000111151;
      case '100000111152':
        return AnimalTissueType.value100000111152;
      case '100000111153':
        return AnimalTissueType.value100000111153;
      case '100000111154':
        return AnimalTissueType.value100000111154;
      case '100000111155':
        return AnimalTissueType.value100000111155;
      case '100000111156':
        return AnimalTissueType.value100000111156;
      case '100000111157':
        return AnimalTissueType.value100000111157;
      case '100000111158':
        return AnimalTissueType.value100000111158;
      case '100000111159':
        return AnimalTissueType.value100000111159;
      case '100000111160':
        return AnimalTissueType.value100000111160;
      case '100000111161':
        return AnimalTissueType.value100000111161;
      case '100000111162':
        return AnimalTissueType.value100000111162;
      case '100000111163':
        return AnimalTissueType.value100000111163;
      case '100000111164':
        return AnimalTissueType.value100000111164;
      case '100000125717':
        return AnimalTissueType.value100000125717;
      case '100000136180':
        return AnimalTissueType.value100000136180;
      case '100000136181':
        return AnimalTissueType.value100000136181;
      case '100000136182':
        return AnimalTissueType.value100000136182;
      case '100000136183':
        return AnimalTissueType.value100000136183;
      case '100000136184':
        return AnimalTissueType.value100000136184;
      case '100000136185':
        return AnimalTissueType.value100000136185;
      case '100000136186':
        return AnimalTissueType.value100000136186;
      case '100000136187':
        return AnimalTissueType.value100000136187;
      case '100000136188':
        return AnimalTissueType.value100000136188;
      case '100000136189':
        return AnimalTissueType.value100000136189;
      case '100000136190':
        return AnimalTissueType.value100000136190;
      case '100000136191':
        return AnimalTissueType.value100000136191;
      case '100000136192':
        return AnimalTissueType.value100000136192;
      case '100000136193':
        return AnimalTissueType.value100000136193;
      case '100000136194':
        return AnimalTissueType.value100000136194;
      case '100000136195':
        return AnimalTissueType.value100000136195;
      case '100000136196':
        return AnimalTissueType.value100000136196;
      case '100000136197':
        return AnimalTissueType.value100000136197;
      case '100000136198':
        return AnimalTissueType.value100000136198;
      case '100000136199':
        return AnimalTissueType.value100000136199;
      case '100000136200':
        return AnimalTissueType.value100000136200;
      case '100000136201':
        return AnimalTissueType.value100000136201;
      case '100000136202':
        return AnimalTissueType.value100000136202;
      case '100000136203':
        return AnimalTissueType.value100000136203;
      case '100000136204':
        return AnimalTissueType.value100000136204;
      case '100000136205':
        return AnimalTissueType.value100000136205;
      case '100000136206':
        return AnimalTissueType.value100000136206;
      case '100000136207':
        return AnimalTissueType.value100000136207;
      case '100000136208':
        return AnimalTissueType.value100000136208;
      case '100000136209':
        return AnimalTissueType.value100000136209;
      case '100000136210':
        return AnimalTissueType.value100000136210;
      case '100000136211':
        return AnimalTissueType.value100000136211;
      case '100000136212':
        return AnimalTissueType.value100000136212;
      case '100000136213':
        return AnimalTissueType.value100000136213;
      case '100000136214':
        return AnimalTissueType.value100000136214;
      case '100000136215':
        return AnimalTissueType.value100000136215;
      case '100000136216':
        return AnimalTissueType.value100000136216;
      case '100000136217':
        return AnimalTissueType.value100000136217;
      case '100000136218':
        return AnimalTissueType.value100000136218;
      case '100000136219':
        return AnimalTissueType.value100000136219;
      case '100000136220':
        return AnimalTissueType.value100000136220;
      case '100000136221':
        return AnimalTissueType.value100000136221;
      case '100000136222':
        return AnimalTissueType.value100000136222;
      case '100000136223':
        return AnimalTissueType.value100000136223;
      case '100000136224':
        return AnimalTissueType.value100000136224;
      case '100000136225':
        return AnimalTissueType.value100000136225;
      case '100000136226':
        return AnimalTissueType.value100000136226;
      case '100000136227':
        return AnimalTissueType.value100000136227;
      case '100000136228':
        return AnimalTissueType.value100000136228;
      case '100000136229':
        return AnimalTissueType.value100000136229;
      case '100000136230':
        return AnimalTissueType.value100000136230;
      case '100000136231':
        return AnimalTissueType.value100000136231;
      case '100000136232':
        return AnimalTissueType.value100000136232;
      case '100000136233':
        return AnimalTissueType.value100000136233;
      case '100000136234':
        return AnimalTissueType.value100000136234;
      case '100000136235':
        return AnimalTissueType.value100000136235;
      case '100000136236':
        return AnimalTissueType.value100000136236;
      case '100000136237':
        return AnimalTissueType.value100000136237;
      case '100000136247':
        return AnimalTissueType.value100000136247;
      case '100000136248':
        return AnimalTissueType.value100000136248;
      case '100000136554':
        return AnimalTissueType.value100000136554;
      case '100000136555':
        return AnimalTissueType.value100000136555;
      case '100000136556':
        return AnimalTissueType.value100000136556;
      case '100000142485':
        return AnimalTissueType.value100000142485;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static AnimalTissueType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
