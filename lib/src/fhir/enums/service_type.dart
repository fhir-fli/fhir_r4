import 'package:json_annotation/json_annotation.dart';

/// This value set defines an example set of codes of service-types.
enum ServiceType {
  /// Display: Adoption/Permanent Care Info/Support
  /// Definition: Adoption & permanent care information/support
  @JsonValue('1')
  value1,

  /// Display: Aged Care Assessment
  /// Definition: Aged care assessment
  @JsonValue('2')
  value2,

  /// Display: Aged Care Information/Referral
  /// Definition: Aged Care information/referral
  @JsonValue('3')
  value3,

  /// Display: Aged Residential Care
  /// Definition: Aged Residential Care
  @JsonValue('4')
  value4,

  /// Display: Case Management for Older Persons
  /// Definition: Case management for older persons
  @JsonValue('5')
  value5,

  /// Display: Delivered Meals (Meals On Wheels)
  /// Definition: Delivered meals (meals on wheels)
  @JsonValue('6')
  value6,

  /// Display: Friendly Visiting
  /// Definition: Friendly visiting
  @JsonValue('7')
  value7,

  /// Display: Home Care/Housekeeping Assistance
  /// Definition: Home care/housekeeping assistance
  @JsonValue('8')
  value8,

  /// Display: Home Maintenance and Repair
  /// Definition: Home maintenance and repair
  @JsonValue('9')
  value9,

  /// Display: Personal Alarms/Alerts
  /// Definition: Personal alarms/alerts
  @JsonValue('10')
  value10,

  /// Display: Personal Care for Older Persons
  /// Definition: Personal care for older persons
  @JsonValue('11')
  value11,

  /// Display: Planned Activity Groups
  /// Definition: Planned activity groups
  @JsonValue('12')
  value12,

  /// Display: Acupuncture
  /// Definition: Acupuncture
  @JsonValue('13')
  value13,

  /// Display: Alexander Technique Therapy
  /// Definition: Alexander technique therapy
  @JsonValue('14')
  value14,

  /// Display: Aromatherapy
  /// Definition: Aromatherapy
  @JsonValue('15')
  value15,

  /// Display: Biorhythm Services
  /// Definition: Biorhythm services
  @JsonValue('16')
  value16,

  /// Display: Bowen Therapy
  /// Definition: Bowen therapy
  @JsonValue('17')
  value17,

  /// Display: Chinese Herbal Medicine
  /// Definition: Chinese herbal medicine
  @JsonValue('18')
  value18,

  /// Display: Feldenkrais
  /// Definition: Feldenkrais
  @JsonValue('19')
  value19,

  /// Display: Homoeopathy
  /// Definition: Homoeopathy
  @JsonValue('20')
  value20,

  /// Display: Hydrotherapy
  /// Definition: Hydrotherapy
  @JsonValue('21')
  value21,

  /// Display: Hypnotherapy
  /// Definition: Hypnotherapy
  @JsonValue('22')
  value22,

  /// Display: Kinesiology
  /// Definition: Kinesiology
  @JsonValue('23')
  value23,

  /// Display: Magnetic Therapy
  /// Definition: Magnetic therapy
  @JsonValue('24')
  value24,

  /// Display: Massage Therapy
  /// Definition: Massage therapy
  @JsonValue('25')
  value25,

  /// Display: Meditation
  /// Definition: Meditation
  @JsonValue('26')
  value26,

  /// Display: Myotherapy
  /// Definition: Myotherapy
  @JsonValue('27')
  value27,

  /// Display: Naturopathy
  /// Definition: Naturopathy
  @JsonValue('28')
  value28,

  /// Display: Reflexology
  /// Definition: Reflexology
  @JsonValue('29')
  value29,

  /// Display: Reiki
  /// Definition: Reiki
  @JsonValue('30')
  value30,

  /// Display: Relaxation Therapy
  /// Definition: Relaxation therapy
  @JsonValue('31')
  value31,

  /// Display: Shiatsu
  /// Definition: Shiatsu
  @JsonValue('32')
  value32,

  /// Display: Western Herbal Medicine
  /// Definition: Western herbal medicine
  @JsonValue('33')
  value33,

  /// Display: Family Day care
  /// Definition: Family day care
  @JsonValue('34')
  value34,

  /// Display: Holiday Programs
  /// Definition: Holiday programs
  @JsonValue('35')
  value35,

  /// Display: Kindergarten Inclusion Support
  /// Definition: Kindergarten inclusion support for children with a disability
  @JsonValue('36')
  value36,

  /// Display: Kindergarten/Preschool
  /// Definition: Kindergarten/preschool
  @JsonValue('37')
  value37,

  /// Display: Long Day Child Care
  /// Definition: Long day child care
  @JsonValue('38')
  value38,

  /// Display: Occasional Child Care
  /// Definition: Occasional child care
  @JsonValue('39')
  value39,

  /// Display: Outside School Hours Care
  /// Definition: Outside school hours care
  @JsonValue('40')
  value40,

  /// Display: Children's Play Programs
  /// Definition: Children's play programs
  @JsonValue('41')
  value41,

  /// Display: Parenting/Family Support/Education
  /// Definition: Parenting & family management support/education
  @JsonValue('42')
  value42,

  /// Display: Playgroup
  /// Definition: Playgroup
  @JsonValue('43')
  value43,

  /// Display: School Nursing
  /// Definition: School nursing
  @JsonValue('44')
  value44,

  /// Display: Toy Library
  /// Definition: Toy library
  @JsonValue('45')
  value45,

  /// Display: Child Protection/Child Abuse Report
  /// Definition: Child protection/child abuse report
  @JsonValue('46')
  value46,

  /// Display: Foster Care
  /// Definition: Foster care
  @JsonValue('47')
  value47,

  /// Display: Residential/Out-of-Home Care
  /// Definition: Residential/ out of home care
  @JsonValue('48')
  value48,

  /// Display: Support - Young People Leaving Care
  /// Definition: Support for young people leaving care
  @JsonValue('49')
  value49,

  /// Display: Audiology
  /// Definition: Audiology
  @JsonValue('50')
  value50,

  /// Display: Blood Donation
  /// Definition: Blood donation
  @JsonValue('51')
  value51,

  /// Display: Chiropractic
  /// Definition: Chiropractic
  @JsonValue('52')
  value52,

  /// Display: Dietetics
  /// Definition: Dietetics
  @JsonValue('53')
  value53,

  /// Display: Family Planning
  /// Definition: Family planning
  @JsonValue('54')
  value54,

  /// Display: Health Advocacy/Liaison Service
  /// Definition: Health advocacy/Liaison service
  @JsonValue('55')
  value55,

  /// Display: Health Information/Referral
  /// Definition: Health information/referral
  @JsonValue('56')
  value56,

  /// Display: Immunization
  /// Definition: Immunization
  @JsonValue('57')
  value57,

  /// Display: Maternal & Child Health
  /// Definition: Maternal & child health
  @JsonValue('58')
  value58,

  /// Display: Nursing
  /// Definition: Nursing
  @JsonValue('59')
  value59,

  /// Display: Nutrition
  /// Definition: Nutrition
  @JsonValue('60')
  value60,

  /// Display: Occupational Therapy
  /// Definition: Occupational therapy
  @JsonValue('61')
  value61,

  /// Display: Optometry
  /// Definition: Optometry
  @JsonValue('62')
  value62,

  /// Display: Osteopathy
  /// Definition: Osteopathy
  @JsonValue('63')
  value63,

  /// Display: Pharmacy
  /// Definition: Pharmacy
  @JsonValue('64')
  value64,

  /// Display: Physiotherapy
  /// Definition: Physiotherapy
  @JsonValue('65')
  value65,

  /// Display: Podiatry
  /// Definition: Podiatry
  @JsonValue('66')
  value66,

  /// Display: Sexual Health
  /// Definition: Sexual health
  @JsonValue('67')
  value67,

  /// Display: Speech Pathology/Therapy
  /// Definition: Speech pathology/therapy
  @JsonValue('68')
  value68,

  /// Display: Bereavement Counselling
  /// Definition: Bereavement counselling
  @JsonValue('69')
  value69,

  /// Display: Crisis Counselling
  /// Definition: Crisis counselling
  @JsonValue('70')
  value70,

  /// Display: Family Counselling/Therapy
  /// Definition: Family counselling and/or family therapy
  @JsonValue('71')
  value71,

  /// Display: Family Violence Counselling
  /// Definition: Family violence counselling
  @JsonValue('72')
  value72,

  /// Display: Financial Counselling
  /// Definition: Financial counselling
  @JsonValue('73')
  value73,

  /// Display: Generalist Counselling
  /// Definition: Generalist counselling
  @JsonValue('74')
  value74,

  /// Display: Genetic Counselling
  /// Definition: Genetic counselling
  @JsonValue('75')
  value75,

  /// Display: Health Counselling
  /// Definition: Health counselling
  @JsonValue('76')
  value76,

  /// Display: Mediation
  /// Definition: Mediation
  @JsonValue('77')
  value77,

  /// Display: Problem Gambling Counselling
  /// Definition: Problem gambling counselling
  @JsonValue('78')
  value78,

  /// Display: Relationship Counselling
  /// Definition: Relationship counselling
  @JsonValue('79')
  value79,

  /// Display: Sexual Assault Counselling
  /// Definition: Sexual assault counselling
  @JsonValue('80')
  value80,

  /// Display: Trauma Counselling
  /// Definition: Trauma counselling
  @JsonValue('81')
  value81,

  /// Display: Victims of Crime Counselling
  /// Definition: Victims of crime counselling
  @JsonValue('82')
  value82,

  /// Display: Cemetery Operation
  /// Definition: Cemetery operation
  @JsonValue('83')
  value83,

  /// Display: Cremation
  /// Definition: Cremation
  @JsonValue('84')
  value84,

  /// Display: Death Service Information
  /// Definition: Death service information
  @JsonValue('85')
  value85,

  /// Display: Funeral Services
  /// Definition: Funeral services
  @JsonValue('86')
  value86,

  /// Display: Endodontic
  /// Definition: Endodontic
  @JsonValue('87')
  value87,

  /// Display: General Dental
  /// Definition: General dental
  @JsonValue('88')
  value88,

  /// Display: Oral Medicine
  /// Definition: Oral medicine
  @JsonValue('89')
  value89,

  /// Display: Oral Surgery
  /// Definition: Oral surgery
  @JsonValue('90')
  value90,

  /// Display: Orthodontic
  /// Definition: Orthodontic
  @JsonValue('91')
  value91,

  /// Display: Paediatric Dentistry
  /// Definition: Paediatric Dentistry
  @JsonValue('92')
  value92,

  /// Display: Periodontic
  /// Definition: Periodontic
  @JsonValue('93')
  value93,

  /// Display: Prosthodontic
  /// Definition: Prosthodontic
  @JsonValue('94')
  value94,

  /// Display: Acquired Brain Injury Info/Referral
  /// Definition: Acquired brain injury information/referral
  @JsonValue('95')
  value95,

  /// Display: Disability Advocacy
  /// Definition: Disability advocacy
  @JsonValue('96')
  value96,

  /// Display: Disability Aids & Equipment
  /// Definition: Disability aids & equipment
  @JsonValue('97')
  value97,

  /// Display: Disability Case Management
  /// Definition: Disability case management
  @JsonValue('98')
  value98,

  /// Display: Disability Day Programs/Activities
  /// Definition: Disability day programs & activities
  @JsonValue('99')
  value99,

  /// Display: Disability Information/Referral
  /// Definition: Disability information/referral
  @JsonValue('100')
  value100,

  /// Display: Disability Support Packages
  /// Definition: Disability support packages
  @JsonValue('101')
  value101,

  /// Display: Disability Supported Accommodation
  /// Definition: Disability supported accommodation
  @JsonValue('102')
  value102,

  /// Display: Early Childhood Intervention
  /// Definition: Early childhood intervention
  @JsonValue('103')
  value103,

  /// Display: Hearing Aids & Equipment
  /// Definition: Hearing aids & equipment
  @JsonValue('104')
  value104,

  /// Display: Drug and/or Alcohol Counselling
  /// Definition: Drug and/or alcohol counselling
  @JsonValue('105')
  value105,

  /// Display: Drug/Alcohol Information/Referral
  /// Definition: Drug and/or alcohol information/referral
  @JsonValue('106')
  value106,

  /// Display: Needle & Syringe Exchange
  /// Definition: Needle & Syringe exchange
  @JsonValue('107')
  value107,

  /// Display: Non-resid. Alcohol/Drug Treatment
  /// Definition: Non-residential alcohol and/or drug dependence treatment
  @JsonValue('108')
  value108,

  /// Display: Pharmacotherapy
  /// Definition: Pharmacotherapy (eg. methadone) program
  @JsonValue('109')
  value109,

  /// Display: Quit Program
  /// Definition: Quit program
  @JsonValue('110')
  value110,

  /// Display: Residential Alcohol/Drug Treatment
  /// Definition: Residential alcohol and/or drug dependence treatment
  @JsonValue('111')
  value111,

  /// Display: Adult/Community Education
  /// Definition: Adult/community education
  @JsonValue('112')
  value112,

  /// Display: Higher Education
  /// Definition: Higher education
  @JsonValue('113')
  value113,

  /// Display: Primary Education
  /// Definition: Primary education
  @JsonValue('114')
  value114,

  /// Display: Secondary Education
  /// Definition: Secondary education
  @JsonValue('115')
  value115,

  /// Display: Training & Vocational Education
  /// Definition: Training & vocational education
  @JsonValue('116')
  value116,

  /// Display: Emergency Medical
  /// Definition: Emergency medical
  @JsonValue('117')
  value117,

  /// Display: Employment Placement and/or Support
  /// Definition: Employment placement and/or support
  @JsonValue('118')
  value118,

  /// Display: Vocational Rehabilitation
  /// Definition: Vocational Rehabilitation
  @JsonValue('119')
  value119,

  /// Display: Work Safety/Accident Prevention
  /// Definition: Workplace safety and/or accident prevention
  @JsonValue('120')
  value120,

  /// Display: Financial Assistance
  /// Definition: Financial assistance
  @JsonValue('121')
  value121,

  /// Display: Financial Information/Advice
  /// Definition: Financial information/advice
  @JsonValue('122')
  value122,

  /// Display: Material Aid
  /// Definition: Material aid
  @JsonValue('123')
  value123,

  /// Display: General Practice
  /// Definition: General Practice/GP (doctor)
  @JsonValue('124')
  value124,

  /// Display: Accommodation Placement/Support
  /// Definition: Accommodation placement and/or support
  @JsonValue('125')
  value125,

  /// Display: Crisis/Emergency Accommodation
  /// Definition: Crisis/emergency accommodation
  @JsonValue('126')
  value126,

  /// Display: Homelessness Support
  /// Definition: Homelessness support
  @JsonValue('127')
  value127,

  /// Display: Housing Information/Referral
  /// Definition: Housing information/referral
  @JsonValue('128')
  value128,

  /// Display: Public Rental Housing
  /// Definition: Public rental housing
  @JsonValue('129')
  value129,

  /// Display: Interpreting/Multilingual Service
  /// Definition: Interpreting/Multilingual/Language service
  @JsonValue('130')
  value130,

  /// Display: Juvenile Justice
  /// Definition: Juvenile Justice
  @JsonValue('131')
  value131,

  /// Display: Legal Advocacy
  /// Definition: Legal advocacy
  @JsonValue('132')
  value132,

  /// Display: Legal Information/Advice/Referral
  /// Definition: Legal information/advice/referral
  @JsonValue('133')
  value133,

  /// Display: Mental Health Advocacy
  /// Definition: Mental health advocacy
  @JsonValue('134')
  value134,

  /// Display: Mental Health Assess/Triage/Crisis Response
  /// Definition: Mental health assessment/triage/crisis response
  @JsonValue('135')
  value135,

  /// Display: Mental Health Case Management
  /// Definition: Mental health case management/continuing care
  @JsonValue('136')
  value136,

  /// Display: Mental Health Information/Referral
  /// Definition: Mental health information/referral
  @JsonValue('137')
  value137,

  /// Display: Mental Health Inpatient Services
  /// Definition: Mental health inpatient services (hospital psychiatric unit) - requires referral
  @JsonValue('138')
  value138,

  /// Display: Mental Health Non-residential Rehab
  /// Definition: Mental health non-residential rehabilitation
  @JsonValue('139')
  value139,

  /// Display: Mental Health Residential Rehab/CCU
  /// Definition: Mental health residential rehabilitation/community care unit
  @JsonValue('140')
  value140,

  /// Display: Psychiatry (Requires Referral)
  /// Definition: Psychiatry (requires referral)
  @JsonValue('141')
  value141,

  /// Display: Psychology
  /// Definition: Psychology
  @JsonValue('142')
  value142,

  /// Display: Martial Arts
  /// Definition: Martial arts
  @JsonValue('143')
  value143,

  /// Display: Personal Fitness Training
  /// Definition: Personal fitness training
  @JsonValue('144')
  value144,

  /// Display: Physical Activity Group
  /// Definition: Physical activity group
  @JsonValue('145')
  value145,

  /// Display: Physical Activity Programs
  /// Definition: Physical activity programs
  @JsonValue('146')
  value146,

  /// Display: Physical Fitness Testing
  /// Definition: Physical fitness testing
  @JsonValue('147')
  value147,

  /// Display: Pilates
  /// Definition: Pilates
  @JsonValue('148')
  value148,

  /// Display: Self-Defence
  /// Definition: Self defence
  @JsonValue('149')
  value149,

  /// Display: Sporting Club
  /// Definition: Sporting club
  @JsonValue('150')
  value150,

  /// Display: Yoga
  /// Definition: Yoga
  @JsonValue('151')
  value151,

  /// Display: Food Safety
  /// Definition: Food safety
  @JsonValue('152')
  value152,

  /// Display: Health Regulatory /Inspection /Cert.
  /// Definition: Health regulatory, inspection and/or certification
  @JsonValue('153')
  value153,

  /// Display: Work Health/Safety Inspection/Cert.
  /// Definition: Workplace health and/or safety inspection and/or certification
  @JsonValue('154')
  value154,

  /// Display: Carer Support
  /// Definition: Carer support
  @JsonValue('155')
  value155,

  /// Display: Respite Care
  /// Definition: Respite care
  @JsonValue('156')
  value156,

  /// Display: Anatomical Pathology
  /// Definition: Anatomical Pathology (including Cytopathology & Forensic Pathology)
  @JsonValue('157')
  value157,

  /// Display: Pathology - Clinical Chemistry
  /// Definition: Pathology - Clinical Chemistry
  @JsonValue('158')
  value158,

  /// Display: Pathology - General
  /// Definition: Pathology - General
  @JsonValue('159')
  value159,

  /// Display: Pathology - Genetics
  /// Definition: Pathology - Genetics
  @JsonValue('160')
  value160,

  /// Display: Pathology - Haematology
  /// Definition: Pathology - Haematology
  @JsonValue('161')
  value161,

  /// Display: Pathology - Immunology
  /// Definition: Pathology - Immunology
  @JsonValue('162')
  value162,

  /// Display: Pathology - Microbiology
  /// Definition: Pathology - Microbiology
  @JsonValue('163')
  value163,

  /// Display: Anaesthesiology - Pain Medicine
  /// Definition: Anaesthesiology - Pain Medicine
  @JsonValue('164')
  value164,

  /// Display: Cardiology
  /// Definition: Cardiology
  @JsonValue('165')
  value165,

  /// Display: Clinical Genetics
  /// Definition: Clinical Genetics
  @JsonValue('166')
  value166,

  /// Display: Clinical Pharmacology
  /// Definition: Clinical Pharmacology
  @JsonValue('167')
  value167,

  /// Display: Dermatology
  /// Definition: Dermatology
  @JsonValue('168')
  value168,

  /// Display: Endocrinology
  /// Definition: Endocrinology
  @JsonValue('169')
  value169,

  /// Display: Gastroenterology & Hepatology
  /// Definition: Gastroenterology & Hepatology
  @JsonValue('170')
  value170,

  /// Display: Geriatric Medicine
  /// Definition: Geriatric medicine
  @JsonValue('171')
  value171,

  /// Display: Immunology & Allergy
  /// Definition: Immunology & Allergy
  @JsonValue('172')
  value172,

  /// Display: Infectious Diseases
  /// Definition: Infectious diseases
  @JsonValue('173')
  value173,

  /// Display: Intensive Care Medicine
  /// Definition: Intensive care medicine
  @JsonValue('174')
  value174,

  /// Display: Medical Oncology
  /// Definition: Medical Oncology
  @JsonValue('175')
  value175,

  /// Display: Nephrology
  /// Definition: Nephrology
  @JsonValue('176')
  value176,

  /// Display: Neurology
  /// Definition: Neurology
  @JsonValue('177')
  value177,

  /// Display: Occupational Medicine
  /// Definition: Occupational Medicine
  @JsonValue('178')
  value178,

  /// Display: Palliative Medicine
  /// Definition: Palliative Medicine
  @JsonValue('179')
  value179,

  /// Display: Public Health Medicine
  /// Definition: Public Health Medicine
  @JsonValue('180')
  value180,

  /// Display: Rehabilitation Medicine
  /// Definition: Rehabilitation Medicine
  @JsonValue('181')
  value181,

  /// Display: Rheumatology
  /// Definition: Rheumatology
  @JsonValue('182')
  value182,

  /// Display: Sleep Medicine
  /// Definition: Sleep Medicine
  @JsonValue('183')
  value183,

  /// Display: Thoracic Medicine
  /// Definition: Thoracic medicine
  @JsonValue('184')
  value184,

  /// Display: Gynaecological Oncology
  /// Definition: Gynaecological Oncology
  @JsonValue('185')
  value185,

  /// Display: Obstetrics & Gynaecology
  /// Definition: Obstetrics & Gynaecology
  @JsonValue('186')
  value186,

  /// Display: Reproductive Endocrinology/Infertility
  /// Definition: Reproductive Endocrinology & Infertility
  @JsonValue('187')
  value187,

  /// Display: Urogynaecology
  /// Definition: Urogynaecology
  @JsonValue('188')
  value188,

  /// Display: Neonatology & Perinatology
  /// Definition: Neonatology & Perinatology
  @JsonValue('189')
  value189,

  /// Display: Paediatric Cardiology
  /// Definition: Paediatric Cardiology
  @JsonValue('190')
  value190,

  /// Display: Paediatric Clinical Genetics
  /// Definition: Paediatric Clinical Genetics
  @JsonValue('191')
  value191,

  /// Display: Paediatric Clinical Pharmacology
  /// Definition: Paediatric Clinical Pharmacology
  @JsonValue('192')
  value192,

  /// Display: Paediatric Endocrinology
  /// Definition: Paediatric Endocrinology
  @JsonValue('193')
  value193,

  /// Display: Paed. Gastroenterology/Hepatology
  /// Definition: Paediatric Gastroenterology & Hepatology
  @JsonValue('194')
  value194,

  /// Display: Paediatric Haematology
  /// Definition: Paediatric Haematology
  @JsonValue('195')
  value195,

  /// Display: Paediatric Immunology & Allergy
  /// Definition: Paediatric Immunology & Allergy
  @JsonValue('196')
  value196,

  /// Display: Paediatric Infectious Diseases
  /// Definition: Paediatric Infectious diseases
  @JsonValue('197')
  value197,

  /// Display: Paediatric Intensive Care Medicine
  /// Definition: Paediatric intensive care medicine
  @JsonValue('198')
  value198,

  /// Display: Paediatric Medical Oncology
  /// Definition: Paediatric Medical Oncology
  @JsonValue('199')
  value199,

  /// Display: Paediatric Medicine
  /// Definition: Paediatric Medicine
  @JsonValue('200')
  value200,

  /// Display: Paediatric Nephrology
  /// Definition: Paediatric Nephrology
  @JsonValue('201')
  value201,

  /// Display: Paediatric Neurology
  /// Definition: Paediatric Neurology
  @JsonValue('202')
  value202,

  /// Display: Paediatric Nuclear Medicine
  /// Definition: Paediatric Nuclear Medicine
  @JsonValue('203')
  value203,

  /// Display: Paediatric Rehabilitation Medicine
  /// Definition: Paediatric Rehabilitation Medicine
  @JsonValue('204')
  value204,

  /// Display: Paediatric Rheumatology
  /// Definition: Paediatric Rheumatology
  @JsonValue('205')
  value205,

  /// Display: Paediatric Sleep Medicine
  /// Definition: Paediatric Sleep Medicine
  @JsonValue('206')
  value206,

  /// Display: Paediatric Surgery
  /// Definition: Paediatric Surgery
  @JsonValue('207')
  value207,

  /// Display: Paediatric Thoracic Medicine
  /// Definition: Paediatric Thoracic Medicine
  @JsonValue('208')
  value208,

  /// Display: Diag. Radiology /Xray /CT /Fluoroscopy
  /// Definition: Diagnostic Radiology/Xray/CT/Fluoroscopy
  @JsonValue('209')
  value209,

  /// Display: Diagnostic Ultrasound
  /// Definition: Diagnostic Ultrasound
  @JsonValue('210')
  value210,

  /// Display: Magnetic Resonance Imaging (MRI)
  /// Definition: Magnetic Resonance Imaging (MRI)
  @JsonValue('211')
  value211,

  /// Display: Nuclear Medicine
  /// Definition: Nuclear Medicine
  @JsonValue('212')
  value212,

  /// Display: Obstetric/Gynaecological Ultrasound
  /// Definition: Obstetric & Gynaecological Ultrasound
  @JsonValue('213')
  value213,

  /// Display: Radiation Oncology
  /// Definition: Radiation oncology
  @JsonValue('214')
  value214,

  /// Display: Cardiothoracic Surgery
  /// Definition: Cardiothoracic surgery
  @JsonValue('215')
  value215,

  /// Display: Neurosurgery
  /// Definition: Neurosurgery
  @JsonValue('216')
  value216,

  /// Display: Ophthalmology
  /// Definition: Ophthalmology
  @JsonValue('217')
  value217,

  /// Display: Orthopaedic Surgery
  /// Definition: Orthopaedic surgery
  @JsonValue('218')
  value218,

  /// Display: Otolaryngology/Head & Neck Surgery
  /// Definition: Otolaryngology - Head & Neck Surgery
  @JsonValue('219')
  value219,

  /// Display: Plastic & Reconstructive Surgery
  /// Definition: Plastic & Reconstructive Surgery
  @JsonValue('220')
  value220,

  /// Display: Surgery - General
  /// Definition: Surgery - General
  @JsonValue('221')
  value221,

  /// Display: Urology
  /// Definition: Urology
  @JsonValue('222')
  value222,

  /// Display: Vascular Surgery
  /// Definition: Vascular surgery
  @JsonValue('223')
  value223,

  /// Display: Support Groups
  /// Definition: Support groups
  @JsonValue('224')
  value224,

  /// Display: Air ambulance
  /// Definition: Air ambulance
  @JsonValue('225')
  value225,

  /// Display: Ambulance
  /// Definition: Ambulance
  @JsonValue('226')
  value226,

  /// Display: Blood Transport
  /// Definition: Blood transport
  @JsonValue('227')
  value227,

  /// Display: Community Bus
  /// Definition: Community bus
  @JsonValue('228')
  value228,

  /// Display: Flying Doctor Service
  /// Definition: Flying doctor service
  @JsonValue('229')
  value229,

  /// Display: Patient Transport
  /// Definition: Patient transport
  @JsonValue('230')
  value230,

  /// Display: A&E
  /// Definition: A&E
  @JsonValue('231')
  value231,

  /// Display: A&EP
  /// Definition: A&EP
  @JsonValue('232')
  value232,

  /// Display: Abuse
  /// Definition: Abuse
  @JsonValue('233')
  value233,

  /// Display: ACAS
  /// Definition: ACAS
  @JsonValue('234')
  value234,

  /// Display: Access
  /// Definition: Access
  @JsonValue('235')
  value235,

  /// Display: Accident
  /// Definition: Accident
  @JsonValue('236')
  value236,

  /// Display: Acute Inpatient Serv
  /// Definition: Acute Inpatient Service's
  @JsonValue('237')
  value237,

  /// Display: Adult Day Programs
  /// Definition: Adult Day Programs
  @JsonValue('238')
  value238,

  /// Display: Adult Mental Health Services
  /// Definition: Adult Mental Health Services
  @JsonValue('239')
  value239,

  /// Display: Advice
  /// Definition: Advice
  @JsonValue('240')
  value240,

  /// Display: Advocacy
  /// Definition: Advocacy
  @JsonValue('241')
  value241,

  /// Display: Aged Persons Mental
  /// Definition: Aged Persons Mental Health Residential Units
  @JsonValue('242')
  value242,

  /// Display: Aged Persons Mental
  /// Definition: Aged Persons Mental Health Services
  @JsonValue('243')
  value243,

  /// Display: Aged Persons Mental
  /// Definition: Aged Persons Mental Health Teams
  @JsonValue('244')
  value244,

  /// Display: Aids
  /// Definition: Aids
  @JsonValue('245')
  value245,

  /// Display: Al-Anon
  /// Definition: Al-Anon
  @JsonValue('246')
  value246,

  /// Display: Alcohol
  /// Definition: Alcohol
  @JsonValue('247')
  value247,

  /// Display: Al-Teen
  /// Definition: Al-Teen
  @JsonValue('248')
  value248,

  /// Display: Antenatal
  /// Definition: Antenatal
  @JsonValue('249')
  value249,

  /// Display: Anxiety
  /// Definition: Anxiety
  @JsonValue('250')
  value250,

  /// Display: Arthritis
  /// Definition: Arthritis
  @JsonValue('251')
  value251,

  /// Display: Assessment
  /// Definition: Assessment
  @JsonValue('252')
  value252,

  /// Display: Assistance
  /// Definition: Assistance
  @JsonValue('253')
  value253,

  /// Display: Asthma
  /// Definition: Asthma
  @JsonValue('254')
  value254,

  /// Display: ATSS
  /// Definition: ATSS
  @JsonValue('255')
  value255,

  /// Display: Attendant Care
  /// Definition: Attendant Care
  @JsonValue('256')
  value256,

  /// Display: Babies
  /// Definition: Babies
  @JsonValue('257')
  value257,

  /// Display: Bathroom Modificatio
  /// Definition: Bathroom Modification
  @JsonValue('258')
  value258,

  /// Display: Behavior
  /// Definition: Behavior
  @JsonValue('259')
  value259,

  /// Display: Behavior Interventi
  /// Definition: Behavior Intervention
  @JsonValue('260')
  value260,

  /// Display: Bereavement
  /// Definition: Bereavement
  @JsonValue('261')
  value261,

  /// Display: Bipolar
  /// Definition: Bipolar
  @JsonValue('262')
  value262,

  /// Display: Birth
  /// Definition: Birth
  @JsonValue('263')
  value263,

  /// Display: Birth Control
  /// Definition: Birth Control
  @JsonValue('264')
  value264,

  /// Display: Birthing Options
  /// Definition: Birthing Options
  @JsonValue('265')
  value265,

  /// Display: BIST
  /// Definition: BIST
  @JsonValue('266')
  value266,

  /// Display: Blood
  /// Definition: Blood
  @JsonValue('267')
  value267,

  /// Display: Bone
  /// Definition: Bone
  @JsonValue('268')
  value268,

  /// Display: Bowel
  /// Definition: Bowel
  @JsonValue('269')
  value269,

  /// Display: Brain
  /// Definition: Brain
  @JsonValue('270')
  value270,

  /// Display: Breast Feeding
  /// Definition: Breast Feeding
  @JsonValue('271')
  value271,

  /// Display: Breast Screen
  /// Definition: Breast Screen
  @JsonValue('272')
  value272,

  /// Display: Brokerage
  /// Definition: Brokerage
  @JsonValue('273')
  value273,

  /// Display: Cancer
  /// Definition: Cancer
  @JsonValue('274')
  value274,

  /// Display: Cancer Support
  /// Definition: Cancer Support
  @JsonValue('275')
  value275,

  /// Display: Cardiovascular Disea
  /// Definition: Cardiovascular Disease
  @JsonValue('276')
  value276,

  /// Display: Care Packages
  /// Definition: Care Packages
  @JsonValue('277')
  value277,

  /// Display: Carer
  /// Definition: Carer
  @JsonValue('278')
  value278,

  /// Display: Case Management
  /// Definition: Case Management
  @JsonValue('279')
  value279,

  /// Display: Casualty
  /// Definition: Casualty
  @JsonValue('280')
  value280,

  /// Display: Centrelink
  /// Definition: Centrelink
  @JsonValue('281')
  value281,

  /// Display: Chemists
  /// Definition: Chemists
  @JsonValue('282')
  value282,

  /// Display: Child And Adolescent
  /// Definition: Child And Adolescent Mental Health Services
  @JsonValue('283')
  value283,

  /// Display: Child Care
  /// Definition: Child Care
  @JsonValue('284')
  value284,

  /// Display: Child Services
  /// Definition: Child Services
  @JsonValue('285')
  value285,

  /// Display: Children
  /// Definition: Children
  @JsonValue('286')
  value286,

  /// Display: Children's Services
  /// Definition: Children's Services
  @JsonValue('287')
  value287,

  /// Display: Cholesterol
  /// Definition: Cholesterol
  @JsonValue('288')
  value288,

  /// Display: Clothing
  /// Definition: Clothing
  @JsonValue('289')
  value289,

  /// Display: Community Based Acco
  /// Definition: Community Based Accommodation
  @JsonValue('290')
  value290,

  /// Display: Community Care Unit
  /// Definition: Community Care Unit
  @JsonValue('291')
  value291,

  /// Display: Community Child And
  /// Definition: Community Child And Adolescent Mental Health Services
  @JsonValue('292')
  value292,

  /// Display: Community Health
  /// Definition: Community Health
  @JsonValue('293')
  value293,

  /// Display: Community Residentia
  /// Definition: Community Residential Unit
  @JsonValue('294')
  value294,

  /// Display: Community Transport
  /// Definition: Community Transport
  @JsonValue('295')
  value295,

  /// Display: Companion Visiting
  /// Definition: Companion Visiting
  @JsonValue('296')
  value296,

  /// Display: Companionship
  /// Definition: Companionship
  @JsonValue('297')
  value297,

  /// Display: Consumer Advice
  /// Definition: Consumer Advice
  @JsonValue('298')
  value298,

  /// Display: Consumer Issues
  /// Definition: Consumer Issues
  @JsonValue('299')
  value299,

  /// Display: Continuing Care Serv
  /// Definition: Continuing Care Services
  @JsonValue('300')
  value300,

  /// Display: Contraception Inform
  /// Definition: Contraception Information
  @JsonValue('301')
  value301,

  /// Display: Coordinating Bodies
  /// Definition: Coordinating Bodies
  @JsonValue('302')
  value302,

  /// Display: Correctional Service
  /// Definition: Correctional Services
  @JsonValue('303')
  value303,

  /// Display: Council Environmenta
  /// Definition: Council Environmental Health
  @JsonValue('304')
  value304,

  /// Display: Counselling
  /// Definition: Counselling
  @JsonValue('305')
  value305,

  /// Display: Criminal
  /// Definition: Criminal
  @JsonValue('306')
  value306,

  /// Display: Crises
  /// Definition: Crises
  @JsonValue('307')
  value307,

  /// Display: Crisis Assessment An
  /// Definition: Crisis Assessment And Treatment Services (Cats)
  @JsonValue('308')
  value308,

  /// Display: Crisis Assistance
  /// Definition: Crisis Assistance
  @JsonValue('309')
  value309,

  /// Display: Crisis Refuge
  /// Definition: Crisis Refuge
  @JsonValue('310')
  value310,

  /// Display: Day Program
  /// Definition: Day Program
  @JsonValue('311')
  value311,

  /// Display: Deaf
  /// Definition: Deaf
  @JsonValue('312')
  value312,

  /// Display: Dental Hygiene
  /// Definition: Dental Hygiene
  @JsonValue('313')
  value313,

  /// Display: Dentistry
  /// Definition: Dentistry
  @JsonValue('314')
  value314,

  /// Display: Dentures
  /// Definition: Dentures
  @JsonValue('315')
  value315,

  /// Display: Depression
  /// Definition: Depression
  @JsonValue('316')
  value316,

  /// Display: Detoxification
  /// Definition: Detoxification
  @JsonValue('317')
  value317,

  /// Display: Diabetes
  /// Definition: Diabetes
  @JsonValue('318')
  value318,

  /// Display: Diaphragm Fitting
  /// Definition: Diaphragm Fitting
  @JsonValue('319')
  value319,

  /// Display: Dieticians
  /// Definition: Dieticians
  @JsonValue('320')
  value320,

  /// Display: Disabled Parking
  /// Definition: Disabled Parking
  @JsonValue('321')
  value321,

  /// Display: District Nursing
  /// Definition: District Nursing
  @JsonValue('322')
  value322,

  /// Display: Divorce
  /// Definition: Divorce
  @JsonValue('323')
  value323,

  /// Display: Doctors
  /// Definition: Doctors
  @JsonValue('324')
  value324,

  /// Display: Drink-Drive
  /// Definition: Drink-Drive
  @JsonValue('325')
  value325,

  /// Display: Dual Diagnosis Servi
  /// Definition: Dual Diagnosis Services
  @JsonValue('326')
  value326,

  /// Display: Early Choice
  /// Definition: Early Choice
  @JsonValue('327')
  value327,

  /// Display: Eating Disorder
  /// Definition: Eating Disorder
  @JsonValue('328')
  value328,

  /// Display: Emergency Relief
  /// Definition: Emergency Relief
  @JsonValue('330')
  value330,

  /// Display: Employment And Train
  /// Definition: Employment And Training
  @JsonValue('331')
  value331,

  /// Display: Environment
  /// Definition: Environment
  @JsonValue('332')
  value332,

  /// Display: Equipment
  /// Definition: Equipment
  @JsonValue('333')
  value333,

  /// Display: Exercise
  /// Definition: Exercise
  @JsonValue('334')
  value334,

  /// Display: Facility
  /// Definition: Facility
  @JsonValue('335')
  value335,

  /// Display: Family Choice
  /// Definition: Family Choice
  @JsonValue('336')
  value336,

  /// Display: Family Law
  /// Definition: Family Law
  @JsonValue('337')
  value337,

  /// Display: Family Options
  /// Definition: Family Options
  @JsonValue('338')
  value338,

  /// Display: Family Services
  /// Definition: Family Services
  @JsonValue('339')
  value339,

  /// Display: FFYA
  /// Definition: FFYA
  @JsonValue('340')
  value340,

  /// Display: Financial Aid
  /// Definition: Financial Aid
  @JsonValue('341')
  value341,

  /// Display: Fitness
  /// Definition: Fitness
  @JsonValue('342')
  value342,

  /// Display: Flexible Care Packag
  /// Definition: Flexible Care Packages
  @JsonValue('343')
  value343,

  /// Display: Food
  /// Definition: Food
  @JsonValue('344')
  value344,

  /// Display: Food Vouchers
  /// Definition: Food Vouchers
  @JsonValue('345')
  value345,

  /// Display: Forensic Mental Heal
  /// Definition: Forensic Mental Health Services
  @JsonValue('346')
  value346,

  /// Display: Futures
  /// Definition: Futures
  @JsonValue('347')
  value347,

  /// Display: Futures For Young Ad
  /// Definition: Futures For Young Adults
  @JsonValue('348')
  value348,

  /// Display: General Practitioner
  /// Definition: General Practitioners
  @JsonValue('349')
  value349,

  /// Display: Grants
  /// Definition: Grants
  @JsonValue('350')
  value350,

  /// Display: Grief
  /// Definition: Grief
  @JsonValue('351')
  value351,

  /// Display: Grief Counselling
  /// Definition: Grief Counselling
  @JsonValue('352')
  value352,

  /// Display: HACC
  /// Definition: HACC
  @JsonValue('353')
  value353,

  /// Display: Heart Disease
  /// Definition: Heart Disease
  @JsonValue('354')
  value354,

  /// Display: Help
  /// Definition: Help
  @JsonValue('355')
  value355,

  /// Display: High Blood Pressure
  /// Definition: High Blood Pressure
  @JsonValue('356')
  value356,

  /// Display: Home Help
  /// Definition: Home Help
  @JsonValue('357')
  value357,

  /// Display: Home Nursing
  /// Definition: Home Nursing
  @JsonValue('358')
  value358,

  /// Display: Homefirst
  /// Definition: Homefirst
  @JsonValue('359')
  value359,

  /// Display: Hospice Care
  /// Definition: Hospice Care
  @JsonValue('360')
  value360,

  /// Display: Hospital Services
  /// Definition: Hospital Services
  @JsonValue('361')
  value361,

  /// Display: Hospital To Home
  /// Definition: Hospital To Home
  @JsonValue('362')
  value362,

  /// Display: Hostel
  /// Definition: Hostel
  @JsonValue('364')
  value364,

  /// Display: Hostel Accommodation
  /// Definition: Hostel Accommodation
  @JsonValue('365')
  value365,

  /// Display: Household Items
  /// Definition: Household Items
  @JsonValue('366')
  value366,

  /// Display: Hypertension
  /// Definition: Hypertension
  @JsonValue('367')
  value367,

  /// Display: Illness
  /// Definition: Illness
  @JsonValue('368')
  value368,

  /// Display: Independent Living
  /// Definition: Independent Living
  @JsonValue('369')
  value369,

  /// Display: Information
  /// Definition: Information
  @JsonValue('370')
  value370,

  /// Display: Injury
  /// Definition: Injury
  @JsonValue('371')
  value371,

  /// Display: Intake
  /// Definition: Intake
  @JsonValue('372')
  value372,

  /// Display: Intensive Mobile You
  /// Definition: Intensive Mobile Youth Outreach Services (Imyos)
  @JsonValue('373')
  value373,

  /// Display: Intervention
  /// Definition: Intervention
  @JsonValue('374')
  value374,

  /// Display: Job Searching
  /// Definition: Job Searching
  @JsonValue('375')
  value375,

  /// Display: Justice
  /// Definition: Justice
  @JsonValue('376')
  value376,

  /// Display: Leisure
  /// Definition: Leisure
  @JsonValue('377')
  value377,

  /// Display: Loans
  /// Definition: Loans
  @JsonValue('378')
  value378,

  /// Display: Low Income Earners
  /// Definition: Low Income Earners
  @JsonValue('379')
  value379,

  /// Display: Lung
  /// Definition: Lung
  @JsonValue('380')
  value380,

  /// Display: Making A Difference
  /// Definition: Making A Difference
  @JsonValue('381')
  value381,

  /// Display: Medical Services
  /// Definition: Medical Services
  @JsonValue('382')
  value382,

  /// Display: Medical Specialists
  /// Definition: Medical Specialists
  @JsonValue('383')
  value383,

  /// Display: Medication Administr
  /// Definition: Medication Administration
  @JsonValue('384')
  value384,

  /// Display: Menstrual Informatio
  /// Definition: Menstrual Information
  @JsonValue('385')
  value385,

  /// Display: Methadone
  /// Definition: Methadone
  @JsonValue('386')
  value386,

  /// Display: Mobile Support And T
  /// Definition: Mobile Support And Treatment Services (MSTS)
  @JsonValue('387')
  value387,

  /// Display: Motor Neurone
  /// Definition: Motor Neurone
  @JsonValue('388')
  value388,

  /// Display: Multiple Sclerosis
  /// Definition: Multiple Sclerosis
  @JsonValue('389')
  value389,

  /// Display: Neighbourhood House
  /// Definition: Neighbourhood House
  @JsonValue('390')
  value390,

  /// Display: Nursing Home
  /// Definition: Nursing Home
  @JsonValue('391')
  value391,

  /// Display: Nursing Mothers
  /// Definition: Nursing Mothers
  @JsonValue('392')
  value392,

  /// Display: Obesity
  /// Definition: Obesity
  @JsonValue('393')
  value393,

  /// Display: Occupational Health
  /// Definition: Occupational Health & Safety
  @JsonValue('394')
  value394,

  /// Display: Optometrist
  /// Definition: Optometrist
  @JsonValue('395')
  value395,

  /// Display: Oral Hygiene
  /// Definition: Oral Hygiene
  @JsonValue('396')
  value396,

  /// Display: Outpatients
  /// Definition: Outpatients
  @JsonValue('397')
  value397,

  /// Display: Outreach Service
  /// Definition: Outreach Service
  @JsonValue('398')
  value398,

  /// Display: PADP
  /// Definition: PADP
  @JsonValue('399')
  value399,

  /// Display: Pain
  /// Definition: Pain
  @JsonValue('400')
  value400,

  /// Display: Pap Smear
  /// Definition: Pap Smear
  @JsonValue('401')
  value401,

  /// Display: Parenting
  /// Definition: Parenting
  @JsonValue('402')
  value402,

  /// Display: Peak Organizations
  /// Definition: Peak Organizations
  @JsonValue('403')
  value403,

  /// Display: Personal Care
  /// Definition: Personal Care
  @JsonValue('404')
  value404,

  /// Display: Pharmacies
  /// Definition: Pharmacies
  @JsonValue('405')
  value405,

  /// Display: Phobias
  /// Definition: Phobias
  @JsonValue('406')
  value406,

  /// Display: Physical
  /// Definition: Physical
  @JsonValue('407')
  value407,

  /// Display: Physical Activity
  /// Definition: Physical Activity
  @JsonValue('408')
  value408,

  /// Display: Postnatal
  /// Definition: Postnatal
  @JsonValue('409')
  value409,

  /// Display: Pregnancy
  /// Definition: Pregnancy
  @JsonValue('410')
  value410,

  /// Display: Pregnancy Tests
  /// Definition: Pregnancy Tests
  @JsonValue('411')
  value411,

  /// Display: Preschool
  /// Definition: Preschool
  @JsonValue('412')
  value412,

  /// Display: Prescriptions
  /// Definition: Prescriptions
  @JsonValue('413')
  value413,

  /// Display: Primary Mental Healt
  /// Definition: Primary Mental Health And Early Intervention Teams
  @JsonValue('414')
  value414,

  /// Display: Property Maintenance
  /// Definition: Property Maintenance
  @JsonValue('415')
  value415,

  /// Display: Prostate
  /// Definition: Prostate
  @JsonValue('416')
  value416,

  /// Display: Psychiatric
  /// Definition: Psychiatric
  @JsonValue('417')
  value417,

  /// Display: Psychiatric Disabili
  /// Definition: Psychiatric Disability Support Services - Home-Based Outreach
  @JsonValue('418')
  value418,

  /// Display: Psychiatric Disabili
  /// Definition: Psychiatric Disability Support Services - Planned Respite
  @JsonValue('419')
  value419,

  /// Display: Psychiatric Disabili
  /// Definition: Psychiatric Disability Support Services - Residential Rehabilitation
  @JsonValue('420')
  value420,

  /// Display: Psychiatric Disabili
  /// Definition: Psychiatric Disability Support Services Home-Based Outreach
  @JsonValue('421')
  value421,

  /// Display: Psychiatric Disabili
  /// Definition: Psychiatric Disability Support Services Mutual Support And Self Help
  @JsonValue('422')
  value422,

  /// Display: Psychiatric Support
  /// Definition: Psychiatric Support
  @JsonValue('423')
  value423,

  /// Display: Recreation
  /// Definition: Recreation
  @JsonValue('424')
  value424,

  /// Display: Referral
  /// Definition: Referral
  @JsonValue('425')
  value425,

  /// Display: Refuge
  /// Definition: Refuge
  @JsonValue('426')
  value426,

  /// Display: Rent Assistance
  /// Definition: Rent Assistance
  @JsonValue('427')
  value427,

  /// Display: Residential Faciliti
  /// Definition: Residential Facilities
  @JsonValue('428')
  value428,

  /// Display: Residential Respite
  /// Definition: Residential Respite
  @JsonValue('429')
  value429,

  /// Display: Respiratory
  /// Definition: Respiratory
  @JsonValue('430')
  value430,

  /// Display: Response
  /// Definition: Response
  @JsonValue('431')
  value431,

  /// Display: Rooming Houses
  /// Definition: Rooming Houses
  @JsonValue('432')
  value432,

  /// Display: Safe Sex
  /// Definition: Safe Sex
  @JsonValue('433')
  value433,

  /// Display: Secure Extended Care
  /// Definition: Secure Extended Care Inpatient Services
  @JsonValue('434')
  value434,

  /// Display: Self Help
  /// Definition: Self Help
  @JsonValue('435')
  value435,

  /// Display: Separation
  /// Definition: Separation
  @JsonValue('436')
  value436,

  /// Display: Services
  /// Definition: Services
  @JsonValue('437')
  value437,

  /// Display: Sex Education
  /// Definition: Sex Education
  @JsonValue('438')
  value438,

  /// Display: Sexual Abuse
  /// Definition: Sexual Abuse
  @JsonValue('439')
  value439,

  /// Display: Sexual Issues
  /// Definition: Sexual Issues
  @JsonValue('440')
  value440,

  /// Display: Sexually Transmitted
  /// Definition: Sexually Transmitted Diseases
  @JsonValue('441')
  value441,

  /// Display: SIDS
  /// Definition: SIDS
  @JsonValue('442')
  value442,

  /// Display: Social Support
  /// Definition: Social Support
  @JsonValue('443')
  value443,

  /// Display: Socialisation
  /// Definition: Socialisation
  @JsonValue('444')
  value444,

  /// Display: Special Needs
  /// Definition: Special Needs
  @JsonValue('445')
  value445,

  /// Display: Speech Therapist
  /// Definition: Speech Therapist
  @JsonValue('446')
  value446,

  /// Display: Splinting
  /// Definition: Splinting
  @JsonValue('447')
  value447,

  /// Display: Sport
  /// Definition: Sport
  @JsonValue('448')
  value448,

  /// Display: Statewide And Specia
  /// Definition: Statewide And Specialist Services
  @JsonValue('449')
  value449,

  /// Display: STD
  /// Definition: STD
  @JsonValue('450')
  value450,

  /// Display: STI
  /// Definition: STI
  @JsonValue('451')
  value451,

  /// Display: Stillbirth
  /// Definition: Stillbirth
  @JsonValue('452')
  value452,

  /// Display: Stomal Care
  /// Definition: Stomal Care
  @JsonValue('453')
  value453,

  /// Display: Stroke
  /// Definition: Stroke
  @JsonValue('454')
  value454,

  /// Display: Substance Abuse
  /// Definition: Substance Abuse
  @JsonValue('455')
  value455,

  /// Display: Support
  /// Definition: Support
  @JsonValue('456')
  value456,

  /// Display: Syringes
  /// Definition: Syringes
  @JsonValue('457')
  value457,

  /// Display: Teeth
  /// Definition: Teeth
  @JsonValue('458')
  value458,

  /// Display: Tenancy Advice
  /// Definition: Tenancy Advice
  @JsonValue('459')
  value459,

  /// Display: Terminal Illness
  /// Definition: Terminal Illness
  @JsonValue('460')
  value460,

  /// Display: Therapy
  /// Definition: Therapy
  @JsonValue('461')
  value461,

  /// Display: Transcription
  /// Definition: Transcription
  @JsonValue('462')
  value462,

  /// Display: Translating Services
  /// Definition: Translating Services
  @JsonValue('463')
  value463,

  /// Display: Translator
  /// Definition: Translator
  @JsonValue('464')
  value464,

  /// Display: Transport
  /// Definition: Transport
  @JsonValue('465')
  value465,

  /// Display: Vertebrae
  /// Definition: Vertebrae
  @JsonValue('466')
  value466,

  /// Display: Violence
  /// Definition: Violence
  @JsonValue('467')
  value467,

  /// Display: Vocational Guidance
  /// Definition: Vocational Guidance
  @JsonValue('468')
  value468,

  /// Display: Weight
  /// Definition: Weight
  @JsonValue('469')
  value469,

  /// Display: Welfare Assistance
  /// Definition: Welfare Assistance
  @JsonValue('470')
  value470,

  /// Display: Welfare Counselling
  /// Definition: Welfare Counselling
  @JsonValue('471')
  value471,

  /// Display: Wheelchairs
  /// Definition: Wheelchairs
  @JsonValue('472')
  value472,

  /// Display: Wound Management
  /// Definition: Wound Management
  @JsonValue('473')
  value473,

  /// Display: Young People At Risk
  /// Definition: Young People At Risk
  @JsonValue('474')
  value474,

  /// Display: Further Desc. - Community Health Care
  /// Definition: Further Description - Community Health Care
  @JsonValue('475')
  value475,

  /// Display: Library
  /// Definition: Library
  @JsonValue('476')
  value476,

  /// Display: Community Hours
  /// Definition: Community Hours
  @JsonValue('477')
  value477,

  /// Display: Further Desc. - Specialist Medical
  /// Definition: Further Description - Specialist Medical
  @JsonValue('478')
  value478,

  /// Display: Hepatology
  /// Definition: Hepatology
  @JsonValue('479')
  value479,

  /// Display: Gastroenterology
  /// Definition: Gastroenterology
  @JsonValue('480')
  value480,

  /// Display: Gynaecology
  /// Definition: Gynaecology
  @JsonValue('481')
  value481,

  /// Display: Obstetrics
  /// Definition: Obstetrics
  @JsonValue('482')
  value482,

  /// Display: Further Desc. - Specialist Surgical
  /// Definition: Further Description - Specialist Surgical
  @JsonValue('483')
  value483,

  /// Display: Placement Protection
  /// Definition: Placement Protection
  @JsonValue('484')
  value484,

  /// Display: Family Violence
  /// Definition: Family Violence
  @JsonValue('485')
  value485,

  /// Display: Integrated Family Services
  /// Definition: Integrated Family Services
  @JsonValue('486')
  value486,

  /// Display: Diabetes Educator
  /// Definition: Diabetes Educator
  @JsonValue('488')
  value488,

  /// Display: Kinship Care
  /// Definition: Kinship Care
  @JsonValue('489')
  value489,

  /// Display: General Mental Health Services
  /// Definition: General Mental Health Services
  @JsonValue('490')
  value490,

  /// Display: Exercise Physiology
  /// Definition: Exercise Physiology
  @JsonValue('491')
  value491,

  /// Display: Medical Research
  /// Definition: Medical Research
  @JsonValue('492')
  value492,

  /// Display: Youth
  /// Definition: Youth
  @JsonValue('493')
  value493,

  /// Display: Youth Services
  /// Definition: Youth Services
  @JsonValue('494')
  value494,

  /// Display: Youth Health
  /// Definition: Youth Health
  @JsonValue('495')
  value495,

  /// Display: Child and Family Ser
  /// Definition: Child and Family Services
  @JsonValue('496')
  value496,

  /// Display: Home Visits
  /// Definition: Home Visits
  @JsonValue('497')
  value497,

  /// Display: Mobile Services
  /// Definition: Mobile Services
  @JsonValue('498')
  value498,

  /// Display: Before and/or After
  /// Definition: Before and/or After School Care
  @JsonValue('500')
  value500,

  /// Display: Cancer Services
  /// Definition: Cancer Services
  @JsonValue('501')
  value501,

  /// Display: Integrated Cancer Se
  /// Definition: Integrated Cancer Services
  @JsonValue('502')
  value502,

  /// Display: Multidisciplinary Se
  /// Definition: Multidisciplinary Services
  @JsonValue('503')
  value503,

  /// Display: Multidisciplinary Ca
  /// Definition: Multidisciplinary Cancer Services
  @JsonValue('504')
  value504,

  /// Display: Meetings
  /// Definition: Meetings
  @JsonValue('505')
  value505,

  /// Display: Blood pressure monit
  /// Definition: Blood pressure monitoring
  @JsonValue('506')
  value506,

  /// Display: Dose administration
  /// Definition: Dose administration aid
  @JsonValue('507')
  value507,

  /// Display: Medical Equipment Hi
  /// Definition: Medical Equipment Hire
  @JsonValue('508')
  value508,

  /// Display: Parenting/Family Support/Education
  /// Definition: Parenting & family support/education
  @JsonValue('509')
  value509,

  /// Display: Deputising Service
  /// Definition: Deputising Service
  @JsonValue('510')
  value510,

  /// Display: Cancer Support Groups
  /// Definition: Cancer Support Groups
  @JsonValue('513')
  value513,

  /// Display: Community Cancer Services
  /// Definition: Community Cancer Services
  @JsonValue('514')
  value514,

  /// Display: Disability Care Transport
  /// Definition: Disability Care Transport
  @JsonValue('530')
  value530,

  /// Display: Aged Care Transport
  /// Definition: Aged Care Transport
  @JsonValue('531')
  value531,

  /// Display: Diabetes Education s
  /// Definition: Diabetes Education service
  @JsonValue('532')
  value532,

  /// Display: Cardiac Rehabilitati
  /// Definition: Cardiac Rehabilitation Service
  @JsonValue('533')
  value533,

  /// Display: Young Adult Diabetes
  /// Definition: Young Adult Diabetes services (YADS)
  @JsonValue('534')
  value534,

  /// Display: Pulmonary Rehabilita
  /// Definition: Pulmonary Rehabilitation Service
  @JsonValue('535')
  value535,

  /// Display: Art therapy
  /// Definition: Art therapy
  @JsonValue('536')
  value536,

  /// Display: Medication Reviews
  /// Definition: Medication Reviews
  @JsonValue('537')
  value537,

  /// Display: Telephone Counselling
  /// Definition: Telephone Counselling
  @JsonValue('538')
  value538,

  /// Display: Telephone Help Line
  /// Definition: Telephone Help Line
  @JsonValue('539')
  value539,

  /// Display: Online Service
  /// Definition: Online Service
  @JsonValue('540')
  value540,

  /// Display: Crisis - Mental Health
  /// Definition: Crisis - Mental Health
  @JsonValue('541')
  value541,

  /// Display: Youth Crisis
  /// Definition: Youth Crisis
  @JsonValue('542')
  value542,

  /// Display: Sexual Assault
  /// Definition: Sexual Assault
  @JsonValue('543')
  value543,

  /// Display: GPAH Other
  /// Definition: GPAH Other
  @JsonValue('544')
  value544,

  /// Display: Paediatric Dermatology
  /// Definition: Paediatric Dermatology
  @JsonValue('545')
  value545,

  /// Display: Veterans Services
  /// Definition: Veterans Services
  @JsonValue('546')
  value546,

  /// Display: Veterans
  /// Definition: Veterans
  @JsonValue('547')
  value547,

  /// Display: Food Relief/Food/Meals
  /// Definition: Food Relief/food/meals
  @JsonValue('548')
  value548,

  /// Display: Dementia Care
  /// Definition: Dementia Care
  @JsonValue('550')
  value550,

  /// Display: Alzheimer
  /// Definition: Alzheimer
  @JsonValue('551')
  value551,

  /// Display: Drug and/or Alcohol Support Groups
  /// Definition: Drug and/or alcohol support groups
  @JsonValue('552')
  value552,

  /// Display: 1-on-1 Support /Mentoring /Coaching
  /// Definition: One on One Support/Mentoring/Coaching
  @JsonValue('553')
  value553,

  /// Display: Chronic Disease Management
  /// Definition: Chronic Disease Management
  @JsonValue('554')
  value554,

  /// Display: Liaison Services
  /// Definition: Liaison Services
  @JsonValue('555')
  value555,

  /// Display: Walk-in Centre /Non-Emergency
  /// Definition: Walk in Centre / non emergency
  @JsonValue('556')
  value556,

  /// Display: Inpatients
  /// Definition: Inpatients
  @JsonValue('557')
  value557,

  /// Display: Spiritual Counselling
  /// Definition: Spiritual Counselling
  @JsonValue('558')
  value558,

  /// Display: Women's Health
  /// Definition: Women's Health
  @JsonValue('559')
  value559,

  /// Display: Men's Health
  /// Definition: Men's Health
  @JsonValue('560')
  value560,

  /// Display: Health Education/Awareness Program
  /// Definition: Health education/Health awareness program
  @JsonValue('561')
  value561,

  /// Display: Test Message
  /// Definition: Test Message
  @JsonValue('562')
  value562,

  /// Display: Remedial Massage
  /// Definition: Remedial Massage
  @JsonValue('563')
  value563,

  /// Display: Adolescent Mental Health Services
  /// Definition: Adolescent Mental Health Services
  @JsonValue('564')
  value564,

  /// Display: Youth Drop In/Assistance/Support
  /// Definition: Youth drop in/assistance/support
  @JsonValue('565')
  value565,

  /// Display: Aboriginal Health Worker
  /// Definition: Aboriginal Health Worker
  @JsonValue('566')
  value566,

  /// Display: Women's Health Clinic
  /// Definition: Women's Health Clinic
  @JsonValue('567')
  value567,

  /// Display: Men's Health Clinic
  /// Definition: Men's Health Clinic
  @JsonValue('568')
  value568,

  /// Display: Migrant Health Clinic
  /// Definition: Migrant Health Clinic
  @JsonValue('569')
  value569,

  /// Display: Refugee Health Clinic
  /// Definition: Refugee Health Clinic
  @JsonValue('570')
  value570,

  /// Display: Aboriginal Health Clinic
  /// Definition: Aboriginal Health Clinic
  @JsonValue('571')
  value571,

  /// Display: Nurse Practitioner Lead Clinic/s
  /// Definition: Nurse Practitioner lead Clinic/s
  @JsonValue('572')
  value572,

  /// Display: Nurse Lead Clinic/s
  /// Definition: Nurse lead Clinic/s
  @JsonValue('573')
  value573,

  /// Display: Culturally Tailored Support Groups
  /// Definition: Culturally tailored support groups
  @JsonValue('574')
  value574,

  /// Display: Culturally Tailored Health Promotion
  /// Definition: Culturally tailored health promotion
  @JsonValue('575')
  value575,

  /// Display: Rehabilitation
  /// Definition: Rehabilitation
  @JsonValue('576')
  value576,

  /// Display: Education Information/Referral
  /// Definition: Education information/referral
  @JsonValue('577')
  value577,

  /// Display: Social Work
  /// Definition: Social Work
  @JsonValue('580')
  value580,

  /// Display: Haematology
  /// Definition: Haematology
  @JsonValue('581')
  value581,

  /// Display: Maternity Shared Car
  /// Definition: Maternity Shared Care
  @JsonValue('582')
  value582,

  /// Display: Rehabilitation Servi
  /// Definition: Rehabilitation Service
  @JsonValue('583')
  value583,

  /// Display: Cranio-sacral Therapy
  /// Definition: Cranio-Sacral Therapy
  @JsonValue('584')
  value584,

  /// Display: Prosthetics & Orthotics
  /// Definition: Prosthetics & Orthotics
  @JsonValue('585')
  value585,

  /// Display: Home Medicine Review
  /// Definition: Home Medicine Review
  @JsonValue('589')
  value589,

  /// Display: GPAH - Medical
  /// Definition: GPAH - Medical
  @JsonValue('590')
  value590,

  /// Display: Music Therapy
  /// Definition: Music Therapy
  @JsonValue('591')
  value591,

  /// Display: Falls Prevention
  /// Definition: Falls Prevention
  @JsonValue('593')
  value593,

  /// Display: Accommodation/Tenancy
  /// Definition: Accommodation/Tenancy
  @JsonValue('599')
  value599,

  /// Display: Assess-Skill, Ability, Needs
  /// Definition: Assess-Skill, Ability, Needs
  @JsonValue('600')
  value600,

  /// Display: Assist Access/Maintain Employ
  /// Definition: Assist Access/Maintain Employ
  @JsonValue('601')
  value601,

  /// Display: Assist Prod-Pers Care/Safety
  /// Definition: Assist Prod-Pers Care/Safety
  @JsonValue('602')
  value602,

  /// Display: Assist-Integrate School/Ed
  /// Definition: Assist-Integrate School/Ed
  @JsonValue('603')
  value603,

  /// Display: Assist-Life Stage, Transition
  /// Definition: Assist-Life Stage, Transition
  @JsonValue('604')
  value604,

  /// Display: Assist-Personal Activities
  /// Definition: Assist-Personal Activities
  @JsonValue('605')
  value605,

  /// Display: Assist-Travel/Transport
  /// Definition: Assist-Travel/Transport
  @JsonValue('606')
  value606,

  /// Display: Assistive Equip-General Tasks
  /// Definition: Assistive Equip-General Tasks
  @JsonValue('607')
  value607,

  /// Display: Assistive Equip-Recreation
  /// Definition: Assistive Equip-Recreation
  @JsonValue('608')
  value608,

  /// Display: Assistive Prod-Household Task
  /// Definition: Assistive Prod-Household Task
  @JsonValue('609')
  value609,

  /// Display: Behavior Support
  /// Definition: Behavior Support
  @JsonValue('610')
  value610,

  /// Display: Comms & Info Equipment
  /// Definition: Comms & Info Equipment
  @JsonValue('611')
  value611,

  /// Display: Community Nursing Care
  /// Definition: Community Nursing Care
  @JsonValue('612')
  value612,

  /// Display: Daily Tasks/Shared Living
  /// Definition: Daily Tasks/Shared Living
  @JsonValue('613')
  value613,

  /// Display: Development-Life Skills
  /// Definition: Development-Life Skills
  @JsonValue('614')
  value614,

  /// Display: Early Childhood Supports
  /// Definition: Early Childhood Supports
  @JsonValue('615')
  value615,

  /// Display: Equipment Special Assess Setup
  /// Definition: Equipment Special Assess Setup
  @JsonValue('616')
  value616,

  /// Display: Hearing Equipment
  /// Definition: Hearing Equipment
  @JsonValue('617')
  value617,

  /// Display: Home Modification
  /// Definition: Home Modification
  @JsonValue('618')
  value618,

  /// Display: Household Tasks
  /// Definition: Household Tasks
  @JsonValue('619')
  value619,

  /// Display: Interpret/Translate
  /// Definition: Interpret/Translate
  @JsonValue('620')
  value620,

  /// Display: Other Innovative Supports
  /// Definition: Other Innovative Supports
  @JsonValue('621')
  value621,

  /// Display: Participate Community
  /// Definition: Participate Community
  @JsonValue('622')
  value622,

  /// Display: Personal Mobility Equipment
  /// Definition: Personal Mobility Equipment
  @JsonValue('623')
  value623,

  /// Display: Physical Wellbeing
  /// Definition: Physical Wellbeing
  @JsonValue('624')
  value624,

  /// Display: Plan Management
  /// Definition: Plan Management
  @JsonValue('625')
  value625,

  /// Display: Therapeutic Supports
  /// Definition: Therapeutic Supports
  @JsonValue('626')
  value626,

  /// Display: Training-Travel Independence
  /// Definition: Training-Travel Independence
  @JsonValue('627')
  value627,

  /// Display: Vehicle modifications
  /// Definition: Vehicle modifications
  @JsonValue('628')
  value628,

  /// Display: Vision Equipment
  /// Definition: Vision Equipment
  @JsonValue('629')
  value629,
  ;

  @override
  String toString() {
    switch (this) {
      case value1:
        return '1';
      case value2:
        return '2';
      case value3:
        return '3';
      case value4:
        return '4';
      case value5:
        return '5';
      case value6:
        return '6';
      case value7:
        return '7';
      case value8:
        return '8';
      case value9:
        return '9';
      case value10:
        return '10';
      case value11:
        return '11';
      case value12:
        return '12';
      case value13:
        return '13';
      case value14:
        return '14';
      case value15:
        return '15';
      case value16:
        return '16';
      case value17:
        return '17';
      case value18:
        return '18';
      case value19:
        return '19';
      case value20:
        return '20';
      case value21:
        return '21';
      case value22:
        return '22';
      case value23:
        return '23';
      case value24:
        return '24';
      case value25:
        return '25';
      case value26:
        return '26';
      case value27:
        return '27';
      case value28:
        return '28';
      case value29:
        return '29';
      case value30:
        return '30';
      case value31:
        return '31';
      case value32:
        return '32';
      case value33:
        return '33';
      case value34:
        return '34';
      case value35:
        return '35';
      case value36:
        return '36';
      case value37:
        return '37';
      case value38:
        return '38';
      case value39:
        return '39';
      case value40:
        return '40';
      case value41:
        return '41';
      case value42:
        return '42';
      case value43:
        return '43';
      case value44:
        return '44';
      case value45:
        return '45';
      case value46:
        return '46';
      case value47:
        return '47';
      case value48:
        return '48';
      case value49:
        return '49';
      case value50:
        return '50';
      case value51:
        return '51';
      case value52:
        return '52';
      case value53:
        return '53';
      case value54:
        return '54';
      case value55:
        return '55';
      case value56:
        return '56';
      case value57:
        return '57';
      case value58:
        return '58';
      case value59:
        return '59';
      case value60:
        return '60';
      case value61:
        return '61';
      case value62:
        return '62';
      case value63:
        return '63';
      case value64:
        return '64';
      case value65:
        return '65';
      case value66:
        return '66';
      case value67:
        return '67';
      case value68:
        return '68';
      case value69:
        return '69';
      case value70:
        return '70';
      case value71:
        return '71';
      case value72:
        return '72';
      case value73:
        return '73';
      case value74:
        return '74';
      case value75:
        return '75';
      case value76:
        return '76';
      case value77:
        return '77';
      case value78:
        return '78';
      case value79:
        return '79';
      case value80:
        return '80';
      case value81:
        return '81';
      case value82:
        return '82';
      case value83:
        return '83';
      case value84:
        return '84';
      case value85:
        return '85';
      case value86:
        return '86';
      case value87:
        return '87';
      case value88:
        return '88';
      case value89:
        return '89';
      case value90:
        return '90';
      case value91:
        return '91';
      case value92:
        return '92';
      case value93:
        return '93';
      case value94:
        return '94';
      case value95:
        return '95';
      case value96:
        return '96';
      case value97:
        return '97';
      case value98:
        return '98';
      case value99:
        return '99';
      case value100:
        return '100';
      case value101:
        return '101';
      case value102:
        return '102';
      case value103:
        return '103';
      case value104:
        return '104';
      case value105:
        return '105';
      case value106:
        return '106';
      case value107:
        return '107';
      case value108:
        return '108';
      case value109:
        return '109';
      case value110:
        return '110';
      case value111:
        return '111';
      case value112:
        return '112';
      case value113:
        return '113';
      case value114:
        return '114';
      case value115:
        return '115';
      case value116:
        return '116';
      case value117:
        return '117';
      case value118:
        return '118';
      case value119:
        return '119';
      case value120:
        return '120';
      case value121:
        return '121';
      case value122:
        return '122';
      case value123:
        return '123';
      case value124:
        return '124';
      case value125:
        return '125';
      case value126:
        return '126';
      case value127:
        return '127';
      case value128:
        return '128';
      case value129:
        return '129';
      case value130:
        return '130';
      case value131:
        return '131';
      case value132:
        return '132';
      case value133:
        return '133';
      case value134:
        return '134';
      case value135:
        return '135';
      case value136:
        return '136';
      case value137:
        return '137';
      case value138:
        return '138';
      case value139:
        return '139';
      case value140:
        return '140';
      case value141:
        return '141';
      case value142:
        return '142';
      case value143:
        return '143';
      case value144:
        return '144';
      case value145:
        return '145';
      case value146:
        return '146';
      case value147:
        return '147';
      case value148:
        return '148';
      case value149:
        return '149';
      case value150:
        return '150';
      case value151:
        return '151';
      case value152:
        return '152';
      case value153:
        return '153';
      case value154:
        return '154';
      case value155:
        return '155';
      case value156:
        return '156';
      case value157:
        return '157';
      case value158:
        return '158';
      case value159:
        return '159';
      case value160:
        return '160';
      case value161:
        return '161';
      case value162:
        return '162';
      case value163:
        return '163';
      case value164:
        return '164';
      case value165:
        return '165';
      case value166:
        return '166';
      case value167:
        return '167';
      case value168:
        return '168';
      case value169:
        return '169';
      case value170:
        return '170';
      case value171:
        return '171';
      case value172:
        return '172';
      case value173:
        return '173';
      case value174:
        return '174';
      case value175:
        return '175';
      case value176:
        return '176';
      case value177:
        return '177';
      case value178:
        return '178';
      case value179:
        return '179';
      case value180:
        return '180';
      case value181:
        return '181';
      case value182:
        return '182';
      case value183:
        return '183';
      case value184:
        return '184';
      case value185:
        return '185';
      case value186:
        return '186';
      case value187:
        return '187';
      case value188:
        return '188';
      case value189:
        return '189';
      case value190:
        return '190';
      case value191:
        return '191';
      case value192:
        return '192';
      case value193:
        return '193';
      case value194:
        return '194';
      case value195:
        return '195';
      case value196:
        return '196';
      case value197:
        return '197';
      case value198:
        return '198';
      case value199:
        return '199';
      case value200:
        return '200';
      case value201:
        return '201';
      case value202:
        return '202';
      case value203:
        return '203';
      case value204:
        return '204';
      case value205:
        return '205';
      case value206:
        return '206';
      case value207:
        return '207';
      case value208:
        return '208';
      case value209:
        return '209';
      case value210:
        return '210';
      case value211:
        return '211';
      case value212:
        return '212';
      case value213:
        return '213';
      case value214:
        return '214';
      case value215:
        return '215';
      case value216:
        return '216';
      case value217:
        return '217';
      case value218:
        return '218';
      case value219:
        return '219';
      case value220:
        return '220';
      case value221:
        return '221';
      case value222:
        return '222';
      case value223:
        return '223';
      case value224:
        return '224';
      case value225:
        return '225';
      case value226:
        return '226';
      case value227:
        return '227';
      case value228:
        return '228';
      case value229:
        return '229';
      case value230:
        return '230';
      case value231:
        return '231';
      case value232:
        return '232';
      case value233:
        return '233';
      case value234:
        return '234';
      case value235:
        return '235';
      case value236:
        return '236';
      case value237:
        return '237';
      case value238:
        return '238';
      case value239:
        return '239';
      case value240:
        return '240';
      case value241:
        return '241';
      case value242:
        return '242';
      case value243:
        return '243';
      case value244:
        return '244';
      case value245:
        return '245';
      case value246:
        return '246';
      case value247:
        return '247';
      case value248:
        return '248';
      case value249:
        return '249';
      case value250:
        return '250';
      case value251:
        return '251';
      case value252:
        return '252';
      case value253:
        return '253';
      case value254:
        return '254';
      case value255:
        return '255';
      case value256:
        return '256';
      case value257:
        return '257';
      case value258:
        return '258';
      case value259:
        return '259';
      case value260:
        return '260';
      case value261:
        return '261';
      case value262:
        return '262';
      case value263:
        return '263';
      case value264:
        return '264';
      case value265:
        return '265';
      case value266:
        return '266';
      case value267:
        return '267';
      case value268:
        return '268';
      case value269:
        return '269';
      case value270:
        return '270';
      case value271:
        return '271';
      case value272:
        return '272';
      case value273:
        return '273';
      case value274:
        return '274';
      case value275:
        return '275';
      case value276:
        return '276';
      case value277:
        return '277';
      case value278:
        return '278';
      case value279:
        return '279';
      case value280:
        return '280';
      case value281:
        return '281';
      case value282:
        return '282';
      case value283:
        return '283';
      case value284:
        return '284';
      case value285:
        return '285';
      case value286:
        return '286';
      case value287:
        return '287';
      case value288:
        return '288';
      case value289:
        return '289';
      case value290:
        return '290';
      case value291:
        return '291';
      case value292:
        return '292';
      case value293:
        return '293';
      case value294:
        return '294';
      case value295:
        return '295';
      case value296:
        return '296';
      case value297:
        return '297';
      case value298:
        return '298';
      case value299:
        return '299';
      case value300:
        return '300';
      case value301:
        return '301';
      case value302:
        return '302';
      case value303:
        return '303';
      case value304:
        return '304';
      case value305:
        return '305';
      case value306:
        return '306';
      case value307:
        return '307';
      case value308:
        return '308';
      case value309:
        return '309';
      case value310:
        return '310';
      case value311:
        return '311';
      case value312:
        return '312';
      case value313:
        return '313';
      case value314:
        return '314';
      case value315:
        return '315';
      case value316:
        return '316';
      case value317:
        return '317';
      case value318:
        return '318';
      case value319:
        return '319';
      case value320:
        return '320';
      case value321:
        return '321';
      case value322:
        return '322';
      case value323:
        return '323';
      case value324:
        return '324';
      case value325:
        return '325';
      case value326:
        return '326';
      case value327:
        return '327';
      case value328:
        return '328';
      case value330:
        return '330';
      case value331:
        return '331';
      case value332:
        return '332';
      case value333:
        return '333';
      case value334:
        return '334';
      case value335:
        return '335';
      case value336:
        return '336';
      case value337:
        return '337';
      case value338:
        return '338';
      case value339:
        return '339';
      case value340:
        return '340';
      case value341:
        return '341';
      case value342:
        return '342';
      case value343:
        return '343';
      case value344:
        return '344';
      case value345:
        return '345';
      case value346:
        return '346';
      case value347:
        return '347';
      case value348:
        return '348';
      case value349:
        return '349';
      case value350:
        return '350';
      case value351:
        return '351';
      case value352:
        return '352';
      case value353:
        return '353';
      case value354:
        return '354';
      case value355:
        return '355';
      case value356:
        return '356';
      case value357:
        return '357';
      case value358:
        return '358';
      case value359:
        return '359';
      case value360:
        return '360';
      case value361:
        return '361';
      case value362:
        return '362';
      case value364:
        return '364';
      case value365:
        return '365';
      case value366:
        return '366';
      case value367:
        return '367';
      case value368:
        return '368';
      case value369:
        return '369';
      case value370:
        return '370';
      case value371:
        return '371';
      case value372:
        return '372';
      case value373:
        return '373';
      case value374:
        return '374';
      case value375:
        return '375';
      case value376:
        return '376';
      case value377:
        return '377';
      case value378:
        return '378';
      case value379:
        return '379';
      case value380:
        return '380';
      case value381:
        return '381';
      case value382:
        return '382';
      case value383:
        return '383';
      case value384:
        return '384';
      case value385:
        return '385';
      case value386:
        return '386';
      case value387:
        return '387';
      case value388:
        return '388';
      case value389:
        return '389';
      case value390:
        return '390';
      case value391:
        return '391';
      case value392:
        return '392';
      case value393:
        return '393';
      case value394:
        return '394';
      case value395:
        return '395';
      case value396:
        return '396';
      case value397:
        return '397';
      case value398:
        return '398';
      case value399:
        return '399';
      case value400:
        return '400';
      case value401:
        return '401';
      case value402:
        return '402';
      case value403:
        return '403';
      case value404:
        return '404';
      case value405:
        return '405';
      case value406:
        return '406';
      case value407:
        return '407';
      case value408:
        return '408';
      case value409:
        return '409';
      case value410:
        return '410';
      case value411:
        return '411';
      case value412:
        return '412';
      case value413:
        return '413';
      case value414:
        return '414';
      case value415:
        return '415';
      case value416:
        return '416';
      case value417:
        return '417';
      case value418:
        return '418';
      case value419:
        return '419';
      case value420:
        return '420';
      case value421:
        return '421';
      case value422:
        return '422';
      case value423:
        return '423';
      case value424:
        return '424';
      case value425:
        return '425';
      case value426:
        return '426';
      case value427:
        return '427';
      case value428:
        return '428';
      case value429:
        return '429';
      case value430:
        return '430';
      case value431:
        return '431';
      case value432:
        return '432';
      case value433:
        return '433';
      case value434:
        return '434';
      case value435:
        return '435';
      case value436:
        return '436';
      case value437:
        return '437';
      case value438:
        return '438';
      case value439:
        return '439';
      case value440:
        return '440';
      case value441:
        return '441';
      case value442:
        return '442';
      case value443:
        return '443';
      case value444:
        return '444';
      case value445:
        return '445';
      case value446:
        return '446';
      case value447:
        return '447';
      case value448:
        return '448';
      case value449:
        return '449';
      case value450:
        return '450';
      case value451:
        return '451';
      case value452:
        return '452';
      case value453:
        return '453';
      case value454:
        return '454';
      case value455:
        return '455';
      case value456:
        return '456';
      case value457:
        return '457';
      case value458:
        return '458';
      case value459:
        return '459';
      case value460:
        return '460';
      case value461:
        return '461';
      case value462:
        return '462';
      case value463:
        return '463';
      case value464:
        return '464';
      case value465:
        return '465';
      case value466:
        return '466';
      case value467:
        return '467';
      case value468:
        return '468';
      case value469:
        return '469';
      case value470:
        return '470';
      case value471:
        return '471';
      case value472:
        return '472';
      case value473:
        return '473';
      case value474:
        return '474';
      case value475:
        return '475';
      case value476:
        return '476';
      case value477:
        return '477';
      case value478:
        return '478';
      case value479:
        return '479';
      case value480:
        return '480';
      case value481:
        return '481';
      case value482:
        return '482';
      case value483:
        return '483';
      case value484:
        return '484';
      case value485:
        return '485';
      case value486:
        return '486';
      case value488:
        return '488';
      case value489:
        return '489';
      case value490:
        return '490';
      case value491:
        return '491';
      case value492:
        return '492';
      case value493:
        return '493';
      case value494:
        return '494';
      case value495:
        return '495';
      case value496:
        return '496';
      case value497:
        return '497';
      case value498:
        return '498';
      case value500:
        return '500';
      case value501:
        return '501';
      case value502:
        return '502';
      case value503:
        return '503';
      case value504:
        return '504';
      case value505:
        return '505';
      case value506:
        return '506';
      case value507:
        return '507';
      case value508:
        return '508';
      case value509:
        return '509';
      case value510:
        return '510';
      case value513:
        return '513';
      case value514:
        return '514';
      case value530:
        return '530';
      case value531:
        return '531';
      case value532:
        return '532';
      case value533:
        return '533';
      case value534:
        return '534';
      case value535:
        return '535';
      case value536:
        return '536';
      case value537:
        return '537';
      case value538:
        return '538';
      case value539:
        return '539';
      case value540:
        return '540';
      case value541:
        return '541';
      case value542:
        return '542';
      case value543:
        return '543';
      case value544:
        return '544';
      case value545:
        return '545';
      case value546:
        return '546';
      case value547:
        return '547';
      case value548:
        return '548';
      case value550:
        return '550';
      case value551:
        return '551';
      case value552:
        return '552';
      case value553:
        return '553';
      case value554:
        return '554';
      case value555:
        return '555';
      case value556:
        return '556';
      case value557:
        return '557';
      case value558:
        return '558';
      case value559:
        return '559';
      case value560:
        return '560';
      case value561:
        return '561';
      case value562:
        return '562';
      case value563:
        return '563';
      case value564:
        return '564';
      case value565:
        return '565';
      case value566:
        return '566';
      case value567:
        return '567';
      case value568:
        return '568';
      case value569:
        return '569';
      case value570:
        return '570';
      case value571:
        return '571';
      case value572:
        return '572';
      case value573:
        return '573';
      case value574:
        return '574';
      case value575:
        return '575';
      case value576:
        return '576';
      case value577:
        return '577';
      case value580:
        return '580';
      case value581:
        return '581';
      case value582:
        return '582';
      case value583:
        return '583';
      case value584:
        return '584';
      case value585:
        return '585';
      case value589:
        return '589';
      case value590:
        return '590';
      case value591:
        return '591';
      case value593:
        return '593';
      case value599:
        return '599';
      case value600:
        return '600';
      case value601:
        return '601';
      case value602:
        return '602';
      case value603:
        return '603';
      case value604:
        return '604';
      case value605:
        return '605';
      case value606:
        return '606';
      case value607:
        return '607';
      case value608:
        return '608';
      case value609:
        return '609';
      case value610:
        return '610';
      case value611:
        return '611';
      case value612:
        return '612';
      case value613:
        return '613';
      case value614:
        return '614';
      case value615:
        return '615';
      case value616:
        return '616';
      case value617:
        return '617';
      case value618:
        return '618';
      case value619:
        return '619';
      case value620:
        return '620';
      case value621:
        return '621';
      case value622:
        return '622';
      case value623:
        return '623';
      case value624:
        return '624';
      case value625:
        return '625';
      case value626:
        return '626';
      case value627:
        return '627';
      case value628:
        return '628';
      case value629:
        return '629';
    }
  }

  String toJson() => toString();
  static ServiceType fromString(String str) {
    switch (str) {
      case '1':
        return ServiceType.value1;
      case '2':
        return ServiceType.value2;
      case '3':
        return ServiceType.value3;
      case '4':
        return ServiceType.value4;
      case '5':
        return ServiceType.value5;
      case '6':
        return ServiceType.value6;
      case '7':
        return ServiceType.value7;
      case '8':
        return ServiceType.value8;
      case '9':
        return ServiceType.value9;
      case '10':
        return ServiceType.value10;
      case '11':
        return ServiceType.value11;
      case '12':
        return ServiceType.value12;
      case '13':
        return ServiceType.value13;
      case '14':
        return ServiceType.value14;
      case '15':
        return ServiceType.value15;
      case '16':
        return ServiceType.value16;
      case '17':
        return ServiceType.value17;
      case '18':
        return ServiceType.value18;
      case '19':
        return ServiceType.value19;
      case '20':
        return ServiceType.value20;
      case '21':
        return ServiceType.value21;
      case '22':
        return ServiceType.value22;
      case '23':
        return ServiceType.value23;
      case '24':
        return ServiceType.value24;
      case '25':
        return ServiceType.value25;
      case '26':
        return ServiceType.value26;
      case '27':
        return ServiceType.value27;
      case '28':
        return ServiceType.value28;
      case '29':
        return ServiceType.value29;
      case '30':
        return ServiceType.value30;
      case '31':
        return ServiceType.value31;
      case '32':
        return ServiceType.value32;
      case '33':
        return ServiceType.value33;
      case '34':
        return ServiceType.value34;
      case '35':
        return ServiceType.value35;
      case '36':
        return ServiceType.value36;
      case '37':
        return ServiceType.value37;
      case '38':
        return ServiceType.value38;
      case '39':
        return ServiceType.value39;
      case '40':
        return ServiceType.value40;
      case '41':
        return ServiceType.value41;
      case '42':
        return ServiceType.value42;
      case '43':
        return ServiceType.value43;
      case '44':
        return ServiceType.value44;
      case '45':
        return ServiceType.value45;
      case '46':
        return ServiceType.value46;
      case '47':
        return ServiceType.value47;
      case '48':
        return ServiceType.value48;
      case '49':
        return ServiceType.value49;
      case '50':
        return ServiceType.value50;
      case '51':
        return ServiceType.value51;
      case '52':
        return ServiceType.value52;
      case '53':
        return ServiceType.value53;
      case '54':
        return ServiceType.value54;
      case '55':
        return ServiceType.value55;
      case '56':
        return ServiceType.value56;
      case '57':
        return ServiceType.value57;
      case '58':
        return ServiceType.value58;
      case '59':
        return ServiceType.value59;
      case '60':
        return ServiceType.value60;
      case '61':
        return ServiceType.value61;
      case '62':
        return ServiceType.value62;
      case '63':
        return ServiceType.value63;
      case '64':
        return ServiceType.value64;
      case '65':
        return ServiceType.value65;
      case '66':
        return ServiceType.value66;
      case '67':
        return ServiceType.value67;
      case '68':
        return ServiceType.value68;
      case '69':
        return ServiceType.value69;
      case '70':
        return ServiceType.value70;
      case '71':
        return ServiceType.value71;
      case '72':
        return ServiceType.value72;
      case '73':
        return ServiceType.value73;
      case '74':
        return ServiceType.value74;
      case '75':
        return ServiceType.value75;
      case '76':
        return ServiceType.value76;
      case '77':
        return ServiceType.value77;
      case '78':
        return ServiceType.value78;
      case '79':
        return ServiceType.value79;
      case '80':
        return ServiceType.value80;
      case '81':
        return ServiceType.value81;
      case '82':
        return ServiceType.value82;
      case '83':
        return ServiceType.value83;
      case '84':
        return ServiceType.value84;
      case '85':
        return ServiceType.value85;
      case '86':
        return ServiceType.value86;
      case '87':
        return ServiceType.value87;
      case '88':
        return ServiceType.value88;
      case '89':
        return ServiceType.value89;
      case '90':
        return ServiceType.value90;
      case '91':
        return ServiceType.value91;
      case '92':
        return ServiceType.value92;
      case '93':
        return ServiceType.value93;
      case '94':
        return ServiceType.value94;
      case '95':
        return ServiceType.value95;
      case '96':
        return ServiceType.value96;
      case '97':
        return ServiceType.value97;
      case '98':
        return ServiceType.value98;
      case '99':
        return ServiceType.value99;
      case '100':
        return ServiceType.value100;
      case '101':
        return ServiceType.value101;
      case '102':
        return ServiceType.value102;
      case '103':
        return ServiceType.value103;
      case '104':
        return ServiceType.value104;
      case '105':
        return ServiceType.value105;
      case '106':
        return ServiceType.value106;
      case '107':
        return ServiceType.value107;
      case '108':
        return ServiceType.value108;
      case '109':
        return ServiceType.value109;
      case '110':
        return ServiceType.value110;
      case '111':
        return ServiceType.value111;
      case '112':
        return ServiceType.value112;
      case '113':
        return ServiceType.value113;
      case '114':
        return ServiceType.value114;
      case '115':
        return ServiceType.value115;
      case '116':
        return ServiceType.value116;
      case '117':
        return ServiceType.value117;
      case '118':
        return ServiceType.value118;
      case '119':
        return ServiceType.value119;
      case '120':
        return ServiceType.value120;
      case '121':
        return ServiceType.value121;
      case '122':
        return ServiceType.value122;
      case '123':
        return ServiceType.value123;
      case '124':
        return ServiceType.value124;
      case '125':
        return ServiceType.value125;
      case '126':
        return ServiceType.value126;
      case '127':
        return ServiceType.value127;
      case '128':
        return ServiceType.value128;
      case '129':
        return ServiceType.value129;
      case '130':
        return ServiceType.value130;
      case '131':
        return ServiceType.value131;
      case '132':
        return ServiceType.value132;
      case '133':
        return ServiceType.value133;
      case '134':
        return ServiceType.value134;
      case '135':
        return ServiceType.value135;
      case '136':
        return ServiceType.value136;
      case '137':
        return ServiceType.value137;
      case '138':
        return ServiceType.value138;
      case '139':
        return ServiceType.value139;
      case '140':
        return ServiceType.value140;
      case '141':
        return ServiceType.value141;
      case '142':
        return ServiceType.value142;
      case '143':
        return ServiceType.value143;
      case '144':
        return ServiceType.value144;
      case '145':
        return ServiceType.value145;
      case '146':
        return ServiceType.value146;
      case '147':
        return ServiceType.value147;
      case '148':
        return ServiceType.value148;
      case '149':
        return ServiceType.value149;
      case '150':
        return ServiceType.value150;
      case '151':
        return ServiceType.value151;
      case '152':
        return ServiceType.value152;
      case '153':
        return ServiceType.value153;
      case '154':
        return ServiceType.value154;
      case '155':
        return ServiceType.value155;
      case '156':
        return ServiceType.value156;
      case '157':
        return ServiceType.value157;
      case '158':
        return ServiceType.value158;
      case '159':
        return ServiceType.value159;
      case '160':
        return ServiceType.value160;
      case '161':
        return ServiceType.value161;
      case '162':
        return ServiceType.value162;
      case '163':
        return ServiceType.value163;
      case '164':
        return ServiceType.value164;
      case '165':
        return ServiceType.value165;
      case '166':
        return ServiceType.value166;
      case '167':
        return ServiceType.value167;
      case '168':
        return ServiceType.value168;
      case '169':
        return ServiceType.value169;
      case '170':
        return ServiceType.value170;
      case '171':
        return ServiceType.value171;
      case '172':
        return ServiceType.value172;
      case '173':
        return ServiceType.value173;
      case '174':
        return ServiceType.value174;
      case '175':
        return ServiceType.value175;
      case '176':
        return ServiceType.value176;
      case '177':
        return ServiceType.value177;
      case '178':
        return ServiceType.value178;
      case '179':
        return ServiceType.value179;
      case '180':
        return ServiceType.value180;
      case '181':
        return ServiceType.value181;
      case '182':
        return ServiceType.value182;
      case '183':
        return ServiceType.value183;
      case '184':
        return ServiceType.value184;
      case '185':
        return ServiceType.value185;
      case '186':
        return ServiceType.value186;
      case '187':
        return ServiceType.value187;
      case '188':
        return ServiceType.value188;
      case '189':
        return ServiceType.value189;
      case '190':
        return ServiceType.value190;
      case '191':
        return ServiceType.value191;
      case '192':
        return ServiceType.value192;
      case '193':
        return ServiceType.value193;
      case '194':
        return ServiceType.value194;
      case '195':
        return ServiceType.value195;
      case '196':
        return ServiceType.value196;
      case '197':
        return ServiceType.value197;
      case '198':
        return ServiceType.value198;
      case '199':
        return ServiceType.value199;
      case '200':
        return ServiceType.value200;
      case '201':
        return ServiceType.value201;
      case '202':
        return ServiceType.value202;
      case '203':
        return ServiceType.value203;
      case '204':
        return ServiceType.value204;
      case '205':
        return ServiceType.value205;
      case '206':
        return ServiceType.value206;
      case '207':
        return ServiceType.value207;
      case '208':
        return ServiceType.value208;
      case '209':
        return ServiceType.value209;
      case '210':
        return ServiceType.value210;
      case '211':
        return ServiceType.value211;
      case '212':
        return ServiceType.value212;
      case '213':
        return ServiceType.value213;
      case '214':
        return ServiceType.value214;
      case '215':
        return ServiceType.value215;
      case '216':
        return ServiceType.value216;
      case '217':
        return ServiceType.value217;
      case '218':
        return ServiceType.value218;
      case '219':
        return ServiceType.value219;
      case '220':
        return ServiceType.value220;
      case '221':
        return ServiceType.value221;
      case '222':
        return ServiceType.value222;
      case '223':
        return ServiceType.value223;
      case '224':
        return ServiceType.value224;
      case '225':
        return ServiceType.value225;
      case '226':
        return ServiceType.value226;
      case '227':
        return ServiceType.value227;
      case '228':
        return ServiceType.value228;
      case '229':
        return ServiceType.value229;
      case '230':
        return ServiceType.value230;
      case '231':
        return ServiceType.value231;
      case '232':
        return ServiceType.value232;
      case '233':
        return ServiceType.value233;
      case '234':
        return ServiceType.value234;
      case '235':
        return ServiceType.value235;
      case '236':
        return ServiceType.value236;
      case '237':
        return ServiceType.value237;
      case '238':
        return ServiceType.value238;
      case '239':
        return ServiceType.value239;
      case '240':
        return ServiceType.value240;
      case '241':
        return ServiceType.value241;
      case '242':
        return ServiceType.value242;
      case '243':
        return ServiceType.value243;
      case '244':
        return ServiceType.value244;
      case '245':
        return ServiceType.value245;
      case '246':
        return ServiceType.value246;
      case '247':
        return ServiceType.value247;
      case '248':
        return ServiceType.value248;
      case '249':
        return ServiceType.value249;
      case '250':
        return ServiceType.value250;
      case '251':
        return ServiceType.value251;
      case '252':
        return ServiceType.value252;
      case '253':
        return ServiceType.value253;
      case '254':
        return ServiceType.value254;
      case '255':
        return ServiceType.value255;
      case '256':
        return ServiceType.value256;
      case '257':
        return ServiceType.value257;
      case '258':
        return ServiceType.value258;
      case '259':
        return ServiceType.value259;
      case '260':
        return ServiceType.value260;
      case '261':
        return ServiceType.value261;
      case '262':
        return ServiceType.value262;
      case '263':
        return ServiceType.value263;
      case '264':
        return ServiceType.value264;
      case '265':
        return ServiceType.value265;
      case '266':
        return ServiceType.value266;
      case '267':
        return ServiceType.value267;
      case '268':
        return ServiceType.value268;
      case '269':
        return ServiceType.value269;
      case '270':
        return ServiceType.value270;
      case '271':
        return ServiceType.value271;
      case '272':
        return ServiceType.value272;
      case '273':
        return ServiceType.value273;
      case '274':
        return ServiceType.value274;
      case '275':
        return ServiceType.value275;
      case '276':
        return ServiceType.value276;
      case '277':
        return ServiceType.value277;
      case '278':
        return ServiceType.value278;
      case '279':
        return ServiceType.value279;
      case '280':
        return ServiceType.value280;
      case '281':
        return ServiceType.value281;
      case '282':
        return ServiceType.value282;
      case '283':
        return ServiceType.value283;
      case '284':
        return ServiceType.value284;
      case '285':
        return ServiceType.value285;
      case '286':
        return ServiceType.value286;
      case '287':
        return ServiceType.value287;
      case '288':
        return ServiceType.value288;
      case '289':
        return ServiceType.value289;
      case '290':
        return ServiceType.value290;
      case '291':
        return ServiceType.value291;
      case '292':
        return ServiceType.value292;
      case '293':
        return ServiceType.value293;
      case '294':
        return ServiceType.value294;
      case '295':
        return ServiceType.value295;
      case '296':
        return ServiceType.value296;
      case '297':
        return ServiceType.value297;
      case '298':
        return ServiceType.value298;
      case '299':
        return ServiceType.value299;
      case '300':
        return ServiceType.value300;
      case '301':
        return ServiceType.value301;
      case '302':
        return ServiceType.value302;
      case '303':
        return ServiceType.value303;
      case '304':
        return ServiceType.value304;
      case '305':
        return ServiceType.value305;
      case '306':
        return ServiceType.value306;
      case '307':
        return ServiceType.value307;
      case '308':
        return ServiceType.value308;
      case '309':
        return ServiceType.value309;
      case '310':
        return ServiceType.value310;
      case '311':
        return ServiceType.value311;
      case '312':
        return ServiceType.value312;
      case '313':
        return ServiceType.value313;
      case '314':
        return ServiceType.value314;
      case '315':
        return ServiceType.value315;
      case '316':
        return ServiceType.value316;
      case '317':
        return ServiceType.value317;
      case '318':
        return ServiceType.value318;
      case '319':
        return ServiceType.value319;
      case '320':
        return ServiceType.value320;
      case '321':
        return ServiceType.value321;
      case '322':
        return ServiceType.value322;
      case '323':
        return ServiceType.value323;
      case '324':
        return ServiceType.value324;
      case '325':
        return ServiceType.value325;
      case '326':
        return ServiceType.value326;
      case '327':
        return ServiceType.value327;
      case '328':
        return ServiceType.value328;
      case '330':
        return ServiceType.value330;
      case '331':
        return ServiceType.value331;
      case '332':
        return ServiceType.value332;
      case '333':
        return ServiceType.value333;
      case '334':
        return ServiceType.value334;
      case '335':
        return ServiceType.value335;
      case '336':
        return ServiceType.value336;
      case '337':
        return ServiceType.value337;
      case '338':
        return ServiceType.value338;
      case '339':
        return ServiceType.value339;
      case '340':
        return ServiceType.value340;
      case '341':
        return ServiceType.value341;
      case '342':
        return ServiceType.value342;
      case '343':
        return ServiceType.value343;
      case '344':
        return ServiceType.value344;
      case '345':
        return ServiceType.value345;
      case '346':
        return ServiceType.value346;
      case '347':
        return ServiceType.value347;
      case '348':
        return ServiceType.value348;
      case '349':
        return ServiceType.value349;
      case '350':
        return ServiceType.value350;
      case '351':
        return ServiceType.value351;
      case '352':
        return ServiceType.value352;
      case '353':
        return ServiceType.value353;
      case '354':
        return ServiceType.value354;
      case '355':
        return ServiceType.value355;
      case '356':
        return ServiceType.value356;
      case '357':
        return ServiceType.value357;
      case '358':
        return ServiceType.value358;
      case '359':
        return ServiceType.value359;
      case '360':
        return ServiceType.value360;
      case '361':
        return ServiceType.value361;
      case '362':
        return ServiceType.value362;
      case '364':
        return ServiceType.value364;
      case '365':
        return ServiceType.value365;
      case '366':
        return ServiceType.value366;
      case '367':
        return ServiceType.value367;
      case '368':
        return ServiceType.value368;
      case '369':
        return ServiceType.value369;
      case '370':
        return ServiceType.value370;
      case '371':
        return ServiceType.value371;
      case '372':
        return ServiceType.value372;
      case '373':
        return ServiceType.value373;
      case '374':
        return ServiceType.value374;
      case '375':
        return ServiceType.value375;
      case '376':
        return ServiceType.value376;
      case '377':
        return ServiceType.value377;
      case '378':
        return ServiceType.value378;
      case '379':
        return ServiceType.value379;
      case '380':
        return ServiceType.value380;
      case '381':
        return ServiceType.value381;
      case '382':
        return ServiceType.value382;
      case '383':
        return ServiceType.value383;
      case '384':
        return ServiceType.value384;
      case '385':
        return ServiceType.value385;
      case '386':
        return ServiceType.value386;
      case '387':
        return ServiceType.value387;
      case '388':
        return ServiceType.value388;
      case '389':
        return ServiceType.value389;
      case '390':
        return ServiceType.value390;
      case '391':
        return ServiceType.value391;
      case '392':
        return ServiceType.value392;
      case '393':
        return ServiceType.value393;
      case '394':
        return ServiceType.value394;
      case '395':
        return ServiceType.value395;
      case '396':
        return ServiceType.value396;
      case '397':
        return ServiceType.value397;
      case '398':
        return ServiceType.value398;
      case '399':
        return ServiceType.value399;
      case '400':
        return ServiceType.value400;
      case '401':
        return ServiceType.value401;
      case '402':
        return ServiceType.value402;
      case '403':
        return ServiceType.value403;
      case '404':
        return ServiceType.value404;
      case '405':
        return ServiceType.value405;
      case '406':
        return ServiceType.value406;
      case '407':
        return ServiceType.value407;
      case '408':
        return ServiceType.value408;
      case '409':
        return ServiceType.value409;
      case '410':
        return ServiceType.value410;
      case '411':
        return ServiceType.value411;
      case '412':
        return ServiceType.value412;
      case '413':
        return ServiceType.value413;
      case '414':
        return ServiceType.value414;
      case '415':
        return ServiceType.value415;
      case '416':
        return ServiceType.value416;
      case '417':
        return ServiceType.value417;
      case '418':
        return ServiceType.value418;
      case '419':
        return ServiceType.value419;
      case '420':
        return ServiceType.value420;
      case '421':
        return ServiceType.value421;
      case '422':
        return ServiceType.value422;
      case '423':
        return ServiceType.value423;
      case '424':
        return ServiceType.value424;
      case '425':
        return ServiceType.value425;
      case '426':
        return ServiceType.value426;
      case '427':
        return ServiceType.value427;
      case '428':
        return ServiceType.value428;
      case '429':
        return ServiceType.value429;
      case '430':
        return ServiceType.value430;
      case '431':
        return ServiceType.value431;
      case '432':
        return ServiceType.value432;
      case '433':
        return ServiceType.value433;
      case '434':
        return ServiceType.value434;
      case '435':
        return ServiceType.value435;
      case '436':
        return ServiceType.value436;
      case '437':
        return ServiceType.value437;
      case '438':
        return ServiceType.value438;
      case '439':
        return ServiceType.value439;
      case '440':
        return ServiceType.value440;
      case '441':
        return ServiceType.value441;
      case '442':
        return ServiceType.value442;
      case '443':
        return ServiceType.value443;
      case '444':
        return ServiceType.value444;
      case '445':
        return ServiceType.value445;
      case '446':
        return ServiceType.value446;
      case '447':
        return ServiceType.value447;
      case '448':
        return ServiceType.value448;
      case '449':
        return ServiceType.value449;
      case '450':
        return ServiceType.value450;
      case '451':
        return ServiceType.value451;
      case '452':
        return ServiceType.value452;
      case '453':
        return ServiceType.value453;
      case '454':
        return ServiceType.value454;
      case '455':
        return ServiceType.value455;
      case '456':
        return ServiceType.value456;
      case '457':
        return ServiceType.value457;
      case '458':
        return ServiceType.value458;
      case '459':
        return ServiceType.value459;
      case '460':
        return ServiceType.value460;
      case '461':
        return ServiceType.value461;
      case '462':
        return ServiceType.value462;
      case '463':
        return ServiceType.value463;
      case '464':
        return ServiceType.value464;
      case '465':
        return ServiceType.value465;
      case '466':
        return ServiceType.value466;
      case '467':
        return ServiceType.value467;
      case '468':
        return ServiceType.value468;
      case '469':
        return ServiceType.value469;
      case '470':
        return ServiceType.value470;
      case '471':
        return ServiceType.value471;
      case '472':
        return ServiceType.value472;
      case '473':
        return ServiceType.value473;
      case '474':
        return ServiceType.value474;
      case '475':
        return ServiceType.value475;
      case '476':
        return ServiceType.value476;
      case '477':
        return ServiceType.value477;
      case '478':
        return ServiceType.value478;
      case '479':
        return ServiceType.value479;
      case '480':
        return ServiceType.value480;
      case '481':
        return ServiceType.value481;
      case '482':
        return ServiceType.value482;
      case '483':
        return ServiceType.value483;
      case '484':
        return ServiceType.value484;
      case '485':
        return ServiceType.value485;
      case '486':
        return ServiceType.value486;
      case '488':
        return ServiceType.value488;
      case '489':
        return ServiceType.value489;
      case '490':
        return ServiceType.value490;
      case '491':
        return ServiceType.value491;
      case '492':
        return ServiceType.value492;
      case '493':
        return ServiceType.value493;
      case '494':
        return ServiceType.value494;
      case '495':
        return ServiceType.value495;
      case '496':
        return ServiceType.value496;
      case '497':
        return ServiceType.value497;
      case '498':
        return ServiceType.value498;
      case '500':
        return ServiceType.value500;
      case '501':
        return ServiceType.value501;
      case '502':
        return ServiceType.value502;
      case '503':
        return ServiceType.value503;
      case '504':
        return ServiceType.value504;
      case '505':
        return ServiceType.value505;
      case '506':
        return ServiceType.value506;
      case '507':
        return ServiceType.value507;
      case '508':
        return ServiceType.value508;
      case '509':
        return ServiceType.value509;
      case '510':
        return ServiceType.value510;
      case '513':
        return ServiceType.value513;
      case '514':
        return ServiceType.value514;
      case '530':
        return ServiceType.value530;
      case '531':
        return ServiceType.value531;
      case '532':
        return ServiceType.value532;
      case '533':
        return ServiceType.value533;
      case '534':
        return ServiceType.value534;
      case '535':
        return ServiceType.value535;
      case '536':
        return ServiceType.value536;
      case '537':
        return ServiceType.value537;
      case '538':
        return ServiceType.value538;
      case '539':
        return ServiceType.value539;
      case '540':
        return ServiceType.value540;
      case '541':
        return ServiceType.value541;
      case '542':
        return ServiceType.value542;
      case '543':
        return ServiceType.value543;
      case '544':
        return ServiceType.value544;
      case '545':
        return ServiceType.value545;
      case '546':
        return ServiceType.value546;
      case '547':
        return ServiceType.value547;
      case '548':
        return ServiceType.value548;
      case '550':
        return ServiceType.value550;
      case '551':
        return ServiceType.value551;
      case '552':
        return ServiceType.value552;
      case '553':
        return ServiceType.value553;
      case '554':
        return ServiceType.value554;
      case '555':
        return ServiceType.value555;
      case '556':
        return ServiceType.value556;
      case '557':
        return ServiceType.value557;
      case '558':
        return ServiceType.value558;
      case '559':
        return ServiceType.value559;
      case '560':
        return ServiceType.value560;
      case '561':
        return ServiceType.value561;
      case '562':
        return ServiceType.value562;
      case '563':
        return ServiceType.value563;
      case '564':
        return ServiceType.value564;
      case '565':
        return ServiceType.value565;
      case '566':
        return ServiceType.value566;
      case '567':
        return ServiceType.value567;
      case '568':
        return ServiceType.value568;
      case '569':
        return ServiceType.value569;
      case '570':
        return ServiceType.value570;
      case '571':
        return ServiceType.value571;
      case '572':
        return ServiceType.value572;
      case '573':
        return ServiceType.value573;
      case '574':
        return ServiceType.value574;
      case '575':
        return ServiceType.value575;
      case '576':
        return ServiceType.value576;
      case '577':
        return ServiceType.value577;
      case '580':
        return ServiceType.value580;
      case '581':
        return ServiceType.value581;
      case '582':
        return ServiceType.value582;
      case '583':
        return ServiceType.value583;
      case '584':
        return ServiceType.value584;
      case '585':
        return ServiceType.value585;
      case '589':
        return ServiceType.value589;
      case '590':
        return ServiceType.value590;
      case '591':
        return ServiceType.value591;
      case '593':
        return ServiceType.value593;
      case '599':
        return ServiceType.value599;
      case '600':
        return ServiceType.value600;
      case '601':
        return ServiceType.value601;
      case '602':
        return ServiceType.value602;
      case '603':
        return ServiceType.value603;
      case '604':
        return ServiceType.value604;
      case '605':
        return ServiceType.value605;
      case '606':
        return ServiceType.value606;
      case '607':
        return ServiceType.value607;
      case '608':
        return ServiceType.value608;
      case '609':
        return ServiceType.value609;
      case '610':
        return ServiceType.value610;
      case '611':
        return ServiceType.value611;
      case '612':
        return ServiceType.value612;
      case '613':
        return ServiceType.value613;
      case '614':
        return ServiceType.value614;
      case '615':
        return ServiceType.value615;
      case '616':
        return ServiceType.value616;
      case '617':
        return ServiceType.value617;
      case '618':
        return ServiceType.value618;
      case '619':
        return ServiceType.value619;
      case '620':
        return ServiceType.value620;
      case '621':
        return ServiceType.value621;
      case '622':
        return ServiceType.value622;
      case '623':
        return ServiceType.value623;
      case '624':
        return ServiceType.value624;
      case '625':
        return ServiceType.value625;
      case '626':
        return ServiceType.value626;
      case '627':
        return ServiceType.value627;
      case '628':
        return ServiceType.value628;
      case '629':
        return ServiceType.value629;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static ServiceType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
