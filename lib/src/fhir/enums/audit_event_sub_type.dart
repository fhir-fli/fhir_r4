// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// More detailed code concerning the type of the audit event - defined by DICOM with some FHIR specific additions.
enum AuditEventSubType {
  /// Display: Archive
  /// Definition: Archive device
  ARCHIVE('ARCHIVE'),

  /// Display: Autorefraction
  /// Definition: Autorefraction device
  AR('AR'),

  /// Display: Angioscopy
  /// Definition: Angioscopy device
  AS('AS'),

  /// Display: Audio
  /// Definition: Audio object
  AU('AU'),

  /// Display: Ultrasound Bone Densitometry
  /// Definition: Ultrasound Bone Densitometry (modality)
  BDUS('BDUS'),

  /// Display: Biomagnetic imaging
  /// Definition: Biomagnetic imaging device
  BI('BI'),

  /// Display: Bone Mineral Densitometry
  /// Definition: Bone Mineral Densitometry by X-Ray (modality), including dual-energy X-Ray absorptiometry (DXA) and morphometric X-Ray absorptiometry (MXA)
  BMD('BMD'),

  /// Display: Computer Assisted Detection/Diagnosis
  /// Definition: Computer Assisted Detection/Diagnosis device
  CAD('CAD'),

  /// Display: Image Capture
  /// Definition: Image Capture Device, includes video capture
  CAPTURE('CAPTURE'),

  /// Display: Color flow Doppler
  /// Definition: Color flow Doppler
  CD('CD'),

  /// Display: Cinefluorography
  /// Definition: Cinefluorography
  CF('CF'),

  /// Display: Computation Server
  /// Definition: Computation Server; includes radiotherapy planning
  COMP('COMP'),

  /// Display: Culposcopy
  /// Definition: Culposcopy
  CP('CP'),

  /// Display: Computed Radiography
  /// Definition: Computed Radiography device
  CR('CR'),

  /// Display: Cystoscopy
  /// Definition: Cystoscopy
  CS('CS'),

  /// Display: Computed Tomography
  /// Definition: Computed Tomography device
  CT('CT'),

  /// Display: Duplex Doppler
  /// Definition: Duplex Doppler
  DD('DD'),

  /// Display: Digital fluoroscopy
  /// Definition: Digital fluoroscopy
  DF('DF'),

  /// Display: Diaphanography
  /// Definition: Diaphanography device
  DG('DG'),

  /// Display: Digital microscopy
  /// Definition: Digital microscopy
  DM('DM'),

  /// Display: Document Digitizer Equipment
  /// Definition: Equipment that digitized hardcopy documents and imported them
  DOCD('DOCD'),

  /// Display: Digital Subtraction Angiography
  /// Definition: Digital Subtraction Angiography
  DS('DS'),

  /// Display: Department System Scheduler
  /// Definition: Department System Scheduler, workflow manager; includes RIS
  DSS('DSS'),

  /// Display: Digital Radiography
  /// Definition: Digital Radiography device
  DX('DX'),

  /// Display: Echocardiography
  /// Definition: Echocardiography
  EC('EC'),

  /// Display: Electrocardiography
  /// Definition: Electrocardiography device
  ECG('ECG'),

  /// Display: Cardiac Electrophysiology
  /// Definition: Cardiac Electrophysiology device
  EPS('EPS'),

  /// Display: Endoscopy
  /// Definition: Endoscopy device
  ES('ES'),

  /// Display: Female
  /// Definition: Female sex
  F('F'),

  /// Display: Fluorescein angiography
  /// Definition: Fluorescein angiography
  FA('FA'),

  /// Display: Female changed to Male
  /// Definition: Female sex changed to Male sex
  FC('FC'),

  /// Display: Film Digitizer
  /// Definition: Film Digitizer
  FILMD('FILMD'),

  /// Display: Female Pseudohermaphrodite
  /// Definition: Female Pseudohermaphrodite
  FP('FP'),

  /// Display: Fundoscopy
  /// Definition: Fundoscopy
  FS('FS'),

  /// Display: General Microscopy
  /// Definition: General Microscopy device
  GM('GM'),

  /// Display: Hermaphrodite
  /// Definition: Hermaphrodite
  H('H'),

  /// Display: Hard Copy
  /// Definition: Hard Copy
  HC('HC'),

  /// Display: Hemodynamic Waveform
  /// Definition: Hemodynamic Waveform acquisition device
  HD('HD'),

  /// Display: Intra-oral Radiography
  /// Definition: Intra-oral Radiography device
  IO('IO'),

  /// Display: Intravascular Optical Coherence Tomography
  /// Definition: An acquisition device, process or method that performs intravascular optical coherence tomography
  IVOCT('IVOCT'),

  /// Display: Intravascular Ultrasound
  /// Definition: Intravascular Ultrasound device
  IVUS('IVUS'),

  /// Display: Keratometry
  /// Definition: Keratometry device
  KER('KER'),

  /// Display: Key Object Selection
  /// Definition: Key Object Selection object
  KO('KO'),

  /// Display: Lensometry
  /// Definition: Lensometry device
  LEN('LEN'),

  /// Display: Procedure Logging
  /// Definition: Procedure Logging device; includes cath lab logging
  LOG('LOG'),

  /// Display: Laparoscopy
  /// Definition: Laparoscopy
  LP('LP'),

  /// Display: Laser surface scan
  /// Definition: Laser surface scan device
  LS('LS'),

  /// Display: Male
  /// Definition: Male sex
  M('M'),

  /// Display: Magnetic resonance angiography
  /// Definition: Magnetic resonance angiography
  MA('MA'),

  /// Display: Male changed to Female
  /// Definition: Male sex changed to Female sex
  MC('MC'),

  /// Display: Media Creation Device
  /// Definition: A device that creates DICOM PS3.10 interchange media; e.g. a CD creator that is managed by the Media Creation Management Service Class
  MCD('MCD'),

  /// Display: Portable Media Importer Equipment
  /// Definition: Equipment that retrieved and imported objects from interchange Media
  MEDIM('MEDIM'),

  /// Display: Mammography
  /// Definition: Mammography device
  MG('MG'),

  /// Display: Male Pseudohermaphrodite
  /// Definition: Male Pseudohermaphrodite
  MP('MP'),

  /// Display: Magnetic Resonance
  /// Definition: Magnetic Resonance device
  MR('MR'),

  /// Display: Magnetic resonance spectroscopy
  /// Definition: Magnetic resonance spectroscopy
  MS('MS'),

  /// Display: Nearline
  /// Definition: Instances need to be retrieved from relatively slow media such as optical disk or tape
  NEARLINE('NEARLINE'),

  /// Display: Nuclear Medicine
  /// Definition: Nuclear Medicine device
  NM('NM'),

  /// Display: Ophthalmic Axial Measurements
  /// Definition: Measurements of the axial length of the eye, which are done by various devices
  OAM('OAM'),

  /// Display: Optical Coherence Tomography
  /// Definition: Modality device that uses an interferometric, non-invasive optical tomographic technique to image 2D slices and 3D volumes of tissue using visible and near visible frequencies
  OCT('OCT'),

  /// Display: Offline
  /// Definition: Instances need to be retrieved by manual intervention
  OFFLINE('OFFLINE'),

  /// Display: Online
  /// Definition: Instances are immediately available
  ONLINE('ONLINE'),

  /// Display: Ophthalmic photography
  /// Definition: Ophthalmic photography modality
  OP('OP'),

  /// Display: Ophthalmic Mapping
  /// Definition: Modality device that measures corneal topography, corneal or retinal thickness, and other similar parameters that are typically displayed as maps
  OPM('OPM'),

  /// Display: Ophthalmic Refraction
  /// Definition: Modality device that measures the refractive characteristics of the eye
  OPR('OPR'),

  /// Display: Ophthalmic Tomography
  /// Definition: Tomography of the eye acquired by a modality that is based on light and optical principles. Tomography based on other principles, such as ultrasound, is excluded
  OPT('OPT'),

  /// Display: Ophthalmic Visual Field
  /// Definition: Modality device that measures visual fields and perform visual perimetry
  OPV('OPV'),

  /// Display: Optical Survace Scanner
  /// Definition: An acquisition device, process or method that performs optical surface scanning
  OSS('OSS'),

  /// Display: Other Modality
  /// Definition: Other Modality device
  OT('OT'),

  /// Display: Presentation State
  /// Definition: Presentation State object
  PR('PR'),

  /// Display: Hard Copy Print Server
  /// Definition: Hard Copy Print Server; includes printers with embedded DICOM print server
  PRINT('PRINT'),

  /// Display: Positron emission tomography
  /// Definition: Positron emission tomography (PET) device
  PT('PT'),

  /// Display: Panoramic X-Ray
  /// Definition: Panoramic X-Ray device
  PX('PX'),

  /// Display: Registration
  /// Definition: Registration
  REG('REG'),

  /// Display: Radiofluoroscopy
  /// Definition: Radiofluoroscopy device
  RF('RF'),

  /// Display: Radiographic imaging
  /// Definition: Radiographic imaging (conventional film/screen)
  RG('RG'),

  /// Display: Radiation Therapy Device
  /// Definition: Radiation Therapy Device; includes linear accelerator, proton therapy
  RT('RT'),

  /// Display: Radiotherapy Dose
  /// Definition: Radiotherapy Dose
  RTDOSE('RTDOSE'),

  /// Display: Radiotherapy Image
  /// Definition: Radiotherapy Imaging device; includes portal imaging
  RTIMAGE('RTIMAGE'),

  /// Display: Radiotherapy Plan
  /// Definition: Radiotherapy Plan
  RTPLAN('RTPLAN'),

  /// Display: Radiotherapy Treatment Record
  /// Definition: Radiotherapy Treatment Record
  RTRECORD('RTRECORD'),

  /// Display: Radiotherapy Structure Set
  /// Definition: Radiotherapy Structure Set
  RTSTRUCT('RTSTRUCT'),

  /// Display: Segmentation
  /// Definition: Segmentation
  SEG('SEG'),

  /// Display: Slide Microscopy
  /// Definition: Slide Microscopy
  SM('SM'),

  /// Display: Stereometric Relationship
  /// Definition: Stereometric image pairing modality
  SMR('SMR'),

  /// Display: Structured Report Document
  /// Definition: Structured Report Document
  SR('SR'),

  /// Display: Subjective Refraction
  /// Definition: Subjective Refraction device
  SRF('SRF'),

  /// Display: Single-photon emission computed tomography
  /// Definition: Single-photon emission computed tomography (SPECT) device
  ST('ST'),

  /// Display: Thermography
  /// Definition: Thermography device
  TG('TG'),

  /// Display: Unknown Sex
  /// Definition: Unknown Sex
  U('U'),

  /// Display: Unavailable
  /// Definition: Instances cannot be retrieved
  UNAVAILABLE('UNAVAILABLE'),

  /// Display: Ultrasound
  /// Definition: Ultrasound device
  US('US'),

  /// Display: Visual Acuity
  /// Definition: Visual Acuity device
  VA('VA'),

  /// Display: Videofluorography
  /// Definition: Videofluorography
  VF('VF'),

  /// Display: Video Tape Digitizer Equipment
  /// Definition: Equipment that digitizes video tape and imports it
  VIDD('VIDD'),

  /// Display: Workstation
  /// Definition: Workstation
  WSD('WSD'),

  /// Display: X-Ray Angiography
  /// Definition: X-Ray Angiography device
  XA('XA'),

  /// Display: External-camera Photography
  /// Definition: External-camera Photography device
  XC('XC'),

  /// Display: Digital timecode (NOS)
  /// Definition: A signal transmitted for the purpose of interchange of the current time, not specific to any source or methodology
  value109001('109001'),

  /// Display: ECG-based gating signal, processed
  /// Definition: A signal that is generated for each detection of a heart beat
  value109002('109002'),

  /// Display: IRIG-B timecode
  /// Definition: A signal transmitted by the Inter-Range Instrumentation Group for the purpose of synchronizing time clocks
  value109003('109003'),

  /// Display: X-Ray Fluoroscopy On Signal
  /// Definition: A signal that indicated that X-Ray source has been activated for fluoroscopy use
  value109004('109004'),

  /// Display: X-Ray On Trigger
  /// Definition: A signal that indicated that the X-Ray source has been activated for image recording
  value109005('109005'),

  /// Display: Differential signal
  /// Definition: An electrical signal derived from two electrodes
  value109006('109006'),

  /// Display: His bundle electrogram
  /// Definition: An electrophysiological recording from the HIS nerve bundle
  value109007('109007'),

  /// Display: Monopole signal
  /// Definition: An electrical signal from one electrode relative to an indifferent potential
  value109008('109008'),

  /// Display: Pacing (electrical) stimulus, voltage
  /// Definition: The voltage stimulus during cardiac pacing
  value109009('109009'),

  /// Display: Radio frequency ablation, power
  /// Definition: The power injected during RF ablation procedure
  value109010('109010'),

  /// Display: Voltage measurement by basket catheter
  /// Definition: Electrophysiological signals acquired using a multi-splined catheter each equipped with multiple electrodes
  value109011('109011'),

  /// Display: Voltage measurement by mapping catheter
  /// Definition: Electrophysiological signals acquired using a steerable catheter
  value109012('109012'),

  /// Display: Voltage measurement, NOS
  /// Definition: A voltage measurement not otherwise specified
  value109013('109013'),

  /// Display: 35% of thermal CO
  /// Definition: A signal point that is 35% of the peak thermal cardiac output signal
  value109014('109014'),

  /// Display: 70% of thermal CO
  /// Definition: A signal point that is 70% of the peak thermal cardiac output signal
  value109015('109015'),

  /// Display: A wave peak pressure
  /// Definition: The peak pressure of each heart beat in the atrium caused by the atrial contraction
  value109016('109016'),

  /// Display: A wave pressure, average
  /// Definition: The average of several A wave pressure measurements
  value109017('109017'),

  /// Display: Beat detected (accepted)
  /// Definition: An identified cardiac beat used in the determination of a measurement
  value109018('109018'),

  /// Display: Beat detected (rejected)
  /// Definition: An identified cardiac beat not used in the determination of a measurement
  value109019('109019'),

  /// Display: Diastolic pressure, average
  /// Definition: The average of several diastolic pressure measurements
  value109020('109020'),

  /// Display: Diastolic pressure nadir
  /// Definition: The lowest pressure value excluding any undershoot artifact
  value109021('109021'),

  /// Display: End diastole
  /// Definition: The moment at the end of the diastolic phase of the cardiac cycle
  value109022('109022'),

  /// Display: End of expiration
  /// Definition: The moment at the end of respiratory expiration
  value109023('109023'),

  /// Display: End of inspiration
  /// Definition: The moment at the end of respiratory inspiration
  value109024('109024'),

  /// Display: Max dp/dt
  /// Definition: The maximum positive rate of change of pressure
  value109025('109025'),

  /// Display: Max neg dp/dt
  /// Definition: The maximum negative rate of change of pressure
  value109026('109026'),

  /// Display: Mean blood pressure
  /// Definition: The average blood pressure value, generally over 2 or more seconds
  value109027('109027'),

  /// Display: Peak of thermal cardiac output bolus
  /// Definition: The peak change in blood temperature during a thermal cardiac output measurement
  value109028('109028'),

  /// Display: Start of expiration
  /// Definition: The moment respiratory expiration begins
  value109029('109029'),

  /// Display: Start of inspiration
  /// Definition: The moment of respiratory inspiration begins
  value109030('109030'),

  /// Display: Start of thermal cardiac output bolus
  /// Definition: The first discernible blood temperature change following the injectate during a thermal cardiac output measurement
  value109031('109031'),

  /// Display: Systolic pressure, average
  /// Definition: The average of several systolic blood pressure measurements
  value109032('109032'),

  /// Display: Systolic peak pressure
  /// Definition: The highest systolic blood pressure value excluding any overshoot artifact
  value109033('109033'),

  /// Display: V wave peak pressure
  /// Definition: The peak pressure of each heart beat in the atrium caused by the filling of the atrium
  value109034('109034'),

  /// Display: V wave pressure, average
  /// Definition: The average of several V wave pressure measurements
  value109035('109035'),

  /// Display: Valve close
  /// Definition: The moment at which a heart valve closes
  value109036('109036'),

  /// Display: Valve open
  /// Definition: The moment at which a heart valve opens
  value109037('109037'),

  /// Display: Ablation off
  /// Definition: The moment when RF ablation current is turned off
  value109038('109038'),

  /// Display: Ablation on
  /// Definition: The moment when RF ablation current is turned on
  value109039('109039'),

  /// Display: HIS bundle wave
  /// Definition: The moment in the cardiac cycle when the HIS bundle nerves depolarize
  value109040('109040'),

  /// Display: P wave
  /// Definition: The surface electrocardiogram of the atrial contraction
  value109041('109041'),

  /// Display: Q wave
  /// Definition: The first negative deflection of the electrocardiogram caused by ventricular depolarization
  value109042('109042'),

  /// Display: R wave
  /// Definition: The first positive deflection the electrocardiogram caused by ventricular depolarization
  value109043('109043'),

  /// Display: S wave
  /// Definition: The first negative deflection after the R wave
  value109044('109044'),

  /// Display: Start of atrial contraction
  /// Definition: The beginning of the atrial contraction
  value109045('109045'),

  /// Display: Start of atrial contraction (subsequent)
  /// Definition: The beginning of the second atrial contraction of two consecutive beats
  value109046('109046'),

  /// Display: Stimulation at rate 1 interval
  /// Definition: The stimulation interval during cardiac stimulation first used in a pacing train
  value109047('109047'),

  /// Display: Stimulation at rate 2 interval
  /// Definition: The stimulation interval different from the first stimulation interval used in a pacing train
  value109048('109048'),

  /// Display: Stimulation at rate 3 interval
  /// Definition: A stimulation interval different from and subsequent to the second interval in a pacing train
  value109049('109049'),

  /// Display: Stimulation at rate 4 interval
  /// Definition: Describes a stimulation interval different from and subsequent to the third interval in a pacing train
  value109050('109050'),

  /// Display: T wave
  /// Definition: The electrocardiogram deflection caused by ventricular repolarization
  value109051('109051'),

  /// Display: V wave
  /// Definition: The peak pressure of each heart beat monitored in the atrium caused by the filling of the atrium
  value109052('109052'),

  /// Display: V wave of next beat
  /// Definition: The second V wave measurement of two consecutive beats
  value109053('109053'),

  /// Display: Patient State
  /// Definition: A description of the physiological condition of the patient
  value109054('109054'),

  /// Display: Protocol Stage
  /// Definition: The exercise level during a progressive cardiac stress test
  value109055('109055'),

  /// Display: Stress Protocol
  /// Definition: A series of physiological challenges designed to progressively increase the work of the heart
  value109056('109056'),

  /// Display: Catheterization Procedure Phase
  /// Definition: A subpart of a cardiac catheterization procedure
  value109057('109057'),

  /// Display: Contrast Phase
  /// Definition: The subpart of a cardiac catheterization procedure in which a radio-opaque contrast medium is injected into the patient
  value109058('109058'),

  /// Display: Physiological challenges
  /// Definition: Physical changes administered to a patient in order to elicit an physiological response
  value109059('109059'),

  /// Display: Procedure Step Number
  /// Definition: Enumeration of a subpart of a catheterization procedure
  value109060('109060'),

  /// Display: EP Procedure Phase
  /// Definition: A subpart of an electrophysiological procedure
  value109061('109061'),

  /// Display: Pulse train definition
  /// Definition: A means of defining a series of cardiac stimulation pulses
  value109063('109063'),

  /// Display: End of systole
  /// Definition: End of the contraction phase of the cardiac cycle
  value109070('109070'),

  /// Display: Indicator mean transit time
  /// Definition: Time for a median particle to travel from point of injection to point of detection
  value109071('109071'),

  /// Display: Tau
  /// Definition: The time constant of isovolumic pressure fall
  value109072('109072'),

  /// Display: V max myocardial
  /// Definition: Maximum velocity of myocardial contractility
  value109073('109073'),

  /// Display: Real time acquisition
  /// Definition: Total time for the acquisition is shorter than cardiac cycle, no gating is applied; see Cardiac Synchronization Technique (0018,9037)
  value109080('109080'),

  /// Display: Prospective gating
  /// Definition: Certain thresholds have been set for a gating window that defines the acceptance of measurement data during the acquisition; see Cardiac Synchronization Technique (0018,9037)
  value109081('109081'),

  /// Display: Retrospective gating
  /// Definition: Certain thresholds have been set for a gating window that defines the acceptance of measurement data after the acquisition; see Cardiac Synchronization Technique (0018,9037)
  value109082('109082'),

  /// Display: Paced
  /// Definition: There is a constant RR interval, which makes thresholding not required; see Cardiac Synchronization Technique (0018,9037); e.g. Pacemaker
  value109083('109083'),

  /// Display: Cardiac Stress State
  /// Definition: Imaging after injection of tracer during increased cardiac workload or increased myocardial blood flow, achieved by either exercise or pharmacologic means
  value109091('109091'),

  /// Display: Reinjection State
  /// Definition: Imaging after injection of additional tracer under resting conditions
  value109092('109092'),

  /// Display: Redistribution State
  /// Definition: Imaging after allowing a moderate amount of time for tracer to move from its initial sites of uptake. Example: For Thallium imaging this would correspond to imaging 2-6 hours after injection
  value109093('109093'),

  /// Display: Delayed Redistribution State
  /// Definition: Imaging after allowing an extended amount of time for tracer to move from its initial sites of uptake. Example: For Thallium imaging this would correspond to imaging more than 6 hours after injection
  value109094('109094'),

  /// Display: Peak stress state
  /// Definition: Peak cardiac stress state
  value109095('109095'),

  /// Display: Recovery state
  /// Definition: Recovery from cardiac stress
  value109096('109096'),

  /// Display: Acquisition Equipment
  /// Definition: Equipment that originally acquired the data stored within composite instances; e.g. a CT, MR or Ultrasound modality
  value109101('109101'),

  /// Display: Processing Equipment
  /// Definition: Equipment that has processed composite instances to create new composite instances; e.g. a 3D Workstation
  value109102('109102'),

  /// Display: Modifying Equipment
  /// Definition: Equipment that has modified existing composite instances (without creating new composite instances); e.g. a QA Station or Archive
  value109103('109103'),

  /// Display: De-identifying Equipment
  /// Definition: Equipment that has modified an existing composite instance to remove patient identifying information
  value109104('109104'),

  /// Display: Frame Extracting Equipment
  /// Definition: Equipment that has processed composite instances to create new composite instances by extracting selected frames from the original instance
  value109105('109105'),

  /// Display: Enhanced Multi-frame Conversion Equipment
  /// Definition: Equipment that has processed composite instances to create new composite instances by converting classic single frame images to enhanced multi-frame image, or vice versa and updating other instances to maintain referential integrity
  value109106('109106'),

  /// Display: Voice
  /// Definition: The sound of a human's speech, recorded during a procedure
  value109110('109110'),

  /// Display: Operator's narrative
  /// Definition: The voice of a device operator, recorded during a procedure
  value109111('109111'),

  /// Display: Ambient room environment
  /// Definition: The ambient sound recorded during a procedure, which may or may not include voice and other types of sound
  value109112('109112'),

  /// Display: Doppler audio
  /// Definition: The Doppler waveform recorded as an audible signal
  value109113('109113'),

  /// Display: Phonocardiogram
  /// Definition: The sound of the human heart beating
  value109114('109114'),

  /// Display: Physiological audio signal
  /// Definition: Any sound made by the human body
  value109115('109115'),

  /// Display: Arterial Pulse Waveform
  /// Definition: A digitized signal from the patient arterial system collected through pulse oximetry or other means
  value109116('109116'),

  /// Display: Respiration Waveform
  /// Definition: A digitized signal from the patient respiratory system representing respiration
  value109117('109117'),

  /// Display: On admission to unit
  /// Definition: The occasion on which a procedure was performed on admission to a specialist unit; e.g. intensive care
  value109120('109120'),

  /// Display: On discharge
  /// Definition: The occasion on which a procedure was performed on discharge from hospital as an in-patient
  value109121('109121'),

  /// Display: On discharge from unit
  /// Definition: The occasion on which a procedure was performed on discharge from a specialist unit; e.g. intensive care
  value109122('109122'),

  /// Display: Pre-intervention
  /// Definition: The occasion on which a procedure was performed immediately prior to non-surgical intervention; e.g, percutaneous angioplasty, biopsy
  value109123('109123'),

  /// Display: Post-intervention
  /// Definition: The occasion on which a procedure was performed immediately after to non-surgical intervention; e.g, percutaneous angioplasty, biopsy
  value109124('109124'),

  /// Display: At last appointment
  /// Definition: The occasion on which a procedure was performed at the most recent outpatient visit
  value109125('109125'),

  /// Display: Joint position method
  /// Definition: The active or passive joint positioning during acquisition
  value109132('109132'),

  /// Display: Physical force
  /// Definition: A physical force applied during acquisition
  value109133('109133'),

  /// Display: Prior to voiding
  /// Definition: Prior to voiding
  value109134('109134'),

  /// Display: Post voiding
  /// Definition: Post voiding
  value109135('109135'),

  /// Display: Neutral musculoskeletal position
  /// Definition: Neutral musculoskeletal position
  value109136('109136'),

  /// Display: America Kennel Club
  /// Definition: America Kennel Club
  value109200('109200'),

  /// Display: America's Pet Registry Inc.
  /// Definition: America's Pet Registry Inc
  value109201('109201'),

  /// Display: American Canine Association
  /// Definition: American Canine Association
  value109202('109202'),

  /// Display: American Purebred Registry
  /// Definition: American Purebred Registry
  value109203('109203'),

  /// Display: American Rare Breed Association
  /// Definition: American Rare Breed Association
  value109204('109204'),

  /// Display: Animal Registry Unlimited
  /// Definition: Animal Registry Unlimited
  value109205('109205'),

  /// Display: Animal Research Foundation
  /// Definition: Animal Research Foundation
  value109206('109206'),

  /// Display: Canadian Border Collie Association
  /// Definition: Canadian Border Collie Association
  value109207('109207'),

  /// Display: Canadian Kennel Club
  /// Definition: Canadian Kennel Club
  value109208('109208'),

  /// Display: Canadian Livestock Records Association
  /// Definition: Canadian Livestock Records Association
  value109209('109209'),

  /// Display: Canine Federation of Canada
  /// Definition: Canine Federation of Canada
  value109210('109210'),

  /// Display: Continental Kennel Club
  /// Definition: Continental Kennel Club
  value109211('109211'),

  /// Display: Dog Registry of America
  /// Definition: Dog Registry of America
  value109212('109212'),

  /// Display: Federation of International Canines
  /// Definition: Federation of International Canines
  value109213('109213'),

  /// Display: International Progressive Dog Breeders' Alliance
  /// Definition: International Progressive Dog Breeders' Alliance
  value109214('109214'),

  /// Display: National Kennel Club
  /// Definition: National Kennel Club
  value109215('109215'),

  /// Display: North American Purebred Dog Registry
  /// Definition: North American Purebred Dog Registry
  value109216('109216'),

  /// Display: United All Breed Registry
  /// Definition: United All Breed Registry
  value109217('109217'),

  /// Display: United Kennel Club
  /// Definition: United Kennel Club
  value109218('109218'),

  /// Display: Universal Kennel Club International
  /// Definition: Universal Kennel Club International
  value109219('109219'),

  /// Display: Working Canine Association of Canada
  /// Definition: Working Canine Association of Canada
  value109220('109220'),

  /// Display: World Kennel Club
  /// Definition: World Kennel Club
  value109221('109221'),

  /// Display: World Wide Kennel Club
  /// Definition: World Wide Kennel Club
  value109222('109222'),

  /// Display: Overall image quality evaluation
  /// Definition: Evaluation of overall image quality as described in section 7.3.2 of [IEC 62563-1]
  value109701('109701'),

  /// Display: Grayscale resolution evaluation
  /// Definition: Visual verification of sufficient grayscale resolution based on 8 and 10-bit markers as described in section 7.3.3 of [IEC 62563-1]
  value109702('109702'),

  /// Display: Luminance response evaluation
  /// Definition: Visual evaluation of luminance response using the TG18-CT test pattern as described in section 7.3.4 of [IEC 62563-1]
  value109703('109703'),

  /// Display: Luminance uniformity evaluation
  /// Definition: Visual detection of luminance non-uniformities as described in section 7.3.5 of [IEC 62563-1]
  value109704('109704'),

  /// Display: Chromaticity evaluation
  /// Definition: Visual verification of color uniformity as described in section 7.3.6 of [IEC 62563-1]
  value109705('109705'),

  /// Display: Pixel faults evaluation
  /// Definition: Visual detection of defective pixels on dark (TG18-UN80) and bright (TG18-UN10) images as described in section 7.3.7 of [IEC 62563-1]
  value109706('109706'),

  /// Display: Veiling glare evaluation
  /// Definition: Visual evaluation of veiling glare by looking at low contrast objects on 2 test patterns as described in section 7.3.8 of [IEC 62563-1]
  value109707('109707'),

  /// Display: Geometrical image evaluation
  /// Definition: Visual evaluation of geometry, phase/clock correction and clipping as described in section 7.3.9 of [IEC 62563-1]
  value109708('109708'),

  /// Display: Angular viewing evaluation
  /// Definition: Visual evaluation of viewing angle as described in section 7.3.10 of [IEC 62563-1]
  value109709('109709'),

  /// Display: Clinical evaluation
  /// Definition: Visual evaluation of the appearance of clinical images as described in section 7.3.11 of [IEC 62563-1]
  value109710('109710'),

  /// Display: TG18-QC Pattern
  /// Definition: AAPM TG18-QC Pattern used for evaluation of resolution, luminance, distortion, artifacts. See [AAPM OR 03]
  value109801('109801'),

  /// Display: TG18-BR Pattern
  /// Definition: AAPM TG18-BR Pattern used for the evaluation of the display of low-contrast, fine-detail image structures See [AAPM OR 03]
  value109802('109802'),

  /// Display: TG18-PQC Pattern
  /// Definition: AAPM TG18-PQC Pattern used for evaluation of resolution, luminance, contrast transfer for prints. See [AAPM OR 03]
  value109803('109803'),

  /// Display: TG18-CT Pattern
  /// Definition: AAPM TG18-CT Pattern used for evaluation of luminance response. See [AAPM OR 03]
  value109804('109804'),

  /// Display: TG18-LN8-01 Pattern
  /// Definition: The 1st image in the AAPM TG18-LN8 set used for DICOM grayscale calibration. See [AAPM OR 03]
  value109805('109805'),

  /// Display: TG18-LN8-02 Pattern
  /// Definition: The 2nd image in the AAPM TG18-LN8 set used for DICOM grayscale calibration. See [AAPM OR 03]
  value109806('109806'),

  /// Display: TG18-LN8-03 Pattern
  /// Definition: The 3rd image in the AAPM TG18-LN8 set used for DICOM grayscale calibration. See [AAPM OR 03]
  value109807('109807'),

  /// Display: TG18-LN8-04 Pattern
  /// Definition: The 4th image in the AAPM TG18-LN8 set used for DICOM grayscale calibration. See [AAPM OR 03]
  value109808('109808'),

  /// Display: TG18-LN8-05 Pattern
  /// Definition: The 5th image in the AAPM TG18-LN8 set used for DICOM grayscale calibration. See [AAPM OR 03]
  value109809('109809'),

  /// Display: TG18-LN8-06 Pattern
  /// Definition: The 6th image in the AAPM TG18-LN8 set used for DICOM grayscale calibration. See [AAPM OR 03]
  value109810('109810'),

  /// Display: TG18-LN8-07 Pattern
  /// Definition: The 7th image in the AAPM TG18-LN8 set used for DICOM grayscale calibration. See [AAPM OR 03]
  value109811('109811'),

  /// Display: TG18-LN8-08 Pattern
  /// Definition: The 8th image in the AAPM TG18-LN8 set used for DICOM grayscale calibration. See [AAPM OR 03]
  value109812('109812'),

  /// Display: TG18-LN8-09 Pattern
  /// Definition: The 9th image in the AAPM TG18-LN8 set used for DICOM grayscale calibration. See [AAPM OR 03]
  value109813('109813'),

  /// Display: TG18-LN8-10 Pattern
  /// Definition: The 10th image in the AAPM TG18-LN8 set used for DICOM grayscale calibration series. See [AAPM OR 03]
  value109814('109814'),

  /// Display: TG18-LN8-11 Pattern
  /// Definition: The 11th image in the AAPM TG18-LN8 set used for DICOM grayscale calibration. See [AAPM OR 03]
  value109815('109815'),

  /// Display: TG18-LN8-12 Pattern
  /// Definition: The 12th image in the AAPM TG18-LN8 set used for DICOM grayscale calibration. See [AAPM OR 03]
  value109816('109816'),

  /// Display: TG18-LN8-13 Pattern
  /// Definition: The 13th image in the AAPM TG18-LN8 set used for DICOM grayscale calibration. See [AAPM OR 03]
  value109817('109817'),

  /// Display: TG18-LN8-14 Pattern
  /// Definition: The 14th image in the AAPM TG18-LN8 set used for DICOM grayscale calibration. See [AAPM OR 03]
  value109818('109818'),

  /// Display: TG18-LN8-15 Pattern
  /// Definition: The 15th image in the AAPM TG18-LN8 set used for DICOM grayscale calibration. See [AAPM OR 03]
  value109819('109819'),

  /// Display: TG18-LN8-16 Pattern
  /// Definition: The 16th image in the AAPM TG18-LN8 set used for DICOM grayscale calibration. See [AAPM OR 03]
  value109820('109820'),

  /// Display: TG18-LN8-17 Pattern
  /// Definition: The 17th image in the AAPM TG18-LN8 set used for DICOM grayscale calibration. See [AAPM OR 03]
  value109821('109821'),

  /// Display: TG18-LN8-18 Pattern
  /// Definition: The 18th image in the AAPM TG18-LN8- set used for DICOM grayscale calibration. See [AAPM OR 03]
  value109822('109822'),

  /// Display: TG18-LN12-01 Pattern
  /// Definition: The 1st image in the AAPM TG18-LN12 set used for DICOM grayscale calibration. See [AAPM OR 03]
  value109823('109823'),

  /// Display: TG18-LN12-02 Pattern
  /// Definition: The 2 nd image in the AAPM TG18-LN12 set used for DICOM grayscale calibration. See [AAPM OR 03]
  value109824('109824'),

  /// Display: TG18-LN12-03 Pattern
  /// Definition: The 3rd image in the AAPM TG18-LN12 set used for DICOM grayscale calibration. See [AAPM OR 03]
  value109825('109825'),

  /// Display: TG18-LN12-04 Pattern
  /// Definition: The 4th image in the AAPM TG18-LN12 set used for DICOM grayscale calibration. See [AAPM OR 03]
  value109826('109826'),

  /// Display: TG18-LN12-05 Pattern
  /// Definition: The 5th image in the AAPM TG18-LN12 set used for DICOM grayscale calibration. See [AAPM OR 03]
  value109827('109827'),

  /// Display: TG18-LN12-06 Pattern
  /// Definition: The 6th image in the AAPM TG18-LN12 set used for DICOM grayscale calibration. See [AAPM OR 03]
  value109828('109828'),

  /// Display: TG18-LN12-07 Pattern
  /// Definition: The 7th image in the AAPM TG18-LN12 set used for DICOM grayscale calibration. See [AAPM OR 03]
  value109829('109829'),

  /// Display: TG18-LN12-08 Pattern
  /// Definition: The 8th image in the AAPM TG18-LN12 set used for DICOM grayscale calibration. See [AAPM OR 03]
  value109830('109830'),

  /// Display: TG18-LN12-09 Pattern
  /// Definition: The 9th image in the AAPM TG18-LN12 set used for DICOM grayscale calibration. See [AAPM OR 03]
  value109831('109831'),

  /// Display: TG18-LN12-10 Pattern
  /// Definition: The 10th image in the AAPM TG18-LN12 set used for DICOM grayscale calibration. See [AAPM OR 03]
  value109832('109832'),

  /// Display: TG18-LN12-11 Pattern
  /// Definition: The 11th image in the AAPM TG18-LN12 set used for DICOM grayscale calibration. See [AAPM OR 03]
  value109833('109833'),

  /// Display: TG18-LN12-12 Pattern
  /// Definition: The 12th image in the AAPM TG18-LN12 set used for DICOM grayscale calibration. See [AAPM OR 03]
  value109834('109834'),

  /// Display: TG18-LN12-13 Pattern
  /// Definition: The 13th image in the AAPM TG18-LN12 set used for DICOM grayscale calibration. See [AAPM OR 03]
  value109835('109835'),

  /// Display: TG18-LN12-14 Pattern
  /// Definition: The 14th image in the AAPM TG18-LN12 set used for DICOM grayscale calibration. See [AAPM OR 03]
  value109836('109836'),

  /// Display: TG18-LN12-15 Pattern
  /// Definition: The 15th image in the AAPM TG18-LN12 set used for DICOM grayscale calibration. See [AAPM OR 03]
  value109837('109837'),

  /// Display: TG18-LN12-16 Pattern
  /// Definition: The 16th image in the AAPM TG18-LN12 set used for DICOM grayscale calibration. See [AAPM OR 03]
  value109838('109838'),

  /// Display: TG18-LN12-17 Pattern
  /// Definition: The 17th image in the AAPM TG18-LN12 set used for DICOM grayscale calibration. See [AAPM OR 03]
  value109839('109839'),

  /// Display: TG18-LN12-18 Pattern
  /// Definition: The 18th image in the AAPM TG18-LN12 set used for DICOM grayscale calibration. See [AAPM OR 03]
  value109840('109840'),

  /// Display: TG18-UN10 Pattern
  /// Definition: The AAPM TG18-UN10 Pattern used for evaluation of luminance and color uniformity, and angular response. See [AAPM OR 03]
  value109841('109841'),

  /// Display: TG18-UN80 Pattern
  /// Definition: The AAPM TG18-UN80 Pattern used for evaluation of luminance and color uniformity, and angular response. See [AAPM OR 03]
  value109842('109842'),

  /// Display: TG18-UNL10 Pattern
  /// Definition: The AAPM TG18-UNL10 Pattern is the AAPM TG-18 UN10 Pattern with added defining lines. See [AAPM OR 03]
  value109843('109843'),

  /// Display: TG18-UNL80 Pattern
  /// Definition: The AAPM TG18-UNL80 Pattern is the AAPM TG-18 UN80 Pattern with added defining lines. See [AAPM OR 03]
  value109844('109844'),

  /// Display: TG18-AD Pattern
  /// Definition: The AAPM TG18-AD Pattern used for visual evaluation of the reflection of ambient light from the display. See [AAPM OR 03]
  value109845('109845'),

  /// Display: TG18-MP Pattern
  /// Definition: The AAPM TG18-MP Pattern used for evaluation of Luminance response (bit-depth resolution). See [AAPM OR 03]
  value109846('109846'),

  /// Display: TG18-RH10 Pattern
  /// Definition: The AAPM TG18-RH10 Pattern used for LSF-line spectra function-(1k and 2k) evaluation by 5 horizontal lines at 10% luminance level. See [AAPM OR 03]
  value109847('109847'),

  /// Display: TG18-RH50 Pattern
  /// Definition: The AAPM TG18-RH50 Pattern used for LSF-line spectra function-(1k and 2k) evaluation by 5 horizontal lines at 50% luminance level. See [AAPM OR 03]
  value109848('109848'),

  /// Display: TG18-RH89 Pattern
  /// Definition: The AAPM TG18-RH89 Pattern used for LSF-line spectra function-(1k and 2k) evaluation by 5 horizontal lines at 89% luminance level. See [AAPM OR 03]
  value109849('109849'),

  /// Display: TG18-RV10 Pattern
  /// Definition: The AAPM TG18-RV10 Pattern used for LSF-line spectra function-(1k and 2k) evaluation by 5 vertical lines at 10% luminance level. See [AAPM OR 03]
  value109850('109850'),

  /// Display: TG18-RV50 Pattern
  /// Definition: The AAPM TG18-RV50 Pattern used for LSF-line spectra function-(1k and 2k) evaluation by 5 vertical lines at 50% luminance level. See [AAPM OR 03]
  value109851('109851'),

  /// Display: TG18-RV89 Pattern
  /// Definition: The AAPM TG18-RV89 Pattern used for LSF-line spectra function-(1k and 2k) evaluation by 5 vertical lines at 89% luminance level. See [AAPM OR 03]
  value109852('109852'),

  /// Display: TG18-PX Pattern
  /// Definition: The AAPM TG18-PX Pattern used for the assessment of display resolution. See [AAPM OR 03]
  value109853('109853'),

  /// Display: TG18-CX Pattern
  /// Definition: The AAPM TG18-CX Pattern used to assess display resolution and resolution uniformity. See [AAPM OR 03]
  value109854('109854'),

  /// Display: TG18-LPH10 Pattern
  /// Definition: The AAPM TG18-LPH10 Pattern used to assess display resolution. This pattern has horizontal bars consisting of alternating single-pixel-wide lines across the faceplate of display. The lines have a 12% positive contrast against 10% background level of the maximum pixel value. See [AAPM OR 03]
  value109855('109855'),

  /// Display: TG18-LPH50 Pattern
  /// Definition: The AAPM TG18-LPH50 Pattern used to assess display resolution. This pattern has horizontal bars consisting of alternating single-pixel-wide lines across the faceplate of display. The lines have a 50% positive contrast against 10% background level of the maximum pixel value. See [AAPM OR 03]
  value109856('109856'),

  /// Display: TG18-LPH89 Pattern
  /// Definition: The AAPM TG18-LPH89 Pattern used to assess display resolution. This pattern has horizontal bars consisting of alternating single-pixel-wide lines across the faceplate of display. The lines have a 12% positive contrast against 89% background level of the maximum pixel value. See [AAPM OR 03]
  value109857('109857'),

  /// Display: TG18-LPV10 Pattern
  /// Definition: The AAPM TG18-LPV10 Pattern used to assess display resolution. This pattern has vertical bars consisting of alternating single-pixel-wide lines across the faceplate of display. The lines have a 12% positive contrast against 10% background level of the maximum pixel value. See [AAPM OR 03]
  value109858('109858'),

  /// Display: TG18-LPV50 Pattern
  /// Definition: The AAPM TG18-LPV50 Pattern used to assess display resolution. This pattern has vertical bars consisting of alternating single-pixel-wide lines across the faceplate of display. The lines have a 12% positive contrast against 50% background level of the maximum pixel value. See [AAPM OR 03]
  value109859('109859'),

  /// Display: TG18-LPV89 Pattern
  /// Definition: The AAPM TG18-LPV89 Pattern used to assess display resolution. This pattern has vertical bars consisting of alternating single-pixel-wide lines across the faceplate of display. The lines have a 12% positive contrast against 89% background level of the maximum pixel value. See [AAPM OR 03]
  value109860('109860'),

  /// Display: TG18-AFC Pattern
  /// Definition: The AAPM TG18-AFC Pattern used to assess display noise. See [AAPM OR 03]
  value109861('109861'),

  /// Display: TG18-NS10 Pattern
  /// Definition: The AAPM TG18-NS10 Pattern is AAPM TG18-RV10/RH10 with only difference being the absence of the single line at the center of the measurement area. See [AAPM OR 03]
  value109862('109862'),

  /// Display: TG18-NS50 Pattern
  /// Definition: The AAPM TG18-NS50 Pattern is AAPM TG18-RV50/RH50 with only difference being the absence of the single line at the center of the measurement area. See [AAPM OR 03]
  value109863('109863'),

  /// Display: TG18-NS89 Pattern
  /// Definition: The AAPM TG18-NS89 Pattern is AAPM TG18-RV89/RH89 with only difference being the absence of the single line at the center of the measurement area. See [AAPM OR 03]
  value109864('109864'),

  /// Display: TG18-GV Pattern
  /// Definition: The TG18-GV Pattern used to assess display veiling. See [AAPM OR 03]
  value109865('109865'),

  /// Display: TG18-GVN Pattern
  /// Definition: The TG18-GVN Pattern used to assess display veiling. This pattern is identical to AAPM TG18-GV Pattern except that the large-diameter white circle is replaced with a black circle, creating a completely black pattern except for the presence of low-contrast targets. See [AAPM OR 03]
  value109866('109866'),

  /// Display: TG18-GQ Pattern
  /// Definition: The TG18-GQ Pattern used for quantitative assessment of veiling glare. This pattern is identical to TG18-GV except that is lacks the central low-contrast objects. See [AAPM OR 03]
  value109867('109867'),

  /// Display: TG18-GQN Pattern
  /// Definition: TG18-GQN Pattern used for the quantitative assessment of veiling glare. This pattern is identical to AAPM TG18-GQ Pattern except that the large-diameter white circle is replaced with a black circle, creating a completely black pattern except for the presence of low-contrast targets. See [AAPM OR 03]
  value109868('109868'),

  /// Display: TG18-GQB Pattern
  /// Definition: The TG18-GQB Pattern used for the quantitative assessment of veiling glare. This pattern is identical to AAPM TG18-GQ Pattern except eliminating the central black circle. See [AAPM OR 03]
  value109869('109869'),

  /// Display: TG18-GA03 Pattern
  /// Definition: The TG18-GA03 Pattern used for quantitative assessment of veiling glare. This pattern is identical to TG18-GQ except that the radius of the central black circle is varied as r = 3. See [AAPM OR 03]
  value109870('109870'),

  /// Display: TG18-GA05 Pattern
  /// Definition: The TG18-GA05 Pattern This pattern is identical to TG18-GQ except that the radius of the central black circle is varied as r = 5. See [AAPM OR 03]
  value109871('109871'),

  /// Display: TG18-GA08 Pattern
  /// Definition: The TG18-GA08 Pattern used for quantitative assessment of veiling glare. This pattern is identical to TG18-GQ except that the radius of the central black circle is varied as r = 8. See [AAPM OR 03]
  value109872('109872'),

  /// Display: TG18-GA10 Pattern
  /// Definition: The TG18-GA10 Pattern used for quantitative assessment of veiling glare. This pattern is identical to TG18-GQ except that the radius of the central black circle is varied as r = 10. See [AAPM OR 03]
  value109873('109873'),

  /// Display: TG18-GA15 Pattern
  /// Definition: The TG18-GA15 Pattern used for quantitative assessment of veiling glare. This pattern is identical to TG18-GQ except that the radius of the central black circle is varied as r = 15
  value109874('109874'),

  /// Display: TG18-GA20 Pattern
  /// Definition: The TG18-GA20 Pattern used for quantitative assessment of veiling glare. This pattern is identical to TG18-GQ except that the radius of the central black circle is varied as r = 20. See [AAPM OR 03]
  value109875('109875'),

  /// Display: TG18-GA25 Pattern
  /// Definition: The TG18-GA25 Pattern used for quantitative assessment of veiling glare. This pattern is identical to TG18-GQ except that the radius of the central black circle is varied as r = 25. See [AAPM OR 03]
  value109876('109876'),

  /// Display: TG18-GA30 Pattern
  /// Definition: The TG18-GA30 Pattern used for quantitative assessment of veiling glare. This pattern is identical to TG18-GQ except that the radius of the central black circle is varied as r = 30. See [AAPM OR 03]
  value109877('109877'),

  /// Display: TG18-CH Image
  /// Definition: The AAPM TG18-CH Image is a reference anatomical PA chest image. See [AAPM OR 03]
  value109878('109878'),

  /// Display: TG18-KN Image
  /// Definition: The AAPM TG18-KN Image is a reference anatomical knee image. See [AAPM OR 03]
  value109879('109879'),

  /// Display: TG18-MM1 Image
  /// Definition: The AAPM TG18-MM1 Image is a reference anatomical mammogram image. See [AAPM OR 03]
  value109880('109880'),

  /// Display: TG18-MM2 Image
  /// Definition: The AAPM TG18-MM2 Image is a reference anatomical mammogram image. See [AAPM OR 03]
  value109881('109881'),

  /// Display: OIQ Pattern
  /// Definition: The IEC OIQ Pattern is used as an alternative to the TG18-QC Pattern. See [IEC 62563-1]
  value109901('109901'),

  /// Display: ANG Pattern
  /// Definition: The IEC ANG Pattern used for angular viewing evaluation. See [IEC 62563-1]
  value109902('109902'),

  /// Display: GD Pattern
  /// Definition: The IEC GD Pattern used for geometrical image evaluation. See [IEC 62563-1]
  value109903('109903'),

  /// Display: BN01 Pattern
  /// Definition: The IEC BN01 Pattern is used as analternative to the TG18-LN-01 Pattern, to avoid the use of a cone or baffle with LCDs. See [IEC 62563-1]
  value109904('109904'),

  /// Display: BN02 Pattern
  /// Definition: The IEC BN02 Pattern is used as analternative to the TG18-LN-02 Pattern, to avoid the use of a cone or baffle with LCDs. See [IEC 62563-1]
  value109905('109905'),

  /// Display: BN03 Pattern
  /// Definition: The IEC BN03 Pattern is used as analternative to the TG18-LN-03 Pattern, to avoid the use of a cone or baffle with LCDs. See [IEC 62563-1]
  value109906('109906'),

  /// Display: BN04 Pattern
  /// Definition: The IEC BN04 Pattern is used as analternative to the TG18-LN-04 Pattern, to avoid the use of a cone or baffle with LCDs. See [IEC 62563-1]
  value109907('109907'),

  /// Display: BN05 Pattern
  /// Definition: The IEC BN05 Pattern is used as analternative to the TG18-LN-05 Pattern, to avoid the use of a cone or baffle with LCDs. See [IEC 62563-1]
  value109908('109908'),

  /// Display: BN06 Pattern
  /// Definition: The IEC BN06 Pattern is used as analternative to the TG18-LN-06 Pattern, to avoid the use of a cone or baffle with LCDs. See [IEC 62563-1]
  value109909('109909'),

  /// Display: BN07 Pattern
  /// Definition: The IEC BN07 Pattern is used as analternative to the TG18-LN-07 Pattern, to avoid the use of a cone or baffle with LCDs. See [IEC 62563-1]
  value109910('109910'),

  /// Display: BN08 Pattern
  /// Definition: The IEC BN08 Pattern is used as analternative to the TG18-LN-08 Pattern, to avoid the use of a cone or baffle with LCDs. See [IEC 62563-1]
  value109911('109911'),

  /// Display: BN09 Pattern
  /// Definition: The IEC BN09 Pattern is used as analternative to the TG18-LN-09 Pattern, to avoid the use of a cone or baffle with LCDs. See [IEC 62563-1]
  value109912('109912'),

  /// Display: BN10 Pattern
  /// Definition: The IEC BN10 Pattern is used as analternative to the TG18-LN-10 Pattern, to avoid the use of a cone or baffle with LCDs. See [IEC 62563-1]
  value109913('109913'),

  /// Display: BN11 Pattern
  /// Definition: The IEC BN11 Pattern is used as analternative to the TG18-LN-11 Pattern, to avoid the use of a cone or baffle with LCDs. See [IEC 62563-1]
  value109914('109914'),

  /// Display: BN12 Pattern
  /// Definition: The IEC BN12 Pattern is used as analternative to the TG18-LN-12 Pattern, to avoid the use of a cone or baffle with LCDs. See [IEC 62563-1]
  value109915('109915'),

  /// Display: BN13 Pattern
  /// Definition: The IEC BN13 Pattern is used as analternative to the TG18-LN-13 Pattern, to avoid the use of a cone or baffle with LCDs. See [IEC 62563-1]
  value109916('109916'),

  /// Display: BN14 Pattern
  /// Definition: The IEC BN14 Pattern is used as analternative to the TG18-LN-14 Pattern, to avoid the use of a cone or baffle with LCDs. See [IEC 62563-1]
  value109917('109917'),

  /// Display: BN15 Pattern
  /// Definition: The IEC BN15 Pattern is used as analternative to the TG18-LN-15 Pattern, to avoid the use of a cone or baffle with LCDs. See [IEC 62563-1]
  value109918('109918'),

  /// Display: BN16 Pattern
  /// Definition: The IEC BN16 Pattern is used as analternative to the TG18-LN-16 Pattern, to avoid the use of a cone or baffle with LCDs. See [IEC 62563-1]
  value109919('109919'),

  /// Display: BN17 Pattern
  /// Definition: The IEC BN17 Pattern is used as analternative to the TG18-LN-17 Pattern, to avoid the use of a cone or baffle with LCDs. See [IEC 62563-1]
  value109920('109920'),

  /// Display: BN18 Pattern
  /// Definition: The IEC BN18 Pattern is used as analternative to the TG18-LN-18 Pattern, to avoid the use of a cone or baffle with LCDs. See [IEC 62563-1]
  value109921('109921'),

  /// Display: DIN Grayscale Pattern
  /// Definition: Test image "Bild 2" for the gray-scale reproduction of imaging devices. See [DIN 6868-57]
  value109931('109931'),

  /// Display: DIN Geometry Pattern
  /// Definition: Test image "Bild 3" for the geometrical imaging properties of imaging devices. See [DIN 6868-57]
  value109932('109932'),

  /// Display: DIN Resolution Pattern
  /// Definition: Test image "Bild 5" for displaying the spatial and contrast resolution as well as the line structure of imaging devices. See [DIN 6868-57]
  value109933('109933'),

  /// Display: White Pattern
  /// Definition: An alternative to AAPM TG18-UN80, specified at 100% of maximum pixel value
  value109941('109941'),

  /// Display: SMPTE Pattern
  /// Definition: A standard display test pattern. See [SMPTE RP133]. A pattern is available at http://www.dclunie.com/images/smpte.512.512.8.gif
  value109943('109943'),

  /// Display: CRT Display
  /// Definition: A Display Device that displays images on a Cathode Ray Tube
  value109991('109991'),

  /// Display: Liquid Crystal Display
  /// Definition: A Display Device that displays images on a Liquid Crystal Display
  value109992('109992'),

  /// Display: Plasma Display
  /// Definition: A Display Device that displays images on a Plasma Display
  value109993('109993'),

  /// Display: OLED
  /// Definition: A Display Device that displays images on an Organic Light Emitting Diode based display
  value109994('109994'),

  /// Display: DLP Rear Projection System
  /// Definition: A Display Device that projects images on a surface from behind using a Digital Light Processing Projector
  value109995('109995'),

  /// Display: DLP Front Projection System
  /// Definition: A Display Device that projects images on a surface from in front using a Digital Light Processing Projector
  value109996('109996'),

  /// Display: CRT Rear Projection System
  /// Definition: A Display Device that projects images on a surface from behind using a Cathode Ray Tube
  value109997('109997'),

  /// Display: CRT Front Projection System
  /// Definition: A Display Device that projects images on a surface from in front using a Cathode Ray Tube
  value109998('109998'),

  /// Display: Other Projection System
  /// Definition: A Display Device that projects images on a surface from an unspecified direction using an unspecified means
  value109999('109999'),

  /// Display: Image Processing
  /// Definition: Image processing work item
  value110001('110001'),

  /// Display: Quality Control
  /// Definition: Quality control work item
  value110002('110002'),

  /// Display: Computer Aided Diagnosis
  /// Definition: Computer aided diagnosis work item
  value110003('110003'),

  /// Display: Computer Aided Detection
  /// Definition: Computer aided detection work item
  value110004('110004'),

  /// Display: Interpretation
  /// Definition: Interpretation work item
  value110005('110005'),

  /// Display: Transcription
  /// Definition: Transcription work item
  value110006('110006'),

  /// Display: Report Verification
  /// Definition: Report verification work item
  value110007('110007'),

  /// Display: Print
  /// Definition: Print work item
  value110008('110008'),

  /// Display: No subsequent Workitems
  /// Definition: There will be no more work items scheduled
  value110009('110009'),

  /// Display: Film
  /// Definition: Film type of output
  value110010('110010'),

  /// Display: Dictation
  /// Definition: Dictation type of output
  value110011('110011'),

  /// Display: Transcription
  /// Definition: Transcription type of output
  value110012('110012'),

  /// Display: Media Import
  /// Definition: The procedure to read DICOM instances from DICOM interchange media, coerce identifying attributes into the local namespace if necessary, and make the instances available
  value110013('110013'),

  /// Display: Sheet Film Digitized
  /// Definition: Digitization of Sheet Film
  value110020('110020'),

  /// Display: Cine Film Digitized
  /// Definition: Digitization of Cine Film
  value110021('110021'),

  /// Display: Video Tape Digitized
  /// Definition: Digitization of Video Tape
  value110022('110022'),

  /// Display: Paper Digitized
  /// Definition: Digitization of pages of a paper document (Units may be specified as Pages, Documents)
  value110023('110023'),

  /// Display: CD Imported
  /// Definition: Importation of CD
  value110024('110024'),

  /// Display: DVD Imported
  /// Definition: Importation of DVD
  value110025('110025'),

  /// Display: MOD Imported
  /// Definition: Importation of MOD
  value110026('110026'),

  /// Display: Studies Imported
  /// Definition: Importation of DICOM Studies
  value110027('110027'),

  /// Display: Instances Imported
  /// Definition: Importation of DICOM Composite Instances
  value110028('110028'),

  /// Display: USB Disk Emulation
  /// Definition: A device that connects using the USB hard drive interface. These may be USB-Sticks, portable hard drives, and other technologies
  value110030('110030'),

  /// Display: Email
  /// Definition: Email and email attachments used as a media for data transport
  value110031('110031'),

  /// Display: CD
  /// Definition: CD-R, CD-ROM, and CD-RW media used for data transport
  value110032('110032'),

  /// Display: DVD
  /// Definition: DVD, DVD-RAM, and other DVD formatted media used for data transport
  value110033('110033'),

  /// Display: Compact Flash
  /// Definition: Media that comply with the Compact Flash standard
  value110034('110034'),

  /// Display: Multi-media Card
  /// Definition: Media that comply with the Multi-media Card standard
  value110035('110035'),

  /// Display: Secure Digital Card
  /// Definition: Media that comply with the Secure Digital Card standard
  value110036('110036'),

  /// Display: URI
  /// Definition: URI Identifier for network or other resource, see RFC 3968
  value110037('110037'),

  /// Display: Paper Document
  /// Definition: Any paper or similar document
  value110038('110038'),

  /// Display: Application Activity
  /// Definition: Audit event: Application Activity has taken place
  value110100('110100'),

  /// Display: Audit Log Used
  /// Definition: Audit event: Audit Log has been used
  value110101('110101'),

  /// Display: Begin Transferring DICOM Instances
  /// Definition: Audit event: Storage of DICOM Instances has begun
  value110102('110102'),

  /// Display: DICOM Instances Accessed
  /// Definition: Audit event: DICOM Instances have been created, read, updated, or deleted
  value110103('110103'),

  /// Display: DICOM Instances Transferred
  /// Definition: Audit event: Storage of DICOM Instances has been completed
  value110104('110104'),

  /// Display: DICOM Study Deleted
  /// Definition: Audit event: Entire Study has been deleted
  value110105('110105'),

  /// Display: Export
  /// Definition: Audit event: Data has been exported out of the system
  value110106('110106'),

  /// Display: Import
  /// Definition: Audit event: Data has been imported into the system
  value110107('110107'),

  /// Display: Network Entry
  /// Definition: Audit event: System has joined or left network
  value110108('110108'),

  /// Display: Order Record
  /// Definition: Audit event: Order has been created, read, updated or deleted
  value110109('110109'),

  /// Display: Patient Record
  /// Definition: Audit event: Patient Record has been created, read, updated, or deleted
  value110110('110110'),

  /// Display: Procedure Record
  /// Definition: Audit event: Procedure Record has been created, read, updated, or deleted
  value110111('110111'),

  /// Display: Query
  /// Definition: Audit event: Query has been made
  value110112('110112'),

  /// Display: Security Alert
  /// Definition: Audit event: Security Alert has been raised
  value110113('110113'),

  /// Display: User Authentication
  /// Definition: Audit event: User Authentication has been attempted
  value110114('110114'),

  /// Display: Application Start
  /// Definition: Audit event: Application Entity has started
  value110120('110120'),

  /// Display: Application Stop
  /// Definition: Audit event: Application Entity has stopped
  value110121('110121'),

  /// Display: Login
  /// Definition: Audit event: User login has been attempted
  value110122('110122'),

  /// Display: Logout
  /// Definition: Audit event: User logout has been attempted
  value110123('110123'),

  /// Display: Attach
  /// Definition: Audit event: Node has been attached
  value110124('110124'),

  /// Display: Detach
  /// Definition: Audit event: Node has been detached
  value110125('110125'),

  /// Display: Node Authentication
  /// Definition: Audit event: Node Authentication has been attempted
  value110126('110126'),

  /// Display: Emergency Override Started
  /// Definition: Audit event: Emergency Override has started
  value110127('110127'),

  /// Display: Network Configuration
  /// Definition: Audit event: Network configuration has been changed
  value110128('110128'),

  /// Display: Security Configuration
  /// Definition: Audit event: Security configuration has been changed
  value110129('110129'),

  /// Display: Hardware Configuration
  /// Definition: Audit event: Hardware configuration has been changed
  value110130('110130'),

  /// Display: Software Configuration
  /// Definition: Audit event: Software configuration has been changed
  value110131('110131'),

  /// Display: Use of Restricted Function
  /// Definition: Audit event: A use of a restricted function has been attempted
  value110132('110132'),

  /// Display: Audit Recording Stopped
  /// Definition: Audit event: Audit recording has been stopped
  value110133('110133'),

  /// Display: Audit Recording Started
  /// Definition: Audit event: Audit recording has been started
  value110134('110134'),

  /// Display: Object Security Attributes Changed
  /// Definition: Audit event: Security attributes of an object have been changed
  value110135('110135'),

  /// Display: Security Roles Changed
  /// Definition: Audit event: Security roles have been changed
  value110136('110136'),

  /// Display: User security Attributes Changed
  /// Definition: Audit event: Security attributes of a user have been changed
  value110137('110137'),

  /// Display: Emergency Override Stopped
  /// Definition: Audit event: Emergency Override has Stopped
  value110138('110138'),

  /// Display: Remote Service Operation Started
  /// Definition: Audit event: Remote Service Operation has Begun
  value110139('110139'),

  /// Display: Remote Service Operation Stopped
  /// Definition: Audit event: Remote Service Operation has Stopped
  value110140('110140'),

  /// Display: Local Service Operation Started
  /// Definition: Audit event: Local Service Operation has Begun
  value110141('110141'),

  /// Display: Local Service Operation Stopped
  /// Definition: Audit event: Local Service Operation Stopped
  value110142('110142'),

  /// Display: Application
  /// Definition: Audit participant role ID of software application
  value110150('110150'),

  /// Display: Application Launcher
  /// Definition: Audit participant role ID of software application launcher, i.e., the entity that started or stopped an application
  value110151('110151'),

  /// Display: Destination Role ID
  /// Definition: Audit participant role ID of the receiver of data
  value110152('110152'),

  /// Display: Source Role ID
  /// Definition: Audit participant role ID of the sender of data
  value110153('110153'),

  /// Display: Destination Media
  /// Definition: Audit participant role ID of media receiving data during an export
  value110154('110154'),

  /// Display: Source Media
  /// Definition: Audit participant role ID of media providing data during an import
  value110155('110155'),

  /// Display: Study Instance UID
  /// Definition: ParticipantObjectID type: Study Instance UID
  value110180('110180'),

  /// Display: SOP Class UID
  /// Definition: ParticipantObjectID type: SOP Class UID
  value110181('110181'),

  /// Display: Node ID
  /// Definition: ID of a node that is a participant object of an audit message
  value110182('110182'),

  /// Display: Issuer of Identifier
  /// Definition: System, organization, agency, or department that has assigned an instance identifier (such as placer or filler number, patient or provider identifier, etc.)
  value110190('110190'),

  /// Display: Doctor canceled procedure
  /// Definition: Procedure order canceled by requesting physician or other authorized physician
  value110500('110500'),

  /// Display: Equipment failure
  /// Definition: Equipment failure prevented completion of procedure
  value110501('110501'),

  /// Display: Incorrect procedure ordered
  /// Definition: Procedure discontinued due to incorrect procedure being ordered
  value110502('110502'),

  /// Display: Patient allergic to media/contrast
  /// Definition: Procedure discontinued due to patient allergy to media/contrast (reported or reaction)
  value110503('110503'),

  /// Display: Patient died
  /// Definition: Procedure discontinued due to death of Patient
  value110504('110504'),

  /// Display: Patient refused to continue procedure
  /// Definition: Procedure discontinued due to patient refusal to continue procedure
  value110505('110505'),

  /// Display: Patient taken for treatment or surgery
  /// Definition: Procedure discontinued due to patient being taken for treatment or surgery
  value110506('110506'),

  /// Display: Patient did not arrive
  /// Definition: Patient did not arrive for procedure
  value110507('110507'),

  /// Display: Patient pregnant
  /// Definition: Procedure discontinued due to patient pregnancy (reported or determined)
  value110508('110508'),

  /// Display: Change of procedure for correct charging
  /// Definition: Procedure discontinued to restart with new procedure code for correct charging
  value110509('110509'),

  /// Display: Duplicate order
  /// Definition: Procedure discontinued due to duplicate orders received for same procedure
  value110510('110510'),

  /// Display: Nursing unit cancel
  /// Definition: Procedure order canceled by nursing unit
  value110511('110511'),

  /// Display: Incorrect side ordered
  /// Definition: Procedure discontinued due to incorrect side (laterality) being ordered
  value110512('110512'),

  /// Display: Discontinued for unspecified reason
  /// Definition: Procedure discontinued for unspecified reason
  value110513('110513'),

  /// Display: Incorrect worklist entry selected
  /// Definition: Procedure discontinued due to incorrect patient or procedure step selected from modality worklist
  value110514('110514'),

  /// Display: Patient condition prevented continuing
  /// Definition: Patient condition prevented continuation of procedure
  value110515('110515'),

  /// Display: Equipment change
  /// Definition: Procedure step is discontinued to change to other equipment or modality
  value110516('110516'),

  /// Display: Patient Movement
  /// Definition: A movement of the patient affecting test quality
  value110518('110518'),

  /// Display: Operator Error
  /// Definition: An error of the operator affecting test quality
  value110519('110519'),

  /// Display: Objects incorrectly formatted
  /// Definition: One or more of the objects is malformed
  value110521('110521'),

  /// Display: Object Types not supported
  /// Definition: Receiving System is unable to accept the object type
  value110522('110522'),

  /// Display: Object Set incomplete
  /// Definition: One or more objects associated with the object set is missing
  value110523('110523'),

  /// Display: Media Failure
  /// Definition: The contents of the Media could not be accessed properly
  value110524('110524'),

  /// Display: Resource pre-empted
  /// Definition: Procedure discontinued due to necessary equipment, staff or other resource becoming (temporarily) unavailable to the procedure
  value110526('110526'),

  /// Display: Resource inadequate
  /// Definition: Procedure discontinued due to necessary equipment, staff or other resource being inadequate to complete the procedure
  value110527('110527'),

  /// Display: Discontinued Procedure Step rescheduled
  /// Definition: A new Procedure Step has been scheduled to replace the Discontinued Procedure Step
  value110528('110528'),

  /// Display: Discontinued Procedure Step rescheduling recommended
  /// Definition: It is recommended that a new Procedure Step be scheduled to replace the Discontinued Procedure Step
  value110529('110529'),

  /// Display: Ventral Diencephalon
  /// Definition: Ventral structures of the diencephalon that cannot readily be distinguished on MR imaging, including the hypothalamus, mammillary body, subthalamic nuclei, substantia nigra, red nucleus, lateral geniculate nucleus, medial geniculate nucleus, zona incerta, cerebral peduncle, lenticular fasciculus, medial lemniscus, and optic tract. See http://neuromorphometrics.org:8080/Seg/html/segmentation/ventral%20diencephalon.html
  value110700('110700'),

  /// Display: White Matter T1 Hypointensity
  /// Definition: Area(s) of reduced intensity on T1 weighted images relative to the surrounding white matter. These may be indicative of age-related or neurodegenerative white matter lesions, and may be co-located with areas of white matter T2 hyperintensity, but the concept is specifically confined to the MR appearance on T1 weighted images
  value110701('110701'),

  /// Display: White Matter T2 Hyperintensity
  /// Definition: Area(s) of increased intensity on T2 weighted images relative to the surrounding white matter. These may be indicative of age-related or neurodegenerative white matter lesions, and may be co-located with areas of white matter T1 hypointensity, but the concept is specifically confined to the MR appearance on T2 weighted images
  value110702('110702'),

  /// Display: superior longitudinal fasciculus I
  /// Definition: The dorsal component of the SLF originating from the medial and dorsal parietal cortex and ending in the dorsal and medial part of the frontal lobe. See Makris N, et al. "Segmentation of Subcomponents within the Superior Longitudinal Fascicle in Humans: A Quantitative, In Vivo, DT-MRI Study." Cerebral Cortex 15, no. 6 (June 1, 2005): 854-69. doi:10.1093/cercor/bhh186
  value110703('110703'),

  /// Display: superior longitudinal fasciculus II
  /// Definition: The major component of the SLF, derived from the caudal-inferior parietal region corresponding to the angular gyrus in the human and terminating within the dorsolateral frontal region. See Makris N, et al. "Segmentation of Subcomponents within the Superior Longitudinal Fascicle in Humans: A Quantitative, In Vivo, DT-MRI Study." Cerebral Cortex 15, no. 6 (June 1, 2005): 854-69. doi:10.1093/cercor/bhh186
  value110704('110704'),

  /// Display: superior longitudinal fasciculus III
  /// Definition: The ventral component of the SLF, originating from the supramarginal gyrus and terminating predominantly in the ventral premotor and prefrontal areas. See Makris N, et al. "Segmentation of Subcomponents within the Superior Longitudinal Fascicle in Humans: A Quantitative, In Vivo, DT-MRI Study." Cerebral Cortex 15, no. 6 (June 1, 2005): 854-69. doi:10.1093/cercor/bhh186
  value110705('110705'),

  /// Display: Perilesional White Matter
  /// Definition: White matter that surrounds a lesion of interest; e.g. to identify the otherwise unclassified white matter that surrounds a tumor to be surgically resected
  value110706('110706'),

  /// Display: Spin Tagging Perfusion MR Signal Intensity
  /// Definition: Signal intensity of a Spin tagging Perfusion MR image. Spin tagging is a technique for the measurement of blood perfusion, based on magnetically labeled arterial blood water as an endogenous tracer
  value110800('110800'),

  /// Display: Contrast Agent Angio MR Signal Intensity
  /// Definition: Signal intensity of a Contrast Agent Angio MR image
  value110801('110801'),

  /// Display: Time Of Flight Angio MR Signal Intensity
  /// Definition: Signal intensity of a Time-of-flight (TOF) MR image. Time-of-flight (TOF) is based on the phenomenon of flow-related enhancement of spins entering into an imaging slice. As a result of being unsaturated, these spins give more signal that surrounding stationary spins
  value110802('110802'),

  /// Display: Proton Density Weighted MR Signal Intensity
  /// Definition: Signal intensity of a Proton Density Weighted MR image. All MR images have intensity proportional to proton density. Images with very little T1 or T2 weighting are called 'PD-weighted'
  value110803('110803'),

  /// Display: T1 Weighted MR Signal Intensity
  /// Definition: Signal intensity of T1 Weighted MR image. A T1 Weighted MR image is created typically by using short TE and TR times
  value110804('110804'),

  /// Display: T2 Weighted MR Signal Intensity
  /// Definition: Signal intensity of a T2 Weighted MR image. T2 Weighted image contrast state is approached by imaging with a TR long compared to tissue T1 (to reduce T1 contribution to image contrast) and a TE between the longest and shortest tissue T2s of interest
  value110805('110805'),

  /// Display: T2* Weighted MR Signal Intensity
  /// Definition: Signal intensity of a T2* Weighted MR image. The T2* phenomenon results from molecular interactions (spin spin relaxation) and local magnetic field non-uniformities, which cause the protons to precess at slightly different frequencies
  value110806('110806'),

  /// Display: Field Map MR Signal Intensity
  /// Definition: Signal intensity of a Field Map MR image. A Field Map MR image provides a direct measure of the B 0 inhomogeneity at each point in the image
  value110807('110807'),

  /// Display: Fractional Anisotropy
  /// Definition: Coefficient reflecting the fractional anisotropy of the tissues, derived from a diffusion weighted MR image. Fractional anisotropy is proportional to the square root of the variance of the Eigen values divided by the square root of the sum of the squares of the Eigen values
  value110808('110808'),

  /// Display: Relative Anisotropy
  /// Definition: Coefficient reflecting the relative anisotropy of the tissues, derived from a diffusion weighted MR image
  value110809('110809'),

  /// Display: Volumetric Diffusion Dxx Component
  /// Definition: Dxx Component of the diffusion tensor, quantifying the molecular mobility along the X axis
  value110810('110810'),

  /// Display: Volumetric Diffusion Dxy Component
  /// Definition: Dxy Component of the diffusion tensor, quantifying the correlation of molecular displacements in the X and Y directions
  value110811('110811'),

  /// Display: Volumetric Diffusion Dxz Component
  /// Definition: Dxz Component of the diffusion tensor, quantifying the correlation of molecular displacements in the X and Z directions
  value110812('110812'),

  /// Display: Volumetric Diffusion Dyy Component
  /// Definition: Dyy Component of the diffusion tensor, quantifying the molecular mobility along the Y axis
  value110813('110813'),

  /// Display: Volumetric Diffusion Dyz Component
  /// Definition: Dyz Component of the diffusion tensor, quantifying the correlation of molecular displacements in the Y and Z directions
  value110814('110814'),

  /// Display: Volumetric Diffusion Dzz Component
  /// Definition: Dzz Component of the diffusion tensor, quantifying the molecular mobility along the Z axis
  value110815('110815'),

  /// Display: T1 Weighted Dynamic Contrast Enhanced MR Signal Intensity
  /// Definition: Signal intensity of a T1 Weighted Dynamic Contrast Enhanced MR image. A T1 Weighted Dynamic Contrast Enhanced MR image reflects the dynamics of diffusion of the exogenous contrast media from the blood pool into the extra vascular extracellular space (EES) of the brain at a rate determined by the blood flow to the tissue, the permeability of the Brain Blood Barrier (BBB), and the surface area of the perfusing vessels
  value110816('110816'),

  /// Display: T2 Weighted Dynamic Contrast Enhanced MR Signal Intensity
  /// Definition: Signal intensity of a T2 Weighted Dynamic Contrast Enhanced MR image. A T2 Weighted Dynamic Contrast Enhanced MR image reflects the T2 of tissue decrease as the Gd contrast agent bolus passes through the brain
  value110817('110817'),

  /// Display: T2* Weighted Dynamic Contrast Enhanced MR Signal Intensity
  /// Definition: Signal intensity of a T2* Weighted Dynamic Contrast Enhanced MR image. A T2* Weighted Dynamic Contrast Enhanced MR image reflects the T2* of tissue decrease as the Gd contrast agent bolus passes through the brain
  value110818('110818'),

  /// Display: Blood Oxygenation Level
  /// Definition: Signal intensity of a Blood Oxygenation Level image. BOLD imaging is sensitive to blood oxygenation (but also to cerebral blood flow and volume). This modality is essentially used for detecting brain activation (functional MR)
  value110819('110819'),

  /// Display: Nuclear Medicine Projection Activity
  /// Definition: Accumulated decay event counts in a nuclear medicine projection image
  value110820('110820'),

  /// Display: Nuclear Medicine Tomographic Activity
  /// Definition: Accumulated decay event counts in a Nuclear Medicine Tomographic image (including PET)
  value110821('110821'),

  /// Display: Spatial Displacement X Component
  /// Definition: Spatial Displacement along axis X of a non-linear deformable spatial registration image. The X axis is defined in reference to the patient's orientation, and is increasing to the left hand side of the patient
  value110822('110822'),

  /// Display: Spatial Displacement Y Component
  /// Definition: Spatial Displacement along axis Y of a non-linear deformable spatial registration image. The Y axis is defined in reference to the patient's orientation, and is increasing to the posterior side of the patient
  value110823('110823'),

  /// Display: Spatial Displacement Z Component
  /// Definition: Spatial Displacement along axis Z of a non-linear deformable spatial registration image. The Z axis is defined in reference to the patient's orientation, and is increasing toward the head of the patient
  value110824('110824'),

  /// Display: Hemodynamic Resistance
  /// Definition: Measured resistance to the flow of blood; e.g. through the vasculature or through a heart value
  value110825('110825'),

  /// Display: Indexed Hemodynamic Resistance
  /// Definition: Measured resistance to the flow of blood; e.g. through the vasculature or through a heart value, normalized to a particular indexed scale
  value110826('110826'),

  /// Display: Tissue Velocity
  /// Definition: Velocity of tissue based on Doppler measurements
  value110827('110827'),

  /// Display: Flow Velocity
  /// Definition: Velocity of blood flow based on Doppler measurements
  value110828('110828'),

  /// Display: Flow Variance
  /// Definition: Statistical variance of blood velocity relative to mean
  value110829('110829'),

  /// Display: Elasticity
  /// Definition: Scalar value related to the elastic properties of the tissue
  value110830('110830'),

  /// Display: Perfusion
  /// Definition: Scalar value related to the volume of blood perfusing into tissue
  value110831('110831'),

  /// Display: Speed of sound
  /// Definition: Speed of sound in tissue
  value110832('110832'),

  /// Display: Ultrasound Attenuation
  /// Definition: Reduction in strength of ultrasound signal as the wave
  value110833('110833'),

  /// Display: RGB R Component
  /// Definition: Red component of a true color image (RGB)
  value110834('110834'),

  /// Display: RGB G Component
  /// Definition: Green component of a true color image (RGB)
  value110835('110835'),

  /// Display: RGB B Component
  /// Definition: Blue component of a true color image (RGB)
  value110836('110836'),

  /// Display: YBR FULL Y Component
  /// Definition: Y (Luminance) component of a YBR FULL image, as defined in JPEG 2000
  value110837('110837'),

  /// Display: YBR FULL CB Component
  /// Definition: CB (Blue chrominance) component of a YBR FULL image, as defined in JPEG 2000
  value110838('110838'),

  /// Display: YBR FULL CR Component
  /// Definition: CR (Red chrominance) component of a YBR FULL image, as defined in JPEG 2000
  value110839('110839'),

  /// Display: YBR PARTIAL Y Component
  /// Definition: Y (Luminance) component of a YBR PARTIAL image, as defined in JPEG 2000
  value110840('110840'),

  /// Display: YBR PARTIAL CB Component
  /// Definition: CB (Blue chrominance) component of a YBR PARTIAL image, as defined in JPEG 2000
  value110841('110841'),

  /// Display: YBR PARTIAL CR Component
  /// Definition: CR (Red chrominance) component of a YBR PARTIAL image, as defined in JPEG 2000
  value110842('110842'),

  /// Display: YBR ICT Y Component
  /// Definition: Y (Luminance) component of a YBR ICT image (Irreversible Color Transform), as defined in JPEG 2000
  value110843('110843'),

  /// Display: YBR ICT CB Component
  /// Definition: CB (Blue chrominance) component of a YBR ICT image (Irreversible Color Transform), as defined in JPEG 2000
  value110844('110844'),

  /// Display: YBR ICT CR Component
  /// Definition: CR (Red chrominance) component of a YBR ICT image (Irreversible Color Transform), as defined in JPEG 2000
  value110845('110845'),

  /// Display: YBR RCT Y Component
  /// Definition: Y (Luminance) component of a YBR RCT image (Reversible Color Transform), as defined in JPEG 2000
  value110846('110846'),

  /// Display: YBR RCT CB Component
  /// Definition: CB (Blue chrominance) component of a YBR RCT image (Reversible Color Transform), as defined in JPEG 2000
  value110847('110847'),

  /// Display: YBR RCT CR Component
  /// Definition: CR (Red chrominance) component of a YBR RCT image (Reversible Color Transform), as defined in JPEG 2000
  value110848('110848'),

  /// Display: Echogenicity
  /// Definition: The ability of a material to create an ultrasound return echo
  value110849('110849'),

  /// Display: X-Ray Attenuation
  /// Definition: Decrease in the number of photons in an X-Ray beam due to interactions with the atoms of a material substance. Attenuation is due primarily to two processes, absorption and scattering
  value110850('110850'),

  /// Display: X-Ray Attenuation Coefficient
  /// Definition: Coefficient that describes the fraction of a beam of X-Rays or gamma rays that is absorbed or scattered per unit thickness of the absorber. This value basically accounts for the number of atoms in a cubic cm volume of material and the probability of a photon being scattered or absorbed from the nucleus or an electron of one of these atoms
  value110851('110851'),

  /// Display: MR signal intensity
  /// Definition: Signal intensity of an MR image, not otherwise specified
  value110852('110852'),

  /// Display: Binary Segmentation
  /// Definition: Binary value denoting that the segmented property is present
  value110853('110853'),

  /// Display: Fractional Probabilistic Segmentation
  /// Definition: Probability, defined as a percentage, that the segmented property occupies the spatial area defined by the voxel
  value110854('110854'),

  /// Display: Fractional Occupancy Segmentation
  /// Definition: Percentage of the voxel area occupied by the segmented property
  value110855('110855'),

  /// Display: Linear Displacement
  /// Definition: Spatial dimension, denoting a linear displacement
  value110856('110856'),

  /// Display: Photon Energy
  /// Definition: Dimension denoting the energy (frequency or wavelength) of photons
  value110857('110857'),

  /// Display: Time
  /// Definition: Dimension used to sequence events, to compare the duration of events and the intervals between events
  value110858('110858'),

  /// Display: Angle
  /// Definition: Spatial dimension, denoting an angle
  value110859('110859'),

  /// Display: Left-Right Axis
  /// Definition: A spatial dimension axis running along a line between the patient's left and right side
  value110860('110860'),

  /// Display: Head-Foot Axis
  /// Definition: A spatial dimension axis running along a line between the patient's head and foot
  value110861('110861'),

  /// Display: Anterior-Posterior Axis
  /// Definition: A spatial dimension axis running along a line between the patient's anterior and posterior sides
  value110862('110862'),

  /// Display: Apex-Base Axis
  /// Definition: A spatial dimension axis running along a line between the apex and base of an organ, object, or chamber
  value110863('110863'),

  /// Display: Anterior-Inferior Axis
  /// Definition: A spatial dimension axis running along a line between the anterior and inferior sides of an organ, object, or chamber
  value110864('110864'),

  /// Display: Septum-Wall Axis
  /// Definition: A spatial dimension axis running along a line between the septum and wall of a chamber
  value110865('110865'),

  /// Display: Right To Left
  /// Definition: Orientation of a spatial dimension where increasing values run from the right to the left side of the patient
  value110866('110866'),

  /// Display: Left To Right
  /// Definition: Orientation of a spatial dimension where increasing values run from the left to the right side of the patient
  value110867('110867'),

  /// Display: Head To Foot
  /// Definition: Orientation of a spatial dimension where increasing values run from the head to the foot of the patient
  value110868('110868'),

  /// Display: Foot To Head
  /// Definition: Orientation of a spatial dimension where increasing values run from the foot to the head of the patient
  value110869('110869'),

  /// Display: Anterior To Posterior
  /// Definition: Orientation of a spatial dimension where increasing values run from the anterior to the posterior side of the patient
  value110870('110870'),

  /// Display: Posterior To Anterior
  /// Definition: Orientation of a spatial dimension where increasing values run from the posterior to the anterior side of the patient
  value110871('110871'),

  /// Display: Apex To Base
  /// Definition: Orientation of a spatial dimension where increasing values run from the apex to the base
  value110872('110872'),

  /// Display: Base To Apex
  /// Definition: Orientation of a spatial dimension where increasing values run from the base to the apex
  value110873('110873'),

  /// Display: Anterior To Inferior
  /// Definition: Orientation of a spatial dimension where increasing values run from the anterior to the inferior
  value110874('110874'),

  /// Display: Inferior To Anterior
  /// Definition: Orientation of a spatial dimension where increasing values run from the inferior to the anterior
  value110875('110875'),

  /// Display: Septum To Wall
  /// Definition: Orientation of a spatial dimension where increasing values run from the septum of a chamber to the opposite wall
  value110876('110876'),

  /// Display: Wall To Septum
  /// Definition: Orientation of a spatial dimension where increasing values run from the opposite wall to the septum of a chamber
  value110877('110877'),

  /// Display: Image Position (Patient) X
  /// Definition: The x coordinate of the upper left hand corner (center of the first voxel transmitted) of the image, with respect to the patient-based coordinate system
  value110901('110901'),

  /// Display: Image Position (Patient) Y
  /// Definition: The y coordinate of the upper left hand corner (center of the first voxel transmitted) of the image, with respect to the patient-based coordinate system
  value110902('110902'),

  /// Display: Image Position (Patient) Z
  /// Definition: The z coordinate of the upper left hand corner (center of the first voxel transmitted) of the image, with respect to the patient-based coordinate system
  value110903('110903'),

  /// Display: Image Orientation (Patient) Row X
  /// Definition: The x value of the first row direction cosine with respect to the patient, with respect to the patient-based coordinate system
  value110904('110904'),

  /// Display: Image Orientation (Patient) Row Y
  /// Definition: The y value of the first row direction cosine with respect to the patient, with respect to the patient-based coordinate system
  value110905('110905'),

  /// Display: Image Orientation (Patient) Row Z
  /// Definition: The z value of the first row direction cosine with respect to the patient, with respect to the patient-based coordinate system
  value110906('110906'),

  /// Display: Image Orientation (Patient) Column X
  /// Definition: The x value of the first column direction cosine with respect to the patient, with respect to the patient-based coordinate system
  value110907('110907'),

  /// Display: Image Orientation (Patient) Column Y
  /// Definition: The y value of the first column direction cosine with respect to the patient, with respect to the patient-based coordinate system
  value110908('110908'),

  /// Display: Image Orientation (Patient) Column Z
  /// Definition: The z value of the first column direction cosine with respect to the patient, with respect to the patient-based coordinate system
  value110909('110909'),

  /// Display: Pixel Data Rows
  /// Definition: Number of rows in the pixel data of the image
  value110910('110910'),

  /// Display: Pixel Data Columns
  /// Definition: Number of columns in the pixel data of the image
  value110911('110911'),

  /// Display: Algorithm Name
  /// Definition: The name assigned by a manufacturer to a specific software algorithm
  value111001('111001'),

  /// Display: Algorithm Parameters
  /// Definition: The input parameters used by a manufacturer to configure the behavior of a specific software algorithm
  value111002('111002'),

  /// Display: Algorithm Version
  /// Definition: The software version identifier assigned by a manufacturer to a specific software algorithm
  value111003('111003'),

  /// Display: Analysis Performed
  /// Definition: The type of correlation applied to detection results; e.g. temporal, spatial
  value111004('111004'),

  /// Display: Assessment Category
  /// Definition: Assignment of intermediate or overall interpretation results to a general category
  value111005('111005'),

  /// Display: Breast composition
  /// Definition: Assessment of annotating tissues in breast; generally including fatty, mixed or dense
  value111006('111006'),

  /// Display: Breast Outline including Pectoral Muscle Tissue
  /// Definition: Purpose of reference for an SCOORD content item that is an outline of the breast that includes the pectoral muscle tissue
  value111007('111007'),

  /// Display: Calcification Distribution
  /// Definition: The type of distribution associated with detected calcifications
  value111008('111008'),

  /// Display: Calcification Type
  /// Definition: Identification of the morphology of detected calcifications
  value111009('111009'),

  /// Display: Center
  /// Definition: Purpose of reference for an SCOORD content item that identifies the central point of a finding or feature
  value111010('111010'),

  /// Display: Certainty of Feature
  /// Definition: The likelihood that the feature analyzed is in fact the type of feature identified
  value111011('111011'),

  /// Display: Certainty of Finding
  /// Definition: The likelihood that the finding detected is in fact the type of finding identified
  value111012('111012'),

  /// Display: Certainty of Impression
  /// Definition: The certainty that a device places on an impression, where 0 equals no certainty and 100 equals certainty
  value111013('111013'),

  /// Display: Clockface or region
  /// Definition: A location identifier based on clock-face numbering or anatomic sub-region
  value111014('111014'),

  /// Display: Composite Feature
  /// Definition: An item that is an inferred correlation relating two or more individual findings or features
  value111015('111015'),

  /// Display: Composite type
  /// Definition: The inferred relationship between the findings or features making up a composite feature
  value111016('111016'),

  /// Display: CAD Processing and Findings Summary
  /// Definition: General assessment of whether or not CAD processing was successful, and whether any findings resulted
  value111017('111017'),

  /// Display: Content Date
  /// Definition: The date the data creation started
  value111018('111018'),

  /// Display: Content Time
  /// Definition: The time the data creation started
  value111019('111019'),

  /// Display: Depth
  /// Definition: A location identifier based on a feature's inferred distance from the surface of the associated anatomy
  value111020('111020'),

  /// Display: Description of Change
  /// Definition: A textual description of the change that occurred over time in a qualitative characteristic of a feature
  value111021('111021'),

  /// Display: Detection Performed
  /// Definition: The type of finding sought after by a specific algorithm applied to one image
  value111022('111022'),

  /// Display: Differential Diagnosis/Impression
  /// Definition: A general change that occurred within an imaged area between a prior imaging procedure and the current imaging procedure
  value111023('111023'),

  /// Display: Failed Analyses
  /// Definition: A group of analysis algorithms that were attempted, but failed
  value111024('111024'),

  /// Display: Failed Detections
  /// Definition: A group of detection algorithms that were attempted, but failed
  value111025('111025'),

  /// Display: Horizontal Pixel Spacing
  /// Definition: For projection radiography, the horizontal physical distance measured at the front plane of an Image Receptor housing between the center of each pixel. For tomographic images, the horizontal physical distance in the patient between the center of each pixel
  value111026('111026'),

  /// Display: Image Laterality
  /// Definition: Laterality of (possibly paired) body part contained in an image
  value111027('111027'),

  /// Display: Image Library
  /// Definition: A container that references all image data used as evidence to produce a report
  value111028('111028'),

  /// Display: Image Quality Rating
  /// Definition: A numeric value in the range 0 to 100, inclusive, where 0 is worst quality and 100 is best quality
  value111029('111029'),

  /// Display: Image Region
  /// Definition: Purpose of reference for an SCOORD content item that identifies a specific region of interest within an image
  value111030('111030'),

  /// Display: Image View
  /// Definition: The projection of the anatomic region of interest on an image receptor
  value111031('111031'),

  /// Display: Image View Modifier
  /// Definition: Modifier for Image View
  value111032('111032'),

  /// Display: Impression Description
  /// Definition: Free-form text describing the overall or an individual impression
  value111033('111033'),

  /// Display: Individual Impression/Recommendation
  /// Definition: A container for a group of related results from interpretation of one or more images and associated clinical information
  value111034('111034'),

  /// Display: Lesion Density
  /// Definition: The X-Ray attenuation of a lesion relative to the expected attenuation of an equal volume of fibroglandular breast tissue
  value111035('111035'),

  /// Display: Mammography CAD Report
  /// Definition: A structured report containing the results of computer-aided detection or diagnosis applied to breast imaging and associated clinical information
  value111036('111036'),

  /// Display: Margins
  /// Definition: The characteristic of the boundary, edges or border of a detected lesion
  value111037('111037'),

  /// Display: Number of calcifications
  /// Definition: The quantity of calcifications detected within an identified group or cluster
  value111038('111038'),

  /// Display: Object type
  /// Definition: A non-lesion object identified within one or more images
  value111039('111039'),

  /// Display: Original Source
  /// Definition: Purpose of reference for a COMPOSITE content item that identifies it as the original source of evidence for another content item in the report
  value111040('111040'),

  /// Display: Outline
  /// Definition: Purpose of reference for an SCOORD content item that identifies the outline or bounding region of a finding or feature
  value111041('111041'),

  /// Display: Pathology
  /// Definition: The inferred type of disease associated with an identified feature
  value111042('111042'),

  /// Display: Patient Orientation Column
  /// Definition: The patient orientation relative to the image plane, specified by a value that designates the anatomical direction of the positive column axis (top to bottom)
  value111043('111043'),

  /// Display: Patient Orientation Row
  /// Definition: The patient orientation relative to the image plane, specified by a value that designates the anatomical direction of the positive row axis (left to right)
  value111044('111044'),

  /// Display: Pectoral Muscle Outline
  /// Definition: Purpose of reference for an SCOORD content item that is an outline of the pectoral muscle tissue only
  value111045('111045'),

  /// Display: Percent Fibroglandular Tissue
  /// Definition: Percent of breast area that is mammographically dense, excluding pectoralis muscle
  value111046('111046'),

  /// Display: Probability of cancer
  /// Definition: The likelihood that an identified finding or feature is cancerous
  value111047('111047'),

  /// Display: Quadrant location
  /// Definition: A location identifier based on the division of an area into four regions
  value111048('111048'),

  /// Display: Qualitative Difference
  /// Definition: A qualitative characteristic of a feature that has changed over time
  value111049('111049'),

  /// Display: Quality Assessment
  /// Definition: The effect of the quality of an image on its usability
  value111050('111050'),

  /// Display: Quality Control Standard
  /// Definition: The quality control standard used to make a quality assessment
  value111051('111051'),

  /// Display: Quality Finding
  /// Definition: A specific quality related deficiency detected within an image
  value111052('111052'),

  /// Display: Recommended Follow-up
  /// Definition: Recommended type of follow-up to an imaging procedure, based on interpreted results
  value111053('111053'),

  /// Display: Recommended Follow-up Date
  /// Definition: Recommended follow-up date to an imaging procedure, based on interpreted results
  value111054('111054'),

  /// Display: Recommended Follow-up Interval
  /// Definition: Recommended follow-up interval to an imaging procedure, based on interpreted results
  value111055('111055'),

  /// Display: Rendering Intent
  /// Definition: The recommendation of the producer of a content item regarding presentation of the content item by recipients of the report
  value111056('111056'),

  /// Display: Scope of Feature
  /// Definition: An indication of how widespread the detection of a feature is within the analyzed image data set
  value111057('111057'),

  /// Display: Selected Region Description
  /// Definition: A textual description of the contents of a selected region identified within an image
  value111058('111058'),

  /// Display: Single Image Finding
  /// Definition: An item that was detected on one image
  value111059('111059'),

  /// Display: Study Date
  /// Definition: Date on which the acquisition of the study information was started
  value111060('111060'),

  /// Display: Study Time
  /// Definition: Time at which the acquisition of the study information was started
  value111061('111061'),

  /// Display: Successful Analyses
  /// Definition: A group of analysis algorithms that were attempted and completed successfully
  value111062('111062'),

  /// Display: Successful Detections
  /// Definition: A group of detection algorithms that were attempted and completed successfully
  value111063('111063'),

  /// Display: Summary of Detections
  /// Definition: An overall indication of whether the CAD detection algorithms applied were completed successfully
  value111064('111064'),

  /// Display: Summary of Analyses
  /// Definition: An overall indication of whether the CAD analysis algorithms applied were completed successfully
  value111065('111065'),

  /// Display: Vertical Pixel Spacing
  /// Definition: For projection radiography, the vertical physical distance measured at the front plane of an Image Receptor housing between the center of each pixel. For tomographic images, the vertical physical distance in the patient between the center of each pixel
  value111066('111066'),

  /// Display: Crosstable
  /// Definition: A radiographic projection that has been with the patient lying on a table with the X-Ray source on one side of the table and the detector on the other; e.g. may describe a cross-table cervical spine, chest or pelvis X-Ray image
  value111069('111069'),

  /// Display: CAD Operating Point
  /// Definition: One of a number of discrete points on the Receiver-Operator Characteristics (ROC) curve that reflects the expected sensitivity and specificity of a CAD algorithm, where zero indicates the highest specificity, lowest sensitivity operating point. The value should not exceed the Maximum CAD Operating Point
  value111071('111071'),

  /// Display: Maximum CAD Operating Point
  /// Definition: The maximum value of CAD Operating Point for the specific CAD algorithm used
  value111072('111072'),

  /// Display: CAD Operating Point Description
  /// Definition: The intended interpretation of a CAD Operating Point
  value111081('111081'),

  /// Display: False Markers per Image
  /// Definition: The number of false CAD markers per image. Correlates to inverse of Image Specificity
  value111086('111086'),

  /// Display: False Markers per Case
  /// Definition: The number of false markers per collection of images that are CAD processed as a group. Correlates to inverse of Case Specificity
  value111087('111087'),

  /// Display: Case Sensitivity
  /// Definition: The percentage of cancers that should be detected by a CAD algorithm where CAD marks the cancers in at least one view
  value111088('111088'),

  /// Display: Lesion Sensitivity
  /// Definition: The percentage of cancers that should be detected by a CAD algorithm where CAD marks the cancers in each view
  value111089('111089'),

  /// Display: Case Specificity
  /// Definition: The percentage of cases (collections of images CAD processed as a group) without cancer that have no CAD findings whatsoever. Correlates to inverse of False Markers per Case
  value111090('111090'),

  /// Display: Image Specificity
  /// Definition: The percentage of images without cancer that have no CAD findings whatsoever. Correlates to inverse of False Markers per Image
  value111091('111091'),

  /// Display: Recommended CAD Operating Point
  /// Definition: The CAD operating point that is recommended for initial display by the creator of the structured report
  value111092('111092'),

  /// Display: CAD Operating Point Table
  /// Definition: A list of CAD operating points including their corresponding characteristics
  value111093('111093'),

  /// Display: Selected region
  /// Definition: A specific area of interest noted within an image
  value111099('111099'),

  /// Display: Breast geometry
  /// Definition: The surface shape of all or a portion of breast related anatomy
  value111100('111100'),

  /// Display: Image Quality
  /// Definition: Image quality incorporates the following clinical image evaluation parameters: assessment of positioning, compression, artifacts, exposure, contrast, sharpness, and labeling
  value111101('111101'),

  /// Display: Non-lesion
  /// Definition: A finding or feature that is identified as a non-anatomic foreign object
  value111102('111102'),

  /// Display: Density
  /// Definition: A space-occupying lesion identified in a single image or projection
  value111103('111103'),

  /// Display: Individual Calcification
  /// Definition: A single identified calcification
  value111104('111104'),

  /// Display: Calcification Cluster
  /// Definition: Multiple calcifications identified as occupying a small area of tissue (less than 2 cc)
  value111105('111105'),

  /// Display: Cooper's ligament changes
  /// Definition: Straightening or thickening of Cooper's ligaments
  value111111('111111'),

  /// Display: Mass in the skin
  /// Definition: An abnormality noted at imaging within the dermis of the breast
  value111112('111112'),

  /// Display: Mass on the skin
  /// Definition: An abnormality noted at imaging on the epidermis of the breast
  value111113('111113'),

  /// Display: Post Procedure Mammograms for Marker Placement
  /// Definition: An assessment category to indicate that images have been acquired to assess marker placement following a breast interventional procedure
  value111120('111120'),

  /// Display: Follow-up post biopsy as directed by clinician
  /// Definition: An indication that the patient should seek post procedural follow-up directives from a clinical health care provider
  value111121('111121'),

  /// Display: Known biopsy proven malignancy - take appropriate action
  /// Definition: A recommendation on a patient with known cancer to take steps appropriate to the diagnosis
  value111122('111122'),

  /// Display: Marker placement
  /// Definition: Positioning of a radiopaque marker
  value111123('111123'),

  /// Display: Personal history of breast cancer with mastectomy
  /// Definition: Patient has previous diagnosis of breast cancer resulting in mastectomy
  value111124('111124'),

  /// Display: Known biopsy proven malignancy
  /// Definition: Patient has had biopsy containing proven malignancy
  value111125('111125'),

  /// Display: Image detected mass
  /// Definition: Patient has a finding of mass reported on a prior imaging exam
  value111126('111126'),

  /// Display: Targeted
  /// Definition: A breast imaging procedure performed on a specific area of the breast
  value111127('111127'),

  /// Display: Survey
  /// Definition: A breast imaging procedure performed on the entire breast
  value111128('111128'),

  /// Display: Clustered microcysts
  /// Definition: A cluster of tiny anechoic foci each smaller than 2-3 mm in diameter with thin (less than 0.5 mm) intervening septations and no discrete solid components
  value111129('111129'),

  /// Display: Complicated cyst
  /// Definition: A fluid filled mass most commonly characterized by homogeneous low-level internal echoes on ultrasound
  value111130('111130'),

  /// Display: Additional projections
  /// Definition: Views not inclusive of MLO and CC (BI-RADS®)
  value111135('111135'),

  /// Display: Spot magnification view(s)
  /// Definition: A spot or coned down compression of the breast providing a reduction in the thickness and a magnification of the localized area of interest and improved separation of breast tissue
  value111136('111136'),

  /// Display: Ultrasound
  /// Definition: Use of sound waves to visualize muscles, tendons, and many internal organs, to capture their size, structure and any pathological lesions with real time tomographic images.
  value111137('111137'),

  /// Display: Old films for comparison
  /// Definition: Obtain previous mammography studies to compare to present study
  value111138('111138'),

  /// Display: Ductography
  /// Definition: A medical procedure used for the sampling of mammary duct tissue
  value111139('111139'),

  /// Display: Normal interval follow-up
  /// Definition: Follow up study at 12 months for women 40 years of age having a prior negative study and no mitigating risk factors for breast cancer
  value111140('111140'),

  /// Display: Any decision to biopsy should be based on clinical assessment
  /// Definition: Any decision to perform tissue acquisition should be based on clinical assessment
  value111141('111141'),

  /// Display: Follow-up at short interval (1-11 months)
  /// Definition: Follow-up at short interval (1-11 months)
  value111142('111142'),

  /// Display: Biopsy should be considered
  /// Definition: Tissue acquisition should be considered
  value111143('111143'),

  /// Display: Needle localization and biopsy
  /// Definition: Breast tissue acquisition following the identification of an area of concern with the placement of a needle or needle-wire assembly
  value111144('111144'),

  /// Display: Histology using core biopsy
  /// Definition: Pathologic analysis of breast tissue and lesions using core tissue samples
  value111145('111145'),

  /// Display: Suggestive of malignancy - take appropriate action
  /// Definition: Lesions that do not have the characteristic morphologies of breast cancer but have a definite probability of being malignant. There is a sufficient concern to urge a biopsy
  value111146('111146'),

  /// Display: Cytologic analysis
  /// Definition: Cellular analysis of specimen
  value111147('111147'),

  /// Display: Biopsy should be strongly considered
  /// Definition: Tissue acquisition should be strongly considered
  value111148('111148'),

  /// Display: Highly suggestive of malignancy - take appropriate action
  /// Definition: Lesions have a high probability of being cancer, which require additional action
  value111149('111149'),

  /// Display: Presentation Required: Rendering device is expected to present
  /// Definition: The producer of a report intends for a recipient of the report to present or display the associated content item
  value111150('111150'),

  /// Display: Presentation Optional: Rendering device may present
  /// Definition: The producer of a report considers the presentation or display of the associated content item by a recipient to be optional
  value111151('111151'),

  /// Display: Not for Presentation: Rendering device expected not to present
  /// Definition: The producer of a report intends for a recipient of the report NOT to present or display the associated content item
  value111152('111152'),

  /// Display: Target content items are related temporally
  /// Definition: The associated content items are identified as being the same finding or feature at different points in time
  value111153('111153'),

  /// Display: Target content items are related spatially
  /// Definition: The associated content items are identified as being the same finding or feature on different projections taken at the same point in time
  value111154('111154'),

  /// Display: Target content items are related contra-laterally
  /// Definition: The associated content items are identified as being related side-to-side
  value111155('111155'),

  /// Display: Feature detected on the only image
  /// Definition: There is one image in the interpreted data set
  value111156('111156'),

  /// Display: Feature detected on only one of the images
  /// Definition: There is more than one image of the same modality in the interpreted data set
  value111157('111157'),

  /// Display: Feature detected on multiple images
  /// Definition: There is more than one image of the same modality in the interpreted data set
  value111158('111158'),

  /// Display: Feature detected on images from multiple modalities
  /// Definition: The interpreted data set contains images from multiple modalities
  value111159('111159'),

  /// Display: Scar tissue
  /// Definition: The fibrous tissue replacing normal tissues destroyed by disease or injury
  value111168('111168'),

  /// Display: J Wire
  /// Definition: A medical appliance used for localization of non palpable breast lesions to insure that the proper area is removed in a surgical biopsy
  value111170('111170'),

  /// Display: Pacemaker
  /// Definition: A medical appliance used for regulating cardiac rhythms
  value111171('111171'),

  /// Display: Paddle
  /// Definition: A compression device used for obtaining mammographic images
  value111172('111172'),

  /// Display: Collimator
  /// Definition: A device used for restricting an X-Ray beam
  value111173('111173'),

  /// Display: ID Plate
  /// Definition: An area designated on a radiographic film for facility and patient ID information
  value111174('111174'),

  /// Display: Other Marker
  /// Definition: Site specific markers
  value111175('111175'),

  /// Display: Unspecified
  /// Definition: The value of the concept is not specified
  value111176('111176'),

  /// Display: View and Laterality Marker is missing
  /// Definition: Image quality deficiency according to MQSA
  value111177('111177'),

  /// Display: View and Laterality Marker does not have both view and laterality
  /// Definition: Image quality deficiency according to MQCM
  value111178('111178'),

  /// Display: View and Laterality Marker does not have approved codes
  /// Definition: Image quality deficiency according to MQCM
  value111179('111179'),

  /// Display: View and Laterality Marker is not near the axilla
  /// Definition: Image quality deficiency according to MQCM
  value111180('111180'),

  /// Display: View and Laterality Marker overlaps breast tissue
  /// Definition: Image quality deficiency according to MQCM
  value111181('111181'),

  /// Display: View and Laterality Marker is partially obscured
  /// Definition: Image quality deficiency according to MQCM
  value111182('111182'),

  /// Display: View and Laterality Marker is incorrect
  /// Definition: Image quality deficiency
  value111183('111183'),

  /// Display: View and Laterality Marker is off image
  /// Definition: Image quality deficiency
  value111184('111184'),

  /// Display: Flash is not near edge of film
  /// Definition: Image quality deficiency according to MQCM
  value111185('111185'),

  /// Display: Flash is illigible, does not fit, or is lopsided
  /// Definition: Image quality deficiency according to MQSA
  value111186('111186'),

  /// Display: Flash doesn't include patient name and additional patient id
  /// Definition: Image quality deficiency according to MQCM
  value111187('111187'),

  /// Display: Flash doesn't include date of examination
  /// Definition: Image quality deficiency according to MQCM
  value111188('111188'),

  /// Display: Flash doesn't include facility name and location
  /// Definition: Image quality deficiency according to MQSA
  value111189('111189'),

  /// Display: Flash doesn't include technologist identification
  /// Definition: Image quality deficiency according to MQCM
  value111190('111190'),

  /// Display: Flash doesn't include cassette/screen/detector identification
  /// Definition: Image quality deficiency according to MQCM
  value111191('111191'),

  /// Display: Flash doesn't include mammography unit identification
  /// Definition: Image quality deficiency according to MQCM
  value111192('111192'),

  /// Display: Date sticker is missing
  /// Definition: Image quality deficiency according to MQCM
  value111193('111193'),

  /// Display: Technical factors missing
  /// Definition: Image quality deficiency according to MQCM
  value111194('111194'),

  /// Display: Collimation too close to breast
  /// Definition: Image quality deficiency according to MQCM
  value111195('111195'),

  /// Display: Inadequate compression
  /// Definition: Image quality deficiency according to MQCM
  value111196('111196'),

  /// Display: MLO Insufficient pectoral muscle
  /// Definition: Image quality deficiency according to MQCM
  value111197('111197'),

  /// Display: MLO No fat is visualized posterior to fibroglandular tissues
  /// Definition: Image quality deficiency according to MQCM
  value111198('111198'),

  /// Display: MLO Poor separation of deep and superficial breast tissues
  /// Definition: Image quality deficiency according to MQCM
  value111199('111199'),

  /// Display: MLO Evidence of motion blur
  /// Definition: Image quality deficiency according to MQCM
  value111200('111200'),

  /// Display: MLO Inframammary fold is not open
  /// Definition: Image quality deficiency according to MQCM
  value111201('111201'),

  /// Display: CC Not all medial tissue visualized
  /// Definition: Image quality deficiency according to MQCM
  value111202('111202'),

  /// Display: CC Nipple not centered on image
  /// Definition: Image quality deficiency according to MQCM
  value111203('111203'),

  /// Display: CC Posterior nipple line does not measure within 1 cm of MLO
  /// Definition: Image quality deficiency according to MQCM
  value111204('111204'),

  /// Display: Nipple not in profile
  /// Definition: Image quality deficiency
  value111205('111205'),

  /// Display: Insufficient implant displacement incorrect
  /// Definition: Image quality deficiency according to MQCM
  value111206('111206'),

  /// Display: Image artifact(s)
  /// Definition: Signals that do not faithfully reproduce actual anatomic structures because of distortion or of addition or deletion of information
  value111207('111207'),

  /// Display: Grid artifact(s)
  /// Definition: Feature(s) arising from the acquisition unit's anti-scatter grid mechanism. For two-dimensional systems, such features include those of mechanically damaged or incorrectly positioned grids. For moving or Bucky grids, artifacts may result from intentional grid motion that is inadequate in duration or velocity uniformity
  value111208('111208'),

  /// Display: Positioning
  /// Definition: Inadequate arrangement of the anatomy of interest with respect to the X-Ray field and image detector sensitive area. Examples: 1) positioning is "cutoff" when the projection of anatomy of interest falls outside the sensitive area of the detector; 2) "cone cut", in which the X-Ray field does not adequately cover the anatomy of interest; 3) detector's sensitive surface is too small to cover the projection of the anatomy of interest; 4) improper angular orientation or "rotation" of anatomy of interest with respect to the X-Ray source, or detector; 5) projection of other anatomy or clothing over the anatomy of interest in the image
  value111209('111209'),

  /// Display: Motion blur
  /// Definition: Unacceptable image blur resulting from motion of the anatomy of interest during exposure or the inadequately compensated motion of X-Ray source with respect to the image detector during exposure
  value111210('111210'),

  /// Display: Under exposed
  /// Definition: Inadequate number of quanta reached the detector during exposure. Reasons for under exposed images include low kVp, low mAs product, excess Source Image Distance. Under exposed images have inadequate signal and higher noise in the areas of interest
  value111211('111211'),

  /// Display: Over exposed
  /// Definition: An excess number of quanta reached the detector during exposure. Reasons for over exposed images include high kVp, high mAs product, short Source Image Distance. Over exposed images have high signal and lower noise in the areas of interest. Over exposed area may demonstrate lack of contrast from over saturation of the detector
  value111212('111212'),

  /// Display: No image
  /// Definition: No evidence of a patient exposure
  value111213('111213'),

  /// Display: Detector artifact(s)
  /// Definition: Superposed features or flaws of the detector
  value111214('111214'),

  /// Display: Artifact(s) other than grid or detector artifact
  /// Definition: Features or discontinuities arising from causes other than the anti-scatter grid and image detector
  value111215('111215'),

  /// Display: Mechanical failure
  /// Definition: Failure of the device to operate according to mechanical design specifications
  value111216('111216'),

  /// Display: Electrical failure
  /// Definition: Failure of a device to operate according to electrical design specifications
  value111217('111217'),

  /// Display: Software failure
  /// Definition: Attributable to software used in generation or handling of image
  value111218('111218'),

  /// Display: Inappropriate image processing
  /// Definition: Images processed inappropriately, not following appropriate protocol
  value111219('111219'),

  /// Display: Other failure
  /// Definition: Failure that is not mechanical or electrical or otherwise described
  value111220('111220'),

  /// Display: Unknown failure
  /// Definition: Unidentified or unknown cause of failure
  value111221('111221'),

  /// Display: Succeeded
  /// Definition: The attempted process was completely successful
  value111222('111222'),

  /// Display: Partially Succeeded
  /// Definition: The attempted process succeeded in some ways, but failed in others
  value111223('111223'),

  /// Display: Failed
  /// Definition: The attempted process completely failed
  value111224('111224'),

  /// Display: Not Attempted
  /// Definition: No process was performed
  value111225('111225'),

  /// Display: Individual Impression / Recommendation Analysis
  /// Definition: Analysis of a related group of findings or features detected during image data inspection, to produce a summary impression and/or recommendation
  value111233('111233'),

  /// Display: Overall Impression / Recommendation Analysis
  /// Definition: Analysis of all groups of findings or features, to produce a single impression and/or recommendation
  value111234('111234'),

  /// Display: Unusable - Quality renders image unusable
  /// Definition: The usability of an image for diagnostic interpretation or CAD, based on a quality control standard
  value111235('111235'),

  /// Display: Usable - Does not meet the quality control standard
  /// Definition: The usability of an image for diagnostic interpretation or CAD, based on a quality control standard
  value111236('111236'),

  /// Display: Usable - Meets the quality control standard
  /// Definition: The usability of an image for diagnostic interpretation or CAD, based on a quality control standard
  value111237('111237'),

  /// Display: Mammography Quality Control Manual 1999, ACR
  /// Definition: An image quality control standard specified by the American College of Radiology
  value111238('111238'),

  /// Display: Title 21 CFR Section 900, Subpart B
  /// Definition: An image quality control standard in the US Code of Federal Regulations
  value111239('111239'),

  /// Display: Institutionally defined quality control standard
  /// Definition: An image quality control standard specified or adopted by the institution responsible for the document
  value111240('111240'),

  /// Display: All algorithms succeeded; without findings
  /// Definition: No findings resulted upon successful completion of all attempted computer-aided detection and/or analysis
  value111241('111241'),

  /// Display: All algorithms succeeded; with findings
  /// Definition: One or more findings resulted upon successful completion of all attempted computer-aided detection and/or analysis
  value111242('111242'),

  /// Display: Not all algorithms succeeded; without findings
  /// Definition: No findings resulted from the attempted computer-aided detection and/or analysis, but one or more failures occurred in the process
  value111243('111243'),

  /// Display: Not all algorithms succeeded; with findings
  /// Definition: One or more findings resulted from the attempted computer-aided detection and/or analysis, but one or more failures occurred in the process
  value111244('111244'),

  /// Display: No algorithms succeeded; without findings
  /// Definition: All of the attempted computer-aided detection and/or analysis failed, so there could be no findings
  value111245('111245'),

  /// Display: Adenolipoma
  /// Definition: A benign tumor having glandular characteristics but composed of fat, with the presence of normal mammary ducts
  value111248('111248'),

  /// Display: Ductal hyperplasia
  /// Definition: Hyperplasia is also known as epithelial hyperplasia or proliferative breast disease. It's an overgrowth of the cells that line the ducts or the lobules. Based on how the cells look under a microscope, the hyperplasia is called either ductal hyperplasia (also called duct epithelial hyperplasia) or lobular hyperplasia. Based on the pattern of the cells, hyperplasia may be called usual or atypical. In usual hyperplasia, the pattern of cells is very close to normal. Atypical hyperplasia (or hyperplasia with atypia) is a term used when the cells are more distorted. FROM: http://www.cancer.org/healthy/findcancerearly/womenshealth/non-cancerousbreastconditions/non-cancerous-breast-conditions-hyperplasia
  value111249('111249'),

  /// Display: Adenomyoepithelioma
  /// Definition: Neoplasms composed of myoepithelial cells
  value111250('111250'),

  /// Display: Normal axillary node
  /// Definition: Axillary node that is normal in appearance with no associated pathology
  value111251('111251'),

  /// Display: Axillary node with calcifications
  /// Definition: Axillary node containing calcifications
  value111252('111252'),

  /// Display: Axillary node hyperplasia
  /// Definition: Excessive proliferation of normal tissue arrangement of the axillary node
  value111253('111253'),

  /// Display: Asynchronous involution
  /// Definition:
  value111254('111254'),

  /// Display: Benign cyst with blood
  /// Definition: Cyst with benign morphology containing blood
  value111255('111255'),

  /// Display: Benign Calcifications
  /// Definition: Calcifications having typically benign morphology. They are not of intermediate or high probability of concern for malignancy
  value111256('111256'),

  /// Display: Intracystic papilloma
  /// Definition: Growing within a cystic adenoma, filling the cavity with a mass of branching epithelial processes
  value111257('111257'),

  /// Display: Ductal adenoma
  /// Definition: Adenoma located in mammary duct, present as discrete sclerotic nodules, solitary or multiple
  value111258('111258'),

  /// Display: Diabetic fibrous mastopathy
  /// Definition: The occurrence of fibrous tumor-forming stromal proliferation in patients with diabetes mellitus
  value111259('111259'),

  /// Display: Extra abdominal desmoid
  /// Definition: A deep seated firm tumor frequently occurring on the chest consisting of collagenous tissue that infiltrates surround muscle; frequently recurs but does not metastasize
  value111260('111260'),

  /// Display: Epidermal inclusion cyst
  /// Definition: A cyst formed of a mass of epithelial cells, as a result of trauma has been pushed beneath the epidermis. The cyst is lined with squamous epithelium and contains concentric layers or keratin
  value111262('111262'),

  /// Display: Fibroadenomatoid hyperplasia
  /// Definition: Excessive proliferation of fibroadenoma tissue
  value111263('111263'),

  /// Display: Fibroadenolipoma
  /// Definition: A lipoma with an abundant stroma of fibrous tissue
  value111264('111264'),

  /// Display: Foreign body (reaction)
  /// Definition:
  value111265('111265'),

  /// Display: Galactocele
  /// Definition: Retention cyst caused by occlusion of a lactiferous duct
  value111269('111269'),

  /// Display: Hemangioma - nonparenchymal, subcutaneous
  /// Definition: A congenital anomaly that leads to a proliferation of blood vessels leading to a mass that resembles a neoplasm, not located in parenchymal areas but subcutaneous
  value111271('111271'),

  /// Display: Hyperplasia, usual
  /// Definition: Hyperplasia is also known as epithelial hyperplasia or proliferative breast disease. It's an overgrowth of the cells that line the ducts or the lobules. Based on how the cells look under a microscope, the hyperplasia is called either ductal hyperplasia (also called duct epithelial hyperplasia) or lobular hyperplasia. FROM: http://www.cancer.org/healthy/findcancerearly/womenshealth/non-cancerousbreastconditions/non-cancerous-breast-conditions-hyperplasia
  value111273('111273'),

  /// Display: Juvenile papillomatosis
  /// Definition: A form of fibrocystic disease in young woman with florid and sclerosing adenosis that microscopically may suggest carcinoma
  value111277('111277'),

  /// Display: Lactating adenoma
  /// Definition: Enlarging masses during lactation. A circumscribed benign tumor composed primarily of glandular structures with scanty stroma, with prominent secretory changes in the duct
  value111278('111278'),

  /// Display: Lactational change
  /// Definition: Changes related to the process of lactation
  value111279('111279'),

  /// Display: Large duct papilloma
  /// Definition: A papilloma pertaining to large mammary duct
  value111281('111281'),

  /// Display: Myofibroblastoma
  /// Definition: Solitary or multiple tumors of muscles and fibrous tissues, or tumors composed of myofibroblasts
  value111283('111283'),

  /// Display: Microglandular adenosis
  /// Definition: Irregular clusters of small tubules are present in adipose or fibrous tissue, resembling tubular carcinoma but lacking stromal fibroblastic proliferation
  value111284('111284'),

  /// Display: Multiple Intraductal Papillomas
  /// Definition: Papilloma typically involving an aggregate of adjacent ducts in the periphery of the breast, likely representing involvement of several foci of one or two duct systems
  value111285('111285'),

  /// Display: No abnormality
  /// Definition: No abnormality
  value111286('111286'),

  /// Display: Normal breast tissue
  /// Definition: Normal breast tissue
  value111287('111287'),

  /// Display: Neurofibromatosis
  /// Definition: Condition in which there are tumors of various sizes on peripheral nerves. They may be neuromas or fibromas
  value111288('111288'),

  /// Display: Oil cyst (fat necrosis cyst)
  /// Definition: A cyst resulting from the loss of the epithelial lining of a sebaceous dermoid or lacteal cyst
  value111290('111290'),

  /// Display: Post reduction mammoplasty
  /// Definition: Breast tissue with characteristics of a benign nature, following breast reduction surgery
  value111291('111291'),

  /// Display: Pseudoangiomatous stromal hyperplasia
  /// Definition: A benign stromal lesion composed of intermixed stromal and epithelial elements. The lobular and duct structures of the breast parenchyma are separated by an increased amount of stroma, non specific proliferative epithelial changes include hyperplasia of duct and lobular epithelium often with accentuation of myoepithelial cells and aprocine metaplasia with or without cyst formation
  value111292('111292'),

  /// Display: Radial scar
  /// Definition: An nonencapsulated stellate lesion consisting of a fibroelastic core and radiating bands of fibrous connective tissue containing lobules manifesting adenosis and ducts with papillary or diffuse intraductal hyperplasia
  value111293('111293'),

  /// Display: Sclerosing adenosis
  /// Definition: Prominent interductal fibrosis of the terminal ductules
  value111294('111294'),

  /// Display: Silicone granuloma
  /// Definition: Nodular inflammatory lesions due to the presence of silicone in the breast tissue
  value111296('111296'),

  /// Display: Nipple Characteristic
  /// Definition: The morphologic status of the nipple
  value111297('111297'),

  /// Display: Virginal hyperplasia
  /// Definition: Spontaneous excessive proliferation of breast tissue, usually found in younger women
  value111298('111298'),

  /// Display: Peripheral duct papillomas
  /// Definition: Papilloma(s) pertaining the peripheral ducts
  value111299('111299'),

  /// Display: Axillary node with lymphoma
  /// Definition: Axillary node with lymphoid tissue neoplasm
  value111300('111300'),

  /// Display: Axillary nodal metastases
  /// Definition: Metastatic disease to the axillary node
  value111301('111301'),

  /// Display: Angiosarcoma
  /// Definition: A malignant neoplasm occurring most often in breast and skin, believed to originate from endothelial cells of blood vessels, microscopically composed of closely packed round or spindle shaped cells, some of which line small spaces resembling vascular clefts
  value111302('111302'),

  /// Display: Blood vessel (vascular) invasion
  /// Definition: Histological changes to the vascular system related to an invasive process
  value111303('111303'),

  /// Display: Carcinoma in children
  /// Definition: Carcinoma of the breast found in patients less than 20 years of age
  value111304('111304'),

  /// Display: Carcinoma in ectopic breast
  /// Definition: A carcinoma found in supernumerary breasts and aberrant breast tissue
  value111305('111305'),

  /// Display: Carcinoma with endocrine differentiation
  /// Definition: A carcinoma that synthesizes substances, including hormones, not considered to be normal products of the breast
  value111306('111306'),

  /// Display: Basal cell carcinoma of nipple
  /// Definition: A basal cell carcinoma that arises in the nipple of the breast
  value111307('111307'),

  /// Display: Carcinoma with metaplasia
  /// Definition: Metaplastic carcinoma is cancer that begins in cells that have changed into another cell type (for example, a squamous cell of the esophagus changing to resemble a cell of the stomach). In some cases, metaplastic changes alone may mean there is an increased chance of cancer developing at the site. Metaplastic carcinoma is a relatively uncommon type of cancer with treatment generally similar to that of invasive ductal carcinoma of no special type.[1] FROM: https://en.wikipedia.org/wiki/Metaplastic_carcinoma
  value111308('111308'),

  /// Display: Cartilaginous and osseous change
  /// Definition: Tissue changes to bones and cartilage
  value111309('111309'),

  /// Display: Carcinoma in pregnancy and lactation
  /// Definition: Carcinoma of the breast presenting during pregnancy or lactation
  value111310('111310'),

  /// Display: Carcinosarcoma
  /// Definition: A malignant neoplasm that contains elements of carcinoma and sarcoma, so extensively intermixed as to indicate neoplasia of epithelial and mesenchymal tissue
  value111311('111311'),

  /// Display: Intraductal comedocarcinoma with necrosis
  /// Definition: Comedocarcinoma of a duct with areas of necrotic tissue
  value111312('111312'),

  /// Display: Intraductal carcinoma, low grade
  /// Definition: A non-invasive carcinoma restricted to the glandular lumen characterized by less aggressive malignant cytologic features and behavior
  value111313('111313'),

  /// Display: Intraductal carcinoma micro-papillary
  /// Definition: Papillary and micropapillary Ductal Carcinoma In Situ (DCIS): the cancer cells arrange themselves in a fern-like pattern within the affected breast ducts; micropapillary DCIS cells are smaller than papillary DCIS cells. FROM: http://www.imaginis.com/breast-cancer-diagnosis/ductal-carcinoma-in-situ-dcis-3
  value111314('111314'),

  /// Display: Intracystic papillary carcinoma
  /// Definition: A malignant neoplasm characterized by the formation of numerous, irregular, finger-like projections of fibrous stroma that is covered with a surface layer of neoplastic epithelial cells found in a cyst
  value111315('111315'),

  /// Display: Invasive and in-situ carcinoma
  /// Definition: Carcinoma with both characteristics of localized and spreading disease
  value111316('111316'),

  /// Display: Invasive lobular carcinoma
  /// Definition: Invasive lobular carcinoma is a type of breast cancer that begins in the milk-producing glands (lobules) of the breast. Invasive cancer means the cancer cells have broken out of the lobule where they began and have the potential to spread to the lymph nodes and other areas of the body. Invasive lobular carcinoma typically doesn't form a lump, which is common in breast cancer. Instead, there is a change in the breast that feels like a thickening or fullness in one part of the breast and is different from the surrounding breast tissue. FROM: http://www.mayoclinic.org/diseases-conditions/invasive-lobular-carcinoma/basics/definition/con-20033968
  value111317('111317'),

  /// Display: Leukemic infiltration
  /// Definition: Mammary infiltrates as a secondary manifestation in patients with established leukemia
  value111318('111318'),

  /// Display: Lympathic vessel invasion
  /// Definition: Histological changes to the lymphatic system related to an invasive process
  value111320('111320'),

  /// Display: Lymphoma
  /// Definition: A heterogeneous group of neoplasms arising in the reticuloendoethelial and lymphatic systems
  value111321('111321'),

  /// Display: Occult carcinoma presenting with axillary lymph node metastases
  /// Definition: A small carcinoma, either asymptomatic or giving rise to metastases without symptoms due to the primary carcinoma presenting with metastatic disease in the axillary lymph nodes
  value111322('111322'),

  /// Display: Metastatic cancer to the breast
  /// Definition: A malignant lesion in the breast with morphologic patterns not typical of breast carcinoma arising from a non-mammary malignant neoplasm
  value111323('111323'),

  /// Display: Metastatic cancer to the breast from the colon
  /// Definition: A malignant lesion in the breast with morphologic patterns not typical of breast carcinoma arising from a neoplasm in the colon
  value111324('111324'),

  /// Display: Metastatic cancer to the breast from the lung
  /// Definition: A malignant lesion in the breast with morphologic patterns not typical of breast carcinoma arising from a neoplasm in the lung
  value111325('111325'),

  /// Display: Metastatic melanoma to the breast
  /// Definition: A malignant lesion in the breast with morphologic patterns not typical of breast carcinoma arising from a melanoma
  value111326('111326'),

  /// Display: Metastatic cancer to the breast from the ovary
  /// Definition: A malignant lesion in the breast with morphologic patterns not typical of breast carcinoma arising from a neoplasm in the ovary
  value111327('111327'),

  /// Display: Metastatic sarcoma to the breast
  /// Definition: A malignant lesion in the breast with morphologic patterns not typical of breast carcinoma arising from a sarcoma
  value111328('111328'),

  /// Display: Multifocal intraductal carcinoma
  /// Definition: Multiple foci of non-invasive carcinoma restricted to the glandular lumen
  value111329('111329'),

  /// Display: Metastatic disease to axillary node
  /// Definition: A malignant lesion in an axillary node arising from a non-axillary neoplasm
  value111330('111330'),

  /// Display: Malignant fibrous histiocytoma
  /// Definition: Pleomorphic undifferentiated sarcoma (abbreviated PUS), also undifferentiated pleomorphic sarcoma and previously malignant fibrous histiocytoma (abbreviated MFH), is a type of soft tissue sarcoma. FROM: https://en.wikipedia.org/wiki/Pleomorphic_undifferentiated_sarcoma
  value111331('111331'),

  /// Display: Multifocal invasive ductal carcinoma
  /// Definition: Multiple sites of ductal carcinoma
  value111332('111332'),

  /// Display: Metastasis to an intramammary lymph node
  /// Definition: A malignant lesion in a intramammary lymph node arising from a non-intramammary lymph node neoplasm
  value111333('111333'),

  /// Display: Malignant melanoma of nipple
  /// Definition: A malignant melanoma of the skin that arises in the nipple of the breast
  value111334('111334'),

  /// Display: Neoplasm of the mammary skin
  /// Definition:
  value111335('111335'),

  /// Display: Papillary carcinoma in-situ
  /// Definition: Papillary and micropapillary Ductal Carcinoma In Situ (DCIS): the cancer cells arrange themselves in a fern-like pattern within the affected breast ducts; micropapillary DCIS cells are smaller than papillary DCIS cells. FROM: http://www.imaginis.com/breast-cancer-diagnosis/ductal-carcinoma-in-situ-dcis-3
  value111336('111336'),

  /// Display: Recurrent malignancy
  /// Definition: Recurrent malignancy
  value111338('111338'),

  /// Display: Squamous cell carcinoma of the nipple
  /// Definition: Squamous cell carcinoma to the terminal portion of the alveolar
  value111340('111340'),

  /// Display: Intraductal carcinoma, high grade
  /// Definition: A non-invasive carcinoma restricted to the glandular lumen characterized by more aggressive malignant cytologic features and behavior
  value111341('111341'),

  /// Display: Invasive cribriform carcinoma
  /// Definition: Invasive tumor with cribriform pattern similar to cribriform DCIS. Low grade, cribriform appearance (well defined spaces formed by arches of cells) similar to cribriform DCIS but with larger cells, more cytoplasm and more vesicular nuclei: Tumor cells are small, often have apical snouts, mild/moderate nuclear pleomorphism; Also stromal invasion by islands of cells, often angulated; May have predominantly solid appearance; Associated with cribriform DCIS; Often mixed with tubular carcinoma. FROM: http://www.pathologyoutlines.com/topic/breastmalignantcribriform.html
  value111342('111342'),

  /// Display: Angular margins
  /// Definition: An indication that some or all of the margin of a lesion has sharp corners, often forming acute angles
  value111343('111343'),

  /// Display: Fine pleomorphic calcification
  /// Definition: Calcifications that vary in sizes and shapes and are usually smaller than0.5 mm in diameter
  value111344('111344'),

  /// Display: Macrocalcifications
  /// Definition: Coarse calcifications that are 0.5 mm or greater in size
  value111345('111345'),

  /// Display: Calcifications within a mass
  /// Definition: An indicator that calcifications are imbedded within a mass
  value111346('111346'),

  /// Display: Calcifications outside of a mass
  /// Definition: An indicator that calcifications are imaged outside of a mass finding
  value111347('111347'),

  /// Display: Breast background echotexture
  /// Definition: Tissue composition of the breast noted on sonography
  value111350('111350'),

  /// Display: Homogeneous fat echotexture
  /// Definition: Fat lobules and uniformly echogenic bands of supporting structures comprise the bulk of breast tissue
  value111351('111351'),

  /// Display: Homogeneous fibroglandular echotexture
  /// Definition: A uniformly echogenic layer of fibroglandular tissue is seen beneath a thin layer of subcutaneous fat
  value111352('111352'),

  /// Display: Heterogeneous echotexture
  /// Definition: The breast texture is characterized by multiple small areas of increased and decreased echogenicity
  value111353('111353'),

  /// Display: Orientation
  /// Definition: Referential relationship of the finding to the imaging device as noted on sonography
  value111354('111354'),

  /// Display: Parallel
  /// Definition: The long axis of a lesion parallels the skin line ("wider-than-tall" or in a horizontal orientation)
  value111355('111355'),

  /// Display: Not parallel
  /// Definition: The anterior-posterior or vertical dimension is greater than the transverse or horizontal dimension
  value111356('111356'),

  /// Display: Lesion boundary
  /// Definition: The lesion boundary describes the transition zone between themas and the surrounding tissue
  value111357('111357'),

  /// Display: Abrupt interface
  /// Definition: The sharp demarcation between the lesion and surrounding tissue can be imperceptible or a distinct well-defined echogenic rim of any thickness
  value111358('111358'),

  /// Display: Echogenic halo
  /// Definition: There is no sharp demarcation between the mass and the surrounding tissue, which is bridged by an echogenic transition zone
  value111359('111359'),

  /// Display: Echo pattern
  /// Definition: An imaging characteristic of resonance noted during sonography
  value111360('111360'),

  /// Display: Anechoic
  /// Definition: Without internal echoes
  value111361('111361'),

  /// Display: Hyperechoic
  /// Definition: Having increased echogenicity relative to fat or equal to fibroglandular tissue
  value111362('111362'),

  /// Display: Complex
  /// Definition: Mass contains both anechoic and echogenic components
  value111363('111363'),

  /// Display: Hypoechoic
  /// Definition: Defined relative to fat; masses are characterized by low-level echoes throughout; e.g. appearance of a complicated cyst or fibroadenoma
  value111364('111364'),

  /// Display: Isoechoic
  /// Definition: Having the same echogenicity as fat (a complicated cyst or fibroadenoma may be isoechoic or hypoechoic)
  value111365('111365'),

  /// Display: Posterior acoustic features
  /// Definition: The attenuation characteristics of a mass with respect to its acoustic transmission
  value111366('111366'),

  /// Display: No posterior acoustic features
  /// Definition: No posterior shadowing or enhancement
  value111367('111367'),

  /// Display: Posterior enhancement
  /// Definition: Increased posterior echoes
  value111368('111368'),

  /// Display: Posterior shadowing
  /// Definition: Decreased posterior echoes; edge shadows are excluded
  value111369('111369'),

  /// Display: Combined posterior enhancement and shadowing
  /// Definition: More than one pattern of posterior attenuation, both shadowing and enhancement
  value111370('111370'),

  /// Display: Identifiable effect on surrounding tissues
  /// Definition: Sonographic appearance of adjacent structures relative to a mass finding
  value111371('111371'),

  /// Display: Vascularity
  /// Definition: Characterization of vascularization in region of interest
  value111372('111372'),

  /// Display: Vascularity not present
  /// Definition: Vascularity not evident, such as on ultrasound
  value111373('111373'),

  /// Display: Vascularity not assessed
  /// Definition: Vascularity not evaluated
  value111374('111374'),

  /// Display: Vascularity present in lesion
  /// Definition: Vascularity on imaging is seen within a lesion
  value111375('111375'),

  /// Display: Vascularity present immediately adjacent to lesion
  /// Definition: Vascularity on imaging is seen immediately adjacent to a lesion
  value111376('111376'),

  /// Display: Diffusely increased vascularity in surrounding tissue
  /// Definition: Vascularity on imaging is considered diffusely elevated within the surrounding breast tissue
  value111377('111377'),

  /// Display: Correlation to other Findings
  /// Definition: Relationship of the new anomaly to other clinical or imaging anomalies
  value111380('111380'),

  /// Display: Correlates to physical exam findings
  /// Definition: An indication that the current imaging finding relates to a finding from a clinical breast exam
  value111381('111381'),

  /// Display: Correlates to mammography findings
  /// Definition: An indication that the current imaging finding relates to a finding from a mammography exam
  value111382('111382'),

  /// Display: Correlates to MRI findings
  /// Definition: An indication that the current imaging finding relates to a finding from a breast MRI exam
  value111383('111383'),

  /// Display: Correlates to ultrasound findings
  /// Definition: An indication that the current imaging finding relates to a finding from a breast ultrasound exam
  value111384('111384'),

  /// Display: Correlates to other imaging findings
  /// Definition: An indication that the current imaging finding relates to a finding from an imaging exam
  value111385('111385'),

  /// Display: No correlation to other imaging findings
  /// Definition: An indication that the current imaging finding has no relation to findings from any other imaging exam
  value111386('111386'),

  /// Display: No correlation to clinical findings
  /// Definition: An indication that the current imaging finding has no relation to any other clinical findings
  value111387('111387'),

  /// Display: Malignancy Type
  /// Definition: Classification of the cancer as invasive, DCIS, or other
  value111388('111388'),

  /// Display: Invasive breast carcinoma
  /// Definition: A malignancy that has spread beyond an area of focus
  value111389('111389'),

  /// Display: Other malignancy type
  /// Definition: A breast cancer with malignant pathology findings that are not classified as invasive or in situ
  value111390('111390'),

  /// Display: Menstrual Cycle Phase
  /// Definition: A specific timeframe during menses
  value111391('111391'),

  /// Display: 1st week
  /// Definition: In the first week of the menstrual cycle phase, that is, one week following menses
  value111392('111392'),

  /// Display: 2nd week
  /// Definition: In the second week of the menstrual cycle phase, that is, two weeks following menses
  value111393('111393'),

  /// Display: 3rd week
  /// Definition: In the third week of the menstrual cycle phase, that is, three weeks following menses
  value111394('111394'),

  /// Display: Estimated Timeframe
  /// Definition: An estimated period of time
  value111395('111395'),

  /// Display: < 3 months ago
  /// Definition: An event occurred less than 3 months ago
  value111396('111396'),

  /// Display: 4 months to 1 year ago
  /// Definition: An event occurred between 4 months and 1 year ago
  value111397('111397'),

  /// Display: > 1 year ago
  /// Definition: An event occurred longer than 1 year ago
  value111398('111398'),

  /// Display: Timeframe uncertain
  /// Definition: The timing of an event is not recalled
  value111399('111399'),

  /// Display: Breast Imaging Report
  /// Definition: Report title for the diagnostic report for one or more breast imaging or intervention procedures
  value111400('111400'),

  /// Display: Reason for procedure
  /// Definition: Concept name for the description of why a procedure has been performed
  value111401('111401'),

  /// Display: Clinical Finding
  /// Definition: A finding during clinical examination (i.e., history and physical examination) such as pain, palpable mass or discharge
  value111402('111402'),

  /// Display: Baseline screening mammogram
  /// Definition: First screening mammogram taken for patient that is used as a comparison baseline for further examinations
  value111403('111403'),

  /// Display: First mammogram ever
  /// Definition: First mammogram taken for a patient without regard to whether it was for screening or a diagnostic procedure
  value111404('111404'),

  /// Display: Implant type
  /// Definition: Concept name for the material of which a breast prosthetic device is constructed
  value111405('111405'),

  /// Display: Number of similar findings
  /// Definition: A numeric count of findings classified as similar in nature
  value111406('111406'),

  /// Display: Implant finding
  /// Definition: Concept name for the status of a breast prosthetic device as noted by imaging
  value111407('111407'),

  /// Display: Film Screen Mammography
  /// Definition: Mammogram using traditional X-Ray film
  value111408('111408'),

  /// Display: Digital Mammography
  /// Definition: Mammogram using a digital image acquisition system
  value111409('111409'),

  /// Display: Surgical consult
  /// Definition: Referred for evaluation by a surgeon
  value111410('111410'),

  /// Display: Mammography CAD
  /// Definition: Computer aided detection and/or computer aided diagnosis for mammography
  value111411('111411'),

  /// Display: Narrative Summary
  /// Definition: Concept name for a text-based section of a report
  value111412('111412'),

  /// Display: Overall Assessment
  /// Definition: A title for a report section that summarizes all interpretation results for a report with one overriding assessment; e.g. benign or negative
  value111413('111413'),

  /// Display: Supplementary Data
  /// Definition: Concept name for a collection of supporting evidence for a report
  value111414('111414'),

  /// Display: Additional evaluation requested from prior study
  /// Definition: Prior study indicates that additional imaging be performed to further evaluate a suspicious or questionable anatomic region
  value111415('111415'),

  /// Display: Follow-up at short interval from prior study
  /// Definition: The prior study recommended a follow-up breast imaging exam in 1 to 11 months (generally in 6 months)
  value111416('111416'),

  /// Display: History of breast augmentation, asymptomatic
  /// Definition: Prior breast augmentation (breast enlargement) and is not presenting with any symptoms
  value111417('111417'),

  /// Display: Review of an outside study
  /// Definition: Review or second opinion made on an image performed outside of the facility
  value111418('111418'),

  /// Display: Additional evaluation requested from abnormal screening exam
  /// Definition: Additional breast imaging performed at the time of the patient's screening mammogram
  value111419('111419'),

  /// Display: History of benign breast biopsy
  /// Definition: Patient has had previous benign breast biopsies
  value111420('111420'),

  /// Display: Personal history of breast cancer with breast conservation therapy
  /// Definition: Patient has had a prior surgery such as a lumpectomy or quadrantectomy to remove malignant breast tissue, but breast tissue remains
  value111421('111421'),

  /// Display: Physical Examination Results
  /// Definition: The results of a physical examination performed on the patient, possibly including the results of inspection, palpation, auscultation, or percussion
  value111423('111423'),

  /// Display: Comparison to previous findings
  /// Definition: The result of assessing the current imaging exam in comparison to previous imaging exams
  value111424('111424'),

  /// Display: Intraluminal filling defect
  /// Definition: An abnormality observed during ductography where the ductal system within the breast fills in an abnormal pattern. Ductography is an imaging exam in which a radio opaque contrast media is introduced into the ductal system of the breast through the nipple and images of the ductal system are obtained
  value111425('111425'),

  /// Display: Multiple filling defect
  /// Definition: During ductography an observation of more than one filling abnormality within the breast ductal system
  value111426('111426'),

  /// Display: Abrupt duct termination
  /// Definition: An abnormality observed during ductography where the ductal system within the breast terminates in an unusual fashion
  value111427('111427'),

  /// Display: Extravasation
  /// Definition: Abnormal flowage of contrast media within the breast noted on ductography
  value111428('111428'),

  /// Display: Duct narrowing
  /// Definition: An abnormality observed during ductography where the ductal system within the breast appears narrow
  value111429('111429'),

  /// Display: Cyst fill
  /// Definition: During ductography an observation of the contrast media filling a cyst within the breast
  value111430('111430'),

  /// Display: Instrument Approach
  /// Definition: The area and line within the anatomy through which a needle or instrument passes during an interventional procedure
  value111431('111431'),

  /// Display: Inferolateral to superomedial
  /// Definition: The line within the anatomy from the lower outer to the upper inner aspect; e.g. through which a needle or instrument passes in an interventional procedure
  value111432('111432'),

  /// Display: Inferomedial to superolateral
  /// Definition: The line within the anatomy from the lower inner to the upper outer aspect; e.g. through which a needle or instrument passes in an interventional procedure
  value111433('111433'),

  /// Display: Superolateral to inferomedial
  /// Definition: The line within the anatomy from the upper outer to the lower inner aspect; e.g. through which a needle or instrument passes in an interventional procedure
  value111434('111434'),

  /// Display: Superomedial to inferolateral
  /// Definition: The line within the anatomy from the upper inner to the lower outer aspect; e.g. through which a needle or instrument passes in an interventional procedure
  value111435('111435'),

  /// Display: Number of passes
  /// Definition: The number of times a biopsy instrument is passed through an area of interest
  value111436('111436'),

  /// Display: Number of specimens
  /// Definition: The number of biopsy specimens obtained from an interventional procedure
  value111437('111437'),

  /// Display: Needle in target
  /// Definition: An indicator of whether or not a biopsy or localizing needle in an interventional procedure is seen to be in the area of interest
  value111438('111438'),

  /// Display: Number of needles around target
  /// Definition: The number of localizing needles placed around the area of interest in an interventional procedure
  value111439('111439'),

  /// Display: Incision made
  /// Definition: An indicator of whether or not an incision was made in the anatomy during an interventional procedure
  value111440('111440'),

  /// Display: Microclip placed
  /// Definition: An indicator of whether or not a radio opaque microclip was placed in the anatomy during an interventional procedure
  value111441('111441'),

  /// Display: Confirmation of target
  /// Definition: An indicator of the degree of success of an interventional procedure
  value111442('111442'),

  /// Display: Target completely contained in the specimen
  /// Definition: An indicator that during an interventional procedure the area of interest was fully excised and is noted in the resultant biopsy specimen
  value111443('111443'),

  /// Display: Target partially obtained in the specimen
  /// Definition: An indicator that during an interventional procedure the area of interest was partially excised and is noted in the resultant biopsy specimen
  value111444('111444'),

  /// Display: Target not in the specimen
  /// Definition: An indicator that following an interventional procedure the area of interest is not seen in the resultant biopsy specimen
  value111445('111445'),

  /// Display: Calcifications seen in the core
  /// Definition: An indicator that following an interventional procedure the targeted calcifications are noted in the resultant biopsy specimen
  value111446('111446'),

  /// Display: Lesion completely removed
  /// Definition: An indicator that during an interventional procedure the area of interest was fully excised and is noted in the resultant biopsy specimen
  value111447('111447'),

  /// Display: Lesion partially removed
  /// Definition: An indicator that during an interventional procedure the area of interest was partially excised and is noted in the resultant biopsy specimen
  value111448('111448'),

  /// Display: Fluid obtained
  /// Definition: An indicator that during an interventional procedure fluid was successfully aspirated
  value111449('111449'),

  /// Display: Light brown color
  /// Definition: Color that is a light shade of brown
  value111450('111450'),

  /// Display: Dark red color
  /// Definition: Color that is a dark shade of red
  value111451('111451'),

  /// Display: Dark brown color
  /// Definition: Color that is a dark shade of brown
  value111452('111452'),

  /// Display: Bright red color
  /// Definition: Color that is a bright shade of red
  value111453('111453'),

  /// Display: Blood tinged color
  /// Definition: Color that is tinged with the color of blood
  value111454('111454'),

  /// Display: Occult blood test result
  /// Definition: An indicator of whether or not the fluid obtained during an interventional procedure contains red blood cells
  value111455('111455'),

  /// Display: Action on fluid
  /// Definition: An indicator of whether or not fluid during an interventional procedure was sent for cytological analysis or simply discarded
  value111456('111456'),

  /// Display: Sent for analysis
  /// Definition: An indicator that fluid obtained during an interventional procedure was sent to a laboratory for analysis
  value111457('111457'),

  /// Display: Discarded
  /// Definition: An indicator that fluid obtained during an interventional procedure was discarded
  value111458('111458'),

  /// Display: Mass with calcifications
  /// Definition: A radiopaque density noted during diagnostic imaging that has associated calcific densities
  value111459('111459'),

  /// Display: Complex cyst
  /// Definition: A fluid-filled sac with greater than normal characteristics
  value111460('111460'),

  /// Display: Intracystic lesion
  /// Definition: A tumor within a cyst
  value111461('111461'),

  /// Display: Solid mass
  /// Definition: A tumor or lesion
  value111462('111462'),

  /// Display: Supplementary Data for Intervention
  /// Definition: Supporting evidence for interpretation results of an interventional procedure
  value111463('111463'),

  /// Display: Procedure Modifier
  /// Definition: A descriptor that further qualifies or characterizes a type of procedure
  value111464('111464'),

  /// Display: Needle Gauge
  /// Definition: Needle size (diameter) characterization; e.g. of a biopsy needle
  value111465('111465'),

  /// Display: Severity of Complication
  /// Definition: An indicator of the gravity of a problem experienced by a patient, related to a procedure that was performed
  value111466('111466'),

  /// Display: Needle Length
  /// Definition: Distance from the hub or bushing to the tip of the needle
  value111467('111467'),

  /// Display: Pathology Results
  /// Definition: The collection of observations and findings from pathologic analysis
  value111468('111468'),

  /// Display: Sampling DateTime
  /// Definition: The date and time that the sample was collected from the patient
  value111469('111469'),

  /// Display: Uninvolved
  /// Definition: Indicates that the margin of the biopsy specimen was not involved with the tumor
  value111470('111470'),

  /// Display: Involved
  /// Definition: Indicates that the margin of the biopsy specimen was involved with the tumor
  value111471('111471'),

  /// Display: Nipple involved
  /// Definition: Indicates whether the nipple was involved in an interventional procedure or pathologic analysis
  value111472('111472'),

  /// Display: Number of nodes removed
  /// Definition: Indicates the number of lymph nodes removed
  value111473('111473'),

  /// Display: Number of nodes positive
  /// Definition: Indicates the number of lymph nodes removed that contain cancer cells
  value111474('111474'),

  /// Display: Estrogen receptor
  /// Definition: The result of a test for the presence of a protein that binds with estrogen
  value111475('111475'),

  /// Display: Progesterone receptor
  /// Definition: The result of a test for the presence of a protein that binds with progesterone
  value111476('111476'),

  /// Display: S Phase
  /// Definition: Indicates the percentage of cells in S phase. Cell division is defined by phases; the S phase is the stage during which DNA replicates
  value111477('111477'),

  /// Display: Non-bloody discharge (from nipple)
  /// Definition: The visible emission of non-bloody fluid from the nipple
  value111478('111478'),

  /// Display: Difficult physical/clinical examination
  /// Definition: The inability to discern normal versus abnormal breast tissue during palpation
  value111479('111479'),

  /// Display: Cancer elsewhere
  /// Definition: An indication that a patient has or had a malignant occurrence in an area of the body other than the breast
  value111480('111480'),

  /// Display: Saline implant
  /// Definition: A salt water filled prosthetic device implanted in the breast
  value111481('111481'),

  /// Display: Polyurethane implant
  /// Definition: A polymer based (plastic) prosthetic device implanted in the breast
  value111482('111482'),

  /// Display: Percutaneous silicone injection
  /// Definition: The introduction of polymeric organic silicon based material through the skin, as for breast augmentation or reconstruction
  value111483('111483'),

  /// Display: Combination implant
  /// Definition: A prosthetic device that contains more than one material implanted in the breast
  value111484('111484'),

  /// Display: Pre-pectoral implant
  /// Definition: A breast implant placed in front of the pectoralis major muscle
  value111485('111485'),

  /// Display: Retro-pectoral implant
  /// Definition: A breast implant placed behind the pectoralis major muscle
  value111486('111486'),

  /// Display: Mammographic (crosshair)
  /// Definition: Using X-Ray technique and a superimposed set of crossed lines for detection or placement
  value111487('111487'),

  /// Display: Mammographic (grid)
  /// Definition: Using X-Ray technique and a superimposed aperture for detection or placement
  value111488('111488'),

  /// Display: Palpation guided
  /// Definition: Using physical touch for detection or placement
  value111489('111489'),

  /// Display: Vacuum assisted
  /// Definition: The performance of a biopsy procedure using a vacuum device attached to the biopsy needle
  value111490('111490'),

  /// Display: Abnormal discharge
  /// Definition: Unusual or unexpected emission of fluid
  value111491('111491'),

  /// Display: No complications
  /// Definition: Having experienced no adverse medical conditions related to or resulting from an interventional procedure
  value111492('111492'),

  /// Display: Stage 0
  /// Definition: TNM grouping of tumor stage, from AJCC, where primary tumor is Tis, regional lymph node is N0, and distant metastasis is M0
  value111494('111494'),

  /// Display: Stage I
  /// Definition: TNM grouping of tumor stage, from AJCC, where primary tumor is T1, regional lymph node is N0, and distant metastasis is M0
  value111495('111495'),

  /// Display: Stage IIA
  /// Definition: TNM grouping of tumor stage, from AJCC, where primary tumor is T0 or T1, with regional lymph node N1 and distant metastasis is M0, or T2 with N0 and M0
  value111496('111496'),

  /// Display: Stage IIB
  /// Definition: TNM grouping of tumor stage, from AJCC, where primary tumor is T2, with regional lymph node N1 and distant metastasis is M0, or T3 with N0 and M0
  value111497('111497'),

  /// Display: Stage IIIA
  /// Definition: TNM grouping of tumor stage, from AJCC, where primary tumor is T0, T1 or T2, with regional lymph node N2 and distant metastasis is M0, or T3 with N1 or N2 and M0
  value111498('111498'),

  /// Display: Stage IIIB
  /// Definition: TNM grouping of tumor stage, from AJCC, where primary tumor is T4, regional lymph node is N0, N1 or N2, and distant metastasis is M0
  value111499('111499'),

  /// Display: Stage IIIC
  /// Definition: TNM grouping of tumor stage, from AJCC, where primary tumor is any T value, regional lymph node is N3, and distant metastasis is M0
  value111500('111500'),

  /// Display: Stage IV
  /// Definition: TNM grouping of tumor stage, from AJCC, where primary tumor is any T value, regional lymph node is any N value, and distant metastasis is M1
  value111501('111501'),

  /// Display: Bloom-Richardson Grade
  /// Definition: Histologic tumor grade (sometimes called Scarff-Bloom-Richardson grade) is based on the arrangement of the cells in relation to each other -- whether they form tubules, how closely they resemble normal breast cells (nuclear grade) and how many of the cancer cells are in the process of dividing (mitotic count)
  value111502('111502'),

  /// Display: Normal implants
  /// Definition: Breast prosthetic devices are intact, not leaking, and are in a normal shape and form
  value111503('111503'),

  /// Display: Asymmetric implants
  /// Definition: Breast prosthetic devices are not symmetric, equal, corresponding in form, or are in one breast (unilateral)
  value111504('111504'),

  /// Display: Calcified implant
  /// Definition: Fibrous or calcific contracture of the tissue capsule that forms around a breast prosthetic device
  value111505('111505'),

  /// Display: Distorted implant
  /// Definition: Breast prosthetic device is twisted out of normal shape or form
  value111506('111506'),

  /// Display: Silicone-laden lymph nodes
  /// Definition: Silicone from breast prosthetic device found in lymphatic tissue
  value111507('111507'),

  /// Display: Free silicone
  /// Definition: Silicone found in breast tissue outside of the prosthetic capsule or implant membrane
  value111508('111508'),

  /// Display: Herniated implant
  /// Definition: Protrusion of part of the structure normally encapsulating the content of the breast prosthetic device
  value111509('111509'),

  /// Display: Explantation
  /// Definition: Evidence of removal of a breast prosthetic device
  value111510('111510'),

  /// Display: Relevant Patient Information for Breast Imaging
  /// Definition: Historical patient health information of interest to the breast health clinician
  value111511('111511'),

  /// Display: Medication History
  /// Definition: Information regarding usage by the patient of certain medications, such as hormones
  value111512('111512'),

  /// Display: Relevant Previous Procedures
  /// Definition: Interventional or non-interventional procedures previously performed on the patient, such as breast biopsies
  value111513('111513'),

  /// Display: Relevant Indicated Problems
  /// Definition: Abnormal conditions experienced by the patient that serve as the reason for performing a procedure, such as a breast exam
  value111514('111514'),

  /// Display: Relevant Risk Factors
  /// Definition: Personal, familial, and other health factors that may indicate an increase in the patient's chances of developing a health condition or disease, such as breast cancer
  value111515('111515'),

  /// Display: Medication Type
  /// Definition: A classification of a medicinal substance, such as hormonal contraceptive or antibiotic
  value111516('111516'),

  /// Display: Relevant Patient Information
  /// Definition: Historical patient health information for general purpose use
  value111517('111517'),

  /// Display: Age when first menstrual period occurred
  /// Definition: The age of the patient at the first occurrence of menses
  value111518('111518'),

  /// Display: Age at First Full Term Pregnancy
  /// Definition: The age of the patient at the time of her first full term pregnancy
  value111519('111519'),

  /// Display: Age at Menopause
  /// Definition: The age of the patient at the cessation of menses
  value111520('111520'),

  /// Display: Age when hysterectomy performed
  /// Definition: The age of the patient at the time her uterus was removed
  value111521('111521'),

  /// Display: Age when left ovary removed
  /// Definition: The age of the patient at the time she had her left ovary removed
  value111522('111522'),

  /// Display: Age when right ovary removed
  /// Definition: The age of the patient at the time she had her right ovary removed
  value111523('111523'),

  /// Display: Age Started
  /// Definition: The age of a patient on the first occurrence of an event, such as the first use of a medication
  value111524('111524'),

  /// Display: Age Ended
  /// Definition: The age of a patient on the last occurrence of an event, such as the last use of a medication
  value111525('111525'),

  /// Display: DateTime Started
  /// Definition: The date and time of the first occurrence of an event, such as the first use of a medication
  value111526('111526'),

  /// Display: DateTime Ended
  /// Definition: The date and time of the last occurrence of an event, such as the last use of a medication
  value111527('111527'),

  /// Display: Ongoing
  /// Definition: An indicator of whether an event is still in progress, such as the use of a medication or substance, or environmental exposure
  value111528('111528'),

  /// Display: Brand Name
  /// Definition: Product name of a device or substance, such as medication, to identify it as the product of a single firm or manufacturer
  value111529('111529'),

  /// Display: Risk Factor modifier
  /// Definition: A descriptor that further qualifies or characterizes a risk factor
  value111530('111530'),

  /// Display: Previous Procedure
  /// Definition: A prior non-interventional exam or interventional procedure performed on a patient
  value111531('111531'),

  /// Display: Pregnancy Status
  /// Definition: Describes the pregnancy state of a referenced subject
  value111532('111532'),

  /// Display: Indicated Problem
  /// Definition: A symptom experienced by a patient that is used as the reason for performing an exam or procedure
  value111533('111533'),

  /// Display: Role of person reporting
  /// Definition: The function of the individual who is reporting information on a patient, which could be a specific health care related profession, the patient him/herself, or a relative or friend
  value111534('111534'),

  /// Display: DateTime problem observed
  /// Definition: The date and time that a symptom was noted
  value111535('111535'),

  /// Display: DateTime of last evaluation
  /// Definition: The date and time of the most recent evaluation of an indicated problem
  value111536('111536'),

  /// Display: Family Member with Risk Factor
  /// Definition: A patient's biological relative who exhibits a health factor that may indicate an increase in the patient's chances of developing a particular disease or medical problem
  value111537('111537'),

  /// Display: Age at Occurrence
  /// Definition: The age at which an individual experienced a specific event, such as breast cancer
  value111538('111538'),

  /// Display: Menopausal phase
  /// Definition: The current stage of an individual in her gynecological development
  value111539('111539'),

  /// Display: Side of Family
  /// Definition: An indicator of paternal or maternal relationship
  value111540('111540'),

  /// Display: Maternal
  /// Definition: Relating to biological female parentage
  value111541('111541'),

  /// Display: Unspecified gynecological hormone
  /// Definition: A gynecological hormone for which the specific type is not specified; e.g. contraceptive, estrogen, Tamoxifen
  value111542('111542'),

  /// Display: Breast feeding history
  /// Definition: An indicator of whether or not a patient ever provided breast milk to her offspring
  value111543('111543'),

  /// Display: Average breast feeding period
  /// Definition: The average length of time that a patient provided breast milk to her offspring
  value111544('111544'),

  /// Display: Substance Use History
  /// Definition: Information regarding usage by the patient of certain legal or illicit substances
  value111545('111545'),

  /// Display: Used Substance Type
  /// Definition: A classification of a substance, such as alcohol or a legal or illicit drug
  value111546('111546'),

  /// Display: Environmental Exposure History
  /// Definition: Information regarding exposure of the patient to potentially harmful environmental factors
  value111547('111547'),

  /// Display: Environmental Factor
  /// Definition: A classification of a potentially harmful substance or gas in a subject's environment, such as asbestos, lead, or carcinogens
  value111548('111548'),

  /// Display: Previous Reports
  /// Definition: Previous Structured Reports that could have relevant information for a current imaging service request
  value111549('111549'),

  /// Display: Personal breast cancer history
  /// Definition: An indication that a patient has had a previous malignancy of the breast
  value111550('111550'),

  /// Display: History of endometrial cancer
  /// Definition: Indicates a previous occurrence of cancer of the lining of the uterus
  value111551('111551'),

  /// Display: History of ovarian cancer
  /// Definition: Indicates a previous occurrence of cancer of the lining of the ovary
  value111552('111552'),

  /// Display: History of high risk lesion on previous biopsy
  /// Definition: Indicates a prior diagnosis of pre-cancerous cells or tissue removed for pathologic evaluation
  value111553('111553'),

  /// Display: Post menopausal patient
  /// Definition: A female patient whose menstrual periods have ceased
  value111554('111554'),

  /// Display: Late child bearing (after 30)
  /// Definition: A female patient whose first child was born after the patient was 30 years old
  value111555('111555'),

  /// Display: BRCA1 breast cancer gene
  /// Definition: The first level genetic marker indicating risk for breast cancer
  value111556('111556'),

  /// Display: BRCA2 breast cancer gene
  /// Definition: The second level genetic marker indicating risk for breast cancer
  value111557('111557'),

  /// Display: BRCA3 breast cancer gene
  /// Definition: The third level genetic marker indicating risk for breast cancer
  value111558('111558'),

  /// Display: Weak family history of breast cancer
  /// Definition: A patient's biological aunt, grandmother, or female cousin was diagnosed with breast cancer. Definition from BI-RADS®
  value111559('111559'),

  /// Display: Intermediate family history of breast cancer
  /// Definition: A patient's biological mother or sister was diagnosed with breast cancer after they had gone through menopause. Definition from BI-RADS®
  value111560('111560'),

  /// Display: Very strong family history of breast cancer
  /// Definition: A patient's biological mother or sister was diagnosed with breast cancer before they had gone through menopause, or more than one of the patient's first-degree relatives (biological mother or sister) were diagnosed with breast cancer after they had gone through menopause. Definition from BI-RADS®
  value111561('111561'),

  /// Display: Family history of prostate cancer
  /// Definition: Previous diagnosis of a malignancy of the prostate gland in a biological relative
  value111562('111562'),

  /// Display: Family history unknown
  /// Definition: The health record of a patient's biological relatives is not known
  value111563('111563'),

  /// Display: Nipple discharge cytology
  /// Definition: The study of cells obtained from fluid emitted from the breast
  value111564('111564'),

  /// Display: Uterine malformations
  /// Definition: A developmental abnormality resulting in an abnormal shape of the uterus
  value111565('111565'),

  /// Display: Spontaneous Abortion
  /// Definition: A naturally occurring premature expulsion from the uterus of the products of conception - the embryo or a nonviable fetus
  value111566('111566'),

  /// Display: Gynecologic condition
  /// Definition: An ailment/abnormality or state of the female reproductive tract
  value111567('111567'),

  /// Display: Gynecologic surgery
  /// Definition: A surgical operation performed on any portion of the female reproductive tract
  value111568('111568'),

  /// Display: Previous LBW or IUGR birth
  /// Definition: Prior pregnancy with a low birth weight baby or a fetus with Intrauterine Growth Restriction or Retardation
  value111569('111569'),

  /// Display: Previous fetal malformation/syndrome
  /// Definition: History of at least one prior pregnancy with fetal anatomic abnormality(s)
  value111570('111570'),

  /// Display: Previous RH negative or blood dyscrasia at birth
  /// Definition: History of delivering a Rhesis Isoimmunization affected child(ren) or a child(ren) with another blood disorder
  value111571('111571'),

  /// Display: History of multiple fetuses
  /// Definition: History of at least one pregnancy that contained more than one fetus; e.g. twins, triplets, etc.
  value111572('111572'),

  /// Display: Current pregnancy, known or suspected malformations/syndromes
  /// Definition: At least one fetus of this pregnancy has an anatomic abnormality(s) that is known to exist, or a "marker" is present that suggests the abnormality(s) may be present
  value111573('111573'),

  /// Display: Family history, fetal malformation/syndrome
  /// Definition: Biological relatives have previously conceived a fetus with an anatomic abnormality(s)
  value111574('111574'),

  /// Display: High
  /// Definition: A subjective descriptor for an elevated amount of exposure, use, or dosage, incurring high risk of adverse effects
  value111575('111575'),

  /// Display: Medium
  /// Definition: A subjective descriptor for a moderate amount of exposure, use, or dosage, incurring medium risk of adverse effects
  value111576('111576'),

  /// Display: Low
  /// Definition: A subjective descriptor for a limited amount of exposure, use, or dosage, incurring low risk of adverse effects
  value111577('111577'),

  /// Display: Dose frequency
  /// Definition: A measurement of the rate of occurrence of which a patient takes a certain medication
  value111578('111578'),

  /// Display: Rate of exposure
  /// Definition: The quantity per unit of time that a patient was or is being exposed to an environmental irritant
  value111579('111579'),

  /// Display: Volume of use
  /// Definition: The quantity per unit of time that a medication or substance was or is being used
  value111580('111580'),

  /// Display: Relative dose amount
  /// Definition: A qualitative descriptor for the amount of a medication that was or is being taken
  value111581('111581'),

  /// Display: Relative amount of exposure
  /// Definition: A qualitative descriptor for the amount of present or past exposure to an environmental irritant
  value111582('111582'),

  /// Display: Relative amount of use
  /// Definition: A qualitative descriptor for the amount of a medication or substance that was or is being used
  value111583('111583'),

  /// Display: Relative dose frequency
  /// Definition: A qualitative descriptor for the frequency with which a medication was or is being taken
  value111584('111584'),

  /// Display: Relative frequency of exposure
  /// Definition: A qualitative descriptor for the frequency of present or past exposure to an environmental irritant
  value111585('111585'),

  /// Display: Relative frequency of use
  /// Definition: A qualitative descriptor for the frequency with which a medication or substance was or is being used
  value111586('111586'),

  /// Display: No known exposure
  /// Definition: Patient is not known to have been exposed to or used the substance or medication
  value111587('111587'),

  /// Display: Recall for technical reasons
  /// Definition: Patient returns for additional images to improve the quality of the most recent exam
  value111590('111590'),

  /// Display: Recall for imaging findings
  /// Definition: Patient returns for additional images to clarify findings from the most recent exam
  value111591('111591'),

  /// Display: Recall for patient symptoms/ clinical findings
  /// Definition: Patient returns for additional images to clarify symptoms or signs reported by the patient or a healthcare professional at the time of the most recent exam
  value111592('111592'),

  /// Display: LBW or IUGR
  /// Definition: Number of births with low birth weight or intrauterine growth restriction
  value111593('111593'),

  /// Display: Green filter
  /// Definition: Filter that transmits green light while blocking the other colors, typically centered at 510-540 nm
  value111601('111601'),

  /// Display: Red filter
  /// Definition: Filter that transmits red light while blocking the other colors, typically centered at 630-680 nm
  value111602('111602'),

  /// Display: Blue filter
  /// Definition: Filter that transmits blue while blocking the other colors, typically centered at 460-480 nm
  value111603('111603'),

  /// Display: Yellow-green filter
  /// Definition: A filter of 560nm that is used for retinal imaging and can provide good contrast and good visibility of the retinal vasculature
  value111604('111604'),

  /// Display: Blue-green filter
  /// Definition: A filter of 490nm that is used for retinal imaging because of excessive scattering of some retinal structures at very short wavelengths
  value111605('111605'),

  /// Display: Infrared filter
  /// Definition: Filter that transmits the infrared spectrum, which is light that lies outside of the visible spectrum, with wavelengths longer than those of red light, while blocking visible light
  value111606('111606'),

  /// Display: Polarizing filter
  /// Definition: A filter that reduces reflections from non-metallic surfaces such as glass or water by blocking light waves that are vibrating at selected angles to the filter
  value111607('111607'),

  /// Display: No filter
  /// Definition: No filter used
  value111609('111609'),

  /// Display: Field 1 for Joslin 3 field
  /// Definition: Joslin NM-1 is a 45 degree field focused centrally between the temporal margin of optic disc and the center of the macula: Center the camera on the papillomacular bundle midway between the temporal margin of the optic disc and the center of the macula. The horizontal centerline of the image should pass directly through the center of the disc
  value111621('111621'),

  /// Display: Field 2 for Joslin 3 field
  /// Definition: Joslin NM-2 is a 45 degree field focused superior temporal to the optic disc: Center the camera laterally approximately one-half disc diameter temporal to the center of the macula. The lower edge of the field is tangent to a horizontal line passing through the upper edge of the optic disc. The image is taken temporal to the macula but includes more retinal nasal and superior to the macula than standard field 2
  value111622('111622'),

  /// Display: Field 3 for Joslin 3 field
  /// Definition: Joslin NM-3 is a 45 degree field focused nasal to the optic disc: This field is nasal to the optic disc and may include part of the optic disc. The horizontal centerline of the image should pass tangent to the lower edge of the optic disc
  value111623('111623'),

  /// Display: Diffuse direct illumination
  /// Definition: A broad or "soft" light supplied from a single source
  value111625('111625'),

  /// Display: Scheimpflug Camera
  /// Definition: A slit reflected light microscope, which has the ability to form an image of the back scattered light from the eye in a sagittal plane. Scheimpflug cameras are able to achieve a wide depth of focus by employing the "Sheimpflug principle" where the lens and image planes are not parallel with each other. Rotating Sheimplug cameras are able to generate three-dimensional images and calculate measurements of the anterior chamber of the eye
  value111626('111626'),

  /// Display: Scotopic light
  /// Definition: Lighting condition approximately 0.04 lux
  value111627('111627'),

  /// Display: Mesopic light
  /// Definition: Lighting condition approximately 4 lux
  value111628('111628'),

  /// Display: Photopic light
  /// Definition: Lighting condition approximately 40 lux
  value111629('111629'),

  /// Display: Dynamic light
  /// Definition: Acquisition preceded by intense light
  value111630('111630'),

  /// Display: Average Glandular Dose
  /// Definition: Calculated from values of entrance exposure in air, the X-Ray beam quality (half-value layer), and compressed breast thickness, is the energy deposited per unit mass of glandular tissue averaged over all the glandular tissue in the breast
  value111631('111631'),

  /// Display: Anode Target Material
  /// Definition: The primary material in the anode of an X-Ray source
  value111632('111632'),

  /// Display: Compression Thickness
  /// Definition: The average thickness of the body part examined when compressed, if compression has been applied during X-Ray exposure
  value111633('111633'),

  /// Display: Half Value Layer
  /// Definition: Thickness of Aluminum required to reduce the X-Ray output at the patient entrance surface by a factor of two
  value111634('111634'),

  /// Display: X-Ray Grid
  /// Definition: An anti-scatter device based on radiation absorbing strips above the detector; e.g. in the patient support
  value111635('111635'),

  /// Display: Entrance Exposure at RP
  /// Definition: Exposure measurement in air at the reference point that does not include back scatter, according to MQCM 1999
  value111636('111636'),

  /// Display: Accumulated Average Glandular Dose
  /// Definition: Average Glandular Dose to a single breast accumulated over multiple images
  value111637('111637'),

  /// Display: Patient Equivalent Thickness
  /// Definition: Value of the control variable used to parametrize the Automatic Exposure Control (AEC) closed loop; e.g. "Water Value"
  value111638('111638'),

  /// Display: Fixed grid
  /// Definition: An X-Ray Grid that does not move during exposure
  value111641('111641'),

  /// Display: Focused grid
  /// Definition: An X-Ray Grid with radiation absorbing strips that are focused toward the focal spot, to eliminate grid cutoff
  value111642('111642'),

  /// Display: Reciprocating grid
  /// Definition: An X-Ray Grid that is designed to move during exposure, to eliminate the appearance of grid lines on the image
  value111643('111643'),

  /// Display: Parallel grid
  /// Definition: An X-Ray Grid with radiation absorbing strips that are parallel to each other and that is used only with long source to image distances
  value111644('111644'),

  /// Display: Crossed grid
  /// Definition: An X-Ray Grid with crossed radiation absorbing strips used for more complete cleanup of scatter radiation
  value111645('111645'),

  /// Display: No grid
  /// Definition: No X-Ray Grid was used due to low scatter conditions
  value111646('111646'),

  /// Display: Spectacle Prescription Report
  /// Definition: The spectacle prescription for a patient
  value111671('111671'),

  /// Display: Add Near
  /// Definition: Refractive measurements of the eye to correct for inability to focus at near while wearing the distance prescription
  value111672('111672'),

  /// Display: Add Intermediate
  /// Definition: Refractive measurements of the eye to correct for inability to focus at intermediate distance while wearing the distance prescription
  value111673('111673'),

  /// Display: Add Other
  /// Definition: Refractive measurements of the eye to correct for inability to focus at the specified distance while wearing the distance prescription
  value111674('111674'),

  /// Display: Horizontal Prism Power
  /// Definition: The power of a prism to bend light in the horizontal direction, in prism diopters
  value111675('111675'),

  /// Display: Horizontal Prism Base
  /// Definition: Direction of the base of a horizontal prism -- either in (toward the nose), or out (away from the nose)
  value111676('111676'),

  /// Display: Vertical Prism Power
  /// Definition: The power of a prism to bend light in the vertical direction, in prism diopters
  value111677('111677'),

  /// Display: Vertical Prism Base
  /// Definition: Direction of the base of a vertical prism -- either up, or down
  value111678('111678'),

  /// Display: Distance Pupillary Distance
  /// Definition: Distance in mm between the pupils when the patient's object of regard is in the distance
  value111679('111679'),

  /// Display: Near Pupillary Distance
  /// Definition: Distance in mm between the pupils when the patient's object of regard is at near
  value111680('111680'),

  /// Display: Autorefraction Visual Acuity
  /// Definition: A patient's vision with the correction measured by an autorefractor in place
  value111685('111685'),

  /// Display: Habitual Visual Acuity
  /// Definition: A patient's vision with whichever vision correction the patient customarily wears
  value111686('111686'),

  /// Display: Prescription Visual Acuity
  /// Definition: A patient's vision with the final spectacle prescription in place
  value111687('111687'),

  /// Display: Right Eye Rx
  /// Definition: The spectacle prescription for the right eye
  value111688('111688'),

  /// Display: Left Eye Rx
  /// Definition: The spectacle prescription for the left eye
  value111689('111689'),

  /// Display: Macular Grid Thickness and Volume Report
  /// Definition: A macular grid thickness and volume report for a patient. The macular grid is an analytic tool described in PS3.1
  value111690('111690'),

  /// Display: Number of Images Used for Macular Measurements
  /// Definition: Number of images used for the macular grid measurement
  value111691('111691'),

  /// Display: Number of Samples Used per Image
  /// Definition: Number of samples used per Image for analysis
  value111692('111692'),

  /// Display: Analysis Quality Rating
  /// Definition: A numeric rating of the quality of the entire analysis with respect to grading and diagnostic purposes. Higher numbers indicate greater quality
  value111693('111693'),

  /// Display: Image Set Quality Rating
  /// Definition: A numeric rating of the quality of an entire image set with respect to grading and diagnostic purposes. Higher numbers indicate greater quality
  value111694('111694'),

  /// Display: Interfering Tears or Drops
  /// Definition: Tear film or drops affecting test quality
  value111695('111695'),

  /// Display: Visual Fixation Quality During Acquisition
  /// Definition: The assessment of the centricity and persistence of the visual fixation (direction of gaze) during the acquisition
  value111696('111696'),

  /// Display: Visual Fixation Quality Problem
  /// Definition: The reason why the patient's visual fixation was not steady or was indeterminate
  value111697('111697'),

  /// Display: Ophthalmic Macular Grid Problem
  /// Definition: The reason why the macular grid measurements may be questionable
  value111698('111698'),

  /// Display: Specimen Container Identifier
  /// Definition: Identifier of container (box, block, microscope slide, etc.) for the specimen under observation
  value111700('111700'),

  /// Display: Processing type
  /// Definition: Type of processing that tissue specimen underwent
  value111701('111701'),

  /// Display: DateTime of processing
  /// Definition: Date and time of processing step
  value111702('111702'),

  /// Display: Processing step description
  /// Definition: Description of the individual step in the tissue processing sequence
  value111703('111703'),

  /// Display: Sampling Method
  /// Definition: Method of sampling used to derive specimen from its parent
  value111704('111704'),

  /// Display: Parent Specimen Identifier
  /// Definition: Identifier of the parent specimen that gave rise to the current specimen
  value111705('111705'),

  /// Display: Issuer of Parent Specimen Identifier
  /// Definition: Assigning authority for parent specimen's identifier
  value111706('111706'),

  /// Display: Parent specimen type
  /// Definition: Parent specimen type that gave rise to current specimen
  value111707('111707'),

  /// Display: Position Frame of Reference
  /// Definition: Description of coordinate system and origin reference point on parent specimen, or parent specimen container, or image used for localizing the sampling site or location within container or image
  value111708('111708'),

  /// Display: Location of sampling site
  /// Definition: Reference to image of parent specimen localizing the sampling site; may include referenced Presentation State object
  value111709('111709'),

  /// Display: Location of sampling site X offset
  /// Definition: Location of sampling site of specimen (nominal center) relative to the Position Frame of Reference in the X dimension
  value111710('111710'),

  /// Display: Location of sampling site Y offset
  /// Definition: Location of sampling site of specimen (nominal center) relative to the Position Frame of Reference in the Y dimension
  value111711('111711'),

  /// Display: Location of sampling site Z offset
  /// Definition: Location of sampling site of specimen (nominal center) relative to the Position Frame of Reference in the Z dimension
  value111712('111712'),

  /// Display: Location of Specimen
  /// Definition: Description of specimen location, either in absolute terms or relative to the Position Frame of Reference
  value111718('111718'),

  /// Display: Location of Specimen X offset
  /// Definition: Location of specimen (nominal center) relative to the Position Frame of Reference in the X dimension
  value111719('111719'),

  /// Display: Location of Specimen Y offset
  /// Definition: Location of specimen (nominal center) relative to the Position Frame of Reference in the Y dimension
  value111720('111720'),

  /// Display: Location of Specimen Z offset
  /// Definition: Location of specimen (nominal center) relative to the Position Frame of Reference in the Z dimension
  value111721('111721'),

  /// Display: Visual Marking of Specimen
  /// Definition: Description of visual distinguishing identifiers; e.g. ink, or a particular shape of the specimen
  value111723('111723'),

  /// Display: Issuer of Specimen Identifier
  /// Definition: Assigning authority for specimen identifier
  value111724('111724'),

  /// Display: Dissection with entire specimen submission
  /// Definition: Dissection of specimen with submission of all its sections for further processing or examination
  value111726('111726'),

  /// Display: Dissection with representative sections submission
  /// Definition: Dissection of specimen with submission of representative sections for further processing or examination
  value111727('111727'),

  /// Display: Specimen storage
  /// Definition: A workflow step, during which tissue specimens are stored in a climate-controlled environment
  value111729('111729'),

  /// Display: Transmission illumination
  /// Definition: Transmission illumination method for specimen microscopy
  value111741('111741'),

  /// Display: Reflection illumination
  /// Definition: Reflection illumination method for specimen microscopy
  value111742('111742'),

  /// Display: Epifluorescence illumination
  /// Definition: Epifluorescence illumination method for specimen microscopy
  value111743('111743'),

  /// Display: Brightfield illumination
  /// Definition: Brightfield illumination method for specimen microscopy
  value111744('111744'),

  /// Display: Darkfield illumination
  /// Definition: Darkfield illumination method for specimen microscopy
  value111745('111745'),

  /// Display: Oblique illumination
  /// Definition: Oblique illumination method for specimen microscopy
  value111746('111746'),

  /// Display: Phase contrast illumination
  /// Definition: Phase contrast illumination method for specimen microscopy
  value111747('111747'),

  /// Display: Differential interference contrast
  /// Definition: Differential interference contrast method for specimen microscopy
  value111748('111748'),

  /// Display: Total internal reflection fluorescence
  /// Definition: Total internal reflection fluorescence method for specimen microscopy
  value111749('111749'),

  /// Display: Ultrasound Contact
  /// Definition: A method of obtaining ophthalmic axial measurements that uses ultrasound, and that requires applanation of the cornea
  value111750('111750'),

  /// Display: Ultrasound Immersion
  /// Definition: A method of obtaining ophthalmic axial measurements that uses ultrasound, and that requires immersion of the patient's eye in fluid as he lies in a supine position
  value111751('111751'),

  /// Display: Optical
  /// Definition: A method of obtaining ophthalmic axial measurements that uses light
  value111752('111752'),

  /// Display: Manual Keratometry
  /// Definition: Measurements taken of the corneal curvature using a manual keratometer
  value111753('111753'),

  /// Display: Auto Keratometry
  /// Definition: Measurements taken of the corneal curvature using an automated keratometer
  value111754('111754'),

  /// Display: Simulated Keratometry
  /// Definition: Simulated Keratometry measurements derived from corneal topography
  value111755('111755'),

  /// Display: Equivalent K-reading
  /// Definition: Corneal power measurements using Scheimpflug camera
  value111756('111756'),

  /// Display: Haigis
  /// Definition: The Haigis IOL calculation formula. Haigis W, Lege B, Miller N, Schneider B. Comparison of immersion ultrasound biometry and partial coherence interferometry for intraocular lens calculation according to Haigis. Graefes Arch Clin Exp Ophthalmol 2000;238:765-73
  value111760('111760'),

  /// Display: Haigis-L
  /// Definition: The Haigis-L IOL calculation formula. Haigis W. Intraocular lens calculation after refractive surgery for myopia: Haigis-L formula. J Cataract Refract Surg. 2008 Oct;34(10):1658-63
  value111761('111761'),

  /// Display: Holladay 1
  /// Definition: The Holladay 1 IOL calculation formula. Holladay JT, Prager TC, Chandler TY, Musgrove KH, Lewis JW, Ruiz RS. A three-part system for refining intraocular lens power calculations. J Cataract Refract Surg. 1988; 14:17-24
  value111762('111762'),

  /// Display: Holladay 2
  /// Definition: The Holladay 2 IOL calculation formula
  value111763('111763'),

  /// Display: Hoffer Q
  /// Definition: The Hoffer Q IOL calculation formula. Hoffer KJ. The Hoffer Q formula: a comparison of theoretic and regression formulas. J Cataract Refract Surg 1993;19:700-12. Errata. J Cataract Refract Surg 1994;20:677 and 2007;33:2-3
  value111764('111764'),

  /// Display: Olsen
  /// Definition: The Olsen IOL calculation formula. Olsen T. Calculation of intraocular lens power: a review. Acta Ophthalmol. Scand. 2007: 85: 472-485
  value111765('111765'),

  /// Display: SRKII
  /// Definition: The SRKII IOL calculation formula. Sanders DR, Retzlaff J, Kraff MC. Comparison of the SRK II formula and other second generation formulas. J Cataract Refract Surg. 1988 Mar;14(2):136-41
  value111766('111766'),

  /// Display: SRK-T
  /// Definition: The SRK-T IOL calculation formula. Retzlaff JA, Sanders DR, Kraff MC. Development of the SRK/T intraocular lens implant power calculation formula. J Cataract Refract Surg 1990;16:333-40. Erratum 1990;16:528
  value111767('111767'),

  /// Display: ACD Constant
  /// Definition: The "ACD Constant" used in IOL calculation
  value111768('111768'),

  /// Display: Haigis a0
  /// Definition: The "Haigis a0" constant used in IOL calculation
  value111769('111769'),

  /// Display: Haigis a1
  /// Definition: The "Haigis a1" constant used in IOL calculation
  value111770('111770'),

  /// Display: Haigis a2
  /// Definition: The "Haigis a2" constant used in IOL calculation
  value111771('111771'),

  /// Display: Hoffer pACD Constant
  /// Definition: The "Hoffer pACD Constant" used in IOL calculation
  value111772('111772'),

  /// Display: Surgeon Factor
  /// Definition: The "Surgeon Factor" constant used in IOL calculation
  value111773('111773'),

  /// Display: Front Of Cornea To Front Of Lens
  /// Definition: Anterior chamber depth defined as the front of the cornea to the front of the lens
  value111776('111776'),

  /// Display: Back Of Cornea To Front Of Lens
  /// Definition: Anterior chamber depth defined as the back of the cornea to the front of the lens
  value111777('111777'),

  /// Display: Single or Anterior Lens
  /// Definition: Refers to the anterior lens when there are two lenses in the eye. The distance, in mm, from the anterior surface of the lens to the posterior surface of the lens
  value111778('111778'),

  /// Display: Posterior Lens
  /// Definition: Refers to the posterior lens when there are two lenses in the eye. The distance, in mm, from the anterior surface of the lens to the posterior surface of the lens
  value111779('111779'),

  /// Display: Measurement From This Device
  /// Definition: Value obtained from measurements taken by the device creating this SOP Instance
  value111780('111780'),

  /// Display: External Data Source
  /// Definition: Value obtained by data transfer from an external source - not from measurements taken by the device providing the value
  value111781('111781'),

  /// Display: Axial Measurements SOP Instance
  /// Definition: Axial Measurements DICOM SOP Instance
  value111782('111782'),

  /// Display: Refractive Measurements SOP Instance
  /// Definition: Refractive Measurements DICOM SOP Instance
  value111783('111783'),

  /// Display: Standard Deviation of measurements used
  /// Definition: Standard Deviation is a simple measure of the variability of a data set
  value111786('111786'),

  /// Display: Signal to Noise Ratio
  /// Definition: Signal to Noise Ratio of the data samples taken to create a measurement
  value111787('111787'),

  /// Display: Spherical projection
  /// Definition: Projection from 2D image pixels to 3D Cartesian coordinates based on a spherical mathematical model
  value111791('111791'),

  /// Display: Surface contour mapping
  /// Definition: Mapping from 2D image pixels to 3D Cartesian coordinates based on measurements of the retinal surface; e.g. of the retina, derived via a measurement technology such as Optical Coherence Tomography, Ultrasound etc.
  value111792('111792'),

  /// Display: Visual Field 24-2 Test Pattern
  /// Definition: Test pattern, nominally covering an area within 24° of fixation. Consists of 54 test points a minimum of 3° from each meridian and placed 6° apart. The "-2" distinguishes this from another 24° pattern (no longer supported)
  value111800('111800'),

  /// Display: Visual Field 10-2 Test Pattern
  /// Definition: Test pattern, nominally covering an area within 10° of fixation. Consists of 68 test points a minimum of 1° from each meridian and placed 2° apart. The "-2" in this case indicates its point layout to be similar to the 30-2 and 24-2
  value111801('111801'),

  /// Display: Visual Field 30-2 Test Pattern
  /// Definition: Test pattern consisting of test point locations within 30° of fixation. Consists of 76 test points a minimum of 3° from each meridian and placed 6° apart. The "-2" distinguishes this from another 30° pattern (no longer supported)
  value111802('111802'),

  /// Display: Visual Field 60-4 Test Pattern
  /// Definition: Test pattern consisting of 60 test point locations between 30° and 60° of fixation a minimum of 6° from each meridian and placed 12° apart. The "-4" distinguishes this from a similar 60° pattern having 4 additional points
  value111803('111803'),

  /// Display: Visual Field Macula Test Pattern
  /// Definition: Test pattern consisting of 16 test point locations within 10° of fixation a minimum of 1° from each meridian and placed 2° apart
  value111804('111804'),

  /// Display: Visual Field Central 40 Point Test Pattern
  /// Definition: Test pattern consisting of 40 test point locations within 30° of fixation that spread out radially from fixation
  value111805('111805'),

  /// Display: Visual Field Central 76 Point Test Pattern
  /// Definition: Test pattern consisting of 76 test point locations within 30° of fixation a minimum of 3° from each meridian and placed 6° apart
  value111806('111806'),

  /// Display: Visual Field Peripheral 60 Point Test Pattern
  /// Definition: Test pattern consisting of 60 test point locations between 30° and 60° of fixation a minimum of 6° from each meridian and placed 12° apart
  value111807('111807'),

  /// Display: Visual Field Full Field 81 Point Test Pattern
  /// Definition: Test pattern consisting of 81 test point locations within 60° of fixation that spread out radially from fixation
  value111808('111808'),

  /// Display: Visual Field Full Field 120 Point Test Pattern
  /// Definition: Test pattern consisting of 120 test point locations within 60° of fixation that spread out radially from fixation, concentrated in the nasal hemisphere
  value111809('111809'),

  /// Display: Visual Field G Test Pattern
  /// Definition: Test pattern for Glaucoma and general visual field assessment with 59 test locations of which 16 test locations are in the macular area (up to 10° eccentricity) and where the density of test location is reduced with eccentricity. The test can be extended with the inclusion of 14 test locations between 30° and 60° eccentricity, 6 of which are located at the nasal step
  value111810('111810'),

  /// Display: Visual Field M Test Pattern
  /// Definition: Test pattern for the macular area. Orthogonal test pattern with 0.7° spacing within the central 4° of eccentricity and reduced density of test locations between 4 and 10, 5° of eccentricity. 81 test locations over all. The test can be extended to include the test locations of the Visual Field G Test Pattern between 10, 5° and 60°
  value111811('111811'),

  /// Display: Visual Field 07 Test Pattern
  /// Definition: Full field test pattern with 48 test locations from 0-30° and 82 test locations from 30-70°. Reduced test point density with increased eccentricity. Can be combined with screening and threshold strategies
  value111812('111812'),

  /// Display: Visual Field LVC Test Pattern
  /// Definition: Low Vision Central. Orthogonal off-center test pattern with 6° spacing. 75 test locations within the central 30°. Corresponds with the 32/30-2 excluding the 2 locations at the blind spot, including a macular test location. The LVC is linked with a staircase threshold strategy starting at 0 dB intensity and applies stimulus area V
  value111813('111813'),

  /// Display: Visual Field Central Test Pattern
  /// Definition: General test corresponding to the 30-2 but excluding the 2 test locations in the blind spot area, hence with 74 instead of 76 test locations
  value111814('111814'),

  /// Display: Visual Field SITA-Standard Test Strategy
  /// Definition: Swedish Interactive Thresholding Algorithm (SITA). Strategy gains testing efficiency through use of visual field and information theory models. In: Bengtsson B, Olsson J, Heijl A, Rootzen H. A new generation of algorithms for computerized threshold perimetry, SITA. Acta Ophthalmologica Scandinavica, 1997, 75: 368-375
  value111815('111815'),

  /// Display: Visual Field SITA-SWAP Test Strategy
  /// Definition: Adaptation of SITA testing methods to Blue-Yellow testing
  value111816('111816'),

  /// Display: Visual Field SITA-Fast Test Strategy
  /// Definition: Similar to SITA-Standard but with less strict criteria for closing test points. Intended for patients who must be tested in the shortest possible time. In: Bengtsson B, Hejl A. SITA Fast, a new rapid perimetric threshold test. Description of methods and evaluation in patients with manifest and suspect glaucoma. Acta Ophthalmologica Scandinavica, 1998, 76: 431-437
  value111817('111817'),

  /// Display: Visual Field Full Threshold Test Strategy
  /// Definition: Threshold test algorithm that determines a patient's sensitivity at each test point in the threshold test pattern by adjusting intensity by 4 dB steps until the patient changes their response, and then adjusts the intensity in the opposite direction by 2 dB steps until the patient changes their response again. The last stimulus seen by the patient is recognized as the threshold for that point. The starting values are determined by first thresholding a "primary" point in each quadrant then using the results of each primary point to determine the starting values for neighboring points
  value111818('111818'),

  /// Display: Visual Field FastPac Test Strategy
  /// Definition: Similar to the Full Threshold algorithm except that it steps by 3 dB and only crosses the threshold only once. In: Flanagan JG, Wild JM, Trope GE. Evaluation of FASTPAC, a new strategy for threshold estimation with the Humphrey Field Analyzer, in a glaucomatous population. Ophthalmology, 1993, 100: 949-954
  value111819('111819'),

  /// Display: Visual Field Full From Prior Test Strategy
  /// Definition: Identical to Full Threshold except that starting values are determined by the results of a previous test performed using the same test pattern and the Full Threshold test strategy
  value111820('111820'),

  /// Display: Visual Field Optima Test Strategy
  /// Definition: Similar to FastPac except that the steps are pseudo-dynamic (differ based on the intensity of the last presentation)
  value111821('111821'),

  /// Display: Visual Field Two-Zone Test Strategy
  /// Definition: Suprathreshold testing strategy, in which each point is initially tested using stimulus that is 6 dB brighter than the expected hill of vision. If the patient does not respond, the stimulus is presented a second time at the same brightness. If the patient sees either presentation, the point is marked as "seen"; otherwise it is marked as "not seen"
  value111822('111822'),

  /// Display: Visual Field Three-Zone Test Strategy
  /// Definition: An extension of the two-zone strategy in which test points where the second stimulus is not seen are presented with a third stimulus at maximum brightness
  value111823('111823'),

  /// Display: Visual Field Quantify-Defects Test Strategy
  /// Definition: An extension of the two-zone strategy, in which test points where the second stimulus is not seen receive threshold testing to quantify the depth of any detected scotomas
  value111824('111824'),

  /// Display: Visual Field TOP Test Strategy
  /// Definition: Tendency Oriented Perimetry. Fast thresholding algorithm. Test strategy makes use of the interaction between neighboring test locations to reduce the test time compared to normal full threshold strategy by 60-80%. In: Morales J, Weitzman ML, Gonzalez de la Rosa M. Comparison between Tendency-Oriented Perimetry (TOP) and octopus threshold perimetry. Ophthalmology, 2000, 107: 134-142
  value111825('111825'),

  /// Display: Visual Field Dynamic Test Strategy
  /// Definition: Dynamic strategy is a fast thresholding strategy reducing test duration by adapting the dB step sizes according to the frequency-of-seeing curve of the threshold. Reduction of test time compared to normal full threshold strategy 30-50%
  value111826('111826'),

  /// Display: Visual Field Normal Test Strategy
  /// Definition: Traditional full threshold staircase strategy. Initial intensities are presented, based on anchor point sensitivities in each quadrant and based on already known neighboring sensitivities. In a first run, thresholds are changed in 4dB steps until the first response reversal. Then the threshold is changed in 2 dB steps until the second response reversal. The threshold is calculated as the average between the last seen and last not-seen stimulus, supposed to correspond with the 50% point in the frequency-of-seeing curve
  value111827('111827'),

  /// Display: Visual Field 1-LT Test Strategy
  /// Definition: One level screening test: Each test location is tested with a single intensity. The result is shown as seen or not-seen. The intensity can either be a 0 dB stimulus or a predefined intensity
  value111828('111828'),

  /// Display: Visual Field 2-LT Test Strategy
  /// Definition: Two level screening test: Each test location is initially tested 6 dB brighter than the age corrected normal value
  value111829('111829'),

  /// Display: Visual Field LVS Test Strategy
  /// Definition: Low Vision Strategy is a full threshold normal strategy with the exception that it starts at 0 dB intensity and applies stimulus area V
  value111830('111830'),

  /// Display: Visual Field GATE Test Strategy
  /// Definition: German Adaptive Threshold Estimation is a fast strategy based on a modified 4-2 staircase algorithm, using prior visual fields to calculate the starting intensity. In: Chiefer U, Pascual JP, Edmunds B, Feudner E, Hoffmann EM, Johnson CA, Lagreze WA, Pfeiffer N, Sample PA, Staubach F, Weleber RG, Vonthein R, Krapp E, Paetzold J. Comparison of the new perimetric GATE strategy with conventional full-threshold and SITA standard strategies. Investigative Ophthalmology and Visual Science, 2009, 51: 488-494
  value111831('111831'),

  /// Display: Visual Field GATEi Test Strategy
  /// Definition: Similar to GATE. The i stands for initial. If there was no prior visual field test to calculate the starting values, an anchor point method is used to define the local start values
  value111832('111832'),

  /// Display: Visual Field 2LT-Dynamic Test Strategy
  /// Definition: A test started as two level screening test. In the course of the test, the threshold of relative defects and/or normal test locations has been quantified using the dynamic threshold strategy
  value111833('111833'),

  /// Display: Visual Field 2LT-Normal Test Strategy
  /// Definition: A test started as two level screening test. In the course of the test, the threshold of relative defects and/or normal test locations has been quantified using the normal full threshold strategy
  value111834('111834'),

  /// Display: Visual Field Fast Threshold Test Strategy
  /// Definition: Takes neighborhood test point results into account and offers stimuli with an adapted value to save time
  value111835('111835'),

  /// Display: Visual Field CLIP Test Strategy
  /// Definition: Continuous Luminance Incremental Perimetry, which measures at first the individual reaction time of the patient and threshold values in every quadrant. The starting value for the main test is slightly below in individual threshold
  value111836('111836'),

  /// Display: Visual Field CLASS Strategy
  /// Definition: A supra threshold screening strategy. The starting stimuli intensities depend on the classification of the patient's visual hill by measuring the central (fovea) or peripheral (15° meridian) threshold. The result of each dot slightly underestimates the sensitivity value (within 5 dB)
  value111837('111837'),

  /// Display: Age corrected
  /// Definition: Mode for determining the starting luminance for screening test points - the starting luminance s is chosen based on the age of the patient
  value111838('111838'),

  /// Display: Threshold related
  /// Definition: Mode for determining the starting luminance for screening test points - the starting luminance is chosen based on the results of thresholding a set of "primary" test points (one in each quadrant)
  value111839('111839'),

  /// Display: Single luminance
  /// Definition: Mode for determining the starting luminance for screening test points - in this case, all starting luminance is set to the same value
  value111840('111840'),

  /// Display: Foveal sensitivity related
  /// Definition: Mode for determining the starting luminance for screening test points - the starting luminance is chosen based on the result of the foveal threshold value
  value111841('111841'),

  /// Display: Related to non macular sensitivity
  /// Definition: Mode for determining the starting luminance for screening test points - the starting luminance is chosen based on the result of four threshold values measured near the 15° meridian (one in each quadrant)
  value111842('111842'),

  /// Display: Automated Optical
  /// Definition: Real time evaluation of the camera image to recognize blinks and fixation losses with influence on the test procedure. Blinks that interfere with stimuli presentation cause the automated repetition of such stimulus presentations. Fixation losses can be used to delay the stimulus presentation until correct fixation is regained
  value111843('111843'),

  /// Display: Blind Spot Monitoring
  /// Definition: A method of monitoring the patient's fixation by periodically presenting stimulus in a location on the background surface that corresponds to the patient's blind spot
  value111844('111844'),

  /// Display: Macular Fixation Testing
  /// Definition: A method of monitoring the patient's fixation by presenting the stimulus to the patient's macula
  value111845('111845'),

  /// Display: Observation by Examiner
  /// Definition: A method of monitoring the patient's fixation by observation from the examiner of the patient
  value111846('111846'),

  /// Display: Outside normal limits
  /// Definition: Analysis Results are outside normal limits
  value111847('111847'),

  /// Display: Borderline
  /// Definition: Analysis Results are borderline
  value111848('111848'),

  /// Display: Abnormally high sensitivity
  /// Definition: Analysis Results identify abnormally high sensitivity
  value111849('111849'),

  /// Display: General reduction in sensitivity
  /// Definition: Analysis Results identify general reduction in sensitivity
  value111850('111850'),

  /// Display: Borderline and general reduction in sensitivity
  /// Definition: Analysis Results identify Borderline and general reduction in sensitivity
  value111851('111851'),

  /// Display: Visual Field Index
  /// Definition: Index of a patient's remaining visual field normalized for both age and generalized defect
  value111852('111852'),

  /// Display: Visual Field Loss Due to Diffuse Defect
  /// Definition: Estimate of the portion of a patient's visual field loss that is diffuse (i.e., spread evenly across all portions of the visual field)
  value111853('111853'),

  /// Display: Visual Field Loss Due to Local Defect
  /// Definition: Estimate of the portion of a patient's visual field loss that is local (i.e., not spread evenly across all portions of the visual field)
  value111854('111854'),

  /// Display: Glaucoma Hemifield Test Analysis
  /// Definition: An analysis of asymmetry between zones of the superior and inferior visual field. It is designed to be specific for defects due to glaucoma
  value111855('111855'),

  /// Display: Optical Fixation Measurements
  /// Definition: The data output of an optical fixation monitoring process, consisting of a list of positive and negative numbers indicating the quality of patient fixation over the course of a visual field test. The value 0 represents the initial fixation. Negative numbers indicate a measuring error (i.e., the patient blinked). Positive numbers quantify the degree of eccentricity from initial fixation
  value111856('111856'),

  /// Display: Macula centered
  /// Definition: An image of at least 15° angular subtend that is centered on the macula; see Section U.1.8 "Relative Image Position Definitions" in PS3.17
  value111900('111900'),

  /// Display: Disc centered
  /// Definition: An image of at least 15° angular subtend that is centered on the optic disc; see Section U.1.8 "Relative Image Position Definitions" in PS3.17
  value111901('111901'),

  /// Display: Lesion centered
  /// Definition: An image of any angular subtend that is centered on a lesion located in any region of the fundus; see Section U.1.8 "Relative Image Position Definitions" in PS3.17
  value111902('111902'),

  /// Display: Disc-macula centered
  /// Definition: An image of at least 15° angular subtend centered midway between the disc and macula and containing at least a portion of the disc and both the disc and the macula; see Section U.1.8 "Relative Image Position Definitions" in PS3.17
  value111903('111903'),

  /// Display: Mid-peripheral-superior
  /// Definition: An image of at least 15° angular subtend positioned between the central zone and the equator, and spanning both the superior-temporal and superior-nasal quadrants of the fundus; see Section U.1.8 "Relative Image Position Definitions" in PS3.17
  value111904('111904'),

  /// Display: Mid-peripheral-superior temporal
  /// Definition: An image of at least 15° angular subtend positioned between the central zone and the equator in the superior-temporal quadrant of the fundus; see Section U.1.8 "Relative Image Position Definitions" in PS3.17
  value111905('111905'),

  /// Display: Mid-peripheral-temporal
  /// Definition: An image of at least 15° angular subtend positioned between the central zone and the equator, and spanning both the superior-temporal and inferior-temporal quadrants of the fundus; see Section U.1.8 "Relative Image Position Definitions" in PS3.17
  value111906('111906'),

  /// Display: Mid-peripheral-inferior temporal
  /// Definition: An image of at least 15° angular subtend positioned between the central zone and the equator in the inferior-temporal quadrant of the fundus; see Section U.1.8 "Relative Image Position Definitions" in PS3.17
  value111907('111907'),

  /// Display: Mid-peripheral-inferior
  /// Definition: An image of at least 15° angular subtend positioned between the central zone and the equator, and spanning both the inferior-temporal and inferior-nasal quadrants of the fundus; see Section U.1.8 "Relative Image Position Definitions" in PS3.17
  value111908('111908'),

  /// Display: Mid-peripheral-inferior nasal
  /// Definition: An image of at least 15° angular subtend positioned between the central zone and the equator in the inferior-nasal quadrant of the fundus; see Section U.1.8 "Relative Image Position Definitions" in PS3.17
  value111909('111909'),

  /// Display: Mid-peripheral-nasal
  /// Definition: An image of at least 15° angular subtend positioned between the central zone and the equator, and spanning both the superior-nasal and inferior-nasal quadrants of the fundus; see Section U.1.8 "Relative Image Position Definitions" in PS3.17
  value111910('111910'),

  /// Display: Mid-peripheral-superior nasal
  /// Definition: An image of at least 15° angular subtend positioned between the central zone and the equator in the superior-nasal quadrant of the fundus; see Section U.1.8 "Relative Image Position Definitions" in PS3.17
  value111911('111911'),

  /// Display: Peripheral-superior
  /// Definition: An image of at least 15° angular subtend positioned between the equator and the ora serrata, and spanning both the superior temporal and superior nasal quadrants of the fundus; see Section U.1.8 "Relative Image Position Definitions" in PS3.17
  value111912('111912'),

  /// Display: Peripheral-superior temporal
  /// Definition: An image of at least 15° angular subtend positioned between the equator and ora serrata in the superior-temporal quadrant of the fundus; see Section U.1.8 "Relative Image Position Definitions" in PS3.17
  value111913('111913'),

  /// Display: Peripheral-temporal
  /// Definition: An image of at least 15° angular subtend positioned between the equator and ora serrata, and spanning both the superior-temporal and inferior-temporal quadrants of the fundus; see Section U.1.8 "Relative Image Position Definitions" in PS3.17
  value111914('111914'),

  /// Display: Peripheral-inferior temporal
  /// Definition: An image of at least 15° angular subtend positioned between the equator and ora serrata in the inferior-temporal quadrant of the fundus; see Section U.1.8 "Relative Image Position Definitions" in PS3.17
  value111915('111915'),

  /// Display: Peripheral-inferior
  /// Definition: An image of at least 15° angular subtend positioned between the equator and ora serrata, and spanning both the inferior-temporal and inferior-nasal quadrants of the fundus; see Section U.1.8 "Relative Image Position Definitions" in PS3.17
  value111916('111916'),

  /// Display: Peripheral-inferior nasal
  /// Definition: An image of at least 15° angular subtend positioned between the equator and ora serrata in the inferior-nasal quadrant of the fundus; see Section U.1.8 "Relative Image Position Definitions" in PS3.17
  value111917('111917'),

  /// Display: Peripheral-nasal
  /// Definition: An image of at least 15° angular subtend positioned between the equator and ora serrata, and spanning both the superior-nasal and inferior-nasal quadrants of the fundus; see Section U.1.8 "Relative Image Position Definitions" in PS3.17
  value111918('111918'),

  /// Display: Peripheral-superior nasal
  /// Definition: An image of at least 15° angular subtend positioned between the equator and ora serrata in the superior-nasal quadrant of the fundus; see Section U.1.8 "Relative Image Position Definitions" in PS3.17
  value111919('111919'),

  /// Display: Time domain
  /// Definition: Identifies the use of physical signals with respect to time to capture information
  value111920('111920'),

  /// Display: Spectral domain
  /// Definition: Identifies the use of physical signals with respect to multiple frequencies to capture information
  value111921('111921'),

  /// Display: No corneal compensation
  /// Definition: No compensation algorithm for corneal birefringence
  value111922('111922'),

  /// Display: Corneal birefringence compensation
  /// Definition: Algorithm to compensate for variability in corneal birefringence
  value111923('111923'),

  /// Display: Retinal topography
  /// Definition: Measurement of the retinal surface contour relative to an assigned datum plane
  value111924('111924'),

  /// Display: Retinal nerve fiber layer thickness
  /// Definition: Measurement approximating the distance related to the structure between the internal limiting membrane (ILM) and the outer boarder of the retinal nerve fiber layer (RNFL); see Section III.6 "Retinal Thickness Definition" in PS3.17
  value111925('111925'),

  /// Display: Ganglion cell complex thickness
  /// Definition: Measurement approximating the distance related to the structure between the ILM and the outer border of the inner plexiform layer (IPL), called the ganglion cell complex (GCC); see Section III.6 "Retinal Thickness Definition" in PS3.17
  value111926('111926'),

  /// Display: Total retinal thickness (ILM to IS-OS)
  /// Definition: Measurement approximating the distance related to the structure between the ILM and the inner-outer segment junction (IS-OS); see Section III.6 "Retinal Thickness Definition" in PS3.17
  value111927('111927'),

  /// Display: Total retinal thickness (ILM to RPE)
  /// Definition: Measurement approximating the distance related to the structure between the ILM and the retinal pigment epithelium (RPE); see Section III.6 "Retinal Thickness Definition" in PS3.17
  value111928('111928'),

  /// Display: Total retinal thickness (ILM to BM)
  /// Definition: Measurement approximating the distance related to the structure between the ILM and the Bruch's membrane (BM); see Section III.6 "Retinal Thickness Definition" in PS3.17
  value111929('111929'),

  /// Display: Absolute ophthalmic thickness
  /// Definition: Thickness of a component of the posterior segment of the eye; e.g. thickness of retina, choroid, etc.
  value111930('111930'),

  /// Display: Thickness deviation category from normative data
  /// Definition: Ophthalmic Thickness map based upon statistical significance category (such as percentile) from a normative data set
  value111931('111931'),

  /// Display: Thickness deviation from normative data
  /// Definition: Ophthalmic Thickness map based upon deviation (such as microns) from a normative data set
  value111932('111932'),

  /// Display: Related ophthalmic thickness map
  /// Definition: Ophthalmic Thickness Map related to another Ophthalmic Thickness Map or another SOP Instance
  value111933('111933'),

  /// Display: Disc-Fovea
  /// Definition: An anatomic point centered midway between the disc and fovea centralis
  value111934('111934'),

  /// Display: p>5%
  /// Definition: Assuming the null hypothesis is true, the conditional percent probability of observing this result is not statistically significant
  value111935('111935'),

  /// Display: p<5%
  /// Definition: Assuming the null hypothesis is true, the conditional percent probability of observing this result is statistically significant, 95% unlikely to happen by chance
  value111936('111936'),

  /// Display: p<2%
  /// Definition: Assuming the null hypothesis is true, the conditional percent probability of observing this result is statistically significant, 98% unlikely to happen by chance
  value111937('111937'),

  /// Display: p<1%
  /// Definition: Assuming the null hypothesis is true, the conditional percent probability of observing this result is statistically significant, 99% unlikely to happen by chance
  value111938('111938'),

  /// Display: p<0.5%
  /// Definition: Assuming the null hypothesis is true, the conditional percent probability of observing this result is statistically significant, 99.5% unlikely to happen by chance
  value111939('111939'),

  /// Display: Corneal axial power map
  /// Definition: A two dimensional representation of the axial curvature of the cornea. Axial curvature is calculated from the reciprocal of the distance from a point on a meridian normal at the point to the corneal topographer axis. Also known as sagittal curvature
  value111940('111940'),

  /// Display: Corneal instantaneous power map
  /// Definition: A two dimensional representation of the instantaneous curvature of the cornea. Instantaneous curvature is calculated from the reciprocal of the distance from a point on a meridian normal at the point to the center of curvature of that point. Also called tangential curvature
  value111941('111941'),

  /// Display: Corneal refractive power map
  /// Definition: A two dimensional representation of the refractive power of the cornea. Corneal refractive power is calculated using Snell's Law
  value111942('111942'),

  /// Display: Corneal elevation map
  /// Definition: A two dimensional representation of the elevation of the cornea. Elevation is calculated as the distance from a point on the corneal surface to a point on a reference surface along a line parallel to the corneal topographer axis. For the purpose of visualization the reference surface is usually a sphere or an ellipse
  value111943('111943'),

  /// Display: Corneal wavefront map
  /// Definition: A two dimensional representation of a wavefront aberration surface of the cornea. Wavefront aberration surface is calculated from the corneal elevation data fit with either the Zernike polynomial series or the Fourier Series. Maps generally display total aberrations and selectable higher order aberrations
  value111944('111944'),

  /// Display: Elevation-based corneal tomographer
  /// Definition: A device that measures corneal anterior surface shape using elevation-based methods (stereographic and light slit-based). Rasterstereography images a grid pattern illuminating the fluorescein dyed tear film with 2 cameras to produce 3D. Slit-based devices scan the cornea, usually by rotation about the instrument axis centered on the cornea vertex
  value111945('111945'),

  /// Display: Reflection-based corneal topographer
  /// Definition: A reflection-based device that projects a pattern of light onto the cornea and an image of the reflection of that pattern from the tear film is recorded in one video frame. Light patterns include the circular mire pattern (Placido disc) and spot matrix patterns. Sequential scanning of light spots reflected from the corneal surface is also used requiring multiple video frames for recording
  value111946('111946'),

  /// Display: Interferometry-based corneal tomographer
  /// Definition: An Interference-based device that projects a beam of light onto and through the cornea. Light reflected from within the cornea is combined with a reference beam giving rise to an interference pattern. Appropriately scanned, this imaging is used to construct 3-dimensional images of the cornea from anterior to posterior surfaces; e.g. swept source OCT
  value111947('111947'),

  /// Display: Chest CAD Report
  /// Definition: A structured report containing the results of computer-aided detection or diagnosis applied to chest imaging and associated clinical information
  value112000('112000'),

  /// Display: Opacity
  /// Definition: The shadow of an absorber that attenuates the X-Ray beam more effectively than do surrounding absorbers. In a radiograph, any circumscribed area that appears more nearly white (of lesser photometric density) than its surround [Fraser and Pare]
  value112001('112001'),

  /// Display: Series Instance UID
  /// Definition: A unique identifier for a series of DICOM SOP instances
  value112002('112002'),

  /// Display: Associated Chest Component
  /// Definition: A named anatomic region within the chest cavity
  value112003('112003'),

  /// Display: Abnormal interstitial pattern
  /// Definition: A collection of opacities detected within the continuum of loose connective tissue throughout the lung, that is not expected in a diagnostically normal radiograph
  value112004('112004'),

  /// Display: Radiographic anatomy
  /// Definition: A type of anatomy that is expected to be detectable on a radiographic (X-Ray based) image
  value112005('112005'),

  /// Display: Distribution Descriptor
  /// Definition: Characteristic of the extent of spreading of a finding or feature
  value112006('112006'),

  /// Display: Border definition
  /// Definition: Characteristic of the clarity of the boundary or edges of a finding or feature
  value112007('112007'),

  /// Display: Site involvement
  /// Definition: The part(s) of the anatomy affected or encompassed by a finding or feature
  value112008('112008'),

  /// Display: Type of Content
  /// Definition: Characteristic of the matter or substance within a finding or feature
  value112009('112009'),

  /// Display: Texture Descriptor
  /// Definition: Characteristic of the surface or consistency of a finding or feature
  value112010('112010'),

  /// Display: Positioner Primary Angle
  /// Definition: Position of the X-Ray beam about the patient from the RAO to LAO direction where movement from RAO to vertical is positive
  value112011('112011'),

  /// Display: Positioner Secondary Angle
  /// Definition: Position of the X-Ray beam about the patient from the caudal to cranial direction where movement from caudal to vertical is positive
  value112012('112012'),

  /// Display: Location in Chest
  /// Definition: The zone, lobe or segment within the chest cavity in which a finding or feature is situated
  value112013('112013'),

  /// Display: Orientation Descriptor
  /// Definition: Vertical refers to orientation parallel to the superior-inferior (cephalad-caudad) axis of the body, with horizontal being perpendicular to this, and an oblique orientation having projections in both the horizontal and vertical
  value112014('112014'),

  /// Display: Border shape
  /// Definition: Characteristic of the shape formed by the boundary or edges of a finding or feature
  value112015('112015'),

  /// Display: Baseline Category
  /// Definition: Indicates whether a finding was considered a target lesion, non-target lesion, or non-lesion during evaluation of a baseline series, according to a method such as RECIST
  value112016('112016'),

  /// Display: Cavity extent as percent of volume
  /// Definition: The extent of a detected cavity, represented as the percent of the surrounding volume that it occupies
  value112017('112017'),

  /// Display: Calcification extent as percent of surface
  /// Definition: The extent of a detected calcification, represented as the percent of the surrounding surface that it occupies
  value112018('112018'),

  /// Display: Calcification extent as percent of volume
  /// Definition: The extent of a detected calcification, represented as the percent of the surrounding volume that it occupies
  value112019('112019'),

  /// Display: Response Evaluation
  /// Definition: A heading for the reporting of response evaluation for treatment of solid tumors
  value112020('112020'),

  /// Display: Response Evaluation Method
  /// Definition: The system applied in the reporting of response evaluation for treatment of solid tumors
  value112021('112021'),

  /// Display: RECIST
  /// Definition: Response Evaluation Criteria In Solid Tumors; see Normative References
  value112022('112022'),

  /// Display: Composite Feature Modifier
  /// Definition: A term that further specifies the name of an item that is an inferred correlation relating two or more individual findings or features
  value112023('112023'),

  /// Display: Single Image Finding Modifier
  /// Definition: A term that further specifies the name of an item that was detected on one image
  value112024('112024'),

  /// Display: Size Descriptor
  /// Definition: A qualitative descriptor for the extent of a finding or feature
  value112025('112025'),

  /// Display: Width Descriptor
  /// Definition: A qualitative descriptor for the thickness of tubular structures, such as blood vessels
  value112026('112026'),

  /// Display: Opacity Descriptor
  /// Definition: A characteristic that further describes the nature of an opacity
  value112027('112027'),

  /// Display: Abnormal Distribution of Anatomic Structure
  /// Definition: The type of adverse affect that a finding or feature is having on the surrounding anatomy
  value112028('112028'),

  /// Display: WHO
  /// Definition: Response evaluation method as defined in chapter 5, "Reporting of Response" of the WHO Handbook for Reporting Results for Cancer Treatment; see Normative References
  value112029('112029'),

  /// Display: Calcification Descriptor
  /// Definition: Identification of the morphology of detected calcifications
  value112030('112030'),

  /// Display: Attenuation Coefficient
  /// Definition: A quantitative numerical statement of the relative attenuation of the X-Ray beam at a specified point. Coefficient that describes the fraction of a beam of X-Rays or gamma rays that is absorbed or scattered per unit thickness of the absorber. This value basically accounts for the number of atoms in a cubic cm volume of material and the probability of a photon being scattered or absorbed from the nucleus or an electron of one of these atoms. Usually expressed in Hounsfield units [referred to as CT Number in Fraser and Pare]
  value112031('112031'),

  /// Display: Threshold Attenuation Coefficient
  /// Definition: An X-Ray attenuation coefficient that is used as a threshold; e.g. in calcium scoring
  value112032('112032'),

  /// Display: Abnormal opacity
  /// Definition: An opacity that is not expected in a diagnostically normal radiograph
  value112033('112033'),

  /// Display: Calculation Description
  /// Definition: A textual description of the mathematical method of calculation that resulted in a calculated value
  value112034('112034'),

  /// Display: Performance of Pediatric and Adult Chest Radiography, ACR
  /// Definition: American College of Radiology. ACR Standard for the Performance of Pediatric and Adult Chest Radiography. In: Standards. Reston, Va: 2001:95-98
  value112035('112035'),

  /// Display: ACR Position Statement
  /// Definition: American College of Radiology. ACR Position Statement for Quality Control and Improvement, Safety, Infection Control, and Patient Concerns. In: Practice Guidelines and Technical Standards. Reston, Va: 2001:iv
  value112036('112036'),

  /// Display: Non-lesion Modifier
  /// Definition: A descriptor for a non-lesion object finding or feature, used to indicate whether the object was detected as being internal or external to the patient's body
  value112037('112037'),

  /// Display: Osseous Modifier
  /// Definition: A concept modifier for an Osseous Anatomy, or bone related, finding
  value112038('112038'),

  /// Display: Tracking Identifier
  /// Definition: A text label used for tracking a finding or feature, potentially across multiple reporting objects, over time. This label shall be unique within the domain in which it is used
  value112039('112039'),

  /// Display: Tracking Unique Identifier
  /// Definition: A unique identifier used for tracking a finding or feature, potentially across multiple reporting objects, over time
  value112040('112040'),

  /// Display: Target Lesion Complete Response
  /// Definition: Disappearance of all target lesions
  value112041('112041'),

  /// Display: Target Lesion Partial Response
  /// Definition: At least a 30% decrease in the sum of the Longest Diameter of target lesions, taking as reference the baseline sum Longest Diameter
  value112042('112042'),

  /// Display: Target Lesion Progressive Disease
  /// Definition: At least a 20% increase in the sum of the Longest Diameter of target lesions, taking as reference the smallest sum Longest Diameter recorded since the treatment started, or the appearance of one or more new lesions
  value112043('112043'),

  /// Display: Target Lesion Stable Disease
  /// Definition: Neither sufficient shrinkage to qualify for Partial Response nor sufficient increase to qualify for Progressive Disease, taking as reference the smallest sum Longest Diameter since the treatment started
  value112044('112044'),

  /// Display: Non-Target Lesion Complete Response
  /// Definition: Disappearance of all non-target lesions and normalization of tumor marker level
  value112045('112045'),

  /// Display: Non-Target Lesion Incomplete Response or Stable Disease
  /// Definition: Persistence of one or more non-target lesions and/or maintenance of tumor marker level above the normal limits
  value112046('112046'),

  /// Display: Non-Target Lesion Progressive Disease
  /// Definition: Appearance of one or more new lesions and/or unequivocal progression of existing non-target lesions
  value112047('112047'),

  /// Display: Current Response
  /// Definition: The current response evaluation for treatment of solid tumors, according to a method such as RECIST
  value112048('112048'),

  /// Display: Best Overall Response
  /// Definition: Best response recorded from the start of the treatment until disease progression/recurrence, taking as reference for Progressive Disease the smallest measurements recorded since the treatment started, according to a method such as RECIST
  value112049('112049'),

  /// Display: Anatomic Identifier
  /// Definition: A text identifier of an anatomic feature when a multiplicity of features of that type may be present, such as "Rib 1", "Rib 2" or thoracic vertebrae "T1" or "T2"
  value112050('112050'),

  /// Display: Measurement of Response
  /// Definition: A measured or calculated evaluation of response; e.g. according to a method such as RECIST, the value would be the calculated sum of the lengths of the longest axes of a set of target lesions
  value112051('112051'),

  /// Display: Bronchovascular
  /// Definition: Of or relating to a bronchial (lung) specific channel for the conveyance of a body fluid
  value112052('112052'),

  /// Display: Osseous
  /// Definition: Of, relating to, or composed of bone
  value112053('112053'),

  /// Display: Secondary pulmonary lobule
  /// Definition: The smallest unit of lung surrounded by connective tissue septa; the unit of lung subtended by any bronchiole that gives off three to five terminal bronchioles [Fraser and Pare]
  value112054('112054'),

  /// Display: Agatston scoring method
  /// Definition: A method of calculating an overall calcium score, reflecting the calcification of coronary arteries, based on the maximum X-Ray attenuation coefficient and the area of calcium deposits
  value112055('112055'),

  /// Display: Volume scoring method
  /// Definition: A method of calculating an overall calcium score, reflecting the calcification of coronary arteries, based on the volume of each calcification, typically expressed in mm3
  value112056('112056'),

  /// Display: Mass scoring method
  /// Definition: A method of calculating an overall calcium score, reflecting the calcification of coronary arteries, based on the total mass of calcification, typically expressed in mg
  value112057('112057'),

  /// Display: Calcium score
  /// Definition: A measure often arrived at through calculation of findings from CT examination, which is a common predictor of significant stenosis of the coronary arteries
  value112058('112058'),

  /// Display: Primary complex
  /// Definition: The combination of a focus of pneumonia due to a primary infection with granulomas in the draining hilar or mediastinal lymph nodes [Fraser and Pare]
  value112059('112059'),

  /// Display: Oligemia
  /// Definition: General or local decrease in the apparent width of visible pulmonary vessels, suggesting less than normal blood flow (reduced blood flow) [Fraser and Pare]
  value112060('112060'),

  /// Display: Abnormal lines (1D)
  /// Definition: Linear opacity of very fine width, i.e., a nearly one dimensional opacity
  value112061('112061'),

  /// Display: Abnormal lucency
  /// Definition: Area of abnormal very low X-Ray attenuation, typically lower than aerated lung when occurring in or projecting over lung, or lower than soft tissue when occurring in or projecting over soft tissue
  value112062('112062'),

  /// Display: Abnormal calcifications
  /// Definition: A calcific opacity within the lung that may be organized, but does not display the trabecular organization of true bone [Fraser and Pare]
  value112063('112063'),

  /// Display: Abnormal texture
  /// Definition: Relatively homogeneous, extended, pattern of abnormal opacity in the lung, typically low in contrast
  value112064('112064'),

  /// Display: Reticulonodular pattern
  /// Definition: A collection of innumerable small, linear, and nodular opacities that together produce a composite appearance resembling a net with small superimposed nodules. The reticular and nodular elements are dimensionally of similar magnitude [Fraser and Pare]
  value112065('112065'),

  /// Display: Beaded septum sign
  /// Definition: Irregular septal thickening that suggests the appearance of a row of beads; usually a sign of lymphangitic carcinomatosis, but may also occur rarely in sarcoidosis [Fraser and Pare]
  value112066('112066'),

  /// Display: Nodular pattern
  /// Definition: A collection of innumerable, small discrete opacities ranging in diameter from 2-10 mm, generally uniform in size and widespread in distribution, and without marginal spiculation [Fraser and Pare]
  value112067('112067'),

  /// Display: Pseudoplaque
  /// Definition: An irregular band of peripheral pulmonary opacity adjacent to visceral pleura that simulates the appearance of a pleural plaque and is formed by coalescence of small nodules [Fraser and Pare]
  value112068('112068'),

  /// Display: Signet-ring sign
  /// Definition: A ring of opacities (usually representing a dilated, thick-walled bronchus) in association with a smaller, round, soft tissue opacity (the adjacent pulmonary artery) suggesting a "signet ring" [Fraser and Pare]
  value112069('112069'),

  /// Display: Air bronchiologram
  /// Definition: Equivalent of air bronchogram, but in airways assumed to be bronchioles because of peripheral location and diameter [Fraser and Pare]
  value112070('112070'),

  /// Display: Air bronchogram
  /// Definition: Radiographic shadow of an air-containing bronchus; presumed to represent an air-containing segment of the bronchial tree (identity often inferred) [Fraser and Pare]
  value112071('112071'),

  /// Display: Air crescent
  /// Definition: Air in a crescentic shape in a nodule or mass, in which the air separates the outer wall of the lesion from an inner sequestrum, which most commonly is a fungus ball of Aspergillusspecies [Fraser and Pare]
  value112072('112072'),

  /// Display: Halo sign
  /// Definition: Ground-glass opacity surrounding the circumference of a nodule or mass. May be a sign of invasive aspergillosis or hemorrhage of various causes [Fraser and Pare]
  value112073('112073'),

  /// Display: Target Lesion at Baseline
  /// Definition: Flag denoting that this lesion was identified, at baseline, as a target lesion intended for tracking over time [RECIST]
  value112074('112074'),

  /// Display: Non-Target Lesion at Baseline
  /// Definition: Flag denoting that this lesion was not identified, at baseline, as a target lesion, and was not intended for tracking over time [RECIST]
  value112075('112075'),

  /// Display: Non-Lesion at Baseline
  /// Definition: Flag denoting that this finding was identified, at baseline, as a category other than a lesion, and was not intended for tracking over time [RECIST]
  value112076('112076'),

  /// Display: Vasoconstriction
  /// Definition: Local or general reduction in the caliber of visible pulmonary vessels, presumed to result from decreased flow occasioned by contraction of muscular pulmonary arteries [Fraser and Pare]
  value112077('112077'),

  /// Display: Vasodilation
  /// Definition: Local or general increase in the width of visible pulmonary vessels resulting from increased pulmonary blood flow [Fraser and Pare]
  value112078('112078'),

  /// Display: Architectural distortion
  /// Definition: A manifestation of lung disease in which bronchi, pulmonary vessels, a fissure or fissures, or septa of secondary pulmonary lobules are abnormally displaced [Fraser and Pare]
  value112079('112079'),

  /// Display: Mosaic perfusion
  /// Definition: A patchwork of regions of varied attenuation, interpreted as secondary to regional differences in perfusion [Fraser and Pare]
  value112080('112080'),

  /// Display: Pleonemia
  /// Definition: Increased blood flow to the lungs or a portion thereof, manifested by a general or local increase in the width of visible pulmonary vessels [Fraser and Pare]
  value112081('112081'),

  /// Display: Interface
  /// Definition: The common boundary between the shadows of two juxtaposed structures or tissues of different texture or opacity (edge, border) [Fraser and Pare]
  value112082('112082'),

  /// Display: Line
  /// Definition: A longitudinal opacity no greater than 2 mm in width [Fraser and Pare]
  value112083('112083'),

  /// Display: Lucency
  /// Definition: The shadow of an absorber that attenuates the primary X-Ray beam less effectively than do surrounding absorbers. In a radiograph, any circumscribed area that appears more nearly black (of greater photometric density) than its surround [Fraser and Pare]
  value112084('112084'),

  /// Display: Midlung window
  /// Definition: A midlung region, characterized by the absence of large blood vessels and by a paucity of small blood vessels, that corresponds to the minor fissure and adjacent peripheral lung [Fraser and Pare]
  value112085('112085'),

  /// Display: Carina angle
  /// Definition: The angle formed by the right and left main bronchi at the tracheal bifurcation [Fraser and Pare]
  value112086('112086'),

  /// Display: Centrilobular structures
  /// Definition: The pulmonary artery and its immediate branches in a secondary lobule; HRCT depicts these vessels in certain cases; a.k.a. core structures or lobular core structures [Fraser and Pare]
  value112087('112087'),

  /// Display: Anterior junction line
  /// Definition: A vertically oriented linear or curvilinear opacity approximately 1-2 mm wide, commonly projected on the tracheal air shadow [Fraser and Pare]
  value112088('112088'),

  /// Display: Posterior junction line
  /// Definition: A vertically oriented, linear or curvilinear opacity approximately 2 mm wide, commonly projected on the tracheal air shadow, and usually slightly concave to the right [Fraser and Pare]
  value112089('112089'),

  /// Display: Azygoesophageal recess interface
  /// Definition: A space in the right side of the mediastinum into which the medial edge of the right lower lobe extends [Fraser and Pare]
  value112090('112090'),

  /// Display: Paraspinal line
  /// Definition: A vertically oriented interface usually seen in a frontal chest radiograph to the left of the thoracic vertebral column [Fraser and Pare]
  value112091('112091'),

  /// Display: Posterior tracheal stripe
  /// Definition: A vertically oriented linear opacity ranging in width from 2-5 mm, extending from the thoracic inlet to the bifurcation of the trachea, and visible only on lateral radiographs of the chest [Fraser and Pare]
  value112092('112092'),

  /// Display: Right tracheal stripe
  /// Definition: A vertically oriented linear opacity approximately 2-3 mm wide extending from the thoracic inlet to the right tracheobronchial angle [Fraser and Pare]
  value112093('112093'),

  /// Display: Stripe
  /// Definition: A longitudinal composite opacity measuring 2-5 mm in width; acceptable when limited to anatomic structures within the mediastinum [Fraser and Pare]
  value112094('112094'),

  /// Display: Hiatus
  /// Definition: A gap or passage through an anatomical part or organ; especially : a gap through which another part or organ passes
  value112095('112095'),

  /// Display: Rib Scalene Tubercle
  /// Definition: A small rounded elevation or eminence on the first rib for the attachment of the scalenus anterior
  value112096('112096'),

  /// Display: Vertebral Intervertebral Notch
  /// Definition: A groove that serves for the transmission of the vertebral artery
  value112097('112097'),

  /// Display: Subscapular Fossa
  /// Definition: The concave depression of the anterior surface of the scapula
  value112098('112098'),

  /// Display: Scapular Spine
  /// Definition: A sloping ridge dividing the dorsal surface of the scapula into the supraspinatous fossa (above), and the infraspinatous fossa (below)
  value112099('112099'),

  /// Display: Scapular Supraspinatus Fossa
  /// Definition: The portion of the dorsal surface of the scapula above the scapular spine
  value112100('112100'),

  /// Display: Scapular Infraspinatus Fossa
  /// Definition: The portion of the dorsal surface of the scapula below the scapular spine
  value112101('112101'),

  /// Display: Aortic knob
  /// Definition: The portion of the aortic arch that defines the transition between its ascending and descending limbs
  value112102('112102'),

  /// Display: Arch of the Azygos vein
  /// Definition: Section of Azygos vein near the fourth thoracic vertebra, where it arches forward over the root of the right lung, and ends in the superior vena cava, just before that vessel pierces the pericardium
  value112103('112103'),

  /// Display: Air-fluid level
  /// Definition: A local collection of gas and liquid that, when traversed by a horizontal X-Ray beam, creates a shadow characterized by a sharp horizontal interface between gas density above and liquid density below [Fraser and Pare]
  value112104('112104'),

  /// Display: Corona radiata
  /// Definition: A circumferential pattern of fine linear spicules, approximately 5 mm long, extending outward from the margin of a solitary pulmonary nodule through a zone of relative lucency [Fraser and Pare]
  value112105('112105'),

  /// Display: Honeycomb pattern
  /// Definition: A number of closely approximated ring shadows representing air spaces 5-10 mm in diameter with walls 2-3 mm thick that resemble a true honeycomb; implies "end-stage" lung [Fraser and Pare]
  value112106('112106'),

  /// Display: Fleischner's line(s)
  /// Definition: A straight, curved, or irregular linear opacity that is visible in multiple projections; usually situated in the lower half of the lung; vary markedly in length and width [Fraser and Pare]
  value112107('112107'),

  /// Display: Intralobular lines
  /// Definition: Fine linear opacities present in a lobule when the intralobular interstitium is thickened. When numerous, they may appear as a fine reticular pattern [Fraser and Pare]
  value112108('112108'),

  /// Display: Kerley A line
  /// Definition: Essentially straight linear opacity 2-6 cm in length and 1-3 mm in width, usually in an upper lung zone [Fraser and Pare]
  value112109('112109'),

  /// Display: Kerley B line
  /// Definition: A straight linear opacity 1.5-2 cm in length and 1-2 mm in width, usually at the lung base [Fraser and Pare]
  value112110('112110'),

  /// Display: Kerley C lines
  /// Definition: A group of branching, linear opacities producing the appearing of a fine net, at the lung base [Fraser and Pare]
  value112111('112111'),

  /// Display: Parenchymal band
  /// Definition: Elongated opacity, usually several millimeters wide and up to about 5 cm long, often extending to the pleura, which may be thickened and retracted at the site of contact [Fraser and Pare]
  value112112('112112'),

  /// Display: Reticular pattern
  /// Definition: A collection of innumerable small linear opacities that together produce an appearance resembling a net [Fraser and Pare]
  value112113('112113'),

  /// Display: Septal line(s)
  /// Definition: Usually used in the plural, a generic term for linear opacities of varied distribution produced when the interstitium between pulmonary lobules is thickened [Fraser and Pare]
  value112114('112114'),

  /// Display: Subpleural line
  /// Definition: A thin curvilinear opacity, a few millimeters or less in thickness, usually less than 1 cm from the pleural surface and paralleling the pleura [Fraser and Pare]
  value112115('112115'),

  /// Display: Tramline shadow
  /// Definition: Parallel or slightly convergent linear opacities that suggest the planar projection of tubular structures and that correspond in location and orientation to elements of the bronchial tree [Fraser and Pare]
  value112116('112116'),

  /// Display: Tubular shadow
  /// Definition: Paired, parallel, or slightly convergent linear opacities presumed to represent the walls of a tubular structure seen en face; used if the anatomic nature of a shadow is obscure [Fraser and Pare]
  value112117('112117'),

  /// Display: Density
  /// Definition: The opacity of a radiographic shadow to visible light; film blackening; the term should never be used to mean an "opacity" or "radiopacity" [Fraser and Pare]
  value112118('112118'),

  /// Display: Dependent opacity
  /// Definition: Subpleural increased attenuation in dependent lung. The increased attenuation disappears when the region of lung is nondependent; a.k.a. dependent increased attenuation [Fraser and Pare]
  value112119('112119'),

  /// Display: Ground glass opacity
  /// Definition: Hazy increased attenuation of lung, but with preservation of bronchial and vascular margins; caused by partial filling of air spaces, interstitial thickening, partial collapse of alveoli, normal expiration, or increased capillary blood volume [Fraser and Pare]
  value112120('112120'),

  /// Display: Infiltrate
  /// Definition: Any ill-defined opacity in the lung [Fraser and Pare]
  value112121('112121'),

  /// Display: Micronodule
  /// Definition: Discrete, small, round, focal opacity of at least soft tissue attenuation and with a diameter no greater than 7 mm [Fraser and Pare]
  value112122('112122'),

  /// Display: Phantom tumor (pseudotumor)
  /// Definition: A shadow produced by a local collection of fluid in one of the interlobar fissures, usually elliptic in one radiographic projection and rounded in the other, resembling a tumor [Fraser and Pare]
  value112123('112123'),

  /// Display: Shadow
  /// Definition: Any perceptible discontinuity in film blackening attributed to the attenuation of the X-Ray beam by a specific anatomic absorber or lesion on or within the body of the patient; to be employed only when more specific identification is not possible [Fraser and Pare]
  value112124('112124'),

  /// Display: Small irregular opacities
  /// Definition: Term used to define a reticular pattern specific to pneumoconioses [Fraser and Pare]
  value112125('112125'),

  /// Display: Small rounded opacities
  /// Definition: Term used to define a nodular pattern specific to pneumoconioses [Fraser and Pare]
  value112126('112126'),

  /// Display: Tree-in-bud sign
  /// Definition: Nodular dilation of centrilobular branching structures that resembles a budding tree and represents exudative bronchiolar dilation [Fraser and Pare]
  value112127('112127'),

  /// Display: Granular pattern
  /// Definition: Any extended, finely granular pattern of pulmonary opacity within which normal anatomic details are partly obscured [Fraser and Pare]
  value112128('112128'),

  /// Display: Miliary pattern
  /// Definition: A collection of tiny discrete opacities in the lungs, each measuring 2 mm or less in diameter, generally uniform in size and widespread in distribution [Fraser and Pare]
  value112129('112129'),

  /// Display: Mosaic pattern
  /// Definition: Generalized pattern of relatively well defined areas in the lung having different X-Ray attenuations due to a longstanding underlying pulmonary disease
  value112130('112130'),

  /// Display: Extremely small
  /// Definition: A qualitative descriptor of a size that is dramatically less than typical
  value112131('112131'),

  /// Display: Very small
  /// Definition: A qualitative descriptor of a size that is considerably less than typical
  value112132('112132'),

  /// Display: Too small
  /// Definition: A qualitative descriptor of a size that is so small as to be abnormal versus expected size
  value112133('112133'),

  /// Display: Elliptic
  /// Definition: Shaped like an ellipse (oval)
  value112134('112134'),

  /// Display: Lobulated
  /// Definition: A border shape that is made up of, provided with, or divided into lobules (small lobes, curved or rounded projections or divisions)
  value112135('112135'),

  /// Display: Spiculated
  /// Definition: Radially orientated border shape
  value112136('112136'),

  /// Display: Sharply defined
  /// Definition: The border of a shadow (opacity) is sharply defined [Fraser and Pare]
  value112137('112137'),

  /// Display: Distinctly defined
  /// Definition: The border of a shadow (opacity) is distinctly defined [Fraser and Pare]
  value112138('112138'),

  /// Display: Well demarcated
  /// Definition: The border of a shadow (opacity) is well distinct from adjacent structures [Fraser and Pare]
  value112139('112139'),

  /// Display: Sharply demarcated
  /// Definition: The border of a shadow (opacity) is sharply distinct from adjacent structures [Fraser and Pare]
  value112140('112140'),

  /// Display: Poorly demarcated
  /// Definition: The border of a shadow (opacity) is poorly distinct from adjacent structures [Fraser and Pare]
  value112141('112141'),

  /// Display: Circumscribed
  /// Definition: A shadow (opacity) possessing a complete or nearly complete visible border [Fraser and Pare]
  value112142('112142'),

  /// Display: Air
  /// Definition: Inspired atmospheric gas. The word is sometimes used to describe gas within the body regardless of its composition or site [Fraser and Pare]
  value112143('112143'),

  /// Display: Soft tissue
  /// Definition: Material having X-Ray attenuation properties similar to muscle
  value112144('112144'),

  /// Display: Calcium
  /// Definition: Material having X-Ray attenuation properties similar to calcium, a silver-white bivalent metallic element occurring in plants and animals
  value112145('112145'),

  /// Display: Acinar
  /// Definition: A pulmonary opacity 4-8 mm in diameter, presumed to represent anatomic acinus, or a collection of opacities in the lung, each measuring 4-8 mm in diameter, and together producing an extended, homogeneous shadow [Fraser and Pare]
  value112146('112146'),

  /// Display: Air space
  /// Definition: The gas-containing portion of the lung parenchyma, including the acini and excluding the interstitium [Fraser and Pare]
  value112147('112147'),

  /// Display: Fibronodular
  /// Definition: Sharply defined, approximately circular opacities occurring singly or in clusters, usually in the upper lobes [Fraser and Pare]
  value112148('112148'),

  /// Display: Fluffy
  /// Definition: A shadow (opacity) that is ill-defined, lacking clear-cut margins [Fraser and Pare]
  value112149('112149'),

  /// Display: Linear
  /// Definition: A shadow resembling a line; any elongated opacity of approximately uniform width [Fraser and Pare]
  value112150('112150'),

  /// Display: Profusion
  /// Definition: The number of small opacities per unit area or zone of lung. In the International Labor Organization (ILO) classification of radiographs of the pneumoconioses, the qualifiers 0 through 3 subdivide the profusion into 4 categories. The profusion categories may be further subdivided by employing a 12-point scale [Fraser and Pare]
  value112151('112151'),

  /// Display: Silhouette sign
  /// Definition: The effacement of an anatomic soft tissue border by either a normal anatomic structure or a pathologic state such as airlessness of adjacent lung or accumulation of fluid in the contiguous pleural space; useful in detecting and localizing an opacity along the axis of the X-Ray beam [Fraser and Pare]
  value112152('112152'),

  /// Display: Subpleural
  /// Definition: Situated or occurring between the pleura and the body wall
  value112153('112153'),

  /// Display: Bat's wing distribution
  /// Definition: Spatial arrangement of opacities that bears vague resemblance to the shape of a bat in flight; bilaterally symmetric [Fraser and Pare]
  value112154('112154'),

  /// Display: Butterfly distribution
  /// Definition: Spatial arrangement of opacities that bears vague resemblance to the shape of a butterfly in flight; bilaterally symmetric [Fraser and Pare]
  value112155('112155'),

  /// Display: Centrilobular
  /// Definition: Referring to the region of the bronchioloarteriolar core of a secondary pulmonary lobule [Fraser and Pare]
  value112156('112156'),

  /// Display: Coalescent
  /// Definition: The joining together of a number of opacities into a single opacity [Fraser and Pare]
  value112157('112157'),

  /// Display: Lobar
  /// Definition: Of or relating to a lobe (a curved or rounded projection or division); e.g. involving an entire lobe of the lung
  value112158('112158'),

  /// Display: Hyper-acute
  /// Definition: Extremely or excessively acute, as a qualitative measure of severity
  value112159('112159'),

  /// Display: Homogeneous (uniform opacity)
  /// Definition: Of uniform opacity or texture throughout [Fraser and Pare]
  value112160('112160'),

  /// Display: Inhomogeneous
  /// Definition: Lack of homogeneity in opacity or texture
  value112161('112161'),

  /// Display: Target
  /// Definition: Discrete opacity centrally within a larger opacity, as a calcification descriptor
  value112162('112162'),

  /// Display: Fibrocalcific
  /// Definition: Pertaining to sharply defined, linear, and/or nodular opacities containing calcification(s) [Fraser and Pare]
  value112163('112163'),

  /// Display: Flocculent
  /// Definition: Calcifications made up of loosely aggregated particles, resembling wool
  value112164('112164'),

  /// Display: Difference in border shape
  /// Definition: A change in the shape formed by the boundary or edges of a finding or feature
  value112165('112165'),

  /// Display: Difference in border definition
  /// Definition: A change in the clarity of the boundary or edges of a finding or feature
  value112166('112166'),

  /// Display: Difference in distribution
  /// Definition: A change in the extent of spreading of a finding or feature
  value112167('112167'),

  /// Display: Difference in site involvement
  /// Definition: A change in the part(s) of the anatomy affected or encompassed by a finding or feature
  value112168('112168'),

  /// Display: Difference in Type of Content
  /// Definition: A change in the matter or substance within a finding or feature
  value112169('112169'),

  /// Display: Difference in Texture
  /// Definition: A change in the surface or consistency of a finding or feature
  value112170('112170'),

  /// Display: Fiducial mark
  /// Definition: A location in image space, which may or may not correspond to an anatomical reference, which is often used for registering data sets
  value112171('112171'),

  /// Display: Portacath
  /// Definition: Connected to an injection chamber placed under the skin in the upper part of the chest. When it is necessary to inject some drug, a specific needle is put in the chamber through the skin and a silicon membrane. The advantage of a portacath is that it may be left in place several months contrarily of "classical" catheters
  value112172('112172'),

  /// Display: Chest tube
  /// Definition: A tube inserted into the chest wall from outside the body, for drainage. Sometimes used for collapsed lung. Usually connected to a receptor placed lower than the insertion site
  value112173('112173'),

  /// Display: Central line
  /// Definition: A tube placed into the subclavian vein to deliver medication directly into the venous system
  value112174('112174'),

  /// Display: Kidney stent
  /// Definition: A stent is a tube inserted into another tube. Kidney stent is a tube that is inserted into the kidney, ureter, and bladder, to help drain urine. Usually inserted through a scoping device presented through the urethra
  value112175('112175'),

  /// Display: Pancreatic stent
  /// Definition: A stent is a tube inserted into another tube. Pancreatic stent is inserted through the common bile duct to the pancreatic duct, to drain bile
  value112176('112176'),

  /// Display: Nipple ring
  /// Definition: A non-lesion object that appears to be a circular band, attached to the body via pierced nipple
  value112177('112177'),

  /// Display: Coin
  /// Definition: A non-lesion object that appears to be a flat round piece of metal
  value112178('112178'),

  /// Display: Minimum Attenuation Coefficient
  /// Definition: The least quantity assignable, admissible, or possible; the least of a set of X-Ray attenuation coefficients
  value112179('112179'),

  /// Display: Maximum Attenuation Coefficient
  /// Definition: The greatest quantity or value attainable or attained; the largest of a set of X-Ray attenuation coefficients
  value112180('112180'),

  /// Display: Mean Attenuation Coefficient
  /// Definition: The value that is computed by dividing the sum of a set of X-Ray attenuation coefficients by the number of values
  value112181('112181'),

  /// Display: Median Attenuation Coefficient
  /// Definition: The value in an ordered set of X-Ray attenuation coefficients, below and above which there is an equal number of values
  value112182('112182'),

  /// Display: Standard Deviation of Attenuation Coefficient
  /// Definition: For a set of X-Ray attenuation coefficients: 1) a measure of the dispersion of a frequency distribution that is the square root of the arithmetic mean of the squares of the deviation of each of the class frequencies from the arithmetic mean of the frequency distribution; 2) a parameter that indicates the way in which a probability function or a probability density function is centered around its mean and that is equal to the square root of the moment in which the deviation from the mean is squared
  value112183('112183'),

  /// Display: Performance of Pediatric and Adult Thoracic CT
  /// Definition: American College of Radiology. ACR Standard for the Performance of Pediatric and Adult Thoracic Computed Tomography (CT). In: Standards. Reston, Va: 2001:103-107
  value112184('112184'),

  /// Display: Performance of CT for Detection of Pulmonary Embolism in Adults
  /// Definition: American College of Radiology. ACR Standard for the Performance of Computed Tomography for the Detection of Pulmonary Embolism in Adults. In: Standards. Reston, Va: 2001:109-113
  value112185('112185'),

  /// Display: Performance of High-Resolution CT of the Lungs in Adults
  /// Definition: American College of Radiology. ACR Standard for the Performance of High-Resolution Computed Tomography (HRCT) of the Lungs in Adults. In: Standards. Reston, Va: 2001:115-118
  value112186('112186'),

  /// Display: Unspecified method of calculation
  /// Definition: The method of calculation of a measurement or other type of numeric value is not specified
  value112187('112187'),

  /// Display: Two-dimensional method
  /// Definition: The calculation method was performed in two-dimensional space
  value112188('112188'),

  /// Display: Three-dimensional method
  /// Definition: The calculation method was performed in three-dimensional space
  value112189('112189'),

  /// Display: Breast tissue density
  /// Definition: The relative density of parenchymal tissue as a proportion of breast volume
  value112191('112191'),

  /// Display: Volume of parenchymal tissue
  /// Definition: The volume of parenchymal tissue
  value112192('112192'),

  /// Display: Volume of breast
  /// Definition: The volume of the breast
  value112193('112193'),

  /// Display: Mass of parenchymal tissue
  /// Definition: The mass of parenchymal tissue
  value112194('112194'),

  /// Display: Mass of breast
  /// Definition: The mass of the breast
  value112195('112195'),

  /// Display: Area of Vascular Calcification
  /// Definition: A measured or calculated area of vascular calcification
  value112196('112196'),

  /// Display: Volume of Vascular Calcification
  /// Definition: A measured or calculated volume of vascular calcification
  value112197('112197'),

  /// Display: Percentage of Vascular Calcification
  /// Definition: A measured or calculated percentage of vascular calcification
  value112198('112198'),

  /// Display: Mass of Vascular Calcification
  /// Definition: A measured or calculated mass of vascular calcification
  value112199('112199'),

  /// Display: Average calcification distance in a calcification cluster
  /// Definition: The average nearest neighbor distance of all individual microcalcifications in a cluster
  value112200('112200'),

  /// Display: Standard deviation distance of calcifications in a cluster
  /// Definition: The standard deviation of nearest neighbor distance of all individual microcalcifications in a cluster
  value112201('112201'),

  /// Display: Colon CAD Report
  /// Definition: A structured report containing the results of computer-aided detection or diagnosis applied to colon imaging and associated clinical information
  value112220('112220'),

  /// Display: Colon Overall Assessment
  /// Definition: Overall interpretation of the colon using C-RADS categorization system
  value112222('112222'),

  /// Display: Image Set Properties
  /// Definition: Characteristics of a set of images
  value112224('112224'),

  /// Display: Slice Thickness
  /// Definition: Nominal slice thickness, in mm
  value112225('112225'),

  /// Display: Spacing between slices
  /// Definition: Distance between contiguous images, measured from the center-to-center of each image
  value112226('112226'),

  /// Display: Frame of Reference UID
  /// Definition: Uniquely identifies groups of composite instances that have the same coordinate system that conveys spatial and/or temporal information
  value112227('112227'),

  /// Display: Recumbent Patient Position with respect to gravity
  /// Definition: Patient orientation with respect to downward direction (gravity)
  value112228('112228'),

  /// Display: Identifying Segment
  /// Definition: Distinguishes a part of a segmentation
  value112229('112229'),

  /// Display: Polyp stalk width
  /// Definition: The diameter of a polyp stalk measured perpendicular to the axis of the stalk
  value112232('112232'),

  /// Display: Distance from anus
  /// Definition: The length of the path following the centerline of the colon from the anus to the area of interest
  value112233('112233'),

  /// Display: Anatomic non-colon
  /// Definition: A location in the body that is outside the colon
  value112238('112238'),

  /// Display: C0 - Inadequate Study/Awaiting Prior Comparisons
  /// Definition: An inadequate study or a study that is awaiting prior comparisons. The study may have inadequate preparation and cannot exclude lesions greater than or equal to ten millimeters owing to presence of fluid or feces. The study may have inadequate insufflation where one or more colonic segments collapsed on both views. Based on "CT Colonography Reporting and Data System: A Consensus Proposal", Radiology, July 2005; 236:3-9
  value112240('112240'),

  /// Display: C1 - Normal Colon or Benign Lesion
  /// Definition: The study has a normal colon or benign lesion, with the recommendation to continue routine screening. The study has no visible abnormalities of the colon. The study has no polyps greater than six millimeters. The study may have lipoma, inverted diverticulum, or nonneoplastic findings, such as colonic diverticula. Based on "CT Colonography Reporting and Data System: A Consensus Proposal", Radiology, July 2005; 236:3-9
  value112241('112241'),

  /// Display: C2 - Intermediate Polyp or Indeterminate Finding
  /// Definition: The study has an intermediate polyp or indeterminate finding and surveillance or colonoscopy is recommended. There may be intermediate polyps between six and nine millimeters and there are less than three in number. The study may have an intermediate finding and cannot exclude a polyp that is greater than or equal to six millimeters in a technically adequate exam. Based on "CT Colonography Reporting and Data System: A Consensus Proposal", Radiology, July 2005; 236:3-9
  value112242('112242'),

  /// Display: C3 - Polyp, Possibly Advanced Adenoma
  /// Definition: The study has a polyp, possibly advanced adenoma, and a follow-up colonoscopy is recommended. The study has a polyp greater than or equal to ten millimeters or the study has three or more polyps that are each between six to nine millimeters. Based on "CT Colonography Reporting and Data System: A Consensus Proposal", Radiology, July 2005; 236:3-9
  value112243('112243'),

  /// Display: C4 - Colonic Mass, Likely Malignant
  /// Definition: The study has a colonic mass, likely malignant, and surgical consultation is recommended. The lesion compromises bowel lumen and demonstrates extracolonic invasion. Based on "CT Colonography Reporting and Data System: A Consensus Proposal", Radiology, July 2005; 236:3-9
  value112244('112244'),

  /// Display: ACR Guideline, Performance of Adult CT Colonography
  /// Definition: American College of Radiology Practice Guideline for the Performance of Computed Tomography (CT) Colonography in Adults. In: Practice Guidelines and Technical Standards.Reston, Va: American College of Radiology;2006:371-376
  value112248('112248'),

  /// Display: ACR Standard, CT medical physics performance monitoring
  /// Definition: American College of Radiology Technical Standard for Diagnostic Medical Physics Performance Monitoring of Computed Tomography (CT) Equipment. In: Practice Guidelines and Technical Standards.Reston, Va: American College of Radiology;2006:945-948
  value112249('112249'),

  /// Display: AP+45
  /// Definition: View Orientation Modifier indicates that the view orientation of the imaging plane is rotated +45° along the cranial-caudal axis
  value112300('112300'),

  /// Display: AP-45
  /// Definition: View Orientation Modifier indicates that the view orientation of the imaging plane is rotated -45° along the cranial-caudal axis
  value112301('112301'),

  /// Display: Anatomical axis of femur
  /// Definition: The axis following the shaft of the femur
  value112302('112302'),

  /// Display: Acetabular Center of Rotation
  /// Definition: Center of Rotation of the natural Acetabulum
  value112303('112303'),

  /// Display: Femur Head Center of Rotation
  /// Definition: Center of Rotation of the natural femur head
  value112304('112304'),

  /// Display: Acetabular Cup Shell
  /// Definition: Prosthetic component implanted into the acetabulum. Provides hold for the insert that is mounted inside the cup
  value112305('112305'),

  /// Display: Acetabular Cup Insert
  /// Definition: Prosthetic pelvic joint component. Inserted into the cup, takes in the femoral head replacement
  value112306('112306'),

  /// Display: Acetabular Cup Monoblock
  /// Definition: Prosthetic pelvic joint cup including insert
  value112307('112307'),

  /// Display: Femoral Head Ball Component
  /// Definition: Component for Femoral Head Prosthesis where the conic intake for the stem neck can be exchanged. Combined with a Femoral Head Cone Taper Component
  value112308('112308'),

  /// Display: Femoral Head Cone Taper Component
  /// Definition: Exchangeable neck intake for composite femoral head prosthesis. Combined with a Femoral Head Ball Component
  value112309('112309'),

  /// Display: Femoral Stem
  /// Definition: Prosthesis Implanted into the femoral bone to provide force transmission between joint replacement and bone. On the proximal end a conic neck holds the femoral head replacement
  value112310('112310'),

  /// Display: Femoral Stem Distal Component
  /// Definition: Distal half of a modular stem prosthesis system. Combined with a Stem Proximal Component
  value112311('112311'),

  /// Display: Femoral Stem Proximal Component
  /// Definition: Proximal half of a modular stem prosthesis system. Combined with a Stem Distal Component
  value112312('112312'),

  /// Display: Femoral Stem Component
  /// Definition: Stem prosthetic component with a modular insert for an exchangeable neck component. Combined with a Neck Component
  value112313('112313'),

  /// Display: Neck Component
  /// Definition: Prosthetic Neck to be combined with a Stem Component
  value112314('112314'),

  /// Display: Monoblock Stem
  /// Definition: Prosthetic Stem and Femoral Head in one piece
  value112315('112315'),

  /// Display: Prosthetic Shaft Augment
  /// Definition: A proximal attachment to the shaft used to compensate for bone deficiencies or bone loss
  value112316('112316'),

  /// Display: Femoral Head Resurfacing Component
  /// Definition: Artificial femur head surface needed for the partial replacement of the femoral head where only the surface is replaced
  value112317('112317'),

  /// Display: Pinning
  /// Definition: Fixation using a pin
  value112318('112318'),

  /// Display: Sewing
  /// Definition: Fixation sewing several objects together
  value112319('112319'),

  /// Display: Bolting
  /// Definition: Fixation using a bolt
  value112320('112320'),

  /// Display: Wedging
  /// Definition: Fixation due to forcing an object into a narrow space
  value112321('112321'),

  /// Display: Distal Centralizer
  /// Definition: Attachment to the distal end of a cemented stem assuring that the stem is in a central position inside the drilled femoral canal before cementation
  value112325('112325'),

  /// Display: Generic 2D Planning
  /// Definition: Planning by an unspecified 2D method
  value112340('112340'),

  /// Display: Generic 3D Planning
  /// Definition: Planning by an unspecified 3D method
  value112341('112341'),

  /// Display: Generic Planning for Hip Replacement
  /// Definition: Planning of a Hip Replacement, by an unspecified method
  value112342('112342'),

  /// Display: Generic Planning for Knee Replacement
  /// Definition: Planning of Knee Replacement, by an unspecified method
  value112343('112343'),

  /// Display: Müller Method Planning for Hip Replacement
  /// Definition: Planning of Hip Replacement according to the procedure of M. E. Müller [Eggli et. al.1998]
  value112344('112344'),

  /// Display: Implantation Plan
  /// Definition: A Report containing the results of an Implantation Planning Activity
  value112345('112345'),

  /// Display: Selected Implant Component
  /// Definition: A selection of one Implant Component
  value112346('112346'),

  /// Display: Component ID
  /// Definition: Identification ID of an Implant Component
  value112347('112347'),

  /// Display: Implant Template
  /// Definition: An implant template describing the properties (2D/3D geometry and other data) of one Implant Component
  value112348('112348'),

  /// Display: Component Connection
  /// Definition: A connection of two Connected Implantation Plan Components
  value112350('112350'),

  /// Display: Mating Feature Set ID
  /// Definition: ID of a Mating Feature Set in an Implant Component
  value112351('112351'),

  /// Display: Mating Feature ID
  /// Definition: ID of the Mating Feature in a Mating Feature Set in an Implant Component
  value112352('112352'),

  /// Display: Spatial Registration
  /// Definition: The Spatial Registration of one or more Implant Components
  value112353('112353'),

  /// Display: Patient Image
  /// Definition: Patient Images used for an implantation planning activity
  value112354('112354'),

  /// Display: Assembly
  /// Definition: A collection of Component Connections of Implant Components
  value112355('112355'),

  /// Display: User Selected Fiducial
  /// Definition: Fiducials that are selected by the user and may or may not belong to anatomical landmarks
  value112356('112356'),

  /// Display: Derived Fiducial
  /// Definition: Fiducials that represent geometric characteristics, such as center of rotation, and are derived from other fiducials
  value112357('112357'),

  /// Display: Information used for planning
  /// Definition: All parameters and data that were used for the planning activity
  value112358('112358'),

  /// Display: Supporting Information
  /// Definition: A description of the plan as encapsulated PDF SOP Instance
  value112359('112359'),

  /// Display: Implant Component List
  /// Definition: A list of all Implant Components selected for an implantation
  value112360('112360'),

  /// Display: Patient Data Used During Planning
  /// Definition: Reference to objects containing patient data that is used for planning
  value112361('112361'),

  /// Display: Degrees of Freedom Specification
  /// Definition: A specification of the values from one or more Degrees of Freedom
  value112362('112362'),

  /// Display: Degree of Freedom ID
  /// Definition: ID of one Degree of Freedom
  value112363('112363'),

  /// Display: Related Patient Data Not Used During Planning
  /// Definition: Reference to objects containing patient data that were not used for planning but are somehow related
  value112364('112364'),

  /// Display: Related Implantation Reports
  /// Definition: Implantation Reports that are somehow related; e.g. contemporaneous implantations that are independent
  value112365('112365'),

  /// Display: Implant Assembly Template
  /// Definition: Implant Assembly Template
  value112366('112366'),

  /// Display: Planning Information for Intraoperative Usage
  /// Definition: Information that is intended to be used intra-operatively
  value112367('112367'),

  /// Display: Implantation Patient Positioning
  /// Definition: Position of the patient on the operating room table
  value112368('112368'),

  /// Display: Fiducial Intent
  /// Definition: Intended use of the fiducial
  value112369('112369'),

  /// Display: Component Type
  /// Definition: Type of an Implant Component
  value112370('112370'),

  /// Display: Manufacturer Implant Template
  /// Definition: Implant Template released by the Manufacturer
  value112371('112371'),

  /// Display: Derived Planning Images
  /// Definition: Images that are created by a planning application
  value112372('112372'),

  /// Display: Other Derived Planning Data
  /// Definition: Data that is created by a planning application
  value112373('112373'),

  /// Display: Connected Implantation Plan Component
  /// Definition: One Implant Component that is connected to another Implant Component
  value112374('112374'),

  /// Display: Planning Method
  /// Definition: The method used for planning
  value112375('112375'),

  /// Display: Degree of Freedom Exact Translational Value
  /// Definition: Defines the exact value that was planned for translation
  value112376('112376'),

  /// Display: Degree of Freedom Minimum Translational Value
  /// Definition: Defines the minimum value that was planned for translation
  value112377('112377'),

  /// Display: Degree of Freedom Maximum Translational Value
  /// Definition: Defines the maximum value that was planned for translation
  value112378('112378'),

  /// Display: Degree of Freedom Exact Rotational Translation Value
  /// Definition: Defines the exact value that was planned for rotation
  value112379('112379'),

  /// Display: Degree of Freedom Minimum Rotational Value
  /// Definition: Defines the minimum value that was planned for rotation
  value112380('112380'),

  /// Display: Degree of Freedom Maximum Rotational Value
  /// Definition: Defines the maximum value that was planned for rotation
  value112381('112381'),

  /// Display: Peri-operative Photographic Imaging
  /// Definition: Procedure step protocol for photographic imaging of surgical procedures, including photography of specimens collected
  value112700('112700'),

  /// Display: Gross Specimen Imaging
  /// Definition: Procedure step protocol for imaging gross specimens, typically with a photographic camera (modality XC), and planning further dissection
  value112701('112701'),

  /// Display: Slide Microscopy
  /// Definition: Procedure step protocol for imaging slide specimens
  value112702('112702'),

  /// Display: Whole Slide Imaging
  /// Definition: Procedure step protocol for imaging slide specimens using a whole slide scanner
  value112703('112703'),

  /// Display: WSI 20X RGB
  /// Definition: Procedure step protocol for imaging slide specimens using a whole slide scanner with a 20X nominal objective lens, in full color, with a single imaging focal plane across the image
  value112704('112704'),

  /// Display: WSI 40X RGB
  /// Definition: Procedure step protocol for imaging slide specimens using a whole slide scanner with a 40X nominal objective lens, in full color, with a single imaging focal plane across the image
  value112705('112705'),

  /// Display: Illumination Method
  /// Definition: Technique of illuminating specimen
  value112706('112706'),

  /// Display: Number of focal planes
  /// Definition: Number of focal planes for a microscopy image acquisition
  value112707('112707'),

  /// Display: Focal plane Z offset
  /// Definition: Nominal distance above a reference plane (typically a slide glass substrate top surface) of the focal plane
  value112708('112708'),

  /// Display: Magnification selection
  /// Definition: Microscope magnification based on nominal objective lens power
  value112709('112709'),

  /// Display: Illumination wavelength
  /// Definition: Nominal center wavelength for an imaging spectral band
  value112710('112710'),

  /// Display: Illumination spectral band
  /// Definition: Name (coded) for an imaging spectral band
  value112711('112711'),

  /// Display: Optical filter type
  /// Definition: Type of filter inserted into the optical imaging path
  value112712('112712'),

  /// Display: Tissue selection method
  /// Definition: Technique for identifying tissue to be imaged versus area of slide not to be imaged
  value112713('112713'),

  /// Display: Multiple planes
  /// Definition: Imaging performed at multiple imaging (focal) planes
  value112714('112714'),

  /// Display: 5X
  /// Definition: Nominal 5 power objective lens, resulting in a digital image at approximately 2 um/pixel spacing
  value112715('112715'),

  /// Display: 10X
  /// Definition: Nominal 10 power objective lens, resulting in a digital image at approximately 1 um/pixel spacing
  value112716('112716'),

  /// Display: 20X
  /// Definition: Nominal 20 power microscope objective lens, resulting in a digital image at approximately 0.5 um/pixel spacing
  value112717('112717'),

  /// Display: 40X
  /// Definition: Nominal 40 power microscope objective lens, with a combined condenser and objective lens numerical aperture of approximately 1.3, resulting in a digital image at approximately 0.25 um/pixel spacing
  value112718('112718'),

  /// Display: Nominal empty tile suppression
  /// Definition: Equipment-specific nominal or default method for identifying tiles without tissue imaged for suppression from inclusion in image object
  value112719('112719'),

  /// Display: High threshold empty tile suppression
  /// Definition: Equipment-specific high threshold method for identifying tiles without tissue imaged for suppression from inclusion in image object
  value112720('112720'),

  /// Display: No empty tile suppression
  /// Definition: Tiles without tissue imaged are not suppressed from inclusion in image object
  value112721('112721'),

  /// Display: Of Interest
  /// Definition: Of Interest
  value113000('113000'),

  /// Display: Rejected for Quality Reasons
  /// Definition: Rejected for Quality Reasons
  value113001('113001'),

  /// Display: For Referring Provider
  /// Definition: For Referring Provider
  value113002('113002'),

  /// Display: For Surgery
  /// Definition: For Surgery
  value113003('113003'),

  /// Display: For Teaching
  /// Definition: For Teaching
  value113004('113004'),

  /// Display: For Conference
  /// Definition: For Conference
  value113005('113005'),

  /// Display: For Therapy
  /// Definition: For Therapy
  value113006('113006'),

  /// Display: For Patient
  /// Definition: For Patient
  value113007('113007'),

  /// Display: For Peer Review
  /// Definition: For Peer Review
  value113008('113008'),

  /// Display: For Research
  /// Definition: For Research
  value113009('113009'),

  /// Display: Quality Issue
  /// Definition: Quality Issue
  value113010('113010'),

  /// Display: Document Title Modifier
  /// Definition: Document Title Modifier
  value113011('113011'),

  /// Display: Key Object Description
  /// Definition: Key Object Description
  value113012('113012'),

  /// Display: Best In Set
  /// Definition: A selection that represents the "best" chosen from a larger set of items; e.g. the best images within a Study or Series. The criteria against which "best" is measured is not defined. Contrast this with the more specific term "Best illustration of finding"
  value113013('113013'),

  /// Display: Study
  /// Definition: A study is a collection of one or more series of medical images, presentation states, and/or SR documents that are logically related for the purpose of diagnosing a patient. A study may include composite instances that are created by a single modality, multiple modalities or by multiple devices of the same modality. [From Section A.1.2.2 "Study IE" in PS3.3 ]
  value113014('113014'),

  /// Display: Series
  /// Definition: A distinct logical set used to group composite instances. All instances within a Series are of the same modality, in the same Frame of Reference (if any), and created by the same equipment. [See Section A.1.2.3 "Series IE" in PS3.3 ]
  value113015('113015'),

  /// Display: Performed Procedure Step
  /// Definition: An arbitrarily defined unit of service that has actually been performed (not just scheduled). [From Section 7.3.1.9 "Modality Performed Procedure Step" in PS3.3 ]
  value113016('113016'),

  /// Display: Stage-View
  /// Definition: An image or set of images illustrating a specific stage (phase in a stress echo exam protocol) and view (combination of the transducer position and orientation at the time of image acquisition)
  value113017('113017'),

  /// Display: For Printing
  /// Definition: For Printing
  value113018('113018'),

  /// Display: For Report Attachment
  /// Definition: Selection of information objects for attachment to the clinical report of the Current Requested Procedure
  value113020('113020'),

  /// Display: For Litigation
  /// Definition: List of objects that are related to litigation and should be specially handled; e.g. may apply if a complaint has been received regarding a patient, or a specific set of images has been the subject of a subpoena, and needs to be sequestered or excluded from automatic purging according to retention policy
  value113021('113021'),

  /// Display: Double exposure
  /// Definition: Double exposure
  value113026('113026'),

  /// Display: Manifest
  /// Definition: A list of objects that have been exported out of one organizational domain into another domain. Typically, the first domain has no direct control over what the second domain will do with the objects
  value113030('113030'),

  /// Display: Signed Manifest
  /// Definition: A signed list of objects that have been exported out of one organizational domain into another domain, referenced securely with either Digital Signatures or MACs. Typically, the first domain has no direct control over what the second domain will do with the objects
  value113031('113031'),

  /// Display: Complete Study Content
  /// Definition: The list of objects that constitute a study at the time that the list was created
  value113032('113032'),

  /// Display: Signed Complete Study Content
  /// Definition: The signed list of objects that constitute a study at the time that the list was created, referenced securely with either Digital Signatures or MACs
  value113033('113033'),

  /// Display: Complete Acquisition Content
  /// Definition: The list of objects that were generated in a single procedure step
  value113034('113034'),

  /// Display: Signed Complete Acquisition Content
  /// Definition: The signed list of objects that were generated in a single procedure step, referenced securely with either Digital Signatures or MACs
  value113035('113035'),

  /// Display: Group of Frames for Display
  /// Definition: A list of frames or single-frame or entire multi-frame instances that together constitute a set for some purpose, such as might be displayed together in the same viewport, as distinct from another set that might be displayed in a separate viewport
  value113036('113036'),

  /// Display: Rejected for Patient Safety Reasons
  /// Definition: List of objects whose use is potentially harmful to the patient; e.g. an improperly labeled image could lead to dangerous surgical decisions
  value113037('113037'),

  /// Display: Incorrect Modality Worklist Entry
  /// Definition: List of objects that were acquired using an incorrect modality worklist entry, and that should not be used, since they may be incorrectly identified
  value113038('113038'),

  /// Display: Data Retention Policy Expired
  /// Definition: List of objects that have expired according to a defined data retention policy
  value113039('113039'),

  /// Display: Lossy Compression
  /// Definition: Lossy compression has been applied to an image
  value113040('113040'),

  /// Display: Apparent Diffusion Coefficient
  /// Definition: Values are derived by calculation of the apparent diffusion coefficient
  value113041('113041'),

  /// Display: Pixel by pixel addition
  /// Definition: Values are derived by the pixel by pixel addition of two images
  value113042('113042'),

  /// Display: Diffusion weighted
  /// Definition: Values are derived by calculation of the diffusion weighting
  value113043('113043'),

  /// Display: Diffusion Anisotropy
  /// Definition: Values are derived by calculation of the diffusion anisotropy
  value113044('113044'),

  /// Display: Diffusion Attenuated
  /// Definition: Values are derived by calculation of the diffusion attenuation
  value113045('113045'),

  /// Display: Pixel by pixel division
  /// Definition: Values are derived by the pixel by pixel division of two images
  value113046('113046'),

  /// Display: Pixel by pixel mask
  /// Definition: Values are derived by the pixel by pixel masking of one image by another
  value113047('113047'),

  /// Display: Pixel by pixel Maximum
  /// Definition: Values are derived by calculating the pixel by pixel maximum of two or more images
  value113048('113048'),

  /// Display: Pixel by pixel mean
  /// Definition: Values are derived by calculating the pixel by pixel mean of two or more images
  value113049('113049'),

  /// Display: Metabolite Maps from spectroscopy data
  /// Definition: Values are derived by calculating from spectroscopy data pixel values localized in two dimensional space based on the concentration of specific metabolites (i.e, at specific frequencies)
  value113050('113050'),

  /// Display: Pixel by pixel Minimum
  /// Definition: Values are derived by calculating the pixel by pixel minimum of two or more images
  value113051('113051'),

  /// Display: Mean Transit Time
  /// Definition: The time required for blood to pass through a region of tissue
  value113052('113052'),

  /// Display: Pixel by pixel multiplication
  /// Definition: Values are derived by the pixel by pixel multiplication of two images
  value113053('113053'),

  /// Display: Negative Enhancement Integral
  /// Definition: Values are derived by calculating negative enhancement integral values
  value113054('113054'),

  /// Display: Regional Cerebral Blood Flow
  /// Definition: The flow rate of blood perfusing a region of the brain as volume per mass per unit of time
  value113055('113055'),

  /// Display: Regional Cerebral Blood Volume
  /// Definition: The volume of blood perfusing a region of brain as volume per mass
  value113056('113056'),

  /// Display: R-Coefficient
  /// Definition: Correlation Coefficient, r
  value113057('113057'),

  /// Display: Proton Density
  /// Definition: Values are derived by calculating proton density values
  value113058('113058'),

  /// Display: Signal Change
  /// Definition: Values are derived by calculating signal change values
  value113059('113059'),

  /// Display: Signal to Noise
  /// Definition: Values are derived by calculating the signal to noise ratio
  value113060('113060'),

  /// Display: Standard Deviation
  /// Definition: Values are derived by calculating the standard deviation of two or more images
  value113061('113061'),

  /// Display: Pixel by pixel subtraction
  /// Definition: Values are derived by the pixel by pixel subtraction of two images
  value113062('113062'),

  /// Display: T1
  /// Definition: Values are derived by calculating T1 values
  value113063('113063'),

  /// Display: T2*
  /// Definition: Values are derived by calculating T2* values
  value113064('113064'),

  /// Display: T2
  /// Definition: Values are derived by calculating T2 values
  value113065('113065'),

  /// Display: Time Course of Signal
  /// Definition: Values are derived by calculating values based on the time course of signal
  value113066('113066'),

  /// Display: Temperature encoded
  /// Definition: Values are derived by calculating values based on temperature encoding
  value113067('113067'),

  /// Display: Student's T-Test
  /// Definition: Values are derived by calculating the value of the Student's T-Test statistic from multiple image samples
  value113068('113068'),

  /// Display: Time To Peak
  /// Definition: The time from the start of the contrast agent injection to the maximum enhancement value
  value113069('113069'),

  /// Display: Velocity encoded
  /// Definition: Values are derived by calculating values based on velocity encoded; e.g. phase contrast
  value113070('113070'),

  /// Display: Z-Score
  /// Definition: Values are derived by calculating the value of the Z-Score statistic from multiple image samples
  value113071('113071'),

  /// Display: Multiplanar reformatting
  /// Definition: Values are derived by reformatting in a flat plane other than that originally acquired
  value113072('113072'),

  /// Display: Curved multiplanar reformatting
  /// Definition: Values are derived by reformatting in a curve plane other than that originally acquired
  value113073('113073'),

  /// Display: Volume rendering
  /// Definition: Values are derived by volume rendering of acquired data
  value113074('113074'),

  /// Display: Surface rendering
  /// Definition: Values are derived by surface rendering of acquired data
  value113075('113075'),

  /// Display: Segmentation
  /// Definition: Values are derived by segmentation (classification into tissue types) of acquired data
  value113076('113076'),

  /// Display: Volume editing
  /// Definition: Values are derived by selectively editing acquired data (removing values from the volume), such as in order to remove obscuring structures or noise
  value113077('113077'),

  /// Display: Maximum intensity projection
  /// Definition: Values are derived by maximum intensity projection of acquired data
  value113078('113078'),

  /// Display: Minimum intensity projection
  /// Definition: Values are derived by minimum intensity projection of acquired data
  value113079('113079'),

  /// Display: Glutamate and glutamine
  /// Definition: For single-proton MR spectroscopy, the resonance peak corresponding to glutamate and glutamine
  value113080('113080'),

  /// Display: Choline/Creatine Ratio
  /// Definition: For single-proton MR spectroscopy, the ratio between the Choline and Creatine resonance peaks
  value113081('113081'),

  /// Display: N-acetylaspartate /Creatine Ratio
  /// Definition: For single-proton MR spectroscopy, the ratio between the N-acetylaspartate and Creatine resonance peaks
  value113082('113082'),

  /// Display: N-acetylaspartate /Choline Ratio
  /// Definition: For single-proton MR spectroscopy, the ratio between the N-acetylaspartate and Choline resonance peaks
  value113083('113083'),

  /// Display: Spatial resampling
  /// Definition: Values are derived by spatial resampling of acquired data
  value113085('113085'),

  /// Display: Edge enhancement
  /// Definition: Values are derived by edge enhancement
  value113086('113086'),

  /// Display: Smoothing
  /// Definition: Values are derived by smoothing
  value113087('113087'),

  /// Display: Gaussian blur
  /// Definition: Values are derived by Gaussian blurring
  value113088('113088'),

  /// Display: Unsharp mask
  /// Definition: Values are derived by unsharp masking
  value113089('113089'),

  /// Display: Image stitching
  /// Definition: Values are derived by stitching two or more images together
  value113090('113090'),

  /// Display: Spatially-related frames extracted from the volume
  /// Definition: Spatially-related frames in this image are representative frames from the referenced 3D volume data set
  value113091('113091'),

  /// Display: Temporally-related frames extracted from the set of volumes
  /// Definition: Temporally-related frames in this image are representative frames from the referenced 3D volume data set
  value113092('113092'),

  /// Display: Polar to Rectangular Scan Conversion
  /// Definition: Conversion of a polar coordinate image to rectangular (Cartesian) coordinate image
  value113093('113093'),

  /// Display: Creatine and Choline
  /// Definition: For single-proton MR spectroscopy, the resonance peak corresponding to creatine and choline
  value113094('113094'),

  /// Display: Lipid and Lactate
  /// Definition: For single-proton MR spectroscopy, the resonance peak corresponding to lipid and lactate
  value113095('113095'),

  /// Display: Creatine+Choline/ Citrate Ratio
  /// Definition: For single-proton MR spectroscopy, the ratio between the Choline and Creatine resonance peak and the Citrate resonance peak
  value113096('113096'),

  /// Display: Multi-energy proportional weighting
  /// Definition: Image pixels created through proportional weighting of multiple acquisitions at distinct X-Ray energies
  value113097('113097'),

  /// Display: Basic Application Confidentiality Profile
  /// Definition: De-identification using a profile defined in PS3.15 that requires removing all information related to the identity and demographic characteristics of the patient, any responsible parties or family members, any personnel involved in the procedure, the organizations involved in ordering or performing the procedure, additional information that could be used to match instances if given access to the originals, such as UIDs, dates and times, and private attributes, when that information is present in the non-Pixel Data Attributes, including graphics or overlays
  value113100('113100'),

  /// Display: Clean Pixel Data Option
  /// Definition: Additional de-identification according to an option defined in PS3.15 that requires any information burned in to the Pixel Data corresponding to the Attribute information specified to be removed by the Profile and any other Options specified also be removed
  value113101('113101'),

  /// Display: Clean Recognizable Visual Features Option
  /// Definition: Additional de-identification according to an option defined in PS3.15 that requires that sufficient removal or distortion of the Pixel Data shall be applied to prevent recognition of an individual from the instances themselves or a reconstruction of a set of instances
  value113102('113102'),

  /// Display: Clean Graphics Option
  /// Definition: Additional de-identification according to an option defined in PS3.15 that requires that any information encoded in graphics, text annotations or overlays corresponding to the Attribute information specified to be removed by the Profile and any other Options specified also be removed
  value113103('113103'),

  /// Display: Clean Structured Content Option
  /// Definition: Additional de-identification according to an option defined in PS3.15 that requires that any information encoded in SR Content Items or Acquisition Context Sequence Items corresponding to the Attribute information specified to be removed by the Profile and any other Options specified also be removed
  value113104('113104'),

  /// Display: Clean Descriptors Option
  /// Definition: Additional de-identification according to an option defined in PS3.15 that requires that any information that is embedded in text or string Attributes corresponding to the Attribute information specified to be removed by the Profile and any other Options specified also be removed
  value113105('113105'),

  /// Display: Retain Longitudinal Temporal Information Full Dates Option
  /// Definition: Retention of information that would otherwise be removed during de-identification according to an option defined in PS3.15 that requires that any dates and times be retained,
  value113106('113106'),

  /// Display: Retain Longitudinal Temporal Information Modified Dates Option
  /// Definition: Retention of information that would otherwise be removed during de-identification according to an option defined in PS3.15 that requires that any dates and times be modified in a manner that preserves temporal relationships; e.g. Study Date and Time
  value113107('113107'),

  /// Display: Retain Patient Characteristics Option
  /// Definition: Retention of information that would otherwise be removed during de-identification according to an option defined in PS3.15 that requires that any physical characteristics of the patient, which are descriptive rather than identifying information per se, be retained; e.g. Patient's Age, Sex, Size (height) and Weight
  value113108('113108'),

  /// Display: Retain Device Identity Option
  /// Definition: Retention of information that would otherwise be removed during de-identification according to an option defined in PS3.15 that requires that any information that identifies a device be retained; e.g. Device Serial Number
  value113109('113109'),

  /// Display: Retain UIDs Option
  /// Definition: Retention of information that would otherwise be removed during de-identification according to an option defined in PS3.15 that requires that UIDs be retained; e.g. SOP Instance UID
  value113110('113110'),

  /// Display: Retain Safe Private Option
  /// Definition: Retention of information that would otherwise be removed during de-identification according to an option defined in PS3.15 that requires that private attributes that are known not to contain identity information be retained; e.g. private SUV scale factor
  value113111('113111'),

  /// Display: Radiopharmaceutical Radiation Dose Report
  /// Definition: The procedure report is a Radiopharmaceutical Radiation Dose report
  value113500('113500'),

  /// Display: Radiopharmaceutical Administration
  /// Definition: Information pertaining to the administration of a radiopharmaceutical
  value113502('113502'),

  /// Display: Radiopharmaceutical Administration Event UID
  /// Definition: Unique identification of a single radiopharmaceutical administration event
  value113503('113503'),

  /// Display: Intravenous Extravasation Symptoms
  /// Definition: Initial signs or symptoms of extravasation
  value113505('113505'),

  /// Display: Estimated Extravasation Activity
  /// Definition: The estimated percentage of administered activity lost at the injection site. The estimation includes extravasation, paravenous administration and leakage at the injection site
  value113506('113506'),

  /// Display: Administered activity
  /// Definition: The calculated activity at the Radiopharmaceutical Start Time when the radiopharmaceutical is administered to the patient. The residual activity (i.e. radiopharmaceutical not administered) , if measured, is reflected in the calculated value. The estimated extravasation is not reflected in the calculated value
  value113507('113507'),

  /// Display: Pre-Administration Measured Activity
  /// Definition: Radioactivity measurement of radiopharmaceutical before or during the administration
  value113508('113508'),

  /// Display: Post-Administration Measured Activity
  /// Definition: Radioactivity measurement of radiopharmaceutical after the administration
  value113509('113509'),

  /// Display: Drug Product Identifier
  /// Definition: Registered drug establishment code for product, coding scheme example is NDC or RxNorm
  value113510('113510'),

  /// Display: Radiopharmaceutical Dispense Unit Identifier
  /// Definition: The human readable identification of the specific radiopharmaceutical dispensed quantity or dose ("dose" as unit of medication delivery, not radiation dose measure) to be administered to the patient
  value113511('113511'),

  /// Display: Radiopharmaceutical Lot Identifier
  /// Definition: Identifies the vial, batch or lot number from which the individual dispense radiopharmaceutical quantity (dose) is produced. The Radiopharmaceutical Dispense Unit Identifier records the identification for each individual dose
  value113512('113512'),

  /// Display: Reagent Vial Identifier
  /// Definition: Identifies the lot or unit serial number for the reagent component for the radiopharmaceutical
  value113513('113513'),

  /// Display: Radionuclide Vial Identifier
  /// Definition: Identifies the lot or unit serial number for the radionuclide component for the radiopharmaceutical
  value113514('113514'),

  /// Display: Prescription Identifier
  /// Definition: Administered Product's Prescription Number
  value113516('113516'),

  /// Display: Organ Dose Information
  /// Definition: Information pertaining to the estimated absorbed radiation dose to an organ
  value113517('113517'),

  /// Display: Organ Dose
  /// Definition: The absorbed radiation dose to organ
  value113518('113518'),

  /// Display: MIRD Pamphlet 1
  /// Definition: Reference authority MIRD Pamphlet No.1 (rev) ,Society of Nuclear Medicine, 1976
  value113520('113520'),

  /// Display: ICRP Publication 53
  /// Definition: Reference authority ICRP, 1988. Radiation Dose to Patients from Radiopharmaceuticals. ICRP Publication 53. Ann. ICRP 18 (1-4)
  value113521('113521'),

  /// Display: ICRP Publication 80
  /// Definition: Reference authority ICRP, 1998. Radiation Dose to Patients from Radiopharmaceuticals (Addendum to ICRP Publication 53). ICRP Publication 80. Ann. ICRP 28 (3)
  value113522('113522'),

  /// Display: ICRP Publication 106
  /// Definition: Reference authority ICRP, 2008. Radiation Dose to Patients from Radiopharmaceuticals - Addendum 3 to ICRP Publication 53. ICRP Publication 106. Ann. ICRP 38 (1-2)
  value113523('113523'),

  /// Display: MIRDOSE
  /// Definition: Reference authority Stabin MG, Sparks RB, Crowe E (1994) MIRDOSE: personal computer software for internal dose assessment in nuclear medicine [Computer program]
  value113526('113526'),

  /// Display: OLINDA-EXM
  /// Definition: Reference authority Stabin MG, Sparks RB, Crowe E (2005) OLINDA/EXM: The Second-Generation Personal Computer Software for Internal Dose Assessment in Nuclear Medicine [Computer program]
  value113527('113527'),

  /// Display: Package Insert
  /// Definition: Reference authority The reported organ dose is based on radiopharmaceutical's package insert
  value113528('113528'),

  /// Display: Institutionally Approved Estimates
  /// Definition: Reference authority The reported organ dose is based on Institutionally approved estimates from the Radioactive Drug Research Committee (RDRC) of the institution itself
  value113529('113529'),

  /// Display: Investigational New Drug
  /// Definition: Reference authority The reported organ dose is based on an Investigation new drug
  value113530('113530'),

  /// Display: Activity Measurement Device
  /// Definition: The type of device that performed the activity measurement
  value113540('113540'),

  /// Display: Dose Calibrator
  /// Definition: The device that measures the radiation activity of the radiopharmaceutical
  value113541('113541'),

  /// Display: Infusion System
  /// Definition: Radiopharmaceutical Infusion System
  value113542('113542'),

  /// Display: Generator
  /// Definition: Radioisotope Generator
  value113543('113543'),

  /// Display: Fasting Duration
  /// Definition: The number hours the patient has gone without food
  value113550('113550'),

  /// Display: Hydration Volume
  /// Definition: The amount of fluids the patient has consumed before the procedure
  value113551('113551'),

  /// Display: Recent Physical Activity
  /// Definition: A description of physical activity the patient performed before the start of the procedure, such as that which may affect imaging agent biodistribution
  value113552('113552'),

  /// Display: Acute unilateral renal blockage
  /// Definition: Blockage in one of the tubes (ureters) that drain urine from the kidneys
  value113560('113560'),

  /// Display: Low Thyroid Uptake
  /// Definition: 5% or less Thyroid Uptake of Iodine
  value113561('113561'),

  /// Display: High Thyroid Uptake
  /// Definition: 25% or higher Thyroid Uptake of Iodine
  value113562('113562'),

  /// Display: Severely Jaundiced
  /// Definition: The patient exhibits symptoms severe of jaundice and/or has a Bilirubin >10 mg/dL
  value113563('113563'),

  /// Display: Extravasation visible in image
  /// Definition: Extravasation or paravenous administration of the product is visible in the images
  value113568('113568'),

  /// Display: Cockroft-Gault Formula estimation of GFR
  /// Definition: The measurement method of the Glomerular Filtration Rate is Cockroft-Gault Formula
  value113570('113570'),

  /// Display: CKD-EPI Formula estimation of GFR
  /// Definition: The measurement method of the Glomerular Filtration Rate is CKD-EPI Formula
  value113571('113571'),

  /// Display: Glomerular Filtration Rate (MDRD)
  /// Definition: The measurement method of the Glomerular Filtration Rate is MDRD
  value113572('113572'),

  /// Display: Glomerular Filtration Rate non-black (MDRD)
  /// Definition: The measurement method of the Glomerular Filtration Rate is non-black MDRD
  value113573('113573'),

  /// Display: Glomerular Filtration Rate black (MDRD)
  /// Definition: The measurement method of the Glomerular Filtration Rate is black (MDRD)
  value113574('113574'),

  /// Display: Glomerular Filtration Rate female (MDRD)
  /// Definition: The measurement method of the Glomerular Filtration Rate is female (MDRD)
  value113575('113575'),

  /// Display: Glomerular Filtration Rate Cystatin-based formula
  /// Definition: The measurement method of the Glomerular Filtration Rate is Cystatin-based formula
  value113576('113576'),

  /// Display: Glomerular Filtration Rate Creatinine-based formula (Schwartz)
  /// Definition: The measurement method of the Glomerular Filtration Rate is Creatinine-based formula (Schwartz)
  value113577('113577'),

  /// Display: Small: < 32.0 cm lateral thickness
  /// Definition: Small body thickness for calcium scoring adjustment. Lateral thickness is measured from skin-to-skin, at the level of the proximal ascending aorta, from an A/P localizer image
  value113601('113601'),

  /// Display: Medium: 32.0-38.0 cm lateral thickness
  /// Definition: Medium body thickness for calcium scoring adjustment. Lateral thickness is measured from skin-to-skin, at the level of the proximal ascending aorta, from an A/P localizer image
  value113602('113602'),

  /// Display: Large: > 38.0 cm lateral thickness
  /// Definition: Large body thickness for calcium scoring adjustment. Lateral thickness is measured from skin-to-skin, at the level of the proximal ascending aorta, from an A/P localizer image
  value113603('113603'),

  /// Display: Irradiation Event Label
  /// Definition: A human-readable label identifying an irradiation event
  value113605('113605'),

  /// Display: Label Type
  /// Definition: The type of a human-readable label
  value113606('113606'),

  /// Display: Series Number
  /// Definition: A number that identifies a Series. Corresponds to (0020,0011) in PS3.3
  value113607('113607'),

  /// Display: Acquisition Number
  /// Definition: A number that identifies an Acquisition. Corresponds to (0020,0012) in PS3.3
  value113608('113608'),

  /// Display: Instance Number
  /// Definition: A number that identifies an Instance. Corresponds to (0020,0013) in PS3.3
  value113609('113609'),

  /// Display: Stationary Acquisition
  /// Definition: Acquisition where the X-Ray source does not move in relation to the patient
  value113611('113611'),

  /// Display: Stepping Acquisition
  /// Definition: Acquisition where the X-Ray source moves laterally in relation to the patient
  value113612('113612'),

  /// Display: Rotational Acquisition
  /// Definition: Acquisition where the X-Ray source moves angularly in relation to the patient
  value113613('113613'),

  /// Display: Plane A
  /// Definition: Primary plane of a Biplane acquisition equipment
  value113620('113620'),

  /// Display: Plane B
  /// Definition: Secondary plane of a Biplane acquisition equipment
  value113621('113621'),

  /// Display: Single Plane
  /// Definition: Single plane acquisition equipment
  value113622('113622'),

  /// Display: Continuous
  /// Definition: Continuous X-Ray radiation is applied during an irradiation event
  value113630('113630'),

  /// Display: Pulsed
  /// Definition: Pulsed X-Ray radiation is applied during an irradiation event
  value113631('113631'),

  /// Display: Strip filter
  /// Definition: Filter with uniform thickness
  value113650('113650'),

  /// Display: Wedge filter
  /// Definition: Filter with variation in thickness from one edge to the opposite edge
  value113651('113651'),

  /// Display: Butterfly filter
  /// Definition: Filter with two triangular sections
  value113652('113652'),

  /// Display: Flat filter
  /// Definition: Filter with uniform thickness that is for spectral filtering only; e.g. filter out low energy portion of the X-Ray that would only contribute to skin dose, but not to image
  value113653('113653'),

  /// Display: Outline of lobulations
  /// Definition: A polyline defining the outline of a lobulated finding
  value113661('113661'),

  /// Display: Inner limits of fuzzy margin
  /// Definition: A polyline defining the inner limits of a finding with fuzzy margin
  value113662('113662'),

  /// Display: Outer limits of fuzzy margin
  /// Definition: A polyline defining the outer limits of a finding with fuzzy margin
  value113663('113663'),

  /// Display: Outline of spiculations
  /// Definition: A polyline defining the outline of the spiculations of a finding
  value113664('113664'),

  /// Display: Linear spiculation
  /// Definition: A polyline segment graphically indicating the location and direction of a spiculation of a finding
  value113665('113665'),

  /// Display: Pixelated spiculations
  /// Definition: A collection of points indicating the pixel locations of the spiculations of a finding
  value113666('113666'),

  /// Display: Orthogonal location arc
  /// Definition: Connected line segments indicating the center of location of a finding on an orthogonal view
  value113669('113669'),

  /// Display: Orthogonal location arc inner margin
  /// Definition: Connected line segments indicating the inner margin of the location of a finding on an orthogonal view
  value113670('113670'),

  /// Display: Orthogonal location arc outer margin
  /// Definition: Connected line segments indicating the outer location of a finding on an orthogonal view
  value113671('113671'),

  /// Display: Quality Control Intent
  /// Definition: This procedure is intended to gather data that is used for calibration or other quality control purposes
  value113680('113680'),

  /// Display: Phantom
  /// Definition: An artificial subject of an imaging study
  value113681('113681'),

  /// Display: ACR Accreditation Phantom - CT
  /// Definition: A phantom acceptable for the ACR Computed Tomography Accreditation program
  value113682('113682'),

  /// Display: ACR Accreditation Phantom - MR
  /// Definition: A phantom acceptable for the ACR Magnetic Resonance Imaging Accreditation program
  value113683('113683'),

  /// Display: ACR Accreditation Phantom - Mammography
  /// Definition: A phantom acceptable for the ACR Mammography Accreditation program
  value113684('113684'),

  /// Display: ACR Accreditation Phantom - Stereotactic Breast Biopsy
  /// Definition: A phantom acceptable for the ACR Stereotactic Breast Biopsy Accreditation program
  value113685('113685'),

  /// Display: ACR Accreditation Phantom - ECT
  /// Definition: A phantom acceptable for the ACR SPECT Accreditation program (but not for PET)
  value113686('113686'),

  /// Display: ACR Accreditation Phantom - PET
  /// Definition: A phantom acceptable for the ACR PET Accreditation program (but not for SPECT)
  value113687('113687'),

  /// Display: ACR Accreditation Phantom - ECT/PET
  /// Definition: A SPECT phantom with a PET faceplate acceptable for both the ACR SPECT and PET Accreditation programs
  value113688('113688'),

  /// Display: ACR Accreditation Phantom - PET Faceplate
  /// Definition: A PET faceplate (made to fit an existing flangeless or flanged ECT phantom) acceptable for the ACR PET Accreditation program
  value113689('113689'),

  /// Display: IEC Head Dosimetry Phantom
  /// Definition: A phantom used for CTDI measurement in head modes according to IEC 60601-2-44, Ed.2.1 (Head 16 cm diameter Polymethyl methacrylate PMMA)
  value113690('113690'),

  /// Display: IEC Body Dosimetry Phantom
  /// Definition: A phantom used for CTDI measurement in body modes according to IEC 60601-2-44, Ed.2.1 (Body 32cm diameter Polymethyl methacrylate PMMA)
  value113691('113691'),

  /// Display: NEMA XR21-2000 Phantom
  /// Definition: A phantom in accordance with NEMA standard XR-21-2000
  value113692('113692'),

  /// Display: X-Ray Radiation Dose Report
  /// Definition: X-Ray Radiation Dose Report
  value113701('113701'),

  /// Display: Accumulated X-Ray Dose Data
  /// Definition: X-Ray dose data accumulated over multiple irradiation events; e.g. for a study or a performed procedure step
  value113702('113702'),

  /// Display: Projection X-Ray
  /// Definition: Imaging using a point X-Ray source with a diverging beam projected onto a 2 dimensional detector
  value113704('113704'),

  /// Display: Scope of Accumulation
  /// Definition: Entity over which dose accumulation values are integrated
  value113705('113705'),

  /// Display: Irradiation Event X-Ray Data
  /// Definition: X-Ray dose data for a single Irradiation Event
  value113706('113706'),

  /// Display: Niobium or Niobium compound
  /// Definition: Material containing Niobium or a Niobium compound
  value113710('113710'),

  /// Display: Europium or Europium compound
  /// Definition: Material containing Europium or a Europium compound
  value113711('113711'),

  /// Display: Calibration Protocol
  /// Definition: Describes the method used to derive the calibration factor
  value113720('113720'),

  /// Display: Irradiation Event Type
  /// Definition: Denotes the type of irradiation event recorded
  value113721('113721'),

  /// Display: Dose Area Product Total
  /// Definition: Total calculated Dose Area Product (in the scope of the including report)
  value113722('113722'),

  /// Display: Calibration Date
  /// Definition: Last calibration Date for the integrated dose meter or dose calculation
  value113723('113723'),

  /// Display: Calibration Responsible Party
  /// Definition: Individual or organization responsible for calibration
  value113724('113724'),

  /// Display: Dose (RP) Total
  /// Definition: Total Dose related to Reference Point (RP). (in the scope of the including report)
  value113725('113725'),

  /// Display: Fluoro Dose Area Product Total
  /// Definition: Total calculated Dose Area Product applied in Fluoroscopy Modes (in the scope of the including report)
  value113726('113726'),

  /// Display: Acquisition Dose Area Product Total
  /// Definition: Total calculated Dose Area Product applied in Acquisition Modes (in the scope of the including report)
  value113727('113727'),

  /// Display: Fluoro Dose (RP) Total
  /// Definition: Dose applied in Fluoroscopy Modes, related to Reference Point (RP). (in the scope of the including report)
  value113728('113728'),

  /// Display: Acquisition Dose (RP) Total
  /// Definition: Dose applied in Acquisition Modes, related to Reference Point (RP). (in the scope of the including report)
  value113729('113729'),

  /// Display: Total Fluoro Time
  /// Definition: Total accumulated clock time of Fluoroscopy in the scope of the including report (i.e., the sum of the Irradiation Duration values for accumulated fluoroscopy irradiation events)
  value113730('113730'),

  /// Display: Total Number of Radiographic Frames
  /// Definition: Accumulated Count of exposure pulses (single or multi-frame encoded) created from irradiation events performed with high dose (acquisition)
  value113731('113731'),

  /// Display: Fluoro Mode
  /// Definition: Mode of application of X-Rays during Fluoroscopy
  value113732('113732'),

  /// Display: KVP
  /// Definition: Applied X-Ray Tube voltage at peak of X-Ray generation, in kilovolts; Mean value if measured over multiple peaks (pulses)
  value113733('113733'),

  /// Display: X-Ray Tube Current
  /// Definition: Mean value of applied Tube Current
  value113734('113734'),

  /// Display: Exposure Time
  /// Definition: Cumulative time the patient has received X-Ray exposure during the irradiation event
  value113735('113735'),

  /// Display: Exposure
  /// Definition: Mean value of X-Ray Current Time product
  value113736('113736'),

  /// Display: Distance Source to Reference Point
  /// Definition: Distance to the Reference Point (RP) defined according to IEC 60601-2-43 or equipment defined
  value113737('113737'),

  /// Display: Dose (RP)
  /// Definition: Dose applied at the Reference Point (RP)
  value113738('113738'),

  /// Display: Positioner Primary End Angle
  /// Definition: Positioner Primary Angle at the end of an irradiation event. For further definition see (112011, DCM, "Positioner Primary Angle")
  value113739('113739'),

  /// Display: Positioner Secondary End Angle
  /// Definition: Positioner Secondary Angle at the end of an irradiation event. For further definition see (112012, DCM, "Positioner Secondary Angle")
  value113740('113740'),

  /// Display: Irradiation Duration
  /// Definition: Clock time from the start of loading time of the first pulse until the loading time trailing edge of the final pulse in the same irradiation event. Note Loading time is defined in IEC 60601-1-3:2008, 3.37, and described in IEC 60601-2-54:2009, 203.4.101.3
  value113742('113742'),

  /// Display: Patient Orientation
  /// Definition: Orientation of the Patient with respect to Gravity
  value113743('113743'),

  /// Display: Patient Orientation Modifier
  /// Definition: Enhances or modifies the Patient orientation specified in Patient Orientation
  value113744('113744'),

  /// Display: Patient Table Relationship
  /// Definition: Orientation of the Patient with respect to the Head of the Table
  value113745('113745'),

  /// Display: Distance Source to Isocenter
  /// Definition: Distance from the X-Ray Source to the Equipment C-Arm Isocenter.(Center of Rotation)
  value113748('113748'),

  /// Display: Distance Source to Detector
  /// Definition: Measured or calculated distance from the X-Ray source to the detector plane in the center of the beam
  value113750('113750'),

  /// Display: Table Longitudinal Position
  /// Definition: Table Longitudinal Position with respect to an arbitrary chosen reference by the equipment. Table motion towards LAO is positive assuming that the patient is positioned supine and its head is in normal position
  value113751('113751'),

  /// Display: Table Lateral Position
  /// Definition: Table Lateral Position with respect to an arbitrary chosen reference by the equipment. Table motion towards CRA is positive assuming that the patient is positioned supine and its head is in normal position
  value113752('113752'),

  /// Display: Table Height Position
  /// Definition: Table Height Position with respect to an arbitrary chosen reference by the equipment in (mm). Table motion downwards is positive
  value113753('113753'),

  /// Display: Table Head Tilt Angle
  /// Definition: Angle of the head-feet axis of the table in degrees relative to the horizontal plane. Positive values indicate that the head of the table is upwards
  value113754('113754'),

  /// Display: Table Horizontal Rotation Angle
  /// Definition: Rotation of the table in the horizontal plane (clockwise when looking from above the table)
  value113755('113755'),

  /// Display: Table Cradle Tilt Angle
  /// Definition: Angle of the left-right axis of the table in degrees relative to the horizontal plane. Positive values indicate that the left of the table is upwards
  value113756('113756'),

  /// Display: X-Ray Filter Material
  /// Definition: X-Ray absorbing material used in the filter
  value113757('113757'),

  /// Display: X-Ray Filter Thickness Minimum
  /// Definition: The minimum thickness of the X-Ray absorbing material used in the filters
  value113758('113758'),

  /// Display: Table Longitudinal End Position
  /// Definition: Table Longitudinal Position at the end of an irradiation event; see (113751, DCM, "Table Longitudinal Position")
  value113759('113759'),

  /// Display: Table Lateral End Position
  /// Definition: Table Lateral Position at the end of an irradiation event; see (113752, DCM, "Table Lateral Position")
  value113760('113760'),

  /// Display: Table Height End Position
  /// Definition: Table Height Position at the end of an irradiation event; see (113753, DCM, "Table Height Position")
  value113761('113761'),

  /// Display: Calibration Uncertainty
  /// Definition: Uncertainty of the 'actual' value
  value113763('113763'),

  /// Display: Acquisition Plane
  /// Definition: Identification of Acquisition Plane with Biplane systems
  value113764('113764'),

  /// Display: Focal Spot Size
  /// Definition: Nominal Size of Focal Spot of X-Ray Tube
  value113766('113766'),

  /// Display: Average X-Ray Tube Current
  /// Definition: Average X-Ray Tube Current averaged over time for pulse or for continuous Fluoroscopy
  value113767('113767'),

  /// Display: Number of Pulses
  /// Definition: Number of pulses applied by X-Ray systems during an irradiation event (acquisition run or pulsed fluoro)
  value113768('113768'),

  /// Display: Irradiation Event UID
  /// Definition: Unique identification of a single irradiation event
  value113769('113769'),

  /// Display: Column Angulation
  /// Definition: Angle of the X-Ray beam in degree relative to an orthogonal axis to the detector plane
  value113770('113770'),

  /// Display: X-Ray Filters
  /// Definition: Devices used to modify the energy or energy distribution of X-Rays
  value113771('113771'),

  /// Display: X-Ray Filter Type
  /// Definition: Type of filter(s) inserted into the X-Ray beam; e.g. wedges
  value113772('113772'),

  /// Display: X-Ray Filter Thickness Maximum
  /// Definition: The maximum thickness of the X-Ray absorbing material used in the filters
  value113773('113773'),

  /// Display: Reference Point Definition
  /// Definition: System provided definition of the Reference Point used for Dose calculations
  value113780('113780'),

  /// Display: Collimated Field Height
  /// Definition: Distance between the collimator blades in pixel column direction as projected at the detector plane
  value113788('113788'),

  /// Display: Collimated Field Width
  /// Definition: Distance between the collimator blades in pixel row direction as projected at the detector plane
  value113789('113789'),

  /// Display: Collimated Field Area
  /// Definition: Collimated field area at image receptor. Area for compatibility with IEC 60601-2-43
  value113790('113790'),

  /// Display: Pulse Rate
  /// Definition: Pulse rate applied by equipment during Fluoroscopy
  value113791('113791'),

  /// Display: Distance Source to Table Plane
  /// Definition: Measured or calculated distance from the X-Ray source to the table plane in the center of the beam
  value113792('113792'),

  /// Display: Pulse Width
  /// Definition: (Average) X-Ray pulse width
  value113793('113793'),

  /// Display: Dose Measurement Device
  /// Definition: Calibrated device to perform dose measurements
  value113794('113794'),

  /// Display: Acquired Image
  /// Definition: Image acquired during a specified event
  value113795('113795'),

  /// Display: DLP to E conversion via MC computation
  /// Definition: Effective Dose evaluation from the product of Dose Length Product (DLP) and the Effective Dose Conversion Factor (E/DLP in units of mSv/mGy-cm), where the ratio is derived by means of Monte Carlo computations
  value113800('113800'),

  /// Display: CTDIfreeair to E conversion via MC computation
  /// Definition: Effective Dose evaluation from the product of the Mean CTDIfreeair and the ratio E/CTDIfreeair (mSv/mGy), where the ratio is derived by means of Monte Carlo computations
  value113801('113801'),

  /// Display: DLP to E conversion via measurement
  /// Definition: Effective Dose evaluation from the product of Dose Length Product (DLP) and the Effective Dose Conversion Factor (E/DLP in units of mSv/mGy-cm), where the ratio is derived by means of dosimetric measurements with an anthropomorphic phantom
  value113802('113802'),

  /// Display: CTDIfreeair to E conversion via measurement
  /// Definition: Effective Dose evaluation from the product of the Mean CTDIfreeair and the ratio E/CTDIfreeair (mSv/mGy), where the ratio is derived by means of dosimetric measurements with an anthropomorphic phantom
  value113803('113803'),

  /// Display: Sequenced Acquisition
  /// Definition: The CT acquisition was performed by acquiring single or multi detector data while rotating the source about the gantry while the table is not moving. Additional slices are acquired by incrementing the table position and again rotating the source about the gantry while the table is not moving
  value113804('113804'),

  /// Display: Constant Angle Acquisition
  /// Definition: The CT acquisition was performed by holding the source at a constant angle and moving the table to obtain a projection image; e.g. localizer
  value113805('113805'),

  /// Display: Stationary Acquisition
  /// Definition: The CT acquisition was performed by holding the table at a constant position and acquiring multiple slices over time at the same location
  value113806('113806'),

  /// Display: Free Acquisition
  /// Definition: The CT acquisition was performed while rotating the source about the gantry while the table movement is under direct control of a human operator or under the control of an analysis application; e.g. fluoro
  value113807('113807'),

  /// Display: ICRP Pub 60
  /// Definition: Reference authority 1990 Recommendations of the International Commission on Radiological Protection (ICRP Publication 60, published as the Annals of the ICRP Vol. 21, No. 1-3, Pergamon Press,1991)
  value113808('113808'),

  /// Display: Start of X-Ray Irradiation
  /// Definition: Start, DateTime of the first X-Ray Irradiation Event of the accumulation within a Study
  value113809('113809'),

  /// Display: End of X-Ray Irradiation
  /// Definition: End, DateTime of the last X-Ray Irradiation Event of the accumulation within a Study
  value113810('113810'),

  /// Display: CT Accumulated Dose Data
  /// Definition: X-Ray dose accumulated over multiple CT irradiation events; e.g. for a study or a performed procedure step
  value113811('113811'),

  /// Display: Total Number of Irradiation Events
  /// Definition: Total number of events during the defined scope of accumulation
  value113812('113812'),

  /// Display: CT Dose Length Product Total
  /// Definition: The total dose length product defined scope of accumulation
  value113813('113813'),

  /// Display: CT Effective Dose Total
  /// Definition: The total Effective Dose at the defined scope of accumulation
  value113814('113814'),

  /// Display: Patient Model
  /// Definition: Identification of the reference-patient model used when Effective Dose is evaluated via Monte Carlo calculations or from a Dose Length Product conversion factor based on Monte Carlo calculations
  value113815('113815'),

  /// Display: Condition Effective Dose measured
  /// Definition: References the physical phantom and the type of dosimeter used when measurements are done to establish Effective Dose Conversion Factors (E/DLP) or ratios E/CTDIfreeair
  value113816('113816'),

  /// Display: Effective Dose Phantom Type
  /// Definition: Type of Effective Dose phantom used
  value113817('113817'),

  /// Display: Dosimeter Type
  /// Definition: Type of dosimeter used
  value113818('113818'),

  /// Display: CT Acquisition
  /// Definition: General description of the CT Irradiation event
  value113819('113819'),

  /// Display: CT Acquisition Type
  /// Definition: Method of the CT acquisition
  value113820('113820'),

  /// Display: X-Ray Filter Aluminum Equivalent
  /// Definition: Thickness of an equivalent filter in mm in Aluminum
  value113821('113821'),

  /// Display: CT Acquisition Parameters
  /// Definition: General description of the acquisition parameters
  value113822('113822'),

  /// Display: Number of X-Ray Sources
  /// Definition: Number of X-Ray sources
  value113823('113823'),

  /// Display: Exposure Time
  /// Definition: Total time the patient has received X-Ray exposure during the irradiation event
  value113824('113824'),

  /// Display: Scanning Length
  /// Definition: Length of the table travel during the entire tube loading, according to IEC 60601-2-44 Note Scanning Length might be longer than the programmed acquisition length (Length of Reconstructable Volume)
  value113825('113825'),

  /// Display: Nominal Single Collimation Width
  /// Definition: The value of the nominal width referenced to the location of the isocenter along the z axis of a single row of acquired data in mm
  value113826('113826'),

  /// Display: Nominal Total Collimation Width
  /// Definition: The value of the nominal width referenced to the location of the isocenter along the z axis of the total collimation in mm over the area of active X-Ray detection
  value113827('113827'),

  /// Display: Pitch Factor
  /// Definition: For Spiral scanning: Pitch Factor = (Table Feed per Rotation (mm)) /(Nominal Total Collimation Width (mm)) For Sequenced scanning: Pitch Factor = (Table Feed per single Sequenced scan (mm)) /(Nominal Total Collimation Width (mm))
  value113828('113828'),

  /// Display: CT Dose
  /// Definition: General description of CT dose values
  value113829('113829'),

  /// Display: Mean CTDIvol
  /// Definition: "Mean CTDIvol" refers to the average value of the CTDIvol associated with this acquisition
  value113830('113830'),

  /// Display: CT X-Ray Source Parameters
  /// Definition: Identification, tube-potential, tube-current, and exposure-time parameters associated with an X-Ray source during an acquisition
  value113831('113831'),

  /// Display: Identification of the X-Ray Source
  /// Definition: Identifies the particular X-Ray source (in a multi-source CT system) for which the set of X-Ray source parameter values is reported
  value113832('113832'),

  /// Display: Maximum X-Ray Tube Current
  /// Definition: Maximum X-Ray tube current
  value113833('113833'),

  /// Display: Exposure Time per Rotation
  /// Definition: The exposure time for one rotation of the source around the object in s
  value113834('113834'),

  /// Display: CTDIw Phantom Type
  /// Definition: A label describing the type of phantom used for CTDIW measurement according to IEC 60601-2-44 (Head 16 cm diameter PMMA, Body 32 cm diameter PMMA)
  value113835('113835'),

  /// Display: CTDIfreeair Calculation Factor
  /// Definition: The CTDIfreeair Calculation Factor is the CTDIfreeair per mAs, expressed in units of mGy/mAs. The CTDIfreeair Calculation Factor may be used in one method calculating Dose
  value113836('113836'),

  /// Display: Mean CTDIfreeair
  /// Definition: The average value of the free-in-air CTDI associated with this acquisition
  value113837('113837'),

  /// Display: DLP
  /// Definition: Dose Length Product (DLP), expressed in mGy-cm, is an index characterizing the product of the CTDIvol and the length scanned. For Spiral scanning, DLP = CTDIvol x Scanning Length. For Sequenced scanning, DLP = CTDIvol x Nominal Total Collimation Width x Cumulative Exposure Time / Exposure Time per Rotation. For Stationary and Free scanning, DLP = CTDIvol x Nominal Total Collimation Width
  value113838('113838'),

  /// Display: Effective Dose
  /// Definition: Effective dose in mSv
  value113839('113839'),

  /// Display: Effective Dose Conversion Factor
  /// Definition: Effective Dose per DLP, reference value for Effective Dose calculation, expressed in mSv/mGY.cm
  value113840('113840'),

  /// Display: ICRP Pub 103
  /// Definition: Effective Dose Reference authority 2007 Recommendations of the International Commission on Radiological Protection (ICRP Publication 103, published as the Annals of the ICRP Vol. 37, No. 2-4, Elsevier, 2007)
  value113841('113841'),

  /// Display: X-Ray Modulation Type
  /// Definition: The type of exposure modulation used for the purpose of limiting the dose
  value113842('113842'),

  /// Display: Exposure Index
  /// Definition: Measure of the detector response to radiation in the relevant image region of an image acquired with a digital X-Ray imaging system as defined in IEC 62494-1; see PS3.3 definition of Exposure Index Macro
  value113845('113845'),

  /// Display: Target Exposure Index
  /// Definition: The target value used to calculate the Deviation Index as defined in IEC 62494-1; see PS3.3 definition of Exposure Index Macro
  value113846('113846'),

  /// Display: Deviation Index
  /// Definition: A scaled representation of the accuracy of the Exposure Index compared to the Target Exposure Index as defined in IEC 62494-1; see PS3.3 definition of Exposure Index Macro
  value113847('113847'),

  /// Display: Irradiation Authorizing
  /// Definition: The clinician responsible for determining that the irradiating procedure was appropriate for the indications
  value113850('113850'),

  /// Display: Irradiation Administering
  /// Definition: The person responsible for the administration of radiation
  value113851('113851'),

  /// Display: Irradiation Event
  /// Definition: An irradiation event is the loading of X-Ray equipment caused by a single continuous actuation of the equipment's irradiation switch, from the start of the loading time of the first pulse until the loading time trailing edge of the final pulse. Any automatic on-off switching of the irradiation source during the event is not treated as separate events, rather the event includes the time between start and stop of irradiation as triggered by the user; e.g. a pulsed fluoro X-Ray acquisition shall be treated as a single irradiation event
  value113852('113852'),

  /// Display: Irradiation Event UID
  /// Definition: Unique Identifier of an Irradiation Event
  value113853('113853'),

  /// Display: Source of Dose Information
  /// Definition: Method by which dose-related details of an Irradiation Event were obtained
  value113854('113854'),

  /// Display: Total Acquisition Time
  /// Definition: Total accumulated acquisition clock time in the scope of the including report (i.e., the sum of the Irradiation Duration values for accumulated acquisition irradiation events)
  value113855('113855'),

  /// Display: Automated Data Collection
  /// Definition: Direct recording of data by a relevant system
  value113856('113856'),

  /// Display: Manual Entry
  /// Definition: Recording of data by a human operator, including manual transcription of electronic data
  value113857('113857'),

  /// Display: MPPS Content
  /// Definition: The data is taken from an MPPS SOP Instance
  value113858('113858'),

  /// Display: Irradiating Device
  /// Definition: A device exposing a patient to ionizing radiation
  value113859('113859'),

  /// Display: 15cm from Isocenter toward Source
  /// Definition: 15cm from the isocenter towards the X-Ray source; See IEC 60601-2-43
  value113860('113860'),

  /// Display: 30cm in Front of Image Input Surface
  /// Definition: 30cm in front (towards the tube) of the input surface of the image receptor; See FDA Federal Performance Standard for Diagnostic X-Ray Systems §1020.32(d) (7)
  value113861('113861'),

  /// Display: 1cm above Tabletop
  /// Definition: 1cm above the patient tabletop or cradle; See FDA Federal Performance Standard for Diagnostic X-Ray Systems §1020.32(d) (7)
  value113862('113862'),

  /// Display: 30cm above Tabletop
  /// Definition: 30cm above the patient tabletop of cradle; See FDA Federal Performance Standard for Diagnostic X-Ray Systems §1020.32(d) (7)
  value113863('113863'),

  /// Display: 15cm from Table Centerline
  /// Definition: 15cm from the centerline of the X-Ray table and in the direction of the X-Ray source; See FDA Federal Performance Standard for Diagnostic X-Ray Systems §1020.32(d) (7)
  value113864('113864'),

  /// Display: Entrance exposure to a 4.2 cm breast thickness
  /// Definition: Standard breast means a 4.2 centimeter (cm) thick compressed breast consisting of 50 percent glandular and 50 percent adipose tissue. See Department of Health and Human Services, Food and Drug Administration. Mammography quality standards; final rule. Federal Register. Oct. 28, 1997; 68(208):55852-55994; see 900.2(uu)
  value113865('113865'),

  /// Display: Copied From Image Attributes
  /// Definition: The data is copied from information present in the image attributes; e.g. dose attributes such as CTDIvol (0018,9345)
  value113866('113866'),

  /// Display: Computed From Image Attributes
  /// Definition: The data is computed from information present in the image attributes; e.g. by using dosimetry information for the specific irradiating device make and model, applied to technique information such as KVP and mAs
  value113867('113867'),

  /// Display: Derived From Human-Readable Reports
  /// Definition: The data is derived from human-readable reports; e.g. by natural language parsing of text reports, or optical character recognition from reports saved as images by the irradiating device
  value113868('113868'),

  /// Display: Person Name
  /// Definition: The name of a specific person
  value113870('113870'),

  /// Display: Person ID
  /// Definition: An identification number or code for a specific person
  value113871('113871'),

  /// Display: Person ID Issuer
  /// Definition: The organization that issued a Person ID
  value113872('113872'),

  /// Display: Organization Name
  /// Definition: The name of an organization
  value113873('113873'),

  /// Display: Person Role in Organization
  /// Definition: The role played by a person in an organization
  value113874('113874'),

  /// Display: Person Role in Procedure
  /// Definition: The role played by a person in a procedure
  value113875('113875'),

  /// Display: Device Role in Procedure
  /// Definition: The role played by a device in a procedure
  value113876('113876'),

  /// Display: Device Name
  /// Definition: The name used to refer to a device; usually locally unique
  value113877('113877'),

  /// Display: Device Manufacturer
  /// Definition: Manufacturer of a device
  value113878('113878'),

  /// Display: Device Model Name
  /// Definition: Model Name of a device
  value113879('113879'),

  /// Display: Device Serial Number
  /// Definition: Serial Number of a device
  value113880('113880'),

  /// Display: All Planes
  /// Definition: All planes of a multi-plane acquisition equipment
  value113890('113890'),

  /// Display: Length of Reconstructable Volume
  /// Definition: The length from which images may be reconstructed (i.e., excluding any overranging performed in a spiral acquisition that is required for data interpolation). Value is distinct from (1113825, DCM, "Scanning Length"), which is the actual length of the table travel during the entire tube loading, according to IEC 60601-2-44, and includes overranging. Also distinct from any actual Reconstructed Volume, which may depend on the slice thickness chosen for a particular reconstruction
  value113893('113893'),

  /// Display: Top Z Location of Reconstructable Volume
  /// Definition: The Z location that is the top (highest Z value) of the Reconstructable Volume. Specified as the Z component within the Patient Coordinate System defined by a specified Frame of Reference
  value113895('113895'),

  /// Display: Bottom Z Location of Reconstructable Volume
  /// Definition: The Z location that is the bottom (lowest Z value) of the Reconstructable Volume. Specified as the Z component within the Patient Coordinate System defined by a specified Frame of Reference
  value113896('113896'),

  /// Display: Top Z Location of Scanning Length
  /// Definition: The Z location that is the top (highest Z value) of the scanning length. Specified as the Z component within the Patient Coordinate System defined by a specified Frame of Reference
  value113897('113897'),

  /// Display: Bottom Z Location of Scanning Length
  /// Definition: The Z location that is the bottom (lowest Z value) of the scanning length. Specified as the Z component within the Patient Coordinate System defined by a specified Frame of Reference
  value113898('113898'),

  /// Display: Exposed Range
  /// Definition: The range along the z axis of the total volume irradiated, per IEC 60601-2-44, Ed. 3, 203.115(b). The start and stop of loading corresponding to the outer edge of the full width half maximum of the free-in-air dose profile for the beam collimation used
  value113899('113899'),

  /// Display: Dose Check Alert Details
  /// Definition: Report section about cumulative dose alerts during an examination
  value113900('113900'),

  /// Display: DLP Alert Value Configured
  /// Definition: Flag denoting whether a DLP Alert Value was configured
  value113901('113901'),

  /// Display: CTDIvol Alert Value Configured
  /// Definition: Flag denoting whether a CTDIvol Alert Value was configured
  value113902('113902'),

  /// Display: DLP Alert Value
  /// Definition: Cumulative Dose Length Product value configured to trigger an alert; see NEMA XR 25-2010 Dose Check Standard
  value113903('113903'),

  /// Display: CTDIvol Alert Value
  /// Definition: Cumulative CTDIvol value configured to trigger an alert; see NEMA XR 25-2010 Dose Check Standard
  value113904('113904'),

  /// Display: Accumulated DLP Forward Estimate
  /// Definition: A forward estimate of the accumulated DLP plus the estimated DLP for the next Protocol Element Group; see NEMA XR 25-2010 Dose Check Standard
  value113905('113905'),

  /// Display: Accumulated CTDIvol Forward Estimate
  /// Definition: A forward estimate at a given location of the accumulated CTDIvol plus the estimated CTDIvol for the next Protocol Element Group; see NEMA XR 25-2010 Dose Check Standard
  value113906('113906'),

  /// Display: Reason for Proceeding
  /// Definition: Reason provided for proceeding with a procedure that is projected to exceed a configured dose value
  value113907('113907'),

  /// Display: Dose Check Notification Details
  /// Definition: Report section about dose notifications during a protocol element
  value113908('113908'),

  /// Display: DLP Notification Value Configured
  /// Definition: Flag denoting whether a DLP Notification Value was configured
  value113909('113909'),

  /// Display: CTDIvol Notification Value Configured
  /// Definition: Flag denoting whether a CTDIvol Notification Value was configured
  value113910('113910'),

  /// Display: DLP Notification Value
  /// Definition: Dose Length Product value configured to trigger a notification for a given protocol element
  value113911('113911'),

  /// Display: CTDIvol Notification Value
  /// Definition: CTDIvol value configured to trigger a notification for a given protocol element
  value113912('113912'),

  /// Display: DLP Forward Estimate
  /// Definition: A forward estimate of the DLP for the next Protocol Element Group; see NEMA XR 25-2010 Dose Check Standard
  value113913('113913'),

  /// Display: CTDIvol Forward Estimate
  /// Definition: A forward estimate of the CTDIvol for the next Protocol Element Group; see NEMA XR 25-2010 Dose Check Standard
  value113914('113914'),

  /// Display: Radiation Exposure
  /// Definition: The amount of ionizing radiation to which the patient was exposed
  value113921('113921'),

  /// Display: Radioactive Substance Administered
  /// Definition: Type, amount and route of radioactive substance administered
  value113922('113922'),

  /// Display: Radiation Exposure and Protection Information
  /// Definition: Exposure to ionizing radiation and associated preventive measures used to reduce the exposure of parts of the body like lead apron or eye, thyroid gland or gonad protection
  value113923('113923'),

  /// Display: Size Specific Dose Estimation
  /// Definition: The Size-Specific Dose Estimate is a patient dose estimate that takes into account the size of the patient, such as described in AAPM Report 204 by using linear dimensions measured on the patient or patient images or estimated from patient age
  value113930('113930'),

  /// Display: Measured Lateral Dimension
  /// Definition: The side-to-side (left to right) dimension of the body part being scanned (per AAPM Report 204)
  value113931('113931'),

  /// Display: Measured AP Dimension
  /// Definition: The thickness of the body part being scanned, in the antero-posterior dimension (per AAPM Report 204)
  value113932('113932'),

  /// Display: Derived Effective Diameter
  /// Definition: The diameter of the patient at a given location along the Z-axis of the patient, assuming that the patient has a circular cross-section (per AAPM Report 204)
  value113933('113933'),

  /// Display: AAPM 204 Lateral Dimension
  /// Definition: The Size Specific Dose Estimation is computed using Table 1B (32cm phantom) or Table 2B (16cm phantom) of AAPM Report 204
  value113934('113934'),

  /// Display: AAPM 204 AP Dimension
  /// Definition: The Size Specific Dose Estimation is computed using Table 1C (32cm phantom) or Table 2C (16cm phantom) of AAPM Report 204
  value113935('113935'),

  /// Display: AAPM 204 Sum of Lateral and AP Dimension
  /// Definition: The Size Specific Dose Estimation is computed using Table 1A (32cm phantom) or Table 2A (16cm phantom) of AAPM Report 204
  value113936('113936'),

  /// Display: AAPM 204 Effective Diameter Estimated From Patient Age
  /// Definition: The Size Specific Dose Estimation is computed using Table 1D (32cm phantom) or Table 2D (16cm phantom) using an effective diameter estimated from the patient's age using Table 3 of AAPM Report 204
  value113937('113937'),

  /// Display: System Calculated
  /// Definition: Values calculated from other existing parameters
  value113940('113940'),

  /// Display: In Detector Plane
  /// Definition: A segmented region of the detector surface within the irradiated area (but might not be near the center of the detector)
  value113941('113941'),

  /// Display: X-Ray Reading Device
  /// Definition: A device that creates digital images from X-Ray detectors (Direct, Indirect or Storage)
  value113942('113942'),

  /// Display: X-Ray Source Data Available
  /// Definition: Parameters related to the X-Ray source (generator, tube, etc.) are available to the recording application
  value113943('113943'),

  /// Display: X-Ray Mechanical Data Available
  /// Definition: Parameters related to the X-Ray Mechanical System (Stand, Table) are available to the recording application
  value113944('113944'),

  /// Display: X-Ray Detector Data Available
  /// Definition: Parameters related to the X-Ray Detector are available to the recording application
  value113945('113945'),

  /// Display: Projection Eponymous Name
  /// Definition: Describes the radiographic method of patient, tube and detector positioning to achieve a well described projection or view
  value113946('113946'),

  /// Display: Detector Type
  /// Definition: Type of Detector used to acquire data; e.g. Images
  value113947('113947'),

  /// Display: Direct Detector
  /// Definition: Detector that directly transforms the input signal to pixel values
  value113948('113948'),

  /// Display: Indirect Detector
  /// Definition: Detector that transforms an intermediate signal into pixel values; e.g. a scintillator-based detector
  value113949('113949'),

  /// Display: Storage Detector
  /// Definition: Storage detector that stores a signal that is later transformed by a reader into pixel values; e.g. a phosphor-based detector
  value113950('113950'),

  /// Display: Film
  /// Definition: Film that is scanned to create pixel values
  value113951('113951'),

  /// Display: Table Mount
  /// Definition: The cassette/detector is mounted in the patient table
  value113952('113952'),

  /// Display: Unmounted Detector
  /// Definition: The cassette/detector is not mounted.; e.g. a cassette placed underneath the patient
  value113953('113953'),

  /// Display: Upright Stand Mount
  /// Definition: The cassette/detector is mounted in an upright stand
  value113954('113954'),

  /// Display: C-Arm Mount
  /// Definition: The cassette/detector is mounted on a c-arm
  value113955('113955'),

  /// Display: CR/DR Mechanical Configuration
  /// Definition: Method of mounting or positioning a CR/DR cassette or detector
  value113956('113956'),

  /// Display: Fluoroscopy-Guided Projection Radiography System
  /// Definition: An integrated projection radiography system capable of fluoroscopy
  value113957('113957'),

  /// Display: Integrated Projection Radiography System
  /// Definition: A projection radiography system where the X-Ray detector, X-Ray Source and gantry components are integrated and the managing system is able to access details of each component
  value113958('113958'),

  /// Display: Cassette-based Projection Radiography System
  /// Definition: A projection radiography system where the X-Ray detector, X-Ray Source and gantry components are not integrated; e.g. cassette-based CR and DR systems
  value113959('113959'),

  /// Display: Reconstruction Algorithm
  /// Definition: Description of the algorithm used when reconstructing the image from the data acquired during the acquisition process
  value113961('113961'),

  /// Display: Filtered Back Projection
  /// Definition: An algorithm for reconstructing an image from multiple projections by back-projecting the measured values along the line of the projection and filtering the result to reduce blurring
  value113962('113962'),

  /// Display: Iterative Reconstruction
  /// Definition: An algorithm for reconstructing an image from multiple projections by starting with an assumed reconstructed image, computing projections from the image, comparing the original projection data and updating the reconstructed image based upon the difference between the calculated and the actual projections
  value113963('113963'),

  /// Display: Procedure Step To This Point
  /// Definition: The period of time from the start of a Procedure Step until the time point established by the context of the reference
  value113970('113970'),

  /// Display: Not a number
  /// Definition: Measurement not available: Not a number (per IEEE 754)
  value114000('114000'),

  /// Display: Negative Infinity
  /// Definition: Measurement not available: Negative Infinity (per IEEE 754)
  value114001('114001'),

  /// Display: Positive Infinity
  /// Definition: Measurement not available: Positive Infinity (per IEEE 754)
  value114002('114002'),

  /// Display: Divide by zero
  /// Definition: Measurement not available: Divide by zero (per IEEE 754)
  value114003('114003'),

  /// Display: Underflow
  /// Definition: Measurement not available: Underflow (per IEEE 754)
  value114004('114004'),

  /// Display: Overflow
  /// Definition: Measurement not available: Overflow (per IEEE 754)
  value114005('114005'),

  /// Display: Measurement failure
  /// Definition: Measurement not available: Measurement failure
  value114006('114006'),

  /// Display: Measurement not attempted
  /// Definition: Measurement not available: Measurement not attempted
  value114007('114007'),

  /// Display: Calculation failure
  /// Definition: Measurement not available: Calculation failure
  value114008('114008'),

  /// Display: Value out of range
  /// Definition: Measurement not available: Value out of range
  value114009('114009'),

  /// Display: Value unknown
  /// Definition: Measurement not available: Value unknown
  value114010('114010'),

  /// Display: Value indeterminate
  /// Definition: Measurement not available: Value indeterminate
  value114011('114011'),

  /// Display: Time of flight
  /// Definition: Measures the time-of-flight of a light signal between the camera and the subject for each point of the image
  value114201('114201'),

  /// Display: Interferometry
  /// Definition: Interferometry is a family of techniques in which waves are superimposed in order to extract depth information about the scanned object
  value114202('114202'),

  /// Display: Laser scanning
  /// Definition: Laser scanning describes the general method to sample or scan a surface using laser technology
  value114203('114203'),

  /// Display: Pattern projection
  /// Definition: Projecting a narrow band of light onto a three-dimensionally shaped surface produces a line of illumination that appears distorted from other perspectives than that of the projector. It can be used for an exact geometric reconstruction of the surface shape
  value114204('114204'),

  /// Display: Shape from shading
  /// Definition: A technique for estimating the surface normal of an object by observing that object under different lighting conditions
  value114205('114205'),

  /// Display: Shape from motion
  /// Definition: A technique for estimating the surface normal of an object by observing that object under different motions
  value114206('114206'),

  /// Display: Confocal imaging
  /// Definition: An optical imaging technique used to increase optical resolution and contrast of a micrograph by using point illumination and a spatial pinhole to eliminate out-of-focus light in specimens that are thicker than the focal plane. It enables the reconstruction of 3D structures from the obtained images
  value114207('114207'),

  /// Display: Point Cloud Algorithmic
  /// Definition: Point cloud that was calculated by an algorithm
  value114208('114208'),

  /// Display: Turntable Scan Method
  /// Definition: Scanning the object from different views by placing it on a rotating table
  value114209('114209'),

  /// Display: High resolution
  /// Definition: Higher resolution with a longer acquisition time
  value114210('114210'),

  /// Display: Fast mode
  /// Definition: Lower resolution with a shorter acquisition time
  value114211('114211'),

  /// Display: Iterative Closest Point
  /// Definition: An algorithm employed to minimize the difference between two clouds of points. It iteratively revises the transformation (translation, rotation) needed to minimize the distance between the points of two point clouds
  value114213('114213'),

  /// Display: Freehand
  /// Definition: Human controlled minimization of the distance between the points of two point clouds
  value114215('114215'),

  /// Display: Checkerboard
  /// Definition: Scanning the object from different views by placing it in front of a checkerboard pattern
  value114216('114216'),

  /// Display: Quotation Mode
  /// Definition: Type of source for observations quoted from an external source
  value121001('121001'),

  /// Display: Quoted Source
  /// Definition: Reference to external source of quoted observations
  value121002('121002'),

  /// Display: Document
  /// Definition: Documentary source of quoted observations
  value121003('121003'),

  /// Display: Verbal
  /// Definition: Verbal source of quoted observations
  value121004('121004'),

  /// Display: Observer Type
  /// Definition: Type of observer that created the observations
  value121005('121005'),

  /// Display: Person
  /// Definition: Human observer created the observations
  value121006('121006'),

  /// Display: Device
  /// Definition: Automated device created the observations
  value121007('121007'),

  /// Display: Person Observer Name
  /// Definition: Name of human observer that created the observations
  value121008('121008'),

  /// Display: Person Observer's Organization Name
  /// Definition: Organization or institution with which the human observer is affiliated for the context of the current observation
  value121009('121009'),

  /// Display: Person Observer's Role in the Organization
  /// Definition: Organizational role of human observer for the context of the current observation
  value121010('121010'),

  /// Display: Person Observer's Role in this Procedure
  /// Definition: Procedural role of human observer for the context of the current observation
  value121011('121011'),

  /// Display: Device Observer UID
  /// Definition: Unique identifier of automated device that created the observations
  value121012('121012'),

  /// Display: Device Observer Name
  /// Definition: Institution-provided identifier of automated device that created the observations
  value121013('121013'),

  /// Display: Device Observer Manufacturer
  /// Definition: Manufacturer of automated device that created the observations
  value121014('121014'),

  /// Display: Device Observer Model Name
  /// Definition: Manufacturer-provided model name of automated device that created the observations
  value121015('121015'),

  /// Display: Device Observer Serial Number
  /// Definition: Manufacturer-provided serial number of automated device that created the observations
  value121016('121016'),

  /// Display: Device Observer Physical Location During Observation
  /// Definition: Location of automated device that created the observations whilst the observations were being made
  value121017('121017'),

  /// Display: Procedure Study Instance UID
  /// Definition: Unique identifier for the Study or Requested Procedure
  value121018('121018'),

  /// Display: Procedure Study Component UID
  /// Definition: Unique identifier for the Performed Procedure Step
  value121019('121019'),

  /// Display: Placer Number
  /// Definition: Identifier for the Order (or Service Request) assigned by the order placer system
  value121020('121020'),

  /// Display: Filler Number
  /// Definition: Identifier for the Order (or Service Request) assigned by the order filler system
  value121021('121021'),

  /// Display: Accession Number
  /// Definition: Identifier for the Order (or Service Request) assigned by the department information system
  value121022('121022'),

  /// Display: Procedure Code
  /// Definition: Type of procedure scheduled or performed
  value121023('121023'),

  /// Display: Subject Class
  /// Definition: Type of observation subject
  value121024('121024'),

  /// Display: Patient
  /// Definition: A patient is the subject of observations
  value121025('121025'),

  /// Display: Fetus
  /// Definition: Fetus of patient is the subject of observations
  value121026('121026'),

  /// Display: Specimen
  /// Definition: Specimen is the subject of observations
  value121027('121027'),

  /// Display: Subject UID
  /// Definition: Unique Identifier of patient or fetus who is the subject of observations
  value121028('121028'),

  /// Display: Subject Name
  /// Definition: Name of patient who is the subject of observations
  value121029('121029'),

  /// Display: Subject ID
  /// Definition: Identifier of patient or fetus who is the subject of observations
  value121030('121030'),

  /// Display: Subject Birth Date
  /// Definition: Birth Date of patient who is the subject of observations
  value121031('121031'),

  /// Display: Subject Sex
  /// Definition: Sex of patient who is the subject of observations
  value121032('121032'),

  /// Display: Subject Age
  /// Definition: Age of patient who is the subject of observations
  value121033('121033'),

  /// Display: Subject Species
  /// Definition: Species of patient who is the subject of observations
  value121034('121034'),

  /// Display: Subject Breed
  /// Definition: The breed of the subject
  value121035('121035'),

  /// Display: Mother of fetus
  /// Definition: Name of mother of fetus that is the subject of observations
  value121036('121036'),

  /// Display: Fetus number
  /// Definition:
  value121037('121037'),

  /// Display: Number of Fetuses
  /// Definition:
  value121038('121038'),

  /// Display: Specimen UID
  /// Definition: Unique Identifier of specimen that is the subject of observations
  value121039('121039'),

  /// Display: Specimen Accession Number
  /// Definition: Accession Number of specimen that is the subject of observations
  value121040('121040'),

  /// Display: Specimen Identifier
  /// Definition: Identifier of specimen that is the subject of observations
  value121041('121041'),

  /// Display: Specimen Type
  /// Definition: Coded category of specimen that is the subject of observations
  value121042('121042'),

  /// Display: Slide Identifier
  /// Definition: Identifier of specimen microscope slide that is the subject of observations
  value121043('121043'),

  /// Display: Slide UID
  /// Definition: Unique Identifier of specimen microscope slide that is the subject of observations
  value121044('121044'),

  /// Display: Language
  /// Definition: The language of the content, being a language that is primarily used for human communication; e.g. English, French
  value121045('121045'),

  /// Display: Country of Language
  /// Definition: The country-specific variant of language; e.g. Canada for Candadian French
  value121046('121046'),

  /// Display: Language of Value
  /// Definition: The language of the value component of a name-value pair
  value121047('121047'),

  /// Display: Language of Name and Value
  /// Definition: The language of both the name component and the value component of a name-value pair
  value121048('121048'),

  /// Display: Language of Content Item and Descendants
  /// Definition: The language of the current content item (node in a tree of content) and all its descendants
  value121049('121049'),

  /// Display: Equivalent Meaning of Concept Name
  /// Definition: The human readable meaning of the name component of a name-value pair that is equivalent to the post-coordinated meaning conveyed by the coded name and its concept modifier children
  value121050('121050'),

  /// Display: Equivalent Meaning of Value
  /// Definition: The human readable meaning of the value component of a name-value pair that is equivalent to the post-coordinated meaning conveyed by the coded value and its concept modifier children
  value121051('121051'),

  /// Display: Presence of property
  /// Definition: Whether or not the property concept being modified is present or absent
  value121052('121052'),

  /// Display: Present
  /// Definition:
  value121053('121053'),

  /// Display: Absent
  /// Definition:
  value121054('121054'),

  /// Display: Path
  /// Definition: A set of points on an image, that when connected by line segments, provide a polyline from which a linear measurement was inferred
  value121055('121055'),

  /// Display: Area outline
  /// Definition: A set of points on an image, that when connected by line segments, provide a closed polyline that is the border of a defined region from which an area, or two-dimensional measurement, was inferred
  value121056('121056'),

  /// Display: Perimeter outline
  /// Definition: A set of points on an image, that when connected by line segments, provide a closed polyline that is a two-dimensional border of a three-dimensional region's intersection with, or projection into the image
  value121057('121057'),

  /// Display: Procedure reported
  /// Definition: The imaging procedure whose results are reported
  value121058('121058'),

  /// Display: Presence Undetermined
  /// Definition: Presence or absence of a property is undetermined
  value121059('121059'),

  /// Display: History
  /// Definition:
  value121060('121060'),

  /// Display: Request
  /// Definition:
  value121062('121062'),

  /// Display: Current Procedure Descriptions
  /// Definition:
  value121064('121064'),

  /// Display: Procedure Description
  /// Definition: A description of the imaging procedure
  value121065('121065'),

  /// Display: Prior Procedure Descriptions
  /// Definition:
  value121066('121066'),

  /// Display: Previous Findings
  /// Definition:
  value121068('121068'),

  /// Display: Previous Finding
  /// Definition: An observation found on a prior imaging study
  value121069('121069'),

  /// Display: Findings
  /// Definition:
  value121070('121070'),

  /// Display: Finding
  /// Definition: An observation found on an imaging study
  value121071('121071'),

  /// Display: Impressions
  /// Definition:
  value121072('121072'),

  /// Display: Impression
  /// Definition: An interpretation in the clinical context of the finding(s) on an imaging study
  value121073('121073'),

  /// Display: Recommendations
  /// Definition:
  value121074('121074'),

  /// Display: Recommendation
  /// Definition: A recommendation for management or investigation based on the findings and impressions of an imaging study
  value121075('121075'),

  /// Display: Conclusions
  /// Definition:
  value121076('121076'),

  /// Display: Conclusion
  /// Definition: An interpretation in the clinical context of the finding(s) on an imaging study
  value121077('121077'),

  /// Display: Addendum
  /// Definition:
  value121078('121078'),

  /// Display: Baseline
  /// Definition: Initial images used to esyablish a beginning condition that is used for comparison over time to look for changes. [Paraphrases NCI-PT (C1442488, UMLS, "Baseline"), which is defined as "An initial measurement that is taken at an early time point to represent a beginning condition, and is used for comparison over time to look for changes. For example, the size of a tumor will be measured before treatment (baseline) and then afterwards to see if the treatment had an effect. A starting point to which things may be compared."]
  value121079('121079'),

  /// Display: Best illustration of finding
  /// Definition: A selection of composite instances that best illustrates a particular finding; e.g. an image slice at the location of the largest extent of a tumor
  value121080('121080'),

  /// Display: Physician
  /// Definition:
  value121081('121081'),

  /// Display: Nurse
  /// Definition:
  value121082('121082'),

  /// Display: Technologist
  /// Definition:
  value121083('121083'),

  /// Display: Radiographer
  /// Definition:
  value121084('121084'),

  /// Display: Intern
  /// Definition:
  value121085('121085'),

  /// Display: Resident
  /// Definition:
  value121086('121086'),

  /// Display: Registrar
  /// Definition:
  value121087('121087'),

  /// Display: Fellow
  /// Definition: A medical practitioner undergoing sub-specialty training; e.g. during the period after specialty training (residency)
  value121088('121088'),

  /// Display: Attending [Consultant]
  /// Definition:
  value121089('121089'),

  /// Display: Scrub nurse
  /// Definition:
  value121090('121090'),

  /// Display: Surgeon
  /// Definition:
  value121091('121091'),

  /// Display: Sonologist
  /// Definition: A medical practitioner with sub-specialty training in Ultrasound
  value121092('121092'),

  /// Display: Sonographer
  /// Definition:
  value121093('121093'),

  /// Display: Performing
  /// Definition: The person responsible for performing the procedure
  value121094('121094'),

  /// Display: Referring
  /// Definition: The person responsible for referring the patient for the procedure
  value121095('121095'),

  /// Display: Requesting
  /// Definition: The person responsible for requesting the procedure
  value121096('121096'),

  /// Display: Recording
  /// Definition: The person responsible for recording the procedure or observation
  value121097('121097'),

  /// Display: Verifying
  /// Definition: The person responsible for verifying the recorded procedure or observation
  value121098('121098'),

  /// Display: Assisting
  /// Definition: The person responsible for assisting with the procedure
  value121099('121099'),

  /// Display: Circulating
  /// Definition: The person responsible for making preparations for and monitoring the procedure
  value121100('121100'),

  /// Display: Standby
  /// Definition: The person responsible for standing by to assist with the precedure if required
  value121101('121101'),

  /// Display: Other sex
  /// Definition: Other sex
  value121102('121102'),

  /// Display: Undetermined sex
  /// Definition: Sex of subject undetermined at time of encoding
  value121103('121103'),

  /// Display: Ambiguous sex
  /// Definition: Ambiguous sex
  value121104('121104'),

  /// Display: Radiation Physicist
  /// Definition: Radiation Physicist
  value121105('121105'),

  /// Display: Comment
  /// Definition: Comment
  value121106('121106'),

  /// Display: Indications for Procedure
  /// Definition: Indications for Procedure
  value121109('121109'),

  /// Display: Patient Presentation
  /// Definition: Patient condition at the beginning of a healthcare encounter
  value121110('121110'),

  /// Display: Summary
  /// Definition: Summary of a procedure, including most significant findings
  value121111('121111'),

  /// Display: Source of Measurement
  /// Definition: Image or waveform used as source for measurement
  value121112('121112'),

  /// Display: Complications
  /// Definition: Complications from a procedure
  value121113('121113'),

  /// Display: Performing Physician
  /// Definition: Physician who performed a procedure
  value121114('121114'),

  /// Display: Discharge Summary
  /// Definition: Summary of patient condition upon Discharge from a healthcare facility
  value121115('121115'),

  /// Display: Proximal Finding Site
  /// Definition: Proximal Anatomic Location for a differential measurement; may be considered subtype of term (G-C0E3, SRT, "Finding Site"); e.g. distance or pressure gradient
  value121116('121116'),

  /// Display: Distal Finding Site
  /// Definition: Distal Anatomic Location for a differential measurement; may be considered subtype of term (G-C0E3, SRT, "Finding Site"); e.g. distance or pressure gradient
  value121117('121117'),

  /// Display: Patient Characteristics
  /// Definition: Patient Characteristics (findings)
  value121118('121118'),

  /// Display: Cath Lab Procedure Log
  /// Definition: Time-stamped record of events that occur during a catheterization procedure
  value121120('121120'),

  /// Display: Room identification
  /// Definition: Room identification
  value121121('121121'),

  /// Display: Equipment Identification
  /// Definition: Equipment identification
  value121122('121122'),

  /// Display: Patient Status or Event
  /// Definition: A recorded Patient Status or an event involving a patient
  value121123('121123'),

  /// Display: Procedure Action Item ID
  /// Definition: Identification of a step, action, or phase of a procedure
  value121124('121124'),

  /// Display: DateTime of Recording of Log Entry
  /// Definition: DateTime of Recording of an Entry in an Event Log
  value121125('121125'),

  /// Display: Performed Procedure Step SOP Instance UID
  /// Definition: SOP Instance UID of a Performed Procedure Step
  value121126('121126'),

  /// Display: Performed Procedure Step SOP Class UID
  /// Definition: SOP Class UID of a Performed Procedure Step
  value121127('121127'),

  /// Display: Procedure Action Duration
  /// Definition: Duration of a step, action, or phase of a procedure
  value121128('121128'),

  /// Display: Start Procedure Action Item
  /// Definition: Beginning of a step, action, or phase of a procedure
  value121130('121130'),

  /// Display: End Procedure Action Item
  /// Definition: End of a step, action, or phase of a procedure
  value121131('121131'),

  /// Display: Suspend Procedure Action Item
  /// Definition: Suspension of a step, action, or phase of a procedure
  value121132('121132'),

  /// Display: Resume Procedure Action Item
  /// Definition: Resumption of a step, action, or phase of a procedure
  value121133('121133'),

  /// Display: Observation DateTime Qualifier
  /// Definition: Concept modifier for the DateTime of Recording of an Entry in an Event Log
  value121135('121135'),

  /// Display: DateTime Unsynchronized
  /// Definition: Recorded DateTime had its source in a system clock not synchronized to other recorded DateTimes
  value121136('121136'),

  /// Display: DateTime Estimated
  /// Definition: Recorded DateTime is estimated
  value121137('121137'),

  /// Display: Image Acquired
  /// Definition: Event of the acquisition of an image
  value121138('121138'),

  /// Display: Modality
  /// Definition: Type of data acquisition device
  value121139('121139'),

  /// Display: Number of Frames
  /// Definition: Number of Frames in a multi-frame image
  value121140('121140'),

  /// Display: Image Type
  /// Definition: Descriptor of an Image
  value121141('121141'),

  /// Display: Acquisition Duration
  /// Definition: Duration of the acquisition of an image or a waveform
  value121142('121142'),

  /// Display: Waveform Acquired
  /// Definition: Event of the acquisition of an image
  value121143('121143'),

  /// Display: Document Title
  /// Definition: Document Title
  value121144('121144'),

  /// Display: Description of Material
  /// Definition: Description of Material used in a procedure
  value121145('121145'),

  /// Display: Quantity of Material
  /// Definition: Quantity of Material used in a procedure
  value121146('121146'),

  /// Display: Billing Code
  /// Definition: Billing Code for materials used in a procedure
  value121147('121147'),

  /// Display: Unit Serial Identifier
  /// Definition: Unit or Device Serial Identifier
  value121148('121148'),

  /// Display: Lot Identifier
  /// Definition: Lot Identifier
  value121149('121149'),

  /// Display: Device Code
  /// Definition: Vendor or local coded value identifying a device
  value121150('121150'),

  /// Display: Lesion Identifier
  /// Definition: Identification of a Lesion observed during an imaging procedure
  value121151('121151'),

  /// Display: Person administering drug/contrast
  /// Definition: Person administering drug/contrast
  value121152('121152'),

  /// Display: Lesion Risk
  /// Definition: Assessment of the risk a coronary lesion presents to the health of a patient
  value121153('121153'),

  /// Display: Intervention attempt identifier
  /// Definition: Identifier for an attempted Intervention
  value121154('121154'),

  /// Display: Deployment
  /// Definition: Use of a device to deploy another device
  value121155('121155'),

  /// Display: Percutaneous Entry Action
  /// Definition: Action of a clinical professional at the site of percutaneous access to a patient's cardiovascular system
  value121156('121156'),

  /// Display: Begin Circulatory Support
  /// Definition: The action or event of beginning circulatory support for a patient
  value121157('121157'),

  /// Display: End Circulatory Support
  /// Definition: The action or event of ending circulatory support for a patient
  value121158('121158'),

  /// Display: Oxygen Administration Rate
  /// Definition: Rate of Oxygen Administration
  value121160('121160'),

  /// Display: Begin Oxygen Administration
  /// Definition: The action or event of beginning administration of oxygen to a patient
  value121161('121161'),

  /// Display: End oxygen administration
  /// Definition: The action or event of ending administration of oxygen to a patient
  value121162('121162'),

  /// Display: By ventilator
  /// Definition: Method of administration of oxygen to a patient by ventilator
  value121163('121163'),

  /// Display: Patient Assessment Performed
  /// Definition: The action or event of assessing the clinical status of a patient
  value121165('121165'),

  /// Display: Begin Pacing
  /// Definition: The action or event of beginning pacing support for a patient
  value121166('121166'),

  /// Display: End Pacing
  /// Definition: The action or event of ending pacing support for a patient
  value121167('121167'),

  /// Display: Begin Ventilation
  /// Definition: The action or event of beginning ventilation support for a patient
  value121168('121168'),

  /// Display: End Ventilation
  /// Definition: The action or event of ending ventilation support for a patient
  value121169('121169'),

  /// Display: Tech Note
  /// Definition: Procedural note originated by a technologist
  value121171('121171'),

  /// Display: Nursing Note
  /// Definition: Procedural note originated by a nurse
  value121172('121172'),

  /// Display: Physician Note
  /// Definition: Procedural note originated by a Physician
  value121173('121173'),

  /// Display: Procedure Note
  /// Definition: General procedural note
  value121174('121174'),

  /// Display: Key Images
  /// Definition: List of references to images considered significant
  value121180('121180'),

  /// Display: DICOM Object Catalog
  /// Definition: List of references to DICOM SOP Instances
  value121181('121181'),

  /// Display: Referenced Frames
  /// Definition: Individual frames selected as a subset of a multi-frame image
  value121190('121190'),

  /// Display: Referenced Segment
  /// Definition: Segment selected as a subset of a segmentation image, specifically the pixels/voxels identified as belonging to the classification of the identified segment
  value121191('121191'),

  /// Display: Device Subject
  /// Definition: A device is the subject of observations
  value121192('121192'),

  /// Display: Device Subject Name
  /// Definition: Name or other identifier of a device that is the subject of observations
  value121193('121193'),

  /// Display: Device Subject Manufacturer
  /// Definition: Manufacturer of a device that is the subject of observations
  value121194('121194'),

  /// Display: Device Subject Model Name
  /// Definition: Model Name of a device that is the subject of observations
  value121195('121195'),

  /// Display: Device Subject Serial Number
  /// Definition: Serial Number of a device that is the subject of observations
  value121196('121196'),

  /// Display: Device Subject Physical Location during observation
  /// Definition: Physical Location of a device that is the subject of observations during those observations
  value121197('121197'),

  /// Display: Device Subject UID
  /// Definition: Unique Identifier of a device that is the subject of observations
  value121198('121198'),

  /// Display: Illustration of ROI
  /// Definition: Illustration of a region of interest
  value121200('121200'),

  /// Display: Area Outline
  /// Definition:
  value121201('121201'),

  /// Display: Area of Defined Region
  /// Definition:
  value121202('121202'),

  /// Display: Distance
  /// Definition: A one dimensional, or linear, numeric measurement
  value121206('121206'),

  /// Display: Height
  /// Definition: Vertical measurement value
  value121207('121207'),

  /// Display: Inter-Marker Distance
  /// Definition: Distance between marks on a device of calibrated size; e.g. a ruler
  value121208('121208'),

  /// Display: Path
  /// Definition:
  value121210('121210'),

  /// Display: Path length
  /// Definition: A one dimensional, or linear, numeric measurement along a polyline
  value121211('121211'),

  /// Display: Perimeter Outline
  /// Definition:
  value121213('121213'),

  /// Display: Referenced Segmentation Frame
  /// Definition: Frame selected from a segmentation image, specifically the pixels/voxels identified as belonging to the classification of the segment encompassing the identified frame
  value121214('121214'),

  /// Display: Volume estimated from single 2D region
  /// Definition: A three-dimensional numeric measurement that is approximate, based on a two-dimensional region in a single image
  value121216('121216'),

  /// Display: Volume estimated from three or more non-coplanar 2D regions
  /// Definition: A three-dimensional numeric measurement that is approximate, based on three or more non-coplanar two-dimensional image regions
  value121217('121217'),

  /// Display: Volume estimated from two non-coplanar 2D regions
  /// Definition: A three-dimensional numeric measurement that is approximate, based on two non-coplanar two-dimensional image regions
  value121218('121218'),

  /// Display: Volume of bounding three dimensional region
  /// Definition: A three-dimensional numeric measurement of the bounding region of a three-dimensional region of interest in an image set
  value121219('121219'),

  /// Display: Volume of circumscribed sphere
  /// Definition: A three-dimensional numeric measurement of the bounding sphere of a three-dimensional region of interest in an image set
  value121220('121220'),

  /// Display: Volume of ellipsoid
  /// Definition: A three-dimensional numeric measurement of an ellipsoid shaped three-dimensional region of interest in an image set
  value121221('121221'),

  /// Display: Volume of sphere
  /// Definition: A three-dimensional numeric measurement of a sphere shaped three-dimensional region of interest in an image set
  value121222('121222'),

  /// Display: Path Vertex
  /// Definition: Coordinates of a point on a defined path
  value121230('121230'),

  /// Display: Volume Surface
  /// Definition: Surface of an identified or measured volume
  value121231('121231'),

  /// Display: Source series for segmentation
  /// Definition: Series of image instances used as source data for a segmentation
  value121232('121232'),

  /// Display: Source image for segmentation
  /// Definition: Image instances used as source data for a segmentation
  value121233('121233'),

  /// Display: Distance from nipple
  /// Definition: Indicates the location of the area of interest as measured from the nipple of the breast
  value121242('121242'),

  /// Display: Distance from skin
  /// Definition: Indicates the location of the area of interest as measured from the most direct skin point of the breast
  value121243('121243'),

  /// Display: Distance from chest wall
  /// Definition: Indicates the location of the area of interest as measured from the chest wall
  value121244('121244'),

  /// Display: Patient exposure to ionizing radiation
  /// Definition: Patient exposure to ionizing radiation (procedure)
  value121290('121290'),

  /// Display: Results communicated
  /// Definition: The act of communicating actionable findings to a responsible receiver
  value121291('121291'),

  /// Display: Simultaneous Doppler
  /// Definition: Reference is to a Doppler waveform acquired simultaneously with an image
  value121301('121301'),

  /// Display: Simultaneous Hemodynamic
  /// Definition: Reference is to a Hemodynamic waveform acquired simultaneously with an image
  value121302('121302'),

  /// Display: Simultaneous ECG
  /// Definition: Reference is to a ECG waveform acquired simultaneously with an image
  value121303('121303'),

  /// Display: Simultaneous Voice Narrative
  /// Definition: Reference is to a voice narrative recording acquired simultaneously with an image
  value121304('121304'),

  /// Display: Simultaneous Respiratory Waveform
  /// Definition: A waveform representing chest expansion and contraction due to respiratory activity, measured simultaneously with the acquisition of this Image
  value121305('121305'),

  /// Display: Simultaneous Arterial Pulse Waveform
  /// Definition: Arterial pulse waveform obtained simultaneously with acquisition of a referencing image
  value121306('121306'),

  /// Display: Simultaneous Phonocardiographic Waveform
  /// Definition: Phonocardiographic waveform obtained simultaneously with acquisition of a referencing image
  value121307('121307'),

  /// Display: Localizer
  /// Definition: Image providing an anatomical reference on the patient under examination, for the purpose of defining the location of the ensuing imaging
  value121311('121311'),

  /// Display: Biopsy localizer
  /// Definition: Image providing an anatomical reference on the patient under examination, for the purpose of planning or documenting a biopsy
  value121312('121312'),

  /// Display: Other partial views
  /// Definition: Image providing a partial view of the target anatomy, when the target anatomy is too large for a single image
  value121313('121313'),

  /// Display: Other image of biplane pair
  /// Definition: Image providing a view of the target anatomy in a different imaging plane, typically from a near perpendicular angle
  value121314('121314'),

  /// Display: Other image of stereoscopic pair
  /// Definition: Image providing a view of the target anatomy in a different imaging plane, typically with a small angular difference
  value121315('121315'),

  /// Display: Images related to standalone object
  /// Definition: Image related to a non-image information object
  value121316('121316'),

  /// Display: Spectroscopy
  /// Definition: Image where signals are identified and separated according to their frequencies; e.g. to identify individual chemicals, or individual nuclei in a chemical compound
  value121317('121317'),

  /// Display: Spectroscopy Data for Water Phase Correction
  /// Definition: MR spectroscopy data acquired to correct the phase of the diagnostic data for the phase signal of the Water
  value121318('121318'),

  /// Display: Uncompressed predecessor
  /// Definition: An image that has not already been lossy compressed that is used as the source for creation of a lossy compressed image
  value121320('121320'),

  /// Display: Mask image for image processing operation
  /// Definition: Image used as the mask for an image processing operation, such as subtraction
  value121321('121321'),

  /// Display: Source image for image processing operation
  /// Definition: Image used as the source for an image processing operation
  value121322('121322'),

  /// Display: Source series for image processing operation
  /// Definition: Series used as the source for an image processing operation
  value121323('121323'),

  /// Display: Source Image
  /// Definition: Image used as the source for a derived or compressed image
  value121324('121324'),

  /// Display: Lossy compressed image
  /// Definition: Image encoded with a lossy compression transfer syntax
  value121325('121325'),

  /// Display: Alternate SOP Class instance
  /// Definition: SOP Instance encoded with a different SOP Class but otherwise equivalent data
  value121326('121326'),

  /// Display: Full fidelity image
  /// Definition: Full fidelity image, uncompressed or lossless compressed
  value121327('121327'),

  /// Display: Alternate Photometric Interpretation image
  /// Definition: Image encoded with a different photometric interpretation
  value121328('121328'),

  /// Display: Source image for montage
  /// Definition: Image used as a source for a montage (stitched) image
  value121329('121329'),

  /// Display: Lossy compressed predecessor
  /// Definition: An image that has previously been lossy compressed that is used as the source for creation of another lossy compressed image
  value121330('121330'),

  /// Display: Equivalent CDA Document
  /// Definition: HL7 Document Architecture (CDA) Document that contains clinical content equivalent to the referencing Instance
  value121331('121331'),

  /// Display: Complete Rendering for Presentation
  /// Definition: Instance that contains a displayable complete rendering of the referencing Instance
  value121332('121332'),

  /// Display: Partial Rendering for Presentation
  /// Definition: Instance that contains a displayable partial rendering of the referencing Instance
  value121333('121333'),

  /// Display: Extended Rendering for Presentation
  /// Definition: Instance that contains a displayable complete rendering of the referencing Instance, plus additional content such as inline rendering of referenced images
  value121334('121334'),

  /// Display: Source Document
  /// Definition: Document whose content has been wholly or partially transformed to create the referencing document
  value121335('121335'),

  /// Display: Anatomic image
  /// Definition: Image showing structural anatomic features
  value121338('121338'),

  /// Display: Functional image
  /// Definition: Image showing physical or chemical activity
  value121339('121339'),

  /// Display: Spectral filtered image
  /// Definition: Image providing the same view of the target anatomy acquired using only a specific imaging wavelength, frequency or energy
  value121340('121340'),

  /// Display: Device localizer
  /// Definition: Image providing an anatomical reference on the patient under examination, for the purpose of documenting the location of device such as a diagnostic or therapeutic catheter
  value121341('121341'),

  /// Display: Dose Image
  /// Definition: Image providing a graphic view of the distribution of radiation dose
  value121342('121342'),

  /// Display: Acquisition frames corresponding to volume
  /// Definition: The referenced image is the source of spatially-related frames from which the referencing 3D volume data set was derived
  value121346('121346'),

  /// Display: Volume corresponding to spatially-related acquisition frames
  /// Definition: 3D Volume containing the spatially-related frames in the referencing instance
  value121347('121347'),

  /// Display: Temporal Predecessor
  /// Definition: Instance acquired prior to the referencing instance in a set of consecutively acquired instances
  value121348('121348'),

  /// Display: Temporal Successor
  /// Definition: Instance acquired subsequent to the referencing instance in a set of consecutively acquired instances
  value121349('121349'),

  /// Display: Same acquisition at lower resolution
  /// Definition: Image of the same target area at lower resolution acquired in the same acquisition process
  value121350('121350'),

  /// Display: Same acquisition at higher resolution
  /// Definition: Image of the same target area at higher resolution acquired in the same acquisition process
  value121351('121351'),

  /// Display: Same acquisition at different focal depth
  /// Definition: Image of the same target area at different focal depth (Z-plane) acquired in the same acquisition process
  value121352('121352'),

  /// Display: Same acquisition at different spectral band
  /// Definition: Image of the same target area at different spectral band acquired in the same acquisition process
  value121353('121353'),

  /// Display: Imaged container label
  /// Definition: Image specifically targeting the container label
  value121354('121354'),

  /// Display: For Processing predecessor
  /// Definition: Source image from which FOR PRESENTATION images were created
  value121358('121358'),

  /// Display: Replaced report
  /// Definition: The reference is to a predecessor report that has been replaced by the current report
  value121360('121360'),

  /// Display: Addended report
  /// Definition: The reference is to a predecessor report to which the current report provides and addendum
  value121361('121361'),

  /// Display: Preliminary report
  /// Definition: A report that precedes the final report and may contain only limited information; it may be time sensitive, and it is not expected to contain all the reportable findings
  value121362('121362'),

  /// Display: Partial report
  /// Definition: A report that is not complete
  value121363('121363'),

  /// Display: Composed from prior doses
  /// Definition: The dose object created was calculated by summation of existing, previously calculated, RT Dose instances
  value121370('121370'),

  /// Display: Composed from prior doses and current plan
  /// Definition: The dose object created was calculated by summation of existing, previously calculated, RT Dose instances and dose newly calculated by the application. The newly calculated dose may or may not exist as an independent object
  value121371('121371'),

  /// Display: Source dose for composing current dose
  /// Definition: RT Dose Instances used as source for calculated dose
  value121372('121372'),

  /// Display: Active Ingredient Undiluted Concentration
  /// Definition: Concentration of the chemically or physically interesting (active) ingredient of a drug or contrast agent as delivered in product form from the manufacturer, typically in mg/ml
  value121380('121380'),

  /// Display: Contrast/Bolus Ingredient Opaque
  /// Definition: X-Ray absorption of the active ingredient of a contrast agent ingredient is greater than the absorption of water (tissue)
  value121381('121381'),

  /// Display: Quantity administered
  /// Definition: Number of units of substance administered to a patient; e.g. tablets
  value121382('121382'),

  /// Display: Mass administered
  /// Definition: Mass of substance administered to a patient
  value121383('121383'),

  /// Display: Derivation
  /// Definition: Method of deriving or calculating a measured value; e.g. mean, or maximum of set
  value121401('121401'),

  /// Display: Normality
  /// Definition: Assessment of a measurement relative to a normal range of values; may be considered subtype of term (G-C0F2, SRT, "has interpretation")
  value121402('121402'),

  /// Display: Level of Significance
  /// Definition: Significance of a measurement
  value121403('121403'),

  /// Display: Selection Status
  /// Definition: Status of selection of a measurement for further processing or use
  value121404('121404'),

  /// Display: Population description
  /// Definition: Description of a population of measurements
  value121405('121405'),

  /// Display: Reference Authority
  /// Definition: Bibliographic or clinical reference for a Description of a population of measurements
  value121406('121406'),

  /// Display: Normal Range description
  /// Definition: Description of a normal range of values for a measurement concept
  value121407('121407'),

  /// Display: Normal Range Authority
  /// Definition: Bibliographic or clinical reference for a Description of a normal range of values
  value121408('121408'),

  /// Display: User chosen value
  /// Definition: Observation value selected by user for further processing or use, or as most representative
  value121410('121410'),

  /// Display: Most recent value chosen
  /// Definition: Observation value is the recently obtained, and has been selected for further processing or use
  value121411('121411'),

  /// Display: Mean value chosen
  /// Definition: Observation value is the mean of several measurements, and has been selected for further processing or use
  value121412('121412'),

  /// Display: Standard deviation of population
  /// Definition: Standard deviation of a measurement in a reference population
  value121414('121414'),

  /// Display: Percentile Ranking of measurement
  /// Definition: Percentile Ranking of an observation value with respect a reference population
  value121415('121415'),

  /// Display: Z-Score of measurement
  /// Definition: Z-score of an observation value with respect a reference population, expressed as the dimensionless quantity (x-m) /s, where (x-m) is the deviation of the observation value (x) from the population mean (m), and s is the standard deviation of the population
  value121416('121416'),

  /// Display: 2 Sigma deviation of population
  /// Definition: 2 Sigma deviation of a measurement in a reference population
  value121417('121417'),

  /// Display: Equation
  /// Definition: Formula used to compute a derived measurement
  value121420('121420'),

  /// Display: Equation Citation
  /// Definition: Bibliographic reference to a formula used to compute a derived measurement; reference may be to a specific equation in a journal article
  value121421('121421'),

  /// Display: Table of Values Citation
  /// Definition: Bibliographic reference to a Table of Values used to look up a derived measurement
  value121422('121422'),

  /// Display: Method Citation
  /// Definition: Bibliographic reference to a method used to compute a derived measurement
  value121423('121423'),

  /// Display: Table of Values
  /// Definition: A Table of Values used to look up a derived measurement
  value121424('121424'),

  /// Display: Index
  /// Definition: Factor (divisor or multiplicand) for normalizing a measurement; e.g. body surface area used for normalizing hemodynamic measurements
  value121425('121425'),

  /// Display: Estimated
  /// Definition: Measurement obtained by observer estimation, rather than with a measurement tool or by calculation
  value121427('121427'),

  /// Display: Calculated
  /// Definition: Measurement obtained by calculation
  value121428('121428'),

  /// Display: Concern
  /// Definition: Identified issue about a state or process that has the potential to require intervention or management
  value121430('121430'),

  /// Display: DateTime Concern Noted
  /// Definition: DateTime concern noted (noted by whom is determined by context of use)
  value121431('121431'),

  /// Display: DateTime Concern Resolved
  /// Definition: DateTime the concern was resolved
  value121432('121432'),

  /// Display: DateTime Problem Resolved
  /// Definition: DateTime the problem was resolved
  value121433('121433'),

  /// Display: Service Delivery Location
  /// Definition: Place at which healthcare services may be provided
  value121434('121434'),

  /// Display: Service Performer
  /// Definition: Identification of a healthcare provider who performed a healthcare service; may be either a person or an organization
  value121435('121435'),

  /// Display: Medical Device Used
  /// Definition: Type or identifier of a medical device used on, in, or by a patient
  value121436('121436'),

  /// Display: Pharmacologic and exercise stress test
  /// Definition: Cardiac stress test using pharmacologic and exercise stressors
  value121437('121437'),

  /// Display: Paced stress test
  /// Definition: Cardiac stress test using an implanted or external cardiac pacing device
  value121438('121438'),

  /// Display: Correction of congenital cardiovascular deformity
  /// Definition: Procedure for correction of congenital cardiovascular deformity
  value121439('121439'),

  /// Display: RT Patient Setup
  /// Definition: Process of placing patient in the anticipated treatment position, including specification and location of positioning aids, and other treatment delivery accessories
  value121701('121701'),

  /// Display: RT Patient Position Acquisition, single plane MV
  /// Definition: Acquisition of patient positioning information prior to treatment delivery, using single-plane megavoltage imaging
  value121702('121702'),

  /// Display: RT Patient Position Acquisition, dual plane MV
  /// Definition: Acquisition of patient positioning information prior to treatment delivery, using dual-plane megavoltage imaging
  value121703('121703'),

  /// Display: RT Patient Position Acquisition, single plane kV
  /// Definition: Acquisition of patient positioning information prior to treatment delivery, using single-plane kilovoltage imaging
  value121704('121704'),

  /// Display: RT Patient Position Acquisition, dual plane kV
  /// Definition: Acquisition of patient positioning information prior to treatment delivery, using dual-plane kilovoltage imaging
  value121705('121705'),

  /// Display: RT Patient Position Acquisition, dual plane kV/MV
  /// Definition: Acquisition of patient positioning information prior to treatment delivery, using dual-plane combination kilovoltage and megavoltage imaging
  value121706('121706'),

  /// Display: RT Patient Position Acquisition, CT kV
  /// Definition: Acquisition of patient positioning information prior to treatment delivery, using kilovoltage CT imaging
  value121707('121707'),

  /// Display: RT Patient Position Acquisition, CT MV
  /// Definition: Acquisition of patient positioning information prior to treatment delivery, using megavoltage CT imaging
  value121708('121708'),

  /// Display: RT Patient Position Acquisition, Optical
  /// Definition: Acquisition of patient positioning information prior to treatment delivery, using optical imaging
  value121709('121709'),

  /// Display: RT Patient Position Acquisition, Ultrasound
  /// Definition: Acquisition of patient positioning information prior to treatment delivery, using ultrasound imaging
  value121710('121710'),

  /// Display: RT Patient Position Acquisition, Spatial Fiducials
  /// Definition: Acquisition of patient positioning information prior to treatment delivery, using spatial fiducials
  value121711('121711'),

  /// Display: RT Patient Position Registration, single plane
  /// Definition: Registration of intended and actual patient position prior to treatment delivery, using single-plane images
  value121712('121712'),

  /// Display: RT Patient Position Registration, dual plane
  /// Definition: Registration of intended and actual patient position prior to treatment delivery, using dual-plane images
  value121713('121713'),

  /// Display: RT Patient Position Registration, 3D CT general
  /// Definition: Registration of intended and actual patient position prior to treatment delivery, using 3D CT images and an unspecified registration approach
  value121714('121714'),

  /// Display: RT Patient Position Registration, 3D CT marker-based
  /// Definition: Registration of intended and actual patient position prior to treatment delivery, using 3D CT images and a marker-based registration approach
  value121715('121715'),

  /// Display: RT Patient Position Registration, 3D CT volume-based
  /// Definition: Registration of intended and actual patient position prior to treatment delivery, using 3D CT images and a volume-based registration approach
  value121716('121716'),

  /// Display: RT Patient Position Registration, 3D on 2D reference
  /// Definition: Registration of intended and actual patient position prior to treatment delivery, using 3D verification images and 2D reference images
  value121717('121717'),

  /// Display: RT Patient Position Registration, 2D on 3D reference
  /// Definition: Registration of intended and actual patient position prior to treatment delivery, using 2D verification images and 3D reference images
  value121718('121718'),

  /// Display: RT Patient Position Registration, Optical
  /// Definition: Registration of intended and actual patient position prior to treatment delivery, using optical images
  value121719('121719'),

  /// Display: RT Patient Position Registration, Ultrasound
  /// Definition: Registration of intended and actual patient position prior to treatment delivery, using ultrasound images
  value121720('121720'),

  /// Display: RT Patient Position Registration, Spatial Fiducials
  /// Definition: Registration of intended and actual patient position prior to treatment delivery, using spatial fiducials
  value121721('121721'),

  /// Display: RT Patient Position Adjustment
  /// Definition: Adjustment of patient position such that the patient is correctly positioned for treatment
  value121722('121722'),

  /// Display: RT Patient Position In-treatment-session Review
  /// Definition: Review of patient positioning information in the process of delivering a treatment session
  value121723('121723'),

  /// Display: RT Treatment Simulation with Internal Verification
  /// Definition: Simulated radiotherapy treatment delivery using verification integral to the Treatment Delivery System
  value121724('121724'),

  /// Display: RT Treatment Simulation with External Verification
  /// Definition: Simulated radiotherapy treatment delivery using verification by a external Machine Parameter Verifier
  value121725('121725'),

  /// Display: RT Treatment with Internal Verification
  /// Definition: Radiotherapy treatment delivery using verification integral to the Treatment Delivery System
  value121726('121726'),

  /// Display: RT Treatment with External Verification
  /// Definition: Radiotherapy treatment delivery using verification by an external Machine Parameter Verifier
  value121727('121727'),

  /// Display: RT Treatment QA with Internal Verification
  /// Definition: Quality assurance of a radiotherapy treatment delivery using verification integral to the Treatment Delivery System
  value121728('121728'),

  /// Display: RT Treatment QA with External Verification
  /// Definition: Quality assurance of a radiotherapy treatment delivery using verification by an external Machine Parameter Verifier
  value121729('121729'),

  /// Display: RT Machine QA
  /// Definition: Quality assurance of a Treatment Delivery Device
  value121730('121730'),

  /// Display: RT Treatment QA by RT Plan Dose Check
  /// Definition: Perform Quality Assurance on an RT Plan by evaluating dosimetric content of the current RT Plan
  value121731('121731'),

  /// Display: RT Treatment QA by RT Plan Difference Check
  /// Definition: Perform Quality Assurance on an RT Plan by comparing the content of previously quality-assessed RT Plans with the current RT Plan
  value121732('121732'),

  /// Display: RT Treatment QA by RT Ion Plan Dose Check
  /// Definition: Perform Quality Assurance on an RT Ion Plan by evaluating dosimetric content of the current RT Ion Plan
  value121733('121733'),

  /// Display: RT Treatment QA with RT Ion Plan Difference Check
  /// Definition: Perform Quality Assurance on an RT Ion Plan by comparing the content of previously quality-assessed RT Ion Plans with the current RT Ion Plan
  value121734('121734'),

  /// Display: Treatment Delivery Type
  /// Definition: Indicates whether the treatment to be delivered is a complete fraction or a continuation of previous incompletely treated fraction
  value121740('121740'),

  /// Display: Patient called to procedure room
  /// Definition: Patient called to procedure room
  value122001('122001'),

  /// Display: Patient admitted to procedure room
  /// Definition: Patient admitted to procedure room
  value122002('122002'),

  /// Display: Patient given pre-procedure instruction
  /// Definition: Patient given pre-procedure instruction
  value122003('122003'),

  /// Display: Patient informed consent given
  /// Definition: Patient informed consent given
  value122004('122004'),

  /// Display: Patient advance directive given
  /// Definition: Patient advance directive given
  value122005('122005'),

  /// Display: Nil Per Os (NPO) status confirmed
  /// Definition: Nil Per Os (NPO) status confirmed
  value122006('122006'),

  /// Display: Patient assisted to table
  /// Definition: Patient assisted to table
  value122007('122007'),

  /// Display: Patient prepped and draped
  /// Definition: Patient prepped and draped
  value122008('122008'),

  /// Display: Patient connected to continuous monitoring
  /// Definition: Patient connected to continuous monitoring
  value122009('122009'),

  /// Display: Patient transferred to holding area
  /// Definition: Patient transferred to holding area
  value122010('122010'),

  /// Display: Patient transferred to surgery
  /// Definition: Patient transferred to surgery
  value122011('122011'),

  /// Display: Patient transferred to CCU
  /// Definition: Patient transferred to CCU
  value122012('122012'),

  /// Display: Patient disoriented
  /// Definition: Patient disoriented
  value122020('122020'),

  /// Display: Patient reports nausea
  /// Definition: Patient reports nausea
  value122021('122021'),

  /// Display: Patient reports discomfort
  /// Definition: Patient reports discomfort
  value122022('122022'),

  /// Display: Patient reports chest pain
  /// Definition: Patient reports chest pain
  value122023('122023'),

  /// Display: Patient reports no pain
  /// Definition: Patient reports no pain
  value122024('122024'),

  /// Display: Patient alert
  /// Definition: Patient alert
  value122025('122025'),

  /// Display: Patient restless
  /// Definition: Patient restless
  value122026('122026'),

  /// Display: Patient sedated
  /// Definition: Patient sedated
  value122027('122027'),

  /// Display: Patient asleep
  /// Definition: Patient asleep
  value122028('122028'),

  /// Display: Patient unresponsive
  /// Definition: Patient unresponsive
  value122029('122029'),

  /// Display: Patient has respiratory difficulty
  /// Definition: Patient has respiratory difficulty
  value122030('122030'),

  /// Display: Patient coughed
  /// Definition: Patient coughed
  value122031('122031'),

  /// Display: Patient disconnected from continuous monitoring
  /// Definition: Patient disconnected from continuous monitoring
  value122032('122032'),

  /// Display: Hemostasis achieved
  /// Definition: Hemostasis achieved
  value122033('122033'),

  /// Display: Hemostasis not achieved - oozing
  /// Definition: Hemostasis not achieved - oozing
  value122034('122034'),

  /// Display: Hemostasis not achieved - actively bleeding
  /// Definition: Hemostasis not achieved - actively bleeding
  value122035('122035'),

  /// Display: Patient given post-procedure instruction
  /// Definition: Patient given post-procedure instruction
  value122036('122036'),

  /// Display: Patient discharged from department
  /// Definition: Patient discharged from department or laboratory
  value122037('122037'),

  /// Display: Patient pronounced dead
  /// Definition: Patient pronounced dead
  value122038('122038'),

  /// Display: Patient transferred to morgue
  /// Definition: Patient transferred to morgue
  value122039('122039'),

  /// Display: Personnel Arrived
  /// Definition: Identified personnel or staff arrived in procedure room
  value122041('122041'),

  /// Display: Personnel Departed
  /// Definition: Identified personnel or staff departed procedure room
  value122042('122042'),

  /// Display: Page Sent To
  /// Definition: Page sent to identified personnel or staff
  value122043('122043'),

  /// Display: Consultation With
  /// Definition: Consultation with identified personnel or staff
  value122044('122044'),

  /// Display: Office called
  /// Definition: Office of identified personnel or staff was called
  value122045('122045'),

  /// Display: Equipment failure
  /// Definition: Equipment failure
  value122046('122046'),

  /// Display: Equipment brought to procedure room
  /// Definition: Equipment brought to procedure room
  value122047('122047'),

  /// Display: Equipment ready
  /// Definition: Equipment ready for procedure
  value122048('122048'),

  /// Display: Equipment removed
  /// Definition: Equipment removed from procedure room
  value122049('122049'),

  /// Display: Bioptome
  /// Definition: Device for obtaining biopsy sample
  value122052('122052'),

  /// Display: Valvular Intervention
  /// Definition: Valvular Intervention
  value122053('122053'),

  /// Display: Aortic Intervention
  /// Definition: Aortic Intervention
  value122054('122054'),

  /// Display: Septal Defect Intervention
  /// Definition: Septal Defect Intervention
  value122055('122055'),

  /// Display: Vascular Intervention
  /// Definition: Vascular Intervention
  value122056('122056'),

  /// Display: Myocardial biopsy
  /// Definition: Myocardial biopsy
  value122057('122057'),

  /// Display: Arterial conduit angiography
  /// Definition: Arterial conduit angiography
  value122058('122058'),

  /// Display: Single plane Angiography
  /// Definition: Single plane Angiography
  value122059('122059'),

  /// Display: Bi-plane Angiography
  /// Definition: Bi-plane Angiography
  value122060('122060'),

  /// Display: Percutaneous Coronary Intervention
  /// Definition: Percutaneous Coronary Intervention
  value122061('122061'),

  /// Display: 15-Lead ECG
  /// Definition: 15-Lead electrocardiography
  value122062('122062'),

  /// Display: Pre-procedure log
  /// Definition: Log of events occurring prior to the current procedure
  value122072('122072'),

  /// Display: Current procedure evidence
  /// Definition: Analysis or measurements for current procedure (purpose of reference to evidence document)
  value122073('122073'),

  /// Display: Prior report for current patient
  /// Definition: Prior report for current patient
  value122075('122075'),

  /// Display: Consumable taken from inventory
  /// Definition: Identifier of Consumable taken from inventory
  value122076('122076'),

  /// Display: Consumable returned to inventory
  /// Definition: Identifier of Consumable returned to inventory
  value122077('122077'),

  /// Display: Remaining consumable disposed
  /// Definition: Identifier of consumable whose remaining content has been disposed
  value122078('122078'),

  /// Display: Consumable unusable
  /// Definition: Identifier of Consumable determined to be unusable
  value122079('122079'),

  /// Display: Drug start
  /// Definition: Identifier of Drug whose administration has started
  value122081('122081'),

  /// Display: Drug end
  /// Definition: Identifier of Drug whose administration has ended
  value122082('122082'),

  /// Display: Drug administered
  /// Definition: Identifier of Drug administered as part of procedure
  value122083('122083'),

  /// Display: Contrast start
  /// Definition: Identifier of Contrast agent whose administration has started
  value122084('122084'),

  /// Display: Contrast end
  /// Definition: Identifier of Contrast agent whose administration has ended
  value122085('122085'),

  /// Display: Contrast administered
  /// Definition: Identifier of Contrast agent administered
  value122086('122086'),

  /// Display: Infusate start
  /// Definition: Identifier of Infusate whose administration has started
  value122087('122087'),

  /// Display: Infusate end
  /// Definition: Identifier of Infusate whose administration has ended
  value122088('122088'),

  /// Display: Device crossed lesion
  /// Definition: Action of a device traversing a vascular lesion
  value122089('122089'),

  /// Display: Intervention Action
  /// Definition: Action of a clinical professional performed on a patient for therapeutic purpose
  value122090('122090'),

  /// Display: Volume administered
  /// Definition: Volume of Drug, Contrast agent, or Infusate administered
  value122091('122091'),

  /// Display: Undiluted dose administered
  /// Definition: Undiluted dose of Drug, Contrast agent, or Infusate administered
  value122092('122092'),

  /// Display: Concentration
  /// Definition: Concentration of Drug, Contrast agent, or Infusate administered
  value122093('122093'),

  /// Display: Rate of administration
  /// Definition: Rate of Drug, Contrast agent, or Infusate administration
  value122094('122094'),

  /// Display: Duration of administration
  /// Definition: Duration of Drug, Contrast agent, or Infusate administration
  value122095('122095'),

  /// Display: Volume unadministered or discarded
  /// Definition: Volume of Drug, Contrast agent, or Infusate unadministered or discarded
  value122096('122096'),

  /// Display: Catheter Curve
  /// Definition: Numeric parameter of Curvature of Catheter
  value122097('122097'),

  /// Display: Transmit Frequency
  /// Definition: Transmit Frequency
  value122098('122098'),

  /// Display: ST change from baseline
  /// Definition: Measured change of patient electrocardiographic ST level relative to baseline measurement
  value122099('122099'),

  /// Display: Aneurysm on cited vessel
  /// Definition: Anatomic term modifier indicating aneurysm on cited vessel is the subject of the finding
  value122101('122101'),

  /// Display: Graft to cited segment, proximal section
  /// Definition: Anatomic term modifier indicating proximal section of graft to cited vessel is the subject of the finding
  value122102('122102'),

  /// Display: Graft to cited segment, mid section
  /// Definition: Anatomic term modifier indicating mid section of graft to cited vessel is the subject of the finding
  value122103('122103'),

  /// Display: Graft to cited segment, distal section
  /// Definition: Anatomic term modifier indicating distal section of graft to cited vessel is the subject of the finding
  value122104('122104'),

  /// Display: DateTime of Intervention
  /// Definition: DateTime of Intervention
  value122105('122105'),

  /// Display: Duration of Intervention
  /// Definition: Duration of Intervention
  value122106('122106'),

  /// Display: Baseline Stenosis Measurement
  /// Definition: Lesion stenosis measured prior to any interventional procedure
  value122107('122107'),

  /// Display: Post-Intervention Stenosis Measurement
  /// Definition: Lesion stenosis measured after an interventional procedure
  value122108('122108'),

  /// Display: Baseline TIMI Flow
  /// Definition: Assessment of perfusion across a coronary lesion measured prior to any interventional procedure
  value122109('122109'),

  /// Display: Post-Intervention TIMI Flow
  /// Definition: Assessment of perfusion across a coronary lesion measured after an interventional procedure
  value122110('122110'),

  /// Display: Primary Intervention Device
  /// Definition: Indication that device is the primary (first and/or most significant) device used for interventional therapy of a particular pathology; e.g. lesion
  value122111('122111'),

  /// Display: Normal Myocardium
  /// Definition: Normal Myocardium
  value122112('122112'),

  /// Display: Sacrred Myocardial
  /// Definition: Sacrred Myocardial
  value122113('122113'),

  /// Display: Thinning Myocardium
  /// Definition: Thinning Myocardium
  value122114('122114'),

  /// Display: Hemodynamics Report
  /// Definition: Hemodynamics Report
  value122120('122120'),

  /// Display: Atrial pressure measurements
  /// Definition: Atrial pressure measurements, report section
  value122121('122121'),

  /// Display: Ventricular pressure measurements
  /// Definition: Ventricular pressure measurements, report section
  value122122('122122'),

  /// Display: Gradient assessment
  /// Definition: Gradient assessment, report section
  value122123('122123'),

  /// Display: Blood velocity measurements
  /// Definition: Blood velocity measurements, report section
  value122124('122124'),

  /// Display: Blood lab measurements
  /// Definition: Blood lab measurements, report section
  value122125('122125'),

  /// Display: Derived Hemodynamic Measurements
  /// Definition: Derived Hemodynamic Measurements, report section
  value122126('122126'),

  /// Display: Clinical Context
  /// Definition: Clinical Context, report section
  value122127('122127'),

  /// Display: Patient Transferred From
  /// Definition: Location from which the patient was transferred
  value122128('122128'),

  /// Display: PCI during this procedure
  /// Definition: Indication that the procedure includes a percutaneous coronary intervention
  value122129('122129'),

  /// Display: Dose Area Product
  /// Definition: Radiation dose times area of exposure
  value122130('122130'),

  /// Display: Degree of Thrombus
  /// Definition: Finding of probability and/or severity of thrombus
  value122131('122131'),

  /// Display: Severity of Calcification
  /// Definition: Severity of Calcification, property of lesion
  value122132('122132'),

  /// Display: Lesion Morphology
  /// Definition: Lesion Morphology; form and/or structural properties of lesion
  value122133('122133'),

  /// Display: Vessel Morphology
  /// Definition: Vessel Morphology; form and/or structural properties of vessel
  value122134('122134'),

  /// Display: Circulatory Support
  /// Definition: Technique (device or procedure) of support for patient circulatory system; hemodynamic support
  value122138('122138'),

  /// Display: Reason for Exam
  /// Definition: Reason for Exam
  value122139('122139'),

  /// Display: Comparison with Prior Exam Done
  /// Definition: Indication that the current exam data has been compared with prior exam data
  value122140('122140'),

  /// Display: Electrode Placement
  /// Definition: Electrocardiographic electrode placement technique
  value122141('122141'),

  /// Display: Acquisition Device Type
  /// Definition: Acquisition Device Type
  value122142('122142'),

  /// Display: Acquisition Device ID
  /// Definition: Acquisition Device ID
  value122143('122143'),

  /// Display: Quantitative Analysis
  /// Definition: Quantitative Analysis, report section
  value122144('122144'),

  /// Display: Qualitative Analysis
  /// Definition: Qualitative Analysis, report section
  value122145('122145'),

  /// Display: Procedure DateTime
  /// Definition: The date and time on which a procedure was performed on a patient
  value122146('122146'),

  /// Display: Clinical Interpretation
  /// Definition: Clinical Interpretation, report section
  value122147('122147'),

  /// Display: Lead ID
  /// Definition: ECG Lead Identifier
  value122148('122148'),

  /// Display: Beat Number
  /// Definition: Beat Number; ordinal of cardiac cycle within an acquisition
  value122149('122149'),

  /// Display: Compound Statement
  /// Definition: Complex coded semantic unit, consisting of several coded components
  value122150('122150'),

  /// Display: Trend
  /// Definition: Trend (temporal progression) of a clinical condition, finding, or disease
  value122151('122151'),

  /// Display: Statement
  /// Definition: Coded semantic unit
  value122152('122152'),

  /// Display: Statement Modifier
  /// Definition: Coded modifier for a semantic unit
  value122153('122153'),

  /// Display: Conjunctive Term
  /// Definition: Conjunctive term between semantic units
  value122154('122154'),

  /// Display: Probability
  /// Definition: Probability
  value122157('122157'),

  /// Display: ECG Global Measurements
  /// Definition: ECG Global Measurements, report section
  value122158('122158'),

  /// Display: ECG Lead Measurements
  /// Definition: ECG Lead Measurements, report section
  value122159('122159'),

  /// Display: Derived Area, Non-Valve
  /// Definition: Derived cross-sectional area of a vessel or anatomic feature, other than a cardiac valve
  value122160('122160'),

  /// Display: Pulmonary Flow
  /// Definition: Rate of blood flow through Pulmonary artery
  value122161('122161'),

  /// Display: Systemic Flow
  /// Definition: Rate of blood flow through the aorta
  value122162('122162'),

  /// Display: Discharge DateTime
  /// Definition: DateTime of patient discharge from hospital admission
  value122163('122163'),

  /// Display: Coronary Artery Bypass During This Admission
  /// Definition: Indication that a Coronary Artery Bypass operation was performed during the current hospital admission
  value122164('122164'),

  /// Display: Date of Death
  /// Definition: Date of Death
  value122165('122165'),

  /// Display: Death During This Admission
  /// Definition: Indication that the patient died during the current hospital admission
  value122166('122166'),

  /// Display: Death During Catheterization
  /// Definition: Indication that the patient died during the current Catheterization procedure
  value122167('122167'),

  /// Display: Type of Myocardial Infarction
  /// Definition: Finding of type of Myocardial Infarction
  value122170('122170'),

  /// Display: Coronary lesion > = 50% stenosis
  /// Definition: Finding of Coronary lesion with greater than 50% stenosis
  value122171('122171'),

  /// Display: Acute MI Present
  /// Definition: Finding of Acute Myocardial Infarction Presence as indication for interventional procedure
  value122172('122172'),

  /// Display: ST Elevation Onset DateTime
  /// Definition: DateTime of first determination of elevated ECG ST segment, as indication of Myocardial Infarction
  value122173('122173'),

  /// Display: Number of lesion interventions attempted
  /// Definition: Number of lesion interventions attempted during current procedure
  value122175('122175'),

  /// Display: Number of lesion interventions successful
  /// Definition: Number of lesion interventions successful during current procedure, where the residual post intervention stenosis is less than or equal to 50% of the arterial luminal diameter, TIMI Flow is 3 and the minimal decrease in stenosis was 20%
  value122176('122176'),

  /// Display: Procedure Result
  /// Definition: Overall success of interventional procedure
  value122177('122177'),

  /// Display: Lesion Intervention Information
  /// Definition: Lesion Intervention Information, report section
  value122178('122178'),

  /// Display: Peri-procedural MI occurred
  /// Definition: Indication that Myocardial Infarction occurred during current procedure
  value122179('122179'),

  /// Display: CK-MB baseline
  /// Definition: Creatine Kinase-MB value at baseline (start of procedure)
  value122180('122180'),

  /// Display: CK-MB peak
  /// Definition: Creatine Kinase-MB highest value measured during procedure
  value122181('122181'),

  /// Display: R-R interval
  /// Definition: Time interval between ECG R-wave peaks in subsequent cardiac cycles
  value122182('122182'),

  /// Display: Blood temperature
  /// Definition: Blood temperature
  value122183('122183'),

  /// Display: Blood Oxygen content
  /// Definition: Blood Oxygen content
  value122185('122185'),

  /// Display: Blood Carbon dioxide saturation
  /// Definition: Blood Carbon dioxide saturation
  value122187('122187'),

  /// Display: Pulmonary Arterial Content (FCpa)
  /// Definition: Pulmonary Arterial Content (FCpa)
  value122188('122188'),

  /// Display: Pulmonary Venous Content (FCpv)
  /// Definition: Pulmonary Venous Content (FCpv)
  value122189('122189'),

  /// Display: Max dp/dt/P
  /// Definition: Max dp/dt/P
  value122190('122190'),

  /// Display: Ventricular End Diastolic pressure
  /// Definition: Ventricular End Diastolic pressure
  value122191('122191'),

  /// Display: Indicator appearance time
  /// Definition: Elapsed time from injection of an indicator bolus until it is observed at another location
  value122192('122192'),

  /// Display: Maximum pressure acceleration
  /// Definition: Maximum pressure acceleration
  value122193('122193'),

  /// Display: Ventricular Systolic blood pressure
  /// Definition: Ventricular Systolic blood pressure
  value122194('122194'),

  /// Display: Pulse Strength
  /// Definition: Pulse Strength; palpable strength of systolic flow
  value122195('122195'),

  /// Display: C wave pressure
  /// Definition: The secondary peak pressure in the atrium during atrial contraction
  value122196('122196'),

  /// Display: Gradient pressure, average
  /// Definition: Gradient pressure, average
  value122197('122197'),

  /// Display: Gradient pressure, peak
  /// Definition: Gradient pressure, peak
  value122198('122198'),

  /// Display: Pressure at dp/dt max
  /// Definition: Pressure at dp/dt max
  value122199('122199'),

  /// Display: Diastolic blood velocity, mean
  /// Definition: Diastolic blood velocity, mean
  value122201('122201'),

  /// Display: Diastolic blood velocity, peak
  /// Definition: Diastolic blood velocity, peak
  value122202('122202'),

  /// Display: Systolic blood velocity, mean
  /// Definition: Systolic blood velocity, mean
  value122203('122203'),

  /// Display: Systolic blood velocity, peak
  /// Definition: Systolic blood velocity, peak
  value122204('122204'),

  /// Display: Blood velocity, mean
  /// Definition: Blood velocity, mean
  value122205('122205'),

  /// Display: Blood velocity, minimum
  /// Definition: Blood velocity, minimum
  value122206('122206'),

  /// Display: Blood velocity, peak
  /// Definition: Blood velocity, peak
  value122207('122207'),

  /// Display: x-descent pressure
  /// Definition: Venous or atrial pressure minimum during ventricular systole, after A-wave
  value122208('122208'),

  /// Display: y-descent pressure
  /// Definition: Venous or atrial pressure minimum when tricuspid valve opens during diastole, after V-wave
  value122209('122209'),

  /// Display: z-point pressure
  /// Definition: Atrial pressure upon closure of tricuspid and mitral valves
  value122210('122210'),

  /// Display: Left Ventricular ejection time
  /// Definition: Left Ventricular ejection time
  value122211('122211'),

  /// Display: Left Ventricular filling time
  /// Definition: Left Ventricular filling time
  value122212('122212'),

  /// Display: Right Ventricular ejection time
  /// Definition: Right Ventricular ejection time
  value122213('122213'),

  /// Display: Right Ventricular filling time
  /// Definition: Right Ventricular filling time
  value122214('122214'),

  /// Display: Total Pulmonary Resistance
  /// Definition: Total Pulmonary Resistance
  value122215('122215'),

  /// Display: Total Vascular Resistance
  /// Definition: Total Vascular Resistance
  value122216('122216'),

  /// Display: Coronary Flow reserve
  /// Definition: Coronary Flow reserve
  value122217('122217'),

  /// Display: Diastolic/Systolic velocity ratio
  /// Definition: Diastolic/Systolic velocity ratio
  value122218('122218'),

  /// Display: Hyperemic ratio
  /// Definition: Hyperemic ratio
  value122219('122219'),

  /// Display: Hemodynamic Resistance Index
  /// Definition: Hemodynamic Resistance Index
  value122220('122220'),

  /// Display: Thorax diameter, sagittal
  /// Definition: Thorax diameter, sagittal
  value122221('122221'),

  /// Display: Procedure Environmental Characteristics
  /// Definition: Environmental characteristics in the procedure room
  value122222('122222'),

  /// Display: Room oxygen concentration
  /// Definition: Oxygen concentration in the procedure room
  value122223('122223'),

  /// Display: Room temperature
  /// Definition: Temperature in the procedure room
  value122224('122224'),

  /// Display: Room Barometric pressure
  /// Definition: Barometric pressure in the procedure room
  value122225('122225'),

  /// Display: Left to Right Flow
  /// Definition: Left to Right Flow
  value122227('122227'),

  /// Display: Right to Left Flow
  /// Definition: Right to Left Flow
  value122228('122228'),

  /// Display: Arteriovenous difference
  /// Definition: Arteriovenous oxygen content difference
  value122229('122229'),

  /// Display: 10 Year CHD Risk
  /// Definition: Framingham Study 10 Year CHD Risk
  value122230('122230'),

  /// Display: Comparative Average10 Year CHD Risk
  /// Definition: Framingham Study Comparative Average10 Year CHD Risk
  value122231('122231'),

  /// Display: Comparative Low10 Year CHD Risk
  /// Definition: Framingham Study Comparative Low10 Year CHD Risk
  value122232('122232'),

  /// Display: LDL Cholesterol Score Sheet for Men
  /// Definition: Framingham Study LDL Cholesterol Score Sheet for Men
  value122233('122233'),

  /// Display: LDL Cholesterol Score Sheet for Women
  /// Definition: Framingham Study LDL Cholesterol Score Sheet for Women
  value122234('122234'),

  /// Display: Total Cholesterol Score Sheet for Men
  /// Definition: Framingham Study Total Cholesterol Score Sheet for Men
  value122235('122235'),

  /// Display: Total Cholesterol Score Sheet for Women
  /// Definition: Framingham Study Total Cholesterol Score Sheet for Women
  value122236('122236'),

  /// Display: Corrected Sinus Node Recovery Time
  /// Definition: Corrected Sinus Node Recovery Time
  value122237('122237'),

  /// Display: Max volume normalized to 50mmHg pulse pressure
  /// Definition: Max volume normalized to 50mmHg pulse pressure
  value122238('122238'),

  /// Display: Oxygen Consumption
  /// Definition: Oxygen Consumption
  value122239('122239'),

  /// Display: BSA = 3.207*WT^(0.7285-0.0188 log (WT)) *HT^0.3
  /// Definition: Body Surface Area computed from patient height and weight: BSA = 3.207*WT[g]^(0.7285-0.0188 log (WT[g])) *HT[cm] ^ 0.3 [Boyd E, The growth of the surface area of the human body. Minneapolis: University of Minnesota Press, 1935, eq. (36) ]
  value122240('122240'),

  /// Display: BSA = 0.007184*WT^ 0.425*HT^0.725
  /// Definition: Body Surface Area computed from patient height and weight: BSA = 0.007184* WT[kg] ^ 0.425*HT[cm] ^ 0.725 [Dubois and Dubois, Arch Int Med 1916 17:863-71]
  value122241('122241'),

  /// Display: BSA = 0.0235*WT^0.51456*HT^ 0.42246
  /// Definition: Body Surface Area computed from patient height and weight: BSA = 0.0235* WT[kg] ^0.51456*HT[cm]^ 0.42246 [Gehan EA, George SL, 'Estimation of human body surface area from height and weight', Cancer Chemother Rep 1970 54:225-35]
  value122242('122242'),

  /// Display: BSA = 0.024265*WT^0.5378*HT^0.3964
  /// Definition: Body Surface Area computed from patient height and weight: BSA = 0.024265 * WT[kg] ^ 0.5378 * HT[cm] ^ 0.3964 [Haycock G.B., Schwartz G.J., Wisotsky D.H. 'Geometric method for measuring body surface area: A height weight formula validated in infants, children and adults.' The Journal of Pediatrics 1978 93:1:62-66]
  value122243('122243'),

  /// Display: BSA = (HT * WT/36) ^0.5
  /// Definition: Body Surface Area computed from patient height and weight: BSA = (HT[m] * WT[kg] / 36) ^ 0.5 [Mosteller, R.D. 'Simplified Calculation of Body Surface Area.' N Engl J Med 1987 Oct 22;317(17):1098]
  value122244('122244'),

  /// Display: BSA = 1321+0.3433*WT
  /// Definition: Body Surface Area computed from patient weight:BSA = 1321 + 0.3433 * WT[kg] (for pediatrics 3-30 kg) [Current, J.D. 'A Linear Equation For Estimating The Body Surface Area In Infants And Children', The Internet Journal of Anesthesiology. 1998. 2:2]
  value122245('122245'),

  /// Display: BSA = 0.0004688 * WT ^ (0.8168 - 0.0154 * log(WT))
  /// Definition: BSA = 0.0004688 * (1000 * WT) ^ (0.8168 - 0.0154 * log(1000 * WT)) Where (WT is weight in kilogram) Units = m2 Boyd, Edith. The Growth of the Surface Area of the Human Body(originally published in 1935 by the University of Minnesota Press), Greenwood Press, Westport, Connecticut, 1975, p. 102.Equation (35)
  value122246('122246'),

  /// Display: VO2male = BSA (138.1 - 11.49 * loge(age) + 0.378 * HRf)
  /// Definition: Equation for estimated oxygen consumption: VO2male = BSA (138.1 - 11.49 * loge(age) + 0.378 * HRf)
  value122247('122247'),

  /// Display: VO2female = BSA (138.1 - 17.04 * loge(age) + 0.378 * HRf)
  /// Definition: Equation for estimated oxygen consumption: VO2female = BSA (138.1 - 17.04 * loge(age) + 0.378 * HRf)
  value122248('122248'),

  /// Display: VO2 = VeSTPD * 10 * (FIO2 - FE02)
  /// Definition: Equation for estimated oxygen consumption: VO2 = VeSTPD * 10 * (FIO2 - FE02)
  value122249('122249'),

  /// Display: VO2 = 152 * BSA
  /// Definition: Equation for estimated oxygen consumption: VO2 = 152 * BSA
  value122250('122250'),

  /// Display: VO2 = 175 * BSA
  /// Definition: Equation for estimated oxygen consumption: VO2 = 175 * BSA
  value122251('122251'),

  /// Display: VO2 = 176 * BSA
  /// Definition: Equation for estimated oxygen consumption: VO2 = 176 * BSA
  value122252('122252'),

  /// Display: Robertson & Reid table
  /// Definition: Robertson & Reid Table for estimated oxygen consumption
  value122253('122253'),

  /// Display: Fleisch table
  /// Definition: Fleisch table for estimated oxygen consumption
  value122254('122254'),

  /// Display: Boothby table
  /// Definition: Boothby table for estimated oxygen consumption
  value122255('122255'),

  /// Display: if (prem age< 3days) P50 = 19.9
  /// Definition: Estimate of Oxygen partial pressure at 50% saturation for premature infants less than 3 days old: P50 = 19.9
  value122256('122256'),

  /// Display: if (age < 1day) P50 = 21.6
  /// Definition: Estimate of Oxygen partial pressure at 50% saturation for infants less than 1 day old: P50 = 21.6
  value122257('122257'),

  /// Display: if (age < 30day) P50 = 24.6
  /// Definition: Estimate of Oxygen partial pressure at 50% saturation for infants less than 30 days old: P50 = 24.6
  value122258('122258'),

  /// Display: if (age < 18y) P50 = 27.2
  /// Definition: Estimate of Oxygen partial pressure at 50% saturation for patients less than 18 years old: P50 = 27.2
  value122259('122259'),

  /// Display: if (age < 40y) P50 = 27.4
  /// Definition: Estimate of Oxygen partial pressure at 50% saturation for patients less than 40 years old: P50 = 27.4
  value122260('122260'),

  /// Display: if (age > 60y) P50 = 29.3
  /// Definition: Estimate of Oxygen partial pressure at 50% saturation for patients more than 60 years old: P50 = 29.3
  value122261('122261'),

  /// Display: Area = Flow / 44.5 * sqrt(Gradient[mmHg])
  /// Definition: Cardiac valve area computed from flow and pressure gradient: Area = Flow / 44.5 * sqrt(Gradient[mmHg]) [Gorlin and Gorlin, Am Heart J, 1951]
  value122262('122262'),

  /// Display: MVA = Flow / 38.0 * sqrt(Gradient[mmHg])
  /// Definition: Mitral valve area computed from flow and pressure gradient: Mitral valve Area = Flow / 38.0 * sqrt(Gradient[mmHg]) [Gorlin and Gorlin, Am Heart J, 1951]
  value122263('122263'),

  /// Display: BMI = Wt / Ht ^ 2
  /// Definition: Body Mass Index computed from weight and height: BMI = Wt/Ht^2
  value122265('122265'),

  /// Display: BSA = 0.007358 * WT ^ 0.425 * HT ^ 0.725
  /// Definition: Body Surface Area computed from patient height and weight: BSA = 0.007358 * WT[kg] ^ 0.425 * HT[cm] ^ 0.725 (for East Asian adult, aged 15+ years) [Kanai Izumi, Masamitsu Kanai, 'Clinical examination method summary']
  value122266('122266'),

  /// Display: BSA = 0.010265 * WT ^ 0.423 * HT ^ 0.651
  /// Definition: Body Surface Area computed from patient height and weight: BSA = 0.010265 * WT[kg] ^ 0.423 * HT[cm] ^ 0.651 (For East Asian child aged 12-14 years)
  value122267('122267'),

  /// Display: BSA = 0.008883 * WT ^ 0.444 * HT ^ 0.663
  /// Definition: Body Surface Area computed from patient height and weight: BSA = 0.008883* WT[kg] ^ 0.444 * HT[cm] ^ 0.663 (For East Asian child aged 6-11 years)
  value122268('122268'),

  /// Display: BSA = 0.038189 * WT ^ 0.423 * HT ^ 0.362
  /// Definition: Body Surface Area computed from patient height and weight: BSA = 0.038189 * WT[kg] ^ 0.423 * HT[cm] ^ 0.362 (For East Asian child aged 1-5 years)
  value122269('122269'),

  /// Display: BSA = 0.009568 * WT ^ 0.473 * HT ^ 0.655
  /// Definition: Body Surface Area computed from patient height and weight: BSA = 0.009568* WT[kg] ^ 0.473 * HT[cm] ^ 0.655 (For East Asian child aged 0-12 months)
  value122270('122270'),

  /// Display: Skin Condition Warm
  /// Definition: Skin Condition Warm
  value122271('122271'),

  /// Display: Skin Condition Cool
  /// Definition: Skin Condition Cool
  value122272('122272'),

  /// Display: Skin Condition Cold
  /// Definition: Skin Condition Cold
  value122273('122273'),

  /// Display: Skin Condition Dry
  /// Definition: Skin Condition Dry
  value122274('122274'),

  /// Display: Skin Condition Clammy
  /// Definition: Skin Condition Clammy
  value122275('122275'),

  /// Display: Skin Condition Diaphoretic
  /// Definition: Skin Condition Diaphoretic
  value122276('122276'),

  /// Display: Skin Condition Flush
  /// Definition: Skin Condition Flush
  value122277('122277'),

  /// Display: Skin Condition Mottled
  /// Definition: Skin Condition Mottled
  value122278('122278'),

  /// Display: Skin Condition Pale
  /// Definition: Skin Condition Pale
  value122279('122279'),

  /// Display: Airway unobstructed
  /// Definition: Airway unobstructed
  value122281('122281'),

  /// Display: Airway partially obstructed
  /// Definition: Airway partially obstructed
  value122282('122282'),

  /// Display: Airway severely obstructed
  /// Definition: Airway severely obstructed
  value122283('122283'),

  /// Display: Not Visualized
  /// Definition: Anatomy could not be visualized for the purpose of evaluation
  value122288('122288'),

  /// Display: Quantitative Arteriography Report
  /// Definition: Quantitative Arteriography Report
  value122291('122291'),

  /// Display: Quantitative Ventriculography Report
  /// Definition: Quantitative Ventriculography Report
  value122292('122292'),

  /// Display: Guidewire crossing lesion unsuccessful
  /// Definition: Guidewire crossing lesion unsuccessful
  value122301('122301'),

  /// Display: Guidewire crossing lesion successful
  /// Definition: Guidewire crossing lesion successful
  value122302('122302'),

  /// Display: Angioplasty balloon inflated
  /// Definition: Angioplasty balloon inflated
  value122303('122303'),

  /// Display: Angioplasty balloon deflated
  /// Definition: Angioplasty balloon deflated
  value122304('122304'),

  /// Display: Device deployed
  /// Definition: Device deployed
  value122305('122305'),

  /// Display: Stent re-expanded
  /// Definition: Stent re-expanded
  value122306('122306'),

  /// Display: Object removed
  /// Definition: Object removed
  value122307('122307'),

  /// Display: Radiation applied
  /// Definition: Radiation applied
  value122308('122308'),

  /// Display: Radiation removed
  /// Definition: Radiation removed
  value122309('122309'),

  /// Display: Interventional device placement unsuccessful
  /// Definition: Interventional device placement unsuccessful
  value122310('122310'),

  /// Display: Interventional device placed
  /// Definition: Interventional device placed
  value122311('122311'),

  /// Display: Intervention performed
  /// Definition: Intervention performed
  value122312('122312'),

  /// Display: Interventional device withdrawn
  /// Definition: Interventional device withdrawn
  value122313('122313'),

  /// Display: Catheter Size
  /// Definition: Catheter Size
  value122319('122319'),

  /// Display: Injectate Temperature
  /// Definition: Injectate Temperature
  value122320('122320'),

  /// Display: Injectate Volume
  /// Definition: Injectate Volume
  value122321('122321'),

  /// Display: Calibration Factor
  /// Definition: Factor by which a measured or calculated value is multiplied to obtain the estimated real-world value
  value122322('122322'),

  /// Display: IVUS Report
  /// Definition: Intravascular Ultrasound Report
  value122325('122325'),

  /// Display: EEM Diameter
  /// Definition: External Elastic Membrane (EEM) diameter measured through the center point of the vessel. Center point of the vessel is defined as the center of gravity of the EEM area. The EEM is a discrete interface at the border between the media and the adventitia
  value122330('122330'),

  /// Display: Plaque Plus Media Thickness
  /// Definition: The distance from intimal leading edge to the external elastic membrane along any line passing through the luminal center, which is defined as the center of gravity of the lumen area
  value122331('122331'),

  /// Display: Lumen Perimeter
  /// Definition: Planimetered perimeter of the lumen
  value122332('122332'),

  /// Display: EEM Cross-Sectional Area
  /// Definition: Vessel area measured at the External Elastic Membrane (EEM), a discrete interface at the border between the media and the adventitia
  value122333('122333'),

  /// Display: Plaque plus Media Cross-Sectional Area
  /// Definition: Area within the EEM occupied by atheroma, regardless of lumen compromise. Plaque plus Media Area = EEM cross-sectional area - vessel lumen cross-sectional area
  value122334('122334'),

  /// Display: In-Stent Neointimal Cross-Sectional Area
  /// Definition: Measurement of in-stent restenosis. In-Stent Intimal Area = Stent cross-sectional area - vessel lumen cross-sectional area
  value122335('122335'),

  /// Display: Vascular Volume measurement length
  /// Definition: Longitudinal extent of the Vascular Volume Measurement. This is the distance from the distal edge to the proximal edge of the Volume measurement
  value122336('122336'),

  /// Display: Relative position
  /// Definition: Longitudinal distance from the closest edge of a fiducial feature or reference location to the start of the vascular measurement. This value will be a positive if the measurement is distal to the fiducial feature or reference location, or negative if the measurement is proximal to the fiducial feature or reference location
  value122337('122337'),

  /// Display: Stent Volume Obstruction
  /// Definition: In-Stent Neointimal Volume / Stent Volume
  value122339('122339'),

  /// Display: Fiducial feature
  /// Definition: Reference, normally anatomical, which is used for locating the position of a measurement
  value122340('122340'),

  /// Display: Calcium Length
  /// Definition: Longitudinal calcium length measurement
  value122341('122341'),

  /// Display: Lumen Eccentricity Index
  /// Definition: Measurement of vessel lumen eccentricity. Lumen Eccentricity Index = (maximum vessel lumen diameter - minimum vessel lumen diameter) / maximum vessel lumen diameter. Lumen diameters are measured through the center point of the lumen, which is defined as the center of gravity of the lumen area
  value122343('122343'),

  /// Display: Plaque plus Media Eccentricity Index
  /// Definition: Plaque plus Media Eccentricity Index = (maximum Plaque plus media thickness - minimum Plaque plus media thickness) / maximum Plaque plus media thickness
  value122344('122344'),

  /// Display: Remodeling Index
  /// Definition: Measurement of increase or decrease in EEM area that occurs during the development of atherosclerosis. Remodeling Index = Lesion EEM area / reference EEM area
  value122345('122345'),

  /// Display: Stent Symmetry Index
  /// Definition: Measurement of stent circularity. Stent Symmetry Index = (maximum stent diameter - minimum stent diameter) / maximum stent diameter
  value122346('122346'),

  /// Display: Stent Expansion Index
  /// Definition: Measurement of stent area relative to the reference lumen area. Stent Expansion Index = Minimum stent area / reference vessel lumen cross-sectional area
  value122347('122347'),

  /// Display: Lumen Shape Index
  /// Definition: Measurement of vessel lumen eccentricity. Lumen Shape Index = (2p * sqrt(Vessel lumen cross-sectional area / p) / Lumen Perimeter) 2 Reference: Tobis & Yock, "Intravascular Ultrasound Imaging", Chapter 7
  value122348('122348'),

  /// Display: Lumen Diameter Ratio
  /// Definition: Lumen diameter ratio = minimum vessel lumen diameter / maximum vessel lumen diameter, measured at the same cross section in the vessel. Lumen diameters are measured through the center point of the lumen, which is defined as the center of gravity of the lumen area
  value122350('122350'),

  /// Display: Stent Diameter Ratio
  /// Definition: Stent diameter ratio = Minimum stent diameter / Maximum stent diameter, measured at the same cross section in the vessel. Stent diameters are measured through the center point of the stent, which is defined as the center of gravity of the stent area
  value122351('122351'),

  /// Display: EEM Diameter Ratio
  /// Definition: EEM diameter ratio = minimum EEM diameter / maximum EEM diameter. Measured at the same cross section in the vessel
  value122352('122352'),

  /// Display: Plaque Burden
  /// Definition: Fractional area within the External Elastic Membrane (EEM) occupied by atheroma. Plaque Burden = (EEM area - vessel lumen cross-sectional area) / EEM area
  value122354('122354'),

  /// Display: Arc of Calcium
  /// Definition: Angular measurement of a Calcium deposit with the apex located at the center of the lumen, which is defined as the center of gravity of the lumen area
  value122355('122355'),

  /// Display: Soft plaque
  /// Definition: Plaque characterized by low density or echogenicity
  value122356('122356'),

  /// Display: In-Stent Neointima
  /// Definition: Abnormal thickening of the intima within the stented segment
  value122357('122357'),

  /// Display: True Lumen
  /// Definition: Lumen surrounded by all three layers of the vessel-intima, media, and adventitia
  value122360('122360'),

  /// Display: False Lumen
  /// Definition: A channel, usually parallel to the true lumen, which does not communicate with the true lumen over a portion of its length
  value122361('122361'),

  /// Display: Plaque Rupture
  /// Definition: Plaque ulceration with a tear detected in a fibrous cap
  value122363('122363'),

  /// Display: Stent Gap
  /// Definition: Length of gap between two consecutive stents
  value122364('122364'),

  /// Display: T-1 Worst
  /// Definition: Worst stenosis - the stenosis with the smallest lumen size within a vessel segment
  value122367('122367'),

  /// Display: T-2 Secondary
  /// Definition: 2nd most severe stenosis within a vessel segment
  value122368('122368'),

  /// Display: T-3 Secondary
  /// Definition: 3rd most severe stenosis within a vessel segment
  value122369('122369'),

  /// Display: T-4 Secondary
  /// Definition: 4th most severe stenosis within a vessel segment
  value122370('122370'),

  /// Display: EEM Volume
  /// Definition: External Elastic Membrane (EEM) volume measured within a specified region. The EEM is a discrete interface at the border between the media and the Adventitia
  value122371('122371'),

  /// Display: Lumen Volume
  /// Definition: Lumen volume measured within a specified region
  value122372('122372'),

  /// Display: In-Stent Neointimal Volume
  /// Definition: The amount of plaque between the lumen and stent, within the stent region; In-stent restenosis. In-Stent Neointimal Volume = Stent Volume - Lumen Volume
  value122374('122374'),

  /// Display: Native Plaque Volume
  /// Definition: The amount of plaque between the stent and the EEM, within the stent region. Native Plaque Volume = EEM Volume - Stent Volume
  value122375('122375'),

  /// Display: Total Plaque Volume
  /// Definition: Total amount of plaque between the EEM and the Lumen, over the entire region that is measured. Total Plaque Volume = EEM Volume - Lumen Volume
  value122376('122376'),

  /// Display: Proximal Reference
  /// Definition: Proximal reference segment measurement site. Typically the site with the largest lumen proximal to a stenosis but within the same segment (usually within 10 mm of the stenosis with no major intervening branches)
  value122380('122380'),

  /// Display: Distal Reference
  /// Definition: Distal reference segment measurement site. Typically the site with the largest lumen distal to a stenosis but within the same segment (usually within 10 mm of the stenosis with no major intervening branches)
  value122381('122381'),

  /// Display: Site of Lumen Minimum
  /// Definition: Site of the smallest lumen in a vessel; e.g. due to a stenotic lesion
  value122382('122382'),

  /// Display: Entire Pullback
  /// Definition: Measurement region that encompasses the entire vessel imaged in a single pullback acquisition
  value122383('122383'),

  /// Display: Stented Region
  /// Definition: Measurement region occupied by the stent
  value122384('122384'),

  /// Display: Proximal Stent Margin
  /// Definition: Region starting at the proximal edge of the Stent and extending several millimeters (usually 5 mm) proximal to the Stent edge
  value122385('122385'),

  /// Display: Distal Stent Margin
  /// Definition: Region starting at the distal edge of the Stent and extending several millimeters (usually 5 mm) distal to the Stent edge
  value122386('122386'),

  /// Display: Dissection Classification
  /// Definition: Classification of dissections in a vessel
  value122387('122387'),

  /// Display: Intra-stent Dissection
  /// Definition: Separation of neointimal hyperplasia from stent struts, usually seen only after treatment of in-stent restenosis
  value122388('122388'),

  /// Display: Vulnerable Plaque
  /// Definition: Plaque with a thin cap fibrous atheroma that is at increased risk of rupture and thrombosis (or re-thrombosis) and rapid stenosis progression
  value122389('122389'),

  /// Display: Eroded Plaque
  /// Definition: Plaque erosions with no structural defect (beyond endothelial injury) or gap in the plaque
  value122390('122390'),

  /// Display: Relative Stenosis Severity
  /// Definition: Stenosis severity classifications of multiple lesions in a vessel
  value122391('122391'),

  /// Display: Restenotic Lesion
  /// Definition: A finding of a previously treated lesion in which stenosis has reoccurred
  value122393('122393'),

  /// Display: Fibro-Lipidic Plaque
  /// Definition: Loosely packed bundles of collagen fibers with regions of lipid deposition present. Region is cellular and no cholesterol clefts or necrosis are present. Some macrophage infiltration. Increase in extra cellular matrix
  value122394('122394'),

  /// Display: Necrotic-Lipidic Plaque
  /// Definition: Area within the plaque with very low echogenicity separated from the lumen and surrounded by more echogenic structures (fibrous cap). Highly lipidic necrotic region with remnants of foam cells and dead lymphocytes present. No collagen fibers are visible and mechanical integrity is poor. Cholesterol clefts and micro calcifications are visible
  value122395('122395'),

  /// Display: Intimal Dissection
  /// Definition: Dissection limited to the intima or atheroma, and not extending to the media
  value122398('122398'),

  /// Display: Medial Dissection
  /// Definition: Dissection in the arterial Media, extending into the media
  value122399('122399'),

  /// Display: Simultaneously Acquired
  /// Definition: The referenced information was acquired simultaneously with the information in the object in which the reference occurs
  value122400('122400'),

  /// Display: Same Anatomy
  /// Definition: Information acquired for the same anatomic region
  value122401('122401'),

  /// Display: Same Indication
  /// Definition: Information acquired for the same indication; e.g. to elucidate the same diagnostic question
  value122402('122402'),

  /// Display: For Attenuation Correction
  /// Definition: The referenced information was used to correct the data for differential attenuation through different anatomic tissue
  value122403('122403'),

  /// Display: Reconstructed
  /// Definition: Value estimated for a vessel in the absence of a stenosis
  value122404('122404'),

  /// Display: Algorithm Manufacturer
  /// Definition: Manufacturer of application used
  value122405('122405'),

  /// Display: Left Atrial Ejection Fraction by Angiography
  /// Definition: Left Atrial Ejection Fraction by Angiography
  value122406('122406'),

  /// Display: Left Atrial ED Volume
  /// Definition: Left Atrial End Diastolic Volume
  value122407('122407'),

  /// Display: Left Atrial ES Volume
  /// Definition: Left Atrial End Systolic Volume
  value122408('122408'),

  /// Display: Contour Realignment
  /// Definition: Contour repositioning of End Diastolic relative to End Systolic contour
  value122410('122410'),

  /// Display: Threshold Value
  /// Definition: The minimum standard deviation to define the hypokinesis and hyperkinesis
  value122411('122411'),

  /// Display: Regional Abnormal Wall Motion
  /// Definition: Report of differentiation of wall motion compared to normal
  value122417('122417'),

  /// Display: Calibration Object
  /// Definition: Object used for Calibration
  value122421('122421'),

  /// Display: Calibration Method
  /// Definition: Method used for Calibration
  value122422('122422'),

  /// Display: Calibration Object Size
  /// Definition: Size of calibration object
  value122423('122423'),

  /// Display: Area Length Method
  /// Definition: Method how long axis is positioned
  value122428('122428'),

  /// Display: Volume Method
  /// Definition: Model for cardiac chamber volume calculation
  value122429('122429'),

  /// Display: Reference Method
  /// Definition: Method to define original diameter of the artery
  value122430('122430'),

  /// Display: Regression Slope ED
  /// Definition: Relation between calculated End Diastolic volume and ventricular End Diastolic volume. The specific meaning is dependent on volume method used
  value122431('122431'),

  /// Display: Regression Offset ED
  /// Definition: Correction factor for the calculated End Diastolic volume and ventricular End Diastolic volume. The specific meaning is dependent on volume method used
  value122432('122432'),

  /// Display: Regression Slope ES
  /// Definition: Relation between calculated End Systolic volume and ventricular End Systolic volume. The specific meaning is dependent on volume method used
  value122433('122433'),

  /// Display: Regression Offset ES
  /// Definition: Correction factor for the calculated End Systolic volume and ventricular End Systolic volume. The specific meaning is dependent on volume method used
  value122434('122434'),

  /// Display: Regression Volume Exponent
  /// Definition: Exponent of volume in regression formula
  value122435('122435'),

  /// Display: Reference Points
  /// Definition: Container for spatial locations or coordinates used for calculation
  value122438('122438'),

  /// Display: Wall Thickness
  /// Definition: Average thickness of the chamber wall in the current view
  value122445('122445'),

  /// Display: Wall Volume
  /// Definition: Volume of the chamber wall estimated from the current view
  value122446('122446'),

  /// Display: Wall Mass
  /// Definition: Mass of the chamber wall (myocardium)
  value122447('122447'),

  /// Display: Wall Stress
  /// Definition: Peak systolic stress of chamber wall
  value122448('122448'),

  /// Display: Centerline Wall Motion Analysis
  /// Definition: Method to calculate wall motion [example: Sheehan, 1986]
  value122449('122449'),

  /// Display: Normalized Chord Length
  /// Definition: The length between End Diastolic and End Systolic contour perpendicular on the centerline normalized by a method dependent ventricular perimeter length. The centerline is the line equidistant between the End Diastolic and End Systolic contour [example: Sheehan, 1986]
  value122450('122450'),

  /// Display: Abnormal Region
  /// Definition: The report of the boundaries of the abnormal (hyperkinetic, hypokinetic, a-kinetic) regions associated with the territory of the artery [example: Sheehan, 1986]
  value122451('122451'),

  /// Display: First Chord of Abnormal Region
  /// Definition: The chord number specifying the begin of abnormal region [example: Sheehan, 1986]
  value122452('122452'),

  /// Display: Last Chord of Abnormal Region
  /// Definition: The chord number specifying the end of abnormal region [example: Sheehan, 1986]
  value122453('122453'),

  /// Display: Territory Region Severity
  /// Definition: Severity at the regional abnormality extent [example: Sheehan, 1986]
  value122459('122459'),

  /// Display: Opposite Region Severity
  /// Definition: Severity at the opposite regional abnormality extent [example: Sheehan, 1986]
  value122461('122461'),

  /// Display: LAD Region in RAO Projection
  /// Definition: Based on a total number of chords of 100 and RAO project the range of chords belonging to this circumferential extent lies between 5 - 85. [Sheehan, 1986]
  value122464('122464'),

  /// Display: RCA Region in ROA Projection
  /// Definition: Based on a total number of chords of 100 and RAO project the range of chords belonging to this circumferential extent lies between 25 - 85. [Sheehan, 1986]
  value122465('122465'),

  /// Display: Single LAD Region in RAO Projection
  /// Definition: Based on a total number of chords of 100 and RAO projection the range of chords belonging to this regional extent lies between 10 - 66 (hypokinetic) and 67 - 80 (hyperkinetic). [Sheehan, 1986]
  value122466('122466'),

  /// Display: Single RCA Region in RAO Projection
  /// Definition: Based on a total number of chords of 100 and RAO projection the range of chords belonging to this regional extent lies between 51 - 80 (hypokinetic) and 10 - 50 (hyperkinetic). [Sheehan, 1986]
  value122467('122467'),

  /// Display: Multiple LAD Region in RAO Projection
  /// Definition: Based on a total number of chords of 100 and RAO projection the range of chords belonging to this regional extent lies between 10 - 58 (hypokinetic) and 59 -80 (hyperkinetic). [Sheehan, 1986]
  value122468('122468'),

  /// Display: Multiple RCA Region in RAO Projection
  /// Definition: Based on a total number of chords of 100 and RAO projection the range of chords belonging to this regional extent lies between 59 - 80 (hypokinetic) and 10 - 58 (hyperkinetic). [Sheehan, 1986]
  value122469('122469'),

  /// Display: LAD Region in LAO Projection
  /// Definition: Based on a total number of chords of 100 and LAO projection the range of chords belonging to this regional extent lies between 50 -100 (hypokinetic) and 20 - 49 (hyperkinetic). [Sheehan, 1986]
  value122470('122470'),

  /// Display: RCA Region in LAO Projection
  /// Definition: Based on a total number of chords of 100 and LAO projection the range of chords belonging to this regional extent lies between 19 - 67 (hypokinetic) and 68 - 100 (hyperkinetic). [Sheehan, 1986]
  value122471('122471'),

  /// Display: CFX Region in LAO Projection
  /// Definition: Based on a total number of chords of 100 and LAO projection the range of chords belonging to this regional extent lies between 38 -74 (hypokinetic) and 75 - 100 (hyperkinetic). [Sheehan, 1986]
  value122472('122472'),

  /// Display: Circular Method
  /// Definition: Method based on assumption that the image object is circular
  value122473('122473'),

  /// Display: Densitometric Method
  /// Definition: Method based on the gray value distribution of the image
  value122474('122474'),

  /// Display: Center of Gravity
  /// Definition: End Systolic contour realigned to End Diastolic contour based on the center of gravity
  value122475('122475'),

  /// Display: Long Axis Based
  /// Definition: End Systolic contour realigned to End Diastolic contour based on the mid point of the long axis. The long axis end-points are defined as the posterior and apex
  value122476('122476'),

  /// Display: No Realignment
  /// Definition: No Contour Realignment applied
  value122477('122477'),

  /// Display: Vessel Lumen Cross-Sectional Area
  /// Definition: Calculated Vessel Lumen Cross-Sectional Area based on the referenced method
  value122480('122480'),

  /// Display: Contour Start
  /// Definition: Location of the beginning of a contour
  value122481('122481'),

  /// Display: Contour End
  /// Definition: Location of the end of a contour
  value122482('122482'),

  /// Display: Sphere
  /// Definition: Sphere is used as calibration object
  value122485('122485'),

  /// Display: Geometric Isocenter
  /// Definition: Object of interest in isocenter of image and pixel separation is calculated from geometric data
  value122486('122486'),

  /// Display: Geometric Non-Isocenter
  /// Definition: Object of interest not in isocenter of image and pixel separation is calculated from geometric data and out of isocenter distances
  value122487('122487'),

  /// Display: Calibration Object Used
  /// Definition: Object used for calibration; e.g. sphere
  value122488('122488'),

  /// Display: Curve Fitted Reference
  /// Definition: Application dependent method to calculate the reference diameter based on the multiple diameter values
  value122489('122489'),

  /// Display: Interpolated Local Reference
  /// Definition: Application dependent method to calculate reference by interpolation, based on the diameter of two or more user defined reference positions
  value122490('122490'),

  /// Display: Mean Local Reference
  /// Definition: Application dependent method to calculate by averaging the reference, based on the diameter of one or more user defined reference positions
  value122491('122491'),

  /// Display: Radial Based Wall Motion Analysis
  /// Definition: Method to calculate wall motion based on the lengths of the radials in the predefined regions [Ingels]
  value122493('122493'),

  /// Display: Regional Contribution to Ejection Fraction
  /// Definition: Contribution of Region to global Ejection factor based on radial or landmark based wall motion method
  value122495('122495'),

  /// Display: Radial Shortening
  /// Definition: The reduction of area between End Systolic and End Diastolic based on radial wall motion analysis
  value122496('122496'),

  /// Display: Landmark Based Wall Motion Analysis
  /// Definition: Method to calculate wall motion based on the move of landmarks on the wall [Slager]
  value122497('122497'),

  /// Display: Slice Contribution to Ejection Fraction
  /// Definition: Contribution to the ejection fraction of a specific slice region [Slager]
  value122498('122498'),

  /// Display: Frame to Frame Analysis
  /// Definition: Method to calculate volumes of heart chambers for every image in a range
  value122499('122499'),

  /// Display: Area of closed irregular polygon
  /// Definition: The area is derived by considering a set of coordinates as a closed irregular polygon, accounting for inner angles. The exact method, such as by decomposition into triangles or quadrilaterals, is not specified, since it does not affect the numeric result, apart from the effect of numeric precision during computation of intermediate results
  value122501('122501'),

  /// Display: Area of a closed NURBS
  /// Definition: The area is derived by using a set of coordinates as control points for a Non Uniform Rational B-Spline (NURBS)
  value122502('122502'),

  /// Display: Integration of sum of closed areas on contiguous slices
  /// Definition: The volume derived by integrating the sum of the areas on adjacent slices across the slice interval; each area is defined by a regular planar shape or by considering a set of coordinates as a closed irregular polygon, accounting for inner angles
  value122503('122503'),

  /// Display: Calibration
  /// Definition: Procedure used to calibrate measurements or measurement devices
  value122505('122505'),

  /// Display: Left Contour
  /// Definition: Left contour of lumen (direction proximal to distal)
  value122507('122507'),

  /// Display: Right Contour
  /// Definition: Right contour of lumen (direction proximal to distal)
  value122508('122508'),

  /// Display: Diameter Graph
  /// Definition: Ordered set of diameters values derived from contours (direction proximal to distal)
  value122509('122509'),

  /// Display: Length Luminal Segment
  /// Definition: Length Luminal Segment
  value122510('122510'),

  /// Display: Graph Increment
  /// Definition: Increment value along X-axis in Diameter Graph
  value122511('122511'),

  /// Display: Site of Maximum Luminal
  /// Definition: Location of the maximum lumen area in a lesion or vessel
  value122516('122516'),

  /// Display: Densitometric Luminal Cross-sectional Area Graph
  /// Definition: Ordered set of cross-sectional Vessel Lumen Cross-Sectional Area values derived from contours (direction proximal to distal) based on densitometric method
  value122517('122517'),

  /// Display: Position of Proximal Border
  /// Definition: Position of proximal border of segment relative to the contour start (proximal end of analysis area)
  value122528('122528'),

  /// Display: Position of Distal Border
  /// Definition: Position of distal border of segment relative to the contour start (proximal end of analysis area)
  value122529('122529'),

  /// Display: Plaque Area
  /// Definition: Longitudinal cross sectional area of plaque
  value122542('122542'),

  /// Display: Diameter Symmetry
  /// Definition: Symmetry of stenosis (0 = complete asymmetry, 1 = complete symmetry); see Section T.2 "Definition of Diameter Symmetry with Arterial Plaques" in PS3.17
  value122544('122544'),

  /// Display: Area Symmetry
  /// Definition: Symmetry of plaque (0 = complete asymmetry, 1 = complete symmetry); see Section T.2 "Definition of Diameter Symmetry with Arterial Plaques" in PS3.17
  value122545('122545'),

  /// Display: Inflow Angle
  /// Definition: The average slope of the diameter function between the position of the minimum luminal diameter and the position of the proximal border of the segment
  value122546('122546'),

  /// Display: Outflow Angle
  /// Definition: The average slope of the diameter function between the position of the minimum luminal diameter and the position of the distal border of the segment
  value122547('122547'),

  /// Display: Stenotic Flow Reserve
  /// Definition: The relation between coronary pressure and coronary flow
  value122548('122548'),

  /// Display: Poiseuille Resistance
  /// Definition: Poiseuille Resistance at the location of the stenosis
  value122549('122549'),

  /// Display: Turbulence Resistance
  /// Definition: Turbulence Resistance at the location of the stenosis
  value122550('122550'),

  /// Display: Pressure Drop at SFR
  /// Definition: Pressure drop over the stenosis at maximum heart output
  value122551('122551'),

  /// Display: Segmentation Method
  /// Definition: Method for selection of vessel sub-segments
  value122554('122554'),

  /// Display: Estimated Normal Flow
  /// Definition: Estimate of the volume of blood flow in the absence of stenosis
  value122555('122555'),

  /// Display: Area Length Kennedy
  /// Definition: Area Length method defined by Kennedy [Kennedy, 1970]
  value122558('122558'),

  /// Display: Area Length Dodge
  /// Definition: Area Length method defined by Dodge [Dodge, 1960]
  value122559('122559'),

  /// Display: Area Length Wynne
  /// Definition: Area Length method defined by Wynne [Wynne]
  value122560('122560'),

  /// Display: Multiple Slices
  /// Definition: Volume method based on multiple slice
  value122562('122562'),

  /// Display: Boak
  /// Definition: Volume method defined by Boak [Boak]
  value122563('122563'),

  /// Display: TS Pyramid
  /// Definition: Volume method defined by Ferlinz [Ferlinz]
  value122564('122564'),

  /// Display: Two Chamber
  /// Definition: Volume method defined by Graham [Graham]
  value122565('122565'),

  /// Display: Parallelepiped
  /// Definition: Volume method defined by Arcilla [Arcilla]
  value122566('122566'),

  /// Display: BSA^1.219
  /// Definition: Corrected Body Surface area for indexing the hemodynamic measurements for a pediatric patient
  value122572('122572'),

  /// Display: Equidistant method
  /// Definition: Method for selecting sub-segments that are all of the same length
  value122574('122574'),

  /// Display: User selected method
  /// Definition: Manually selected start and end of sub-segment
  value122575('122575'),

  /// Display: Left ventricular posterobasal segment
  /// Definition: Left ventricular posterobasal segment
  value122582('122582'),

  /// Display: Cardiovascular Analysis Report
  /// Definition: Report of a Cardiovascular Analysis, typically from a CT or MR study
  value122600('122600'),

  /// Display: Ventricular Analysis
  /// Definition: Ventricular Analysis
  value122601('122601'),

  /// Display: Myocardial Perfusion Analysis
  /// Definition: Myocardial Perfusion Analysis
  value122602('122602'),

  /// Display: Calcium Scoring Analysis
  /// Definition: Calcium Scoring Analysis
  value122603('122603'),

  /// Display: Flow Quantification
  /// Definition: Flow Quantification Analysis
  value122604('122604'),

  /// Display: Vascular Morphological Analysis
  /// Definition: Vascular Morphological Analysis
  value122605('122605'),

  /// Display: Vascular Functional Analysis
  /// Definition: Vascular Functional Analysis
  value122606('122606'),

  /// Display: Thickening Analysis
  /// Definition: Analysis of myocardial wall thickening
  value122607('122607'),

  /// Display: Absolute Values Of Ventricular Measurements
  /// Definition: Section Heading for absolute values of ventricular measurements
  value122608('122608'),

  /// Display: Normalized Values Of Ventricular Measurements
  /// Definition: Results of normalizing ventricular measurements
  value122609('122609'),

  /// Display: Reference Point
  /// Definition: Reference Point of a measurement
  value122611('122611'),

  /// Display: Central breathing position
  /// Definition: Central breathing position between inspiration and expiration
  value122612('122612'),

  /// Display: Peak Ejection Rate
  /// Definition: Peak of the ventricular ejection rate
  value122616('122616'),

  /// Display: Peak Ejection Time
  /// Definition: Time of the peak of ventricular ejection
  value122617('122617'),

  /// Display: Peak Filling Rate
  /// Definition: Peak of the fluid filling rate
  value122618('122618'),

  /// Display: Peak Filling Time
  /// Definition: Time interval until time of peak filling from a given reference point; e.g. end systole
  value122619('122619'),

  /// Display: Papillary Muscle Excluded
  /// Definition: Papillary muscle was excluded from the measurement
  value122620('122620'),

  /// Display: Papillary Muscle Included
  /// Definition: Papillary muscle was included in the measurement
  value122621('122621'),

  /// Display: Wall Thickness Ratio end-systolic to end-diastolic
  /// Definition: The ratio of the end-systolic wall thickness compared to the end-diastolic wall thickness
  value122624('122624'),

  /// Display: Curve Fit Method
  /// Definition: The method to smooth a ventricular volume as a function of time
  value122627('122627'),

  /// Display: Baseline Result Correction
  /// Definition: Baseline correction used in the calculation of the results
  value122628('122628'),

  /// Display: Signal Earliest Peak Time
  /// Definition: The time in a dynamic set of images at which the first peak of the signal is observed for the analyzed myocardial wall segments
  value122631('122631'),

  /// Display: Signal Increase Start Time
  /// Definition: This is the time at which the signal begins to increase
  value122633('122633'),

  /// Display: Signal Time to Peak
  /// Definition: Time interval between the beginning of the signal increase to the time at which the signal intensity reaches its first maximum in a dynamic set of images
  value122634('122634'),

  /// Display: MR Perfusion Peak
  /// Definition: Peak of the MR perfusion signal
  value122635('122635'),

  /// Display: MR Perfusion Slope
  /// Definition: Signal intensity as a function of time. It is the change in the signal intensity divided by the change in the time
  value122636('122636'),

  /// Display: MR Perfusion Time Integral
  /// Definition: MR perfusion time integral from baseline (foot time) to earliest peak
  value122637('122637'),

  /// Display: Signal Baseline Start
  /// Definition: First time point in a dynamic set of images used in the calculation of the baseline signal intensity for each myocardial wall segment
  value122638('122638'),

  /// Display: Signal Baseline End
  /// Definition: Last time point in a dynamic set of images used in the calculation of the baseline signal intensity for each myocardial wall segment
  value122639('122639'),

  /// Display: Image Interval
  /// Definition: The time delta between images in a dynamic set of images
  value122640('122640'),

  /// Display: Velocity Encoding Minimum Value
  /// Definition: The minimum velocity encoded by the phase encoding gradient
  value122642('122642'),

  /// Display: Velocity Encoding Maximum Value
  /// Definition: The maximum velocity encoded by the phase encoding gradient
  value122643('122643'),

  /// Display: Net Forward Volume
  /// Definition: Forward volume-reverse volume
  value122645('122645'),

  /// Display: Area Based Method
  /// Definition: Area Based Method for estimating volume or area
  value122650('122650'),

  /// Display: Diameter Based Method
  /// Definition: Diameter Based Method for estimating volume, area or diameter
  value122651('122651'),

  /// Display: Volume Based Method
  /// Definition: Volume Based Method for estimating volume
  value122652('122652'),

  /// Display: NASCET
  /// Definition: A method of diameter measurements according to NASCET (North American Symptomatic Carotid Endarterectomy Trial)
  value122655('122655'),

  /// Display: ECST
  /// Definition: A method of diameter measurements according to ECST (European Carotid Surgery Trial)
  value122656('122656'),

  /// Display: Agatston Score Threshold
  /// Definition: Agatston Score Threshold
  value122657('122657'),

  /// Display: Calcium Mass Threshold
  /// Definition: Calcium Mass Threshold
  value122658('122658'),

  /// Display: Calcium Scoring Calibration
  /// Definition: Calcium Scoring Calibration
  value122659('122659'),

  /// Display: Calcium Volume
  /// Definition: Calcium Volume
  value122660('122660'),

  /// Display: Calcium Mass
  /// Definition: Calcium Mass
  value122661('122661'),

  /// Display: Late Contrast Enhancement
  /// Definition: Delayed hyperenhancement of a tissue observed in an image acquired after injection of contrast media
  value122664('122664'),

  /// Display: Time interval since injection of contrast media
  /// Definition: Time interval since injection of contrast media
  value122665('122665'),

  /// Display: Time relative to R-wave peak
  /// Definition: Time relative to R-wave peak
  value122666('122666'),

  /// Display: Blood velocity vs. time of cardiac cycle
  /// Definition: Relationship between blood velocity and time relative to R-wave peak
  value122667('122667'),

  /// Display: Time interval since detection of contrast bolus
  /// Definition: Time interval since detection of contrast bolus
  value122668('122668'),

  /// Display: Papillary Muscle Included/Excluded
  /// Definition: Indicates if the papillary muscle was included or excluded in the measurement
  value122670('122670'),

  /// Display: Anterior-Posterior
  /// Definition: Anterior to Posterior direction
  value122675('122675'),

  /// Display: endoleak
  /// Definition: Persistent flow of blood into the stent-grafting
  value122680('122680'),

  /// Display: Stent Fracture
  /// Definition: Fracture of a stent
  value122683('122683'),

  /// Display: Stent Disintegration
  /// Definition: Disintegration of a stent
  value122684('122684'),

  /// Display: Stent Composition
  /// Definition: Material that a stent consists of
  value122685('122685'),

  /// Display: Parent Vessel Finding
  /// Definition: Finding about the characteristics of the parent vessel of a vessel
  value122686('122686'),

  /// Display: Site of Lumen Maximum
  /// Definition: Site of Maximal lumen diameter of a vessel
  value122687('122687'),

  /// Display: X-Concept
  /// Definition: The physical domain (time, space, etc.) to the horizontal axis of the graphical presentation
  value122698('122698'),

  /// Display: Y-Concept
  /// Definition: The physical domain (time, space, etc.) to the vertical axis of the graphical presentation
  value122699('122699'),

  /// Display: Indications for Pharmacological Stress
  /// Definition: Indications for Pharmacological Stress
  value122700('122700'),

  /// Display: Procedure time base
  /// Definition: Reference time for measurement of elapsed time in a procedure
  value122701('122701'),

  /// Display: Treadmill speed
  /// Definition: Treadmill speed
  value122702('122702'),

  /// Display: Treadmill gradient
  /// Definition: Treadmill gradient
  value122703('122703'),

  /// Display: Ergometer power
  /// Definition: Ergometer power
  value122704('122704'),

  /// Display: Pharmacological Stress Agent Dose Rate
  /// Definition: Pharmacological Stress Agent Dose Rate
  value122705('122705'),

  /// Display: Rating of Perceived Exertion
  /// Definition: Rating of Perceived Exertion
  value122706('122706'),

  /// Display: Number of Ectopic Beats
  /// Definition: Number of ectopic beats during a period of collection
  value122707('122707'),

  /// Display: Double Product
  /// Definition: Heart rate times systolic blood pressure
  value122708('122708'),

  /// Display: Activity workload
  /// Definition: Physical activity workload (intensity) measurement
  value122709('122709'),

  /// Display: Time since start of stage
  /// Definition: Elapsed time at stage
  value122710('122710'),

  /// Display: Exercise duration after stress agent injection
  /// Definition: Exercise duration after stress agent injection
  value122711('122711'),

  /// Display: Imaging Start Time
  /// Definition: Imaging Start Time
  value122712('122712'),

  /// Display: Attenuation correction method
  /// Definition: Attenuation correction method
  value122713('122713'),

  /// Display: Pharmacological Stress Agent Dose
  /// Definition: Pharmacological Stress Agent Dose
  value122715('122715'),

  /// Display: Maximum Power Output Achieved
  /// Definition: Maximum power output achieved during course of procedure
  value122716('122716'),

  /// Display: Peak activity workload
  /// Definition: Peak physical activity intensity measurement during course of procedure
  value122717('122717'),

  /// Display: Peak Double Product
  /// Definition: Peak Double Product measurement during course of procedure
  value122718('122718'),

  /// Display: OSEM algorithm
  /// Definition: Ordered subsets expectation maximization reconstruction algorithm
  value122720('122720'),

  /// Display: Chang method
  /// Definition: Chang attenuation correction method
  value122721('122721'),

  /// Display: Algorithmic attenuation correction
  /// Definition: Attenuation correction not based on image-based attenuation maps
  value122726('122726'),

  /// Display: NM transmission attenuation correction
  /// Definition: NM transmission attenuation correction
  value122727('122727'),

  /// Display: CT-based attenuation correction
  /// Definition: CT-based attenuation correction
  value122728('122728'),

  /// Display: No Attenuation Correction
  /// Definition: No attenuation correction
  value122729('122729'),

  /// Display: Bazett QTc Algorithm
  /// Definition: Bazett QT Correction Algorithm; QT/(RR ^ 0.5); Bazett HC. "An analysis of the time-relations of electrocardiograms" Heart7:353-370 (1920)
  value122730('122730'),

  /// Display: Hodges QTc Algorithm
  /// Definition: Hodges QT Correction Algorithm; QT + 1.75 (heart rate-60); Hodges M, Salerno Q, Erlien D. "Bazett's QT correction reviewed. Evidence that a linear QT correction for heart rate is better." J Am Coll Cardiol1:694 (1983)
  value122731('122731'),

  /// Display: Fridericia QTc Algorithm
  /// Definition: Fridericia QT Correction Algorithm; QT/(RR ^ 0.333); Fridericia LS. "The duration of systole in the electrocardiogram of normal subjects and of patients with heart disease" Acta Med Scand53:469-486 (1920)
  value122732('122732'),

  /// Display: Framingham QTc Algorithm
  /// Definition: Framingham QT Correction Algorithm; QT + 0.154 (1- RR); Sagie A, Larson MG, Goldberg RJ, et al. "An improved method for adjusting the QT interval for heart rate (the Framingham Heart Study)." Am J Cardiol70:797-801(1992)
  value122733('122733'),

  /// Display: Borg RPE Scale
  /// Definition: Borg Rating of Perceived Exertion Scale, range 6:20
  value122734('122734'),

  /// Display: Borg CR10 Scale
  /// Definition: Borg category ratio scale, open ended range with nominal range 0:10
  value122735('122735'),

  /// Display: Overall study quality
  /// Definition: Overall study quality
  value122739('122739'),

  /// Display: Excellent image quality
  /// Definition: Excellent image quality
  value122740('122740'),

  /// Display: Good image quality
  /// Definition: Good image quality
  value122741('122741'),

  /// Display: Poor image quality
  /// Definition: Poor image quality
  value122742('122742'),

  /// Display: Body habitus attenuation
  /// Definition: Image attenuation due to body physique (overweight)
  value122743('122743'),

  /// Display: Breast attenuation
  /// Definition: Image attenuation due to breast tissue
  value122744('122744'),

  /// Display: Diaphragmatic attenuation
  /// Definition: Image attenuation due to diaphragm
  value122745('122745'),

  /// Display: False positive defect finding
  /// Definition: Finding of a defect is incorrect; e.g. from automated analysis
  value122748('122748'),

  /// Display: Non-diagnostic - low heart rate
  /// Definition: ECG is non-diagnostic due to low heart rate
  value122750('122750'),

  /// Display: Non-diagnostic - resting ST abnormalities
  /// Definition: ECG is non-diagnostic due to resting ST abnormalities
  value122751('122751'),

  /// Display: Non-diagnostic - ventricular pacing or LBBB
  /// Definition: ECG is non-diagnostic due to ventricular pacing or Left Bundle Branch Block
  value122752('122752'),

  /// Display: Non-diagnostic ECG
  /// Definition: ECG is non-diagnostic for presence of acute coronary syndrome
  value122753('122753'),

  /// Display: Strongly positive
  /// Definition: Strongly positive finding
  value122755('122755'),

  /// Display: Strongly positive - ST elevation
  /// Definition: Strongly positive finding - ST elevation
  value122756('122756'),

  /// Display: ST Depression - Horizontal
  /// Definition: Finding of ST segment depression with no slope
  value122757('122757'),

  /// Display: ST Depression - Upsloping
  /// Definition: Finding of ST segment depression with upslope
  value122758('122758'),

  /// Display: ST Depression - Downsloping
  /// Definition: Finding of ST segment depression with downslope
  value122759('122759'),

  /// Display: Stress test score
  /// Definition: Stress test score
  value122760('122760'),

  /// Display: Number of diseased vessel territories
  /// Definition: Number of diseased vessel territories
  value122762('122762'),

  /// Display: Weight exceeds equipment limit
  /// Definition: Patient weight exceeds equipment limit
  value122764('122764'),

  /// Display: Difference in Ejection Fraction
  /// Definition: Difference in Ejection Fraction
  value122768('122768'),

  /// Display: Difference in ED LV Volume
  /// Definition: Difference in End Diastolic Left Ventricular Volume
  value122769('122769'),

  /// Display: Ratio of achieved to predicted maximal oxygen consumption
  /// Definition: Ratio of achieved to predicted maximal oxygen consumption
  value122770('122770'),

  /// Display: Ratio of achieved to predicted functional capacity
  /// Definition: Ratio of achieved to predicted functional capacity
  value122771('122771'),

  /// Display: Aerobic index
  /// Definition: Workload (Watts) at target heart rate divided by body weight
  value122772('122772'),

  /// Display: ST/HR Index
  /// Definition: ST depression at peak exercise divided by the exercise-induced increase in heart rate [Kligfield P, Ameisen O, Okin PM. "Heart rate adjustment of ST segment depression for improved detection of coronary artery disease." Circulation 1989;79:245-55.]
  value122773('122773'),

  /// Display: Agreement with prior findings
  /// Definition: Agreement with prior findings
  value122775('122775'),

  /// Display: Disagreement with prior findings
  /// Definition: Disagreement with prior findings
  value122776('122776'),

  /// Display: Rest thallium/stress technetium procedure
  /// Definition: Nuclear Medicine Rest thallium/stress technetium procedure
  value122781('122781'),

  /// Display: Rest technetium/stress technetium 1 day procedure
  /// Definition: Nuclear Medicine Rest technetium/stress technetium 1 day procedure
  value122782('122782'),

  /// Display: Rest technetium/stress technetium 2 day procedure
  /// Definition: Nuclear Medicine Rest technetium/stress technetium 2 day procedure
  value122783('122783'),

  /// Display: Stress technetium/rest technetium 1 day procedure
  /// Definition: Nuclear Medicine Stress technetium/rest technetium 1 day procedure
  value122784('122784'),

  /// Display: NM Myocardial Viability procedure
  /// Definition: Nuclear Medicine Myocardial Viability procedure
  value122785('122785'),

  /// Display: PET Myocardial Perfusion, Rest only
  /// Definition: Positron Emission Tomography Perfusion Imaging procedure, rest only
  value122791('122791'),

  /// Display: PET Myocardial Perfusion, Stress only
  /// Definition: Positron Emission Tomography Perfusion Imaging procedure, stress only
  value122792('122792'),

  /// Display: PET Myocardial Perfusion, Rest and Stress
  /// Definition: Positron Emission Tomography Perfusion Imaging procedure, rest and stress
  value122793('122793'),

  /// Display: PET Myocardial Viability, Rest only
  /// Definition: Positron Emission Tomography Myocardial Viability procedure, rest only
  value122795('122795'),

  /// Display: PET Myocardial Viability, Stress only
  /// Definition: Positron Emission Tomography Myocardial Viability procedure, stress only
  value122796('122796'),

  /// Display: PET Myocardial Viability, Rest and Stress
  /// Definition: Positron Emission Tomography Myocardial Viability procedure, rest and stress
  value122797('122797'),

  /// Display: Anginal Equivalent
  /// Definition: Group of symptoms heralding angina pectoris that does not include chest pain (dyspnea, diaphoresis, profuse vomiting in a diabetic patient, or arm or jaw pain)
  value122799('122799'),

  /// Display: Radiopharmaceutical
  /// Definition: Active ingredient (molecular) used for radioactive tracing
  value123001('123001'),

  /// Display: Radiopharmaceutical Start Time
  /// Definition: Time of radiopharmaceutical administration to the patient for imaging purposes
  value123003('123003'),

  /// Display: Radiopharmaceutical Stop Time
  /// Definition: Ending time of radiopharmaceutical administration to the patient for imaging purposes
  value123004('123004'),

  /// Display: Radiopharmaceutical Volume
  /// Definition: Volume of radiopharmaceutical administered to the patient
  value123005('123005'),

  /// Display: Radionuclide Total Dose
  /// Definition: Total amount of radionuclide administered to the patient at Radiopharmaceutical Start Time
  value123006('123006'),

  /// Display: Radiopharmaceutical Specific Activity
  /// Definition: Activity per unit mass of the radiopharmaceutical at Radiopharmaceutical Start Time
  value123007('123007'),

  /// Display: Radionuclide Syringe Counts
  /// Definition: Pre-injection syringe acquisition count rate
  value123009('123009'),

  /// Display: Radionuclide Residual Syringe Counts
  /// Definition: Syringe acquisition count rate following patient injection
  value123010('123010'),

  /// Display: Contrast/Bolus Agent
  /// Definition: Contrast or bolus agent
  value123011('123011'),

  /// Display: Pre-Medication
  /// Definition: Medication to be administered at the beginning of the Scheduled Procedure Step
  value123012('123012'),

  /// Display: Target Region
  /// Definition: Anatomic Region to be imaged
  value123014('123014'),

  /// Display: Imaging Direction
  /// Definition: Direction of imaging (includes view, transducer orientation, patient orientation, and/or projection)
  value123015('123015'),

  /// Display: Imaging Conditions
  /// Definition: Imaging condition for refinement of protocol (includes secondary posture, instruction, X-Ray / electron beam energy or nuclide, and ultrasound modes), as used in JJ1017 v3.0
  value123016('123016'),

  /// Display: Caudal 10 degree distal-cranioproximal oblique
  /// Definition: Caudal 10 degree distal-cranioproximal oblique radiographic projection, defined per Smallwood et al
  value123019('123019'),

  /// Display: Neighborhood Analysis
  /// Definition: Surface processing utilizing predefined weighting factors (i.e., kernels) applied to different data values depending on their location relative to other data values within the data domain. Includes Low Pass, High Pass, Gaussian, Laplacian, etc.
  value123101('123101'),

  /// Display: Adaptive Filtering
  /// Definition: Surface processing applied non-uniformly utilizing a priori knowledge of the system and/or relative locations of the data values within the data domain. Example: Neighborhood analysis where weighting factors are modified continuously based on predefined criteria
  value123102('123102'),

  /// Display: Edge Detection
  /// Definition: Surface processing through the exploitation of discontinuities in the data values within their domain. Includes Gradient filters
  value123103('123103'),

  /// Display: Morphological Operations
  /// Definition: Surface processing based on the connectivity of values based on the shape or structure of the data values within their domain. Includes erode, dilate, etc.
  value123104('123104'),

  /// Display: Histogram Analysis
  /// Definition: Surface processing applied to the distribution of the data values. Includes thresholding, Bayesian Classification, etc.
  value123105('123105'),

  /// Display: Multi-Scale/Resolution Filtering
  /// Definition: Surface processing accomplished through varying the data domain size. Include deformable models
  value123106('123106'),

  /// Display: Cluster Analysis
  /// Definition: Surface processing accomplished by combining data values based on their relative location within their domain or value distribution. Includes K- and C-means, Fuzzy Analysis, Watershed, Seed Growing, etc.
  value123107('123107'),

  /// Display: Multispectral Processing
  /// Definition: Surface processing accomplished through the weighted combination of multiple data sets. Includes Principle Component Analysis, linear and non-linear weighed combinations, etc.
  value123108('123108'),

  /// Display: Manual Processing
  /// Definition: Surface processing accomplished through human interaction. Region drawing
  value123109('123109'),

  /// Display: Artificial Intelligence
  /// Definition: Surface processing using Artificial Intelligence techniques, such as Machine Learning, Neural Networks, etc.
  value123110('123110'),

  /// Display: Deformable Models
  /// Definition: Surface processing using Deformable Model techniques, such as Point Distribution Models, Level Sets, Simplex Meshes, etc.
  value123111('123111'),

  /// Display: OB-GYN Ultrasound Procedure Report
  /// Definition: Document Title of OB-GYN procedure report
  value125000('125000'),

  /// Display: Fetal Biometry Ratios
  /// Definition: Report section for assessment of fetal growth using ratios and indexes
  value125001('125001'),

  /// Display: Fetal Biometry
  /// Definition: Report section for assessment of fetal growth
  value125002('125002'),

  /// Display: Fetal Long Bones
  /// Definition: Report section for assessment of fetal growth by long bone measurements
  value125003('125003'),

  /// Display: Fetal Cranium
  /// Definition: Report section for assessment of fetal cranium growth
  value125004('125004'),

  /// Display: Biometry Group
  /// Definition: Biometric assessment of
  value125005('125005'),

  /// Display: Biophysical Profile
  /// Definition: Report section for assessment of biophysical observations that evaluate fetal well-being according to Manning, Antepartum Fetal Evaluation: Development of a Fetal Biophysical Profile Score, Am. J Obstet Gynecol, 1980;136:787
  value125006('125006'),

  /// Display: Measurement Group
  /// Definition: A grouping of related measurements and calculations that share a common context
  value125007('125007'),

  /// Display: Fetus Summary
  /// Definition: Report section for fetus specific procedure summary observations
  value125008('125008'),

  /// Display: Early Gestation
  /// Definition: Report section for assessment of early gestation fetus
  value125009('125009'),

  /// Display: Identifier
  /// Definition: A name to differentiate between multiple instances of some item
  value125010('125010'),

  /// Display: Pelvis and Uterus
  /// Definition: Report section for assessment of pelvis and uterus
  value125011('125011'),

  /// Display: Growth Percentile rank
  /// Definition: The rank of a measured growth indicator relative to a normal distribution expressed as a percentage
  value125012('125012'),

  /// Display: Growth Z-score
  /// Definition: The rank of a measured growth indicator relative to a normal distribution expressed as the dimensionless quantity z = (x-m) /s where (x-m) is the deviation of the value x, from the distribution mean, m, and s is the standard deviation of the distribution
  value125013('125013'),

  /// Display: Fetus Characteristics
  /// Definition: Fetus characteristics (findings section title)
  value125015('125015'),

  /// Display: Fetal Measurements
  /// Definition: Fetal Measurements (findings section title)
  value125016('125016'),

  /// Display: Frame of Reference Identity
  /// Definition: There is a defined equivalence between the Frame of Reference of the Registration SOP instance and the Frame of Reference of the referenced images
  value125021('125021'),

  /// Display: Fiducial Alignment
  /// Definition: The registration is based on fiducials that represent patient or specimen features identified in each data set
  value125022('125022'),

  /// Display: Acquisition Equipment Alignment
  /// Definition: Registration based on a-priori knowledge of the acquisition geometry. This is not an object registration as in fiducial registration. Rather, it specifies a known spatial relationship
  value125023('125023'),

  /// Display: Image Content-based Alignment
  /// Definition: Computed registration based on global image information
  value125024('125024'),

  /// Display: Visual Alignment
  /// Definition: Registration by visually guided manipulation
  value125025('125025'),

  /// Display: Inter-Hemispheric Plane
  /// Definition: A plane fiducial that specifies the location of the plane separating the two hemispheres of the brain
  value125030('125030'),

  /// Display: Right Hemisphere Most Anterior
  /// Definition: A point fiducial that specifies the location in the plane perpendicular to the Anterior- Posterior-Commissure axis and tangential to the anterior limit of the right brain hemisphere
  value125031('125031'),

  /// Display: Right Hemisphere Most Posterior
  /// Definition: A point fiducial that specifies the location in the plane perpendicular to the Anterior- Posterior-Commissure axis and tangential to the posterior limit of the right brain hemisphere
  value125032('125032'),

  /// Display: Right Hemisphere Most Superior
  /// Definition: A point fiducial that specifies the location in the plane perpendicular to the Anterior- Posterior-Commissure axis and tangential to the superior limit of the right brain hemisphere
  value125033('125033'),

  /// Display: Right Hemisphere Most Inferior
  /// Definition: A point fiducial that specifies the location in the plane perpendicular to the Anterior- Posterior-Commissure axis and tangential to the inferior limit of the Right brain hemisphere
  value125034('125034'),

  /// Display: Left Hemisphere Most Anterior
  /// Definition: A point fiducial that specifies the location in the plane perpendicular to the Anterior- Posterior-Commissure axis and tangential to the anterior limit of the left brain hemisphere
  value125035('125035'),

  /// Display: Left Hemisphere Most Posterior
  /// Definition: A point fiducial that specifies the location in the plane perpendicular to the Anterior- Posterior-Commissure axis and tangential to the posterior limit of the left brain hemisphere
  value125036('125036'),

  /// Display: Left Hemisphere Most Superior
  /// Definition: A point fiducial that specifies the location in the plane perpendicular to the Anterior- Posterior-Commissure axis and tangential to the superior limit of the left brain hemisphere
  value125037('125037'),

  /// Display: Left Hemisphere Most Inferior
  /// Definition: A point fiducial that specifies the location in the plane perpendicular to the Anterior- Posterior-Commissure axis and tangential to the inferior limit of the left brain hemisphere
  value125038('125038'),

  /// Display: Background
  /// Definition: That which is not part of an object
  value125040('125040'),

  /// Display: Registration Input
  /// Definition: A segment for use as an input to an image registration process; e.g. to specify the bounding region for determining a Frame of Reference Transformation Matrix
  value125041('125041'),

  /// Display: Vascular Ultrasound Procedure Report
  /// Definition: Root Document Title for ultrasound vascular evidence reports (worksheets)
  value125100('125100'),

  /// Display: Vessel Branch
  /// Definition: The particular vessel branch, such as the inferior, medial or lateral
  value125101('125101'),

  /// Display: Graft Type
  /// Definition: A descriptor or elaboration of the type of graft
  value125102('125102'),

  /// Display: Measurement Orientation
  /// Definition: A modifier to a 2D distance measurement to describe its orientation; e.g. a vascular distance measurement for a vessel plague could have a modifier Transverse or Longitudinal
  value125105('125105'),

  /// Display: Doppler Angle
  /// Definition: The angle formed between the Doppler beam line and the direction of blood flow within a region of interest in the body defined by the sample volume
  value125106('125106'),

  /// Display: Sample Volume Depth
  /// Definition: The depth of the center of the Doppler sample volume measured from skin line along the Doppler line
  value125107('125107'),

  /// Display: Pediatric Cardiac Ultrasound Report
  /// Definition: Pediatric Cardiac Ultrasound Report (document title)
  value125195('125195'),

  /// Display: Fetal Cardiac Ultrasound Report
  /// Definition: Fetal Cardiac Ultrasound Report (document title)
  value125196('125196'),

  /// Display: Adult Congenital Cardiac Ultrasound Report
  /// Definition: Adult Congenital Cardiac Ultrasound Report (document title)
  value125197('125197'),

  /// Display: Adult Echocardiography Procedure Report
  /// Definition: Document title of adult echocardiography procedure (evidence) report
  value125200('125200'),

  /// Display: Illustration of Finding
  /// Definition: An image that is a pictorial representation of findings. The concept is typically used as a purpose of reference to an image, such as a depiction of myocardium segments depicting wall motion function
  value125201('125201'),

  /// Display: LV Wall Motion Score Index
  /// Definition: The average of all scored (non-zero) Left Ventricle segment wall motion scores
  value125202('125202'),

  /// Display: Acquisition Protocol
  /// Definition: A type of clinical acquisition protocol for creating images or image-derived measurements. Acquisition protocols may be specific to a manufacturer's product
  value125203('125203'),

  /// Display: Area-length biplane
  /// Definition: Method for calculating left ventricular volume from two orthogonal views containing the true long axis (usually the apical 4 and 2 chamber views). Volume = [pL1 / 6] * [(4A1) ÷ (pL1) ] * [(4A2) ÷ (pL2) ]
  value125204('125204'),

  /// Display: Area-Length Single Plane
  /// Definition: Method for calculating left ventricular volume from a view containing the true long axis (usually the apical 4-chamber view). Volume = [8(A)2]÷[3pL]
  value125205('125205'),

  /// Display: Cube
  /// Definition: Method (formula) for calculating left ventricle volumes and function derivatives (EF, SV, SI, etc.) that estimates the volume as the cube of diameter
  value125206('125206'),

  /// Display: Method of Disks, Biplane
  /// Definition: Method of calculating volume based on the summation of disk volumes. The disk axis is parallel to the left ventricular long axis and using a disk diameter averaged from the two chamber and four chamber views
  value125207('125207'),

  /// Display: Method of Disks, Single Plane
  /// Definition: Method of calculating volume based on the summation of disk volumes. The disk axis is parallel to the left ventricular long axis with disk diameter taken from the four-chamber view
  value125208('125208'),

  /// Display: Teichholz
  /// Definition: Method (formula) for calculating left ventricle volumes and function derivatives (EF, SV, SI, etc.) Volume = [7.0/(2.4+D) ]*D3
  value125209('125209'),

  /// Display: Area by Pressure Half-Time
  /// Definition: Mitral valve area (cm2) by Pressure Half-time = 220 (cm2.ms) / PHT (ms)
  value125210('125210'),

  /// Display: Biplane Ellipse
  /// Definition: Area = P/4 X d1 X d2 d1 = anterior/posterior axis d2 = medial/lateral axis Hagen-Ansert, Sandra L., Textbook of Diagnostic Ultrasound, ed. 3, The C.V.Mosby Co., 1989, p. 73.
  value125211('125211'),

  /// Display: Continuity Equation
  /// Definition: For conduits in series ("in continuity"), volume flow is equal: A1*V1 = A2*V2. where V is the velocity
  value125212('125212'),

  /// Display: Continuity Equation by Mean Velocity
  /// Definition: For conduits in series ("in continuity"), volume flow is equal: A1*V1 = A2*V2. where V is the mean velocity
  value125213('125213'),

  /// Display: Continuity Equation by Peak Velocity
  /// Definition: For conduits in series ("in continuity"), volume flow is equal: A1*V1 = A2*V2. where V is the peak velocity
  value125214('125214'),

  /// Display: Continuity Equation by Velocity Time Integral
  /// Definition: For conduits in series ("in continuity"), volume flow is equal: A1*V1 = A2*V2. where V is the velocity time integral
  value125215('125215'),

  /// Display: Proximal Isovelocity Surface Area
  /// Definition: Utilizes aliasing velocity (by color Doppler) of flow into an orifice (often regurgitant or stenotic) to measure instantaneous flow rate, orifice area, and flow volume. The instantaneous flow rate = (2πr2vav ) * (α / π) where vav is the constant velocity known as aliasing velocity at radius r, vp is the peak velocity at the orifice, and α is the angle in radians of the constant velocity surface. Estimated Orifice area = Flow rate / vp , where vp is the peak velocity at the orifice and the flow rate is the PISA peak flow rate. The volume flow is then the product of the orifice area and Velocity Time Integral
  value125216('125216'),

  /// Display: Full Bernoulli
  /// Definition: ΔP = 4*(V12 - V22)
  value125217('125217'),

  /// Display: Simplified Bernoulli
  /// Definition: ΔP = 4*V2
  value125218('125218'),

  /// Display: Doppler Volume Flow
  /// Definition: Volume flow = Conduit CSA * (Velocity Time Integral)
  value125219('125219'),

  /// Display: Planimetry
  /// Definition: Direct measurement of an area by tracing an irregular perimeter
  value125220('125220'),

  /// Display: Left Ventricle Mass by M-mode
  /// Definition: Mass = 1.04 * [(ST+LVID+PWT)3 - LVID3] * 0.8+ 0.6. Mass unit is grams and length in cm
  value125221('125221'),

  /// Display: Left Ventricle Mass by Truncated Ellipse
  /// Definition: Mass = 1.05P ((b + t)2 X (2/3 (a + t) + d - d3 /3(a + t)2) - b2 (2/3a + d - d3 /3a2)) a = Semi-major axis from widest minor axis radius to apex. b = Short axis radius calculated from short axis cavity area t = Myocardial thickness calculated from short axis epicardial and cavity areas d = Truncated semi-major axis from widest short axis diameter to plane of mitral annulus. Mass unit is grams and length in cm. Schiller NB et al: Recommendations for quantification of the left ventricle by two-dimensional echocardiography, American Society of Echocardiography 2:364, 1989.
  value125222('125222'),

  /// Display: 4 Point Segment Finding Scale
  /// Definition: A four point, echocardiographic numeric scoring scheme of myocardium segments based on evaluation of wall motion and ventricle morphology. Recommendations for Quantitation of the Left Ventricle by Two-Dimensional Echocardiography, Journal of the American Society of Echocardiography, 2:358-367, 1989
  value125223('125223'),

  /// Display: 5 Point Segment Finding Scale
  /// Definition: A five point, echocardiographic numeric scoring scheme of myocardium segments based on evaluation of wall motion and ventricle morphology. Recommendations for Quantitation of the Left Ventricle by Two-Dimensional Echocardiography, Journal of the American Society of Echocardiography, 2:358-367, 1989
  value125224('125224'),

  /// Display: 5 Point Segment Finding Scale With Graded Hypokinesis
  /// Definition: A five point, echocardiographic numeric scoring scheme of myocardium segments based on evaluation of wall motion and ventricle morphology, with severity of hypokinesis graded. Recommendations for Quantitation of the Left Ventricle by Two-Dimensional Echocardiography, Journal of the American Society of Echocardiography, 2:358-367, 1989
  value125225('125225'),

  /// Display: Single Plane Ellipse
  /// Definition: Method of estimating volume from a planar ellipse. Equivalent to Biplane Ellipse with an assumption that the ellipse in the orthogonal plane has identical major and minor diameters
  value125226('125226'),

  /// Display: Modified Simpson
  /// Definition: Modified Simpson's Method of estimating ventricular volume, based on the method of disks with paired apical views. Schiller NB, et al. "Recommendations for quantitation of the left ventricle by two-dimensional echocardiography. American Society of Echocardiography Committee on Standards, Subcommittee on Quantitation of Two-Dimensional Echocardiograms". J Am Soc Echocardiogr.1989 2(5):358-367. Sep-Oct
  value125227('125227'),

  /// Display: Bullet Method
  /// Definition: Bullet method of estimating ventricular volume. Volume = 5/6 * L * S L: Left ventricle long axis length S: Left ventricle area, SAX view at level of Mitral Valve
  value125228('125228'),

  /// Display: Power Doppler
  /// Definition: Color coded ultrasound images of blood flow, which depict the amplitude, or power, of Doppler signals
  value125230('125230'),

  /// Display: 3D mode
  /// Definition: Volumetric ultrasound imaging
  value125231('125231'),

  /// Display: Start of drug dose administration
  /// Definition: Onset of administration of dose of a drug
  value125233('125233'),

  /// Display: Start of contrast agent administration
  /// Definition: Onset of contrast agent administration
  value125234('125234'),

  /// Display: Destruction of microbubbles
  /// Definition: Destruction of ultrasonic contrast microbubbles by a high-energy ultrasound pulse
  value125235('125235'),

  /// Display: Onset of exercise
  /// Definition: Instant at which exercise begins
  value125236('125236'),

  /// Display: Cessation of exercise
  /// Definition: Instant at which exercise ends
  value125237('125237'),

  /// Display: Onset of stimulation
  /// Definition: Instant at which stimulation begins
  value125238('125238'),

  /// Display: Cessation of stimulation
  /// Definition: Instant at which stimulation ends
  value125239('125239'),

  /// Display: Line scan pattern
  /// Definition: Ultrasound transducer scan pattern in which information is gathered along a line
  value125240('125240'),

  /// Display: Plane scan pattern
  /// Definition: Ultrasound transducer scan pattern in which information is gathered within a plane
  value125241('125241'),

  /// Display: Volume scan pattern
  /// Definition: Ultrasound transducer scan pattern in which information is gathered within a volume
  value125242('125242'),

  /// Display: Non-imaging Doppler ultrasound transducer geometry
  /// Definition: Ultrasound transducer geometry characterized by a single scan line used for PW or CW Doppler scanning
  value125251('125251'),

  /// Display: Linear ultrasound transducer geometry
  /// Definition: Ultrasonic transducer geometry characterized by parallel lines
  value125252('125252'),

  /// Display: Curved linear ultrasound transducer geometry
  /// Definition: Ultrasonic transducer geometry characterized by radial lines normal to the outside of a curved surface
  value125253('125253'),

  /// Display: Sector ultrasound transducer geometry
  /// Definition: Ultrasonic transducer geometry characterized by lines originating from a common apex
  value125254('125254'),

  /// Display: Radial ultrasound transducer geometry
  /// Definition: Ultrasonic transducer geometry characterized by lines emanating radially from a single point
  value125255('125255'),

  /// Display: Ring ultrasound transducer geometry
  /// Definition: Ultrasonic transducer geometry characterized by a circular ring of transducer elements
  value125256('125256'),

  /// Display: Fixed beam direction
  /// Definition: Ultrasonic steering technique consisting of a single beam normal to the transducer face steered by the orientation of the probe
  value125257('125257'),

  /// Display: Mechanical beam steering
  /// Definition: Ultrasonic steering technique consisting of mechanically directing the beam
  value125258('125258'),

  /// Display: Phased beam steering
  /// Definition: Ultrasonic steering technique consisting of electronically-steered beams
  value125259('125259'),

  /// Display: External Transducer
  /// Definition: Transducer is designed to be placed onto the surface of the subject
  value125261('125261'),

  /// Display: Transesophageal Transducer
  /// Definition: Transducer is designed for insertion into the esophagus
  value125262('125262'),

  /// Display: Endovaginal Transducer
  /// Definition: Transducer is designed for insertion into the vagina
  value125263('125263'),

  /// Display: Endorectal Transducer
  /// Definition: Transducer is designed for insertion into the rectum
  value125264('125264'),

  /// Display: Intravascular Transducer
  /// Definition: Transducer is designed for insertion via a catheter
  value125265('125265'),

  /// Display: Left Ventricle Mass by Area Length
  /// Definition: method to measure the mass of the Left Ventricle via the ASE area-length method at end diastole. LV Mass = 1.05*(5/6*(A1*(L+t)) - 5/6*(A2*L)) A1 = Left Ventricle epicardial SAX area at the level of the papillary muscle tips at end diastole. A2 = Left Ventricle endocardial SAX area cavity area at the level of the papillary muscle tips at end diastole. L = Left Ventricle apical view long axis length at end diastole. t = Myocardial thickness can be computed as: t = sqrt (A1/3.14) - sqrt (A2/3.14) Reference: 1) Schiller, N.B., et al. "Recommendations for Quantification of the LV by Two-dimensional Echocardiography." J Am Soc Echo, Vol. 2, No. 5: 358-367, Sep-Oct 1989. 2) Reichek, N., et al. "Anatomic Validation of Left Ventricular Mass Estimates from Clinical Two-dimensional Echocardiography: Initial Results." Circulation, Vol. 67, No. 2: 348-52, February 1983
  value125270('125270'),

  /// Display: Left Ventricle Mass by M-mode - adjusted by Height
  /// Definition: Equation = Left Ventricle Mass by M-mode (in gram) / (Height (in meter)) ^2.7 Reference: Giovanni De Simone, et al. "Effect of Growth on Variability of Left Ventricular Mass: Assessment of Allometric Signals in Adults and Children and Their Capacity to Predict Cardiovascular Risk". New York, New York and Cincinnati, Ohio
  value125271('125271'),

  /// Display: Left Ventricle Mass by Truncated Ellipse - adjusted by Height
  /// Definition: Equation = Left Ventricle Mass by Truncated Ellipse / Height^2.7 Reference: Giovanni De Simone, et al. "Effect of Growth on Variability of Left Ventricular Mass: Assessment of Allometric Signals in Adults and Children and Their Capacity to Predict Cardiovascular Risk". New York, New York and Cincinnati, Ohio
  value125272('125272'),

  /// Display: Left Ventricle Mass by Area Length - adjusted by Height
  /// Definition: Equation = Left Ventricle Mass by Area Length / Height^2.7 Reference: Giovanni De Simone, et al. "Effect of Growth on Variability of Left Ventricular Mass: Assessment of Allometric Signals in Adults and Children and Their Capacity to Predict Cardiovascular Risk". New York, New York and Cincinnati, Ohio
  value125273('125273'),

  /// Display: CARDIOsphere
  /// Definition: CARDIOsphere ultrasonic contrast agent produced by POINT Biomedical
  value125901('125901'),

  /// Display: Echovist
  /// Definition: Echovist® ultrasonic contrast agent produced by Schering AG
  value125902('125902'),

  /// Display: Imagify
  /// Definition: Imagify ultrasonic contrast agent produced by Accusphere Inc
  value125903('125903'),

  /// Display: Levovist
  /// Definition: Levovist® ultrasonic contrast agent produced by Schering AG
  value125904('125904'),

  /// Display: Sonazoid
  /// Definition: Sonazoid ultrasonic contrast agent produced by Daiichi Pharmaceutical / General Electric
  value125905('125905'),

  /// Display: SonoVue
  /// Definition: SonoVue ultrasonic contrast agent produced by Bracco Diagnostics
  value125906('125906'),

  /// Display: Targestar-B
  /// Definition: Targestar-B ultrasonic contrast agent produced by Targeson LLC
  value125907('125907'),

  /// Display: Targestar-P
  /// Definition: Targestar-P ultrasonic contrast agent produced by Targeson LLC
  value125908('125908'),

  /// Display: Imaging Measurement Report
  /// Definition: A structured report containing the quantitative results of human or machine analysis of images
  value126000('126000'),

  /// Display: Oncology Measurement Report
  /// Definition: A structured report containing the quantitative results of human or machine analysis of images for oncology evaluation
  value126001('126001'),

  /// Display: Dynamic Contrast MR Measurement Report
  /// Definition: A structured report containing the quantitative results of human or machine analysis of DCE-MR
  value126002('126002'),

  /// Display: PET Measurement Report
  /// Definition: A structured report containing the quantitative results of human or machine analysis of PET images
  value126003('126003'),

  /// Display: Imaging Measurements
  /// Definition: Measurements made on images
  value126010('126010'),

  /// Display: Derived Imaging Measurements
  /// Definition: Measurements derived from measurements made on images
  value126011('126011'),

  /// Display: Multiparametric MRI
  /// Definition: An MRI procedure in which multiple parameters including diffusion, dynamic contrast and T2 are measured
  value126020('126020'),

  /// Display: Multiparametric MRI of prostate
  /// Definition: An MRI procedure of the prostate in which multiple parameters including diffusion, dynamic contrast and T2 are measured
  value126021('126021'),

  /// Display: Multiparametric MRI of whole body
  /// Definition: An MRI procedure of the whole body in which multiple parameters including diffusion, dynamic contrast and T2 are measured
  value126022('126022'),

  /// Display: Sum of segmented voxel volumes
  /// Definition: The volume derived by summing the volumes of all the voxels (and partial voxels if the segment contains partially occupied voxels) included in the segment
  value126030('126030'),

  /// Display: Peak Value Within ROI
  /// Definition: Maximum average gray value that is calculated from a 1 cubic centimeter sphere placed within the region of interest. Reference Wahl et al PERCIST article
  value126031('126031'),

  /// Display: Metabolic Volume
  /// Definition: The volume of a lesion (e.g. a tumor) ascertained through information about its metabolic activity (e.g. SUV on PET). Abbreviated "MV". Synonymous with Metabolic Tumor Volume (MTV)
  value126032('126032'),

  /// Display: Total Lesion Glycolysis
  /// Definition: The total activity of a lesion obtained as the product of its volume and its glycolytic activity (on FDG-PET). The volume may be defined on the same modality (e.g. the MV on FDG-PET by some thresholding or other technique) or on another spatially registered modality (e.g. the lesion outline segmented on CT or MR). Does not apply to other radiopharmaceuticals than those involved in glucose metabolism. Abbreviated TLG. Synonymnous with "Tumor Lesion Glycolysis"
  value126033('126033'),

  /// Display: Glycolysis
  /// Definition: The amount glycolytic activity summed across all voxels in a defined region or within a defined range of SUV (on FDG-PET)
  value126034('126034'),

  /// Display: Total Lesion Proliferation
  /// Definition: The total activity of a lesion obtained as the product of its volume and its proliferative activity (on FLT-PET). The volume may be defined on the same modality (e.g. the MV on FDG-PET by some thresholding or other technique) or on another spatially registered modality (e.g. the lesion outline segmented on CT or MR). Does not apply to other radiopharmaceuticals than those involved in cellular proliferation. Abbreviated TLP. Synonymnous with "Tumor Lesion Proliferation"
  value126035('126035'),

  /// Display: Proliferative Activity
  /// Definition: The amount proliferative activity summed across all voxels in a defined region or within a defined range of SUV (on FLT-PET)
  value126036('126036'),

  /// Display: Standardized Added Metabolic Activity (SAM)
  /// Definition: A background-corrected, partial volume independent version of TLG. SAM is calculated by drawing a volume of interest (VOI1) around the tumour and a larger VOI (VOI2) around VOI1. Subtracting the background activity in VOI2-VOI1 from VOI1 yields SAM. See Mertens et al. "Standardized added metabolic activity (SAM): a partial volume independent marker of total lesion glycolysis in liver metastases". Eur J Nucl Med Mol Imaging (2012) 39:1441-1448
  value126037('126037'),

  /// Display: Standardized Added Metabolic Activity (SAM) Background
  /// Definition: The background value (VOI2-VOI1) used to calculate Standardized Added Metabolic Activity (SAM). SAM is calculated by drawing a volume of interest (VOI1) around the tumour and a larger VOI (VOI2) around VOI1. Subtracting the background activity in VOI2-VOI1 from VOI1 yields SAM. See Mertens et al. "Standardized added metabolic activity (SAM): a partial volume independent marker of total lesion glycolysis in liver metastases". Eur J Nucl Med Mol Imaging (2012) 39:1441-1448
  value126038('126038'),

  /// Display: Lesion to Background SUV Ratio
  /// Definition: The ratio of the SUV within a tumor to the SUV of a pre-defined background region. Need reference(s). A more general concept than Tumor to Background Ratio (TBR)
  value126039('126039'),

  /// Display: Background for Lesion to Background SUV Ratio
  /// Definition: The SUV of a pre-defined background region used to compute Lesion to Background SUV Ratio. Need reference(s)
  value126040('126040'),

  /// Display: Fractal Dimension
  /// Definition: A statistical index of complexity comparing how detail in a fractal pattern changes with the scale at which it is measured; a ratio of the change in detail to the change in scale
  value126050('126050'),

  /// Display: Skewness
  /// Definition: Measure of the asymmetry of the probability distribution of a real-valued random variable about its mean
  value126051('126051'),

  /// Display: Kurtosis
  /// Definition: Measure of the peakedness of the probability distribution of a real-valued random variable
  value126052('126052'),

  /// Display: Entropy of GLCM
  /// Definition: The zero order entropy of a Gray Level Co-occurrence Matrix (GLCM). A measure of disorder. See http://www.fp.ucalgary.ca/mhallbey/equations.htm
  value126060('126060'),

  /// Display: Energy of GLCM
  /// Definition: The energy (uniformity) (square root of the Angular Second Moment (ASM)) of a Gray Level Co-occurrence Matrix (GLCM). A measure of orderliness. See http://www.fp.ucalgary.ca/mhallbey/equations.htm
  value126061('126061'),

  /// Display: Homogeneity of GLCM
  /// Definition: The Inverse Difference Moment of a Gray Level Co-occurrence Matrix (GLCM). See http://www.fp.ucalgary.ca/mhallbey/equations.htm
  value126062('126062'),

  /// Display: Contrast of GLCM
  /// Definition: The sum of squares variance of a Gray Level Co-occurrence Matrix (GLCM). See http://www.fp.ucalgary.ca/mhallbey/equations.htm
  value126063('126063'),

  /// Display: Dissimilarity of GLCM
  /// Definition: The dissimilarity of a Gray Level Co-occurrence Matrix (GLCM). See http://www.fp.ucalgary.ca/mhallbey/equations.htm
  value126064('126064'),

  /// Display: ASM of GLCM
  /// Definition: The Angular Second Moment of a Gray Level Co-occurrence Matrix (GLCM). See http://www.fp.ucalgary.ca/mhallbey/equations.htm
  value126065('126065'),

  /// Display: Correlation of GLCM
  /// Definition: A measure of the linear dependency of grey levels on those of neighbouring pixels of a Gray Level Co-occurrence Matrix (GLCM). See http://www.fp.ucalgary.ca/mhallbey/equations.htm
  value126066('126066'),

  /// Display: Gray Level Co-occurrence Matrix (GLCM)
  /// Definition: A tabulation of how often different combinations of pixel values (grey levels) occur in an image. See http://www.fp.ucalgary.ca/mhallbey/the_glcm.htm
  value126067('126067'),

  /// Display: Subject Time Point Identifier
  /// Definition: An identifier of a specific time point in a continuum, which is unique within an appropriate local context (such as an entire organization, system or treatment protocol), which identifies the time point for a specific patient
  value126070('126070'),

  /// Display: Protocol Time Point Identifier
  /// Definition: An identifier of a specific time point in a continuum, which is unique within an appropriate local context (such as an entire organization, system or treatment protocol), which identifies the time point "slot" within a treatment protocol using the same value for all patients in the protocol
  value126071('126071'),

  /// Display: Time Point Type
  /// Definition: A pre-defined type of a specific time point in a continuum
  value126072('126072'),

  /// Display: Time Point Order
  /// Definition: A number indicating the order of a time point relative to other time points in the same continuum
  value126073('126073'),

  /// Display: Posttreatment
  /// Definition: The time after the treatment of interest
  value126074('126074'),

  /// Display: Eligibility
  /// Definition: For the purpose of determining eligibility for a protocol
  value126075('126075'),

  /// Display: RECIST 1.0
  /// Definition: Response Evaluation Criteria in Solid Tumors version 1.0. See [RECIST] in Normative References
  value126080('126080'),

  /// Display: RECIST 1.1
  /// Definition: Response Evaluation Criteria in Solid Tumors Version 1.1. See Eisenhauer et al. "New Response Evaluation Criteria in Solid Tumours: Revised RECIST Guideline (version 1.1)." European Journal of Cancer 45, no. 2 (n.d.): 228-47. doi:10.1016/j.ejca.2008.10.026.
  value126081('126081'),

  /// Display: Real World Value Map used for measurement
  /// Definition: A reference to the Real World Value Map applied to the stored image pixel values before their use for a measurement
  value126100('126100'),

  /// Display: Image Library Group
  /// Definition: A container that groups common information about a set of images used as evidence to produce a report
  value126200('126200'),

  /// Display: Acquisition Date
  /// Definition: The date the acquisition of data started
  value126201('126201'),

  /// Display: Acquisition Time
  /// Definition: The time the acquisition of data started
  value126202('126202'),

  /// Display: PET Radionuclide Incubation Time
  /// Definition: The time between the start of injection of the PET radionuclide and the start of acquisition of the PET data
  value126203('126203'),

  /// Display: R2-Coefficient
  /// Definition: Coefficient of determination, R2. An indication of goodness of fit
  value126220('126220'),

  /// Display: Perfusion analysis by Stable Xenon CT technique
  /// Definition: Perfusion analysis by Stable Xenon CT technique
  value126300('126300'),

  /// Display: Perfusion analysis by IV Iodinated Contrast CT technique
  /// Definition: Perfusion analysis by IV Iodinated Contrast CT technique
  value126301('126301'),

  /// Display: Perfusion analysis by Arterial Spin Labeling MR technique
  /// Definition: Perfusion analysis by Arterial Spin Labeling (ASL) MR technique
  value126302('126302'),

  /// Display: Perfusion analysis by Susceptibility MR technique
  /// Definition: Perfusion analysis by Susceptibility (T2*) MR technique
  value126303('126303'),

  /// Display: Least Mean Square (LMS) deconvolution
  /// Definition: Least Mean Square (LMS) deconvolution
  value126310('126310'),

  /// Display: Singular Value Decomposition (SVD) deconvolution
  /// Definition: Singular Value Decomposition (SVD) deconvolution
  value126311('126311'),

  /// Display: Ktrans
  /// Definition: Ktrans, the volume transfer constant of a tracer diffusion kinetic model, specifically the volume transfer constant between blood plasma and extravascular extracellular space (EES) See Tofts et al, "Estimating Kinetic Parameters From Dynamic Contrast-Enhanced T1-Weighted MRI of a Diffusable Tracer: Standardized Quantities and Symbols", Journal of Magnetic Resonance Imaging, vol. 10, pp. 223-232, 1999
  value126312('126312'),

  /// Display: kep
  /// Definition: kep, the rate constant between extravascular extracellular space (EES) and blood plasma See Tofts et al, "Estimating Kinetic Parameters From Dynamic Contrast-Enhanced T1-Weighted MRI of a Diffusable Tracer: Standardized Quantities and Symbols", Journal of Magnetic Resonance Imaging, vol. 10, pp. 223-232, 1999
  value126313('126313'),

  /// Display: ve
  /// Definition: ve, the fractional (not absolute) volume of extravascular extracellular space (EES) per unit volume of tissue See Tofts et al, "Estimating Kinetic Parameters From Dynamic Contrast-Enhanced T1-Weighted MRI of a Diffusable Tracer: Standardized Quantities and Symbols", Journal of Magnetic Resonance Imaging, vol. 10, pp. 223-232, 1999
  value126314('126314'),

  /// Display: IAUC
  /// Definition: The intial area under the contrast agent concentration-time curve
  value126320('126320'),

  /// Display: IAUC60
  /// Definition: The intial area under the contrast agent concentration-time curve at 60 seconds after the onset time
  value126321('126321'),

  /// Display: IAUC90
  /// Definition: The intial area under the contrast agent concentration-time curve at 90 seconds after the onset time
  value126322('126322'),

  /// Display: tau_m
  /// Definition: τm. The mean intracellular water lifetime (τi). Used in the Shutter-Speed Model (SSM) of tracer kinetics
  value126330('126330'),

  /// Display: vp
  /// Definition: vp. The fractional (not absolute) blood plasma volume per unit volume of tissue. See Tofts et al, "Estimating Kinetic Parameters From Dynamic Contrast-Enhanced T1-Weighted MRI of a Diffusable Tracer: Standardized Quantities and Symbols", Journal of Magnetic Resonance Imaging, vol. 10, pp. 223-232, 1999
  value126331('126331'),

  /// Display: Standard Tofts Model
  /// Definition: A tracer diffusion kinetic model in which the permeability is assumed to be isodirectional. See P. Tofts, "Modeling tracer kinetics in dynamic Gd-DTPA MR imaging", Journal of Magnetic Resonance Imaging, vol. 7, pp. 91-101, 1997
  value126340('126340'),

  /// Display: Extended Tofts Model
  /// Definition: A tracer diffusion kinetic model in which the permeability is not assumed to be isodirectional, and which includes the contribution of tracer in the blood plasma to the total tissue concentration. See P. Tofts, "Modeling tracer kinetics in dynamic Gd-DTPA MR imaging", Journal of Magnetic Resonance Imaging, vol. 7, pp. 91-101, 1997
  value126341('126341'),

  /// Display: Model-free concentration-time quantitification
  /// Definition: A semiquantitative analysis of the contrast-enhancement concentration versus time curve that avoids the use of a pharmacokinetic model; e.g. integration to compute the initial area under the curve
  value126342('126342'),

  /// Display: First Pass Leakage Profile (FPLP)
  /// Definition: A tracer diffusion kinetic model that accounts for the tumor leakage profile during the first pass of contrast. See Li, Ka-Loh, Xiao Ping Zhu, John Waterton, and Alan Jackson. "Improved 3D Quantitative Mapping of Blood Volume and Endothelial Permeability in Brain Tumors." Journal of Magnetic Resonance Imaging 12, no. 2 (2000): 347-357. doi:10.1002/1522-2586(200008)12:2<347::AID-JMRI19>3.0.CO;2-7
  value126343('126343'),

  /// Display: Shutter-Speed Model (SSM)
  /// Definition: A tracer diffusion kinetic model that does not assume that intercompartmental water molecule exchange is infinitely fast. See Li, Xin, Wei Huang, Thomas E. Yankeelov, Alina Tudorica, William D. Rooney, and Charles S. Springer. "Shutter-Speed Analysis of Contrast Reagent Bolus-Tracking Data: Preliminary Observations in Benign and Malignant Breast Disease." Magnetic Resonance in Medicine 53, no. 3 (2005): 724-29. doi:10.1002/mrm.20405
  value126344('126344'),

  /// Display: T1 by Multiple Flip Angles
  /// Definition: T1 measurement by Multiple Flip Angles (MFA) (variable saturation) method
  value126350('126350'),

  /// Display: T1 by Inversion Recovery
  /// Definition: T1 measurement by Inversion Recovery (IR) method
  value126351('126351'),

  /// Display: T1 by Fixed Value
  /// Definition: Calculation was performed using a fixed value of T1 rather than a measured value. The value could be encoded as the value of (126353, DCM, "T1 Used For Calculation")
  value126352('126352'),

  /// Display: T1 Used For Calculation
  /// Definition: The fixed value of T1 used for a calculation
  value126353('126353'),

  /// Display: AIF Ignored
  /// Definition: No Arterial Input Function was used
  value126360('126360'),

  /// Display: Population Averaged AIF
  /// Definition: A population-averaged Arterial Input Function
  value126361('126361'),

  /// Display: User-defined AIF ROI
  /// Definition: An Arterial Input Function computed from a user-defined Region of Interest
  value126362('126362'),

  /// Display: Automatically Detected AIF ROI
  /// Definition: An Arterial Input Function computed from an automatically detected Region of Interest
  value126363('126363'),

  /// Display: Blind Estimation of AIF
  /// Definition: A data-driven blind source separation (BSS) algorithm that estimates AIF from individuals without any presumed AIF model and initialization. See Lin, Yu-Chun, Tsung-Han Chan, Chong-Yung Chi, Shu-Hang Ng, Hao-Li Liu, Kuo-Chen Wei, Yau-Yau Wai, Chun-Chieh Wang, and Jiun-Jie Wang. "Blind Estimation of the Arterial Input Function in Dynamic Contrast-Enhanced MRI Using Purity Maximization." Magnetic Resonance in Medicine 68, no. 5 (November 1, 2012): 1439-49. doi:10.1002/mrm.24144
  value126364('126364'),

  /// Display: Time of Peak Concentration
  /// Definition: The time at which the concentration-time curve achieves its peak for the first time. Used as a concept name for a value or as a method; e.g. used as a method of calculation for BAT. See Shpilfoygel Med Phys 2008. doi: 10.1118/1.1288669
  value126370('126370'),

  /// Display: Bolus Arrival Time
  /// Definition: The nominal time at which arrival of a contrast bolus is detected, which is used as a reference point for subsequent calculations. Used as a concept name for a value or as a method. No specific computational method is implied by this general definition. Abbreviated BAT
  value126371('126371'),

  /// Display: Time of Leading Half-Peak Concentration
  /// Definition: The time at which the concentration-time curve achieves half of its peak density for the first time. Used as a concept name for a value or as a method; e.g. used as a method of calculation for BAT. See Shpilfoygel Med Phys 2008. doi: 10.1118/1.1288669
  value126372('126372'),

  /// Display: Temporal Derivative Exceeds Threshold
  /// Definition: A method of determining BAT that involves computing the temporal derivative of the concentration-time curve and selecting the time when the temporal derivative exceeds a specified threshold. See Shpilfoygel Med Phys 2008. doi: 10.1118/1.1288669
  value126373('126373'),

  /// Display: Temporal Derivative Threshold
  /// Definition: A threshold applied to the temporal derivative of the concentration-time curve; e.g. used to establish BAT. See Shpilfoygel Med Phys 2008. doi: 10.1118/1.1288669
  value126374('126374'),

  /// Display: Maximum Slope
  /// Definition: The maximum rate of signal intensity change within a measured region of a time-activity curve. See Boonsirikamchai, Piyaporn, Harmeet Kaur, Deborah A. Kuban, Edward Jackson, Ping Hou, and Haesun Choi. "Use of Maximum Slope Images Generated From Dynamic Contrast-Enhanced MRI to Detect Locally Recurrent Prostate Carcinoma After Prostatectomy: A Practical Approach." American Journal of Roentgenology 198, no. 3 (March 1, 2012): W228-W236. doi:10.2214/AJR.10.6387
  value126375('126375'),

  /// Display: Maximum Difference
  /// Definition: The maximum degree of signal intensity change within a measured region of a time-activity curve. See Boonsirikamchai, Piyaporn, Harmeet Kaur, Deborah A. Kuban, Edward Jackson, Ping Hou, and Haesun Choi. "Use of Maximum Slope Images Generated From Dynamic Contrast-Enhanced MRI to Detect Locally Recurrent Prostate Carcinoma After Prostatectomy: A Practical Approach." American Journal of Roentgenology 198, no. 3 (March 1, 2012): W228-W236. doi:10.2214/AJR.10.6387
  value126376('126376'),

  /// Display: Tracer Concentration
  /// Definition: Tracer concentration in tissue; e.g. in a DCE-MR experiment, the concentration of contrast agent in mmol/l
  value126377('126377'),

  /// Display: Contrast Longitudinal Relaxivity
  /// Definition: The degree to which a paramagnetic contrast agent can enhance the proton longitudinal relaxation rate constant (R1, 1/T1), normalized to the concentration of the contrast agent. Also referred to as r1. Typically expressed in units of l/mmol/s
  value126380('126380'),

  /// Display: Regional Blood Flow
  /// Definition: The flow rate of blood perfusing a region as volume per mass per unit of time
  value126390('126390'),

  /// Display: Regional Blood Volume
  /// Definition: The volume of blood perfusing a region as volume per mass
  value126391('126391'),

  /// Display: Oxygen Extraction Fraction
  /// Definition: The percent of the oxygen removed from the blood by tissue during its passage through the capillary network. For example, as measured by blood oxygenation level dependent (BOLD) MR. See He, Xiang, and Dmitriy A. Yablonskiy. "Quantitative BOLD: Mapping of Human Cerebral Deoxygenated Blood Volume and Oxygen Extraction Fraction: Default State." Magnetic Resonance in Medicine 57, no. 1 (2007): 115-26
  value126392('126392'),

  /// Display: R1
  /// Definition: The longitiudinal relaxation rate constant. The inverse of longitudinal relaxation time, i.e., R1 = 1/T1
  value126393('126393'),

  /// Display: R2
  /// Definition: The transverse relaxation rate constant. The inverse of transverse relaxation time, i.e., R2 = 1/T2
  value126394('126394'),

  /// Display: Standardized Uptake Value
  /// Definition: A ratio of locally measured radioactivity concentration versus the injected radioactivity distributed evenly throughout the whole body. This general concept encompasses all specific methods of calculating the whole body volume of distribution, such as using body weight, lean body mass, body surface area, etc.
  value126400('126400'),

  /// Display: SUVbw
  /// Definition: Standardized Uptake Value calculated using body weight. The patient size correction factor for males and females is body weight. Defined in Sugawara et al. Reevaluation of the Standardized Uptake Value for FDG: Variations with Body Weight and Methods for Correction.Radiology, 1999 at http://radiology.rsna.org/content/213/2/521
  value126401('126401'),

  /// Display: SUVlbm
  /// Definition: Standardized Uptake Value calculated using lean body mass. The patient size correction factor for males is 1.10 * weight - 120 * (weight/height) ^2, and for females is 1.07 * weight - 148 * (weight/height) ^2. Defined in Sugawara et al. Reevaluation of the Standardized Uptake Value for FDG: Variations with Body Weight and Methods for Correction.Radiology, 1999 at http://radiology.rsna.org/content/213/2/521
  value126402('126402'),

  /// Display: SUVbsa
  /// Definition: Standardized Uptake Value calculated using body surface area. The patient size correction factor for males and females is weight^ 0.425 * height^0.725 * 0.007184. Defined in Sugawara et al. Reevaluation of the Standardized Uptake Value for FDG: Variations with Body Weight and Methods for Correction.Radiology, 1999 at http://radiology.rsna.org/content/213/2/521
  value126403('126403'),

  /// Display: SUVibw
  /// Definition: Standardized Uptake Value calculated using ideal body weight. The patient size correction factor for males is 48.0 + 1.06 * (height - 152) and for females is 45.5 + 0.91 * (height - 152). Defined in Sugawara et al. Reevaluation of the Standardized Uptake Value for FDG: Variations with Body Weight and Methods for Correction.Radiology, 1999 at http://radiology.rsna.org/content/213/2/521
  value126404('126404'),

  /// Display: SUV body weight calculation method
  /// Definition: Method of calculating Standardized Uptake Value using body weight. The patient size correction factor for males and females is body weight. Defined in Sugawara et al. Reevaluation of the Standardized Uptake Value for FDG: Variations with Body Weight and Methods for Correction.Radiology, 1999 at http://radiology.rsna.org/content/213/2/521
  value126410('126410'),

  /// Display: SUV lean body mass calculation method
  /// Definition: Method of calculating Standardized Uptake Value using lean body mass. The patient size correction factor for males is 1.10 * weight - 120 * (weight/height) ^2, and for females is 1.07 * weight - 148 * (weight/height) ^2. Defined in Sugawara et al. Reevaluation of the Standardized Uptake Value for FDG: Variations with Body Weight and Methods for Correction.Radiology, 1999 at http://radiology.rsna.org/content/213/2/521
  value126411('126411'),

  /// Display: SUV body surface area calculation method
  /// Definition: Method of calculating Standardized Uptake Value using body surface area. The patient size correction factor for males and females is weight^ 0.425 * height^0.725 * 0.007184. Defined in Sugawara et al. Reevaluation of the Standardized Uptake Value for FDG: Variations with Body Weight and Methods for Correction.Radiology, 1999 at http://radiology.rsna.org/content/213/2/521
  value126412('126412'),

  /// Display: SUV ideal body weight calculation method
  /// Definition: Method of calculating Standardized Uptake Value using ideal body weight. The patient size correction factor for males is 48.0 + 1.06 * (height - 152) and for females is 45.5 + 0.91 * (height - 152). Defined in Sugawara et al. Reevaluation of the Standardized Uptake Value for FDG: Variations with Body Weight and Methods for Correction.Radiology, 1999 at http://radiology.rsna.org/content/213/2/521
  value126413('126413'),

  /// Display: Pittsburgh compound B C^11^
  /// Definition: A beta-amyloid PET radiotracer that is an analog of thioflavin T
  value126500('126500'),

  /// Display: Florbetaben F^18^
  /// Definition: A beta-amyloid PET radiotracer
  value126501('126501'),

  /// Display: T807 F^18^
  /// Definition: A PHF-tau PET radiotracer
  value126502('126502'),

  /// Display: Flubatine F^18^
  /// Definition: A nicotinic α4β2 receptor (nAChR) PET radiotracer
  value126503('126503'),

  /// Display: Monoclonal Antibody (mAb) ^64^Cu
  /// Definition: A Cu 64 Monoclonal Antibody (mAb) PET Radiotracer
  value126510('126510'),

  /// Display: Monoclonal Antibody (mAb) ^89^Zr
  /// Definition: A Zr 89 Monoclonal Antibody (mAb) PET Radiotracer
  value126511('126511'),

  /// Display: Trastuzumab ^89^Zr
  /// Definition: A Zr 89 Trastuzumab PET Radiotracer
  value126512('126512'),

  /// Display: Cetuximab ^89^Zr
  /// Definition: A Zr 89 Cetuximab PET Radiotracer
  value126513('126513'),

  /// Display: J591 ^89^Zr
  /// Definition: A Zr 89 J591 PET Radiotracer
  value126514('126514'),

  /// Display: cU36 ^89^Zr
  /// Definition: A Zr 89 cU36 PET Radiotracer
  value126515('126515'),

  /// Display: Bevacizumab ^89^Zr
  /// Definition: A Zr 89 Bevacizumab PET Radiotracer
  value126516('126516'),

  /// Display: cG250-F(ab')(2) ^89^Zr
  /// Definition: A Zr 89 cG250-F(ab')(2) PET Radiotracer
  value126517('126517'),

  /// Display: R1507 ^89^Zr
  /// Definition: A Zr 89 R1507 PET Radiotracer
  value126518('126518'),

  /// Display: E4G10 ^89^Zr
  /// Definition: A Zr 89 E4G10 PET Radiotracer
  value126519('126519'),

  /// Display: Df-CD45 ^89^Zr
  /// Definition: A Zr 89 Df-CD45 PET Radiotracer
  value126520('126520'),

  /// Display: ^44^Scandium
  /// Definition: ^44^Scandium
  value126600('126600'),

  /// Display: ^51^Manganese
  /// Definition: ^51^Manganese
  value126601('126601'),

  /// Display: ^70^Arsenic
  /// Definition: ^70^Arsenic
  value126602('126602'),

  /// Display: ^90^Niobium
  /// Definition: ^90^Niobium
  value126603('126603'),

  /// Display: ^191m^Iridium
  /// Definition: ^191m^Iridium
  value126604('126604'),

  /// Display: ^43^Scandium
  /// Definition: ^43^Scandium
  value126605('126605'),

  /// Display: ^152^Terbium
  /// Definition: ^152^Terbium
  value126606('126606'),

  /// Display: ATSM Cu^60^
  /// Definition: A Cu 60 ATSM PET radiotracer
  value126700('126700'),

  /// Display: ATSM Cu^61^
  /// Definition: A Cu 61 ATSM PET radiotracer
  value126701('126701'),

  /// Display: ATSM Cu^62^
  /// Definition: A Cu 62 ATSM PET radiotracer
  value126702('126702'),

  /// Display: Choline C^11^
  /// Definition: A C 11 Choline PET radiotracer
  value126703('126703'),

  /// Display: Fallypride C^11^
  /// Definition: A C 11 Fallypride PET radiotracer
  value126704('126704'),

  /// Display: Fallypride F^18^
  /// Definition: An F 18 Fallypride PET radiotracer
  value126705('126705'),

  /// Display: FLB 457 C^11^
  /// Definition: A C 11 FLB 457 PET radiotracer
  value126706('126706'),

  /// Display: Fluorotriopride F^18^
  /// Definition: An F 18 Fluorotriopride PET radiotracer
  value126707('126707'),

  /// Display: Fluoromisonidazole (FMISO) F^18^
  /// Definition: An F 18 Fluoromisonidazole PET radiotracer
  value126708('126708'),

  /// Display: Glutamine C^11^
  /// Definition: A C 11 Glutamine PET radiotracer
  value126709('126709'),

  /// Display: Glutamine C^14^
  /// Definition: A C 14 Glutamine PET radiotracer
  value126710('126710'),

  /// Display: Glutamine F^18^
  /// Definition: An F 18 Glutamine PET radiotracer
  value126711('126711'),

  /// Display: Flubatine F^18^
  /// Definition: An F 18 Flubatine PET radiotracer
  value126712('126712'),

  /// Display: 2FA F^18^
  /// Definition: An F 18 2FA PET radiotracer
  value126713('126713'),

  /// Display: Nifene F^18^
  /// Definition: An F 18 Nifene PET radiotracer
  value126714('126714'),

  /// Display: CLR1404 I^124^
  /// Definition: An I 124 cancer targeted phospholipid ether PET radiotracer
  value126715('126715'),

  /// Display: CLR1404 I^131^
  /// Definition: An I 131 cancer targeted phospholipid ether PET radiotracer
  value126716('126716'),

  /// Display: IEC6127 Patient Support Continuous Angle
  /// Definition: Patient Support Continuous Angle in IEC PATIENT SUPPORT Coordinate System [IEC 61217]
  value126801('126801'),

  /// Display: IEC6127 Table Top Continuous Pitch Angle
  /// Definition: Table Top Continuous Pitch Angle in the direction of the IEC TABLE TOP Coordinate System [IEC 61217]
  value126802('126802'),

  /// Display: IEC6127 Table Top Continuous Roll Angle
  /// Definition: Table Top Continuous Roll Angle in the direction of the IEC TABLE TOP Coordinate System [IEC 61217]
  value126803('126803'),

  /// Display: IEC6127 Table Top Eccentric Axis Distance
  /// Definition: Table Top Eccentric Axis Distance [IEC 61217]
  value126804('126804'),

  /// Display: IEC6127 Table Top Continuous Eccentric Angle
  /// Definition: Table Top Continuous Eccentric Angle in the direction of the IEC TABLE TOP ECCENTRIC Coordinate System [IEC 61217]
  value126805('126805'),

  /// Display: IEC6127 Table Top Lateral Position
  /// Definition: Table Top Lateral Position IEC TABLE TOP Coordinate System [IEC 61217]
  value126806('126806'),

  /// Display: IEC6127 Table Top Longitudinal Position
  /// Definition: Table Top Longitudinal Position IEC TABLE TOP Coordinate System [IEC 61217]
  value126807('126807'),

  /// Display: IEC6127 Table Top Vertical Position
  /// Definition: Table Top Vertical Position in IEC TABLE TOP Coordinate System [IEC 61217]
  value126808('126808'),

  /// Display: IEC6127 Gantry Continuous Roll Angle
  /// Definition: Gantry Continuous Roll Angle in degrees of the radiation source, i.e., the rotation about the Y-axis of the IEC GANTRY coordinate system [IEC 61217]
  value126809('126809'),

  /// Display: IEC6127 Gantry Continuous Pitch Angle
  /// Definition: Gantry Pitch Continuous Angle in degrees of the radiation source, i.e., the rotation about the X-axis of the IEC GANTRY coordinate system [IEC 61217]
  value126810('126810'),

  /// Display: IEC6127 Gantry Continuous Yaw Angle
  /// Definition: Gantry Yaw Continuous Angle in degrees of the radiation source, i.e., about the Z-axis of the IEC GANTRY coordinate system [IEC 61217]
  value126811('126811'),

  /// Display:
  /// Definition:
  value110120_1('110120'),

  /// Display:
  /// Definition:
  value110121_1('110121'),

  /// Display:
  /// Definition:
  value110122_1('110122'),

  /// Display:
  /// Definition:
  value110123_1('110123'),

  /// Display:
  /// Definition:
  value110124_1('110124'),

  /// Display:
  /// Definition:
  value110125_1('110125'),

  /// Display:
  /// Definition:
  value110126_1('110126'),

  /// Display:
  /// Definition:
  value110127_1('110127'),

  /// Display:
  /// Definition:
  value110128_1('110128'),

  /// Display:
  /// Definition:
  value110129_1('110129'),

  /// Display:
  /// Definition:
  value110130_1('110130'),

  /// Display:
  /// Definition:
  value110131_1('110131'),

  /// Display:
  /// Definition:
  value110132_1('110132'),

  /// Display:
  /// Definition:
  value110133_1('110133'),

  /// Display:
  /// Definition:
  value110134_1('110134'),

  /// Display:
  /// Definition:
  value110135_1('110135'),

  /// Display:
  /// Definition:
  value110136_1('110136'),

  /// Display:
  /// Definition:
  value110137_1('110137'),

  /// Display:
  /// Definition:
  value110138_1('110138'),

  /// Display:
  /// Definition:
  value110139_1('110139'),

  /// Display:
  /// Definition:
  value110140_1('110140'),

  /// Display:
  /// Definition:
  value110141_1('110141'),

  /// Display:
  /// Definition:
  value110142_1('110142'),

  /// Display: read
  /// Definition: Read the current state of the resource.
  read('read'),

  /// Display: vread
  /// Definition: Read the state of a specific version of the resource.
  vread('vread'),

  /// Display: update
  /// Definition: Update an existing resource by its id (or create it if it is new).
  update('update'),

  /// Display: patch
  /// Definition: Update an existing resource by posting a set of changes to it.
  patch('patch'),

  /// Display: delete
  /// Definition: Delete a resource.
  delete('delete'),

  /// Display: history
  /// Definition: Retrieve the change history for a particular resource, type of resource, or the entire system.
  history('history'),

  /// Display: history-instance
  /// Definition: Retrieve the change history for a particular resource.
  history_instance('history-instance'),

  /// Display: history-type
  /// Definition: Retrieve the change history for all resources of a particular type.
  history_type('history-type'),

  /// Display: history-system
  /// Definition: Retrieve the change history for all resources on a system.
  history_system('history-system'),

  /// Display: create
  /// Definition: Create a new resource with a server assigned id.
  create('create'),

  /// Display: search
  /// Definition: Search a resource type or all resources based on some filter criteria.
  search('search'),

  /// Display: search-type
  /// Definition: Search all resources of the specified type based on some filter criteria.
  search_type('search-type'),

  /// Display: search-system
  /// Definition: Search all resources based on some filter criteria.
  search_system('search-system'),

  /// Display: capabilities
  /// Definition: Get a Capability Statement for the system.
  capabilities('capabilities'),

  /// Display: transaction
  /// Definition: Update, create or delete a set of resources as a single transaction.
  transaction('transaction'),

  /// Display: batch
  /// Definition: perform a set of a separate interactions in a single http operation
  batch('batch'),

  /// Display: operation
  /// Definition: Perform an operation as defined by an OperationDefinition.
  operation('operation'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const AuditEventSubType(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [AuditEventSubType] instances.
  static AuditEventSubType fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AuditEventSubType.elementOnly.withElement(
        element,
      );
    }
    return AuditEventSubType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  AuditEventSubType withElement(Element? newElement) {
    return AuditEventSubType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
