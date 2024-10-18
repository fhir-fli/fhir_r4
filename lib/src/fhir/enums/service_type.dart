// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set defines an example set of codes of service-types.
enum ServiceType {
  /// Display: Adoption/Permanent Care Info/Support
  /// Definition: Adoption & permanent care information/support
  value1('1'),

  /// Display: Aged Care Assessment
  /// Definition: Aged care assessment
  value2('2'),

  /// Display: Aged Care Information/Referral
  /// Definition: Aged Care information/referral
  value3('3'),

  /// Display: Aged Residential Care
  /// Definition: Aged Residential Care
  value4('4'),

  /// Display: Case Management for Older Persons
  /// Definition: Case management for older persons
  value5('5'),

  /// Display: Delivered Meals (Meals On Wheels)
  /// Definition: Delivered meals (meals on wheels)
  value6('6'),

  /// Display: Friendly Visiting
  /// Definition: Friendly visiting
  value7('7'),

  /// Display: Home Care/Housekeeping Assistance
  /// Definition: Home care/housekeeping assistance
  value8('8'),

  /// Display: Home Maintenance and Repair
  /// Definition: Home maintenance and repair
  value9('9'),

  /// Display: Personal Alarms/Alerts
  /// Definition: Personal alarms/alerts
  value10('10'),

  /// Display: Personal Care for Older Persons
  /// Definition: Personal care for older persons
  value11('11'),

  /// Display: Planned Activity Groups
  /// Definition: Planned activity groups
  value12('12'),

  /// Display: Acupuncture
  /// Definition: Acupuncture
  value13('13'),

  /// Display: Alexander Technique Therapy
  /// Definition: Alexander technique therapy
  value14('14'),

  /// Display: Aromatherapy
  /// Definition: Aromatherapy
  value15('15'),

  /// Display: Biorhythm Services
  /// Definition: Biorhythm services
  value16('16'),

  /// Display: Bowen Therapy
  /// Definition: Bowen therapy
  value17('17'),

  /// Display: Chinese Herbal Medicine
  /// Definition: Chinese herbal medicine
  value18('18'),

  /// Display: Feldenkrais
  /// Definition: Feldenkrais
  value19('19'),

  /// Display: Homoeopathy
  /// Definition: Homoeopathy
  value20('20'),

  /// Display: Hydrotherapy
  /// Definition: Hydrotherapy
  value21('21'),

  /// Display: Hypnotherapy
  /// Definition: Hypnotherapy
  value22('22'),

  /// Display: Kinesiology
  /// Definition: Kinesiology
  value23('23'),

  /// Display: Magnetic Therapy
  /// Definition: Magnetic therapy
  value24('24'),

  /// Display: Massage Therapy
  /// Definition: Massage therapy
  value25('25'),

  /// Display: Meditation
  /// Definition: Meditation
  value26('26'),

  /// Display: Myotherapy
  /// Definition: Myotherapy
  value27('27'),

  /// Display: Naturopathy
  /// Definition: Naturopathy
  value28('28'),

  /// Display: Reflexology
  /// Definition: Reflexology
  value29('29'),

  /// Display: Reiki
  /// Definition: Reiki
  value30('30'),

  /// Display: Relaxation Therapy
  /// Definition: Relaxation therapy
  value31('31'),

  /// Display: Shiatsu
  /// Definition: Shiatsu
  value32('32'),

  /// Display: Western Herbal Medicine
  /// Definition: Western herbal medicine
  value33('33'),

  /// Display: Family Day care
  /// Definition: Family day care
  value34('34'),

  /// Display: Holiday Programs
  /// Definition: Holiday programs
  value35('35'),

  /// Display: Kindergarten Inclusion Support
  /// Definition: Kindergarten inclusion support for children with a disability
  value36('36'),

  /// Display: Kindergarten/Preschool
  /// Definition: Kindergarten/preschool
  value37('37'),

  /// Display: Long Day Child Care
  /// Definition: Long day child care
  value38('38'),

  /// Display: Occasional Child Care
  /// Definition: Occasional child care
  value39('39'),

  /// Display: Outside School Hours Care
  /// Definition: Outside school hours care
  value40('40'),

  /// Display: Children's Play Programs
  /// Definition: Children's play programs
  value41('41'),

  /// Display: Parenting/Family Support/Education
  /// Definition: Parenting & family management support/education
  value42('42'),

  /// Display: Playgroup
  /// Definition: Playgroup
  value43('43'),

  /// Display: School Nursing
  /// Definition: School nursing
  value44('44'),

  /// Display: Toy Library
  /// Definition: Toy library
  value45('45'),

  /// Display: Child Protection/Child Abuse Report
  /// Definition: Child protection/child abuse report
  value46('46'),

  /// Display: Foster Care
  /// Definition: Foster care
  value47('47'),

  /// Display: Residential/Out-of-Home Care
  /// Definition: Residential/ out of home care
  value48('48'),

  /// Display: Support - Young People Leaving Care
  /// Definition: Support for young people leaving care
  value49('49'),

  /// Display: Audiology
  /// Definition: Audiology
  value50('50'),

  /// Display: Blood Donation
  /// Definition: Blood donation
  value51('51'),

  /// Display: Chiropractic
  /// Definition: Chiropractic
  value52('52'),

  /// Display: Dietetics
  /// Definition: Dietetics
  value53('53'),

  /// Display: Family Planning
  /// Definition: Family planning
  value54('54'),

  /// Display: Health Advocacy/Liaison Service
  /// Definition: Health advocacy/Liaison service
  value55('55'),

  /// Display: Health Information/Referral
  /// Definition: Health information/referral
  value56('56'),

  /// Display: Immunization
  /// Definition: Immunization
  value57('57'),

  /// Display: Maternal & Child Health
  /// Definition: Maternal & child health
  value58('58'),

  /// Display: Nursing
  /// Definition: Nursing
  value59('59'),

  /// Display: Nutrition
  /// Definition: Nutrition
  value60('60'),

  /// Display: Occupational Therapy
  /// Definition: Occupational therapy
  value61('61'),

  /// Display: Optometry
  /// Definition: Optometry
  value62('62'),

  /// Display: Osteopathy
  /// Definition: Osteopathy
  value63('63'),

  /// Display: Pharmacy
  /// Definition: Pharmacy
  value64('64'),

  /// Display: Physiotherapy
  /// Definition: Physiotherapy
  value65('65'),

  /// Display: Podiatry
  /// Definition: Podiatry
  value66('66'),

  /// Display: Sexual Health
  /// Definition: Sexual health
  value67('67'),

  /// Display: Speech Pathology/Therapy
  /// Definition: Speech pathology/therapy
  value68('68'),

  /// Display: Bereavement Counselling
  /// Definition: Bereavement counselling
  value69('69'),

  /// Display: Crisis Counselling
  /// Definition: Crisis counselling
  value70('70'),

  /// Display: Family Counselling/Therapy
  /// Definition: Family counselling and/or family therapy
  value71('71'),

  /// Display: Family Violence Counselling
  /// Definition: Family violence counselling
  value72('72'),

  /// Display: Financial Counselling
  /// Definition: Financial counselling
  value73('73'),

  /// Display: Generalist Counselling
  /// Definition: Generalist counselling
  value74('74'),

  /// Display: Genetic Counselling
  /// Definition: Genetic counselling
  value75('75'),

  /// Display: Health Counselling
  /// Definition: Health counselling
  value76('76'),

  /// Display: Mediation
  /// Definition: Mediation
  value77('77'),

  /// Display: Problem Gambling Counselling
  /// Definition: Problem gambling counselling
  value78('78'),

  /// Display: Relationship Counselling
  /// Definition: Relationship counselling
  value79('79'),

  /// Display: Sexual Assault Counselling
  /// Definition: Sexual assault counselling
  value80('80'),

  /// Display: Trauma Counselling
  /// Definition: Trauma counselling
  value81('81'),

  /// Display: Victims of Crime Counselling
  /// Definition: Victims of crime counselling
  value82('82'),

  /// Display: Cemetery Operation
  /// Definition: Cemetery operation
  value83('83'),

  /// Display: Cremation
  /// Definition: Cremation
  value84('84'),

  /// Display: Death Service Information
  /// Definition: Death service information
  value85('85'),

  /// Display: Funeral Services
  /// Definition: Funeral services
  value86('86'),

  /// Display: Endodontic
  /// Definition: Endodontic
  value87('87'),

  /// Display: General Dental
  /// Definition: General dental
  value88('88'),

  /// Display: Oral Medicine
  /// Definition: Oral medicine
  value89('89'),

  /// Display: Oral Surgery
  /// Definition: Oral surgery
  value90('90'),

  /// Display: Orthodontic
  /// Definition: Orthodontic
  value91('91'),

  /// Display: Paediatric Dentistry
  /// Definition: Paediatric Dentistry
  value92('92'),

  /// Display: Periodontic
  /// Definition: Periodontic
  value93('93'),

  /// Display: Prosthodontic
  /// Definition: Prosthodontic
  value94('94'),

  /// Display: Acquired Brain Injury Info/Referral
  /// Definition: Acquired brain injury information/referral
  value95('95'),

  /// Display: Disability Advocacy
  /// Definition: Disability advocacy
  value96('96'),

  /// Display: Disability Aids & Equipment
  /// Definition: Disability aids & equipment
  value97('97'),

  /// Display: Disability Case Management
  /// Definition: Disability case management
  value98('98'),

  /// Display: Disability Day Programs/Activities
  /// Definition: Disability day programs & activities
  value99('99'),

  /// Display: Disability Information/Referral
  /// Definition: Disability information/referral
  value100('100'),

  /// Display: Disability Support Packages
  /// Definition: Disability support packages
  value101('101'),

  /// Display: Disability Supported Accommodation
  /// Definition: Disability supported accommodation
  value102('102'),

  /// Display: Early Childhood Intervention
  /// Definition: Early childhood intervention
  value103('103'),

  /// Display: Hearing Aids & Equipment
  /// Definition: Hearing aids & equipment
  value104('104'),

  /// Display: Drug and/or Alcohol Counselling
  /// Definition: Drug and/or alcohol counselling
  value105('105'),

  /// Display: Drug/Alcohol Information/Referral
  /// Definition: Drug and/or alcohol information/referral
  value106('106'),

  /// Display: Needle & Syringe Exchange
  /// Definition: Needle & Syringe exchange
  value107('107'),

  /// Display: Non-resid. Alcohol/Drug Treatment
  /// Definition: Non-residential alcohol and/or drug dependence treatment
  value108('108'),

  /// Display: Pharmacotherapy
  /// Definition: Pharmacotherapy (eg. methadone) program
  value109('109'),

  /// Display: Quit Program
  /// Definition: Quit program
  value110('110'),

  /// Display: Residential Alcohol/Drug Treatment
  /// Definition: Residential alcohol and/or drug dependence treatment
  value111('111'),

  /// Display: Adult/Community Education
  /// Definition: Adult/community education
  value112('112'),

  /// Display: Higher Education
  /// Definition: Higher education
  value113('113'),

  /// Display: Primary Education
  /// Definition: Primary education
  value114('114'),

  /// Display: Secondary Education
  /// Definition: Secondary education
  value115('115'),

  /// Display: Training & Vocational Education
  /// Definition: Training & vocational education
  value116('116'),

  /// Display: Emergency Medical
  /// Definition: Emergency medical
  value117('117'),

  /// Display: Employment Placement and/or Support
  /// Definition: Employment placement and/or support
  value118('118'),

  /// Display: Vocational Rehabilitation
  /// Definition: Vocational Rehabilitation
  value119('119'),

  /// Display: Work Safety/Accident Prevention
  /// Definition: Workplace safety and/or accident prevention
  value120('120'),

  /// Display: Financial Assistance
  /// Definition: Financial assistance
  value121('121'),

  /// Display: Financial Information/Advice
  /// Definition: Financial information/advice
  value122('122'),

  /// Display: Material Aid
  /// Definition: Material aid
  value123('123'),

  /// Display: General Practice
  /// Definition: General Practice/GP (doctor)
  value124('124'),

  /// Display: Accommodation Placement/Support
  /// Definition: Accommodation placement and/or support
  value125('125'),

  /// Display: Crisis/Emergency Accommodation
  /// Definition: Crisis/emergency accommodation
  value126('126'),

  /// Display: Homelessness Support
  /// Definition: Homelessness support
  value127('127'),

  /// Display: Housing Information/Referral
  /// Definition: Housing information/referral
  value128('128'),

  /// Display: Public Rental Housing
  /// Definition: Public rental housing
  value129('129'),

  /// Display: Interpreting/Multilingual Service
  /// Definition: Interpreting/Multilingual/Language service
  value130('130'),

  /// Display: Juvenile Justice
  /// Definition: Juvenile Justice
  value131('131'),

  /// Display: Legal Advocacy
  /// Definition: Legal advocacy
  value132('132'),

  /// Display: Legal Information/Advice/Referral
  /// Definition: Legal information/advice/referral
  value133('133'),

  /// Display: Mental Health Advocacy
  /// Definition: Mental health advocacy
  value134('134'),

  /// Display: Mental Health Assess/Triage/Crisis Response
  /// Definition: Mental health assessment/triage/crisis response
  value135('135'),

  /// Display: Mental Health Case Management
  /// Definition: Mental health case management/continuing care
  value136('136'),

  /// Display: Mental Health Information/Referral
  /// Definition: Mental health information/referral
  value137('137'),

  /// Display: Mental Health Inpatient Services
  /// Definition: Mental health inpatient services (hospital psychiatric unit) - requires referral
  value138('138'),

  /// Display: Mental Health Non-residential Rehab
  /// Definition: Mental health non-residential rehabilitation
  value139('139'),

  /// Display: Mental Health Residential Rehab/CCU
  /// Definition: Mental health residential rehabilitation/community care unit
  value140('140'),

  /// Display: Psychiatry (Requires Referral)
  /// Definition: Psychiatry (requires referral)
  value141('141'),

  /// Display: Psychology
  /// Definition: Psychology
  value142('142'),

  /// Display: Martial Arts
  /// Definition: Martial arts
  value143('143'),

  /// Display: Personal Fitness Training
  /// Definition: Personal fitness training
  value144('144'),

  /// Display: Physical Activity Group
  /// Definition: Physical activity group
  value145('145'),

  /// Display: Physical Activity Programs
  /// Definition: Physical activity programs
  value146('146'),

  /// Display: Physical Fitness Testing
  /// Definition: Physical fitness testing
  value147('147'),

  /// Display: Pilates
  /// Definition: Pilates
  value148('148'),

  /// Display: Self-Defence
  /// Definition: Self defence
  value149('149'),

  /// Display: Sporting Club
  /// Definition: Sporting club
  value150('150'),

  /// Display: Yoga
  /// Definition: Yoga
  value151('151'),

  /// Display: Food Safety
  /// Definition: Food safety
  value152('152'),

  /// Display: Health Regulatory /Inspection /Cert.
  /// Definition: Health regulatory, inspection and/or certification
  value153('153'),

  /// Display: Work Health/Safety Inspection/Cert.
  /// Definition: Workplace health and/or safety inspection and/or certification
  value154('154'),

  /// Display: Carer Support
  /// Definition: Carer support
  value155('155'),

  /// Display: Respite Care
  /// Definition: Respite care
  value156('156'),

  /// Display: Anatomical Pathology
  /// Definition: Anatomical Pathology (including Cytopathology & Forensic Pathology)
  value157('157'),

  /// Display: Pathology - Clinical Chemistry
  /// Definition: Pathology - Clinical Chemistry
  value158('158'),

  /// Display: Pathology - General
  /// Definition: Pathology - General
  value159('159'),

  /// Display: Pathology - Genetics
  /// Definition: Pathology - Genetics
  value160('160'),

  /// Display: Pathology - Haematology
  /// Definition: Pathology - Haematology
  value161('161'),

  /// Display: Pathology - Immunology
  /// Definition: Pathology - Immunology
  value162('162'),

  /// Display: Pathology - Microbiology
  /// Definition: Pathology - Microbiology
  value163('163'),

  /// Display: Anaesthesiology - Pain Medicine
  /// Definition: Anaesthesiology - Pain Medicine
  value164('164'),

  /// Display: Cardiology
  /// Definition: Cardiology
  value165('165'),

  /// Display: Clinical Genetics
  /// Definition: Clinical Genetics
  value166('166'),

  /// Display: Clinical Pharmacology
  /// Definition: Clinical Pharmacology
  value167('167'),

  /// Display: Dermatology
  /// Definition: Dermatology
  value168('168'),

  /// Display: Endocrinology
  /// Definition: Endocrinology
  value169('169'),

  /// Display: Gastroenterology & Hepatology
  /// Definition: Gastroenterology & Hepatology
  value170('170'),

  /// Display: Geriatric Medicine
  /// Definition: Geriatric medicine
  value171('171'),

  /// Display: Immunology & Allergy
  /// Definition: Immunology & Allergy
  value172('172'),

  /// Display: Infectious Diseases
  /// Definition: Infectious diseases
  value173('173'),

  /// Display: Intensive Care Medicine
  /// Definition: Intensive care medicine
  value174('174'),

  /// Display: Medical Oncology
  /// Definition: Medical Oncology
  value175('175'),

  /// Display: Nephrology
  /// Definition: Nephrology
  value176('176'),

  /// Display: Neurology
  /// Definition: Neurology
  value177('177'),

  /// Display: Occupational Medicine
  /// Definition: Occupational Medicine
  value178('178'),

  /// Display: Palliative Medicine
  /// Definition: Palliative Medicine
  value179('179'),

  /// Display: Public Health Medicine
  /// Definition: Public Health Medicine
  value180('180'),

  /// Display: Rehabilitation Medicine
  /// Definition: Rehabilitation Medicine
  value181('181'),

  /// Display: Rheumatology
  /// Definition: Rheumatology
  value182('182'),

  /// Display: Sleep Medicine
  /// Definition: Sleep Medicine
  value183('183'),

  /// Display: Thoracic Medicine
  /// Definition: Thoracic medicine
  value184('184'),

  /// Display: Gynaecological Oncology
  /// Definition: Gynaecological Oncology
  value185('185'),

  /// Display: Obstetrics & Gynaecology
  /// Definition: Obstetrics & Gynaecology
  value186('186'),

  /// Display: Reproductive Endocrinology/Infertility
  /// Definition: Reproductive Endocrinology & Infertility
  value187('187'),

  /// Display: Urogynaecology
  /// Definition: Urogynaecology
  value188('188'),

  /// Display: Neonatology & Perinatology
  /// Definition: Neonatology & Perinatology
  value189('189'),

  /// Display: Paediatric Cardiology
  /// Definition: Paediatric Cardiology
  value190('190'),

  /// Display: Paediatric Clinical Genetics
  /// Definition: Paediatric Clinical Genetics
  value191('191'),

  /// Display: Paediatric Clinical Pharmacology
  /// Definition: Paediatric Clinical Pharmacology
  value192('192'),

  /// Display: Paediatric Endocrinology
  /// Definition: Paediatric Endocrinology
  value193('193'),

  /// Display: Paed. Gastroenterology/Hepatology
  /// Definition: Paediatric Gastroenterology & Hepatology
  value194('194'),

  /// Display: Paediatric Haematology
  /// Definition: Paediatric Haematology
  value195('195'),

  /// Display: Paediatric Immunology & Allergy
  /// Definition: Paediatric Immunology & Allergy
  value196('196'),

  /// Display: Paediatric Infectious Diseases
  /// Definition: Paediatric Infectious diseases
  value197('197'),

  /// Display: Paediatric Intensive Care Medicine
  /// Definition: Paediatric intensive care medicine
  value198('198'),

  /// Display: Paediatric Medical Oncology
  /// Definition: Paediatric Medical Oncology
  value199('199'),

  /// Display: Paediatric Medicine
  /// Definition: Paediatric Medicine
  value200('200'),

  /// Display: Paediatric Nephrology
  /// Definition: Paediatric Nephrology
  value201('201'),

  /// Display: Paediatric Neurology
  /// Definition: Paediatric Neurology
  value202('202'),

  /// Display: Paediatric Nuclear Medicine
  /// Definition: Paediatric Nuclear Medicine
  value203('203'),

  /// Display: Paediatric Rehabilitation Medicine
  /// Definition: Paediatric Rehabilitation Medicine
  value204('204'),

  /// Display: Paediatric Rheumatology
  /// Definition: Paediatric Rheumatology
  value205('205'),

  /// Display: Paediatric Sleep Medicine
  /// Definition: Paediatric Sleep Medicine
  value206('206'),

  /// Display: Paediatric Surgery
  /// Definition: Paediatric Surgery
  value207('207'),

  /// Display: Paediatric Thoracic Medicine
  /// Definition: Paediatric Thoracic Medicine
  value208('208'),

  /// Display: Diag. Radiology /Xray /CT /Fluoroscopy
  /// Definition: Diagnostic Radiology/Xray/CT/Fluoroscopy
  value209('209'),

  /// Display: Diagnostic Ultrasound
  /// Definition: Diagnostic Ultrasound
  value210('210'),

  /// Display: Magnetic Resonance Imaging (MRI)
  /// Definition: Magnetic Resonance Imaging (MRI)
  value211('211'),

  /// Display: Nuclear Medicine
  /// Definition: Nuclear Medicine
  value212('212'),

  /// Display: Obstetric/Gynaecological Ultrasound
  /// Definition: Obstetric & Gynaecological Ultrasound
  value213('213'),

  /// Display: Radiation Oncology
  /// Definition: Radiation oncology
  value214('214'),

  /// Display: Cardiothoracic Surgery
  /// Definition: Cardiothoracic surgery
  value215('215'),

  /// Display: Neurosurgery
  /// Definition: Neurosurgery
  value216('216'),

  /// Display: Ophthalmology
  /// Definition: Ophthalmology
  value217('217'),

  /// Display: Orthopaedic Surgery
  /// Definition: Orthopaedic surgery
  value218('218'),

  /// Display: Otolaryngology/Head & Neck Surgery
  /// Definition: Otolaryngology - Head & Neck Surgery
  value219('219'),

  /// Display: Plastic & Reconstructive Surgery
  /// Definition: Plastic & Reconstructive Surgery
  value220('220'),

  /// Display: Surgery - General
  /// Definition: Surgery - General
  value221('221'),

  /// Display: Urology
  /// Definition: Urology
  value222('222'),

  /// Display: Vascular Surgery
  /// Definition: Vascular surgery
  value223('223'),

  /// Display: Support Groups
  /// Definition: Support groups
  value224('224'),

  /// Display: Air ambulance
  /// Definition: Air ambulance
  value225('225'),

  /// Display: Ambulance
  /// Definition: Ambulance
  value226('226'),

  /// Display: Blood Transport
  /// Definition: Blood transport
  value227('227'),

  /// Display: Community Bus
  /// Definition: Community bus
  value228('228'),

  /// Display: Flying Doctor Service
  /// Definition: Flying doctor service
  value229('229'),

  /// Display: Patient Transport
  /// Definition: Patient transport
  value230('230'),

  /// Display: A&E
  /// Definition: A&E
  value231('231'),

  /// Display: A&EP
  /// Definition: A&EP
  value232('232'),

  /// Display: Abuse
  /// Definition: Abuse
  value233('233'),

  /// Display: ACAS
  /// Definition: ACAS
  value234('234'),

  /// Display: Access
  /// Definition: Access
  value235('235'),

  /// Display: Accident
  /// Definition: Accident
  value236('236'),

  /// Display: Acute Inpatient Serv
  /// Definition: Acute Inpatient Service's
  value237('237'),

  /// Display: Adult Day Programs
  /// Definition: Adult Day Programs
  value238('238'),

  /// Display: Adult Mental Health Services
  /// Definition: Adult Mental Health Services
  value239('239'),

  /// Display: Advice
  /// Definition: Advice
  value240('240'),

  /// Display: Advocacy
  /// Definition: Advocacy
  value241('241'),

  /// Display: Aged Persons Mental
  /// Definition: Aged Persons Mental Health Residential Units
  value242('242'),

  /// Display: Aged Persons Mental
  /// Definition: Aged Persons Mental Health Services
  value243('243'),

  /// Display: Aged Persons Mental
  /// Definition: Aged Persons Mental Health Teams
  value244('244'),

  /// Display: Aids
  /// Definition: Aids
  value245('245'),

  /// Display: Al-Anon
  /// Definition: Al-Anon
  value246('246'),

  /// Display: Alcohol
  /// Definition: Alcohol
  value247('247'),

  /// Display: Al-Teen
  /// Definition: Al-Teen
  value248('248'),

  /// Display: Antenatal
  /// Definition: Antenatal
  value249('249'),

  /// Display: Anxiety
  /// Definition: Anxiety
  value250('250'),

  /// Display: Arthritis
  /// Definition: Arthritis
  value251('251'),

  /// Display: Assessment
  /// Definition: Assessment
  value252('252'),

  /// Display: Assistance
  /// Definition: Assistance
  value253('253'),

  /// Display: Asthma
  /// Definition: Asthma
  value254('254'),

  /// Display: ATSS
  /// Definition: ATSS
  value255('255'),

  /// Display: Attendant Care
  /// Definition: Attendant Care
  value256('256'),

  /// Display: Babies
  /// Definition: Babies
  value257('257'),

  /// Display: Bathroom Modificatio
  /// Definition: Bathroom Modification
  value258('258'),

  /// Display: Behavior
  /// Definition: Behavior
  value259('259'),

  /// Display: Behavior Interventi
  /// Definition: Behavior Intervention
  value260('260'),

  /// Display: Bereavement
  /// Definition: Bereavement
  value261('261'),

  /// Display: Bipolar
  /// Definition: Bipolar
  value262('262'),

  /// Display: Birth
  /// Definition: Birth
  value263('263'),

  /// Display: Birth Control
  /// Definition: Birth Control
  value264('264'),

  /// Display: Birthing Options
  /// Definition: Birthing Options
  value265('265'),

  /// Display: BIST
  /// Definition: BIST
  value266('266'),

  /// Display: Blood
  /// Definition: Blood
  value267('267'),

  /// Display: Bone
  /// Definition: Bone
  value268('268'),

  /// Display: Bowel
  /// Definition: Bowel
  value269('269'),

  /// Display: Brain
  /// Definition: Brain
  value270('270'),

  /// Display: Breast Feeding
  /// Definition: Breast Feeding
  value271('271'),

  /// Display: Breast Screen
  /// Definition: Breast Screen
  value272('272'),

  /// Display: Brokerage
  /// Definition: Brokerage
  value273('273'),

  /// Display: Cancer
  /// Definition: Cancer
  value274('274'),

  /// Display: Cancer Support
  /// Definition: Cancer Support
  value275('275'),

  /// Display: Cardiovascular Disea
  /// Definition: Cardiovascular Disease
  value276('276'),

  /// Display: Care Packages
  /// Definition: Care Packages
  value277('277'),

  /// Display: Carer
  /// Definition: Carer
  value278('278'),

  /// Display: Case Management
  /// Definition: Case Management
  value279('279'),

  /// Display: Casualty
  /// Definition: Casualty
  value280('280'),

  /// Display: Centrelink
  /// Definition: Centrelink
  value281('281'),

  /// Display: Chemists
  /// Definition: Chemists
  value282('282'),

  /// Display: Child And Adolescent
  /// Definition: Child And Adolescent Mental Health Services
  value283('283'),

  /// Display: Child Care
  /// Definition: Child Care
  value284('284'),

  /// Display: Child Services
  /// Definition: Child Services
  value285('285'),

  /// Display: Children
  /// Definition: Children
  value286('286'),

  /// Display: Children's Services
  /// Definition: Children's Services
  value287('287'),

  /// Display: Cholesterol
  /// Definition: Cholesterol
  value288('288'),

  /// Display: Clothing
  /// Definition: Clothing
  value289('289'),

  /// Display: Community Based Acco
  /// Definition: Community Based Accommodation
  value290('290'),

  /// Display: Community Care Unit
  /// Definition: Community Care Unit
  value291('291'),

  /// Display: Community Child And
  /// Definition: Community Child And Adolescent Mental Health Services
  value292('292'),

  /// Display: Community Health
  /// Definition: Community Health
  value293('293'),

  /// Display: Community Residentia
  /// Definition: Community Residential Unit
  value294('294'),

  /// Display: Community Transport
  /// Definition: Community Transport
  value295('295'),

  /// Display: Companion Visiting
  /// Definition: Companion Visiting
  value296('296'),

  /// Display: Companionship
  /// Definition: Companionship
  value297('297'),

  /// Display: Consumer Advice
  /// Definition: Consumer Advice
  value298('298'),

  /// Display: Consumer Issues
  /// Definition: Consumer Issues
  value299('299'),

  /// Display: Continuing Care Serv
  /// Definition: Continuing Care Services
  value300('300'),

  /// Display: Contraception Inform
  /// Definition: Contraception Information
  value301('301'),

  /// Display: Coordinating Bodies
  /// Definition: Coordinating Bodies
  value302('302'),

  /// Display: Correctional Service
  /// Definition: Correctional Services
  value303('303'),

  /// Display: Council Environmenta
  /// Definition: Council Environmental Health
  value304('304'),

  /// Display: Counselling
  /// Definition: Counselling
  value305('305'),

  /// Display: Criminal
  /// Definition: Criminal
  value306('306'),

  /// Display: Crises
  /// Definition: Crises
  value307('307'),

  /// Display: Crisis Assessment An
  /// Definition: Crisis Assessment And Treatment Services (Cats)
  value308('308'),

  /// Display: Crisis Assistance
  /// Definition: Crisis Assistance
  value309('309'),

  /// Display: Crisis Refuge
  /// Definition: Crisis Refuge
  value310('310'),

  /// Display: Day Program
  /// Definition: Day Program
  value311('311'),

  /// Display: Deaf
  /// Definition: Deaf
  value312('312'),

  /// Display: Dental Hygiene
  /// Definition: Dental Hygiene
  value313('313'),

  /// Display: Dentistry
  /// Definition: Dentistry
  value314('314'),

  /// Display: Dentures
  /// Definition: Dentures
  value315('315'),

  /// Display: Depression
  /// Definition: Depression
  value316('316'),

  /// Display: Detoxification
  /// Definition: Detoxification
  value317('317'),

  /// Display: Diabetes
  /// Definition: Diabetes
  value318('318'),

  /// Display: Diaphragm Fitting
  /// Definition: Diaphragm Fitting
  value319('319'),

  /// Display: Dieticians
  /// Definition: Dieticians
  value320('320'),

  /// Display: Disabled Parking
  /// Definition: Disabled Parking
  value321('321'),

  /// Display: District Nursing
  /// Definition: District Nursing
  value322('322'),

  /// Display: Divorce
  /// Definition: Divorce
  value323('323'),

  /// Display: Doctors
  /// Definition: Doctors
  value324('324'),

  /// Display: Drink-Drive
  /// Definition: Drink-Drive
  value325('325'),

  /// Display: Dual Diagnosis Servi
  /// Definition: Dual Diagnosis Services
  value326('326'),

  /// Display: Early Choice
  /// Definition: Early Choice
  value327('327'),

  /// Display: Eating Disorder
  /// Definition: Eating Disorder
  value328('328'),

  /// Display: Emergency Relief
  /// Definition: Emergency Relief
  value330('330'),

  /// Display: Employment And Train
  /// Definition: Employment And Training
  value331('331'),

  /// Display: Environment
  /// Definition: Environment
  value332('332'),

  /// Display: Equipment
  /// Definition: Equipment
  value333('333'),

  /// Display: Exercise
  /// Definition: Exercise
  value334('334'),

  /// Display: Facility
  /// Definition: Facility
  value335('335'),

  /// Display: Family Choice
  /// Definition: Family Choice
  value336('336'),

  /// Display: Family Law
  /// Definition: Family Law
  value337('337'),

  /// Display: Family Options
  /// Definition: Family Options
  value338('338'),

  /// Display: Family Services
  /// Definition: Family Services
  value339('339'),

  /// Display: FFYA
  /// Definition: FFYA
  value340('340'),

  /// Display: Financial Aid
  /// Definition: Financial Aid
  value341('341'),

  /// Display: Fitness
  /// Definition: Fitness
  value342('342'),

  /// Display: Flexible Care Packag
  /// Definition: Flexible Care Packages
  value343('343'),

  /// Display: Food
  /// Definition: Food
  value344('344'),

  /// Display: Food Vouchers
  /// Definition: Food Vouchers
  value345('345'),

  /// Display: Forensic Mental Heal
  /// Definition: Forensic Mental Health Services
  value346('346'),

  /// Display: Futures
  /// Definition: Futures
  value347('347'),

  /// Display: Futures For Young Ad
  /// Definition: Futures For Young Adults
  value348('348'),

  /// Display: General Practitioner
  /// Definition: General Practitioners
  value349('349'),

  /// Display: Grants
  /// Definition: Grants
  value350('350'),

  /// Display: Grief
  /// Definition: Grief
  value351('351'),

  /// Display: Grief Counselling
  /// Definition: Grief Counselling
  value352('352'),

  /// Display: HACC
  /// Definition: HACC
  value353('353'),

  /// Display: Heart Disease
  /// Definition: Heart Disease
  value354('354'),

  /// Display: Help
  /// Definition: Help
  value355('355'),

  /// Display: High Blood Pressure
  /// Definition: High Blood Pressure
  value356('356'),

  /// Display: Home Help
  /// Definition: Home Help
  value357('357'),

  /// Display: Home Nursing
  /// Definition: Home Nursing
  value358('358'),

  /// Display: Homefirst
  /// Definition: Homefirst
  value359('359'),

  /// Display: Hospice Care
  /// Definition: Hospice Care
  value360('360'),

  /// Display: Hospital Services
  /// Definition: Hospital Services
  value361('361'),

  /// Display: Hospital To Home
  /// Definition: Hospital To Home
  value362('362'),

  /// Display: Hostel
  /// Definition: Hostel
  value364('364'),

  /// Display: Hostel Accommodation
  /// Definition: Hostel Accommodation
  value365('365'),

  /// Display: Household Items
  /// Definition: Household Items
  value366('366'),

  /// Display: Hypertension
  /// Definition: Hypertension
  value367('367'),

  /// Display: Illness
  /// Definition: Illness
  value368('368'),

  /// Display: Independent Living
  /// Definition: Independent Living
  value369('369'),

  /// Display: Information
  /// Definition: Information
  value370('370'),

  /// Display: Injury
  /// Definition: Injury
  value371('371'),

  /// Display: Intake
  /// Definition: Intake
  value372('372'),

  /// Display: Intensive Mobile You
  /// Definition: Intensive Mobile Youth Outreach Services (Imyos)
  value373('373'),

  /// Display: Intervention
  /// Definition: Intervention
  value374('374'),

  /// Display: Job Searching
  /// Definition: Job Searching
  value375('375'),

  /// Display: Justice
  /// Definition: Justice
  value376('376'),

  /// Display: Leisure
  /// Definition: Leisure
  value377('377'),

  /// Display: Loans
  /// Definition: Loans
  value378('378'),

  /// Display: Low Income Earners
  /// Definition: Low Income Earners
  value379('379'),

  /// Display: Lung
  /// Definition: Lung
  value380('380'),

  /// Display: Making A Difference
  /// Definition: Making A Difference
  value381('381'),

  /// Display: Medical Services
  /// Definition: Medical Services
  value382('382'),

  /// Display: Medical Specialists
  /// Definition: Medical Specialists
  value383('383'),

  /// Display: Medication Administr
  /// Definition: Medication Administration
  value384('384'),

  /// Display: Menstrual Informatio
  /// Definition: Menstrual Information
  value385('385'),

  /// Display: Methadone
  /// Definition: Methadone
  value386('386'),

  /// Display: Mobile Support And T
  /// Definition: Mobile Support And Treatment Services (MSTS)
  value387('387'),

  /// Display: Motor Neurone
  /// Definition: Motor Neurone
  value388('388'),

  /// Display: Multiple Sclerosis
  /// Definition: Multiple Sclerosis
  value389('389'),

  /// Display: Neighbourhood House
  /// Definition: Neighbourhood House
  value390('390'),

  /// Display: Nursing Home
  /// Definition: Nursing Home
  value391('391'),

  /// Display: Nursing Mothers
  /// Definition: Nursing Mothers
  value392('392'),

  /// Display: Obesity
  /// Definition: Obesity
  value393('393'),

  /// Display: Occupational Health
  /// Definition: Occupational Health & Safety
  value394('394'),

  /// Display: Optometrist
  /// Definition: Optometrist
  value395('395'),

  /// Display: Oral Hygiene
  /// Definition: Oral Hygiene
  value396('396'),

  /// Display: Outpatients
  /// Definition: Outpatients
  value397('397'),

  /// Display: Outreach Service
  /// Definition: Outreach Service
  value398('398'),

  /// Display: PADP
  /// Definition: PADP
  value399('399'),

  /// Display: Pain
  /// Definition: Pain
  value400('400'),

  /// Display: Pap Smear
  /// Definition: Pap Smear
  value401('401'),

  /// Display: Parenting
  /// Definition: Parenting
  value402('402'),

  /// Display: Peak Organizations
  /// Definition: Peak Organizations
  value403('403'),

  /// Display: Personal Care
  /// Definition: Personal Care
  value404('404'),

  /// Display: Pharmacies
  /// Definition: Pharmacies
  value405('405'),

  /// Display: Phobias
  /// Definition: Phobias
  value406('406'),

  /// Display: Physical
  /// Definition: Physical
  value407('407'),

  /// Display: Physical Activity
  /// Definition: Physical Activity
  value408('408'),

  /// Display: Postnatal
  /// Definition: Postnatal
  value409('409'),

  /// Display: Pregnancy
  /// Definition: Pregnancy
  value410('410'),

  /// Display: Pregnancy Tests
  /// Definition: Pregnancy Tests
  value411('411'),

  /// Display: Preschool
  /// Definition: Preschool
  value412('412'),

  /// Display: Prescriptions
  /// Definition: Prescriptions
  value413('413'),

  /// Display: Primary Mental Healt
  /// Definition: Primary Mental Health And Early Intervention Teams
  value414('414'),

  /// Display: Property Maintenance
  /// Definition: Property Maintenance
  value415('415'),

  /// Display: Prostate
  /// Definition: Prostate
  value416('416'),

  /// Display: Psychiatric
  /// Definition: Psychiatric
  value417('417'),

  /// Display: Psychiatric Disabili
  /// Definition: Psychiatric Disability Support Services - Home-Based Outreach
  value418('418'),

  /// Display: Psychiatric Disabili
  /// Definition: Psychiatric Disability Support Services - Planned Respite
  value419('419'),

  /// Display: Psychiatric Disabili
  /// Definition: Psychiatric Disability Support Services - Residential Rehabilitation
  value420('420'),

  /// Display: Psychiatric Disabili
  /// Definition: Psychiatric Disability Support Services Home-Based Outreach
  value421('421'),

  /// Display: Psychiatric Disabili
  /// Definition: Psychiatric Disability Support Services Mutual Support And Self Help
  value422('422'),

  /// Display: Psychiatric Support
  /// Definition: Psychiatric Support
  value423('423'),

  /// Display: Recreation
  /// Definition: Recreation
  value424('424'),

  /// Display: Referral
  /// Definition: Referral
  value425('425'),

  /// Display: Refuge
  /// Definition: Refuge
  value426('426'),

  /// Display: Rent Assistance
  /// Definition: Rent Assistance
  value427('427'),

  /// Display: Residential Faciliti
  /// Definition: Residential Facilities
  value428('428'),

  /// Display: Residential Respite
  /// Definition: Residential Respite
  value429('429'),

  /// Display: Respiratory
  /// Definition: Respiratory
  value430('430'),

  /// Display: Response
  /// Definition: Response
  value431('431'),

  /// Display: Rooming Houses
  /// Definition: Rooming Houses
  value432('432'),

  /// Display: Safe Sex
  /// Definition: Safe Sex
  value433('433'),

  /// Display: Secure Extended Care
  /// Definition: Secure Extended Care Inpatient Services
  value434('434'),

  /// Display: Self Help
  /// Definition: Self Help
  value435('435'),

  /// Display: Separation
  /// Definition: Separation
  value436('436'),

  /// Display: Services
  /// Definition: Services
  value437('437'),

  /// Display: Sex Education
  /// Definition: Sex Education
  value438('438'),

  /// Display: Sexual Abuse
  /// Definition: Sexual Abuse
  value439('439'),

  /// Display: Sexual Issues
  /// Definition: Sexual Issues
  value440('440'),

  /// Display: Sexually Transmitted
  /// Definition: Sexually Transmitted Diseases
  value441('441'),

  /// Display: SIDS
  /// Definition: SIDS
  value442('442'),

  /// Display: Social Support
  /// Definition: Social Support
  value443('443'),

  /// Display: Socialisation
  /// Definition: Socialisation
  value444('444'),

  /// Display: Special Needs
  /// Definition: Special Needs
  value445('445'),

  /// Display: Speech Therapist
  /// Definition: Speech Therapist
  value446('446'),

  /// Display: Splinting
  /// Definition: Splinting
  value447('447'),

  /// Display: Sport
  /// Definition: Sport
  value448('448'),

  /// Display: Statewide And Specia
  /// Definition: Statewide And Specialist Services
  value449('449'),

  /// Display: STD
  /// Definition: STD
  value450('450'),

  /// Display: STI
  /// Definition: STI
  value451('451'),

  /// Display: Stillbirth
  /// Definition: Stillbirth
  value452('452'),

  /// Display: Stomal Care
  /// Definition: Stomal Care
  value453('453'),

  /// Display: Stroke
  /// Definition: Stroke
  value454('454'),

  /// Display: Substance Abuse
  /// Definition: Substance Abuse
  value455('455'),

  /// Display: Support
  /// Definition: Support
  value456('456'),

  /// Display: Syringes
  /// Definition: Syringes
  value457('457'),

  /// Display: Teeth
  /// Definition: Teeth
  value458('458'),

  /// Display: Tenancy Advice
  /// Definition: Tenancy Advice
  value459('459'),

  /// Display: Terminal Illness
  /// Definition: Terminal Illness
  value460('460'),

  /// Display: Therapy
  /// Definition: Therapy
  value461('461'),

  /// Display: Transcription
  /// Definition: Transcription
  value462('462'),

  /// Display: Translating Services
  /// Definition: Translating Services
  value463('463'),

  /// Display: Translator
  /// Definition: Translator
  value464('464'),

  /// Display: Transport
  /// Definition: Transport
  value465('465'),

  /// Display: Vertebrae
  /// Definition: Vertebrae
  value466('466'),

  /// Display: Violence
  /// Definition: Violence
  value467('467'),

  /// Display: Vocational Guidance
  /// Definition: Vocational Guidance
  value468('468'),

  /// Display: Weight
  /// Definition: Weight
  value469('469'),

  /// Display: Welfare Assistance
  /// Definition: Welfare Assistance
  value470('470'),

  /// Display: Welfare Counselling
  /// Definition: Welfare Counselling
  value471('471'),

  /// Display: Wheelchairs
  /// Definition: Wheelchairs
  value472('472'),

  /// Display: Wound Management
  /// Definition: Wound Management
  value473('473'),

  /// Display: Young People At Risk
  /// Definition: Young People At Risk
  value474('474'),

  /// Display: Further Desc. - Community Health Care
  /// Definition: Further Description - Community Health Care
  value475('475'),

  /// Display: Library
  /// Definition: Library
  value476('476'),

  /// Display: Community Hours
  /// Definition: Community Hours
  value477('477'),

  /// Display: Further Desc. - Specialist Medical
  /// Definition: Further Description - Specialist Medical
  value478('478'),

  /// Display: Hepatology
  /// Definition: Hepatology
  value479('479'),

  /// Display: Gastroenterology
  /// Definition: Gastroenterology
  value480('480'),

  /// Display: Gynaecology
  /// Definition: Gynaecology
  value481('481'),

  /// Display: Obstetrics
  /// Definition: Obstetrics
  value482('482'),

  /// Display: Further Desc. - Specialist Surgical
  /// Definition: Further Description - Specialist Surgical
  value483('483'),

  /// Display: Placement Protection
  /// Definition: Placement Protection
  value484('484'),

  /// Display: Family Violence
  /// Definition: Family Violence
  value485('485'),

  /// Display: Integrated Family Services
  /// Definition: Integrated Family Services
  value486('486'),

  /// Display: Diabetes Educator
  /// Definition: Diabetes Educator
  value488('488'),

  /// Display: Kinship Care
  /// Definition: Kinship Care
  value489('489'),

  /// Display: General Mental Health Services
  /// Definition: General Mental Health Services
  value490('490'),

  /// Display: Exercise Physiology
  /// Definition: Exercise Physiology
  value491('491'),

  /// Display: Medical Research
  /// Definition: Medical Research
  value492('492'),

  /// Display: Youth
  /// Definition: Youth
  value493('493'),

  /// Display: Youth Services
  /// Definition: Youth Services
  value494('494'),

  /// Display: Youth Health
  /// Definition: Youth Health
  value495('495'),

  /// Display: Child and Family Ser
  /// Definition: Child and Family Services
  value496('496'),

  /// Display: Home Visits
  /// Definition: Home Visits
  value497('497'),

  /// Display: Mobile Services
  /// Definition: Mobile Services
  value498('498'),

  /// Display: Before and/or After
  /// Definition: Before and/or After School Care
  value500('500'),

  /// Display: Cancer Services
  /// Definition: Cancer Services
  value501('501'),

  /// Display: Integrated Cancer Se
  /// Definition: Integrated Cancer Services
  value502('502'),

  /// Display: Multidisciplinary Se
  /// Definition: Multidisciplinary Services
  value503('503'),

  /// Display: Multidisciplinary Ca
  /// Definition: Multidisciplinary Cancer Services
  value504('504'),

  /// Display: Meetings
  /// Definition: Meetings
  value505('505'),

  /// Display: Blood pressure monit
  /// Definition: Blood pressure monitoring
  value506('506'),

  /// Display: Dose administration
  /// Definition: Dose administration aid
  value507('507'),

  /// Display: Medical Equipment Hi
  /// Definition: Medical Equipment Hire
  value508('508'),

  /// Display: Parenting/Family Support/Education
  /// Definition: Parenting & family support/education
  value509('509'),

  /// Display: Deputising Service
  /// Definition: Deputising Service
  value510('510'),

  /// Display: Cancer Support Groups
  /// Definition: Cancer Support Groups
  value513('513'),

  /// Display: Community Cancer Services
  /// Definition: Community Cancer Services
  value514('514'),

  /// Display: Disability Care Transport
  /// Definition: Disability Care Transport
  value530('530'),

  /// Display: Aged Care Transport
  /// Definition: Aged Care Transport
  value531('531'),

  /// Display: Diabetes Education s
  /// Definition: Diabetes Education service
  value532('532'),

  /// Display: Cardiac Rehabilitati
  /// Definition: Cardiac Rehabilitation Service
  value533('533'),

  /// Display: Young Adult Diabetes
  /// Definition: Young Adult Diabetes services (YADS)
  value534('534'),

  /// Display: Pulmonary Rehabilita
  /// Definition: Pulmonary Rehabilitation Service
  value535('535'),

  /// Display: Art therapy
  /// Definition: Art therapy
  value536('536'),

  /// Display: Medication Reviews
  /// Definition: Medication Reviews
  value537('537'),

  /// Display: Telephone Counselling
  /// Definition: Telephone Counselling
  value538('538'),

  /// Display: Telephone Help Line
  /// Definition: Telephone Help Line
  value539('539'),

  /// Display: Online Service
  /// Definition: Online Service
  value540('540'),

  /// Display: Crisis - Mental Health
  /// Definition: Crisis - Mental Health
  value541('541'),

  /// Display: Youth Crisis
  /// Definition: Youth Crisis
  value542('542'),

  /// Display: Sexual Assault
  /// Definition: Sexual Assault
  value543('543'),

  /// Display: GPAH Other
  /// Definition: GPAH Other
  value544('544'),

  /// Display: Paediatric Dermatology
  /// Definition: Paediatric Dermatology
  value545('545'),

  /// Display: Veterans Services
  /// Definition: Veterans Services
  value546('546'),

  /// Display: Veterans
  /// Definition: Veterans
  value547('547'),

  /// Display: Food Relief/Food/Meals
  /// Definition: Food Relief/food/meals
  value548('548'),

  /// Display: Dementia Care
  /// Definition: Dementia Care
  value550('550'),

  /// Display: Alzheimer
  /// Definition: Alzheimer
  value551('551'),

  /// Display: Drug and/or Alcohol Support Groups
  /// Definition: Drug and/or alcohol support groups
  value552('552'),

  /// Display: 1-on-1 Support /Mentoring /Coaching
  /// Definition: One on One Support/Mentoring/Coaching
  value553('553'),

  /// Display: Chronic Disease Management
  /// Definition: Chronic Disease Management
  value554('554'),

  /// Display: Liaison Services
  /// Definition: Liaison Services
  value555('555'),

  /// Display: Walk-in Centre /Non-Emergency
  /// Definition: Walk in Centre / non emergency
  value556('556'),

  /// Display: Inpatients
  /// Definition: Inpatients
  value557('557'),

  /// Display: Spiritual Counselling
  /// Definition: Spiritual Counselling
  value558('558'),

  /// Display: Women's Health
  /// Definition: Women's Health
  value559('559'),

  /// Display: Men's Health
  /// Definition: Men's Health
  value560('560'),

  /// Display: Health Education/Awareness Program
  /// Definition: Health education/Health awareness program
  value561('561'),

  /// Display: Test Message
  /// Definition: Test Message
  value562('562'),

  /// Display: Remedial Massage
  /// Definition: Remedial Massage
  value563('563'),

  /// Display: Adolescent Mental Health Services
  /// Definition: Adolescent Mental Health Services
  value564('564'),

  /// Display: Youth Drop In/Assistance/Support
  /// Definition: Youth drop in/assistance/support
  value565('565'),

  /// Display: Aboriginal Health Worker
  /// Definition: Aboriginal Health Worker
  value566('566'),

  /// Display: Women's Health Clinic
  /// Definition: Women's Health Clinic
  value567('567'),

  /// Display: Men's Health Clinic
  /// Definition: Men's Health Clinic
  value568('568'),

  /// Display: Migrant Health Clinic
  /// Definition: Migrant Health Clinic
  value569('569'),

  /// Display: Refugee Health Clinic
  /// Definition: Refugee Health Clinic
  value570('570'),

  /// Display: Aboriginal Health Clinic
  /// Definition: Aboriginal Health Clinic
  value571('571'),

  /// Display: Nurse Practitioner Lead Clinic/s
  /// Definition: Nurse Practitioner lead Clinic/s
  value572('572'),

  /// Display: Nurse Lead Clinic/s
  /// Definition: Nurse lead Clinic/s
  value573('573'),

  /// Display: Culturally Tailored Support Groups
  /// Definition: Culturally tailored support groups
  value574('574'),

  /// Display: Culturally Tailored Health Promotion
  /// Definition: Culturally tailored health promotion
  value575('575'),

  /// Display: Rehabilitation
  /// Definition: Rehabilitation
  value576('576'),

  /// Display: Education Information/Referral
  /// Definition: Education information/referral
  value577('577'),

  /// Display: Social Work
  /// Definition: Social Work
  value580('580'),

  /// Display: Haematology
  /// Definition: Haematology
  value581('581'),

  /// Display: Maternity Shared Car
  /// Definition: Maternity Shared Care
  value582('582'),

  /// Display: Rehabilitation Servi
  /// Definition: Rehabilitation Service
  value583('583'),

  /// Display: Cranio-sacral Therapy
  /// Definition: Cranio-Sacral Therapy
  value584('584'),

  /// Display: Prosthetics & Orthotics
  /// Definition: Prosthetics & Orthotics
  value585('585'),

  /// Display: Home Medicine Review
  /// Definition: Home Medicine Review
  value589('589'),

  /// Display: GPAH - Medical
  /// Definition: GPAH - Medical
  value590('590'),

  /// Display: Music Therapy
  /// Definition: Music Therapy
  value591('591'),

  /// Display: Falls Prevention
  /// Definition: Falls Prevention
  value593('593'),

  /// Display: Accommodation/Tenancy
  /// Definition: Accommodation/Tenancy
  value599('599'),

  /// Display: Assess-Skill, Ability, Needs
  /// Definition: Assess-Skill, Ability, Needs
  value600('600'),

  /// Display: Assist Access/Maintain Employ
  /// Definition: Assist Access/Maintain Employ
  value601('601'),

  /// Display: Assist Prod-Pers Care/Safety
  /// Definition: Assist Prod-Pers Care/Safety
  value602('602'),

  /// Display: Assist-Integrate School/Ed
  /// Definition: Assist-Integrate School/Ed
  value603('603'),

  /// Display: Assist-Life Stage, Transition
  /// Definition: Assist-Life Stage, Transition
  value604('604'),

  /// Display: Assist-Personal Activities
  /// Definition: Assist-Personal Activities
  value605('605'),

  /// Display: Assist-Travel/Transport
  /// Definition: Assist-Travel/Transport
  value606('606'),

  /// Display: Assistive Equip-General Tasks
  /// Definition: Assistive Equip-General Tasks
  value607('607'),

  /// Display: Assistive Equip-Recreation
  /// Definition: Assistive Equip-Recreation
  value608('608'),

  /// Display: Assistive Prod-Household Task
  /// Definition: Assistive Prod-Household Task
  value609('609'),

  /// Display: Behavior Support
  /// Definition: Behavior Support
  value610('610'),

  /// Display: Comms & Info Equipment
  /// Definition: Comms & Info Equipment
  value611('611'),

  /// Display: Community Nursing Care
  /// Definition: Community Nursing Care
  value612('612'),

  /// Display: Daily Tasks/Shared Living
  /// Definition: Daily Tasks/Shared Living
  value613('613'),

  /// Display: Development-Life Skills
  /// Definition: Development-Life Skills
  value614('614'),

  /// Display: Early Childhood Supports
  /// Definition: Early Childhood Supports
  value615('615'),

  /// Display: Equipment Special Assess Setup
  /// Definition: Equipment Special Assess Setup
  value616('616'),

  /// Display: Hearing Equipment
  /// Definition: Hearing Equipment
  value617('617'),

  /// Display: Home Modification
  /// Definition: Home Modification
  value618('618'),

  /// Display: Household Tasks
  /// Definition: Household Tasks
  value619('619'),

  /// Display: Interpret/Translate
  /// Definition: Interpret/Translate
  value620('620'),

  /// Display: Other Innovative Supports
  /// Definition: Other Innovative Supports
  value621('621'),

  /// Display: Participate Community
  /// Definition: Participate Community
  value622('622'),

  /// Display: Personal Mobility Equipment
  /// Definition: Personal Mobility Equipment
  value623('623'),

  /// Display: Physical Wellbeing
  /// Definition: Physical Wellbeing
  value624('624'),

  /// Display: Plan Management
  /// Definition: Plan Management
  value625('625'),

  /// Display: Therapeutic Supports
  /// Definition: Therapeutic Supports
  value626('626'),

  /// Display: Training-Travel Independence
  /// Definition: Training-Travel Independence
  value627('627'),

  /// Display: Vehicle modifications
  /// Definition: Vehicle modifications
  value628('628'),

  /// Display: Vision Equipment
  /// Definition: Vision Equipment
  value629('629'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ServiceType(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ServiceType] instances.
  static ServiceType fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ServiceType.elementOnly.withElement(
        element,
      );
    }
    return ServiceType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  ServiceType withElement(Element? newElement) {
    return ServiceType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
