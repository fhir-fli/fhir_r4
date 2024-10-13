/// More detailed code concerning the type of the audit event - defined by DICOM with some FHIR specific additions.
enum AuditEventSubType {
  /// Display: Archive
  /// Definition: Archive device
  ARCHIVE,

  /// Display: Autorefraction
  /// Definition: Autorefraction device
  AR,

  /// Display: Angioscopy
  /// Definition: Angioscopy device
  AS,

  /// Display: Audio
  /// Definition: Audio object
  AU,

  /// Display: Ultrasound Bone Densitometry
  /// Definition: Ultrasound Bone Densitometry (modality)
  BDUS,

  /// Display: Biomagnetic imaging
  /// Definition: Biomagnetic imaging device
  BI,

  /// Display: Bone Mineral Densitometry
  /// Definition: Bone Mineral Densitometry by X-Ray (modality), including dual-energy X-Ray absorptiometry (DXA) and morphometric X-Ray absorptiometry (MXA)
  BMD,

  /// Display: Computer Assisted Detection/Diagnosis
  /// Definition: Computer Assisted Detection/Diagnosis device
  CAD,

  /// Display: Image Capture
  /// Definition: Image Capture Device, includes video capture
  CAPTURE,

  /// Display: Color flow Doppler
  /// Definition: Color flow Doppler
  CD,

  /// Display: Cinefluorography
  /// Definition: Cinefluorography
  CF,

  /// Display: Computation Server
  /// Definition: Computation Server; includes radiotherapy planning
  COMP,

  /// Display: Culposcopy
  /// Definition: Culposcopy
  CP,

  /// Display: Computed Radiography
  /// Definition: Computed Radiography device
  CR,

  /// Display: Cystoscopy
  /// Definition: Cystoscopy
  CS,

  /// Display: Computed Tomography
  /// Definition: Computed Tomography device
  CT,

  /// Display: Duplex Doppler
  /// Definition: Duplex Doppler
  DD,

  /// Display: Digital fluoroscopy
  /// Definition: Digital fluoroscopy
  DF,

  /// Display: Diaphanography
  /// Definition: Diaphanography device
  DG,

  /// Display: Digital microscopy
  /// Definition: Digital microscopy
  DM,

  /// Display: Document Digitizer Equipment
  /// Definition: Equipment that digitized hardcopy documents and imported them
  DOCD,

  /// Display: Digital Subtraction Angiography
  /// Definition: Digital Subtraction Angiography
  DS,

  /// Display: Department System Scheduler
  /// Definition: Department System Scheduler, workflow manager; includes RIS
  DSS,

  /// Display: Digital Radiography
  /// Definition: Digital Radiography device
  DX,

  /// Display: Echocardiography
  /// Definition: Echocardiography
  EC,

  /// Display: Electrocardiography
  /// Definition: Electrocardiography device
  ECG,

  /// Display: Cardiac Electrophysiology
  /// Definition: Cardiac Electrophysiology device
  EPS,

  /// Display: Endoscopy
  /// Definition: Endoscopy device
  ES,

  /// Display: Female
  /// Definition: Female sex
  F,

  /// Display: Fluorescein angiography
  /// Definition: Fluorescein angiography
  FA,

  /// Display: Female changed to Male
  /// Definition: Female sex changed to Male sex
  FC,

  /// Display: Film Digitizer
  /// Definition: Film Digitizer
  FILMD,

  /// Display: Female Pseudohermaphrodite
  /// Definition: Female Pseudohermaphrodite
  FP,

  /// Display: Fundoscopy
  /// Definition: Fundoscopy
  FS,

  /// Display: General Microscopy
  /// Definition: General Microscopy device
  GM,

  /// Display: Hermaphrodite
  /// Definition: Hermaphrodite
  H,

  /// Display: Hard Copy
  /// Definition: Hard Copy
  HC,

  /// Display: Hemodynamic Waveform
  /// Definition: Hemodynamic Waveform acquisition device
  HD,

  /// Display: Intra-oral Radiography
  /// Definition: Intra-oral Radiography device
  IO,

  /// Display: Intravascular Optical Coherence Tomography
  /// Definition: An acquisition device, process or method that performs intravascular optical coherence tomography
  IVOCT,

  /// Display: Intravascular Ultrasound
  /// Definition: Intravascular Ultrasound device
  IVUS,

  /// Display: Keratometry
  /// Definition: Keratometry device
  KER,

  /// Display: Key Object Selection
  /// Definition: Key Object Selection object
  KO,

  /// Display: Lensometry
  /// Definition: Lensometry device
  LEN,

  /// Display: Procedure Logging
  /// Definition: Procedure Logging device; includes cath lab logging
  LOG,

  /// Display: Laparoscopy
  /// Definition: Laparoscopy
  LP,

  /// Display: Laser surface scan
  /// Definition: Laser surface scan device
  LS,

  /// Display: Male
  /// Definition: Male sex
  M,

  /// Display: Magnetic resonance angiography
  /// Definition: Magnetic resonance angiography
  MA,

  /// Display: Male changed to Female
  /// Definition: Male sex changed to Female sex
  MC,

  /// Display: Media Creation Device
  /// Definition: A device that creates DICOM PS3.10 interchange media; e.g. a CD creator that is managed by the Media Creation Management Service Class
  MCD,

  /// Display: Portable Media Importer Equipment
  /// Definition: Equipment that retrieved and imported objects from interchange Media
  MEDIM,

  /// Display: Mammography
  /// Definition: Mammography device
  MG,

  /// Display: Male Pseudohermaphrodite
  /// Definition: Male Pseudohermaphrodite
  MP,

  /// Display: Magnetic Resonance
  /// Definition: Magnetic Resonance device
  MR,

  /// Display: Magnetic resonance spectroscopy
  /// Definition: Magnetic resonance spectroscopy
  MS,

  /// Display: Nearline
  /// Definition: Instances need to be retrieved from relatively slow media such as optical disk or tape
  NEARLINE,

  /// Display: Nuclear Medicine
  /// Definition: Nuclear Medicine device
  NM,

  /// Display: Ophthalmic Axial Measurements
  /// Definition: Measurements of the axial length of the eye, which are done by various devices
  OAM,

  /// Display: Optical Coherence Tomography
  /// Definition: Modality device that uses an interferometric, non-invasive optical tomographic technique to image 2D slices and 3D volumes of tissue using visible and near visible frequencies
  OCT,

  /// Display: Offline
  /// Definition: Instances need to be retrieved by manual intervention
  OFFLINE,

  /// Display: Online
  /// Definition: Instances are immediately available
  ONLINE,

  /// Display: Ophthalmic photography
  /// Definition: Ophthalmic photography modality
  OP,

  /// Display: Ophthalmic Mapping
  /// Definition: Modality device that measures corneal topography, corneal or retinal thickness, and other similar parameters that are typically displayed as maps
  OPM,

  /// Display: Ophthalmic Refraction
  /// Definition: Modality device that measures the refractive characteristics of the eye
  OPR,

  /// Display: Ophthalmic Tomography
  /// Definition: Tomography of the eye acquired by a modality that is based on light and optical principles. Tomography based on other principles, such as ultrasound, is excluded
  OPT,

  /// Display: Ophthalmic Visual Field
  /// Definition: Modality device that measures visual fields and perform visual perimetry
  OPV,

  /// Display: Optical Survace Scanner
  /// Definition: An acquisition device, process or method that performs optical surface scanning
  OSS,

  /// Display: Other Modality
  /// Definition: Other Modality device
  OT,

  /// Display: Presentation State
  /// Definition: Presentation State object
  PR,

  /// Display: Hard Copy Print Server
  /// Definition: Hard Copy Print Server; includes printers with embedded DICOM print server
  PRINT,

  /// Display: Positron emission tomography
  /// Definition: Positron emission tomography (PET) device
  PT,

  /// Display: Panoramic X-Ray
  /// Definition: Panoramic X-Ray device
  PX,

  /// Display: Registration
  /// Definition: Registration
  REG,

  /// Display: Radiofluoroscopy
  /// Definition: Radiofluoroscopy device
  RF,

  /// Display: Radiographic imaging
  /// Definition: Radiographic imaging (conventional film/screen)
  RG,

  /// Display: Radiation Therapy Device
  /// Definition: Radiation Therapy Device; includes linear accelerator, proton therapy
  RT,

  /// Display: Radiotherapy Dose
  /// Definition: Radiotherapy Dose
  RTDOSE,

  /// Display: Radiotherapy Image
  /// Definition: Radiotherapy Imaging device; includes portal imaging
  RTIMAGE,

  /// Display: Radiotherapy Plan
  /// Definition: Radiotherapy Plan
  RTPLAN,

  /// Display: Radiotherapy Treatment Record
  /// Definition: Radiotherapy Treatment Record
  RTRECORD,

  /// Display: Radiotherapy Structure Set
  /// Definition: Radiotherapy Structure Set
  RTSTRUCT,

  /// Display: Segmentation
  /// Definition: Segmentation
  SEG,

  /// Display: Slide Microscopy
  /// Definition: Slide Microscopy
  SM,

  /// Display: Stereometric Relationship
  /// Definition: Stereometric image pairing modality
  SMR,

  /// Display: Structured Report Document
  /// Definition: Structured Report Document
  SR,

  /// Display: Subjective Refraction
  /// Definition: Subjective Refraction device
  SRF,

  /// Display: Single-photon emission computed tomography
  /// Definition: Single-photon emission computed tomography (SPECT) device
  ST,

  /// Display: Thermography
  /// Definition: Thermography device
  TG,

  /// Display: Unknown Sex
  /// Definition: Unknown Sex
  U,

  /// Display: Unavailable
  /// Definition: Instances cannot be retrieved
  UNAVAILABLE,

  /// Display: Ultrasound
  /// Definition: Ultrasound device
  US,

  /// Display: Visual Acuity
  /// Definition: Visual Acuity device
  VA,

  /// Display: Videofluorography
  /// Definition: Videofluorography
  VF,

  /// Display: Video Tape Digitizer Equipment
  /// Definition: Equipment that digitizes video tape and imports it
  VIDD,

  /// Display: Workstation
  /// Definition: Workstation
  WSD,

  /// Display: X-Ray Angiography
  /// Definition: X-Ray Angiography device
  XA,

  /// Display: External-camera Photography
  /// Definition: External-camera Photography device
  XC,

  /// Display: Digital timecode (NOS)
  /// Definition: A signal transmitted for the purpose of interchange of the current time, not specific to any source or methodology
  value109001,

  /// Display: ECG-based gating signal, processed
  /// Definition: A signal that is generated for each detection of a heart beat
  value109002,

  /// Display: IRIG-B timecode
  /// Definition: A signal transmitted by the Inter-Range Instrumentation Group for the purpose of synchronizing time clocks
  value109003,

  /// Display: X-Ray Fluoroscopy On Signal
  /// Definition: A signal that indicated that X-Ray source has been activated for fluoroscopy use
  value109004,

  /// Display: X-Ray On Trigger
  /// Definition: A signal that indicated that the X-Ray source has been activated for image recording
  value109005,

  /// Display: Differential signal
  /// Definition: An electrical signal derived from two electrodes
  value109006,

  /// Display: His bundle electrogram
  /// Definition: An electrophysiological recording from the HIS nerve bundle
  value109007,

  /// Display: Monopole signal
  /// Definition: An electrical signal from one electrode relative to an indifferent potential
  value109008,

  /// Display: Pacing (electrical) stimulus, voltage
  /// Definition: The voltage stimulus during cardiac pacing
  value109009,

  /// Display: Radio frequency ablation, power
  /// Definition: The power injected during RF ablation procedure
  value109010,

  /// Display: Voltage measurement by basket catheter
  /// Definition: Electrophysiological signals acquired using a multi-splined catheter each equipped with multiple electrodes
  value109011,

  /// Display: Voltage measurement by mapping catheter
  /// Definition: Electrophysiological signals acquired using a steerable catheter
  value109012,

  /// Display: Voltage measurement, NOS
  /// Definition: A voltage measurement not otherwise specified
  value109013,

  /// Display: 35% of thermal CO
  /// Definition: A signal point that is 35% of the peak thermal cardiac output signal
  value109014,

  /// Display: 70% of thermal CO
  /// Definition: A signal point that is 70% of the peak thermal cardiac output signal
  value109015,

  /// Display: A wave peak pressure
  /// Definition: The peak pressure of each heart beat in the atrium caused by the atrial contraction
  value109016,

  /// Display: A wave pressure, average
  /// Definition: The average of several A wave pressure measurements
  value109017,

  /// Display: Beat detected (accepted)
  /// Definition: An identified cardiac beat used in the determination of a measurement
  value109018,

  /// Display: Beat detected (rejected)
  /// Definition: An identified cardiac beat not used in the determination of a measurement
  value109019,

  /// Display: Diastolic pressure, average
  /// Definition: The average of several diastolic pressure measurements
  value109020,

  /// Display: Diastolic pressure nadir
  /// Definition: The lowest pressure value excluding any undershoot artifact
  value109021,

  /// Display: End diastole
  /// Definition: The moment at the end of the diastolic phase of the cardiac cycle
  value109022,

  /// Display: End of expiration
  /// Definition: The moment at the end of respiratory expiration
  value109023,

  /// Display: End of inspiration
  /// Definition: The moment at the end of respiratory inspiration
  value109024,

  /// Display: Max dp/dt
  /// Definition: The maximum positive rate of change of pressure
  value109025,

  /// Display: Max neg dp/dt
  /// Definition: The maximum negative rate of change of pressure
  value109026,

  /// Display: Mean blood pressure
  /// Definition: The average blood pressure value, generally over 2 or more seconds
  value109027,

  /// Display: Peak of thermal cardiac output bolus
  /// Definition: The peak change in blood temperature during a thermal cardiac output measurement
  value109028,

  /// Display: Start of expiration
  /// Definition: The moment respiratory expiration begins
  value109029,

  /// Display: Start of inspiration
  /// Definition: The moment of respiratory inspiration begins
  value109030,

  /// Display: Start of thermal cardiac output bolus
  /// Definition: The first discernible blood temperature change following the injectate during a thermal cardiac output measurement
  value109031,

  /// Display: Systolic pressure, average
  /// Definition: The average of several systolic blood pressure measurements
  value109032,

  /// Display: Systolic peak pressure
  /// Definition: The highest systolic blood pressure value excluding any overshoot artifact
  value109033,

  /// Display: V wave peak pressure
  /// Definition: The peak pressure of each heart beat in the atrium caused by the filling of the atrium
  value109034,

  /// Display: V wave pressure, average
  /// Definition: The average of several V wave pressure measurements
  value109035,

  /// Display: Valve close
  /// Definition: The moment at which a heart valve closes
  value109036,

  /// Display: Valve open
  /// Definition: The moment at which a heart valve opens
  value109037,

  /// Display: Ablation off
  /// Definition: The moment when RF ablation current is turned off
  value109038,

  /// Display: Ablation on
  /// Definition: The moment when RF ablation current is turned on
  value109039,

  /// Display: HIS bundle wave
  /// Definition: The moment in the cardiac cycle when the HIS bundle nerves depolarize
  value109040,

  /// Display: P wave
  /// Definition: The surface electrocardiogram of the atrial contraction
  value109041,

  /// Display: Q wave
  /// Definition: The first negative deflection of the electrocardiogram caused by ventricular depolarization
  value109042,

  /// Display: R wave
  /// Definition: The first positive deflection the electrocardiogram caused by ventricular depolarization
  value109043,

  /// Display: S wave
  /// Definition: The first negative deflection after the R wave
  value109044,

  /// Display: Start of atrial contraction
  /// Definition: The beginning of the atrial contraction
  value109045,

  /// Display: Start of atrial contraction (subsequent)
  /// Definition: The beginning of the second atrial contraction of two consecutive beats
  value109046,

  /// Display: Stimulation at rate 1 interval
  /// Definition: The stimulation interval during cardiac stimulation first used in a pacing train
  value109047,

  /// Display: Stimulation at rate 2 interval
  /// Definition: The stimulation interval different from the first stimulation interval used in a pacing train
  value109048,

  /// Display: Stimulation at rate 3 interval
  /// Definition: A stimulation interval different from and subsequent to the second interval in a pacing train
  value109049,

  /// Display: Stimulation at rate 4 interval
  /// Definition: Describes a stimulation interval different from and subsequent to the third interval in a pacing train
  value109050,

  /// Display: T wave
  /// Definition: The electrocardiogram deflection caused by ventricular repolarization
  value109051,

  /// Display: V wave
  /// Definition: The peak pressure of each heart beat monitored in the atrium caused by the filling of the atrium
  value109052,

  /// Display: V wave of next beat
  /// Definition: The second V wave measurement of two consecutive beats
  value109053,

  /// Display: Patient State
  /// Definition: A description of the physiological condition of the patient
  value109054,

  /// Display: Protocol Stage
  /// Definition: The exercise level during a progressive cardiac stress test
  value109055,

  /// Display: Stress Protocol
  /// Definition: A series of physiological challenges designed to progressively increase the work of the heart
  value109056,

  /// Display: Catheterization Procedure Phase
  /// Definition: A subpart of a cardiac catheterization procedure
  value109057,

  /// Display: Contrast Phase
  /// Definition: The subpart of a cardiac catheterization procedure in which a radio-opaque contrast medium is injected into the patient
  value109058,

  /// Display: Physiological challenges
  /// Definition: Physical changes administered to a patient in order to elicit an physiological response
  value109059,

  /// Display: Procedure Step Number
  /// Definition: Enumeration of a subpart of a catheterization procedure
  value109060,

  /// Display: EP Procedure Phase
  /// Definition: A subpart of an electrophysiological procedure
  value109061,

  /// Display: Pulse train definition
  /// Definition: A means of defining a series of cardiac stimulation pulses
  value109063,

  /// Display: End of systole
  /// Definition: End of the contraction phase of the cardiac cycle
  value109070,

  /// Display: Indicator mean transit time
  /// Definition: Time for a median particle to travel from point of injection to point of detection
  value109071,

  /// Display: Tau
  /// Definition: The time constant of isovolumic pressure fall
  value109072,

  /// Display: V max myocardial
  /// Definition: Maximum velocity of myocardial contractility
  value109073,

  /// Display: Real time acquisition
  /// Definition: Total time for the acquisition is shorter than cardiac cycle, no gating is applied; see Cardiac Synchronization Technique (0018,9037)
  value109080,

  /// Display: Prospective gating
  /// Definition: Certain thresholds have been set for a gating window that defines the acceptance of measurement data during the acquisition; see Cardiac Synchronization Technique (0018,9037)
  value109081,

  /// Display: Retrospective gating
  /// Definition: Certain thresholds have been set for a gating window that defines the acceptance of measurement data after the acquisition; see Cardiac Synchronization Technique (0018,9037)
  value109082,

  /// Display: Paced
  /// Definition: There is a constant RR interval, which makes thresholding not required; see Cardiac Synchronization Technique (0018,9037); e.g. Pacemaker
  value109083,

  /// Display: Cardiac Stress State
  /// Definition: Imaging after injection of tracer during increased cardiac workload or increased myocardial blood flow, achieved by either exercise or pharmacologic means
  value109091,

  /// Display: Reinjection State
  /// Definition: Imaging after injection of additional tracer under resting conditions
  value109092,

  /// Display: Redistribution State
  /// Definition: Imaging after allowing a moderate amount of time for tracer to move from its initial sites of uptake. Example: For Thallium imaging this would correspond to imaging 2-6 hours after injection
  value109093,

  /// Display: Delayed Redistribution State
  /// Definition: Imaging after allowing an extended amount of time for tracer to move from its initial sites of uptake. Example: For Thallium imaging this would correspond to imaging more than 6 hours after injection
  value109094,

  /// Display: Peak stress state
  /// Definition: Peak cardiac stress state
  value109095,

  /// Display: Recovery state
  /// Definition: Recovery from cardiac stress
  value109096,

  /// Display: Acquisition Equipment
  /// Definition: Equipment that originally acquired the data stored within composite instances; e.g. a CT, MR or Ultrasound modality
  value109101,

  /// Display: Processing Equipment
  /// Definition: Equipment that has processed composite instances to create new composite instances; e.g. a 3D Workstation
  value109102,

  /// Display: Modifying Equipment
  /// Definition: Equipment that has modified existing composite instances (without creating new composite instances); e.g. a QA Station or Archive
  value109103,

  /// Display: De-identifying Equipment
  /// Definition: Equipment that has modified an existing composite instance to remove patient identifying information
  value109104,

  /// Display: Frame Extracting Equipment
  /// Definition: Equipment that has processed composite instances to create new composite instances by extracting selected frames from the original instance
  value109105,

  /// Display: Enhanced Multi-frame Conversion Equipment
  /// Definition: Equipment that has processed composite instances to create new composite instances by converting classic single frame images to enhanced multi-frame image, or vice versa and updating other instances to maintain referential integrity
  value109106,

  /// Display: Voice
  /// Definition: The sound of a human's speech, recorded during a procedure
  value109110,

  /// Display: Operator's narrative
  /// Definition: The voice of a device operator, recorded during a procedure
  value109111,

  /// Display: Ambient room environment
  /// Definition: The ambient sound recorded during a procedure, which may or may not include voice and other types of sound
  value109112,

  /// Display: Doppler audio
  /// Definition: The Doppler waveform recorded as an audible signal
  value109113,

  /// Display: Phonocardiogram
  /// Definition: The sound of the human heart beating
  value109114,

  /// Display: Physiological audio signal
  /// Definition: Any sound made by the human body
  value109115,

  /// Display: Arterial Pulse Waveform
  /// Definition: A digitized signal from the patient arterial system collected through pulse oximetry or other means
  value109116,

  /// Display: Respiration Waveform
  /// Definition: A digitized signal from the patient respiratory system representing respiration
  value109117,

  /// Display: On admission to unit
  /// Definition: The occasion on which a procedure was performed on admission to a specialist unit; e.g. intensive care
  value109120,

  /// Display: On discharge
  /// Definition: The occasion on which a procedure was performed on discharge from hospital as an in-patient
  value109121,

  /// Display: On discharge from unit
  /// Definition: The occasion on which a procedure was performed on discharge from a specialist unit; e.g. intensive care
  value109122,

  /// Display: Pre-intervention
  /// Definition: The occasion on which a procedure was performed immediately prior to non-surgical intervention; e.g, percutaneous angioplasty, biopsy
  value109123,

  /// Display: Post-intervention
  /// Definition: The occasion on which a procedure was performed immediately after to non-surgical intervention; e.g, percutaneous angioplasty, biopsy
  value109124,

  /// Display: At last appointment
  /// Definition: The occasion on which a procedure was performed at the most recent outpatient visit
  value109125,

  /// Display: Joint position method
  /// Definition: The active or passive joint positioning during acquisition
  value109132,

  /// Display: Physical force
  /// Definition: A physical force applied during acquisition
  value109133,

  /// Display: Prior to voiding
  /// Definition: Prior to voiding
  value109134,

  /// Display: Post voiding
  /// Definition: Post voiding
  value109135,

  /// Display: Neutral musculoskeletal position
  /// Definition: Neutral musculoskeletal position
  value109136,

  /// Display: America Kennel Club
  /// Definition: America Kennel Club
  value109200,

  /// Display: America's Pet Registry Inc.
  /// Definition: America's Pet Registry Inc
  value109201,

  /// Display: American Canine Association
  /// Definition: American Canine Association
  value109202,

  /// Display: American Purebred Registry
  /// Definition: American Purebred Registry
  value109203,

  /// Display: American Rare Breed Association
  /// Definition: American Rare Breed Association
  value109204,

  /// Display: Animal Registry Unlimited
  /// Definition: Animal Registry Unlimited
  value109205,

  /// Display: Animal Research Foundation
  /// Definition: Animal Research Foundation
  value109206,

  /// Display: Canadian Border Collie Association
  /// Definition: Canadian Border Collie Association
  value109207,

  /// Display: Canadian Kennel Club
  /// Definition: Canadian Kennel Club
  value109208,

  /// Display: Canadian Livestock Records Association
  /// Definition: Canadian Livestock Records Association
  value109209,

  /// Display: Canine Federation of Canada
  /// Definition: Canine Federation of Canada
  value109210,

  /// Display: Continental Kennel Club
  /// Definition: Continental Kennel Club
  value109211,

  /// Display: Dog Registry of America
  /// Definition: Dog Registry of America
  value109212,

  /// Display: Federation of International Canines
  /// Definition: Federation of International Canines
  value109213,

  /// Display: International Progressive Dog Breeders' Alliance
  /// Definition: International Progressive Dog Breeders' Alliance
  value109214,

  /// Display: National Kennel Club
  /// Definition: National Kennel Club
  value109215,

  /// Display: North American Purebred Dog Registry
  /// Definition: North American Purebred Dog Registry
  value109216,

  /// Display: United All Breed Registry
  /// Definition: United All Breed Registry
  value109217,

  /// Display: United Kennel Club
  /// Definition: United Kennel Club
  value109218,

  /// Display: Universal Kennel Club International
  /// Definition: Universal Kennel Club International
  value109219,

  /// Display: Working Canine Association of Canada
  /// Definition: Working Canine Association of Canada
  value109220,

  /// Display: World Kennel Club
  /// Definition: World Kennel Club
  value109221,

  /// Display: World Wide Kennel Club
  /// Definition: World Wide Kennel Club
  value109222,

  /// Display: Overall image quality evaluation
  /// Definition: Evaluation of overall image quality as described in section 7.3.2 of [IEC 62563-1]
  value109701,

  /// Display: Grayscale resolution evaluation
  /// Definition: Visual verification of sufficient grayscale resolution based on 8 and 10-bit markers as described in section 7.3.3 of [IEC 62563-1]
  value109702,

  /// Display: Luminance response evaluation
  /// Definition: Visual evaluation of luminance response using the TG18-CT test pattern as described in section 7.3.4 of [IEC 62563-1]
  value109703,

  /// Display: Luminance uniformity evaluation
  /// Definition: Visual detection of luminance non-uniformities as described in section 7.3.5 of [IEC 62563-1]
  value109704,

  /// Display: Chromaticity evaluation
  /// Definition: Visual verification of color uniformity as described in section 7.3.6 of [IEC 62563-1]
  value109705,

  /// Display: Pixel faults evaluation
  /// Definition: Visual detection of defective pixels on dark (TG18-UN80) and bright (TG18-UN10) images as described in section 7.3.7 of [IEC 62563-1]
  value109706,

  /// Display: Veiling glare evaluation
  /// Definition: Visual evaluation of veiling glare by looking at low contrast objects on 2 test patterns as described in section 7.3.8 of [IEC 62563-1]
  value109707,

  /// Display: Geometrical image evaluation
  /// Definition: Visual evaluation of geometry, phase/clock correction and clipping as described in section 7.3.9 of [IEC 62563-1]
  value109708,

  /// Display: Angular viewing evaluation
  /// Definition: Visual evaluation of viewing angle as described in section 7.3.10 of [IEC 62563-1]
  value109709,

  /// Display: Clinical evaluation
  /// Definition: Visual evaluation of the appearance of clinical images as described in section 7.3.11 of [IEC 62563-1]
  value109710,

  /// Display: TG18-QC Pattern
  /// Definition: AAPM TG18-QC Pattern used for evaluation of resolution, luminance, distortion, artifacts. See [AAPM OR 03]
  value109801,

  /// Display: TG18-BR Pattern
  /// Definition: AAPM TG18-BR Pattern used for the evaluation of the display of low-contrast, fine-detail image structures See [AAPM OR 03]
  value109802,

  /// Display: TG18-PQC Pattern
  /// Definition: AAPM TG18-PQC Pattern used for evaluation of resolution, luminance, contrast transfer for prints. See [AAPM OR 03]
  value109803,

  /// Display: TG18-CT Pattern
  /// Definition: AAPM TG18-CT Pattern used for evaluation of luminance response. See [AAPM OR 03]
  value109804,

  /// Display: TG18-LN8-01 Pattern
  /// Definition: The 1st image in the AAPM TG18-LN8 set used for DICOM grayscale calibration. See [AAPM OR 03]
  value109805,

  /// Display: TG18-LN8-02 Pattern
  /// Definition: The 2nd image in the AAPM TG18-LN8 set used for DICOM grayscale calibration. See [AAPM OR 03]
  value109806,

  /// Display: TG18-LN8-03 Pattern
  /// Definition: The 3rd image in the AAPM TG18-LN8 set used for DICOM grayscale calibration. See [AAPM OR 03]
  value109807,

  /// Display: TG18-LN8-04 Pattern
  /// Definition: The 4th image in the AAPM TG18-LN8 set used for DICOM grayscale calibration. See [AAPM OR 03]
  value109808,

  /// Display: TG18-LN8-05 Pattern
  /// Definition: The 5th image in the AAPM TG18-LN8 set used for DICOM grayscale calibration. See [AAPM OR 03]
  value109809,

  /// Display: TG18-LN8-06 Pattern
  /// Definition: The 6th image in the AAPM TG18-LN8 set used for DICOM grayscale calibration. See [AAPM OR 03]
  value109810,

  /// Display: TG18-LN8-07 Pattern
  /// Definition: The 7th image in the AAPM TG18-LN8 set used for DICOM grayscale calibration. See [AAPM OR 03]
  value109811,

  /// Display: TG18-LN8-08 Pattern
  /// Definition: The 8th image in the AAPM TG18-LN8 set used for DICOM grayscale calibration. See [AAPM OR 03]
  value109812,

  /// Display: TG18-LN8-09 Pattern
  /// Definition: The 9th image in the AAPM TG18-LN8 set used for DICOM grayscale calibration. See [AAPM OR 03]
  value109813,

  /// Display: TG18-LN8-10 Pattern
  /// Definition: The 10th image in the AAPM TG18-LN8 set used for DICOM grayscale calibration series. See [AAPM OR 03]
  value109814,

  /// Display: TG18-LN8-11 Pattern
  /// Definition: The 11th image in the AAPM TG18-LN8 set used for DICOM grayscale calibration. See [AAPM OR 03]
  value109815,

  /// Display: TG18-LN8-12 Pattern
  /// Definition: The 12th image in the AAPM TG18-LN8 set used for DICOM grayscale calibration. See [AAPM OR 03]
  value109816,

  /// Display: TG18-LN8-13 Pattern
  /// Definition: The 13th image in the AAPM TG18-LN8 set used for DICOM grayscale calibration. See [AAPM OR 03]
  value109817,

  /// Display: TG18-LN8-14 Pattern
  /// Definition: The 14th image in the AAPM TG18-LN8 set used for DICOM grayscale calibration. See [AAPM OR 03]
  value109818,

  /// Display: TG18-LN8-15 Pattern
  /// Definition: The 15th image in the AAPM TG18-LN8 set used for DICOM grayscale calibration. See [AAPM OR 03]
  value109819,

  /// Display: TG18-LN8-16 Pattern
  /// Definition: The 16th image in the AAPM TG18-LN8 set used for DICOM grayscale calibration. See [AAPM OR 03]
  value109820,

  /// Display: TG18-LN8-17 Pattern
  /// Definition: The 17th image in the AAPM TG18-LN8 set used for DICOM grayscale calibration. See [AAPM OR 03]
  value109821,

  /// Display: TG18-LN8-18 Pattern
  /// Definition: The 18th image in the AAPM TG18-LN8- set used for DICOM grayscale calibration. See [AAPM OR 03]
  value109822,

  /// Display: TG18-LN12-01 Pattern
  /// Definition: The 1st image in the AAPM TG18-LN12 set used for DICOM grayscale calibration. See [AAPM OR 03]
  value109823,

  /// Display: TG18-LN12-02 Pattern
  /// Definition: The 2 nd image in the AAPM TG18-LN12 set used for DICOM grayscale calibration. See [AAPM OR 03]
  value109824,

  /// Display: TG18-LN12-03 Pattern
  /// Definition: The 3rd image in the AAPM TG18-LN12 set used for DICOM grayscale calibration. See [AAPM OR 03]
  value109825,

  /// Display: TG18-LN12-04 Pattern
  /// Definition: The 4th image in the AAPM TG18-LN12 set used for DICOM grayscale calibration. See [AAPM OR 03]
  value109826,

  /// Display: TG18-LN12-05 Pattern
  /// Definition: The 5th image in the AAPM TG18-LN12 set used for DICOM grayscale calibration. See [AAPM OR 03]
  value109827,

  /// Display: TG18-LN12-06 Pattern
  /// Definition: The 6th image in the AAPM TG18-LN12 set used for DICOM grayscale calibration. See [AAPM OR 03]
  value109828,

  /// Display: TG18-LN12-07 Pattern
  /// Definition: The 7th image in the AAPM TG18-LN12 set used for DICOM grayscale calibration. See [AAPM OR 03]
  value109829,

  /// Display: TG18-LN12-08 Pattern
  /// Definition: The 8th image in the AAPM TG18-LN12 set used for DICOM grayscale calibration. See [AAPM OR 03]
  value109830,

  /// Display: TG18-LN12-09 Pattern
  /// Definition: The 9th image in the AAPM TG18-LN12 set used for DICOM grayscale calibration. See [AAPM OR 03]
  value109831,

  /// Display: TG18-LN12-10 Pattern
  /// Definition: The 10th image in the AAPM TG18-LN12 set used for DICOM grayscale calibration. See [AAPM OR 03]
  value109832,

  /// Display: TG18-LN12-11 Pattern
  /// Definition: The 11th image in the AAPM TG18-LN12 set used for DICOM grayscale calibration. See [AAPM OR 03]
  value109833,

  /// Display: TG18-LN12-12 Pattern
  /// Definition: The 12th image in the AAPM TG18-LN12 set used for DICOM grayscale calibration. See [AAPM OR 03]
  value109834,

  /// Display: TG18-LN12-13 Pattern
  /// Definition: The 13th image in the AAPM TG18-LN12 set used for DICOM grayscale calibration. See [AAPM OR 03]
  value109835,

  /// Display: TG18-LN12-14 Pattern
  /// Definition: The 14th image in the AAPM TG18-LN12 set used for DICOM grayscale calibration. See [AAPM OR 03]
  value109836,

  /// Display: TG18-LN12-15 Pattern
  /// Definition: The 15th image in the AAPM TG18-LN12 set used for DICOM grayscale calibration. See [AAPM OR 03]
  value109837,

  /// Display: TG18-LN12-16 Pattern
  /// Definition: The 16th image in the AAPM TG18-LN12 set used for DICOM grayscale calibration. See [AAPM OR 03]
  value109838,

  /// Display: TG18-LN12-17 Pattern
  /// Definition: The 17th image in the AAPM TG18-LN12 set used for DICOM grayscale calibration. See [AAPM OR 03]
  value109839,

  /// Display: TG18-LN12-18 Pattern
  /// Definition: The 18th image in the AAPM TG18-LN12 set used for DICOM grayscale calibration. See [AAPM OR 03]
  value109840,

  /// Display: TG18-UN10 Pattern
  /// Definition: The AAPM TG18-UN10 Pattern used for evaluation of luminance and color uniformity, and angular response. See [AAPM OR 03]
  value109841,

  /// Display: TG18-UN80 Pattern
  /// Definition: The AAPM TG18-UN80 Pattern used for evaluation of luminance and color uniformity, and angular response. See [AAPM OR 03]
  value109842,

  /// Display: TG18-UNL10 Pattern
  /// Definition: The AAPM TG18-UNL10 Pattern is the AAPM TG-18 UN10 Pattern with added defining lines. See [AAPM OR 03]
  value109843,

  /// Display: TG18-UNL80 Pattern
  /// Definition: The AAPM TG18-UNL80 Pattern is the AAPM TG-18 UN80 Pattern with added defining lines. See [AAPM OR 03]
  value109844,

  /// Display: TG18-AD Pattern
  /// Definition: The AAPM TG18-AD Pattern used for visual evaluation of the reflection of ambient light from the display. See [AAPM OR 03]
  value109845,

  /// Display: TG18-MP Pattern
  /// Definition: The AAPM TG18-MP Pattern used for evaluation of Luminance response (bit-depth resolution). See [AAPM OR 03]
  value109846,

  /// Display: TG18-RH10 Pattern
  /// Definition: The AAPM TG18-RH10 Pattern used for LSF-line spectra function-(1k and 2k) evaluation by 5 horizontal lines at 10% luminance level. See [AAPM OR 03]
  value109847,

  /// Display: TG18-RH50 Pattern
  /// Definition: The AAPM TG18-RH50 Pattern used for LSF-line spectra function-(1k and 2k) evaluation by 5 horizontal lines at 50% luminance level. See [AAPM OR 03]
  value109848,

  /// Display: TG18-RH89 Pattern
  /// Definition: The AAPM TG18-RH89 Pattern used for LSF-line spectra function-(1k and 2k) evaluation by 5 horizontal lines at 89% luminance level. See [AAPM OR 03]
  value109849,

  /// Display: TG18-RV10 Pattern
  /// Definition: The AAPM TG18-RV10 Pattern used for LSF-line spectra function-(1k and 2k) evaluation by 5 vertical lines at 10% luminance level. See [AAPM OR 03]
  value109850,

  /// Display: TG18-RV50 Pattern
  /// Definition: The AAPM TG18-RV50 Pattern used for LSF-line spectra function-(1k and 2k) evaluation by 5 vertical lines at 50% luminance level. See [AAPM OR 03]
  value109851,

  /// Display: TG18-RV89 Pattern
  /// Definition: The AAPM TG18-RV89 Pattern used for LSF-line spectra function-(1k and 2k) evaluation by 5 vertical lines at 89% luminance level. See [AAPM OR 03]
  value109852,

  /// Display: TG18-PX Pattern
  /// Definition: The AAPM TG18-PX Pattern used for the assessment of display resolution. See [AAPM OR 03]
  value109853,

  /// Display: TG18-CX Pattern
  /// Definition: The AAPM TG18-CX Pattern used to assess display resolution and resolution uniformity. See [AAPM OR 03]
  value109854,

  /// Display: TG18-LPH10 Pattern
  /// Definition: The AAPM TG18-LPH10 Pattern used to assess display resolution. This pattern has horizontal bars consisting of alternating single-pixel-wide lines across the faceplate of display. The lines have a 12% positive contrast against 10% background level of the maximum pixel value. See [AAPM OR 03]
  value109855,

  /// Display: TG18-LPH50 Pattern
  /// Definition: The AAPM TG18-LPH50 Pattern used to assess display resolution. This pattern has horizontal bars consisting of alternating single-pixel-wide lines across the faceplate of display. The lines have a 50% positive contrast against 10% background level of the maximum pixel value. See [AAPM OR 03]
  value109856,

  /// Display: TG18-LPH89 Pattern
  /// Definition: The AAPM TG18-LPH89 Pattern used to assess display resolution. This pattern has horizontal bars consisting of alternating single-pixel-wide lines across the faceplate of display. The lines have a 12% positive contrast against 89% background level of the maximum pixel value. See [AAPM OR 03]
  value109857,

  /// Display: TG18-LPV10 Pattern
  /// Definition: The AAPM TG18-LPV10 Pattern used to assess display resolution. This pattern has vertical bars consisting of alternating single-pixel-wide lines across the faceplate of display. The lines have a 12% positive contrast against 10% background level of the maximum pixel value. See [AAPM OR 03]
  value109858,

  /// Display: TG18-LPV50 Pattern
  /// Definition: The AAPM TG18-LPV50 Pattern used to assess display resolution. This pattern has vertical bars consisting of alternating single-pixel-wide lines across the faceplate of display. The lines have a 12% positive contrast against 50% background level of the maximum pixel value. See [AAPM OR 03]
  value109859,

  /// Display: TG18-LPV89 Pattern
  /// Definition: The AAPM TG18-LPV89 Pattern used to assess display resolution. This pattern has vertical bars consisting of alternating single-pixel-wide lines across the faceplate of display. The lines have a 12% positive contrast against 89% background level of the maximum pixel value. See [AAPM OR 03]
  value109860,

  /// Display: TG18-AFC Pattern
  /// Definition: The AAPM TG18-AFC Pattern used to assess display noise. See [AAPM OR 03]
  value109861,

  /// Display: TG18-NS10 Pattern
  /// Definition: The AAPM TG18-NS10 Pattern is AAPM TG18-RV10/RH10 with only difference being the absence of the single line at the center of the measurement area. See [AAPM OR 03]
  value109862,

  /// Display: TG18-NS50 Pattern
  /// Definition: The AAPM TG18-NS50 Pattern is AAPM TG18-RV50/RH50 with only difference being the absence of the single line at the center of the measurement area. See [AAPM OR 03]
  value109863,

  /// Display: TG18-NS89 Pattern
  /// Definition: The AAPM TG18-NS89 Pattern is AAPM TG18-RV89/RH89 with only difference being the absence of the single line at the center of the measurement area. See [AAPM OR 03]
  value109864,

  /// Display: TG18-GV Pattern
  /// Definition: The TG18-GV Pattern used to assess display veiling. See [AAPM OR 03]
  value109865,

  /// Display: TG18-GVN Pattern
  /// Definition: The TG18-GVN Pattern used to assess display veiling. This pattern is identical to AAPM TG18-GV Pattern except that the large-diameter white circle is replaced with a black circle, creating a completely black pattern except for the presence of low-contrast targets. See [AAPM OR 03]
  value109866,

  /// Display: TG18-GQ Pattern
  /// Definition: The TG18-GQ Pattern used for quantitative assessment of veiling glare. This pattern is identical to TG18-GV except that is lacks the central low-contrast objects. See [AAPM OR 03]
  value109867,

  /// Display: TG18-GQN Pattern
  /// Definition: TG18-GQN Pattern used for the quantitative assessment of veiling glare. This pattern is identical to AAPM TG18-GQ Pattern except that the large-diameter white circle is replaced with a black circle, creating a completely black pattern except for the presence of low-contrast targets. See [AAPM OR 03]
  value109868,

  /// Display: TG18-GQB Pattern
  /// Definition: The TG18-GQB Pattern used for the quantitative assessment of veiling glare. This pattern is identical to AAPM TG18-GQ Pattern except eliminating the central black circle. See [AAPM OR 03]
  value109869,

  /// Display: TG18-GA03 Pattern
  /// Definition: The TG18-GA03 Pattern used for quantitative assessment of veiling glare. This pattern is identical to TG18-GQ except that the radius of the central black circle is varied as r = 3. See [AAPM OR 03]
  value109870,

  /// Display: TG18-GA05 Pattern
  /// Definition: The TG18-GA05 Pattern This pattern is identical to TG18-GQ except that the radius of the central black circle is varied as r = 5. See [AAPM OR 03]
  value109871,

  /// Display: TG18-GA08 Pattern
  /// Definition: The TG18-GA08 Pattern used for quantitative assessment of veiling glare. This pattern is identical to TG18-GQ except that the radius of the central black circle is varied as r = 8. See [AAPM OR 03]
  value109872,

  /// Display: TG18-GA10 Pattern
  /// Definition: The TG18-GA10 Pattern used for quantitative assessment of veiling glare. This pattern is identical to TG18-GQ except that the radius of the central black circle is varied as r = 10. See [AAPM OR 03]
  value109873,

  /// Display: TG18-GA15 Pattern
  /// Definition: The TG18-GA15 Pattern used for quantitative assessment of veiling glare. This pattern is identical to TG18-GQ except that the radius of the central black circle is varied as r = 15
  value109874,

  /// Display: TG18-GA20 Pattern
  /// Definition: The TG18-GA20 Pattern used for quantitative assessment of veiling glare. This pattern is identical to TG18-GQ except that the radius of the central black circle is varied as r = 20. See [AAPM OR 03]
  value109875,

  /// Display: TG18-GA25 Pattern
  /// Definition: The TG18-GA25 Pattern used for quantitative assessment of veiling glare. This pattern is identical to TG18-GQ except that the radius of the central black circle is varied as r = 25. See [AAPM OR 03]
  value109876,

  /// Display: TG18-GA30 Pattern
  /// Definition: The TG18-GA30 Pattern used for quantitative assessment of veiling glare. This pattern is identical to TG18-GQ except that the radius of the central black circle is varied as r = 30. See [AAPM OR 03]
  value109877,

  /// Display: TG18-CH Image
  /// Definition: The AAPM TG18-CH Image is a reference anatomical PA chest image. See [AAPM OR 03]
  value109878,

  /// Display: TG18-KN Image
  /// Definition: The AAPM TG18-KN Image is a reference anatomical knee image. See [AAPM OR 03]
  value109879,

  /// Display: TG18-MM1 Image
  /// Definition: The AAPM TG18-MM1 Image is a reference anatomical mammogram image. See [AAPM OR 03]
  value109880,

  /// Display: TG18-MM2 Image
  /// Definition: The AAPM TG18-MM2 Image is a reference anatomical mammogram image. See [AAPM OR 03]
  value109881,

  /// Display: OIQ Pattern
  /// Definition: The IEC OIQ Pattern is used as an alternative to the TG18-QC Pattern. See [IEC 62563-1]
  value109901,

  /// Display: ANG Pattern
  /// Definition: The IEC ANG Pattern used for angular viewing evaluation. See [IEC 62563-1]
  value109902,

  /// Display: GD Pattern
  /// Definition: The IEC GD Pattern used for geometrical image evaluation. See [IEC 62563-1]
  value109903,

  /// Display: BN01 Pattern
  /// Definition: The IEC BN01 Pattern is used as analternative to the TG18-LN-01 Pattern, to avoid the use of a cone or baffle with LCDs. See [IEC 62563-1]
  value109904,

  /// Display: BN02 Pattern
  /// Definition: The IEC BN02 Pattern is used as analternative to the TG18-LN-02 Pattern, to avoid the use of a cone or baffle with LCDs. See [IEC 62563-1]
  value109905,

  /// Display: BN03 Pattern
  /// Definition: The IEC BN03 Pattern is used as analternative to the TG18-LN-03 Pattern, to avoid the use of a cone or baffle with LCDs. See [IEC 62563-1]
  value109906,

  /// Display: BN04 Pattern
  /// Definition: The IEC BN04 Pattern is used as analternative to the TG18-LN-04 Pattern, to avoid the use of a cone or baffle with LCDs. See [IEC 62563-1]
  value109907,

  /// Display: BN05 Pattern
  /// Definition: The IEC BN05 Pattern is used as analternative to the TG18-LN-05 Pattern, to avoid the use of a cone or baffle with LCDs. See [IEC 62563-1]
  value109908,

  /// Display: BN06 Pattern
  /// Definition: The IEC BN06 Pattern is used as analternative to the TG18-LN-06 Pattern, to avoid the use of a cone or baffle with LCDs. See [IEC 62563-1]
  value109909,

  /// Display: BN07 Pattern
  /// Definition: The IEC BN07 Pattern is used as analternative to the TG18-LN-07 Pattern, to avoid the use of a cone or baffle with LCDs. See [IEC 62563-1]
  value109910,

  /// Display: BN08 Pattern
  /// Definition: The IEC BN08 Pattern is used as analternative to the TG18-LN-08 Pattern, to avoid the use of a cone or baffle with LCDs. See [IEC 62563-1]
  value109911,

  /// Display: BN09 Pattern
  /// Definition: The IEC BN09 Pattern is used as analternative to the TG18-LN-09 Pattern, to avoid the use of a cone or baffle with LCDs. See [IEC 62563-1]
  value109912,

  /// Display: BN10 Pattern
  /// Definition: The IEC BN10 Pattern is used as analternative to the TG18-LN-10 Pattern, to avoid the use of a cone or baffle with LCDs. See [IEC 62563-1]
  value109913,

  /// Display: BN11 Pattern
  /// Definition: The IEC BN11 Pattern is used as analternative to the TG18-LN-11 Pattern, to avoid the use of a cone or baffle with LCDs. See [IEC 62563-1]
  value109914,

  /// Display: BN12 Pattern
  /// Definition: The IEC BN12 Pattern is used as analternative to the TG18-LN-12 Pattern, to avoid the use of a cone or baffle with LCDs. See [IEC 62563-1]
  value109915,

  /// Display: BN13 Pattern
  /// Definition: The IEC BN13 Pattern is used as analternative to the TG18-LN-13 Pattern, to avoid the use of a cone or baffle with LCDs. See [IEC 62563-1]
  value109916,

  /// Display: BN14 Pattern
  /// Definition: The IEC BN14 Pattern is used as analternative to the TG18-LN-14 Pattern, to avoid the use of a cone or baffle with LCDs. See [IEC 62563-1]
  value109917,

  /// Display: BN15 Pattern
  /// Definition: The IEC BN15 Pattern is used as analternative to the TG18-LN-15 Pattern, to avoid the use of a cone or baffle with LCDs. See [IEC 62563-1]
  value109918,

  /// Display: BN16 Pattern
  /// Definition: The IEC BN16 Pattern is used as analternative to the TG18-LN-16 Pattern, to avoid the use of a cone or baffle with LCDs. See [IEC 62563-1]
  value109919,

  /// Display: BN17 Pattern
  /// Definition: The IEC BN17 Pattern is used as analternative to the TG18-LN-17 Pattern, to avoid the use of a cone or baffle with LCDs. See [IEC 62563-1]
  value109920,

  /// Display: BN18 Pattern
  /// Definition: The IEC BN18 Pattern is used as analternative to the TG18-LN-18 Pattern, to avoid the use of a cone or baffle with LCDs. See [IEC 62563-1]
  value109921,

  /// Display: DIN Grayscale Pattern
  /// Definition: Test image "Bild 2" for the gray-scale reproduction of imaging devices. See [DIN 6868-57]
  value109931,

  /// Display: DIN Geometry Pattern
  /// Definition: Test image "Bild 3" for the geometrical imaging properties of imaging devices. See [DIN 6868-57]
  value109932,

  /// Display: DIN Resolution Pattern
  /// Definition: Test image "Bild 5" for displaying the spatial and contrast resolution as well as the line structure of imaging devices. See [DIN 6868-57]
  value109933,

  /// Display: White Pattern
  /// Definition: An alternative to AAPM TG18-UN80, specified at 100% of maximum pixel value
  value109941,

  /// Display: SMPTE Pattern
  /// Definition: A standard display test pattern. See [SMPTE RP133]. A pattern is available at http://www.dclunie.com/images/smpte.512.512.8.gif
  value109943,

  /// Display: CRT Display
  /// Definition: A Display Device that displays images on a Cathode Ray Tube
  value109991,

  /// Display: Liquid Crystal Display
  /// Definition: A Display Device that displays images on a Liquid Crystal Display
  value109992,

  /// Display: Plasma Display
  /// Definition: A Display Device that displays images on a Plasma Display
  value109993,

  /// Display: OLED
  /// Definition: A Display Device that displays images on an Organic Light Emitting Diode based display
  value109994,

  /// Display: DLP Rear Projection System
  /// Definition: A Display Device that projects images on a surface from behind using a Digital Light Processing Projector
  value109995,

  /// Display: DLP Front Projection System
  /// Definition: A Display Device that projects images on a surface from in front using a Digital Light Processing Projector
  value109996,

  /// Display: CRT Rear Projection System
  /// Definition: A Display Device that projects images on a surface from behind using a Cathode Ray Tube
  value109997,

  /// Display: CRT Front Projection System
  /// Definition: A Display Device that projects images on a surface from in front using a Cathode Ray Tube
  value109998,

  /// Display: Other Projection System
  /// Definition: A Display Device that projects images on a surface from an unspecified direction using an unspecified means
  value109999,

  /// Display: Image Processing
  /// Definition: Image processing work item
  value110001,

  /// Display: Quality Control
  /// Definition: Quality control work item
  value110002,

  /// Display: Computer Aided Diagnosis
  /// Definition: Computer aided diagnosis work item
  value110003,

  /// Display: Computer Aided Detection
  /// Definition: Computer aided detection work item
  value110004,

  /// Display: Interpretation
  /// Definition: Interpretation work item
  value110005,

  /// Display: Transcription
  /// Definition: Transcription work item
  value110006,

  /// Display: Report Verification
  /// Definition: Report verification work item
  value110007,

  /// Display: Print
  /// Definition: Print work item
  value110008,

  /// Display: No subsequent Workitems
  /// Definition: There will be no more work items scheduled
  value110009,

  /// Display: Film
  /// Definition: Film type of output
  value110010,

  /// Display: Dictation
  /// Definition: Dictation type of output
  value110011,

  /// Display: Transcription
  /// Definition: Transcription type of output
  value110012,

  /// Display: Media Import
  /// Definition: The procedure to read DICOM instances from DICOM interchange media, coerce identifying attributes into the local namespace if necessary, and make the instances available
  value110013,

  /// Display: Sheet Film Digitized
  /// Definition: Digitization of Sheet Film
  value110020,

  /// Display: Cine Film Digitized
  /// Definition: Digitization of Cine Film
  value110021,

  /// Display: Video Tape Digitized
  /// Definition: Digitization of Video Tape
  value110022,

  /// Display: Paper Digitized
  /// Definition: Digitization of pages of a paper document (Units may be specified as Pages, Documents)
  value110023,

  /// Display: CD Imported
  /// Definition: Importation of CD
  value110024,

  /// Display: DVD Imported
  /// Definition: Importation of DVD
  value110025,

  /// Display: MOD Imported
  /// Definition: Importation of MOD
  value110026,

  /// Display: Studies Imported
  /// Definition: Importation of DICOM Studies
  value110027,

  /// Display: Instances Imported
  /// Definition: Importation of DICOM Composite Instances
  value110028,

  /// Display: USB Disk Emulation
  /// Definition: A device that connects using the USB hard drive interface. These may be USB-Sticks, portable hard drives, and other technologies
  value110030,

  /// Display: Email
  /// Definition: Email and email attachments used as a media for data transport
  value110031,

  /// Display: CD
  /// Definition: CD-R, CD-ROM, and CD-RW media used for data transport
  value110032,

  /// Display: DVD
  /// Definition: DVD, DVD-RAM, and other DVD formatted media used for data transport
  value110033,

  /// Display: Compact Flash
  /// Definition: Media that comply with the Compact Flash standard
  value110034,

  /// Display: Multi-media Card
  /// Definition: Media that comply with the Multi-media Card standard
  value110035,

  /// Display: Secure Digital Card
  /// Definition: Media that comply with the Secure Digital Card standard
  value110036,

  /// Display: URI
  /// Definition: URI Identifier for network or other resource, see RFC 3968
  value110037,

  /// Display: Paper Document
  /// Definition: Any paper or similar document
  value110038,

  /// Display: Application Activity
  /// Definition: Audit event: Application Activity has taken place
  value110100,

  /// Display: Audit Log Used
  /// Definition: Audit event: Audit Log has been used
  value110101,

  /// Display: Begin Transferring DICOM Instances
  /// Definition: Audit event: Storage of DICOM Instances has begun
  value110102,

  /// Display: DICOM Instances Accessed
  /// Definition: Audit event: DICOM Instances have been created, read, updated, or deleted
  value110103,

  /// Display: DICOM Instances Transferred
  /// Definition: Audit event: Storage of DICOM Instances has been completed
  value110104,

  /// Display: DICOM Study Deleted
  /// Definition: Audit event: Entire Study has been deleted
  value110105,

  /// Display: Export
  /// Definition: Audit event: Data has been exported out of the system
  value110106,

  /// Display: Import
  /// Definition: Audit event: Data has been imported into the system
  value110107,

  /// Display: Network Entry
  /// Definition: Audit event: System has joined or left network
  value110108,

  /// Display: Order Record
  /// Definition: Audit event: Order has been created, read, updated or deleted
  value110109,

  /// Display: Patient Record
  /// Definition: Audit event: Patient Record has been created, read, updated, or deleted
  value110110,

  /// Display: Procedure Record
  /// Definition: Audit event: Procedure Record has been created, read, updated, or deleted
  value110111,

  /// Display: Query
  /// Definition: Audit event: Query has been made
  value110112,

  /// Display: Security Alert
  /// Definition: Audit event: Security Alert has been raised
  value110113,

  /// Display: User Authentication
  /// Definition: Audit event: User Authentication has been attempted
  value110114,

  /// Display: Application Start
  /// Definition: Audit event: Application Entity has started
  value110120,

  /// Display: Application Stop
  /// Definition: Audit event: Application Entity has stopped
  value110121,

  /// Display: Login
  /// Definition: Audit event: User login has been attempted
  value110122,

  /// Display: Logout
  /// Definition: Audit event: User logout has been attempted
  value110123,

  /// Display: Attach
  /// Definition: Audit event: Node has been attached
  value110124,

  /// Display: Detach
  /// Definition: Audit event: Node has been detached
  value110125,

  /// Display: Node Authentication
  /// Definition: Audit event: Node Authentication has been attempted
  value110126,

  /// Display: Emergency Override Started
  /// Definition: Audit event: Emergency Override has started
  value110127,

  /// Display: Network Configuration
  /// Definition: Audit event: Network configuration has been changed
  value110128,

  /// Display: Security Configuration
  /// Definition: Audit event: Security configuration has been changed
  value110129,

  /// Display: Hardware Configuration
  /// Definition: Audit event: Hardware configuration has been changed
  value110130,

  /// Display: Software Configuration
  /// Definition: Audit event: Software configuration has been changed
  value110131,

  /// Display: Use of Restricted Function
  /// Definition: Audit event: A use of a restricted function has been attempted
  value110132,

  /// Display: Audit Recording Stopped
  /// Definition: Audit event: Audit recording has been stopped
  value110133,

  /// Display: Audit Recording Started
  /// Definition: Audit event: Audit recording has been started
  value110134,

  /// Display: Object Security Attributes Changed
  /// Definition: Audit event: Security attributes of an object have been changed
  value110135,

  /// Display: Security Roles Changed
  /// Definition: Audit event: Security roles have been changed
  value110136,

  /// Display: User security Attributes Changed
  /// Definition: Audit event: Security attributes of a user have been changed
  value110137,

  /// Display: Emergency Override Stopped
  /// Definition: Audit event: Emergency Override has Stopped
  value110138,

  /// Display: Remote Service Operation Started
  /// Definition: Audit event: Remote Service Operation has Begun
  value110139,

  /// Display: Remote Service Operation Stopped
  /// Definition: Audit event: Remote Service Operation has Stopped
  value110140,

  /// Display: Local Service Operation Started
  /// Definition: Audit event: Local Service Operation has Begun
  value110141,

  /// Display: Local Service Operation Stopped
  /// Definition: Audit event: Local Service Operation Stopped
  value110142,

  /// Display: Application
  /// Definition: Audit participant role ID of software application
  value110150,

  /// Display: Application Launcher
  /// Definition: Audit participant role ID of software application launcher, i.e., the entity that started or stopped an application
  value110151,

  /// Display: Destination Role ID
  /// Definition: Audit participant role ID of the receiver of data
  value110152,

  /// Display: Source Role ID
  /// Definition: Audit participant role ID of the sender of data
  value110153,

  /// Display: Destination Media
  /// Definition: Audit participant role ID of media receiving data during an export
  value110154,

  /// Display: Source Media
  /// Definition: Audit participant role ID of media providing data during an import
  value110155,

  /// Display: Study Instance UID
  /// Definition: ParticipantObjectID type: Study Instance UID
  value110180,

  /// Display: SOP Class UID
  /// Definition: ParticipantObjectID type: SOP Class UID
  value110181,

  /// Display: Node ID
  /// Definition: ID of a node that is a participant object of an audit message
  value110182,

  /// Display: Issuer of Identifier
  /// Definition: System, organization, agency, or department that has assigned an instance identifier (such as placer or filler number, patient or provider identifier, etc.)
  value110190,

  /// Display: Doctor canceled procedure
  /// Definition: Procedure order canceled by requesting physician or other authorized physician
  value110500,

  /// Display: Equipment failure
  /// Definition: Equipment failure prevented completion of procedure
  value110501,

  /// Display: Incorrect procedure ordered
  /// Definition: Procedure discontinued due to incorrect procedure being ordered
  value110502,

  /// Display: Patient allergic to media/contrast
  /// Definition: Procedure discontinued due to patient allergy to media/contrast (reported or reaction)
  value110503,

  /// Display: Patient died
  /// Definition: Procedure discontinued due to death of Patient
  value110504,

  /// Display: Patient refused to continue procedure
  /// Definition: Procedure discontinued due to patient refusal to continue procedure
  value110505,

  /// Display: Patient taken for treatment or surgery
  /// Definition: Procedure discontinued due to patient being taken for treatment or surgery
  value110506,

  /// Display: Patient did not arrive
  /// Definition: Patient did not arrive for procedure
  value110507,

  /// Display: Patient pregnant
  /// Definition: Procedure discontinued due to patient pregnancy (reported or determined)
  value110508,

  /// Display: Change of procedure for correct charging
  /// Definition: Procedure discontinued to restart with new procedure code for correct charging
  value110509,

  /// Display: Duplicate order
  /// Definition: Procedure discontinued due to duplicate orders received for same procedure
  value110510,

  /// Display: Nursing unit cancel
  /// Definition: Procedure order canceled by nursing unit
  value110511,

  /// Display: Incorrect side ordered
  /// Definition: Procedure discontinued due to incorrect side (laterality) being ordered
  value110512,

  /// Display: Discontinued for unspecified reason
  /// Definition: Procedure discontinued for unspecified reason
  value110513,

  /// Display: Incorrect worklist entry selected
  /// Definition: Procedure discontinued due to incorrect patient or procedure step selected from modality worklist
  value110514,

  /// Display: Patient condition prevented continuing
  /// Definition: Patient condition prevented continuation of procedure
  value110515,

  /// Display: Equipment change
  /// Definition: Procedure step is discontinued to change to other equipment or modality
  value110516,

  /// Display: Patient Movement
  /// Definition: A movement of the patient affecting test quality
  value110518,

  /// Display: Operator Error
  /// Definition: An error of the operator affecting test quality
  value110519,

  /// Display: Objects incorrectly formatted
  /// Definition: One or more of the objects is malformed
  value110521,

  /// Display: Object Types not supported
  /// Definition: Receiving System is unable to accept the object type
  value110522,

  /// Display: Object Set incomplete
  /// Definition: One or more objects associated with the object set is missing
  value110523,

  /// Display: Media Failure
  /// Definition: The contents of the Media could not be accessed properly
  value110524,

  /// Display: Resource pre-empted
  /// Definition: Procedure discontinued due to necessary equipment, staff or other resource becoming (temporarily) unavailable to the procedure
  value110526,

  /// Display: Resource inadequate
  /// Definition: Procedure discontinued due to necessary equipment, staff or other resource being inadequate to complete the procedure
  value110527,

  /// Display: Discontinued Procedure Step rescheduled
  /// Definition: A new Procedure Step has been scheduled to replace the Discontinued Procedure Step
  value110528,

  /// Display: Discontinued Procedure Step rescheduling recommended
  /// Definition: It is recommended that a new Procedure Step be scheduled to replace the Discontinued Procedure Step
  value110529,

  /// Display: Ventral Diencephalon
  /// Definition: Ventral structures of the diencephalon that cannot readily be distinguished on MR imaging, including the hypothalamus, mammillary body, subthalamic nuclei, substantia nigra, red nucleus, lateral geniculate nucleus, medial geniculate nucleus, zona incerta, cerebral peduncle, lenticular fasciculus, medial lemniscus, and optic tract. See http://neuromorphometrics.org:8080/Seg/html/segmentation/ventral%20diencephalon.html
  value110700,

  /// Display: White Matter T1 Hypointensity
  /// Definition: Area(s) of reduced intensity on T1 weighted images relative to the surrounding white matter. These may be indicative of age-related or neurodegenerative white matter lesions, and may be co-located with areas of white matter T2 hyperintensity, but the concept is specifically confined to the MR appearance on T1 weighted images
  value110701,

  /// Display: White Matter T2 Hyperintensity
  /// Definition: Area(s) of increased intensity on T2 weighted images relative to the surrounding white matter. These may be indicative of age-related or neurodegenerative white matter lesions, and may be co-located with areas of white matter T1 hypointensity, but the concept is specifically confined to the MR appearance on T2 weighted images
  value110702,

  /// Display: superior longitudinal fasciculus I
  /// Definition: The dorsal component of the SLF originating from the medial and dorsal parietal cortex and ending in the dorsal and medial part of the frontal lobe. See Makris N, et al. "Segmentation of Subcomponents within the Superior Longitudinal Fascicle in Humans: A Quantitative, In Vivo, DT-MRI Study." Cerebral Cortex 15, no. 6 (June 1, 2005): 854-69. doi:10.1093/cercor/bhh186
  value110703,

  /// Display: superior longitudinal fasciculus II
  /// Definition: The major component of the SLF, derived from the caudal-inferior parietal region corresponding to the angular gyrus in the human and terminating within the dorsolateral frontal region. See Makris N, et al. "Segmentation of Subcomponents within the Superior Longitudinal Fascicle in Humans: A Quantitative, In Vivo, DT-MRI Study." Cerebral Cortex 15, no. 6 (June 1, 2005): 854-69. doi:10.1093/cercor/bhh186
  value110704,

  /// Display: superior longitudinal fasciculus III
  /// Definition: The ventral component of the SLF, originating from the supramarginal gyrus and terminating predominantly in the ventral premotor and prefrontal areas. See Makris N, et al. "Segmentation of Subcomponents within the Superior Longitudinal Fascicle in Humans: A Quantitative, In Vivo, DT-MRI Study." Cerebral Cortex 15, no. 6 (June 1, 2005): 854-69. doi:10.1093/cercor/bhh186
  value110705,

  /// Display: Perilesional White Matter
  /// Definition: White matter that surrounds a lesion of interest; e.g. to identify the otherwise unclassified white matter that surrounds a tumor to be surgically resected
  value110706,

  /// Display: Spin Tagging Perfusion MR Signal Intensity
  /// Definition: Signal intensity of a Spin tagging Perfusion MR image. Spin tagging is a technique for the measurement of blood perfusion, based on magnetically labeled arterial blood water as an endogenous tracer
  value110800,

  /// Display: Contrast Agent Angio MR Signal Intensity
  /// Definition: Signal intensity of a Contrast Agent Angio MR image
  value110801,

  /// Display: Time Of Flight Angio MR Signal Intensity
  /// Definition: Signal intensity of a Time-of-flight (TOF) MR image. Time-of-flight (TOF) is based on the phenomenon of flow-related enhancement of spins entering into an imaging slice. As a result of being unsaturated, these spins give more signal that surrounding stationary spins
  value110802,

  /// Display: Proton Density Weighted MR Signal Intensity
  /// Definition: Signal intensity of a Proton Density Weighted MR image. All MR images have intensity proportional to proton density. Images with very little T1 or T2 weighting are called 'PD-weighted'
  value110803,

  /// Display: T1 Weighted MR Signal Intensity
  /// Definition: Signal intensity of T1 Weighted MR image. A T1 Weighted MR image is created typically by using short TE and TR times
  value110804,

  /// Display: T2 Weighted MR Signal Intensity
  /// Definition: Signal intensity of a T2 Weighted MR image. T2 Weighted image contrast state is approached by imaging with a TR long compared to tissue T1 (to reduce T1 contribution to image contrast) and a TE between the longest and shortest tissue T2s of interest
  value110805,

  /// Display: T2* Weighted MR Signal Intensity
  /// Definition: Signal intensity of a T2* Weighted MR image. The T2* phenomenon results from molecular interactions (spin spin relaxation) and local magnetic field non-uniformities, which cause the protons to precess at slightly different frequencies
  value110806,

  /// Display: Field Map MR Signal Intensity
  /// Definition: Signal intensity of a Field Map MR image. A Field Map MR image provides a direct measure of the B 0 inhomogeneity at each point in the image
  value110807,

  /// Display: Fractional Anisotropy
  /// Definition: Coefficient reflecting the fractional anisotropy of the tissues, derived from a diffusion weighted MR image. Fractional anisotropy is proportional to the square root of the variance of the Eigen values divided by the square root of the sum of the squares of the Eigen values
  value110808,

  /// Display: Relative Anisotropy
  /// Definition: Coefficient reflecting the relative anisotropy of the tissues, derived from a diffusion weighted MR image
  value110809,

  /// Display: Volumetric Diffusion Dxx Component
  /// Definition: Dxx Component of the diffusion tensor, quantifying the molecular mobility along the X axis
  value110810,

  /// Display: Volumetric Diffusion Dxy Component
  /// Definition: Dxy Component of the diffusion tensor, quantifying the correlation of molecular displacements in the X and Y directions
  value110811,

  /// Display: Volumetric Diffusion Dxz Component
  /// Definition: Dxz Component of the diffusion tensor, quantifying the correlation of molecular displacements in the X and Z directions
  value110812,

  /// Display: Volumetric Diffusion Dyy Component
  /// Definition: Dyy Component of the diffusion tensor, quantifying the molecular mobility along the Y axis
  value110813,

  /// Display: Volumetric Diffusion Dyz Component
  /// Definition: Dyz Component of the diffusion tensor, quantifying the correlation of molecular displacements in the Y and Z directions
  value110814,

  /// Display: Volumetric Diffusion Dzz Component
  /// Definition: Dzz Component of the diffusion tensor, quantifying the molecular mobility along the Z axis
  value110815,

  /// Display: T1 Weighted Dynamic Contrast Enhanced MR Signal Intensity
  /// Definition: Signal intensity of a T1 Weighted Dynamic Contrast Enhanced MR image. A T1 Weighted Dynamic Contrast Enhanced MR image reflects the dynamics of diffusion of the exogenous contrast media from the blood pool into the extra vascular extracellular space (EES) of the brain at a rate determined by the blood flow to the tissue, the permeability of the Brain Blood Barrier (BBB), and the surface area of the perfusing vessels
  value110816,

  /// Display: T2 Weighted Dynamic Contrast Enhanced MR Signal Intensity
  /// Definition: Signal intensity of a T2 Weighted Dynamic Contrast Enhanced MR image. A T2 Weighted Dynamic Contrast Enhanced MR image reflects the T2 of tissue decrease as the Gd contrast agent bolus passes through the brain
  value110817,

  /// Display: T2* Weighted Dynamic Contrast Enhanced MR Signal Intensity
  /// Definition: Signal intensity of a T2* Weighted Dynamic Contrast Enhanced MR image. A T2* Weighted Dynamic Contrast Enhanced MR image reflects the T2* of tissue decrease as the Gd contrast agent bolus passes through the brain
  value110818,

  /// Display: Blood Oxygenation Level
  /// Definition: Signal intensity of a Blood Oxygenation Level image. BOLD imaging is sensitive to blood oxygenation (but also to cerebral blood flow and volume). This modality is essentially used for detecting brain activation (functional MR)
  value110819,

  /// Display: Nuclear Medicine Projection Activity
  /// Definition: Accumulated decay event counts in a nuclear medicine projection image
  value110820,

  /// Display: Nuclear Medicine Tomographic Activity
  /// Definition: Accumulated decay event counts in a Nuclear Medicine Tomographic image (including PET)
  value110821,

  /// Display: Spatial Displacement X Component
  /// Definition: Spatial Displacement along axis X of a non-linear deformable spatial registration image. The X axis is defined in reference to the patient's orientation, and is increasing to the left hand side of the patient
  value110822,

  /// Display: Spatial Displacement Y Component
  /// Definition: Spatial Displacement along axis Y of a non-linear deformable spatial registration image. The Y axis is defined in reference to the patient's orientation, and is increasing to the posterior side of the patient
  value110823,

  /// Display: Spatial Displacement Z Component
  /// Definition: Spatial Displacement along axis Z of a non-linear deformable spatial registration image. The Z axis is defined in reference to the patient's orientation, and is increasing toward the head of the patient
  value110824,

  /// Display: Hemodynamic Resistance
  /// Definition: Measured resistance to the flow of blood; e.g. through the vasculature or through a heart value
  value110825,

  /// Display: Indexed Hemodynamic Resistance
  /// Definition: Measured resistance to the flow of blood; e.g. through the vasculature or through a heart value, normalized to a particular indexed scale
  value110826,

  /// Display: Tissue Velocity
  /// Definition: Velocity of tissue based on Doppler measurements
  value110827,

  /// Display: Flow Velocity
  /// Definition: Velocity of blood flow based on Doppler measurements
  value110828,

  /// Display: Flow Variance
  /// Definition: Statistical variance of blood velocity relative to mean
  value110829,

  /// Display: Elasticity
  /// Definition: Scalar value related to the elastic properties of the tissue
  value110830,

  /// Display: Perfusion
  /// Definition: Scalar value related to the volume of blood perfusing into tissue
  value110831,

  /// Display: Speed of sound
  /// Definition: Speed of sound in tissue
  value110832,

  /// Display: Ultrasound Attenuation
  /// Definition: Reduction in strength of ultrasound signal as the wave
  value110833,

  /// Display: RGB R Component
  /// Definition: Red component of a true color image (RGB)
  value110834,

  /// Display: RGB G Component
  /// Definition: Green component of a true color image (RGB)
  value110835,

  /// Display: RGB B Component
  /// Definition: Blue component of a true color image (RGB)
  value110836,

  /// Display: YBR FULL Y Component
  /// Definition: Y (Luminance) component of a YBR FULL image, as defined in JPEG 2000
  value110837,

  /// Display: YBR FULL CB Component
  /// Definition: CB (Blue chrominance) component of a YBR FULL image, as defined in JPEG 2000
  value110838,

  /// Display: YBR FULL CR Component
  /// Definition: CR (Red chrominance) component of a YBR FULL image, as defined in JPEG 2000
  value110839,

  /// Display: YBR PARTIAL Y Component
  /// Definition: Y (Luminance) component of a YBR PARTIAL image, as defined in JPEG 2000
  value110840,

  /// Display: YBR PARTIAL CB Component
  /// Definition: CB (Blue chrominance) component of a YBR PARTIAL image, as defined in JPEG 2000
  value110841,

  /// Display: YBR PARTIAL CR Component
  /// Definition: CR (Red chrominance) component of a YBR PARTIAL image, as defined in JPEG 2000
  value110842,

  /// Display: YBR ICT Y Component
  /// Definition: Y (Luminance) component of a YBR ICT image (Irreversible Color Transform), as defined in JPEG 2000
  value110843,

  /// Display: YBR ICT CB Component
  /// Definition: CB (Blue chrominance) component of a YBR ICT image (Irreversible Color Transform), as defined in JPEG 2000
  value110844,

  /// Display: YBR ICT CR Component
  /// Definition: CR (Red chrominance) component of a YBR ICT image (Irreversible Color Transform), as defined in JPEG 2000
  value110845,

  /// Display: YBR RCT Y Component
  /// Definition: Y (Luminance) component of a YBR RCT image (Reversible Color Transform), as defined in JPEG 2000
  value110846,

  /// Display: YBR RCT CB Component
  /// Definition: CB (Blue chrominance) component of a YBR RCT image (Reversible Color Transform), as defined in JPEG 2000
  value110847,

  /// Display: YBR RCT CR Component
  /// Definition: CR (Red chrominance) component of a YBR RCT image (Reversible Color Transform), as defined in JPEG 2000
  value110848,

  /// Display: Echogenicity
  /// Definition: The ability of a material to create an ultrasound return echo
  value110849,

  /// Display: X-Ray Attenuation
  /// Definition: Decrease in the number of photons in an X-Ray beam due to interactions with the atoms of a material substance. Attenuation is due primarily to two processes, absorption and scattering
  value110850,

  /// Display: X-Ray Attenuation Coefficient
  /// Definition: Coefficient that describes the fraction of a beam of X-Rays or gamma rays that is absorbed or scattered per unit thickness of the absorber. This value basically accounts for the number of atoms in a cubic cm volume of material and the probability of a photon being scattered or absorbed from the nucleus or an electron of one of these atoms
  value110851,

  /// Display: MR signal intensity
  /// Definition: Signal intensity of an MR image, not otherwise specified
  value110852,

  /// Display: Binary Segmentation
  /// Definition: Binary value denoting that the segmented property is present
  value110853,

  /// Display: Fractional Probabilistic Segmentation
  /// Definition: Probability, defined as a percentage, that the segmented property occupies the spatial area defined by the voxel
  value110854,

  /// Display: Fractional Occupancy Segmentation
  /// Definition: Percentage of the voxel area occupied by the segmented property
  value110855,

  /// Display: Linear Displacement
  /// Definition: Spatial dimension, denoting a linear displacement
  value110856,

  /// Display: Photon Energy
  /// Definition: Dimension denoting the energy (frequency or wavelength) of photons
  value110857,

  /// Display: Time
  /// Definition: Dimension used to sequence events, to compare the duration of events and the intervals between events
  value110858,

  /// Display: Angle
  /// Definition: Spatial dimension, denoting an angle
  value110859,

  /// Display: Left-Right Axis
  /// Definition: A spatial dimension axis running along a line between the patient's left and right side
  value110860,

  /// Display: Head-Foot Axis
  /// Definition: A spatial dimension axis running along a line between the patient's head and foot
  value110861,

  /// Display: Anterior-Posterior Axis
  /// Definition: A spatial dimension axis running along a line between the patient's anterior and posterior sides
  value110862,

  /// Display: Apex-Base Axis
  /// Definition: A spatial dimension axis running along a line between the apex and base of an organ, object, or chamber
  value110863,

  /// Display: Anterior-Inferior Axis
  /// Definition: A spatial dimension axis running along a line between the anterior and inferior sides of an organ, object, or chamber
  value110864,

  /// Display: Septum-Wall Axis
  /// Definition: A spatial dimension axis running along a line between the septum and wall of a chamber
  value110865,

  /// Display: Right To Left
  /// Definition: Orientation of a spatial dimension where increasing values run from the right to the left side of the patient
  value110866,

  /// Display: Left To Right
  /// Definition: Orientation of a spatial dimension where increasing values run from the left to the right side of the patient
  value110867,

  /// Display: Head To Foot
  /// Definition: Orientation of a spatial dimension where increasing values run from the head to the foot of the patient
  value110868,

  /// Display: Foot To Head
  /// Definition: Orientation of a spatial dimension where increasing values run from the foot to the head of the patient
  value110869,

  /// Display: Anterior To Posterior
  /// Definition: Orientation of a spatial dimension where increasing values run from the anterior to the posterior side of the patient
  value110870,

  /// Display: Posterior To Anterior
  /// Definition: Orientation of a spatial dimension where increasing values run from the posterior to the anterior side of the patient
  value110871,

  /// Display: Apex To Base
  /// Definition: Orientation of a spatial dimension where increasing values run from the apex to the base
  value110872,

  /// Display: Base To Apex
  /// Definition: Orientation of a spatial dimension where increasing values run from the base to the apex
  value110873,

  /// Display: Anterior To Inferior
  /// Definition: Orientation of a spatial dimension where increasing values run from the anterior to the inferior
  value110874,

  /// Display: Inferior To Anterior
  /// Definition: Orientation of a spatial dimension where increasing values run from the inferior to the anterior
  value110875,

  /// Display: Septum To Wall
  /// Definition: Orientation of a spatial dimension where increasing values run from the septum of a chamber to the opposite wall
  value110876,

  /// Display: Wall To Septum
  /// Definition: Orientation of a spatial dimension where increasing values run from the opposite wall to the septum of a chamber
  value110877,

  /// Display: Image Position (Patient) X
  /// Definition: The x coordinate of the upper left hand corner (center of the first voxel transmitted) of the image, with respect to the patient-based coordinate system
  value110901,

  /// Display: Image Position (Patient) Y
  /// Definition: The y coordinate of the upper left hand corner (center of the first voxel transmitted) of the image, with respect to the patient-based coordinate system
  value110902,

  /// Display: Image Position (Patient) Z
  /// Definition: The z coordinate of the upper left hand corner (center of the first voxel transmitted) of the image, with respect to the patient-based coordinate system
  value110903,

  /// Display: Image Orientation (Patient) Row X
  /// Definition: The x value of the first row direction cosine with respect to the patient, with respect to the patient-based coordinate system
  value110904,

  /// Display: Image Orientation (Patient) Row Y
  /// Definition: The y value of the first row direction cosine with respect to the patient, with respect to the patient-based coordinate system
  value110905,

  /// Display: Image Orientation (Patient) Row Z
  /// Definition: The z value of the first row direction cosine with respect to the patient, with respect to the patient-based coordinate system
  value110906,

  /// Display: Image Orientation (Patient) Column X
  /// Definition: The x value of the first column direction cosine with respect to the patient, with respect to the patient-based coordinate system
  value110907,

  /// Display: Image Orientation (Patient) Column Y
  /// Definition: The y value of the first column direction cosine with respect to the patient, with respect to the patient-based coordinate system
  value110908,

  /// Display: Image Orientation (Patient) Column Z
  /// Definition: The z value of the first column direction cosine with respect to the patient, with respect to the patient-based coordinate system
  value110909,

  /// Display: Pixel Data Rows
  /// Definition: Number of rows in the pixel data of the image
  value110910,

  /// Display: Pixel Data Columns
  /// Definition: Number of columns in the pixel data of the image
  value110911,

  /// Display: Algorithm Name
  /// Definition: The name assigned by a manufacturer to a specific software algorithm
  value111001,

  /// Display: Algorithm Parameters
  /// Definition: The input parameters used by a manufacturer to configure the behavior of a specific software algorithm
  value111002,

  /// Display: Algorithm Version
  /// Definition: The software version identifier assigned by a manufacturer to a specific software algorithm
  value111003,

  /// Display: Analysis Performed
  /// Definition: The type of correlation applied to detection results; e.g. temporal, spatial
  value111004,

  /// Display: Assessment Category
  /// Definition: Assignment of intermediate or overall interpretation results to a general category
  value111005,

  /// Display: Breast composition
  /// Definition: Assessment of annotating tissues in breast; generally including fatty, mixed or dense
  value111006,

  /// Display: Breast Outline including Pectoral Muscle Tissue
  /// Definition: Purpose of reference for an SCOORD content item that is an outline of the breast that includes the pectoral muscle tissue
  value111007,

  /// Display: Calcification Distribution
  /// Definition: The type of distribution associated with detected calcifications
  value111008,

  /// Display: Calcification Type
  /// Definition: Identification of the morphology of detected calcifications
  value111009,

  /// Display: Center
  /// Definition: Purpose of reference for an SCOORD content item that identifies the central point of a finding or feature
  value111010,

  /// Display: Certainty of Feature
  /// Definition: The likelihood that the feature analyzed is in fact the type of feature identified
  value111011,

  /// Display: Certainty of Finding
  /// Definition: The likelihood that the finding detected is in fact the type of finding identified
  value111012,

  /// Display: Certainty of Impression
  /// Definition: The certainty that a device places on an impression, where 0 equals no certainty and 100 equals certainty
  value111013,

  /// Display: Clockface or region
  /// Definition: A location identifier based on clock-face numbering or anatomic sub-region
  value111014,

  /// Display: Composite Feature
  /// Definition: An item that is an inferred correlation relating two or more individual findings or features
  value111015,

  /// Display: Composite type
  /// Definition: The inferred relationship between the findings or features making up a composite feature
  value111016,

  /// Display: CAD Processing and Findings Summary
  /// Definition: General assessment of whether or not CAD processing was successful, and whether any findings resulted
  value111017,

  /// Display: Content Date
  /// Definition: The date the data creation started
  value111018,

  /// Display: Content Time
  /// Definition: The time the data creation started
  value111019,

  /// Display: Depth
  /// Definition: A location identifier based on a feature's inferred distance from the surface of the associated anatomy
  value111020,

  /// Display: Description of Change
  /// Definition: A textual description of the change that occurred over time in a qualitative characteristic of a feature
  value111021,

  /// Display: Detection Performed
  /// Definition: The type of finding sought after by a specific algorithm applied to one image
  value111022,

  /// Display: Differential Diagnosis/Impression
  /// Definition: A general change that occurred within an imaged area between a prior imaging procedure and the current imaging procedure
  value111023,

  /// Display: Failed Analyses
  /// Definition: A group of analysis algorithms that were attempted, but failed
  value111024,

  /// Display: Failed Detections
  /// Definition: A group of detection algorithms that were attempted, but failed
  value111025,

  /// Display: Horizontal Pixel Spacing
  /// Definition: For projection radiography, the horizontal physical distance measured at the front plane of an Image Receptor housing between the center of each pixel. For tomographic images, the horizontal physical distance in the patient between the center of each pixel
  value111026,

  /// Display: Image Laterality
  /// Definition: Laterality of (possibly paired) body part contained in an image
  value111027,

  /// Display: Image Library
  /// Definition: A container that references all image data used as evidence to produce a report
  value111028,

  /// Display: Image Quality Rating
  /// Definition: A numeric value in the range 0 to 100, inclusive, where 0 is worst quality and 100 is best quality
  value111029,

  /// Display: Image Region
  /// Definition: Purpose of reference for an SCOORD content item that identifies a specific region of interest within an image
  value111030,

  /// Display: Image View
  /// Definition: The projection of the anatomic region of interest on an image receptor
  value111031,

  /// Display: Image View Modifier
  /// Definition: Modifier for Image View
  value111032,

  /// Display: Impression Description
  /// Definition: Free-form text describing the overall or an individual impression
  value111033,

  /// Display: Individual Impression/Recommendation
  /// Definition: A container for a group of related results from interpretation of one or more images and associated clinical information
  value111034,

  /// Display: Lesion Density
  /// Definition: The X-Ray attenuation of a lesion relative to the expected attenuation of an equal volume of fibroglandular breast tissue
  value111035,

  /// Display: Mammography CAD Report
  /// Definition: A structured report containing the results of computer-aided detection or diagnosis applied to breast imaging and associated clinical information
  value111036,

  /// Display: Margins
  /// Definition: The characteristic of the boundary, edges or border of a detected lesion
  value111037,

  /// Display: Number of calcifications
  /// Definition: The quantity of calcifications detected within an identified group or cluster
  value111038,

  /// Display: Object type
  /// Definition: A non-lesion object identified within one or more images
  value111039,

  /// Display: Original Source
  /// Definition: Purpose of reference for a COMPOSITE content item that identifies it as the original source of evidence for another content item in the report
  value111040,

  /// Display: Outline
  /// Definition: Purpose of reference for an SCOORD content item that identifies the outline or bounding region of a finding or feature
  value111041,

  /// Display: Pathology
  /// Definition: The inferred type of disease associated with an identified feature
  value111042,

  /// Display: Patient Orientation Column
  /// Definition: The patient orientation relative to the image plane, specified by a value that designates the anatomical direction of the positive column axis (top to bottom)
  value111043,

  /// Display: Patient Orientation Row
  /// Definition: The patient orientation relative to the image plane, specified by a value that designates the anatomical direction of the positive row axis (left to right)
  value111044,

  /// Display: Pectoral Muscle Outline
  /// Definition: Purpose of reference for an SCOORD content item that is an outline of the pectoral muscle tissue only
  value111045,

  /// Display: Percent Fibroglandular Tissue
  /// Definition: Percent of breast area that is mammographically dense, excluding pectoralis muscle
  value111046,

  /// Display: Probability of cancer
  /// Definition: The likelihood that an identified finding or feature is cancerous
  value111047,

  /// Display: Quadrant location
  /// Definition: A location identifier based on the division of an area into four regions
  value111048,

  /// Display: Qualitative Difference
  /// Definition: A qualitative characteristic of a feature that has changed over time
  value111049,

  /// Display: Quality Assessment
  /// Definition: The effect of the quality of an image on its usability
  value111050,

  /// Display: Quality Control Standard
  /// Definition: The quality control standard used to make a quality assessment
  value111051,

  /// Display: Quality Finding
  /// Definition: A specific quality related deficiency detected within an image
  value111052,

  /// Display: Recommended Follow-up
  /// Definition: Recommended type of follow-up to an imaging procedure, based on interpreted results
  value111053,

  /// Display: Recommended Follow-up Date
  /// Definition: Recommended follow-up date to an imaging procedure, based on interpreted results
  value111054,

  /// Display: Recommended Follow-up Interval
  /// Definition: Recommended follow-up interval to an imaging procedure, based on interpreted results
  value111055,

  /// Display: Rendering Intent
  /// Definition: The recommendation of the producer of a content item regarding presentation of the content item by recipients of the report
  value111056,

  /// Display: Scope of Feature
  /// Definition: An indication of how widespread the detection of a feature is within the analyzed image data set
  value111057,

  /// Display: Selected Region Description
  /// Definition: A textual description of the contents of a selected region identified within an image
  value111058,

  /// Display: Single Image Finding
  /// Definition: An item that was detected on one image
  value111059,

  /// Display: Study Date
  /// Definition: Date on which the acquisition of the study information was started
  value111060,

  /// Display: Study Time
  /// Definition: Time at which the acquisition of the study information was started
  value111061,

  /// Display: Successful Analyses
  /// Definition: A group of analysis algorithms that were attempted and completed successfully
  value111062,

  /// Display: Successful Detections
  /// Definition: A group of detection algorithms that were attempted and completed successfully
  value111063,

  /// Display: Summary of Detections
  /// Definition: An overall indication of whether the CAD detection algorithms applied were completed successfully
  value111064,

  /// Display: Summary of Analyses
  /// Definition: An overall indication of whether the CAD analysis algorithms applied were completed successfully
  value111065,

  /// Display: Vertical Pixel Spacing
  /// Definition: For projection radiography, the vertical physical distance measured at the front plane of an Image Receptor housing between the center of each pixel. For tomographic images, the vertical physical distance in the patient between the center of each pixel
  value111066,

  /// Display: Crosstable
  /// Definition: A radiographic projection that has been with the patient lying on a table with the X-Ray source on one side of the table and the detector on the other; e.g. may describe a cross-table cervical spine, chest or pelvis X-Ray image
  value111069,

  /// Display: CAD Operating Point
  /// Definition: One of a number of discrete points on the Receiver-Operator Characteristics (ROC) curve that reflects the expected sensitivity and specificity of a CAD algorithm, where zero indicates the highest specificity, lowest sensitivity operating point. The value should not exceed the Maximum CAD Operating Point
  value111071,

  /// Display: Maximum CAD Operating Point
  /// Definition: The maximum value of CAD Operating Point for the specific CAD algorithm used
  value111072,

  /// Display: CAD Operating Point Description
  /// Definition: The intended interpretation of a CAD Operating Point
  value111081,

  /// Display: False Markers per Image
  /// Definition: The number of false CAD markers per image. Correlates to inverse of Image Specificity
  value111086,

  /// Display: False Markers per Case
  /// Definition: The number of false markers per collection of images that are CAD processed as a group. Correlates to inverse of Case Specificity
  value111087,

  /// Display: Case Sensitivity
  /// Definition: The percentage of cancers that should be detected by a CAD algorithm where CAD marks the cancers in at least one view
  value111088,

  /// Display: Lesion Sensitivity
  /// Definition: The percentage of cancers that should be detected by a CAD algorithm where CAD marks the cancers in each view
  value111089,

  /// Display: Case Specificity
  /// Definition: The percentage of cases (collections of images CAD processed as a group) without cancer that have no CAD findings whatsoever. Correlates to inverse of False Markers per Case
  value111090,

  /// Display: Image Specificity
  /// Definition: The percentage of images without cancer that have no CAD findings whatsoever. Correlates to inverse of False Markers per Image
  value111091,

  /// Display: Recommended CAD Operating Point
  /// Definition: The CAD operating point that is recommended for initial display by the creator of the structured report
  value111092,

  /// Display: CAD Operating Point Table
  /// Definition: A list of CAD operating points including their corresponding characteristics
  value111093,

  /// Display: Selected region
  /// Definition: A specific area of interest noted within an image
  value111099,

  /// Display: Breast geometry
  /// Definition: The surface shape of all or a portion of breast related anatomy
  value111100,

  /// Display: Image Quality
  /// Definition: Image quality incorporates the following clinical image evaluation parameters: assessment of positioning, compression, artifacts, exposure, contrast, sharpness, and labeling
  value111101,

  /// Display: Non-lesion
  /// Definition: A finding or feature that is identified as a non-anatomic foreign object
  value111102,

  /// Display: Density
  /// Definition: A space-occupying lesion identified in a single image or projection
  value111103,

  /// Display: Individual Calcification
  /// Definition: A single identified calcification
  value111104,

  /// Display: Calcification Cluster
  /// Definition: Multiple calcifications identified as occupying a small area of tissue (less than 2 cc)
  value111105,

  /// Display: Cooper's ligament changes
  /// Definition: Straightening or thickening of Cooper's ligaments
  value111111,

  /// Display: Mass in the skin
  /// Definition: An abnormality noted at imaging within the dermis of the breast
  value111112,

  /// Display: Mass on the skin
  /// Definition: An abnormality noted at imaging on the epidermis of the breast
  value111113,

  /// Display: Post Procedure Mammograms for Marker Placement
  /// Definition: An assessment category to indicate that images have been acquired to assess marker placement following a breast interventional procedure
  value111120,

  /// Display: Follow-up post biopsy as directed by clinician
  /// Definition: An indication that the patient should seek post procedural follow-up directives from a clinical health care provider
  value111121,

  /// Display: Known biopsy proven malignancy - take appropriate action
  /// Definition: A recommendation on a patient with known cancer to take steps appropriate to the diagnosis
  value111122,

  /// Display: Marker placement
  /// Definition: Positioning of a radiopaque marker
  value111123,

  /// Display: Personal history of breast cancer with mastectomy
  /// Definition: Patient has previous diagnosis of breast cancer resulting in mastectomy
  value111124,

  /// Display: Known biopsy proven malignancy
  /// Definition: Patient has had biopsy containing proven malignancy
  value111125,

  /// Display: Image detected mass
  /// Definition: Patient has a finding of mass reported on a prior imaging exam
  value111126,

  /// Display: Targeted
  /// Definition: A breast imaging procedure performed on a specific area of the breast
  value111127,

  /// Display: Survey
  /// Definition: A breast imaging procedure performed on the entire breast
  value111128,

  /// Display: Clustered microcysts
  /// Definition: A cluster of tiny anechoic foci each smaller than 2-3 mm in diameter with thin (less than 0.5 mm) intervening septations and no discrete solid components
  value111129,

  /// Display: Complicated cyst
  /// Definition: A fluid filled mass most commonly characterized by homogeneous low-level internal echoes on ultrasound
  value111130,

  /// Display: Additional projections
  /// Definition: Views not inclusive of MLO and CC (BI-RADS®)
  value111135,

  /// Display: Spot magnification view(s)
  /// Definition: A spot or coned down compression of the breast providing a reduction in the thickness and a magnification of the localized area of interest and improved separation of breast tissue
  value111136,

  /// Display: Ultrasound
  /// Definition: Use of sound waves to visualize muscles, tendons, and many internal organs, to capture their size, structure and any pathological lesions with real time tomographic images.
  value111137,

  /// Display: Old films for comparison
  /// Definition: Obtain previous mammography studies to compare to present study
  value111138,

  /// Display: Ductography
  /// Definition: A medical procedure used for the sampling of mammary duct tissue
  value111139,

  /// Display: Normal interval follow-up
  /// Definition: Follow up study at 12 months for women 40 years of age having a prior negative study and no mitigating risk factors for breast cancer
  value111140,

  /// Display: Any decision to biopsy should be based on clinical assessment
  /// Definition: Any decision to perform tissue acquisition should be based on clinical assessment
  value111141,

  /// Display: Follow-up at short interval (1-11 months)
  /// Definition: Follow-up at short interval (1-11 months)
  value111142,

  /// Display: Biopsy should be considered
  /// Definition: Tissue acquisition should be considered
  value111143,

  /// Display: Needle localization and biopsy
  /// Definition: Breast tissue acquisition following the identification of an area of concern with the placement of a needle or needle-wire assembly
  value111144,

  /// Display: Histology using core biopsy
  /// Definition: Pathologic analysis of breast tissue and lesions using core tissue samples
  value111145,

  /// Display: Suggestive of malignancy - take appropriate action
  /// Definition: Lesions that do not have the characteristic morphologies of breast cancer but have a definite probability of being malignant. There is a sufficient concern to urge a biopsy
  value111146,

  /// Display: Cytologic analysis
  /// Definition: Cellular analysis of specimen
  value111147,

  /// Display: Biopsy should be strongly considered
  /// Definition: Tissue acquisition should be strongly considered
  value111148,

  /// Display: Highly suggestive of malignancy - take appropriate action
  /// Definition: Lesions have a high probability of being cancer, which require additional action
  value111149,

  /// Display: Presentation Required: Rendering device is expected to present
  /// Definition: The producer of a report intends for a recipient of the report to present or display the associated content item
  value111150,

  /// Display: Presentation Optional: Rendering device may present
  /// Definition: The producer of a report considers the presentation or display of the associated content item by a recipient to be optional
  value111151,

  /// Display: Not for Presentation: Rendering device expected not to present
  /// Definition: The producer of a report intends for a recipient of the report NOT to present or display the associated content item
  value111152,

  /// Display: Target content items are related temporally
  /// Definition: The associated content items are identified as being the same finding or feature at different points in time
  value111153,

  /// Display: Target content items are related spatially
  /// Definition: The associated content items are identified as being the same finding or feature on different projections taken at the same point in time
  value111154,

  /// Display: Target content items are related contra-laterally
  /// Definition: The associated content items are identified as being related side-to-side
  value111155,

  /// Display: Feature detected on the only image
  /// Definition: There is one image in the interpreted data set
  value111156,

  /// Display: Feature detected on only one of the images
  /// Definition: There is more than one image of the same modality in the interpreted data set
  value111157,

  /// Display: Feature detected on multiple images
  /// Definition: There is more than one image of the same modality in the interpreted data set
  value111158,

  /// Display: Feature detected on images from multiple modalities
  /// Definition: The interpreted data set contains images from multiple modalities
  value111159,

  /// Display: Scar tissue
  /// Definition: The fibrous tissue replacing normal tissues destroyed by disease or injury
  value111168,

  /// Display: J Wire
  /// Definition: A medical appliance used for localization of non palpable breast lesions to insure that the proper area is removed in a surgical biopsy
  value111170,

  /// Display: Pacemaker
  /// Definition: A medical appliance used for regulating cardiac rhythms
  value111171,

  /// Display: Paddle
  /// Definition: A compression device used for obtaining mammographic images
  value111172,

  /// Display: Collimator
  /// Definition: A device used for restricting an X-Ray beam
  value111173,

  /// Display: ID Plate
  /// Definition: An area designated on a radiographic film for facility and patient ID information
  value111174,

  /// Display: Other Marker
  /// Definition: Site specific markers
  value111175,

  /// Display: Unspecified
  /// Definition: The value of the concept is not specified
  value111176,

  /// Display: View and Laterality Marker is missing
  /// Definition: Image quality deficiency according to MQSA
  value111177,

  /// Display: View and Laterality Marker does not have both view and laterality
  /// Definition: Image quality deficiency according to MQCM
  value111178,

  /// Display: View and Laterality Marker does not have approved codes
  /// Definition: Image quality deficiency according to MQCM
  value111179,

  /// Display: View and Laterality Marker is not near the axilla
  /// Definition: Image quality deficiency according to MQCM
  value111180,

  /// Display: View and Laterality Marker overlaps breast tissue
  /// Definition: Image quality deficiency according to MQCM
  value111181,

  /// Display: View and Laterality Marker is partially obscured
  /// Definition: Image quality deficiency according to MQCM
  value111182,

  /// Display: View and Laterality Marker is incorrect
  /// Definition: Image quality deficiency
  value111183,

  /// Display: View and Laterality Marker is off image
  /// Definition: Image quality deficiency
  value111184,

  /// Display: Flash is not near edge of film
  /// Definition: Image quality deficiency according to MQCM
  value111185,

  /// Display: Flash is illigible, does not fit, or is lopsided
  /// Definition: Image quality deficiency according to MQSA
  value111186,

  /// Display: Flash doesn't include patient name and additional patient id
  /// Definition: Image quality deficiency according to MQCM
  value111187,

  /// Display: Flash doesn't include date of examination
  /// Definition: Image quality deficiency according to MQCM
  value111188,

  /// Display: Flash doesn't include facility name and location
  /// Definition: Image quality deficiency according to MQSA
  value111189,

  /// Display: Flash doesn't include technologist identification
  /// Definition: Image quality deficiency according to MQCM
  value111190,

  /// Display: Flash doesn't include cassette/screen/detector identification
  /// Definition: Image quality deficiency according to MQCM
  value111191,

  /// Display: Flash doesn't include mammography unit identification
  /// Definition: Image quality deficiency according to MQCM
  value111192,

  /// Display: Date sticker is missing
  /// Definition: Image quality deficiency according to MQCM
  value111193,

  /// Display: Technical factors missing
  /// Definition: Image quality deficiency according to MQCM
  value111194,

  /// Display: Collimation too close to breast
  /// Definition: Image quality deficiency according to MQCM
  value111195,

  /// Display: Inadequate compression
  /// Definition: Image quality deficiency according to MQCM
  value111196,

  /// Display: MLO Insufficient pectoral muscle
  /// Definition: Image quality deficiency according to MQCM
  value111197,

  /// Display: MLO No fat is visualized posterior to fibroglandular tissues
  /// Definition: Image quality deficiency according to MQCM
  value111198,

  /// Display: MLO Poor separation of deep and superficial breast tissues
  /// Definition: Image quality deficiency according to MQCM
  value111199,

  /// Display: MLO Evidence of motion blur
  /// Definition: Image quality deficiency according to MQCM
  value111200,

  /// Display: MLO Inframammary fold is not open
  /// Definition: Image quality deficiency according to MQCM
  value111201,

  /// Display: CC Not all medial tissue visualized
  /// Definition: Image quality deficiency according to MQCM
  value111202,

  /// Display: CC Nipple not centered on image
  /// Definition: Image quality deficiency according to MQCM
  value111203,

  /// Display: CC Posterior nipple line does not measure within 1 cm of MLO
  /// Definition: Image quality deficiency according to MQCM
  value111204,

  /// Display: Nipple not in profile
  /// Definition: Image quality deficiency
  value111205,

  /// Display: Insufficient implant displacement incorrect
  /// Definition: Image quality deficiency according to MQCM
  value111206,

  /// Display: Image artifact(s)
  /// Definition: Signals that do not faithfully reproduce actual anatomic structures because of distortion or of addition or deletion of information
  value111207,

  /// Display: Grid artifact(s)
  /// Definition: Feature(s) arising from the acquisition unit's anti-scatter grid mechanism. For two-dimensional systems, such features include those of mechanically damaged or incorrectly positioned grids. For moving or Bucky grids, artifacts may result from intentional grid motion that is inadequate in duration or velocity uniformity
  value111208,

  /// Display: Positioning
  /// Definition: Inadequate arrangement of the anatomy of interest with respect to the X-Ray field and image detector sensitive area. Examples: 1) positioning is "cutoff" when the projection of anatomy of interest falls outside the sensitive area of the detector; 2) "cone cut", in which the X-Ray field does not adequately cover the anatomy of interest; 3) detector's sensitive surface is too small to cover the projection of the anatomy of interest; 4) improper angular orientation or "rotation" of anatomy of interest with respect to the X-Ray source, or detector; 5) projection of other anatomy or clothing over the anatomy of interest in the image
  value111209,

  /// Display: Motion blur
  /// Definition: Unacceptable image blur resulting from motion of the anatomy of interest during exposure or the inadequately compensated motion of X-Ray source with respect to the image detector during exposure
  value111210,

  /// Display: Under exposed
  /// Definition: Inadequate number of quanta reached the detector during exposure. Reasons for under exposed images include low kVp, low mAs product, excess Source Image Distance. Under exposed images have inadequate signal and higher noise in the areas of interest
  value111211,

  /// Display: Over exposed
  /// Definition: An excess number of quanta reached the detector during exposure. Reasons for over exposed images include high kVp, high mAs product, short Source Image Distance. Over exposed images have high signal and lower noise in the areas of interest. Over exposed area may demonstrate lack of contrast from over saturation of the detector
  value111212,

  /// Display: No image
  /// Definition: No evidence of a patient exposure
  value111213,

  /// Display: Detector artifact(s)
  /// Definition: Superposed features or flaws of the detector
  value111214,

  /// Display: Artifact(s) other than grid or detector artifact
  /// Definition: Features or discontinuities arising from causes other than the anti-scatter grid and image detector
  value111215,

  /// Display: Mechanical failure
  /// Definition: Failure of the device to operate according to mechanical design specifications
  value111216,

  /// Display: Electrical failure
  /// Definition: Failure of a device to operate according to electrical design specifications
  value111217,

  /// Display: Software failure
  /// Definition: Attributable to software used in generation or handling of image
  value111218,

  /// Display: Inappropriate image processing
  /// Definition: Images processed inappropriately, not following appropriate protocol
  value111219,

  /// Display: Other failure
  /// Definition: Failure that is not mechanical or electrical or otherwise described
  value111220,

  /// Display: Unknown failure
  /// Definition: Unidentified or unknown cause of failure
  value111221,

  /// Display: Succeeded
  /// Definition: The attempted process was completely successful
  value111222,

  /// Display: Partially Succeeded
  /// Definition: The attempted process succeeded in some ways, but failed in others
  value111223,

  /// Display: Failed
  /// Definition: The attempted process completely failed
  value111224,

  /// Display: Not Attempted
  /// Definition: No process was performed
  value111225,

  /// Display: Individual Impression / Recommendation Analysis
  /// Definition: Analysis of a related group of findings or features detected during image data inspection, to produce a summary impression and/or recommendation
  value111233,

  /// Display: Overall Impression / Recommendation Analysis
  /// Definition: Analysis of all groups of findings or features, to produce a single impression and/or recommendation
  value111234,

  /// Display: Unusable - Quality renders image unusable
  /// Definition: The usability of an image for diagnostic interpretation or CAD, based on a quality control standard
  value111235,

  /// Display: Usable - Does not meet the quality control standard
  /// Definition: The usability of an image for diagnostic interpretation or CAD, based on a quality control standard
  value111236,

  /// Display: Usable - Meets the quality control standard
  /// Definition: The usability of an image for diagnostic interpretation or CAD, based on a quality control standard
  value111237,

  /// Display: Mammography Quality Control Manual 1999, ACR
  /// Definition: An image quality control standard specified by the American College of Radiology
  value111238,

  /// Display: Title 21 CFR Section 900, Subpart B
  /// Definition: An image quality control standard in the US Code of Federal Regulations
  value111239,

  /// Display: Institutionally defined quality control standard
  /// Definition: An image quality control standard specified or adopted by the institution responsible for the document
  value111240,

  /// Display: All algorithms succeeded; without findings
  /// Definition: No findings resulted upon successful completion of all attempted computer-aided detection and/or analysis
  value111241,

  /// Display: All algorithms succeeded; with findings
  /// Definition: One or more findings resulted upon successful completion of all attempted computer-aided detection and/or analysis
  value111242,

  /// Display: Not all algorithms succeeded; without findings
  /// Definition: No findings resulted from the attempted computer-aided detection and/or analysis, but one or more failures occurred in the process
  value111243,

  /// Display: Not all algorithms succeeded; with findings
  /// Definition: One or more findings resulted from the attempted computer-aided detection and/or analysis, but one or more failures occurred in the process
  value111244,

  /// Display: No algorithms succeeded; without findings
  /// Definition: All of the attempted computer-aided detection and/or analysis failed, so there could be no findings
  value111245,

  /// Display: Adenolipoma
  /// Definition: A benign tumor having glandular characteristics but composed of fat, with the presence of normal mammary ducts
  value111248,

  /// Display: Ductal hyperplasia
  /// Definition: Hyperplasia is also known as epithelial hyperplasia or proliferative breast disease. It's an overgrowth of the cells that line the ducts or the lobules. Based on how the cells look under a microscope, the hyperplasia is called either ductal hyperplasia (also called duct epithelial hyperplasia) or lobular hyperplasia. Based on the pattern of the cells, hyperplasia may be called usual or atypical. In usual hyperplasia, the pattern of cells is very close to normal. Atypical hyperplasia (or hyperplasia with atypia) is a term used when the cells are more distorted. FROM: http://www.cancer.org/healthy/findcancerearly/womenshealth/non-cancerousbreastconditions/non-cancerous-breast-conditions-hyperplasia
  value111249,

  /// Display: Adenomyoepithelioma
  /// Definition: Neoplasms composed of myoepithelial cells
  value111250,

  /// Display: Normal axillary node
  /// Definition: Axillary node that is normal in appearance with no associated pathology
  value111251,

  /// Display: Axillary node with calcifications
  /// Definition: Axillary node containing calcifications
  value111252,

  /// Display: Axillary node hyperplasia
  /// Definition: Excessive proliferation of normal tissue arrangement of the axillary node
  value111253,

  /// Display: Asynchronous involution
  value111254,

  /// Display: Benign cyst with blood
  /// Definition: Cyst with benign morphology containing blood
  value111255,

  /// Display: Benign Calcifications
  /// Definition: Calcifications having typically benign morphology. They are not of intermediate or high probability of concern for malignancy
  value111256,

  /// Display: Intracystic papilloma
  /// Definition: Growing within a cystic adenoma, filling the cavity with a mass of branching epithelial processes
  value111257,

  /// Display: Ductal adenoma
  /// Definition: Adenoma located in mammary duct, present as discrete sclerotic nodules, solitary or multiple
  value111258,

  /// Display: Diabetic fibrous mastopathy
  /// Definition: The occurrence of fibrous tumor-forming stromal proliferation in patients with diabetes mellitus
  value111259,

  /// Display: Extra abdominal desmoid
  /// Definition: A deep seated firm tumor frequently occurring on the chest consisting of collagenous tissue that infiltrates surround muscle; frequently recurs but does not metastasize
  value111260,

  /// Display: Epidermal inclusion cyst
  /// Definition: A cyst formed of a mass of epithelial cells, as a result of trauma has been pushed beneath the epidermis. The cyst is lined with squamous epithelium and contains concentric layers or keratin
  value111262,

  /// Display: Fibroadenomatoid hyperplasia
  /// Definition: Excessive proliferation of fibroadenoma tissue
  value111263,

  /// Display: Fibroadenolipoma
  /// Definition: A lipoma with an abundant stroma of fibrous tissue
  value111264,

  /// Display: Foreign body (reaction)
  value111265,

  /// Display: Galactocele
  /// Definition: Retention cyst caused by occlusion of a lactiferous duct
  value111269,

  /// Display: Hemangioma - nonparenchymal, subcutaneous
  /// Definition: A congenital anomaly that leads to a proliferation of blood vessels leading to a mass that resembles a neoplasm, not located in parenchymal areas but subcutaneous
  value111271,

  /// Display: Hyperplasia, usual
  /// Definition: Hyperplasia is also known as epithelial hyperplasia or proliferative breast disease. It's an overgrowth of the cells that line the ducts or the lobules. Based on how the cells look under a microscope, the hyperplasia is called either ductal hyperplasia (also called duct epithelial hyperplasia) or lobular hyperplasia. FROM: http://www.cancer.org/healthy/findcancerearly/womenshealth/non-cancerousbreastconditions/non-cancerous-breast-conditions-hyperplasia
  value111273,

  /// Display: Juvenile papillomatosis
  /// Definition: A form of fibrocystic disease in young woman with florid and sclerosing adenosis that microscopically may suggest carcinoma
  value111277,

  /// Display: Lactating adenoma
  /// Definition: Enlarging masses during lactation. A circumscribed benign tumor composed primarily of glandular structures with scanty stroma, with prominent secretory changes in the duct
  value111278,

  /// Display: Lactational change
  /// Definition: Changes related to the process of lactation
  value111279,

  /// Display: Large duct papilloma
  /// Definition: A papilloma pertaining to large mammary duct
  value111281,

  /// Display: Myofibroblastoma
  /// Definition: Solitary or multiple tumors of muscles and fibrous tissues, or tumors composed of myofibroblasts
  value111283,

  /// Display: Microglandular adenosis
  /// Definition: Irregular clusters of small tubules are present in adipose or fibrous tissue, resembling tubular carcinoma but lacking stromal fibroblastic proliferation
  value111284,

  /// Display: Multiple Intraductal Papillomas
  /// Definition: Papilloma typically involving an aggregate of adjacent ducts in the periphery of the breast, likely representing involvement of several foci of one or two duct systems
  value111285,

  /// Display: No abnormality
  /// Definition: No abnormality
  value111286,

  /// Display: Normal breast tissue
  /// Definition: Normal breast tissue
  value111287,

  /// Display: Neurofibromatosis
  /// Definition: Condition in which there are tumors of various sizes on peripheral nerves. They may be neuromas or fibromas
  value111288,

  /// Display: Oil cyst (fat necrosis cyst)
  /// Definition: A cyst resulting from the loss of the epithelial lining of a sebaceous dermoid or lacteal cyst
  value111290,

  /// Display: Post reduction mammoplasty
  /// Definition: Breast tissue with characteristics of a benign nature, following breast reduction surgery
  value111291,

  /// Display: Pseudoangiomatous stromal hyperplasia
  /// Definition: A benign stromal lesion composed of intermixed stromal and epithelial elements. The lobular and duct structures of the breast parenchyma are separated by an increased amount of stroma, non specific proliferative epithelial changes include hyperplasia of duct and lobular epithelium often with accentuation of myoepithelial cells and aprocine metaplasia with or without cyst formation
  value111292,

  /// Display: Radial scar
  /// Definition: An nonencapsulated stellate lesion consisting of a fibroelastic core and radiating bands of fibrous connective tissue containing lobules manifesting adenosis and ducts with papillary or diffuse intraductal hyperplasia
  value111293,

  /// Display: Sclerosing adenosis
  /// Definition: Prominent interductal fibrosis of the terminal ductules
  value111294,

  /// Display: Silicone granuloma
  /// Definition: Nodular inflammatory lesions due to the presence of silicone in the breast tissue
  value111296,

  /// Display: Nipple Characteristic
  /// Definition: The morphologic status of the nipple
  value111297,

  /// Display: Virginal hyperplasia
  /// Definition: Spontaneous excessive proliferation of breast tissue, usually found in younger women
  value111298,

  /// Display: Peripheral duct papillomas
  /// Definition: Papilloma(s) pertaining the peripheral ducts
  value111299,

  /// Display: Axillary node with lymphoma
  /// Definition: Axillary node with lymphoid tissue neoplasm
  value111300,

  /// Display: Axillary nodal metastases
  /// Definition: Metastatic disease to the axillary node
  value111301,

  /// Display: Angiosarcoma
  /// Definition: A malignant neoplasm occurring most often in breast and skin, believed to originate from endothelial cells of blood vessels, microscopically composed of closely packed round or spindle shaped cells, some of which line small spaces resembling vascular clefts
  value111302,

  /// Display: Blood vessel (vascular) invasion
  /// Definition: Histological changes to the vascular system related to an invasive process
  value111303,

  /// Display: Carcinoma in children
  /// Definition: Carcinoma of the breast found in patients less than 20 years of age
  value111304,

  /// Display: Carcinoma in ectopic breast
  /// Definition: A carcinoma found in supernumerary breasts and aberrant breast tissue
  value111305,

  /// Display: Carcinoma with endocrine differentiation
  /// Definition: A carcinoma that synthesizes substances, including hormones, not considered to be normal products of the breast
  value111306,

  /// Display: Basal cell carcinoma of nipple
  /// Definition: A basal cell carcinoma that arises in the nipple of the breast
  value111307,

  /// Display: Carcinoma with metaplasia
  /// Definition: Metaplastic carcinoma is cancer that begins in cells that have changed into another cell type (for example, a squamous cell of the esophagus changing to resemble a cell of the stomach). In some cases, metaplastic changes alone may mean there is an increased chance of cancer developing at the site. Metaplastic carcinoma is a relatively uncommon type of cancer with treatment generally similar to that of invasive ductal carcinoma of no special type.[1] FROM: https://en.wikipedia.org/wiki/Metaplastic_carcinoma
  value111308,

  /// Display: Cartilaginous and osseous change
  /// Definition: Tissue changes to bones and cartilage
  value111309,

  /// Display: Carcinoma in pregnancy and lactation
  /// Definition: Carcinoma of the breast presenting during pregnancy or lactation
  value111310,

  /// Display: Carcinosarcoma
  /// Definition: A malignant neoplasm that contains elements of carcinoma and sarcoma, so extensively intermixed as to indicate neoplasia of epithelial and mesenchymal tissue
  value111311,

  /// Display: Intraductal comedocarcinoma with necrosis
  /// Definition: Comedocarcinoma of a duct with areas of necrotic tissue
  value111312,

  /// Display: Intraductal carcinoma, low grade
  /// Definition: A non-invasive carcinoma restricted to the glandular lumen characterized by less aggressive malignant cytologic features and behavior
  value111313,

  /// Display: Intraductal carcinoma micro-papillary
  /// Definition: Papillary and micropapillary Ductal Carcinoma In Situ (DCIS): the cancer cells arrange themselves in a fern-like pattern within the affected breast ducts; micropapillary DCIS cells are smaller than papillary DCIS cells. FROM: http://www.imaginis.com/breast-cancer-diagnosis/ductal-carcinoma-in-situ-dcis-3
  value111314,

  /// Display: Intracystic papillary carcinoma
  /// Definition: A malignant neoplasm characterized by the formation of numerous, irregular, finger-like projections of fibrous stroma that is covered with a surface layer of neoplastic epithelial cells found in a cyst
  value111315,

  /// Display: Invasive and in-situ carcinoma
  /// Definition: Carcinoma with both characteristics of localized and spreading disease
  value111316,

  /// Display: Invasive lobular carcinoma
  /// Definition: Invasive lobular carcinoma is a type of breast cancer that begins in the milk-producing glands (lobules) of the breast. Invasive cancer means the cancer cells have broken out of the lobule where they began and have the potential to spread to the lymph nodes and other areas of the body. Invasive lobular carcinoma typically doesn't form a lump, which is common in breast cancer. Instead, there is a change in the breast that feels like a thickening or fullness in one part of the breast and is different from the surrounding breast tissue. FROM: http://www.mayoclinic.org/diseases-conditions/invasive-lobular-carcinoma/basics/definition/con-20033968
  value111317,

  /// Display: Leukemic infiltration
  /// Definition: Mammary infiltrates as a secondary manifestation in patients with established leukemia
  value111318,

  /// Display: Lympathic vessel invasion
  /// Definition: Histological changes to the lymphatic system related to an invasive process
  value111320,

  /// Display: Lymphoma
  /// Definition: A heterogeneous group of neoplasms arising in the reticuloendoethelial and lymphatic systems
  value111321,

  /// Display: Occult carcinoma presenting with axillary lymph node metastases
  /// Definition: A small carcinoma, either asymptomatic or giving rise to metastases without symptoms due to the primary carcinoma presenting with metastatic disease in the axillary lymph nodes
  value111322,

  /// Display: Metastatic cancer to the breast
  /// Definition: A malignant lesion in the breast with morphologic patterns not typical of breast carcinoma arising from a non-mammary malignant neoplasm
  value111323,

  /// Display: Metastatic cancer to the breast from the colon
  /// Definition: A malignant lesion in the breast with morphologic patterns not typical of breast carcinoma arising from a neoplasm in the colon
  value111324,

  /// Display: Metastatic cancer to the breast from the lung
  /// Definition: A malignant lesion in the breast with morphologic patterns not typical of breast carcinoma arising from a neoplasm in the lung
  value111325,

  /// Display: Metastatic melanoma to the breast
  /// Definition: A malignant lesion in the breast with morphologic patterns not typical of breast carcinoma arising from a melanoma
  value111326,

  /// Display: Metastatic cancer to the breast from the ovary
  /// Definition: A malignant lesion in the breast with morphologic patterns not typical of breast carcinoma arising from a neoplasm in the ovary
  value111327,

  /// Display: Metastatic sarcoma to the breast
  /// Definition: A malignant lesion in the breast with morphologic patterns not typical of breast carcinoma arising from a sarcoma
  value111328,

  /// Display: Multifocal intraductal carcinoma
  /// Definition: Multiple foci of non-invasive carcinoma restricted to the glandular lumen
  value111329,

  /// Display: Metastatic disease to axillary node
  /// Definition: A malignant lesion in an axillary node arising from a non-axillary neoplasm
  value111330,

  /// Display: Malignant fibrous histiocytoma
  /// Definition: Pleomorphic undifferentiated sarcoma (abbreviated PUS), also undifferentiated pleomorphic sarcoma and previously malignant fibrous histiocytoma (abbreviated MFH), is a type of soft tissue sarcoma. FROM: https://en.wikipedia.org/wiki/Pleomorphic_undifferentiated_sarcoma
  value111331,

  /// Display: Multifocal invasive ductal carcinoma
  /// Definition: Multiple sites of ductal carcinoma
  value111332,

  /// Display: Metastasis to an intramammary lymph node
  /// Definition: A malignant lesion in a intramammary lymph node arising from a non-intramammary lymph node neoplasm
  value111333,

  /// Display: Malignant melanoma of nipple
  /// Definition: A malignant melanoma of the skin that arises in the nipple of the breast
  value111334,

  /// Display: Neoplasm of the mammary skin
  value111335,

  /// Display: Papillary carcinoma in-situ
  /// Definition: Papillary and micropapillary Ductal Carcinoma In Situ (DCIS): the cancer cells arrange themselves in a fern-like pattern within the affected breast ducts; micropapillary DCIS cells are smaller than papillary DCIS cells. FROM: http://www.imaginis.com/breast-cancer-diagnosis/ductal-carcinoma-in-situ-dcis-3
  value111336,

  /// Display: Recurrent malignancy
  /// Definition: Recurrent malignancy
  value111338,

  /// Display: Squamous cell carcinoma of the nipple
  /// Definition: Squamous cell carcinoma to the terminal portion of the alveolar
  value111340,

  /// Display: Intraductal carcinoma, high grade
  /// Definition: A non-invasive carcinoma restricted to the glandular lumen characterized by more aggressive malignant cytologic features and behavior
  value111341,

  /// Display: Invasive cribriform carcinoma
  /// Definition: Invasive tumor with cribriform pattern similar to cribriform DCIS. Low grade, cribriform appearance (well defined spaces formed by arches of cells) similar to cribriform DCIS but with larger cells, more cytoplasm and more vesicular nuclei: Tumor cells are small, often have apical snouts, mild/moderate nuclear pleomorphism; Also stromal invasion by islands of cells, often angulated; May have predominantly solid appearance; Associated with cribriform DCIS; Often mixed with tubular carcinoma. FROM: http://www.pathologyoutlines.com/topic/breastmalignantcribriform.html
  value111342,

  /// Display: Angular margins
  /// Definition: An indication that some or all of the margin of a lesion has sharp corners, often forming acute angles
  value111343,

  /// Display: Fine pleomorphic calcification
  /// Definition: Calcifications that vary in sizes and shapes and are usually smaller than0.5 mm in diameter
  value111344,

  /// Display: Macrocalcifications
  /// Definition: Coarse calcifications that are 0.5 mm or greater in size
  value111345,

  /// Display: Calcifications within a mass
  /// Definition: An indicator that calcifications are imbedded within a mass
  value111346,

  /// Display: Calcifications outside of a mass
  /// Definition: An indicator that calcifications are imaged outside of a mass finding
  value111347,

  /// Display: Breast background echotexture
  /// Definition: Tissue composition of the breast noted on sonography
  value111350,

  /// Display: Homogeneous fat echotexture
  /// Definition: Fat lobules and uniformly echogenic bands of supporting structures comprise the bulk of breast tissue
  value111351,

  /// Display: Homogeneous fibroglandular echotexture
  /// Definition: A uniformly echogenic layer of fibroglandular tissue is seen beneath a thin layer of subcutaneous fat
  value111352,

  /// Display: Heterogeneous echotexture
  /// Definition: The breast texture is characterized by multiple small areas of increased and decreased echogenicity
  value111353,

  /// Display: Orientation
  /// Definition: Referential relationship of the finding to the imaging device as noted on sonography
  value111354,

  /// Display: Parallel
  /// Definition: The long axis of a lesion parallels the skin line ("wider-than-tall" or in a horizontal orientation)
  value111355,

  /// Display: Not parallel
  /// Definition: The anterior-posterior or vertical dimension is greater than the transverse or horizontal dimension
  value111356,

  /// Display: Lesion boundary
  /// Definition: The lesion boundary describes the transition zone between themas and the surrounding tissue
  value111357,

  /// Display: Abrupt interface
  /// Definition: The sharp demarcation between the lesion and surrounding tissue can be imperceptible or a distinct well-defined echogenic rim of any thickness
  value111358,

  /// Display: Echogenic halo
  /// Definition: There is no sharp demarcation between the mass and the surrounding tissue, which is bridged by an echogenic transition zone
  value111359,

  /// Display: Echo pattern
  /// Definition: An imaging characteristic of resonance noted during sonography
  value111360,

  /// Display: Anechoic
  /// Definition: Without internal echoes
  value111361,

  /// Display: Hyperechoic
  /// Definition: Having increased echogenicity relative to fat or equal to fibroglandular tissue
  value111362,

  /// Display: Complex
  /// Definition: Mass contains both anechoic and echogenic components
  value111363,

  /// Display: Hypoechoic
  /// Definition: Defined relative to fat; masses are characterized by low-level echoes throughout; e.g. appearance of a complicated cyst or fibroadenoma
  value111364,

  /// Display: Isoechoic
  /// Definition: Having the same echogenicity as fat (a complicated cyst or fibroadenoma may be isoechoic or hypoechoic)
  value111365,

  /// Display: Posterior acoustic features
  /// Definition: The attenuation characteristics of a mass with respect to its acoustic transmission
  value111366,

  /// Display: No posterior acoustic features
  /// Definition: No posterior shadowing or enhancement
  value111367,

  /// Display: Posterior enhancement
  /// Definition: Increased posterior echoes
  value111368,

  /// Display: Posterior shadowing
  /// Definition: Decreased posterior echoes; edge shadows are excluded
  value111369,

  /// Display: Combined posterior enhancement and shadowing
  /// Definition: More than one pattern of posterior attenuation, both shadowing and enhancement
  value111370,

  /// Display: Identifiable effect on surrounding tissues
  /// Definition: Sonographic appearance of adjacent structures relative to a mass finding
  value111371,

  /// Display: Vascularity
  /// Definition: Characterization of vascularization in region of interest
  value111372,

  /// Display: Vascularity not present
  /// Definition: Vascularity not evident, such as on ultrasound
  value111373,

  /// Display: Vascularity not assessed
  /// Definition: Vascularity not evaluated
  value111374,

  /// Display: Vascularity present in lesion
  /// Definition: Vascularity on imaging is seen within a lesion
  value111375,

  /// Display: Vascularity present immediately adjacent to lesion
  /// Definition: Vascularity on imaging is seen immediately adjacent to a lesion
  value111376,

  /// Display: Diffusely increased vascularity in surrounding tissue
  /// Definition: Vascularity on imaging is considered diffusely elevated within the surrounding breast tissue
  value111377,

  /// Display: Correlation to other Findings
  /// Definition: Relationship of the new anomaly to other clinical or imaging anomalies
  value111380,

  /// Display: Correlates to physical exam findings
  /// Definition: An indication that the current imaging finding relates to a finding from a clinical breast exam
  value111381,

  /// Display: Correlates to mammography findings
  /// Definition: An indication that the current imaging finding relates to a finding from a mammography exam
  value111382,

  /// Display: Correlates to MRI findings
  /// Definition: An indication that the current imaging finding relates to a finding from a breast MRI exam
  value111383,

  /// Display: Correlates to ultrasound findings
  /// Definition: An indication that the current imaging finding relates to a finding from a breast ultrasound exam
  value111384,

  /// Display: Correlates to other imaging findings
  /// Definition: An indication that the current imaging finding relates to a finding from an imaging exam
  value111385,

  /// Display: No correlation to other imaging findings
  /// Definition: An indication that the current imaging finding has no relation to findings from any other imaging exam
  value111386,

  /// Display: No correlation to clinical findings
  /// Definition: An indication that the current imaging finding has no relation to any other clinical findings
  value111387,

  /// Display: Malignancy Type
  /// Definition: Classification of the cancer as invasive, DCIS, or other
  value111388,

  /// Display: Invasive breast carcinoma
  /// Definition: A malignancy that has spread beyond an area of focus
  value111389,

  /// Display: Other malignancy type
  /// Definition: A breast cancer with malignant pathology findings that are not classified as invasive or in situ
  value111390,

  /// Display: Menstrual Cycle Phase
  /// Definition: A specific timeframe during menses
  value111391,

  /// Display: 1st week
  /// Definition: In the first week of the menstrual cycle phase, that is, one week following menses
  value111392,

  /// Display: 2nd week
  /// Definition: In the second week of the menstrual cycle phase, that is, two weeks following menses
  value111393,

  /// Display: 3rd week
  /// Definition: In the third week of the menstrual cycle phase, that is, three weeks following menses
  value111394,

  /// Display: Estimated Timeframe
  /// Definition: An estimated period of time
  value111395,

  /// Display: < 3 months ago
  /// Definition: An event occurred less than 3 months ago
  value111396,

  /// Display: 4 months to 1 year ago
  /// Definition: An event occurred between 4 months and 1 year ago
  value111397,

  /// Display: > 1 year ago
  /// Definition: An event occurred longer than 1 year ago
  value111398,

  /// Display: Timeframe uncertain
  /// Definition: The timing of an event is not recalled
  value111399,

  /// Display: Breast Imaging Report
  /// Definition: Report title for the diagnostic report for one or more breast imaging or intervention procedures
  value111400,

  /// Display: Reason for procedure
  /// Definition: Concept name for the description of why a procedure has been performed
  value111401,

  /// Display: Clinical Finding
  /// Definition: A finding during clinical examination (i.e., history and physical examination) such as pain, palpable mass or discharge
  value111402,

  /// Display: Baseline screening mammogram
  /// Definition: First screening mammogram taken for patient that is used as a comparison baseline for further examinations
  value111403,

  /// Display: First mammogram ever
  /// Definition: First mammogram taken for a patient without regard to whether it was for screening or a diagnostic procedure
  value111404,

  /// Display: Implant type
  /// Definition: Concept name for the material of which a breast prosthetic device is constructed
  value111405,

  /// Display: Number of similar findings
  /// Definition: A numeric count of findings classified as similar in nature
  value111406,

  /// Display: Implant finding
  /// Definition: Concept name for the status of a breast prosthetic device as noted by imaging
  value111407,

  /// Display: Film Screen Mammography
  /// Definition: Mammogram using traditional X-Ray film
  value111408,

  /// Display: Digital Mammography
  /// Definition: Mammogram using a digital image acquisition system
  value111409,

  /// Display: Surgical consult
  /// Definition: Referred for evaluation by a surgeon
  value111410,

  /// Display: Mammography CAD
  /// Definition: Computer aided detection and/or computer aided diagnosis for mammography
  value111411,

  /// Display: Narrative Summary
  /// Definition: Concept name for a text-based section of a report
  value111412,

  /// Display: Overall Assessment
  /// Definition: A title for a report section that summarizes all interpretation results for a report with one overriding assessment; e.g. benign or negative
  value111413,

  /// Display: Supplementary Data
  /// Definition: Concept name for a collection of supporting evidence for a report
  value111414,

  /// Display: Additional evaluation requested from prior study
  /// Definition: Prior study indicates that additional imaging be performed to further evaluate a suspicious or questionable anatomic region
  value111415,

  /// Display: Follow-up at short interval from prior study
  /// Definition: The prior study recommended a follow-up breast imaging exam in 1 to 11 months (generally in 6 months)
  value111416,

  /// Display: History of breast augmentation, asymptomatic
  /// Definition: Prior breast augmentation (breast enlargement) and is not presenting with any symptoms
  value111417,

  /// Display: Review of an outside study
  /// Definition: Review or second opinion made on an image performed outside of the facility
  value111418,

  /// Display: Additional evaluation requested from abnormal screening exam
  /// Definition: Additional breast imaging performed at the time of the patient's screening mammogram
  value111419,

  /// Display: History of benign breast biopsy
  /// Definition: Patient has had previous benign breast biopsies
  value111420,

  /// Display: Personal history of breast cancer with breast conservation therapy
  /// Definition: Patient has had a prior surgery such as a lumpectomy or quadrantectomy to remove malignant breast tissue, but breast tissue remains
  value111421,

  /// Display: Physical Examination Results
  /// Definition: The results of a physical examination performed on the patient, possibly including the results of inspection, palpation, auscultation, or percussion
  value111423,

  /// Display: Comparison to previous findings
  /// Definition: The result of assessing the current imaging exam in comparison to previous imaging exams
  value111424,

  /// Display: Intraluminal filling defect
  /// Definition: An abnormality observed during ductography where the ductal system within the breast fills in an abnormal pattern. Ductography is an imaging exam in which a radio opaque contrast media is introduced into the ductal system of the breast through the nipple and images of the ductal system are obtained
  value111425,

  /// Display: Multiple filling defect
  /// Definition: During ductography an observation of more than one filling abnormality within the breast ductal system
  value111426,

  /// Display: Abrupt duct termination
  /// Definition: An abnormality observed during ductography where the ductal system within the breast terminates in an unusual fashion
  value111427,

  /// Display: Extravasation
  /// Definition: Abnormal flowage of contrast media within the breast noted on ductography
  value111428,

  /// Display: Duct narrowing
  /// Definition: An abnormality observed during ductography where the ductal system within the breast appears narrow
  value111429,

  /// Display: Cyst fill
  /// Definition: During ductography an observation of the contrast media filling a cyst within the breast
  value111430,

  /// Display: Instrument Approach
  /// Definition: The area and line within the anatomy through which a needle or instrument passes during an interventional procedure
  value111431,

  /// Display: Inferolateral to superomedial
  /// Definition: The line within the anatomy from the lower outer to the upper inner aspect; e.g. through which a needle or instrument passes in an interventional procedure
  value111432,

  /// Display: Inferomedial to superolateral
  /// Definition: The line within the anatomy from the lower inner to the upper outer aspect; e.g. through which a needle or instrument passes in an interventional procedure
  value111433,

  /// Display: Superolateral to inferomedial
  /// Definition: The line within the anatomy from the upper outer to the lower inner aspect; e.g. through which a needle or instrument passes in an interventional procedure
  value111434,

  /// Display: Superomedial to inferolateral
  /// Definition: The line within the anatomy from the upper inner to the lower outer aspect; e.g. through which a needle or instrument passes in an interventional procedure
  value111435,

  /// Display: Number of passes
  /// Definition: The number of times a biopsy instrument is passed through an area of interest
  value111436,

  /// Display: Number of specimens
  /// Definition: The number of biopsy specimens obtained from an interventional procedure
  value111437,

  /// Display: Needle in target
  /// Definition: An indicator of whether or not a biopsy or localizing needle in an interventional procedure is seen to be in the area of interest
  value111438,

  /// Display: Number of needles around target
  /// Definition: The number of localizing needles placed around the area of interest in an interventional procedure
  value111439,

  /// Display: Incision made
  /// Definition: An indicator of whether or not an incision was made in the anatomy during an interventional procedure
  value111440,

  /// Display: Microclip placed
  /// Definition: An indicator of whether or not a radio opaque microclip was placed in the anatomy during an interventional procedure
  value111441,

  /// Display: Confirmation of target
  /// Definition: An indicator of the degree of success of an interventional procedure
  value111442,

  /// Display: Target completely contained in the specimen
  /// Definition: An indicator that during an interventional procedure the area of interest was fully excised and is noted in the resultant biopsy specimen
  value111443,

  /// Display: Target partially obtained in the specimen
  /// Definition: An indicator that during an interventional procedure the area of interest was partially excised and is noted in the resultant biopsy specimen
  value111444,

  /// Display: Target not in the specimen
  /// Definition: An indicator that following an interventional procedure the area of interest is not seen in the resultant biopsy specimen
  value111445,

  /// Display: Calcifications seen in the core
  /// Definition: An indicator that following an interventional procedure the targeted calcifications are noted in the resultant biopsy specimen
  value111446,

  /// Display: Lesion completely removed
  /// Definition: An indicator that during an interventional procedure the area of interest was fully excised and is noted in the resultant biopsy specimen
  value111447,

  /// Display: Lesion partially removed
  /// Definition: An indicator that during an interventional procedure the area of interest was partially excised and is noted in the resultant biopsy specimen
  value111448,

  /// Display: Fluid obtained
  /// Definition: An indicator that during an interventional procedure fluid was successfully aspirated
  value111449,

  /// Display: Light brown color
  /// Definition: Color that is a light shade of brown
  value111450,

  /// Display: Dark red color
  /// Definition: Color that is a dark shade of red
  value111451,

  /// Display: Dark brown color
  /// Definition: Color that is a dark shade of brown
  value111452,

  /// Display: Bright red color
  /// Definition: Color that is a bright shade of red
  value111453,

  /// Display: Blood tinged color
  /// Definition: Color that is tinged with the color of blood
  value111454,

  /// Display: Occult blood test result
  /// Definition: An indicator of whether or not the fluid obtained during an interventional procedure contains red blood cells
  value111455,

  /// Display: Action on fluid
  /// Definition: An indicator of whether or not fluid during an interventional procedure was sent for cytological analysis or simply discarded
  value111456,

  /// Display: Sent for analysis
  /// Definition: An indicator that fluid obtained during an interventional procedure was sent to a laboratory for analysis
  value111457,

  /// Display: Discarded
  /// Definition: An indicator that fluid obtained during an interventional procedure was discarded
  value111458,

  /// Display: Mass with calcifications
  /// Definition: A radiopaque density noted during diagnostic imaging that has associated calcific densities
  value111459,

  /// Display: Complex cyst
  /// Definition: A fluid-filled sac with greater than normal characteristics
  value111460,

  /// Display: Intracystic lesion
  /// Definition: A tumor within a cyst
  value111461,

  /// Display: Solid mass
  /// Definition: A tumor or lesion
  value111462,

  /// Display: Supplementary Data for Intervention
  /// Definition: Supporting evidence for interpretation results of an interventional procedure
  value111463,

  /// Display: Procedure Modifier
  /// Definition: A descriptor that further qualifies or characterizes a type of procedure
  value111464,

  /// Display: Needle Gauge
  /// Definition: Needle size (diameter) characterization; e.g. of a biopsy needle
  value111465,

  /// Display: Severity of Complication
  /// Definition: An indicator of the gravity of a problem experienced by a patient, related to a procedure that was performed
  value111466,

  /// Display: Needle Length
  /// Definition: Distance from the hub or bushing to the tip of the needle
  value111467,

  /// Display: Pathology Results
  /// Definition: The collection of observations and findings from pathologic analysis
  value111468,

  /// Display: Sampling DateTime
  /// Definition: The date and time that the sample was collected from the patient
  value111469,

  /// Display: Uninvolved
  /// Definition: Indicates that the margin of the biopsy specimen was not involved with the tumor
  value111470,

  /// Display: Involved
  /// Definition: Indicates that the margin of the biopsy specimen was involved with the tumor
  value111471,

  /// Display: Nipple involved
  /// Definition: Indicates whether the nipple was involved in an interventional procedure or pathologic analysis
  value111472,

  /// Display: Number of nodes removed
  /// Definition: Indicates the number of lymph nodes removed
  value111473,

  /// Display: Number of nodes positive
  /// Definition: Indicates the number of lymph nodes removed that contain cancer cells
  value111474,

  /// Display: Estrogen receptor
  /// Definition: The result of a test for the presence of a protein that binds with estrogen
  value111475,

  /// Display: Progesterone receptor
  /// Definition: The result of a test for the presence of a protein that binds with progesterone
  value111476,

  /// Display: S Phase
  /// Definition: Indicates the percentage of cells in S phase. Cell division is defined by phases; the S phase is the stage during which DNA replicates
  value111477,

  /// Display: Non-bloody discharge (from nipple)
  /// Definition: The visible emission of non-bloody fluid from the nipple
  value111478,

  /// Display: Difficult physical/clinical examination
  /// Definition: The inability to discern normal versus abnormal breast tissue during palpation
  value111479,

  /// Display: Cancer elsewhere
  /// Definition: An indication that a patient has or had a malignant occurrence in an area of the body other than the breast
  value111480,

  /// Display: Saline implant
  /// Definition: A salt water filled prosthetic device implanted in the breast
  value111481,

  /// Display: Polyurethane implant
  /// Definition: A polymer based (plastic) prosthetic device implanted in the breast
  value111482,

  /// Display: Percutaneous silicone injection
  /// Definition: The introduction of polymeric organic silicon based material through the skin, as for breast augmentation or reconstruction
  value111483,

  /// Display: Combination implant
  /// Definition: A prosthetic device that contains more than one material implanted in the breast
  value111484,

  /// Display: Pre-pectoral implant
  /// Definition: A breast implant placed in front of the pectoralis major muscle
  value111485,

  /// Display: Retro-pectoral implant
  /// Definition: A breast implant placed behind the pectoralis major muscle
  value111486,

  /// Display: Mammographic (crosshair)
  /// Definition: Using X-Ray technique and a superimposed set of crossed lines for detection or placement
  value111487,

  /// Display: Mammographic (grid)
  /// Definition: Using X-Ray technique and a superimposed aperture for detection or placement
  value111488,

  /// Display: Palpation guided
  /// Definition: Using physical touch for detection or placement
  value111489,

  /// Display: Vacuum assisted
  /// Definition: The performance of a biopsy procedure using a vacuum device attached to the biopsy needle
  value111490,

  /// Display: Abnormal discharge
  /// Definition: Unusual or unexpected emission of fluid
  value111491,

  /// Display: No complications
  /// Definition: Having experienced no adverse medical conditions related to or resulting from an interventional procedure
  value111492,

  /// Display: Stage 0
  /// Definition: TNM grouping of tumor stage, from AJCC, where primary tumor is Tis, regional lymph node is N0, and distant metastasis is M0
  value111494,

  /// Display: Stage I
  /// Definition: TNM grouping of tumor stage, from AJCC, where primary tumor is T1, regional lymph node is N0, and distant metastasis is M0
  value111495,

  /// Display: Stage IIA
  /// Definition: TNM grouping of tumor stage, from AJCC, where primary tumor is T0 or T1, with regional lymph node N1 and distant metastasis is M0, or T2 with N0 and M0
  value111496,

  /// Display: Stage IIB
  /// Definition: TNM grouping of tumor stage, from AJCC, where primary tumor is T2, with regional lymph node N1 and distant metastasis is M0, or T3 with N0 and M0
  value111497,

  /// Display: Stage IIIA
  /// Definition: TNM grouping of tumor stage, from AJCC, where primary tumor is T0, T1 or T2, with regional lymph node N2 and distant metastasis is M0, or T3 with N1 or N2 and M0
  value111498,

  /// Display: Stage IIIB
  /// Definition: TNM grouping of tumor stage, from AJCC, where primary tumor is T4, regional lymph node is N0, N1 or N2, and distant metastasis is M0
  value111499,

  /// Display: Stage IIIC
  /// Definition: TNM grouping of tumor stage, from AJCC, where primary tumor is any T value, regional lymph node is N3, and distant metastasis is M0
  value111500,

  /// Display: Stage IV
  /// Definition: TNM grouping of tumor stage, from AJCC, where primary tumor is any T value, regional lymph node is any N value, and distant metastasis is M1
  value111501,

  /// Display: Bloom-Richardson Grade
  /// Definition: Histologic tumor grade (sometimes called Scarff-Bloom-Richardson grade) is based on the arrangement of the cells in relation to each other -- whether they form tubules, how closely they resemble normal breast cells (nuclear grade) and how many of the cancer cells are in the process of dividing (mitotic count)
  value111502,

  /// Display: Normal implants
  /// Definition: Breast prosthetic devices are intact, not leaking, and are in a normal shape and form
  value111503,

  /// Display: Asymmetric implants
  /// Definition: Breast prosthetic devices are not symmetric, equal, corresponding in form, or are in one breast (unilateral)
  value111504,

  /// Display: Calcified implant
  /// Definition: Fibrous or calcific contracture of the tissue capsule that forms around a breast prosthetic device
  value111505,

  /// Display: Distorted implant
  /// Definition: Breast prosthetic device is twisted out of normal shape or form
  value111506,

  /// Display: Silicone-laden lymph nodes
  /// Definition: Silicone from breast prosthetic device found in lymphatic tissue
  value111507,

  /// Display: Free silicone
  /// Definition: Silicone found in breast tissue outside of the prosthetic capsule or implant membrane
  value111508,

  /// Display: Herniated implant
  /// Definition: Protrusion of part of the structure normally encapsulating the content of the breast prosthetic device
  value111509,

  /// Display: Explantation
  /// Definition: Evidence of removal of a breast prosthetic device
  value111510,

  /// Display: Relevant Patient Information for Breast Imaging
  /// Definition: Historical patient health information of interest to the breast health clinician
  value111511,

  /// Display: Medication History
  /// Definition: Information regarding usage by the patient of certain medications, such as hormones
  value111512,

  /// Display: Relevant Previous Procedures
  /// Definition: Interventional or non-interventional procedures previously performed on the patient, such as breast biopsies
  value111513,

  /// Display: Relevant Indicated Problems
  /// Definition: Abnormal conditions experienced by the patient that serve as the reason for performing a procedure, such as a breast exam
  value111514,

  /// Display: Relevant Risk Factors
  /// Definition: Personal, familial, and other health factors that may indicate an increase in the patient's chances of developing a health condition or disease, such as breast cancer
  value111515,

  /// Display: Medication Type
  /// Definition: A classification of a medicinal substance, such as hormonal contraceptive or antibiotic
  value111516,

  /// Display: Relevant Patient Information
  /// Definition: Historical patient health information for general purpose use
  value111517,

  /// Display: Age when first menstrual period occurred
  /// Definition: The age of the patient at the first occurrence of menses
  value111518,

  /// Display: Age at First Full Term Pregnancy
  /// Definition: The age of the patient at the time of her first full term pregnancy
  value111519,

  /// Display: Age at Menopause
  /// Definition: The age of the patient at the cessation of menses
  value111520,

  /// Display: Age when hysterectomy performed
  /// Definition: The age of the patient at the time her uterus was removed
  value111521,

  /// Display: Age when left ovary removed
  /// Definition: The age of the patient at the time she had her left ovary removed
  value111522,

  /// Display: Age when right ovary removed
  /// Definition: The age of the patient at the time she had her right ovary removed
  value111523,

  /// Display: Age Started
  /// Definition: The age of a patient on the first occurrence of an event, such as the first use of a medication
  value111524,

  /// Display: Age Ended
  /// Definition: The age of a patient on the last occurrence of an event, such as the last use of a medication
  value111525,

  /// Display: DateTime Started
  /// Definition: The date and time of the first occurrence of an event, such as the first use of a medication
  value111526,

  /// Display: DateTime Ended
  /// Definition: The date and time of the last occurrence of an event, such as the last use of a medication
  value111527,

  /// Display: Ongoing
  /// Definition: An indicator of whether an event is still in progress, such as the use of a medication or substance, or environmental exposure
  value111528,

  /// Display: Brand Name
  /// Definition: Product name of a device or substance, such as medication, to identify it as the product of a single firm or manufacturer
  value111529,

  /// Display: Risk Factor modifier
  /// Definition: A descriptor that further qualifies or characterizes a risk factor
  value111530,

  /// Display: Previous Procedure
  /// Definition: A prior non-interventional exam or interventional procedure performed on a patient
  value111531,

  /// Display: Pregnancy Status
  /// Definition: Describes the pregnancy state of a referenced subject
  value111532,

  /// Display: Indicated Problem
  /// Definition: A symptom experienced by a patient that is used as the reason for performing an exam or procedure
  value111533,

  /// Display: Role of person reporting
  /// Definition: The function of the individual who is reporting information on a patient, which could be a specific health care related profession, the patient him/herself, or a relative or friend
  value111534,

  /// Display: DateTime problem observed
  /// Definition: The date and time that a symptom was noted
  value111535,

  /// Display: DateTime of last evaluation
  /// Definition: The date and time of the most recent evaluation of an indicated problem
  value111536,

  /// Display: Family Member with Risk Factor
  /// Definition: A patient's biological relative who exhibits a health factor that may indicate an increase in the patient's chances of developing a particular disease or medical problem
  value111537,

  /// Display: Age at Occurrence
  /// Definition: The age at which an individual experienced a specific event, such as breast cancer
  value111538,

  /// Display: Menopausal phase
  /// Definition: The current stage of an individual in her gynecological development
  value111539,

  /// Display: Side of Family
  /// Definition: An indicator of paternal or maternal relationship
  value111540,

  /// Display: Maternal
  /// Definition: Relating to biological female parentage
  value111541,

  /// Display: Unspecified gynecological hormone
  /// Definition: A gynecological hormone for which the specific type is not specified; e.g. contraceptive, estrogen, Tamoxifen
  value111542,

  /// Display: Breast feeding history
  /// Definition: An indicator of whether or not a patient ever provided breast milk to her offspring
  value111543,

  /// Display: Average breast feeding period
  /// Definition: The average length of time that a patient provided breast milk to her offspring
  value111544,

  /// Display: Substance Use History
  /// Definition: Information regarding usage by the patient of certain legal or illicit substances
  value111545,

  /// Display: Used Substance Type
  /// Definition: A classification of a substance, such as alcohol or a legal or illicit drug
  value111546,

  /// Display: Environmental Exposure History
  /// Definition: Information regarding exposure of the patient to potentially harmful environmental factors
  value111547,

  /// Display: Environmental Factor
  /// Definition: A classification of a potentially harmful substance or gas in a subject's environment, such as asbestos, lead, or carcinogens
  value111548,

  /// Display: Previous Reports
  /// Definition: Previous Structured Reports that could have relevant information for a current imaging service request
  value111549,

  /// Display: Personal breast cancer history
  /// Definition: An indication that a patient has had a previous malignancy of the breast
  value111550,

  /// Display: History of endometrial cancer
  /// Definition: Indicates a previous occurrence of cancer of the lining of the uterus
  value111551,

  /// Display: History of ovarian cancer
  /// Definition: Indicates a previous occurrence of cancer of the lining of the ovary
  value111552,

  /// Display: History of high risk lesion on previous biopsy
  /// Definition: Indicates a prior diagnosis of pre-cancerous cells or tissue removed for pathologic evaluation
  value111553,

  /// Display: Post menopausal patient
  /// Definition: A female patient whose menstrual periods have ceased
  value111554,

  /// Display: Late child bearing (after 30)
  /// Definition: A female patient whose first child was born after the patient was 30 years old
  value111555,

  /// Display: BRCA1 breast cancer gene
  /// Definition: The first level genetic marker indicating risk for breast cancer
  value111556,

  /// Display: BRCA2 breast cancer gene
  /// Definition: The second level genetic marker indicating risk for breast cancer
  value111557,

  /// Display: BRCA3 breast cancer gene
  /// Definition: The third level genetic marker indicating risk for breast cancer
  value111558,

  /// Display: Weak family history of breast cancer
  /// Definition: A patient's biological aunt, grandmother, or female cousin was diagnosed with breast cancer. Definition from BI-RADS®
  value111559,

  /// Display: Intermediate family history of breast cancer
  /// Definition: A patient's biological mother or sister was diagnosed with breast cancer after they had gone through menopause. Definition from BI-RADS®
  value111560,

  /// Display: Very strong family history of breast cancer
  /// Definition: A patient's biological mother or sister was diagnosed with breast cancer before they had gone through menopause, or more than one of the patient's first-degree relatives (biological mother or sister) were diagnosed with breast cancer after they had gone through menopause. Definition from BI-RADS®
  value111561,

  /// Display: Family history of prostate cancer
  /// Definition: Previous diagnosis of a malignancy of the prostate gland in a biological relative
  value111562,

  /// Display: Family history unknown
  /// Definition: The health record of a patient's biological relatives is not known
  value111563,

  /// Display: Nipple discharge cytology
  /// Definition: The study of cells obtained from fluid emitted from the breast
  value111564,

  /// Display: Uterine malformations
  /// Definition: A developmental abnormality resulting in an abnormal shape of the uterus
  value111565,

  /// Display: Spontaneous Abortion
  /// Definition: A naturally occurring premature expulsion from the uterus of the products of conception - the embryo or a nonviable fetus
  value111566,

  /// Display: Gynecologic condition
  /// Definition: An ailment/abnormality or state of the female reproductive tract
  value111567,

  /// Display: Gynecologic surgery
  /// Definition: A surgical operation performed on any portion of the female reproductive tract
  value111568,

  /// Display: Previous LBW or IUGR birth
  /// Definition: Prior pregnancy with a low birth weight baby or a fetus with Intrauterine Growth Restriction or Retardation
  value111569,

  /// Display: Previous fetal malformation/syndrome
  /// Definition: History of at least one prior pregnancy with fetal anatomic abnormality(s)
  value111570,

  /// Display: Previous RH negative or blood dyscrasia at birth
  /// Definition: History of delivering a Rhesis Isoimmunization affected child(ren) or a child(ren) with another blood disorder
  value111571,

  /// Display: History of multiple fetuses
  /// Definition: History of at least one pregnancy that contained more than one fetus; e.g. twins, triplets, etc.
  value111572,

  /// Display: Current pregnancy, known or suspected malformations/syndromes
  /// Definition: At least one fetus of this pregnancy has an anatomic abnormality(s) that is known to exist, or a "marker" is present that suggests the abnormality(s) may be present
  value111573,

  /// Display: Family history, fetal malformation/syndrome
  /// Definition: Biological relatives have previously conceived a fetus with an anatomic abnormality(s)
  value111574,

  /// Display: High
  /// Definition: A subjective descriptor for an elevated amount of exposure, use, or dosage, incurring high risk of adverse effects
  value111575,

  /// Display: Medium
  /// Definition: A subjective descriptor for a moderate amount of exposure, use, or dosage, incurring medium risk of adverse effects
  value111576,

  /// Display: Low
  /// Definition: A subjective descriptor for a limited amount of exposure, use, or dosage, incurring low risk of adverse effects
  value111577,

  /// Display: Dose frequency
  /// Definition: A measurement of the rate of occurrence of which a patient takes a certain medication
  value111578,

  /// Display: Rate of exposure
  /// Definition: The quantity per unit of time that a patient was or is being exposed to an environmental irritant
  value111579,

  /// Display: Volume of use
  /// Definition: The quantity per unit of time that a medication or substance was or is being used
  value111580,

  /// Display: Relative dose amount
  /// Definition: A qualitative descriptor for the amount of a medication that was or is being taken
  value111581,

  /// Display: Relative amount of exposure
  /// Definition: A qualitative descriptor for the amount of present or past exposure to an environmental irritant
  value111582,

  /// Display: Relative amount of use
  /// Definition: A qualitative descriptor for the amount of a medication or substance that was or is being used
  value111583,

  /// Display: Relative dose frequency
  /// Definition: A qualitative descriptor for the frequency with which a medication was or is being taken
  value111584,

  /// Display: Relative frequency of exposure
  /// Definition: A qualitative descriptor for the frequency of present or past exposure to an environmental irritant
  value111585,

  /// Display: Relative frequency of use
  /// Definition: A qualitative descriptor for the frequency with which a medication or substance was or is being used
  value111586,

  /// Display: No known exposure
  /// Definition: Patient is not known to have been exposed to or used the substance or medication
  value111587,

  /// Display: Recall for technical reasons
  /// Definition: Patient returns for additional images to improve the quality of the most recent exam
  value111590,

  /// Display: Recall for imaging findings
  /// Definition: Patient returns for additional images to clarify findings from the most recent exam
  value111591,

  /// Display: Recall for patient symptoms/ clinical findings
  /// Definition: Patient returns for additional images to clarify symptoms or signs reported by the patient or a healthcare professional at the time of the most recent exam
  value111592,

  /// Display: LBW or IUGR
  /// Definition: Number of births with low birth weight or intrauterine growth restriction
  value111593,

  /// Display: Green filter
  /// Definition: Filter that transmits green light while blocking the other colors, typically centered at 510-540 nm
  value111601,

  /// Display: Red filter
  /// Definition: Filter that transmits red light while blocking the other colors, typically centered at 630-680 nm
  value111602,

  /// Display: Blue filter
  /// Definition: Filter that transmits blue while blocking the other colors, typically centered at 460-480 nm
  value111603,

  /// Display: Yellow-green filter
  /// Definition: A filter of 560nm that is used for retinal imaging and can provide good contrast and good visibility of the retinal vasculature
  value111604,

  /// Display: Blue-green filter
  /// Definition: A filter of 490nm that is used for retinal imaging because of excessive scattering of some retinal structures at very short wavelengths
  value111605,

  /// Display: Infrared filter
  /// Definition: Filter that transmits the infrared spectrum, which is light that lies outside of the visible spectrum, with wavelengths longer than those of red light, while blocking visible light
  value111606,

  /// Display: Polarizing filter
  /// Definition: A filter that reduces reflections from non-metallic surfaces such as glass or water by blocking light waves that are vibrating at selected angles to the filter
  value111607,

  /// Display: No filter
  /// Definition: No filter used
  value111609,

  /// Display: Field 1 for Joslin 3 field
  /// Definition: Joslin NM-1 is a 45 degree field focused centrally between the temporal margin of optic disc and the center of the macula: Center the camera on the papillomacular bundle midway between the temporal margin of the optic disc and the center of the macula. The horizontal centerline of the image should pass directly through the center of the disc
  value111621,

  /// Display: Field 2 for Joslin 3 field
  /// Definition: Joslin NM-2 is a 45 degree field focused superior temporal to the optic disc: Center the camera laterally approximately one-half disc diameter temporal to the center of the macula. The lower edge of the field is tangent to a horizontal line passing through the upper edge of the optic disc. The image is taken temporal to the macula but includes more retinal nasal and superior to the macula than standard field 2
  value111622,

  /// Display: Field 3 for Joslin 3 field
  /// Definition: Joslin NM-3 is a 45 degree field focused nasal to the optic disc: This field is nasal to the optic disc and may include part of the optic disc. The horizontal centerline of the image should pass tangent to the lower edge of the optic disc
  value111623,

  /// Display: Diffuse direct illumination
  /// Definition: A broad or "soft" light supplied from a single source
  value111625,

  /// Display: Scheimpflug Camera
  /// Definition: A slit reflected light microscope, which has the ability to form an image of the back scattered light from the eye in a sagittal plane. Scheimpflug cameras are able to achieve a wide depth of focus by employing the "Sheimpflug principle" where the lens and image planes are not parallel with each other. Rotating Sheimplug cameras are able to generate three-dimensional images and calculate measurements of the anterior chamber of the eye
  value111626,

  /// Display: Scotopic light
  /// Definition: Lighting condition approximately 0.04 lux
  value111627,

  /// Display: Mesopic light
  /// Definition: Lighting condition approximately 4 lux
  value111628,

  /// Display: Photopic light
  /// Definition: Lighting condition approximately 40 lux
  value111629,

  /// Display: Dynamic light
  /// Definition: Acquisition preceded by intense light
  value111630,

  /// Display: Average Glandular Dose
  /// Definition: Calculated from values of entrance exposure in air, the X-Ray beam quality (half-value layer), and compressed breast thickness, is the energy deposited per unit mass of glandular tissue averaged over all the glandular tissue in the breast
  value111631,

  /// Display: Anode Target Material
  /// Definition: The primary material in the anode of an X-Ray source
  value111632,

  /// Display: Compression Thickness
  /// Definition: The average thickness of the body part examined when compressed, if compression has been applied during X-Ray exposure
  value111633,

  /// Display: Half Value Layer
  /// Definition: Thickness of Aluminum required to reduce the X-Ray output at the patient entrance surface by a factor of two
  value111634,

  /// Display: X-Ray Grid
  /// Definition: An anti-scatter device based on radiation absorbing strips above the detector; e.g. in the patient support
  value111635,

  /// Display: Entrance Exposure at RP
  /// Definition: Exposure measurement in air at the reference point that does not include back scatter, according to MQCM 1999
  value111636,

  /// Display: Accumulated Average Glandular Dose
  /// Definition: Average Glandular Dose to a single breast accumulated over multiple images
  value111637,

  /// Display: Patient Equivalent Thickness
  /// Definition: Value of the control variable used to parametrize the Automatic Exposure Control (AEC) closed loop; e.g. "Water Value"
  value111638,

  /// Display: Fixed grid
  /// Definition: An X-Ray Grid that does not move during exposure
  value111641,

  /// Display: Focused grid
  /// Definition: An X-Ray Grid with radiation absorbing strips that are focused toward the focal spot, to eliminate grid cutoff
  value111642,

  /// Display: Reciprocating grid
  /// Definition: An X-Ray Grid that is designed to move during exposure, to eliminate the appearance of grid lines on the image
  value111643,

  /// Display: Parallel grid
  /// Definition: An X-Ray Grid with radiation absorbing strips that are parallel to each other and that is used only with long source to image distances
  value111644,

  /// Display: Crossed grid
  /// Definition: An X-Ray Grid with crossed radiation absorbing strips used for more complete cleanup of scatter radiation
  value111645,

  /// Display: No grid
  /// Definition: No X-Ray Grid was used due to low scatter conditions
  value111646,

  /// Display: Spectacle Prescription Report
  /// Definition: The spectacle prescription for a patient
  value111671,

  /// Display: Add Near
  /// Definition: Refractive measurements of the eye to correct for inability to focus at near while wearing the distance prescription
  value111672,

  /// Display: Add Intermediate
  /// Definition: Refractive measurements of the eye to correct for inability to focus at intermediate distance while wearing the distance prescription
  value111673,

  /// Display: Add Other
  /// Definition: Refractive measurements of the eye to correct for inability to focus at the specified distance while wearing the distance prescription
  value111674,

  /// Display: Horizontal Prism Power
  /// Definition: The power of a prism to bend light in the horizontal direction, in prism diopters
  value111675,

  /// Display: Horizontal Prism Base
  /// Definition: Direction of the base of a horizontal prism -- either in (toward the nose), or out (away from the nose)
  value111676,

  /// Display: Vertical Prism Power
  /// Definition: The power of a prism to bend light in the vertical direction, in prism diopters
  value111677,

  /// Display: Vertical Prism Base
  /// Definition: Direction of the base of a vertical prism -- either up, or down
  value111678,

  /// Display: Distance Pupillary Distance
  /// Definition: Distance in mm between the pupils when the patient's object of regard is in the distance
  value111679,

  /// Display: Near Pupillary Distance
  /// Definition: Distance in mm between the pupils when the patient's object of regard is at near
  value111680,

  /// Display: Autorefraction Visual Acuity
  /// Definition: A patient's vision with the correction measured by an autorefractor in place
  value111685,

  /// Display: Habitual Visual Acuity
  /// Definition: A patient's vision with whichever vision correction the patient customarily wears
  value111686,

  /// Display: Prescription Visual Acuity
  /// Definition: A patient's vision with the final spectacle prescription in place
  value111687,

  /// Display: Right Eye Rx
  /// Definition: The spectacle prescription for the right eye
  value111688,

  /// Display: Left Eye Rx
  /// Definition: The spectacle prescription for the left eye
  value111689,

  /// Display: Macular Grid Thickness and Volume Report
  /// Definition: A macular grid thickness and volume report for a patient. The macular grid is an analytic tool described in PS3.1
  value111690,

  /// Display: Number of Images Used for Macular Measurements
  /// Definition: Number of images used for the macular grid measurement
  value111691,

  /// Display: Number of Samples Used per Image
  /// Definition: Number of samples used per Image for analysis
  value111692,

  /// Display: Analysis Quality Rating
  /// Definition: A numeric rating of the quality of the entire analysis with respect to grading and diagnostic purposes. Higher numbers indicate greater quality
  value111693,

  /// Display: Image Set Quality Rating
  /// Definition: A numeric rating of the quality of an entire image set with respect to grading and diagnostic purposes. Higher numbers indicate greater quality
  value111694,

  /// Display: Interfering Tears or Drops
  /// Definition: Tear film or drops affecting test quality
  value111695,

  /// Display: Visual Fixation Quality During Acquisition
  /// Definition: The assessment of the centricity and persistence of the visual fixation (direction of gaze) during the acquisition
  value111696,

  /// Display: Visual Fixation Quality Problem
  /// Definition: The reason why the patient's visual fixation was not steady or was indeterminate
  value111697,

  /// Display: Ophthalmic Macular Grid Problem
  /// Definition: The reason why the macular grid measurements may be questionable
  value111698,

  /// Display: Specimen Container Identifier
  /// Definition: Identifier of container (box, block, microscope slide, etc.) for the specimen under observation
  value111700,

  /// Display: Processing type
  /// Definition: Type of processing that tissue specimen underwent
  value111701,

  /// Display: DateTime of processing
  /// Definition: Date and time of processing step
  value111702,

  /// Display: Processing step description
  /// Definition: Description of the individual step in the tissue processing sequence
  value111703,

  /// Display: Sampling Method
  /// Definition: Method of sampling used to derive specimen from its parent
  value111704,

  /// Display: Parent Specimen Identifier
  /// Definition: Identifier of the parent specimen that gave rise to the current specimen
  value111705,

  /// Display: Issuer of Parent Specimen Identifier
  /// Definition: Assigning authority for parent specimen's identifier
  value111706,

  /// Display: Parent specimen type
  /// Definition: Parent specimen type that gave rise to current specimen
  value111707,

  /// Display: Position Frame of Reference
  /// Definition: Description of coordinate system and origin reference point on parent specimen, or parent specimen container, or image used for localizing the sampling site or location within container or image
  value111708,

  /// Display: Location of sampling site
  /// Definition: Reference to image of parent specimen localizing the sampling site; may include referenced Presentation State object
  value111709,

  /// Display: Location of sampling site X offset
  /// Definition: Location of sampling site of specimen (nominal center) relative to the Position Frame of Reference in the X dimension
  value111710,

  /// Display: Location of sampling site Y offset
  /// Definition: Location of sampling site of specimen (nominal center) relative to the Position Frame of Reference in the Y dimension
  value111711,

  /// Display: Location of sampling site Z offset
  /// Definition: Location of sampling site of specimen (nominal center) relative to the Position Frame of Reference in the Z dimension
  value111712,

  /// Display: Location of Specimen
  /// Definition: Description of specimen location, either in absolute terms or relative to the Position Frame of Reference
  value111718,

  /// Display: Location of Specimen X offset
  /// Definition: Location of specimen (nominal center) relative to the Position Frame of Reference in the X dimension
  value111719,

  /// Display: Location of Specimen Y offset
  /// Definition: Location of specimen (nominal center) relative to the Position Frame of Reference in the Y dimension
  value111720,

  /// Display: Location of Specimen Z offset
  /// Definition: Location of specimen (nominal center) relative to the Position Frame of Reference in the Z dimension
  value111721,

  /// Display: Visual Marking of Specimen
  /// Definition: Description of visual distinguishing identifiers; e.g. ink, or a particular shape of the specimen
  value111723,

  /// Display: Issuer of Specimen Identifier
  /// Definition: Assigning authority for specimen identifier
  value111724,

  /// Display: Dissection with entire specimen submission
  /// Definition: Dissection of specimen with submission of all its sections for further processing or examination
  value111726,

  /// Display: Dissection with representative sections submission
  /// Definition: Dissection of specimen with submission of representative sections for further processing or examination
  value111727,

  /// Display: Specimen storage
  /// Definition: A workflow step, during which tissue specimens are stored in a climate-controlled environment
  value111729,

  /// Display: Transmission illumination
  /// Definition: Transmission illumination method for specimen microscopy
  value111741,

  /// Display: Reflection illumination
  /// Definition: Reflection illumination method for specimen microscopy
  value111742,

  /// Display: Epifluorescence illumination
  /// Definition: Epifluorescence illumination method for specimen microscopy
  value111743,

  /// Display: Brightfield illumination
  /// Definition: Brightfield illumination method for specimen microscopy
  value111744,

  /// Display: Darkfield illumination
  /// Definition: Darkfield illumination method for specimen microscopy
  value111745,

  /// Display: Oblique illumination
  /// Definition: Oblique illumination method for specimen microscopy
  value111746,

  /// Display: Phase contrast illumination
  /// Definition: Phase contrast illumination method for specimen microscopy
  value111747,

  /// Display: Differential interference contrast
  /// Definition: Differential interference contrast method for specimen microscopy
  value111748,

  /// Display: Total internal reflection fluorescence
  /// Definition: Total internal reflection fluorescence method for specimen microscopy
  value111749,

  /// Display: Ultrasound Contact
  /// Definition: A method of obtaining ophthalmic axial measurements that uses ultrasound, and that requires applanation of the cornea
  value111750,

  /// Display: Ultrasound Immersion
  /// Definition: A method of obtaining ophthalmic axial measurements that uses ultrasound, and that requires immersion of the patient's eye in fluid as he lies in a supine position
  value111751,

  /// Display: Optical
  /// Definition: A method of obtaining ophthalmic axial measurements that uses light
  value111752,

  /// Display: Manual Keratometry
  /// Definition: Measurements taken of the corneal curvature using a manual keratometer
  value111753,

  /// Display: Auto Keratometry
  /// Definition: Measurements taken of the corneal curvature using an automated keratometer
  value111754,

  /// Display: Simulated Keratometry
  /// Definition: Simulated Keratometry measurements derived from corneal topography
  value111755,

  /// Display: Equivalent K-reading
  /// Definition: Corneal power measurements using Scheimpflug camera
  value111756,

  /// Display: Haigis
  /// Definition: The Haigis IOL calculation formula. Haigis W, Lege B, Miller N, Schneider B. Comparison of immersion ultrasound biometry and partial coherence interferometry for intraocular lens calculation according to Haigis. Graefes Arch Clin Exp Ophthalmol 2000;238:765-73
  value111760,

  /// Display: Haigis-L
  /// Definition: The Haigis-L IOL calculation formula. Haigis W. Intraocular lens calculation after refractive surgery for myopia: Haigis-L formula. J Cataract Refract Surg. 2008 Oct;34(10):1658-63
  value111761,

  /// Display: Holladay 1
  /// Definition: The Holladay 1 IOL calculation formula. Holladay JT, Prager TC, Chandler TY, Musgrove KH, Lewis JW, Ruiz RS. A three-part system for refining intraocular lens power calculations. J Cataract Refract Surg. 1988; 14:17-24
  value111762,

  /// Display: Holladay 2
  /// Definition: The Holladay 2 IOL calculation formula
  value111763,

  /// Display: Hoffer Q
  /// Definition: The Hoffer Q IOL calculation formula. Hoffer KJ. The Hoffer Q formula: a comparison of theoretic and regression formulas. J Cataract Refract Surg 1993;19:700-12. Errata. J Cataract Refract Surg 1994;20:677 and 2007;33:2-3
  value111764,

  /// Display: Olsen
  /// Definition: The Olsen IOL calculation formula. Olsen T. Calculation of intraocular lens power: a review. Acta Ophthalmol. Scand. 2007: 85: 472-485
  value111765,

  /// Display: SRKII
  /// Definition: The SRKII IOL calculation formula. Sanders DR, Retzlaff J, Kraff MC. Comparison of the SRK II formula and other second generation formulas. J Cataract Refract Surg. 1988 Mar;14(2):136-41
  value111766,

  /// Display: SRK-T
  /// Definition: The SRK-T IOL calculation formula. Retzlaff JA, Sanders DR, Kraff MC. Development of the SRK/T intraocular lens implant power calculation formula. J Cataract Refract Surg 1990;16:333-40. Erratum 1990;16:528
  value111767,

  /// Display: ACD Constant
  /// Definition: The "ACD Constant" used in IOL calculation
  value111768,

  /// Display: Haigis a0
  /// Definition: The "Haigis a0" constant used in IOL calculation
  value111769,

  /// Display: Haigis a1
  /// Definition: The "Haigis a1" constant used in IOL calculation
  value111770,

  /// Display: Haigis a2
  /// Definition: The "Haigis a2" constant used in IOL calculation
  value111771,

  /// Display: Hoffer pACD Constant
  /// Definition: The "Hoffer pACD Constant" used in IOL calculation
  value111772,

  /// Display: Surgeon Factor
  /// Definition: The "Surgeon Factor" constant used in IOL calculation
  value111773,

  /// Display: Front Of Cornea To Front Of Lens
  /// Definition: Anterior chamber depth defined as the front of the cornea to the front of the lens
  value111776,

  /// Display: Back Of Cornea To Front Of Lens
  /// Definition: Anterior chamber depth defined as the back of the cornea to the front of the lens
  value111777,

  /// Display: Single or Anterior Lens
  /// Definition: Refers to the anterior lens when there are two lenses in the eye. The distance, in mm, from the anterior surface of the lens to the posterior surface of the lens
  value111778,

  /// Display: Posterior Lens
  /// Definition: Refers to the posterior lens when there are two lenses in the eye. The distance, in mm, from the anterior surface of the lens to the posterior surface of the lens
  value111779,

  /// Display: Measurement From This Device
  /// Definition: Value obtained from measurements taken by the device creating this SOP Instance
  value111780,

  /// Display: External Data Source
  /// Definition: Value obtained by data transfer from an external source - not from measurements taken by the device providing the value
  value111781,

  /// Display: Axial Measurements SOP Instance
  /// Definition: Axial Measurements DICOM SOP Instance
  value111782,

  /// Display: Refractive Measurements SOP Instance
  /// Definition: Refractive Measurements DICOM SOP Instance
  value111783,

  /// Display: Standard Deviation of measurements used
  /// Definition: Standard Deviation is a simple measure of the variability of a data set
  value111786,

  /// Display: Signal to Noise Ratio
  /// Definition: Signal to Noise Ratio of the data samples taken to create a measurement
  value111787,

  /// Display: Spherical projection
  /// Definition: Projection from 2D image pixels to 3D Cartesian coordinates based on a spherical mathematical model
  value111791,

  /// Display: Surface contour mapping
  /// Definition: Mapping from 2D image pixels to 3D Cartesian coordinates based on measurements of the retinal surface; e.g. of the retina, derived via a measurement technology such as Optical Coherence Tomography, Ultrasound etc.
  value111792,

  /// Display: Visual Field 24-2 Test Pattern
  /// Definition: Test pattern, nominally covering an area within 24° of fixation. Consists of 54 test points a minimum of 3° from each meridian and placed 6° apart. The "-2" distinguishes this from another 24° pattern (no longer supported)
  value111800,

  /// Display: Visual Field 10-2 Test Pattern
  /// Definition: Test pattern, nominally covering an area within 10° of fixation. Consists of 68 test points a minimum of 1° from each meridian and placed 2° apart. The "-2" in this case indicates its point layout to be similar to the 30-2 and 24-2
  value111801,

  /// Display: Visual Field 30-2 Test Pattern
  /// Definition: Test pattern consisting of test point locations within 30° of fixation. Consists of 76 test points a minimum of 3° from each meridian and placed 6° apart. The "-2" distinguishes this from another 30° pattern (no longer supported)
  value111802,

  /// Display: Visual Field 60-4 Test Pattern
  /// Definition: Test pattern consisting of 60 test point locations between 30° and 60° of fixation a minimum of 6° from each meridian and placed 12° apart. The "-4" distinguishes this from a similar 60° pattern having 4 additional points
  value111803,

  /// Display: Visual Field Macula Test Pattern
  /// Definition: Test pattern consisting of 16 test point locations within 10° of fixation a minimum of 1° from each meridian and placed 2° apart
  value111804,

  /// Display: Visual Field Central 40 Point Test Pattern
  /// Definition: Test pattern consisting of 40 test point locations within 30° of fixation that spread out radially from fixation
  value111805,

  /// Display: Visual Field Central 76 Point Test Pattern
  /// Definition: Test pattern consisting of 76 test point locations within 30° of fixation a minimum of 3° from each meridian and placed 6° apart
  value111806,

  /// Display: Visual Field Peripheral 60 Point Test Pattern
  /// Definition: Test pattern consisting of 60 test point locations between 30° and 60° of fixation a minimum of 6° from each meridian and placed 12° apart
  value111807,

  /// Display: Visual Field Full Field 81 Point Test Pattern
  /// Definition: Test pattern consisting of 81 test point locations within 60° of fixation that spread out radially from fixation
  value111808,

  /// Display: Visual Field Full Field 120 Point Test Pattern
  /// Definition: Test pattern consisting of 120 test point locations within 60° of fixation that spread out radially from fixation, concentrated in the nasal hemisphere
  value111809,

  /// Display: Visual Field G Test Pattern
  /// Definition: Test pattern for Glaucoma and general visual field assessment with 59 test locations of which 16 test locations are in the macular area (up to 10° eccentricity) and where the density of test location is reduced with eccentricity. The test can be extended with the inclusion of 14 test locations between 30° and 60° eccentricity, 6 of which are located at the nasal step
  value111810,

  /// Display: Visual Field M Test Pattern
  /// Definition: Test pattern for the macular area. Orthogonal test pattern with 0.7° spacing within the central 4° of eccentricity and reduced density of test locations between 4 and 10, 5° of eccentricity. 81 test locations over all. The test can be extended to include the test locations of the Visual Field G Test Pattern between 10, 5° and 60°
  value111811,

  /// Display: Visual Field 07 Test Pattern
  /// Definition: Full field test pattern with 48 test locations from 0-30° and 82 test locations from 30-70°. Reduced test point density with increased eccentricity. Can be combined with screening and threshold strategies
  value111812,

  /// Display: Visual Field LVC Test Pattern
  /// Definition: Low Vision Central. Orthogonal off-center test pattern with 6° spacing. 75 test locations within the central 30°. Corresponds with the 32/30-2 excluding the 2 locations at the blind spot, including a macular test location. The LVC is linked with a staircase threshold strategy starting at 0 dB intensity and applies stimulus area V
  value111813,

  /// Display: Visual Field Central Test Pattern
  /// Definition: General test corresponding to the 30-2 but excluding the 2 test locations in the blind spot area, hence with 74 instead of 76 test locations
  value111814,

  /// Display: Visual Field SITA-Standard Test Strategy
  /// Definition: Swedish Interactive Thresholding Algorithm (SITA). Strategy gains testing efficiency through use of visual field and information theory models. In: Bengtsson B, Olsson J, Heijl A, Rootzen H. A new generation of algorithms for computerized threshold perimetry, SITA. Acta Ophthalmologica Scandinavica, 1997, 75: 368-375
  value111815,

  /// Display: Visual Field SITA-SWAP Test Strategy
  /// Definition: Adaptation of SITA testing methods to Blue-Yellow testing
  value111816,

  /// Display: Visual Field SITA-Fast Test Strategy
  /// Definition: Similar to SITA-Standard but with less strict criteria for closing test points. Intended for patients who must be tested in the shortest possible time. In: Bengtsson B, Hejl A. SITA Fast, a new rapid perimetric threshold test. Description of methods and evaluation in patients with manifest and suspect glaucoma. Acta Ophthalmologica Scandinavica, 1998, 76: 431-437
  value111817,

  /// Display: Visual Field Full Threshold Test Strategy
  /// Definition: Threshold test algorithm that determines a patient's sensitivity at each test point in the threshold test pattern by adjusting intensity by 4 dB steps until the patient changes their response, and then adjusts the intensity in the opposite direction by 2 dB steps until the patient changes their response again. The last stimulus seen by the patient is recognized as the threshold for that point. The starting values are determined by first thresholding a "primary" point in each quadrant then using the results of each primary point to determine the starting values for neighboring points
  value111818,

  /// Display: Visual Field FastPac Test Strategy
  /// Definition: Similar to the Full Threshold algorithm except that it steps by 3 dB and only crosses the threshold only once. In: Flanagan JG, Wild JM, Trope GE. Evaluation of FASTPAC, a new strategy for threshold estimation with the Humphrey Field Analyzer, in a glaucomatous population. Ophthalmology, 1993, 100: 949-954
  value111819,

  /// Display: Visual Field Full From Prior Test Strategy
  /// Definition: Identical to Full Threshold except that starting values are determined by the results of a previous test performed using the same test pattern and the Full Threshold test strategy
  value111820,

  /// Display: Visual Field Optima Test Strategy
  /// Definition: Similar to FastPac except that the steps are pseudo-dynamic (differ based on the intensity of the last presentation)
  value111821,

  /// Display: Visual Field Two-Zone Test Strategy
  /// Definition: Suprathreshold testing strategy, in which each point is initially tested using stimulus that is 6 dB brighter than the expected hill of vision. If the patient does not respond, the stimulus is presented a second time at the same brightness. If the patient sees either presentation, the point is marked as "seen"; otherwise it is marked as "not seen"
  value111822,

  /// Display: Visual Field Three-Zone Test Strategy
  /// Definition: An extension of the two-zone strategy in which test points where the second stimulus is not seen are presented with a third stimulus at maximum brightness
  value111823,

  /// Display: Visual Field Quantify-Defects Test Strategy
  /// Definition: An extension of the two-zone strategy, in which test points where the second stimulus is not seen receive threshold testing to quantify the depth of any detected scotomas
  value111824,

  /// Display: Visual Field TOP Test Strategy
  /// Definition: Tendency Oriented Perimetry. Fast thresholding algorithm. Test strategy makes use of the interaction between neighboring test locations to reduce the test time compared to normal full threshold strategy by 60-80%. In: Morales J, Weitzman ML, Gonzalez de la Rosa M. Comparison between Tendency-Oriented Perimetry (TOP) and octopus threshold perimetry. Ophthalmology, 2000, 107: 134-142
  value111825,

  /// Display: Visual Field Dynamic Test Strategy
  /// Definition: Dynamic strategy is a fast thresholding strategy reducing test duration by adapting the dB step sizes according to the frequency-of-seeing curve of the threshold. Reduction of test time compared to normal full threshold strategy 30-50%
  value111826,

  /// Display: Visual Field Normal Test Strategy
  /// Definition: Traditional full threshold staircase strategy. Initial intensities are presented, based on anchor point sensitivities in each quadrant and based on already known neighboring sensitivities. In a first run, thresholds are changed in 4dB steps until the first response reversal. Then the threshold is changed in 2 dB steps until the second response reversal. The threshold is calculated as the average between the last seen and last not-seen stimulus, supposed to correspond with the 50% point in the frequency-of-seeing curve
  value111827,

  /// Display: Visual Field 1-LT Test Strategy
  /// Definition: One level screening test: Each test location is tested with a single intensity. The result is shown as seen or not-seen. The intensity can either be a 0 dB stimulus or a predefined intensity
  value111828,

  /// Display: Visual Field 2-LT Test Strategy
  /// Definition: Two level screening test: Each test location is initially tested 6 dB brighter than the age corrected normal value
  value111829,

  /// Display: Visual Field LVS Test Strategy
  /// Definition: Low Vision Strategy is a full threshold normal strategy with the exception that it starts at 0 dB intensity and applies stimulus area V
  value111830,

  /// Display: Visual Field GATE Test Strategy
  /// Definition: German Adaptive Threshold Estimation is a fast strategy based on a modified 4-2 staircase algorithm, using prior visual fields to calculate the starting intensity. In: Chiefer U, Pascual JP, Edmunds B, Feudner E, Hoffmann EM, Johnson CA, Lagreze WA, Pfeiffer N, Sample PA, Staubach F, Weleber RG, Vonthein R, Krapp E, Paetzold J. Comparison of the new perimetric GATE strategy with conventional full-threshold and SITA standard strategies. Investigative Ophthalmology and Visual Science, 2009, 51: 488-494
  value111831,

  /// Display: Visual Field GATEi Test Strategy
  /// Definition: Similar to GATE. The i stands for initial. If there was no prior visual field test to calculate the starting values, an anchor point method is used to define the local start values
  value111832,

  /// Display: Visual Field 2LT-Dynamic Test Strategy
  /// Definition: A test started as two level screening test. In the course of the test, the threshold of relative defects and/or normal test locations has been quantified using the dynamic threshold strategy
  value111833,

  /// Display: Visual Field 2LT-Normal Test Strategy
  /// Definition: A test started as two level screening test. In the course of the test, the threshold of relative defects and/or normal test locations has been quantified using the normal full threshold strategy
  value111834,

  /// Display: Visual Field Fast Threshold Test Strategy
  /// Definition: Takes neighborhood test point results into account and offers stimuli with an adapted value to save time
  value111835,

  /// Display: Visual Field CLIP Test Strategy
  /// Definition: Continuous Luminance Incremental Perimetry, which measures at first the individual reaction time of the patient and threshold values in every quadrant. The starting value for the main test is slightly below in individual threshold
  value111836,

  /// Display: Visual Field CLASS Strategy
  /// Definition: A supra threshold screening strategy. The starting stimuli intensities depend on the classification of the patient's visual hill by measuring the central (fovea) or peripheral (15° meridian) threshold. The result of each dot slightly underestimates the sensitivity value (within 5 dB)
  value111837,

  /// Display: Age corrected
  /// Definition: Mode for determining the starting luminance for screening test points - the starting luminance s is chosen based on the age of the patient
  value111838,

  /// Display: Threshold related
  /// Definition: Mode for determining the starting luminance for screening test points - the starting luminance is chosen based on the results of thresholding a set of "primary" test points (one in each quadrant)
  value111839,

  /// Display: Single luminance
  /// Definition: Mode for determining the starting luminance for screening test points - in this case, all starting luminance is set to the same value
  value111840,

  /// Display: Foveal sensitivity related
  /// Definition: Mode for determining the starting luminance for screening test points - the starting luminance is chosen based on the result of the foveal threshold value
  value111841,

  /// Display: Related to non macular sensitivity
  /// Definition: Mode for determining the starting luminance for screening test points - the starting luminance is chosen based on the result of four threshold values measured near the 15° meridian (one in each quadrant)
  value111842,

  /// Display: Automated Optical
  /// Definition: Real time evaluation of the camera image to recognize blinks and fixation losses with influence on the test procedure. Blinks that interfere with stimuli presentation cause the automated repetition of such stimulus presentations. Fixation losses can be used to delay the stimulus presentation until correct fixation is regained
  value111843,

  /// Display: Blind Spot Monitoring
  /// Definition: A method of monitoring the patient's fixation by periodically presenting stimulus in a location on the background surface that corresponds to the patient's blind spot
  value111844,

  /// Display: Macular Fixation Testing
  /// Definition: A method of monitoring the patient's fixation by presenting the stimulus to the patient's macula
  value111845,

  /// Display: Observation by Examiner
  /// Definition: A method of monitoring the patient's fixation by observation from the examiner of the patient
  value111846,

  /// Display: Outside normal limits
  /// Definition: Analysis Results are outside normal limits
  value111847,

  /// Display: Borderline
  /// Definition: Analysis Results are borderline
  value111848,

  /// Display: Abnormally high sensitivity
  /// Definition: Analysis Results identify abnormally high sensitivity
  value111849,

  /// Display: General reduction in sensitivity
  /// Definition: Analysis Results identify general reduction in sensitivity
  value111850,

  /// Display: Borderline and general reduction in sensitivity
  /// Definition: Analysis Results identify Borderline and general reduction in sensitivity
  value111851,

  /// Display: Visual Field Index
  /// Definition: Index of a patient's remaining visual field normalized for both age and generalized defect
  value111852,

  /// Display: Visual Field Loss Due to Diffuse Defect
  /// Definition: Estimate of the portion of a patient's visual field loss that is diffuse (i.e., spread evenly across all portions of the visual field)
  value111853,

  /// Display: Visual Field Loss Due to Local Defect
  /// Definition: Estimate of the portion of a patient's visual field loss that is local (i.e., not spread evenly across all portions of the visual field)
  value111854,

  /// Display: Glaucoma Hemifield Test Analysis
  /// Definition: An analysis of asymmetry between zones of the superior and inferior visual field. It is designed to be specific for defects due to glaucoma
  value111855,

  /// Display: Optical Fixation Measurements
  /// Definition: The data output of an optical fixation monitoring process, consisting of a list of positive and negative numbers indicating the quality of patient fixation over the course of a visual field test. The value 0 represents the initial fixation. Negative numbers indicate a measuring error (i.e., the patient blinked). Positive numbers quantify the degree of eccentricity from initial fixation
  value111856,

  /// Display: Macula centered
  /// Definition: An image of at least 15° angular subtend that is centered on the macula; see Section U.1.8 "Relative Image Position Definitions" in PS3.17
  value111900,

  /// Display: Disc centered
  /// Definition: An image of at least 15° angular subtend that is centered on the optic disc; see Section U.1.8 "Relative Image Position Definitions" in PS3.17
  value111901,

  /// Display: Lesion centered
  /// Definition: An image of any angular subtend that is centered on a lesion located in any region of the fundus; see Section U.1.8 "Relative Image Position Definitions" in PS3.17
  value111902,

  /// Display: Disc-macula centered
  /// Definition: An image of at least 15° angular subtend centered midway between the disc and macula and containing at least a portion of the disc and both the disc and the macula; see Section U.1.8 "Relative Image Position Definitions" in PS3.17
  value111903,

  /// Display: Mid-peripheral-superior
  /// Definition: An image of at least 15° angular subtend positioned between the central zone and the equator, and spanning both the superior-temporal and superior-nasal quadrants of the fundus; see Section U.1.8 "Relative Image Position Definitions" in PS3.17
  value111904,

  /// Display: Mid-peripheral-superior temporal
  /// Definition: An image of at least 15° angular subtend positioned between the central zone and the equator in the superior-temporal quadrant of the fundus; see Section U.1.8 "Relative Image Position Definitions" in PS3.17
  value111905,

  /// Display: Mid-peripheral-temporal
  /// Definition: An image of at least 15° angular subtend positioned between the central zone and the equator, and spanning both the superior-temporal and inferior-temporal quadrants of the fundus; see Section U.1.8 "Relative Image Position Definitions" in PS3.17
  value111906,

  /// Display: Mid-peripheral-inferior temporal
  /// Definition: An image of at least 15° angular subtend positioned between the central zone and the equator in the inferior-temporal quadrant of the fundus; see Section U.1.8 "Relative Image Position Definitions" in PS3.17
  value111907,

  /// Display: Mid-peripheral-inferior
  /// Definition: An image of at least 15° angular subtend positioned between the central zone and the equator, and spanning both the inferior-temporal and inferior-nasal quadrants of the fundus; see Section U.1.8 "Relative Image Position Definitions" in PS3.17
  value111908,

  /// Display: Mid-peripheral-inferior nasal
  /// Definition: An image of at least 15° angular subtend positioned between the central zone and the equator in the inferior-nasal quadrant of the fundus; see Section U.1.8 "Relative Image Position Definitions" in PS3.17
  value111909,

  /// Display: Mid-peripheral-nasal
  /// Definition: An image of at least 15° angular subtend positioned between the central zone and the equator, and spanning both the superior-nasal and inferior-nasal quadrants of the fundus; see Section U.1.8 "Relative Image Position Definitions" in PS3.17
  value111910,

  /// Display: Mid-peripheral-superior nasal
  /// Definition: An image of at least 15° angular subtend positioned between the central zone and the equator in the superior-nasal quadrant of the fundus; see Section U.1.8 "Relative Image Position Definitions" in PS3.17
  value111911,

  /// Display: Peripheral-superior
  /// Definition: An image of at least 15° angular subtend positioned between the equator and the ora serrata, and spanning both the superior temporal and superior nasal quadrants of the fundus; see Section U.1.8 "Relative Image Position Definitions" in PS3.17
  value111912,

  /// Display: Peripheral-superior temporal
  /// Definition: An image of at least 15° angular subtend positioned between the equator and ora serrata in the superior-temporal quadrant of the fundus; see Section U.1.8 "Relative Image Position Definitions" in PS3.17
  value111913,

  /// Display: Peripheral-temporal
  /// Definition: An image of at least 15° angular subtend positioned between the equator and ora serrata, and spanning both the superior-temporal and inferior-temporal quadrants of the fundus; see Section U.1.8 "Relative Image Position Definitions" in PS3.17
  value111914,

  /// Display: Peripheral-inferior temporal
  /// Definition: An image of at least 15° angular subtend positioned between the equator and ora serrata in the inferior-temporal quadrant of the fundus; see Section U.1.8 "Relative Image Position Definitions" in PS3.17
  value111915,

  /// Display: Peripheral-inferior
  /// Definition: An image of at least 15° angular subtend positioned between the equator and ora serrata, and spanning both the inferior-temporal and inferior-nasal quadrants of the fundus; see Section U.1.8 "Relative Image Position Definitions" in PS3.17
  value111916,

  /// Display: Peripheral-inferior nasal
  /// Definition: An image of at least 15° angular subtend positioned between the equator and ora serrata in the inferior-nasal quadrant of the fundus; see Section U.1.8 "Relative Image Position Definitions" in PS3.17
  value111917,

  /// Display: Peripheral-nasal
  /// Definition: An image of at least 15° angular subtend positioned between the equator and ora serrata, and spanning both the superior-nasal and inferior-nasal quadrants of the fundus; see Section U.1.8 "Relative Image Position Definitions" in PS3.17
  value111918,

  /// Display: Peripheral-superior nasal
  /// Definition: An image of at least 15° angular subtend positioned between the equator and ora serrata in the superior-nasal quadrant of the fundus; see Section U.1.8 "Relative Image Position Definitions" in PS3.17
  value111919,

  /// Display: Time domain
  /// Definition: Identifies the use of physical signals with respect to time to capture information
  value111920,

  /// Display: Spectral domain
  /// Definition: Identifies the use of physical signals with respect to multiple frequencies to capture information
  value111921,

  /// Display: No corneal compensation
  /// Definition: No compensation algorithm for corneal birefringence
  value111922,

  /// Display: Corneal birefringence compensation
  /// Definition: Algorithm to compensate for variability in corneal birefringence
  value111923,

  /// Display: Retinal topography
  /// Definition: Measurement of the retinal surface contour relative to an assigned datum plane
  value111924,

  /// Display: Retinal nerve fiber layer thickness
  /// Definition: Measurement approximating the distance related to the structure between the internal limiting membrane (ILM) and the outer boarder of the retinal nerve fiber layer (RNFL); see Section III.6 "Retinal Thickness Definition" in PS3.17
  value111925,

  /// Display: Ganglion cell complex thickness
  /// Definition: Measurement approximating the distance related to the structure between the ILM and the outer border of the inner plexiform layer (IPL), called the ganglion cell complex (GCC); see Section III.6 "Retinal Thickness Definition" in PS3.17
  value111926,

  /// Display: Total retinal thickness (ILM to IS-OS)
  /// Definition: Measurement approximating the distance related to the structure between the ILM and the inner-outer segment junction (IS-OS); see Section III.6 "Retinal Thickness Definition" in PS3.17
  value111927,

  /// Display: Total retinal thickness (ILM to RPE)
  /// Definition: Measurement approximating the distance related to the structure between the ILM and the retinal pigment epithelium (RPE); see Section III.6 "Retinal Thickness Definition" in PS3.17
  value111928,

  /// Display: Total retinal thickness (ILM to BM)
  /// Definition: Measurement approximating the distance related to the structure between the ILM and the Bruch's membrane (BM); see Section III.6 "Retinal Thickness Definition" in PS3.17
  value111929,

  /// Display: Absolute ophthalmic thickness
  /// Definition: Thickness of a component of the posterior segment of the eye; e.g. thickness of retina, choroid, etc.
  value111930,

  /// Display: Thickness deviation category from normative data
  /// Definition: Ophthalmic Thickness map based upon statistical significance category (such as percentile) from a normative data set
  value111931,

  /// Display: Thickness deviation from normative data
  /// Definition: Ophthalmic Thickness map based upon deviation (such as microns) from a normative data set
  value111932,

  /// Display: Related ophthalmic thickness map
  /// Definition: Ophthalmic Thickness Map related to another Ophthalmic Thickness Map or another SOP Instance
  value111933,

  /// Display: Disc-Fovea
  /// Definition: An anatomic point centered midway between the disc and fovea centralis
  value111934,

  /// Display: p>5%
  /// Definition: Assuming the null hypothesis is true, the conditional percent probability of observing this result is not statistically significant
  value111935,

  /// Display: p<5%
  /// Definition: Assuming the null hypothesis is true, the conditional percent probability of observing this result is statistically significant, 95% unlikely to happen by chance
  value111936,

  /// Display: p<2%
  /// Definition: Assuming the null hypothesis is true, the conditional percent probability of observing this result is statistically significant, 98% unlikely to happen by chance
  value111937,

  /// Display: p<1%
  /// Definition: Assuming the null hypothesis is true, the conditional percent probability of observing this result is statistically significant, 99% unlikely to happen by chance
  value111938,

  /// Display: p<0.5%
  /// Definition: Assuming the null hypothesis is true, the conditional percent probability of observing this result is statistically significant, 99.5% unlikely to happen by chance
  value111939,

  /// Display: Corneal axial power map
  /// Definition: A two dimensional representation of the axial curvature of the cornea. Axial curvature is calculated from the reciprocal of the distance from a point on a meridian normal at the point to the corneal topographer axis. Also known as sagittal curvature
  value111940,

  /// Display: Corneal instantaneous power map
  /// Definition: A two dimensional representation of the instantaneous curvature of the cornea. Instantaneous curvature is calculated from the reciprocal of the distance from a point on a meridian normal at the point to the center of curvature of that point. Also called tangential curvature
  value111941,

  /// Display: Corneal refractive power map
  /// Definition: A two dimensional representation of the refractive power of the cornea. Corneal refractive power is calculated using Snell's Law
  value111942,

  /// Display: Corneal elevation map
  /// Definition: A two dimensional representation of the elevation of the cornea. Elevation is calculated as the distance from a point on the corneal surface to a point on a reference surface along a line parallel to the corneal topographer axis. For the purpose of visualization the reference surface is usually a sphere or an ellipse
  value111943,

  /// Display: Corneal wavefront map
  /// Definition: A two dimensional representation of a wavefront aberration surface of the cornea. Wavefront aberration surface is calculated from the corneal elevation data fit with either the Zernike polynomial series or the Fourier Series. Maps generally display total aberrations and selectable higher order aberrations
  value111944,

  /// Display: Elevation-based corneal tomographer
  /// Definition: A device that measures corneal anterior surface shape using elevation-based methods (stereographic and light slit-based). Rasterstereography images a grid pattern illuminating the fluorescein dyed tear film with 2 cameras to produce 3D. Slit-based devices scan the cornea, usually by rotation about the instrument axis centered on the cornea vertex
  value111945,

  /// Display: Reflection-based corneal topographer
  /// Definition: A reflection-based device that projects a pattern of light onto the cornea and an image of the reflection of that pattern from the tear film is recorded in one video frame. Light patterns include the circular mire pattern (Placido disc) and spot matrix patterns. Sequential scanning of light spots reflected from the corneal surface is also used requiring multiple video frames for recording
  value111946,

  /// Display: Interferometry-based corneal tomographer
  /// Definition: An Interference-based device that projects a beam of light onto and through the cornea. Light reflected from within the cornea is combined with a reference beam giving rise to an interference pattern. Appropriately scanned, this imaging is used to construct 3-dimensional images of the cornea from anterior to posterior surfaces; e.g. swept source OCT
  value111947,

  /// Display: Chest CAD Report
  /// Definition: A structured report containing the results of computer-aided detection or diagnosis applied to chest imaging and associated clinical information
  value112000,

  /// Display: Opacity
  /// Definition: The shadow of an absorber that attenuates the X-Ray beam more effectively than do surrounding absorbers. In a radiograph, any circumscribed area that appears more nearly white (of lesser photometric density) than its surround [Fraser and Pare]
  value112001,

  /// Display: Series Instance UID
  /// Definition: A unique identifier for a series of DICOM SOP instances
  value112002,

  /// Display: Associated Chest Component
  /// Definition: A named anatomic region within the chest cavity
  value112003,

  /// Display: Abnormal interstitial pattern
  /// Definition: A collection of opacities detected within the continuum of loose connective tissue throughout the lung, that is not expected in a diagnostically normal radiograph
  value112004,

  /// Display: Radiographic anatomy
  /// Definition: A type of anatomy that is expected to be detectable on a radiographic (X-Ray based) image
  value112005,

  /// Display: Distribution Descriptor
  /// Definition: Characteristic of the extent of spreading of a finding or feature
  value112006,

  /// Display: Border definition
  /// Definition: Characteristic of the clarity of the boundary or edges of a finding or feature
  value112007,

  /// Display: Site involvement
  /// Definition: The part(s) of the anatomy affected or encompassed by a finding or feature
  value112008,

  /// Display: Type of Content
  /// Definition: Characteristic of the matter or substance within a finding or feature
  value112009,

  /// Display: Texture Descriptor
  /// Definition: Characteristic of the surface or consistency of a finding or feature
  value112010,

  /// Display: Positioner Primary Angle
  /// Definition: Position of the X-Ray beam about the patient from the RAO to LAO direction where movement from RAO to vertical is positive
  value112011,

  /// Display: Positioner Secondary Angle
  /// Definition: Position of the X-Ray beam about the patient from the caudal to cranial direction where movement from caudal to vertical is positive
  value112012,

  /// Display: Location in Chest
  /// Definition: The zone, lobe or segment within the chest cavity in which a finding or feature is situated
  value112013,

  /// Display: Orientation Descriptor
  /// Definition: Vertical refers to orientation parallel to the superior-inferior (cephalad-caudad) axis of the body, with horizontal being perpendicular to this, and an oblique orientation having projections in both the horizontal and vertical
  value112014,

  /// Display: Border shape
  /// Definition: Characteristic of the shape formed by the boundary or edges of a finding or feature
  value112015,

  /// Display: Baseline Category
  /// Definition: Indicates whether a finding was considered a target lesion, non-target lesion, or non-lesion during evaluation of a baseline series, according to a method such as RECIST
  value112016,

  /// Display: Cavity extent as percent of volume
  /// Definition: The extent of a detected cavity, represented as the percent of the surrounding volume that it occupies
  value112017,

  /// Display: Calcification extent as percent of surface
  /// Definition: The extent of a detected calcification, represented as the percent of the surrounding surface that it occupies
  value112018,

  /// Display: Calcification extent as percent of volume
  /// Definition: The extent of a detected calcification, represented as the percent of the surrounding volume that it occupies
  value112019,

  /// Display: Response Evaluation
  /// Definition: A heading for the reporting of response evaluation for treatment of solid tumors
  value112020,

  /// Display: Response Evaluation Method
  /// Definition: The system applied in the reporting of response evaluation for treatment of solid tumors
  value112021,

  /// Display: RECIST
  /// Definition: Response Evaluation Criteria In Solid Tumors; see Normative References
  value112022,

  /// Display: Composite Feature Modifier
  /// Definition: A term that further specifies the name of an item that is an inferred correlation relating two or more individual findings or features
  value112023,

  /// Display: Single Image Finding Modifier
  /// Definition: A term that further specifies the name of an item that was detected on one image
  value112024,

  /// Display: Size Descriptor
  /// Definition: A qualitative descriptor for the extent of a finding or feature
  value112025,

  /// Display: Width Descriptor
  /// Definition: A qualitative descriptor for the thickness of tubular structures, such as blood vessels
  value112026,

  /// Display: Opacity Descriptor
  /// Definition: A characteristic that further describes the nature of an opacity
  value112027,

  /// Display: Abnormal Distribution of Anatomic Structure
  /// Definition: The type of adverse affect that a finding or feature is having on the surrounding anatomy
  value112028,

  /// Display: WHO
  /// Definition: Response evaluation method as defined in chapter 5, "Reporting of Response" of the WHO Handbook for Reporting Results for Cancer Treatment; see Normative References
  value112029,

  /// Display: Calcification Descriptor
  /// Definition: Identification of the morphology of detected calcifications
  value112030,

  /// Display: Attenuation Coefficient
  /// Definition: A quantitative numerical statement of the relative attenuation of the X-Ray beam at a specified point. Coefficient that describes the fraction of a beam of X-Rays or gamma rays that is absorbed or scattered per unit thickness of the absorber. This value basically accounts for the number of atoms in a cubic cm volume of material and the probability of a photon being scattered or absorbed from the nucleus or an electron of one of these atoms. Usually expressed in Hounsfield units [referred to as CT Number in Fraser and Pare]
  value112031,

  /// Display: Threshold Attenuation Coefficient
  /// Definition: An X-Ray attenuation coefficient that is used as a threshold; e.g. in calcium scoring
  value112032,

  /// Display: Abnormal opacity
  /// Definition: An opacity that is not expected in a diagnostically normal radiograph
  value112033,

  /// Display: Calculation Description
  /// Definition: A textual description of the mathematical method of calculation that resulted in a calculated value
  value112034,

  /// Display: Performance of Pediatric and Adult Chest Radiography, ACR
  /// Definition: American College of Radiology. ACR Standard for the Performance of Pediatric and Adult Chest Radiography. In: Standards. Reston, Va: 2001:95-98
  value112035,

  /// Display: ACR Position Statement
  /// Definition: American College of Radiology. ACR Position Statement for Quality Control and Improvement, Safety, Infection Control, and Patient Concerns. In: Practice Guidelines and Technical Standards. Reston, Va: 2001:iv
  value112036,

  /// Display: Non-lesion Modifier
  /// Definition: A descriptor for a non-lesion object finding or feature, used to indicate whether the object was detected as being internal or external to the patient's body
  value112037,

  /// Display: Osseous Modifier
  /// Definition: A concept modifier for an Osseous Anatomy, or bone related, finding
  value112038,

  /// Display: Tracking Identifier
  /// Definition: A text label used for tracking a finding or feature, potentially across multiple reporting objects, over time. This label shall be unique within the domain in which it is used
  value112039,

  /// Display: Tracking Unique Identifier
  /// Definition: A unique identifier used for tracking a finding or feature, potentially across multiple reporting objects, over time
  value112040,

  /// Display: Target Lesion Complete Response
  /// Definition: Disappearance of all target lesions
  value112041,

  /// Display: Target Lesion Partial Response
  /// Definition: At least a 30% decrease in the sum of the Longest Diameter of target lesions, taking as reference the baseline sum Longest Diameter
  value112042,

  /// Display: Target Lesion Progressive Disease
  /// Definition: At least a 20% increase in the sum of the Longest Diameter of target lesions, taking as reference the smallest sum Longest Diameter recorded since the treatment started, or the appearance of one or more new lesions
  value112043,

  /// Display: Target Lesion Stable Disease
  /// Definition: Neither sufficient shrinkage to qualify for Partial Response nor sufficient increase to qualify for Progressive Disease, taking as reference the smallest sum Longest Diameter since the treatment started
  value112044,

  /// Display: Non-Target Lesion Complete Response
  /// Definition: Disappearance of all non-target lesions and normalization of tumor marker level
  value112045,

  /// Display: Non-Target Lesion Incomplete Response or Stable Disease
  /// Definition: Persistence of one or more non-target lesions and/or maintenance of tumor marker level above the normal limits
  value112046,

  /// Display: Non-Target Lesion Progressive Disease
  /// Definition: Appearance of one or more new lesions and/or unequivocal progression of existing non-target lesions
  value112047,

  /// Display: Current Response
  /// Definition: The current response evaluation for treatment of solid tumors, according to a method such as RECIST
  value112048,

  /// Display: Best Overall Response
  /// Definition: Best response recorded from the start of the treatment until disease progression/recurrence, taking as reference for Progressive Disease the smallest measurements recorded since the treatment started, according to a method such as RECIST
  value112049,

  /// Display: Anatomic Identifier
  /// Definition: A text identifier of an anatomic feature when a multiplicity of features of that type may be present, such as "Rib 1", "Rib 2" or thoracic vertebrae "T1" or "T2"
  value112050,

  /// Display: Measurement of Response
  /// Definition: A measured or calculated evaluation of response; e.g. according to a method such as RECIST, the value would be the calculated sum of the lengths of the longest axes of a set of target lesions
  value112051,

  /// Display: Bronchovascular
  /// Definition: Of or relating to a bronchial (lung) specific channel for the conveyance of a body fluid
  value112052,

  /// Display: Osseous
  /// Definition: Of, relating to, or composed of bone
  value112053,

  /// Display: Secondary pulmonary lobule
  /// Definition: The smallest unit of lung surrounded by connective tissue septa; the unit of lung subtended by any bronchiole that gives off three to five terminal bronchioles [Fraser and Pare]
  value112054,

  /// Display: Agatston scoring method
  /// Definition: A method of calculating an overall calcium score, reflecting the calcification of coronary arteries, based on the maximum X-Ray attenuation coefficient and the area of calcium deposits
  value112055,

  /// Display: Volume scoring method
  /// Definition: A method of calculating an overall calcium score, reflecting the calcification of coronary arteries, based on the volume of each calcification, typically expressed in mm3
  value112056,

  /// Display: Mass scoring method
  /// Definition: A method of calculating an overall calcium score, reflecting the calcification of coronary arteries, based on the total mass of calcification, typically expressed in mg
  value112057,

  /// Display: Calcium score
  /// Definition: A measure often arrived at through calculation of findings from CT examination, which is a common predictor of significant stenosis of the coronary arteries
  value112058,

  /// Display: Primary complex
  /// Definition: The combination of a focus of pneumonia due to a primary infection with granulomas in the draining hilar or mediastinal lymph nodes [Fraser and Pare]
  value112059,

  /// Display: Oligemia
  /// Definition: General or local decrease in the apparent width of visible pulmonary vessels, suggesting less than normal blood flow (reduced blood flow) [Fraser and Pare]
  value112060,

  /// Display: Abnormal lines (1D)
  /// Definition: Linear opacity of very fine width, i.e., a nearly one dimensional opacity
  value112061,

  /// Display: Abnormal lucency
  /// Definition: Area of abnormal very low X-Ray attenuation, typically lower than aerated lung when occurring in or projecting over lung, or lower than soft tissue when occurring in or projecting over soft tissue
  value112062,

  /// Display: Abnormal calcifications
  /// Definition: A calcific opacity within the lung that may be organized, but does not display the trabecular organization of true bone [Fraser and Pare]
  value112063,

  /// Display: Abnormal texture
  /// Definition: Relatively homogeneous, extended, pattern of abnormal opacity in the lung, typically low in contrast
  value112064,

  /// Display: Reticulonodular pattern
  /// Definition: A collection of innumerable small, linear, and nodular opacities that together produce a composite appearance resembling a net with small superimposed nodules. The reticular and nodular elements are dimensionally of similar magnitude [Fraser and Pare]
  value112065,

  /// Display: Beaded septum sign
  /// Definition: Irregular septal thickening that suggests the appearance of a row of beads; usually a sign of lymphangitic carcinomatosis, but may also occur rarely in sarcoidosis [Fraser and Pare]
  value112066,

  /// Display: Nodular pattern
  /// Definition: A collection of innumerable, small discrete opacities ranging in diameter from 2-10 mm, generally uniform in size and widespread in distribution, and without marginal spiculation [Fraser and Pare]
  value112067,

  /// Display: Pseudoplaque
  /// Definition: An irregular band of peripheral pulmonary opacity adjacent to visceral pleura that simulates the appearance of a pleural plaque and is formed by coalescence of small nodules [Fraser and Pare]
  value112068,

  /// Display: Signet-ring sign
  /// Definition: A ring of opacities (usually representing a dilated, thick-walled bronchus) in association with a smaller, round, soft tissue opacity (the adjacent pulmonary artery) suggesting a "signet ring" [Fraser and Pare]
  value112069,

  /// Display: Air bronchiologram
  /// Definition: Equivalent of air bronchogram, but in airways assumed to be bronchioles because of peripheral location and diameter [Fraser and Pare]
  value112070,

  /// Display: Air bronchogram
  /// Definition: Radiographic shadow of an air-containing bronchus; presumed to represent an air-containing segment of the bronchial tree (identity often inferred) [Fraser and Pare]
  value112071,

  /// Display: Air crescent
  /// Definition: Air in a crescentic shape in a nodule or mass, in which the air separates the outer wall of the lesion from an inner sequestrum, which most commonly is a fungus ball of Aspergillusspecies [Fraser and Pare]
  value112072,

  /// Display: Halo sign
  /// Definition: Ground-glass opacity surrounding the circumference of a nodule or mass. May be a sign of invasive aspergillosis or hemorrhage of various causes [Fraser and Pare]
  value112073,

  /// Display: Target Lesion at Baseline
  /// Definition: Flag denoting that this lesion was identified, at baseline, as a target lesion intended for tracking over time [RECIST]
  value112074,

  /// Display: Non-Target Lesion at Baseline
  /// Definition: Flag denoting that this lesion was not identified, at baseline, as a target lesion, and was not intended for tracking over time [RECIST]
  value112075,

  /// Display: Non-Lesion at Baseline
  /// Definition: Flag denoting that this finding was identified, at baseline, as a category other than a lesion, and was not intended for tracking over time [RECIST]
  value112076,

  /// Display: Vasoconstriction
  /// Definition: Local or general reduction in the caliber of visible pulmonary vessels, presumed to result from decreased flow occasioned by contraction of muscular pulmonary arteries [Fraser and Pare]
  value112077,

  /// Display: Vasodilation
  /// Definition: Local or general increase in the width of visible pulmonary vessels resulting from increased pulmonary blood flow [Fraser and Pare]
  value112078,

  /// Display: Architectural distortion
  /// Definition: A manifestation of lung disease in which bronchi, pulmonary vessels, a fissure or fissures, or septa of secondary pulmonary lobules are abnormally displaced [Fraser and Pare]
  value112079,

  /// Display: Mosaic perfusion
  /// Definition: A patchwork of regions of varied attenuation, interpreted as secondary to regional differences in perfusion [Fraser and Pare]
  value112080,

  /// Display: Pleonemia
  /// Definition: Increased blood flow to the lungs or a portion thereof, manifested by a general or local increase in the width of visible pulmonary vessels [Fraser and Pare]
  value112081,

  /// Display: Interface
  /// Definition: The common boundary between the shadows of two juxtaposed structures or tissues of different texture or opacity (edge, border) [Fraser and Pare]
  value112082,

  /// Display: Line
  /// Definition: A longitudinal opacity no greater than 2 mm in width [Fraser and Pare]
  value112083,

  /// Display: Lucency
  /// Definition: The shadow of an absorber that attenuates the primary X-Ray beam less effectively than do surrounding absorbers. In a radiograph, any circumscribed area that appears more nearly black (of greater photometric density) than its surround [Fraser and Pare]
  value112084,

  /// Display: Midlung window
  /// Definition: A midlung region, characterized by the absence of large blood vessels and by a paucity of small blood vessels, that corresponds to the minor fissure and adjacent peripheral lung [Fraser and Pare]
  value112085,

  /// Display: Carina angle
  /// Definition: The angle formed by the right and left main bronchi at the tracheal bifurcation [Fraser and Pare]
  value112086,

  /// Display: Centrilobular structures
  /// Definition: The pulmonary artery and its immediate branches in a secondary lobule; HRCT depicts these vessels in certain cases; a.k.a. core structures or lobular core structures [Fraser and Pare]
  value112087,

  /// Display: Anterior junction line
  /// Definition: A vertically oriented linear or curvilinear opacity approximately 1-2 mm wide, commonly projected on the tracheal air shadow [Fraser and Pare]
  value112088,

  /// Display: Posterior junction line
  /// Definition: A vertically oriented, linear or curvilinear opacity approximately 2 mm wide, commonly projected on the tracheal air shadow, and usually slightly concave to the right [Fraser and Pare]
  value112089,

  /// Display: Azygoesophageal recess interface
  /// Definition: A space in the right side of the mediastinum into which the medial edge of the right lower lobe extends [Fraser and Pare]
  value112090,

  /// Display: Paraspinal line
  /// Definition: A vertically oriented interface usually seen in a frontal chest radiograph to the left of the thoracic vertebral column [Fraser and Pare]
  value112091,

  /// Display: Posterior tracheal stripe
  /// Definition: A vertically oriented linear opacity ranging in width from 2-5 mm, extending from the thoracic inlet to the bifurcation of the trachea, and visible only on lateral radiographs of the chest [Fraser and Pare]
  value112092,

  /// Display: Right tracheal stripe
  /// Definition: A vertically oriented linear opacity approximately 2-3 mm wide extending from the thoracic inlet to the right tracheobronchial angle [Fraser and Pare]
  value112093,

  /// Display: Stripe
  /// Definition: A longitudinal composite opacity measuring 2-5 mm in width; acceptable when limited to anatomic structures within the mediastinum [Fraser and Pare]
  value112094,

  /// Display: Hiatus
  /// Definition: A gap or passage through an anatomical part or organ; especially : a gap through which another part or organ passes
  value112095,

  /// Display: Rib Scalene Tubercle
  /// Definition: A small rounded elevation or eminence on the first rib for the attachment of the scalenus anterior
  value112096,

  /// Display: Vertebral Intervertebral Notch
  /// Definition: A groove that serves for the transmission of the vertebral artery
  value112097,

  /// Display: Subscapular Fossa
  /// Definition: The concave depression of the anterior surface of the scapula
  value112098,

  /// Display: Scapular Spine
  /// Definition: A sloping ridge dividing the dorsal surface of the scapula into the supraspinatous fossa (above), and the infraspinatous fossa (below)
  value112099,

  /// Display: Scapular Supraspinatus Fossa
  /// Definition: The portion of the dorsal surface of the scapula above the scapular spine
  value112100,

  /// Display: Scapular Infraspinatus Fossa
  /// Definition: The portion of the dorsal surface of the scapula below the scapular spine
  value112101,

  /// Display: Aortic knob
  /// Definition: The portion of the aortic arch that defines the transition between its ascending and descending limbs
  value112102,

  /// Display: Arch of the Azygos vein
  /// Definition: Section of Azygos vein near the fourth thoracic vertebra, where it arches forward over the root of the right lung, and ends in the superior vena cava, just before that vessel pierces the pericardium
  value112103,

  /// Display: Air-fluid level
  /// Definition: A local collection of gas and liquid that, when traversed by a horizontal X-Ray beam, creates a shadow characterized by a sharp horizontal interface between gas density above and liquid density below [Fraser and Pare]
  value112104,

  /// Display: Corona radiata
  /// Definition: A circumferential pattern of fine linear spicules, approximately 5 mm long, extending outward from the margin of a solitary pulmonary nodule through a zone of relative lucency [Fraser and Pare]
  value112105,

  /// Display: Honeycomb pattern
  /// Definition: A number of closely approximated ring shadows representing air spaces 5-10 mm in diameter with walls 2-3 mm thick that resemble a true honeycomb; implies "end-stage" lung [Fraser and Pare]
  value112106,

  /// Display: Fleischner's line(s)
  /// Definition: A straight, curved, or irregular linear opacity that is visible in multiple projections; usually situated in the lower half of the lung; vary markedly in length and width [Fraser and Pare]
  value112107,

  /// Display: Intralobular lines
  /// Definition: Fine linear opacities present in a lobule when the intralobular interstitium is thickened. When numerous, they may appear as a fine reticular pattern [Fraser and Pare]
  value112108,

  /// Display: Kerley A line
  /// Definition: Essentially straight linear opacity 2-6 cm in length and 1-3 mm in width, usually in an upper lung zone [Fraser and Pare]
  value112109,

  /// Display: Kerley B line
  /// Definition: A straight linear opacity 1.5-2 cm in length and 1-2 mm in width, usually at the lung base [Fraser and Pare]
  value112110,

  /// Display: Kerley C lines
  /// Definition: A group of branching, linear opacities producing the appearing of a fine net, at the lung base [Fraser and Pare]
  value112111,

  /// Display: Parenchymal band
  /// Definition: Elongated opacity, usually several millimeters wide and up to about 5 cm long, often extending to the pleura, which may be thickened and retracted at the site of contact [Fraser and Pare]
  value112112,

  /// Display: Reticular pattern
  /// Definition: A collection of innumerable small linear opacities that together produce an appearance resembling a net [Fraser and Pare]
  value112113,

  /// Display: Septal line(s)
  /// Definition: Usually used in the plural, a generic term for linear opacities of varied distribution produced when the interstitium between pulmonary lobules is thickened [Fraser and Pare]
  value112114,

  /// Display: Subpleural line
  /// Definition: A thin curvilinear opacity, a few millimeters or less in thickness, usually less than 1 cm from the pleural surface and paralleling the pleura [Fraser and Pare]
  value112115,

  /// Display: Tramline shadow
  /// Definition: Parallel or slightly convergent linear opacities that suggest the planar projection of tubular structures and that correspond in location and orientation to elements of the bronchial tree [Fraser and Pare]
  value112116,

  /// Display: Tubular shadow
  /// Definition: Paired, parallel, or slightly convergent linear opacities presumed to represent the walls of a tubular structure seen en face; used if the anatomic nature of a shadow is obscure [Fraser and Pare]
  value112117,

  /// Display: Density
  /// Definition: The opacity of a radiographic shadow to visible light; film blackening; the term should never be used to mean an "opacity" or "radiopacity" [Fraser and Pare]
  value112118,

  /// Display: Dependent opacity
  /// Definition: Subpleural increased attenuation in dependent lung. The increased attenuation disappears when the region of lung is nondependent; a.k.a. dependent increased attenuation [Fraser and Pare]
  value112119,

  /// Display: Ground glass opacity
  /// Definition: Hazy increased attenuation of lung, but with preservation of bronchial and vascular margins; caused by partial filling of air spaces, interstitial thickening, partial collapse of alveoli, normal expiration, or increased capillary blood volume [Fraser and Pare]
  value112120,

  /// Display: Infiltrate
  /// Definition: Any ill-defined opacity in the lung [Fraser and Pare]
  value112121,

  /// Display: Micronodule
  /// Definition: Discrete, small, round, focal opacity of at least soft tissue attenuation and with a diameter no greater than 7 mm [Fraser and Pare]
  value112122,

  /// Display: Phantom tumor (pseudotumor)
  /// Definition: A shadow produced by a local collection of fluid in one of the interlobar fissures, usually elliptic in one radiographic projection and rounded in the other, resembling a tumor [Fraser and Pare]
  value112123,

  /// Display: Shadow
  /// Definition: Any perceptible discontinuity in film blackening attributed to the attenuation of the X-Ray beam by a specific anatomic absorber or lesion on or within the body of the patient; to be employed only when more specific identification is not possible [Fraser and Pare]
  value112124,

  /// Display: Small irregular opacities
  /// Definition: Term used to define a reticular pattern specific to pneumoconioses [Fraser and Pare]
  value112125,

  /// Display: Small rounded opacities
  /// Definition: Term used to define a nodular pattern specific to pneumoconioses [Fraser and Pare]
  value112126,

  /// Display: Tree-in-bud sign
  /// Definition: Nodular dilation of centrilobular branching structures that resembles a budding tree and represents exudative bronchiolar dilation [Fraser and Pare]
  value112127,

  /// Display: Granular pattern
  /// Definition: Any extended, finely granular pattern of pulmonary opacity within which normal anatomic details are partly obscured [Fraser and Pare]
  value112128,

  /// Display: Miliary pattern
  /// Definition: A collection of tiny discrete opacities in the lungs, each measuring 2 mm or less in diameter, generally uniform in size and widespread in distribution [Fraser and Pare]
  value112129,

  /// Display: Mosaic pattern
  /// Definition: Generalized pattern of relatively well defined areas in the lung having different X-Ray attenuations due to a longstanding underlying pulmonary disease
  value112130,

  /// Display: Extremely small
  /// Definition: A qualitative descriptor of a size that is dramatically less than typical
  value112131,

  /// Display: Very small
  /// Definition: A qualitative descriptor of a size that is considerably less than typical
  value112132,

  /// Display: Too small
  /// Definition: A qualitative descriptor of a size that is so small as to be abnormal versus expected size
  value112133,

  /// Display: Elliptic
  /// Definition: Shaped like an ellipse (oval)
  value112134,

  /// Display: Lobulated
  /// Definition: A border shape that is made up of, provided with, or divided into lobules (small lobes, curved or rounded projections or divisions)
  value112135,

  /// Display: Spiculated
  /// Definition: Radially orientated border shape
  value112136,

  /// Display: Sharply defined
  /// Definition: The border of a shadow (opacity) is sharply defined [Fraser and Pare]
  value112137,

  /// Display: Distinctly defined
  /// Definition: The border of a shadow (opacity) is distinctly defined [Fraser and Pare]
  value112138,

  /// Display: Well demarcated
  /// Definition: The border of a shadow (opacity) is well distinct from adjacent structures [Fraser and Pare]
  value112139,

  /// Display: Sharply demarcated
  /// Definition: The border of a shadow (opacity) is sharply distinct from adjacent structures [Fraser and Pare]
  value112140,

  /// Display: Poorly demarcated
  /// Definition: The border of a shadow (opacity) is poorly distinct from adjacent structures [Fraser and Pare]
  value112141,

  /// Display: Circumscribed
  /// Definition: A shadow (opacity) possessing a complete or nearly complete visible border [Fraser and Pare]
  value112142,

  /// Display: Air
  /// Definition: Inspired atmospheric gas. The word is sometimes used to describe gas within the body regardless of its composition or site [Fraser and Pare]
  value112143,

  /// Display: Soft tissue
  /// Definition: Material having X-Ray attenuation properties similar to muscle
  value112144,

  /// Display: Calcium
  /// Definition: Material having X-Ray attenuation properties similar to calcium, a silver-white bivalent metallic element occurring in plants and animals
  value112145,

  /// Display: Acinar
  /// Definition: A pulmonary opacity 4-8 mm in diameter, presumed to represent anatomic acinus, or a collection of opacities in the lung, each measuring 4-8 mm in diameter, and together producing an extended, homogeneous shadow [Fraser and Pare]
  value112146,

  /// Display: Air space
  /// Definition: The gas-containing portion of the lung parenchyma, including the acini and excluding the interstitium [Fraser and Pare]
  value112147,

  /// Display: Fibronodular
  /// Definition: Sharply defined, approximately circular opacities occurring singly or in clusters, usually in the upper lobes [Fraser and Pare]
  value112148,

  /// Display: Fluffy
  /// Definition: A shadow (opacity) that is ill-defined, lacking clear-cut margins [Fraser and Pare]
  value112149,

  /// Display: Linear
  /// Definition: A shadow resembling a line; any elongated opacity of approximately uniform width [Fraser and Pare]
  value112150,

  /// Display: Profusion
  /// Definition: The number of small opacities per unit area or zone of lung. In the International Labor Organization (ILO) classification of radiographs of the pneumoconioses, the qualifiers 0 through 3 subdivide the profusion into 4 categories. The profusion categories may be further subdivided by employing a 12-point scale [Fraser and Pare]
  value112151,

  /// Display: Silhouette sign
  /// Definition: The effacement of an anatomic soft tissue border by either a normal anatomic structure or a pathologic state such as airlessness of adjacent lung or accumulation of fluid in the contiguous pleural space; useful in detecting and localizing an opacity along the axis of the X-Ray beam [Fraser and Pare]
  value112152,

  /// Display: Subpleural
  /// Definition: Situated or occurring between the pleura and the body wall
  value112153,

  /// Display: Bat's wing distribution
  /// Definition: Spatial arrangement of opacities that bears vague resemblance to the shape of a bat in flight; bilaterally symmetric [Fraser and Pare]
  value112154,

  /// Display: Butterfly distribution
  /// Definition: Spatial arrangement of opacities that bears vague resemblance to the shape of a butterfly in flight; bilaterally symmetric [Fraser and Pare]
  value112155,

  /// Display: Centrilobular
  /// Definition: Referring to the region of the bronchioloarteriolar core of a secondary pulmonary lobule [Fraser and Pare]
  value112156,

  /// Display: Coalescent
  /// Definition: The joining together of a number of opacities into a single opacity [Fraser and Pare]
  value112157,

  /// Display: Lobar
  /// Definition: Of or relating to a lobe (a curved or rounded projection or division); e.g. involving an entire lobe of the lung
  value112158,

  /// Display: Hyper-acute
  /// Definition: Extremely or excessively acute, as a qualitative measure of severity
  value112159,

  /// Display: Homogeneous (uniform opacity)
  /// Definition: Of uniform opacity or texture throughout [Fraser and Pare]
  value112160,

  /// Display: Inhomogeneous
  /// Definition: Lack of homogeneity in opacity or texture
  value112161,

  /// Display: Target
  /// Definition: Discrete opacity centrally within a larger opacity, as a calcification descriptor
  value112162,

  /// Display: Fibrocalcific
  /// Definition: Pertaining to sharply defined, linear, and/or nodular opacities containing calcification(s) [Fraser and Pare]
  value112163,

  /// Display: Flocculent
  /// Definition: Calcifications made up of loosely aggregated particles, resembling wool
  value112164,

  /// Display: Difference in border shape
  /// Definition: A change in the shape formed by the boundary or edges of a finding or feature
  value112165,

  /// Display: Difference in border definition
  /// Definition: A change in the clarity of the boundary or edges of a finding or feature
  value112166,

  /// Display: Difference in distribution
  /// Definition: A change in the extent of spreading of a finding or feature
  value112167,

  /// Display: Difference in site involvement
  /// Definition: A change in the part(s) of the anatomy affected or encompassed by a finding or feature
  value112168,

  /// Display: Difference in Type of Content
  /// Definition: A change in the matter or substance within a finding or feature
  value112169,

  /// Display: Difference in Texture
  /// Definition: A change in the surface or consistency of a finding or feature
  value112170,

  /// Display: Fiducial mark
  /// Definition: A location in image space, which may or may not correspond to an anatomical reference, which is often used for registering data sets
  value112171,

  /// Display: Portacath
  /// Definition: Connected to an injection chamber placed under the skin in the upper part of the chest. When it is necessary to inject some drug, a specific needle is put in the chamber through the skin and a silicon membrane. The advantage of a portacath is that it may be left in place several months contrarily of "classical" catheters
  value112172,

  /// Display: Chest tube
  /// Definition: A tube inserted into the chest wall from outside the body, for drainage. Sometimes used for collapsed lung. Usually connected to a receptor placed lower than the insertion site
  value112173,

  /// Display: Central line
  /// Definition: A tube placed into the subclavian vein to deliver medication directly into the venous system
  value112174,

  /// Display: Kidney stent
  /// Definition: A stent is a tube inserted into another tube. Kidney stent is a tube that is inserted into the kidney, ureter, and bladder, to help drain urine. Usually inserted through a scoping device presented through the urethra
  value112175,

  /// Display: Pancreatic stent
  /// Definition: A stent is a tube inserted into another tube. Pancreatic stent is inserted through the common bile duct to the pancreatic duct, to drain bile
  value112176,

  /// Display: Nipple ring
  /// Definition: A non-lesion object that appears to be a circular band, attached to the body via pierced nipple
  value112177,

  /// Display: Coin
  /// Definition: A non-lesion object that appears to be a flat round piece of metal
  value112178,

  /// Display: Minimum Attenuation Coefficient
  /// Definition: The least quantity assignable, admissible, or possible; the least of a set of X-Ray attenuation coefficients
  value112179,

  /// Display: Maximum Attenuation Coefficient
  /// Definition: The greatest quantity or value attainable or attained; the largest of a set of X-Ray attenuation coefficients
  value112180,

  /// Display: Mean Attenuation Coefficient
  /// Definition: The value that is computed by dividing the sum of a set of X-Ray attenuation coefficients by the number of values
  value112181,

  /// Display: Median Attenuation Coefficient
  /// Definition: The value in an ordered set of X-Ray attenuation coefficients, below and above which there is an equal number of values
  value112182,

  /// Display: Standard Deviation of Attenuation Coefficient
  /// Definition: For a set of X-Ray attenuation coefficients: 1) a measure of the dispersion of a frequency distribution that is the square root of the arithmetic mean of the squares of the deviation of each of the class frequencies from the arithmetic mean of the frequency distribution; 2) a parameter that indicates the way in which a probability function or a probability density function is centered around its mean and that is equal to the square root of the moment in which the deviation from the mean is squared
  value112183,

  /// Display: Performance of Pediatric and Adult Thoracic CT
  /// Definition: American College of Radiology. ACR Standard for the Performance of Pediatric and Adult Thoracic Computed Tomography (CT). In: Standards. Reston, Va: 2001:103-107
  value112184,

  /// Display: Performance of CT for Detection of Pulmonary Embolism in Adults
  /// Definition: American College of Radiology. ACR Standard for the Performance of Computed Tomography for the Detection of Pulmonary Embolism in Adults. In: Standards. Reston, Va: 2001:109-113
  value112185,

  /// Display: Performance of High-Resolution CT of the Lungs in Adults
  /// Definition: American College of Radiology. ACR Standard for the Performance of High-Resolution Computed Tomography (HRCT) of the Lungs in Adults. In: Standards. Reston, Va: 2001:115-118
  value112186,

  /// Display: Unspecified method of calculation
  /// Definition: The method of calculation of a measurement or other type of numeric value is not specified
  value112187,

  /// Display: Two-dimensional method
  /// Definition: The calculation method was performed in two-dimensional space
  value112188,

  /// Display: Three-dimensional method
  /// Definition: The calculation method was performed in three-dimensional space
  value112189,

  /// Display: Breast tissue density
  /// Definition: The relative density of parenchymal tissue as a proportion of breast volume
  value112191,

  /// Display: Volume of parenchymal tissue
  /// Definition: The volume of parenchymal tissue
  value112192,

  /// Display: Volume of breast
  /// Definition: The volume of the breast
  value112193,

  /// Display: Mass of parenchymal tissue
  /// Definition: The mass of parenchymal tissue
  value112194,

  /// Display: Mass of breast
  /// Definition: The mass of the breast
  value112195,

  /// Display: Area of Vascular Calcification
  /// Definition: A measured or calculated area of vascular calcification
  value112196,

  /// Display: Volume of Vascular Calcification
  /// Definition: A measured or calculated volume of vascular calcification
  value112197,

  /// Display: Percentage of Vascular Calcification
  /// Definition: A measured or calculated percentage of vascular calcification
  value112198,

  /// Display: Mass of Vascular Calcification
  /// Definition: A measured or calculated mass of vascular calcification
  value112199,

  /// Display: Average calcification distance in a calcification cluster
  /// Definition: The average nearest neighbor distance of all individual microcalcifications in a cluster
  value112200,

  /// Display: Standard deviation distance of calcifications in a cluster
  /// Definition: The standard deviation of nearest neighbor distance of all individual microcalcifications in a cluster
  value112201,

  /// Display: Colon CAD Report
  /// Definition: A structured report containing the results of computer-aided detection or diagnosis applied to colon imaging and associated clinical information
  value112220,

  /// Display: Colon Overall Assessment
  /// Definition: Overall interpretation of the colon using C-RADS categorization system
  value112222,

  /// Display: Image Set Properties
  /// Definition: Characteristics of a set of images
  value112224,

  /// Display: Slice Thickness
  /// Definition: Nominal slice thickness, in mm
  value112225,

  /// Display: Spacing between slices
  /// Definition: Distance between contiguous images, measured from the center-to-center of each image
  value112226,

  /// Display: Frame of Reference UID
  /// Definition: Uniquely identifies groups of composite instances that have the same coordinate system that conveys spatial and/or temporal information
  value112227,

  /// Display: Recumbent Patient Position with respect to gravity
  /// Definition: Patient orientation with respect to downward direction (gravity)
  value112228,

  /// Display: Identifying Segment
  /// Definition: Distinguishes a part of a segmentation
  value112229,

  /// Display: Polyp stalk width
  /// Definition: The diameter of a polyp stalk measured perpendicular to the axis of the stalk
  value112232,

  /// Display: Distance from anus
  /// Definition: The length of the path following the centerline of the colon from the anus to the area of interest
  value112233,

  /// Display: Anatomic non-colon
  /// Definition: A location in the body that is outside the colon
  value112238,

  /// Display: C0 - Inadequate Study/Awaiting Prior Comparisons
  /// Definition: An inadequate study or a study that is awaiting prior comparisons. The study may have inadequate preparation and cannot exclude lesions greater than or equal to ten millimeters owing to presence of fluid or feces. The study may have inadequate insufflation where one or more colonic segments collapsed on both views. Based on "CT Colonography Reporting and Data System: A Consensus Proposal", Radiology, July 2005; 236:3-9
  value112240,

  /// Display: C1 - Normal Colon or Benign Lesion
  /// Definition: The study has a normal colon or benign lesion, with the recommendation to continue routine screening. The study has no visible abnormalities of the colon. The study has no polyps greater than six millimeters. The study may have lipoma, inverted diverticulum, or nonneoplastic findings, such as colonic diverticula. Based on "CT Colonography Reporting and Data System: A Consensus Proposal", Radiology, July 2005; 236:3-9
  value112241,

  /// Display: C2 - Intermediate Polyp or Indeterminate Finding
  /// Definition: The study has an intermediate polyp or indeterminate finding and surveillance or colonoscopy is recommended. There may be intermediate polyps between six and nine millimeters and there are less than three in number. The study may have an intermediate finding and cannot exclude a polyp that is greater than or equal to six millimeters in a technically adequate exam. Based on "CT Colonography Reporting and Data System: A Consensus Proposal", Radiology, July 2005; 236:3-9
  value112242,

  /// Display: C3 - Polyp, Possibly Advanced Adenoma
  /// Definition: The study has a polyp, possibly advanced adenoma, and a follow-up colonoscopy is recommended. The study has a polyp greater than or equal to ten millimeters or the study has three or more polyps that are each between six to nine millimeters. Based on "CT Colonography Reporting and Data System: A Consensus Proposal", Radiology, July 2005; 236:3-9
  value112243,

  /// Display: C4 - Colonic Mass, Likely Malignant
  /// Definition: The study has a colonic mass, likely malignant, and surgical consultation is recommended. The lesion compromises bowel lumen and demonstrates extracolonic invasion. Based on "CT Colonography Reporting and Data System: A Consensus Proposal", Radiology, July 2005; 236:3-9
  value112244,

  /// Display: ACR Guideline, Performance of Adult CT Colonography
  /// Definition: American College of Radiology Practice Guideline for the Performance of Computed Tomography (CT) Colonography in Adults. In: Practice Guidelines and Technical Standards.Reston, Va: American College of Radiology;2006:371-376
  value112248,

  /// Display: ACR Standard, CT medical physics performance monitoring
  /// Definition: American College of Radiology Technical Standard for Diagnostic Medical Physics Performance Monitoring of Computed Tomography (CT) Equipment. In: Practice Guidelines and Technical Standards.Reston, Va: American College of Radiology;2006:945-948
  value112249,

  /// Display: AP+45
  /// Definition: View Orientation Modifier indicates that the view orientation of the imaging plane is rotated +45° along the cranial-caudal axis
  value112300,

  /// Display: AP-45
  /// Definition: View Orientation Modifier indicates that the view orientation of the imaging plane is rotated -45° along the cranial-caudal axis
  value112301,

  /// Display: Anatomical axis of femur
  /// Definition: The axis following the shaft of the femur
  value112302,

  /// Display: Acetabular Center of Rotation
  /// Definition: Center of Rotation of the natural Acetabulum
  value112303,

  /// Display: Femur Head Center of Rotation
  /// Definition: Center of Rotation of the natural femur head
  value112304,

  /// Display: Acetabular Cup Shell
  /// Definition: Prosthetic component implanted into the acetabulum. Provides hold for the insert that is mounted inside the cup
  value112305,

  /// Display: Acetabular Cup Insert
  /// Definition: Prosthetic pelvic joint component. Inserted into the cup, takes in the femoral head replacement
  value112306,

  /// Display: Acetabular Cup Monoblock
  /// Definition: Prosthetic pelvic joint cup including insert
  value112307,

  /// Display: Femoral Head Ball Component
  /// Definition: Component for Femoral Head Prosthesis where the conic intake for the stem neck can be exchanged. Combined with a Femoral Head Cone Taper Component
  value112308,

  /// Display: Femoral Head Cone Taper Component
  /// Definition: Exchangeable neck intake for composite femoral head prosthesis. Combined with a Femoral Head Ball Component
  value112309,

  /// Display: Femoral Stem
  /// Definition: Prosthesis Implanted into the femoral bone to provide force transmission between joint replacement and bone. On the proximal end a conic neck holds the femoral head replacement
  value112310,

  /// Display: Femoral Stem Distal Component
  /// Definition: Distal half of a modular stem prosthesis system. Combined with a Stem Proximal Component
  value112311,

  /// Display: Femoral Stem Proximal Component
  /// Definition: Proximal half of a modular stem prosthesis system. Combined with a Stem Distal Component
  value112312,

  /// Display: Femoral Stem Component
  /// Definition: Stem prosthetic component with a modular insert for an exchangeable neck component. Combined with a Neck Component
  value112313,

  /// Display: Neck Component
  /// Definition: Prosthetic Neck to be combined with a Stem Component
  value112314,

  /// Display: Monoblock Stem
  /// Definition: Prosthetic Stem and Femoral Head in one piece
  value112315,

  /// Display: Prosthetic Shaft Augment
  /// Definition: A proximal attachment to the shaft used to compensate for bone deficiencies or bone loss
  value112316,

  /// Display: Femoral Head Resurfacing Component
  /// Definition: Artificial femur head surface needed for the partial replacement of the femoral head where only the surface is replaced
  value112317,

  /// Display: Pinning
  /// Definition: Fixation using a pin
  value112318,

  /// Display: Sewing
  /// Definition: Fixation sewing several objects together
  value112319,

  /// Display: Bolting
  /// Definition: Fixation using a bolt
  value112320,

  /// Display: Wedging
  /// Definition: Fixation due to forcing an object into a narrow space
  value112321,

  /// Display: Distal Centralizer
  /// Definition: Attachment to the distal end of a cemented stem assuring that the stem is in a central position inside the drilled femoral canal before cementation
  value112325,

  /// Display: Generic 2D Planning
  /// Definition: Planning by an unspecified 2D method
  value112340,

  /// Display: Generic 3D Planning
  /// Definition: Planning by an unspecified 3D method
  value112341,

  /// Display: Generic Planning for Hip Replacement
  /// Definition: Planning of a Hip Replacement, by an unspecified method
  value112342,

  /// Display: Generic Planning for Knee Replacement
  /// Definition: Planning of Knee Replacement, by an unspecified method
  value112343,

  /// Display: Müller Method Planning for Hip Replacement
  /// Definition: Planning of Hip Replacement according to the procedure of M. E. Müller [Eggli et. al.1998]
  value112344,

  /// Display: Implantation Plan
  /// Definition: A Report containing the results of an Implantation Planning Activity
  value112345,

  /// Display: Selected Implant Component
  /// Definition: A selection of one Implant Component
  value112346,

  /// Display: Component ID
  /// Definition: Identification ID of an Implant Component
  value112347,

  /// Display: Implant Template
  /// Definition: An implant template describing the properties (2D/3D geometry and other data) of one Implant Component
  value112348,

  /// Display: Component Connection
  /// Definition: A connection of two Connected Implantation Plan Components
  value112350,

  /// Display: Mating Feature Set ID
  /// Definition: ID of a Mating Feature Set in an Implant Component
  value112351,

  /// Display: Mating Feature ID
  /// Definition: ID of the Mating Feature in a Mating Feature Set in an Implant Component
  value112352,

  /// Display: Spatial Registration
  /// Definition: The Spatial Registration of one or more Implant Components
  value112353,

  /// Display: Patient Image
  /// Definition: Patient Images used for an implantation planning activity
  value112354,

  /// Display: Assembly
  /// Definition: A collection of Component Connections of Implant Components
  value112355,

  /// Display: User Selected Fiducial
  /// Definition: Fiducials that are selected by the user and may or may not belong to anatomical landmarks
  value112356,

  /// Display: Derived Fiducial
  /// Definition: Fiducials that represent geometric characteristics, such as center of rotation, and are derived from other fiducials
  value112357,

  /// Display: Information used for planning
  /// Definition: All parameters and data that were used for the planning activity
  value112358,

  /// Display: Supporting Information
  /// Definition: A description of the plan as encapsulated PDF SOP Instance
  value112359,

  /// Display: Implant Component List
  /// Definition: A list of all Implant Components selected for an implantation
  value112360,

  /// Display: Patient Data Used During Planning
  /// Definition: Reference to objects containing patient data that is used for planning
  value112361,

  /// Display: Degrees of Freedom Specification
  /// Definition: A specification of the values from one or more Degrees of Freedom
  value112362,

  /// Display: Degree of Freedom ID
  /// Definition: ID of one Degree of Freedom
  value112363,

  /// Display: Related Patient Data Not Used During Planning
  /// Definition: Reference to objects containing patient data that were not used for planning but are somehow related
  value112364,

  /// Display: Related Implantation Reports
  /// Definition: Implantation Reports that are somehow related; e.g. contemporaneous implantations that are independent
  value112365,

  /// Display: Implant Assembly Template
  /// Definition: Implant Assembly Template
  value112366,

  /// Display: Planning Information for Intraoperative Usage
  /// Definition: Information that is intended to be used intra-operatively
  value112367,

  /// Display: Implantation Patient Positioning
  /// Definition: Position of the patient on the operating room table
  value112368,

  /// Display: Fiducial Intent
  /// Definition: Intended use of the fiducial
  value112369,

  /// Display: Component Type
  /// Definition: Type of an Implant Component
  value112370,

  /// Display: Manufacturer Implant Template
  /// Definition: Implant Template released by the Manufacturer
  value112371,

  /// Display: Derived Planning Images
  /// Definition: Images that are created by a planning application
  value112372,

  /// Display: Other Derived Planning Data
  /// Definition: Data that is created by a planning application
  value112373,

  /// Display: Connected Implantation Plan Component
  /// Definition: One Implant Component that is connected to another Implant Component
  value112374,

  /// Display: Planning Method
  /// Definition: The method used for planning
  value112375,

  /// Display: Degree of Freedom Exact Translational Value
  /// Definition: Defines the exact value that was planned for translation
  value112376,

  /// Display: Degree of Freedom Minimum Translational Value
  /// Definition: Defines the minimum value that was planned for translation
  value112377,

  /// Display: Degree of Freedom Maximum Translational Value
  /// Definition: Defines the maximum value that was planned for translation
  value112378,

  /// Display: Degree of Freedom Exact Rotational Translation Value
  /// Definition: Defines the exact value that was planned for rotation
  value112379,

  /// Display: Degree of Freedom Minimum Rotational Value
  /// Definition: Defines the minimum value that was planned for rotation
  value112380,

  /// Display: Degree of Freedom Maximum Rotational Value
  /// Definition: Defines the maximum value that was planned for rotation
  value112381,

  /// Display: Peri-operative Photographic Imaging
  /// Definition: Procedure step protocol for photographic imaging of surgical procedures, including photography of specimens collected
  value112700,

  /// Display: Gross Specimen Imaging
  /// Definition: Procedure step protocol for imaging gross specimens, typically with a photographic camera (modality XC), and planning further dissection
  value112701,

  /// Display: Slide Microscopy
  /// Definition: Procedure step protocol for imaging slide specimens
  value112702,

  /// Display: Whole Slide Imaging
  /// Definition: Procedure step protocol for imaging slide specimens using a whole slide scanner
  value112703,

  /// Display: WSI 20X RGB
  /// Definition: Procedure step protocol for imaging slide specimens using a whole slide scanner with a 20X nominal objective lens, in full color, with a single imaging focal plane across the image
  value112704,

  /// Display: WSI 40X RGB
  /// Definition: Procedure step protocol for imaging slide specimens using a whole slide scanner with a 40X nominal objective lens, in full color, with a single imaging focal plane across the image
  value112705,

  /// Display: Illumination Method
  /// Definition: Technique of illuminating specimen
  value112706,

  /// Display: Number of focal planes
  /// Definition: Number of focal planes for a microscopy image acquisition
  value112707,

  /// Display: Focal plane Z offset
  /// Definition: Nominal distance above a reference plane (typically a slide glass substrate top surface) of the focal plane
  value112708,

  /// Display: Magnification selection
  /// Definition: Microscope magnification based on nominal objective lens power
  value112709,

  /// Display: Illumination wavelength
  /// Definition: Nominal center wavelength for an imaging spectral band
  value112710,

  /// Display: Illumination spectral band
  /// Definition: Name (coded) for an imaging spectral band
  value112711,

  /// Display: Optical filter type
  /// Definition: Type of filter inserted into the optical imaging path
  value112712,

  /// Display: Tissue selection method
  /// Definition: Technique for identifying tissue to be imaged versus area of slide not to be imaged
  value112713,

  /// Display: Multiple planes
  /// Definition: Imaging performed at multiple imaging (focal) planes
  value112714,

  /// Display: 5X
  /// Definition: Nominal 5 power objective lens, resulting in a digital image at approximately 2 um/pixel spacing
  value112715,

  /// Display: 10X
  /// Definition: Nominal 10 power objective lens, resulting in a digital image at approximately 1 um/pixel spacing
  value112716,

  /// Display: 20X
  /// Definition: Nominal 20 power microscope objective lens, resulting in a digital image at approximately 0.5 um/pixel spacing
  value112717,

  /// Display: 40X
  /// Definition: Nominal 40 power microscope objective lens, with a combined condenser and objective lens numerical aperture of approximately 1.3, resulting in a digital image at approximately 0.25 um/pixel spacing
  value112718,

  /// Display: Nominal empty tile suppression
  /// Definition: Equipment-specific nominal or default method for identifying tiles without tissue imaged for suppression from inclusion in image object
  value112719,

  /// Display: High threshold empty tile suppression
  /// Definition: Equipment-specific high threshold method for identifying tiles without tissue imaged for suppression from inclusion in image object
  value112720,

  /// Display: No empty tile suppression
  /// Definition: Tiles without tissue imaged are not suppressed from inclusion in image object
  value112721,

  /// Display: Of Interest
  /// Definition: Of Interest
  value113000,

  /// Display: Rejected for Quality Reasons
  /// Definition: Rejected for Quality Reasons
  value113001,

  /// Display: For Referring Provider
  /// Definition: For Referring Provider
  value113002,

  /// Display: For Surgery
  /// Definition: For Surgery
  value113003,

  /// Display: For Teaching
  /// Definition: For Teaching
  value113004,

  /// Display: For Conference
  /// Definition: For Conference
  value113005,

  /// Display: For Therapy
  /// Definition: For Therapy
  value113006,

  /// Display: For Patient
  /// Definition: For Patient
  value113007,

  /// Display: For Peer Review
  /// Definition: For Peer Review
  value113008,

  /// Display: For Research
  /// Definition: For Research
  value113009,

  /// Display: Quality Issue
  /// Definition: Quality Issue
  value113010,

  /// Display: Document Title Modifier
  /// Definition: Document Title Modifier
  value113011,

  /// Display: Key Object Description
  /// Definition: Key Object Description
  value113012,

  /// Display: Best In Set
  /// Definition: A selection that represents the "best" chosen from a larger set of items; e.g. the best images within a Study or Series. The criteria against which "best" is measured is not defined. Contrast this with the more specific term "Best illustration of finding"
  value113013,

  /// Display: Study
  /// Definition: A study is a collection of one or more series of medical images, presentation states, and/or SR documents that are logically related for the purpose of diagnosing a patient. A study may include composite instances that are created by a single modality, multiple modalities or by multiple devices of the same modality. [From Section A.1.2.2 "Study IE" in PS3.3 ]
  value113014,

  /// Display: Series
  /// Definition: A distinct logical set used to group composite instances. All instances within a Series are of the same modality, in the same Frame of Reference (if any), and created by the same equipment. [See Section A.1.2.3 "Series IE" in PS3.3 ]
  value113015,

  /// Display: Performed Procedure Step
  /// Definition: An arbitrarily defined unit of service that has actually been performed (not just scheduled). [From Section 7.3.1.9 "Modality Performed Procedure Step" in PS3.3 ]
  value113016,

  /// Display: Stage-View
  /// Definition: An image or set of images illustrating a specific stage (phase in a stress echo exam protocol) and view (combination of the transducer position and orientation at the time of image acquisition)
  value113017,

  /// Display: For Printing
  /// Definition: For Printing
  value113018,

  /// Display: For Report Attachment
  /// Definition: Selection of information objects for attachment to the clinical report of the Current Requested Procedure
  value113020,

  /// Display: For Litigation
  /// Definition: List of objects that are related to litigation and should be specially handled; e.g. may apply if a complaint has been received regarding a patient, or a specific set of images has been the subject of a subpoena, and needs to be sequestered or excluded from automatic purging according to retention policy
  value113021,

  /// Display: Double exposure
  /// Definition: Double exposure
  value113026,

  /// Display: Manifest
  /// Definition: A list of objects that have been exported out of one organizational domain into another domain. Typically, the first domain has no direct control over what the second domain will do with the objects
  value113030,

  /// Display: Signed Manifest
  /// Definition: A signed list of objects that have been exported out of one organizational domain into another domain, referenced securely with either Digital Signatures or MACs. Typically, the first domain has no direct control over what the second domain will do with the objects
  value113031,

  /// Display: Complete Study Content
  /// Definition: The list of objects that constitute a study at the time that the list was created
  value113032,

  /// Display: Signed Complete Study Content
  /// Definition: The signed list of objects that constitute a study at the time that the list was created, referenced securely with either Digital Signatures or MACs
  value113033,

  /// Display: Complete Acquisition Content
  /// Definition: The list of objects that were generated in a single procedure step
  value113034,

  /// Display: Signed Complete Acquisition Content
  /// Definition: The signed list of objects that were generated in a single procedure step, referenced securely with either Digital Signatures or MACs
  value113035,

  /// Display: Group of Frames for Display
  /// Definition: A list of frames or single-frame or entire multi-frame instances that together constitute a set for some purpose, such as might be displayed together in the same viewport, as distinct from another set that might be displayed in a separate viewport
  value113036,

  /// Display: Rejected for Patient Safety Reasons
  /// Definition: List of objects whose use is potentially harmful to the patient; e.g. an improperly labeled image could lead to dangerous surgical decisions
  value113037,

  /// Display: Incorrect Modality Worklist Entry
  /// Definition: List of objects that were acquired using an incorrect modality worklist entry, and that should not be used, since they may be incorrectly identified
  value113038,

  /// Display: Data Retention Policy Expired
  /// Definition: List of objects that have expired according to a defined data retention policy
  value113039,

  /// Display: Lossy Compression
  /// Definition: Lossy compression has been applied to an image
  value113040,

  /// Display: Apparent Diffusion Coefficient
  /// Definition: Values are derived by calculation of the apparent diffusion coefficient
  value113041,

  /// Display: Pixel by pixel addition
  /// Definition: Values are derived by the pixel by pixel addition of two images
  value113042,

  /// Display: Diffusion weighted
  /// Definition: Values are derived by calculation of the diffusion weighting
  value113043,

  /// Display: Diffusion Anisotropy
  /// Definition: Values are derived by calculation of the diffusion anisotropy
  value113044,

  /// Display: Diffusion Attenuated
  /// Definition: Values are derived by calculation of the diffusion attenuation
  value113045,

  /// Display: Pixel by pixel division
  /// Definition: Values are derived by the pixel by pixel division of two images
  value113046,

  /// Display: Pixel by pixel mask
  /// Definition: Values are derived by the pixel by pixel masking of one image by another
  value113047,

  /// Display: Pixel by pixel Maximum
  /// Definition: Values are derived by calculating the pixel by pixel maximum of two or more images
  value113048,

  /// Display: Pixel by pixel mean
  /// Definition: Values are derived by calculating the pixel by pixel mean of two or more images
  value113049,

  /// Display: Metabolite Maps from spectroscopy data
  /// Definition: Values are derived by calculating from spectroscopy data pixel values localized in two dimensional space based on the concentration of specific metabolites (i.e, at specific frequencies)
  value113050,

  /// Display: Pixel by pixel Minimum
  /// Definition: Values are derived by calculating the pixel by pixel minimum of two or more images
  value113051,

  /// Display: Mean Transit Time
  /// Definition: The time required for blood to pass through a region of tissue
  value113052,

  /// Display: Pixel by pixel multiplication
  /// Definition: Values are derived by the pixel by pixel multiplication of two images
  value113053,

  /// Display: Negative Enhancement Integral
  /// Definition: Values are derived by calculating negative enhancement integral values
  value113054,

  /// Display: Regional Cerebral Blood Flow
  /// Definition: The flow rate of blood perfusing a region of the brain as volume per mass per unit of time
  value113055,

  /// Display: Regional Cerebral Blood Volume
  /// Definition: The volume of blood perfusing a region of brain as volume per mass
  value113056,

  /// Display: R-Coefficient
  /// Definition: Correlation Coefficient, r
  value113057,

  /// Display: Proton Density
  /// Definition: Values are derived by calculating proton density values
  value113058,

  /// Display: Signal Change
  /// Definition: Values are derived by calculating signal change values
  value113059,

  /// Display: Signal to Noise
  /// Definition: Values are derived by calculating the signal to noise ratio
  value113060,

  /// Display: Standard Deviation
  /// Definition: Values are derived by calculating the standard deviation of two or more images
  value113061,

  /// Display: Pixel by pixel subtraction
  /// Definition: Values are derived by the pixel by pixel subtraction of two images
  value113062,

  /// Display: T1
  /// Definition: Values are derived by calculating T1 values
  value113063,

  /// Display: T2*
  /// Definition: Values are derived by calculating T2* values
  value113064,

  /// Display: T2
  /// Definition: Values are derived by calculating T2 values
  value113065,

  /// Display: Time Course of Signal
  /// Definition: Values are derived by calculating values based on the time course of signal
  value113066,

  /// Display: Temperature encoded
  /// Definition: Values are derived by calculating values based on temperature encoding
  value113067,

  /// Display: Student's T-Test
  /// Definition: Values are derived by calculating the value of the Student's T-Test statistic from multiple image samples
  value113068,

  /// Display: Time To Peak
  /// Definition: The time from the start of the contrast agent injection to the maximum enhancement value
  value113069,

  /// Display: Velocity encoded
  /// Definition: Values are derived by calculating values based on velocity encoded; e.g. phase contrast
  value113070,

  /// Display: Z-Score
  /// Definition: Values are derived by calculating the value of the Z-Score statistic from multiple image samples
  value113071,

  /// Display: Multiplanar reformatting
  /// Definition: Values are derived by reformatting in a flat plane other than that originally acquired
  value113072,

  /// Display: Curved multiplanar reformatting
  /// Definition: Values are derived by reformatting in a curve plane other than that originally acquired
  value113073,

  /// Display: Volume rendering
  /// Definition: Values are derived by volume rendering of acquired data
  value113074,

  /// Display: Surface rendering
  /// Definition: Values are derived by surface rendering of acquired data
  value113075,

  /// Display: Segmentation
  /// Definition: Values are derived by segmentation (classification into tissue types) of acquired data
  value113076,

  /// Display: Volume editing
  /// Definition: Values are derived by selectively editing acquired data (removing values from the volume), such as in order to remove obscuring structures or noise
  value113077,

  /// Display: Maximum intensity projection
  /// Definition: Values are derived by maximum intensity projection of acquired data
  value113078,

  /// Display: Minimum intensity projection
  /// Definition: Values are derived by minimum intensity projection of acquired data
  value113079,

  /// Display: Glutamate and glutamine
  /// Definition: For single-proton MR spectroscopy, the resonance peak corresponding to glutamate and glutamine
  value113080,

  /// Display: Choline/Creatine Ratio
  /// Definition: For single-proton MR spectroscopy, the ratio between the Choline and Creatine resonance peaks
  value113081,

  /// Display: N-acetylaspartate /Creatine Ratio
  /// Definition: For single-proton MR spectroscopy, the ratio between the N-acetylaspartate and Creatine resonance peaks
  value113082,

  /// Display: N-acetylaspartate /Choline Ratio
  /// Definition: For single-proton MR spectroscopy, the ratio between the N-acetylaspartate and Choline resonance peaks
  value113083,

  /// Display: Spatial resampling
  /// Definition: Values are derived by spatial resampling of acquired data
  value113085,

  /// Display: Edge enhancement
  /// Definition: Values are derived by edge enhancement
  value113086,

  /// Display: Smoothing
  /// Definition: Values are derived by smoothing
  value113087,

  /// Display: Gaussian blur
  /// Definition: Values are derived by Gaussian blurring
  value113088,

  /// Display: Unsharp mask
  /// Definition: Values are derived by unsharp masking
  value113089,

  /// Display: Image stitching
  /// Definition: Values are derived by stitching two or more images together
  value113090,

  /// Display: Spatially-related frames extracted from the volume
  /// Definition: Spatially-related frames in this image are representative frames from the referenced 3D volume data set
  value113091,

  /// Display: Temporally-related frames extracted from the set of volumes
  /// Definition: Temporally-related frames in this image are representative frames from the referenced 3D volume data set
  value113092,

  /// Display: Polar to Rectangular Scan Conversion
  /// Definition: Conversion of a polar coordinate image to rectangular (Cartesian) coordinate image
  value113093,

  /// Display: Creatine and Choline
  /// Definition: For single-proton MR spectroscopy, the resonance peak corresponding to creatine and choline
  value113094,

  /// Display: Lipid and Lactate
  /// Definition: For single-proton MR spectroscopy, the resonance peak corresponding to lipid and lactate
  value113095,

  /// Display: Creatine+Choline/ Citrate Ratio
  /// Definition: For single-proton MR spectroscopy, the ratio between the Choline and Creatine resonance peak and the Citrate resonance peak
  value113096,

  /// Display: Multi-energy proportional weighting
  /// Definition: Image pixels created through proportional weighting of multiple acquisitions at distinct X-Ray energies
  value113097,

  /// Display: Basic Application Confidentiality Profile
  /// Definition: De-identification using a profile defined in PS3.15 that requires removing all information related to the identity and demographic characteristics of the patient, any responsible parties or family members, any personnel involved in the procedure, the organizations involved in ordering or performing the procedure, additional information that could be used to match instances if given access to the originals, such as UIDs, dates and times, and private attributes, when that information is present in the non-Pixel Data Attributes, including graphics or overlays
  value113100,

  /// Display: Clean Pixel Data Option
  /// Definition: Additional de-identification according to an option defined in PS3.15 that requires any information burned in to the Pixel Data corresponding to the Attribute information specified to be removed by the Profile and any other Options specified also be removed
  value113101,

  /// Display: Clean Recognizable Visual Features Option
  /// Definition: Additional de-identification according to an option defined in PS3.15 that requires that sufficient removal or distortion of the Pixel Data shall be applied to prevent recognition of an individual from the instances themselves or a reconstruction of a set of instances
  value113102,

  /// Display: Clean Graphics Option
  /// Definition: Additional de-identification according to an option defined in PS3.15 that requires that any information encoded in graphics, text annotations or overlays corresponding to the Attribute information specified to be removed by the Profile and any other Options specified also be removed
  value113103,

  /// Display: Clean Structured Content Option
  /// Definition: Additional de-identification according to an option defined in PS3.15 that requires that any information encoded in SR Content Items or Acquisition Context Sequence Items corresponding to the Attribute information specified to be removed by the Profile and any other Options specified also be removed
  value113104,

  /// Display: Clean Descriptors Option
  /// Definition: Additional de-identification according to an option defined in PS3.15 that requires that any information that is embedded in text or string Attributes corresponding to the Attribute information specified to be removed by the Profile and any other Options specified also be removed
  value113105,

  /// Display: Retain Longitudinal Temporal Information Full Dates Option
  /// Definition: Retention of information that would otherwise be removed during de-identification according to an option defined in PS3.15 that requires that any dates and times be retained,
  value113106,

  /// Display: Retain Longitudinal Temporal Information Modified Dates Option
  /// Definition: Retention of information that would otherwise be removed during de-identification according to an option defined in PS3.15 that requires that any dates and times be modified in a manner that preserves temporal relationships; e.g. Study Date and Time
  value113107,

  /// Display: Retain Patient Characteristics Option
  /// Definition: Retention of information that would otherwise be removed during de-identification according to an option defined in PS3.15 that requires that any physical characteristics of the patient, which are descriptive rather than identifying information per se, be retained; e.g. Patient's Age, Sex, Size (height) and Weight
  value113108,

  /// Display: Retain Device Identity Option
  /// Definition: Retention of information that would otherwise be removed during de-identification according to an option defined in PS3.15 that requires that any information that identifies a device be retained; e.g. Device Serial Number
  value113109,

  /// Display: Retain UIDs Option
  /// Definition: Retention of information that would otherwise be removed during de-identification according to an option defined in PS3.15 that requires that UIDs be retained; e.g. SOP Instance UID
  value113110,

  /// Display: Retain Safe Private Option
  /// Definition: Retention of information that would otherwise be removed during de-identification according to an option defined in PS3.15 that requires that private attributes that are known not to contain identity information be retained; e.g. private SUV scale factor
  value113111,

  /// Display: Radiopharmaceutical Radiation Dose Report
  /// Definition: The procedure report is a Radiopharmaceutical Radiation Dose report
  value113500,

  /// Display: Radiopharmaceutical Administration
  /// Definition: Information pertaining to the administration of a radiopharmaceutical
  value113502,

  /// Display: Radiopharmaceutical Administration Event UID
  /// Definition: Unique identification of a single radiopharmaceutical administration event
  value113503,

  /// Display: Intravenous Extravasation Symptoms
  /// Definition: Initial signs or symptoms of extravasation
  value113505,

  /// Display: Estimated Extravasation Activity
  /// Definition: The estimated percentage of administered activity lost at the injection site. The estimation includes extravasation, paravenous administration and leakage at the injection site
  value113506,

  /// Display: Administered activity
  /// Definition: The calculated activity at the Radiopharmaceutical Start Time when the radiopharmaceutical is administered to the patient. The residual activity (i.e. radiopharmaceutical not administered) , if measured, is reflected in the calculated value. The estimated extravasation is not reflected in the calculated value
  value113507,

  /// Display: Pre-Administration Measured Activity
  /// Definition: Radioactivity measurement of radiopharmaceutical before or during the administration
  value113508,

  /// Display: Post-Administration Measured Activity
  /// Definition: Radioactivity measurement of radiopharmaceutical after the administration
  value113509,

  /// Display: Drug Product Identifier
  /// Definition: Registered drug establishment code for product, coding scheme example is NDC or RxNorm
  value113510,

  /// Display: Radiopharmaceutical Dispense Unit Identifier
  /// Definition: The human readable identification of the specific radiopharmaceutical dispensed quantity or dose ("dose" as unit of medication delivery, not radiation dose measure) to be administered to the patient
  value113511,

  /// Display: Radiopharmaceutical Lot Identifier
  /// Definition: Identifies the vial, batch or lot number from which the individual dispense radiopharmaceutical quantity (dose) is produced. The Radiopharmaceutical Dispense Unit Identifier records the identification for each individual dose
  value113512,

  /// Display: Reagent Vial Identifier
  /// Definition: Identifies the lot or unit serial number for the reagent component for the radiopharmaceutical
  value113513,

  /// Display: Radionuclide Vial Identifier
  /// Definition: Identifies the lot or unit serial number for the radionuclide component for the radiopharmaceutical
  value113514,

  /// Display: Prescription Identifier
  /// Definition: Administered Product's Prescription Number
  value113516,

  /// Display: Organ Dose Information
  /// Definition: Information pertaining to the estimated absorbed radiation dose to an organ
  value113517,

  /// Display: Organ Dose
  /// Definition: The absorbed radiation dose to organ
  value113518,

  /// Display: MIRD Pamphlet 1
  /// Definition: Reference authority MIRD Pamphlet No.1 (rev) ,Society of Nuclear Medicine, 1976
  value113520,

  /// Display: ICRP Publication 53
  /// Definition: Reference authority ICRP, 1988. Radiation Dose to Patients from Radiopharmaceuticals. ICRP Publication 53. Ann. ICRP 18 (1-4)
  value113521,

  /// Display: ICRP Publication 80
  /// Definition: Reference authority ICRP, 1998. Radiation Dose to Patients from Radiopharmaceuticals (Addendum to ICRP Publication 53). ICRP Publication 80. Ann. ICRP 28 (3)
  value113522,

  /// Display: ICRP Publication 106
  /// Definition: Reference authority ICRP, 2008. Radiation Dose to Patients from Radiopharmaceuticals - Addendum 3 to ICRP Publication 53. ICRP Publication 106. Ann. ICRP 38 (1-2)
  value113523,

  /// Display: MIRDOSE
  /// Definition: Reference authority Stabin MG, Sparks RB, Crowe E (1994) MIRDOSE: personal computer software for internal dose assessment in nuclear medicine [Computer program]
  value113526,

  /// Display: OLINDA-EXM
  /// Definition: Reference authority Stabin MG, Sparks RB, Crowe E (2005) OLINDA/EXM: The Second-Generation Personal Computer Software for Internal Dose Assessment in Nuclear Medicine [Computer program]
  value113527,

  /// Display: Package Insert
  /// Definition: Reference authority The reported organ dose is based on radiopharmaceutical's package insert
  value113528,

  /// Display: Institutionally Approved Estimates
  /// Definition: Reference authority The reported organ dose is based on Institutionally approved estimates from the Radioactive Drug Research Committee (RDRC) of the institution itself
  value113529,

  /// Display: Investigational New Drug
  /// Definition: Reference authority The reported organ dose is based on an Investigation new drug
  value113530,

  /// Display: Activity Measurement Device
  /// Definition: The type of device that performed the activity measurement
  value113540,

  /// Display: Dose Calibrator
  /// Definition: The device that measures the radiation activity of the radiopharmaceutical
  value113541,

  /// Display: Infusion System
  /// Definition: Radiopharmaceutical Infusion System
  value113542,

  /// Display: Generator
  /// Definition: Radioisotope Generator
  value113543,

  /// Display: Fasting Duration
  /// Definition: The number hours the patient has gone without food
  value113550,

  /// Display: Hydration Volume
  /// Definition: The amount of fluids the patient has consumed before the procedure
  value113551,

  /// Display: Recent Physical Activity
  /// Definition: A description of physical activity the patient performed before the start of the procedure, such as that which may affect imaging agent biodistribution
  value113552,

  /// Display: Acute unilateral renal blockage
  /// Definition: Blockage in one of the tubes (ureters) that drain urine from the kidneys
  value113560,

  /// Display: Low Thyroid Uptake
  /// Definition: 5% or less Thyroid Uptake of Iodine
  value113561,

  /// Display: High Thyroid Uptake
  /// Definition: 25% or higher Thyroid Uptake of Iodine
  value113562,

  /// Display: Severely Jaundiced
  /// Definition: The patient exhibits symptoms severe of jaundice and/or has a Bilirubin >10 mg/dL
  value113563,

  /// Display: Extravasation visible in image
  /// Definition: Extravasation or paravenous administration of the product is visible in the images
  value113568,

  /// Display: Cockroft-Gault Formula estimation of GFR
  /// Definition: The measurement method of the Glomerular Filtration Rate is Cockroft-Gault Formula
  value113570,

  /// Display: CKD-EPI Formula estimation of GFR
  /// Definition: The measurement method of the Glomerular Filtration Rate is CKD-EPI Formula
  value113571,

  /// Display: Glomerular Filtration Rate (MDRD)
  /// Definition: The measurement method of the Glomerular Filtration Rate is MDRD
  value113572,

  /// Display: Glomerular Filtration Rate non-black (MDRD)
  /// Definition: The measurement method of the Glomerular Filtration Rate is non-black MDRD
  value113573,

  /// Display: Glomerular Filtration Rate black (MDRD)
  /// Definition: The measurement method of the Glomerular Filtration Rate is black (MDRD)
  value113574,

  /// Display: Glomerular Filtration Rate female (MDRD)
  /// Definition: The measurement method of the Glomerular Filtration Rate is female (MDRD)
  value113575,

  /// Display: Glomerular Filtration Rate Cystatin-based formula
  /// Definition: The measurement method of the Glomerular Filtration Rate is Cystatin-based formula
  value113576,

  /// Display: Glomerular Filtration Rate Creatinine-based formula (Schwartz)
  /// Definition: The measurement method of the Glomerular Filtration Rate is Creatinine-based formula (Schwartz)
  value113577,

  /// Display: Small: < 32.0 cm lateral thickness
  /// Definition: Small body thickness for calcium scoring adjustment. Lateral thickness is measured from skin-to-skin, at the level of the proximal ascending aorta, from an A/P localizer image
  value113601,

  /// Display: Medium: 32.0-38.0 cm lateral thickness
  /// Definition: Medium body thickness for calcium scoring adjustment. Lateral thickness is measured from skin-to-skin, at the level of the proximal ascending aorta, from an A/P localizer image
  value113602,

  /// Display: Large: > 38.0 cm lateral thickness
  /// Definition: Large body thickness for calcium scoring adjustment. Lateral thickness is measured from skin-to-skin, at the level of the proximal ascending aorta, from an A/P localizer image
  value113603,

  /// Display: Irradiation Event Label
  /// Definition: A human-readable label identifying an irradiation event
  value113605,

  /// Display: Label Type
  /// Definition: The type of a human-readable label
  value113606,

  /// Display: Series Number
  /// Definition: A number that identifies a Series. Corresponds to (0020,0011) in PS3.3
  value113607,

  /// Display: Acquisition Number
  /// Definition: A number that identifies an Acquisition. Corresponds to (0020,0012) in PS3.3
  value113608,

  /// Display: Instance Number
  /// Definition: A number that identifies an Instance. Corresponds to (0020,0013) in PS3.3
  value113609,

  /// Display: Stationary Acquisition
  /// Definition: Acquisition where the X-Ray source does not move in relation to the patient
  value113611,

  /// Display: Stepping Acquisition
  /// Definition: Acquisition where the X-Ray source moves laterally in relation to the patient
  value113612,

  /// Display: Rotational Acquisition
  /// Definition: Acquisition where the X-Ray source moves angularly in relation to the patient
  value113613,

  /// Display: Plane A
  /// Definition: Primary plane of a Biplane acquisition equipment
  value113620,

  /// Display: Plane B
  /// Definition: Secondary plane of a Biplane acquisition equipment
  value113621,

  /// Display: Single Plane
  /// Definition: Single plane acquisition equipment
  value113622,

  /// Display: Continuous
  /// Definition: Continuous X-Ray radiation is applied during an irradiation event
  value113630,

  /// Display: Pulsed
  /// Definition: Pulsed X-Ray radiation is applied during an irradiation event
  value113631,

  /// Display: Strip filter
  /// Definition: Filter with uniform thickness
  value113650,

  /// Display: Wedge filter
  /// Definition: Filter with variation in thickness from one edge to the opposite edge
  value113651,

  /// Display: Butterfly filter
  /// Definition: Filter with two triangular sections
  value113652,

  /// Display: Flat filter
  /// Definition: Filter with uniform thickness that is for spectral filtering only; e.g. filter out low energy portion of the X-Ray that would only contribute to skin dose, but not to image
  value113653,

  /// Display: Outline of lobulations
  /// Definition: A polyline defining the outline of a lobulated finding
  value113661,

  /// Display: Inner limits of fuzzy margin
  /// Definition: A polyline defining the inner limits of a finding with fuzzy margin
  value113662,

  /// Display: Outer limits of fuzzy margin
  /// Definition: A polyline defining the outer limits of a finding with fuzzy margin
  value113663,

  /// Display: Outline of spiculations
  /// Definition: A polyline defining the outline of the spiculations of a finding
  value113664,

  /// Display: Linear spiculation
  /// Definition: A polyline segment graphically indicating the location and direction of a spiculation of a finding
  value113665,

  /// Display: Pixelated spiculations
  /// Definition: A collection of points indicating the pixel locations of the spiculations of a finding
  value113666,

  /// Display: Orthogonal location arc
  /// Definition: Connected line segments indicating the center of location of a finding on an orthogonal view
  value113669,

  /// Display: Orthogonal location arc inner margin
  /// Definition: Connected line segments indicating the inner margin of the location of a finding on an orthogonal view
  value113670,

  /// Display: Orthogonal location arc outer margin
  /// Definition: Connected line segments indicating the outer location of a finding on an orthogonal view
  value113671,

  /// Display: Quality Control Intent
  /// Definition: This procedure is intended to gather data that is used for calibration or other quality control purposes
  value113680,

  /// Display: Phantom
  /// Definition: An artificial subject of an imaging study
  value113681,

  /// Display: ACR Accreditation Phantom - CT
  /// Definition: A phantom acceptable for the ACR Computed Tomography Accreditation program
  value113682,

  /// Display: ACR Accreditation Phantom - MR
  /// Definition: A phantom acceptable for the ACR Magnetic Resonance Imaging Accreditation program
  value113683,

  /// Display: ACR Accreditation Phantom - Mammography
  /// Definition: A phantom acceptable for the ACR Mammography Accreditation program
  value113684,

  /// Display: ACR Accreditation Phantom - Stereotactic Breast Biopsy
  /// Definition: A phantom acceptable for the ACR Stereotactic Breast Biopsy Accreditation program
  value113685,

  /// Display: ACR Accreditation Phantom - ECT
  /// Definition: A phantom acceptable for the ACR SPECT Accreditation program (but not for PET)
  value113686,

  /// Display: ACR Accreditation Phantom - PET
  /// Definition: A phantom acceptable for the ACR PET Accreditation program (but not for SPECT)
  value113687,

  /// Display: ACR Accreditation Phantom - ECT/PET
  /// Definition: A SPECT phantom with a PET faceplate acceptable for both the ACR SPECT and PET Accreditation programs
  value113688,

  /// Display: ACR Accreditation Phantom - PET Faceplate
  /// Definition: A PET faceplate (made to fit an existing flangeless or flanged ECT phantom) acceptable for the ACR PET Accreditation program
  value113689,

  /// Display: IEC Head Dosimetry Phantom
  /// Definition: A phantom used for CTDI measurement in head modes according to IEC 60601-2-44, Ed.2.1 (Head 16 cm diameter Polymethyl methacrylate PMMA)
  value113690,

  /// Display: IEC Body Dosimetry Phantom
  /// Definition: A phantom used for CTDI measurement in body modes according to IEC 60601-2-44, Ed.2.1 (Body 32cm diameter Polymethyl methacrylate PMMA)
  value113691,

  /// Display: NEMA XR21-2000 Phantom
  /// Definition: A phantom in accordance with NEMA standard XR-21-2000
  value113692,

  /// Display: X-Ray Radiation Dose Report
  /// Definition: X-Ray Radiation Dose Report
  value113701,

  /// Display: Accumulated X-Ray Dose Data
  /// Definition: X-Ray dose data accumulated over multiple irradiation events; e.g. for a study or a performed procedure step
  value113702,

  /// Display: Projection X-Ray
  /// Definition: Imaging using a point X-Ray source with a diverging beam projected onto a 2 dimensional detector
  value113704,

  /// Display: Scope of Accumulation
  /// Definition: Entity over which dose accumulation values are integrated
  value113705,

  /// Display: Irradiation Event X-Ray Data
  /// Definition: X-Ray dose data for a single Irradiation Event
  value113706,

  /// Display: Niobium or Niobium compound
  /// Definition: Material containing Niobium or a Niobium compound
  value113710,

  /// Display: Europium or Europium compound
  /// Definition: Material containing Europium or a Europium compound
  value113711,

  /// Display: Calibration Protocol
  /// Definition: Describes the method used to derive the calibration factor
  value113720,

  /// Display: Irradiation Event Type
  /// Definition: Denotes the type of irradiation event recorded
  value113721,

  /// Display: Dose Area Product Total
  /// Definition: Total calculated Dose Area Product (in the scope of the including report)
  value113722,

  /// Display: Calibration Date
  /// Definition: Last calibration Date for the integrated dose meter or dose calculation
  value113723,

  /// Display: Calibration Responsible Party
  /// Definition: Individual or organization responsible for calibration
  value113724,

  /// Display: Dose (RP) Total
  /// Definition: Total Dose related to Reference Point (RP). (in the scope of the including report)
  value113725,

  /// Display: Fluoro Dose Area Product Total
  /// Definition: Total calculated Dose Area Product applied in Fluoroscopy Modes (in the scope of the including report)
  value113726,

  /// Display: Acquisition Dose Area Product Total
  /// Definition: Total calculated Dose Area Product applied in Acquisition Modes (in the scope of the including report)
  value113727,

  /// Display: Fluoro Dose (RP) Total
  /// Definition: Dose applied in Fluoroscopy Modes, related to Reference Point (RP). (in the scope of the including report)
  value113728,

  /// Display: Acquisition Dose (RP) Total
  /// Definition: Dose applied in Acquisition Modes, related to Reference Point (RP). (in the scope of the including report)
  value113729,

  /// Display: Total Fluoro Time
  /// Definition: Total accumulated clock time of Fluoroscopy in the scope of the including report (i.e., the sum of the Irradiation Duration values for accumulated fluoroscopy irradiation events)
  value113730,

  /// Display: Total Number of Radiographic Frames
  /// Definition: Accumulated Count of exposure pulses (single or multi-frame encoded) created from irradiation events performed with high dose (acquisition)
  value113731,

  /// Display: Fluoro Mode
  /// Definition: Mode of application of X-Rays during Fluoroscopy
  value113732,

  /// Display: KVP
  /// Definition: Applied X-Ray Tube voltage at peak of X-Ray generation, in kilovolts; Mean value if measured over multiple peaks (pulses)
  value113733,

  /// Display: X-Ray Tube Current
  /// Definition: Mean value of applied Tube Current
  value113734,

  /// Display: Exposure Time
  /// Definition: Cumulative time the patient has received X-Ray exposure during the irradiation event
  value113735,

  /// Display: Exposure
  /// Definition: Mean value of X-Ray Current Time product
  value113736,

  /// Display: Distance Source to Reference Point
  /// Definition: Distance to the Reference Point (RP) defined according to IEC 60601-2-43 or equipment defined
  value113737,

  /// Display: Dose (RP)
  /// Definition: Dose applied at the Reference Point (RP)
  value113738,

  /// Display: Positioner Primary End Angle
  /// Definition: Positioner Primary Angle at the end of an irradiation event. For further definition see (112011, DCM, "Positioner Primary Angle")
  value113739,

  /// Display: Positioner Secondary End Angle
  /// Definition: Positioner Secondary Angle at the end of an irradiation event. For further definition see (112012, DCM, "Positioner Secondary Angle")
  value113740,

  /// Display: Irradiation Duration
  /// Definition: Clock time from the start of loading time of the first pulse until the loading time trailing edge of the final pulse in the same irradiation event. Note Loading time is defined in IEC 60601-1-3:2008, 3.37, and described in IEC 60601-2-54:2009, 203.4.101.3
  value113742,

  /// Display: Patient Orientation
  /// Definition: Orientation of the Patient with respect to Gravity
  value113743,

  /// Display: Patient Orientation Modifier
  /// Definition: Enhances or modifies the Patient orientation specified in Patient Orientation
  value113744,

  /// Display: Patient Table Relationship
  /// Definition: Orientation of the Patient with respect to the Head of the Table
  value113745,

  /// Display: Distance Source to Isocenter
  /// Definition: Distance from the X-Ray Source to the Equipment C-Arm Isocenter.(Center of Rotation)
  value113748,

  /// Display: Distance Source to Detector
  /// Definition: Measured or calculated distance from the X-Ray source to the detector plane in the center of the beam
  value113750,

  /// Display: Table Longitudinal Position
  /// Definition: Table Longitudinal Position with respect to an arbitrary chosen reference by the equipment. Table motion towards LAO is positive assuming that the patient is positioned supine and its head is in normal position
  value113751,

  /// Display: Table Lateral Position
  /// Definition: Table Lateral Position with respect to an arbitrary chosen reference by the equipment. Table motion towards CRA is positive assuming that the patient is positioned supine and its head is in normal position
  value113752,

  /// Display: Table Height Position
  /// Definition: Table Height Position with respect to an arbitrary chosen reference by the equipment in (mm). Table motion downwards is positive
  value113753,

  /// Display: Table Head Tilt Angle
  /// Definition: Angle of the head-feet axis of the table in degrees relative to the horizontal plane. Positive values indicate that the head of the table is upwards
  value113754,

  /// Display: Table Horizontal Rotation Angle
  /// Definition: Rotation of the table in the horizontal plane (clockwise when looking from above the table)
  value113755,

  /// Display: Table Cradle Tilt Angle
  /// Definition: Angle of the left-right axis of the table in degrees relative to the horizontal plane. Positive values indicate that the left of the table is upwards
  value113756,

  /// Display: X-Ray Filter Material
  /// Definition: X-Ray absorbing material used in the filter
  value113757,

  /// Display: X-Ray Filter Thickness Minimum
  /// Definition: The minimum thickness of the X-Ray absorbing material used in the filters
  value113758,

  /// Display: Table Longitudinal End Position
  /// Definition: Table Longitudinal Position at the end of an irradiation event; see (113751, DCM, "Table Longitudinal Position")
  value113759,

  /// Display: Table Lateral End Position
  /// Definition: Table Lateral Position at the end of an irradiation event; see (113752, DCM, "Table Lateral Position")
  value113760,

  /// Display: Table Height End Position
  /// Definition: Table Height Position at the end of an irradiation event; see (113753, DCM, "Table Height Position")
  value113761,

  /// Display: Calibration Uncertainty
  /// Definition: Uncertainty of the 'actual' value
  value113763,

  /// Display: Acquisition Plane
  /// Definition: Identification of Acquisition Plane with Biplane systems
  value113764,

  /// Display: Focal Spot Size
  /// Definition: Nominal Size of Focal Spot of X-Ray Tube
  value113766,

  /// Display: Average X-Ray Tube Current
  /// Definition: Average X-Ray Tube Current averaged over time for pulse or for continuous Fluoroscopy
  value113767,

  /// Display: Number of Pulses
  /// Definition: Number of pulses applied by X-Ray systems during an irradiation event (acquisition run or pulsed fluoro)
  value113768,

  /// Display: Irradiation Event UID
  /// Definition: Unique identification of a single irradiation event
  value113769,

  /// Display: Column Angulation
  /// Definition: Angle of the X-Ray beam in degree relative to an orthogonal axis to the detector plane
  value113770,

  /// Display: X-Ray Filters
  /// Definition: Devices used to modify the energy or energy distribution of X-Rays
  value113771,

  /// Display: X-Ray Filter Type
  /// Definition: Type of filter(s) inserted into the X-Ray beam; e.g. wedges
  value113772,

  /// Display: X-Ray Filter Thickness Maximum
  /// Definition: The maximum thickness of the X-Ray absorbing material used in the filters
  value113773,

  /// Display: Reference Point Definition
  /// Definition: System provided definition of the Reference Point used for Dose calculations
  value113780,

  /// Display: Collimated Field Height
  /// Definition: Distance between the collimator blades in pixel column direction as projected at the detector plane
  value113788,

  /// Display: Collimated Field Width
  /// Definition: Distance between the collimator blades in pixel row direction as projected at the detector plane
  value113789,

  /// Display: Collimated Field Area
  /// Definition: Collimated field area at image receptor. Area for compatibility with IEC 60601-2-43
  value113790,

  /// Display: Pulse Rate
  /// Definition: Pulse rate applied by equipment during Fluoroscopy
  value113791,

  /// Display: Distance Source to Table Plane
  /// Definition: Measured or calculated distance from the X-Ray source to the table plane in the center of the beam
  value113792,

  /// Display: Pulse Width
  /// Definition: (Average) X-Ray pulse width
  value113793,

  /// Display: Dose Measurement Device
  /// Definition: Calibrated device to perform dose measurements
  value113794,

  /// Display: Acquired Image
  /// Definition: Image acquired during a specified event
  value113795,

  /// Display: DLP to E conversion via MC computation
  /// Definition: Effective Dose evaluation from the product of Dose Length Product (DLP) and the Effective Dose Conversion Factor (E/DLP in units of mSv/mGy-cm), where the ratio is derived by means of Monte Carlo computations
  value113800,

  /// Display: CTDIfreeair to E conversion via MC computation
  /// Definition: Effective Dose evaluation from the product of the Mean CTDIfreeair and the ratio E/CTDIfreeair (mSv/mGy), where the ratio is derived by means of Monte Carlo computations
  value113801,

  /// Display: DLP to E conversion via measurement
  /// Definition: Effective Dose evaluation from the product of Dose Length Product (DLP) and the Effective Dose Conversion Factor (E/DLP in units of mSv/mGy-cm), where the ratio is derived by means of dosimetric measurements with an anthropomorphic phantom
  value113802,

  /// Display: CTDIfreeair to E conversion via measurement
  /// Definition: Effective Dose evaluation from the product of the Mean CTDIfreeair and the ratio E/CTDIfreeair (mSv/mGy), where the ratio is derived by means of dosimetric measurements with an anthropomorphic phantom
  value113803,

  /// Display: Sequenced Acquisition
  /// Definition: The CT acquisition was performed by acquiring single or multi detector data while rotating the source about the gantry while the table is not moving. Additional slices are acquired by incrementing the table position and again rotating the source about the gantry while the table is not moving
  value113804,

  /// Display: Constant Angle Acquisition
  /// Definition: The CT acquisition was performed by holding the source at a constant angle and moving the table to obtain a projection image; e.g. localizer
  value113805,

  /// Display: Stationary Acquisition
  /// Definition: The CT acquisition was performed by holding the table at a constant position and acquiring multiple slices over time at the same location
  value113806,

  /// Display: Free Acquisition
  /// Definition: The CT acquisition was performed while rotating the source about the gantry while the table movement is under direct control of a human operator or under the control of an analysis application; e.g. fluoro
  value113807,

  /// Display: ICRP Pub 60
  /// Definition: Reference authority 1990 Recommendations of the International Commission on Radiological Protection (ICRP Publication 60, published as the Annals of the ICRP Vol. 21, No. 1-3, Pergamon Press,1991)
  value113808,

  /// Display: Start of X-Ray Irradiation
  /// Definition: Start, DateTime of the first X-Ray Irradiation Event of the accumulation within a Study
  value113809,

  /// Display: End of X-Ray Irradiation
  /// Definition: End, DateTime of the last X-Ray Irradiation Event of the accumulation within a Study
  value113810,

  /// Display: CT Accumulated Dose Data
  /// Definition: X-Ray dose accumulated over multiple CT irradiation events; e.g. for a study or a performed procedure step
  value113811,

  /// Display: Total Number of Irradiation Events
  /// Definition: Total number of events during the defined scope of accumulation
  value113812,

  /// Display: CT Dose Length Product Total
  /// Definition: The total dose length product defined scope of accumulation
  value113813,

  /// Display: CT Effective Dose Total
  /// Definition: The total Effective Dose at the defined scope of accumulation
  value113814,

  /// Display: Patient Model
  /// Definition: Identification of the reference-patient model used when Effective Dose is evaluated via Monte Carlo calculations or from a Dose Length Product conversion factor based on Monte Carlo calculations
  value113815,

  /// Display: Condition Effective Dose measured
  /// Definition: References the physical phantom and the type of dosimeter used when measurements are done to establish Effective Dose Conversion Factors (E/DLP) or ratios E/CTDIfreeair
  value113816,

  /// Display: Effective Dose Phantom Type
  /// Definition: Type of Effective Dose phantom used
  value113817,

  /// Display: Dosimeter Type
  /// Definition: Type of dosimeter used
  value113818,

  /// Display: CT Acquisition
  /// Definition: General description of the CT Irradiation event
  value113819,

  /// Display: CT Acquisition Type
  /// Definition: Method of the CT acquisition
  value113820,

  /// Display: X-Ray Filter Aluminum Equivalent
  /// Definition: Thickness of an equivalent filter in mm in Aluminum
  value113821,

  /// Display: CT Acquisition Parameters
  /// Definition: General description of the acquisition parameters
  value113822,

  /// Display: Number of X-Ray Sources
  /// Definition: Number of X-Ray sources
  value113823,

  /// Display: Exposure Time
  /// Definition: Total time the patient has received X-Ray exposure during the irradiation event
  value113824,

  /// Display: Scanning Length
  /// Definition: Length of the table travel during the entire tube loading, according to IEC 60601-2-44 Note Scanning Length might be longer than the programmed acquisition length (Length of Reconstructable Volume)
  value113825,

  /// Display: Nominal Single Collimation Width
  /// Definition: The value of the nominal width referenced to the location of the isocenter along the z axis of a single row of acquired data in mm
  value113826,

  /// Display: Nominal Total Collimation Width
  /// Definition: The value of the nominal width referenced to the location of the isocenter along the z axis of the total collimation in mm over the area of active X-Ray detection
  value113827,

  /// Display: Pitch Factor
  /// Definition: For Spiral scanning: Pitch Factor = (Table Feed per Rotation (mm)) /(Nominal Total Collimation Width (mm)) For Sequenced scanning: Pitch Factor = (Table Feed per single Sequenced scan (mm)) /(Nominal Total Collimation Width (mm))
  value113828,

  /// Display: CT Dose
  /// Definition: General description of CT dose values
  value113829,

  /// Display: Mean CTDIvol
  /// Definition: "Mean CTDIvol" refers to the average value of the CTDIvol associated with this acquisition
  value113830,

  /// Display: CT X-Ray Source Parameters
  /// Definition: Identification, tube-potential, tube-current, and exposure-time parameters associated with an X-Ray source during an acquisition
  value113831,

  /// Display: Identification of the X-Ray Source
  /// Definition: Identifies the particular X-Ray source (in a multi-source CT system) for which the set of X-Ray source parameter values is reported
  value113832,

  /// Display: Maximum X-Ray Tube Current
  /// Definition: Maximum X-Ray tube current
  value113833,

  /// Display: Exposure Time per Rotation
  /// Definition: The exposure time for one rotation of the source around the object in s
  value113834,

  /// Display: CTDIw Phantom Type
  /// Definition: A label describing the type of phantom used for CTDIW measurement according to IEC 60601-2-44 (Head 16 cm diameter PMMA, Body 32 cm diameter PMMA)
  value113835,

  /// Display: CTDIfreeair Calculation Factor
  /// Definition: The CTDIfreeair Calculation Factor is the CTDIfreeair per mAs, expressed in units of mGy/mAs. The CTDIfreeair Calculation Factor may be used in one method calculating Dose
  value113836,

  /// Display: Mean CTDIfreeair
  /// Definition: The average value of the free-in-air CTDI associated with this acquisition
  value113837,

  /// Display: DLP
  /// Definition: Dose Length Product (DLP), expressed in mGy-cm, is an index characterizing the product of the CTDIvol and the length scanned. For Spiral scanning, DLP = CTDIvol x Scanning Length. For Sequenced scanning, DLP = CTDIvol x Nominal Total Collimation Width x Cumulative Exposure Time / Exposure Time per Rotation. For Stationary and Free scanning, DLP = CTDIvol x Nominal Total Collimation Width
  value113838,

  /// Display: Effective Dose
  /// Definition: Effective dose in mSv
  value113839,

  /// Display: Effective Dose Conversion Factor
  /// Definition: Effective Dose per DLP, reference value for Effective Dose calculation, expressed in mSv/mGY.cm
  value113840,

  /// Display: ICRP Pub 103
  /// Definition: Effective Dose Reference authority 2007 Recommendations of the International Commission on Radiological Protection (ICRP Publication 103, published as the Annals of the ICRP Vol. 37, No. 2-4, Elsevier, 2007)
  value113841,

  /// Display: X-Ray Modulation Type
  /// Definition: The type of exposure modulation used for the purpose of limiting the dose
  value113842,

  /// Display: Exposure Index
  /// Definition: Measure of the detector response to radiation in the relevant image region of an image acquired with a digital X-Ray imaging system as defined in IEC 62494-1; see PS3.3 definition of Exposure Index Macro
  value113845,

  /// Display: Target Exposure Index
  /// Definition: The target value used to calculate the Deviation Index as defined in IEC 62494-1; see PS3.3 definition of Exposure Index Macro
  value113846,

  /// Display: Deviation Index
  /// Definition: A scaled representation of the accuracy of the Exposure Index compared to the Target Exposure Index as defined in IEC 62494-1; see PS3.3 definition of Exposure Index Macro
  value113847,

  /// Display: Irradiation Authorizing
  /// Definition: The clinician responsible for determining that the irradiating procedure was appropriate for the indications
  value113850,

  /// Display: Irradiation Administering
  /// Definition: The person responsible for the administration of radiation
  value113851,

  /// Display: Irradiation Event
  /// Definition: An irradiation event is the loading of X-Ray equipment caused by a single continuous actuation of the equipment's irradiation switch, from the start of the loading time of the first pulse until the loading time trailing edge of the final pulse. Any automatic on-off switching of the irradiation source during the event is not treated as separate events, rather the event includes the time between start and stop of irradiation as triggered by the user; e.g. a pulsed fluoro X-Ray acquisition shall be treated as a single irradiation event
  value113852,

  /// Display: Irradiation Event UID
  /// Definition: Unique Identifier of an Irradiation Event
  value113853,

  /// Display: Source of Dose Information
  /// Definition: Method by which dose-related details of an Irradiation Event were obtained
  value113854,

  /// Display: Total Acquisition Time
  /// Definition: Total accumulated acquisition clock time in the scope of the including report (i.e., the sum of the Irradiation Duration values for accumulated acquisition irradiation events)
  value113855,

  /// Display: Automated Data Collection
  /// Definition: Direct recording of data by a relevant system
  value113856,

  /// Display: Manual Entry
  /// Definition: Recording of data by a human operator, including manual transcription of electronic data
  value113857,

  /// Display: MPPS Content
  /// Definition: The data is taken from an MPPS SOP Instance
  value113858,

  /// Display: Irradiating Device
  /// Definition: A device exposing a patient to ionizing radiation
  value113859,

  /// Display: 15cm from Isocenter toward Source
  /// Definition: 15cm from the isocenter towards the X-Ray source; See IEC 60601-2-43
  value113860,

  /// Display: 30cm in Front of Image Input Surface
  /// Definition: 30cm in front (towards the tube) of the input surface of the image receptor; See FDA Federal Performance Standard for Diagnostic X-Ray Systems §1020.32(d) (7)
  value113861,

  /// Display: 1cm above Tabletop
  /// Definition: 1cm above the patient tabletop or cradle; See FDA Federal Performance Standard for Diagnostic X-Ray Systems §1020.32(d) (7)
  value113862,

  /// Display: 30cm above Tabletop
  /// Definition: 30cm above the patient tabletop of cradle; See FDA Federal Performance Standard for Diagnostic X-Ray Systems §1020.32(d) (7)
  value113863,

  /// Display: 15cm from Table Centerline
  /// Definition: 15cm from the centerline of the X-Ray table and in the direction of the X-Ray source; See FDA Federal Performance Standard for Diagnostic X-Ray Systems §1020.32(d) (7)
  value113864,

  /// Display: Entrance exposure to a 4.2 cm breast thickness
  /// Definition: Standard breast means a 4.2 centimeter (cm) thick compressed breast consisting of 50 percent glandular and 50 percent adipose tissue. See Department of Health and Human Services, Food and Drug Administration. Mammography quality standards; final rule. Federal Register. Oct. 28, 1997; 68(208):55852-55994; see 900.2(uu)
  value113865,

  /// Display: Copied From Image Attributes
  /// Definition: The data is copied from information present in the image attributes; e.g. dose attributes such as CTDIvol (0018,9345)
  value113866,

  /// Display: Computed From Image Attributes
  /// Definition: The data is computed from information present in the image attributes; e.g. by using dosimetry information for the specific irradiating device make and model, applied to technique information such as KVP and mAs
  value113867,

  /// Display: Derived From Human-Readable Reports
  /// Definition: The data is derived from human-readable reports; e.g. by natural language parsing of text reports, or optical character recognition from reports saved as images by the irradiating device
  value113868,

  /// Display: Person Name
  /// Definition: The name of a specific person
  value113870,

  /// Display: Person ID
  /// Definition: An identification number or code for a specific person
  value113871,

  /// Display: Person ID Issuer
  /// Definition: The organization that issued a Person ID
  value113872,

  /// Display: Organization Name
  /// Definition: The name of an organization
  value113873,

  /// Display: Person Role in Organization
  /// Definition: The role played by a person in an organization
  value113874,

  /// Display: Person Role in Procedure
  /// Definition: The role played by a person in a procedure
  value113875,

  /// Display: Device Role in Procedure
  /// Definition: The role played by a device in a procedure
  value113876,

  /// Display: Device Name
  /// Definition: The name used to refer to a device; usually locally unique
  value113877,

  /// Display: Device Manufacturer
  /// Definition: Manufacturer of a device
  value113878,

  /// Display: Device Model Name
  /// Definition: Model Name of a device
  value113879,

  /// Display: Device Serial Number
  /// Definition: Serial Number of a device
  value113880,

  /// Display: All Planes
  /// Definition: All planes of a multi-plane acquisition equipment
  value113890,

  /// Display: Length of Reconstructable Volume
  /// Definition: The length from which images may be reconstructed (i.e., excluding any overranging performed in a spiral acquisition that is required for data interpolation). Value is distinct from (1113825, DCM, "Scanning Length"), which is the actual length of the table travel during the entire tube loading, according to IEC 60601-2-44, and includes overranging. Also distinct from any actual Reconstructed Volume, which may depend on the slice thickness chosen for a particular reconstruction
  value113893,

  /// Display: Top Z Location of Reconstructable Volume
  /// Definition: The Z location that is the top (highest Z value) of the Reconstructable Volume. Specified as the Z component within the Patient Coordinate System defined by a specified Frame of Reference
  value113895,

  /// Display: Bottom Z Location of Reconstructable Volume
  /// Definition: The Z location that is the bottom (lowest Z value) of the Reconstructable Volume. Specified as the Z component within the Patient Coordinate System defined by a specified Frame of Reference
  value113896,

  /// Display: Top Z Location of Scanning Length
  /// Definition: The Z location that is the top (highest Z value) of the scanning length. Specified as the Z component within the Patient Coordinate System defined by a specified Frame of Reference
  value113897,

  /// Display: Bottom Z Location of Scanning Length
  /// Definition: The Z location that is the bottom (lowest Z value) of the scanning length. Specified as the Z component within the Patient Coordinate System defined by a specified Frame of Reference
  value113898,

  /// Display: Exposed Range
  /// Definition: The range along the z axis of the total volume irradiated, per IEC 60601-2-44, Ed. 3, 203.115(b). The start and stop of loading corresponding to the outer edge of the full width half maximum of the free-in-air dose profile for the beam collimation used
  value113899,

  /// Display: Dose Check Alert Details
  /// Definition: Report section about cumulative dose alerts during an examination
  value113900,

  /// Display: DLP Alert Value Configured
  /// Definition: Flag denoting whether a DLP Alert Value was configured
  value113901,

  /// Display: CTDIvol Alert Value Configured
  /// Definition: Flag denoting whether a CTDIvol Alert Value was configured
  value113902,

  /// Display: DLP Alert Value
  /// Definition: Cumulative Dose Length Product value configured to trigger an alert; see NEMA XR 25-2010 Dose Check Standard
  value113903,

  /// Display: CTDIvol Alert Value
  /// Definition: Cumulative CTDIvol value configured to trigger an alert; see NEMA XR 25-2010 Dose Check Standard
  value113904,

  /// Display: Accumulated DLP Forward Estimate
  /// Definition: A forward estimate of the accumulated DLP plus the estimated DLP for the next Protocol Element Group; see NEMA XR 25-2010 Dose Check Standard
  value113905,

  /// Display: Accumulated CTDIvol Forward Estimate
  /// Definition: A forward estimate at a given location of the accumulated CTDIvol plus the estimated CTDIvol for the next Protocol Element Group; see NEMA XR 25-2010 Dose Check Standard
  value113906,

  /// Display: Reason for Proceeding
  /// Definition: Reason provided for proceeding with a procedure that is projected to exceed a configured dose value
  value113907,

  /// Display: Dose Check Notification Details
  /// Definition: Report section about dose notifications during a protocol element
  value113908,

  /// Display: DLP Notification Value Configured
  /// Definition: Flag denoting whether a DLP Notification Value was configured
  value113909,

  /// Display: CTDIvol Notification Value Configured
  /// Definition: Flag denoting whether a CTDIvol Notification Value was configured
  value113910,

  /// Display: DLP Notification Value
  /// Definition: Dose Length Product value configured to trigger a notification for a given protocol element
  value113911,

  /// Display: CTDIvol Notification Value
  /// Definition: CTDIvol value configured to trigger a notification for a given protocol element
  value113912,

  /// Display: DLP Forward Estimate
  /// Definition: A forward estimate of the DLP for the next Protocol Element Group; see NEMA XR 25-2010 Dose Check Standard
  value113913,

  /// Display: CTDIvol Forward Estimate
  /// Definition: A forward estimate of the CTDIvol for the next Protocol Element Group; see NEMA XR 25-2010 Dose Check Standard
  value113914,

  /// Display: Radiation Exposure
  /// Definition: The amount of ionizing radiation to which the patient was exposed
  value113921,

  /// Display: Radioactive Substance Administered
  /// Definition: Type, amount and route of radioactive substance administered
  value113922,

  /// Display: Radiation Exposure and Protection Information
  /// Definition: Exposure to ionizing radiation and associated preventive measures used to reduce the exposure of parts of the body like lead apron or eye, thyroid gland or gonad protection
  value113923,

  /// Display: Size Specific Dose Estimation
  /// Definition: The Size-Specific Dose Estimate is a patient dose estimate that takes into account the size of the patient, such as described in AAPM Report 204 by using linear dimensions measured on the patient or patient images or estimated from patient age
  value113930,

  /// Display: Measured Lateral Dimension
  /// Definition: The side-to-side (left to right) dimension of the body part being scanned (per AAPM Report 204)
  value113931,

  /// Display: Measured AP Dimension
  /// Definition: The thickness of the body part being scanned, in the antero-posterior dimension (per AAPM Report 204)
  value113932,

  /// Display: Derived Effective Diameter
  /// Definition: The diameter of the patient at a given location along the Z-axis of the patient, assuming that the patient has a circular cross-section (per AAPM Report 204)
  value113933,

  /// Display: AAPM 204 Lateral Dimension
  /// Definition: The Size Specific Dose Estimation is computed using Table 1B (32cm phantom) or Table 2B (16cm phantom) of AAPM Report 204
  value113934,

  /// Display: AAPM 204 AP Dimension
  /// Definition: The Size Specific Dose Estimation is computed using Table 1C (32cm phantom) or Table 2C (16cm phantom) of AAPM Report 204
  value113935,

  /// Display: AAPM 204 Sum of Lateral and AP Dimension
  /// Definition: The Size Specific Dose Estimation is computed using Table 1A (32cm phantom) or Table 2A (16cm phantom) of AAPM Report 204
  value113936,

  /// Display: AAPM 204 Effective Diameter Estimated From Patient Age
  /// Definition: The Size Specific Dose Estimation is computed using Table 1D (32cm phantom) or Table 2D (16cm phantom) using an effective diameter estimated from the patient's age using Table 3 of AAPM Report 204
  value113937,

  /// Display: System Calculated
  /// Definition: Values calculated from other existing parameters
  value113940,

  /// Display: In Detector Plane
  /// Definition: A segmented region of the detector surface within the irradiated area (but might not be near the center of the detector)
  value113941,

  /// Display: X-Ray Reading Device
  /// Definition: A device that creates digital images from X-Ray detectors (Direct, Indirect or Storage)
  value113942,

  /// Display: X-Ray Source Data Available
  /// Definition: Parameters related to the X-Ray source (generator, tube, etc.) are available to the recording application
  value113943,

  /// Display: X-Ray Mechanical Data Available
  /// Definition: Parameters related to the X-Ray Mechanical System (Stand, Table) are available to the recording application
  value113944,

  /// Display: X-Ray Detector Data Available
  /// Definition: Parameters related to the X-Ray Detector are available to the recording application
  value113945,

  /// Display: Projection Eponymous Name
  /// Definition: Describes the radiographic method of patient, tube and detector positioning to achieve a well described projection or view
  value113946,

  /// Display: Detector Type
  /// Definition: Type of Detector used to acquire data; e.g. Images
  value113947,

  /// Display: Direct Detector
  /// Definition: Detector that directly transforms the input signal to pixel values
  value113948,

  /// Display: Indirect Detector
  /// Definition: Detector that transforms an intermediate signal into pixel values; e.g. a scintillator-based detector
  value113949,

  /// Display: Storage Detector
  /// Definition: Storage detector that stores a signal that is later transformed by a reader into pixel values; e.g. a phosphor-based detector
  value113950,

  /// Display: Film
  /// Definition: Film that is scanned to create pixel values
  value113951,

  /// Display: Table Mount
  /// Definition: The cassette/detector is mounted in the patient table
  value113952,

  /// Display: Unmounted Detector
  /// Definition: The cassette/detector is not mounted.; e.g. a cassette placed underneath the patient
  value113953,

  /// Display: Upright Stand Mount
  /// Definition: The cassette/detector is mounted in an upright stand
  value113954,

  /// Display: C-Arm Mount
  /// Definition: The cassette/detector is mounted on a c-arm
  value113955,

  /// Display: CR/DR Mechanical Configuration
  /// Definition: Method of mounting or positioning a CR/DR cassette or detector
  value113956,

  /// Display: Fluoroscopy-Guided Projection Radiography System
  /// Definition: An integrated projection radiography system capable of fluoroscopy
  value113957,

  /// Display: Integrated Projection Radiography System
  /// Definition: A projection radiography system where the X-Ray detector, X-Ray Source and gantry components are integrated and the managing system is able to access details of each component
  value113958,

  /// Display: Cassette-based Projection Radiography System
  /// Definition: A projection radiography system where the X-Ray detector, X-Ray Source and gantry components are not integrated; e.g. cassette-based CR and DR systems
  value113959,

  /// Display: Reconstruction Algorithm
  /// Definition: Description of the algorithm used when reconstructing the image from the data acquired during the acquisition process
  value113961,

  /// Display: Filtered Back Projection
  /// Definition: An algorithm for reconstructing an image from multiple projections by back-projecting the measured values along the line of the projection and filtering the result to reduce blurring
  value113962,

  /// Display: Iterative Reconstruction
  /// Definition: An algorithm for reconstructing an image from multiple projections by starting with an assumed reconstructed image, computing projections from the image, comparing the original projection data and updating the reconstructed image based upon the difference between the calculated and the actual projections
  value113963,

  /// Display: Procedure Step To This Point
  /// Definition: The period of time from the start of a Procedure Step until the time point established by the context of the reference
  value113970,

  /// Display: Not a number
  /// Definition: Measurement not available: Not a number (per IEEE 754)
  value114000,

  /// Display: Negative Infinity
  /// Definition: Measurement not available: Negative Infinity (per IEEE 754)
  value114001,

  /// Display: Positive Infinity
  /// Definition: Measurement not available: Positive Infinity (per IEEE 754)
  value114002,

  /// Display: Divide by zero
  /// Definition: Measurement not available: Divide by zero (per IEEE 754)
  value114003,

  /// Display: Underflow
  /// Definition: Measurement not available: Underflow (per IEEE 754)
  value114004,

  /// Display: Overflow
  /// Definition: Measurement not available: Overflow (per IEEE 754)
  value114005,

  /// Display: Measurement failure
  /// Definition: Measurement not available: Measurement failure
  value114006,

  /// Display: Measurement not attempted
  /// Definition: Measurement not available: Measurement not attempted
  value114007,

  /// Display: Calculation failure
  /// Definition: Measurement not available: Calculation failure
  value114008,

  /// Display: Value out of range
  /// Definition: Measurement not available: Value out of range
  value114009,

  /// Display: Value unknown
  /// Definition: Measurement not available: Value unknown
  value114010,

  /// Display: Value indeterminate
  /// Definition: Measurement not available: Value indeterminate
  value114011,

  /// Display: Time of flight
  /// Definition: Measures the time-of-flight of a light signal between the camera and the subject for each point of the image
  value114201,

  /// Display: Interferometry
  /// Definition: Interferometry is a family of techniques in which waves are superimposed in order to extract depth information about the scanned object
  value114202,

  /// Display: Laser scanning
  /// Definition: Laser scanning describes the general method to sample or scan a surface using laser technology
  value114203,

  /// Display: Pattern projection
  /// Definition: Projecting a narrow band of light onto a three-dimensionally shaped surface produces a line of illumination that appears distorted from other perspectives than that of the projector. It can be used for an exact geometric reconstruction of the surface shape
  value114204,

  /// Display: Shape from shading
  /// Definition: A technique for estimating the surface normal of an object by observing that object under different lighting conditions
  value114205,

  /// Display: Shape from motion
  /// Definition: A technique for estimating the surface normal of an object by observing that object under different motions
  value114206,

  /// Display: Confocal imaging
  /// Definition: An optical imaging technique used to increase optical resolution and contrast of a micrograph by using point illumination and a spatial pinhole to eliminate out-of-focus light in specimens that are thicker than the focal plane. It enables the reconstruction of 3D structures from the obtained images
  value114207,

  /// Display: Point Cloud Algorithmic
  /// Definition: Point cloud that was calculated by an algorithm
  value114208,

  /// Display: Turntable Scan Method
  /// Definition: Scanning the object from different views by placing it on a rotating table
  value114209,

  /// Display: High resolution
  /// Definition: Higher resolution with a longer acquisition time
  value114210,

  /// Display: Fast mode
  /// Definition: Lower resolution with a shorter acquisition time
  value114211,

  /// Display: Iterative Closest Point
  /// Definition: An algorithm employed to minimize the difference between two clouds of points. It iteratively revises the transformation (translation, rotation) needed to minimize the distance between the points of two point clouds
  value114213,

  /// Display: Freehand
  /// Definition: Human controlled minimization of the distance between the points of two point clouds
  value114215,

  /// Display: Checkerboard
  /// Definition: Scanning the object from different views by placing it in front of a checkerboard pattern
  value114216,

  /// Display: Quotation Mode
  /// Definition: Type of source for observations quoted from an external source
  value121001,

  /// Display: Quoted Source
  /// Definition: Reference to external source of quoted observations
  value121002,

  /// Display: Document
  /// Definition: Documentary source of quoted observations
  value121003,

  /// Display: Verbal
  /// Definition: Verbal source of quoted observations
  value121004,

  /// Display: Observer Type
  /// Definition: Type of observer that created the observations
  value121005,

  /// Display: Person
  /// Definition: Human observer created the observations
  value121006,

  /// Display: Device
  /// Definition: Automated device created the observations
  value121007,

  /// Display: Person Observer Name
  /// Definition: Name of human observer that created the observations
  value121008,

  /// Display: Person Observer's Organization Name
  /// Definition: Organization or institution with which the human observer is affiliated for the context of the current observation
  value121009,

  /// Display: Person Observer's Role in the Organization
  /// Definition: Organizational role of human observer for the context of the current observation
  value121010,

  /// Display: Person Observer's Role in this Procedure
  /// Definition: Procedural role of human observer for the context of the current observation
  value121011,

  /// Display: Device Observer UID
  /// Definition: Unique identifier of automated device that created the observations
  value121012,

  /// Display: Device Observer Name
  /// Definition: Institution-provided identifier of automated device that created the observations
  value121013,

  /// Display: Device Observer Manufacturer
  /// Definition: Manufacturer of automated device that created the observations
  value121014,

  /// Display: Device Observer Model Name
  /// Definition: Manufacturer-provided model name of automated device that created the observations
  value121015,

  /// Display: Device Observer Serial Number
  /// Definition: Manufacturer-provided serial number of automated device that created the observations
  value121016,

  /// Display: Device Observer Physical Location During Observation
  /// Definition: Location of automated device that created the observations whilst the observations were being made
  value121017,

  /// Display: Procedure Study Instance UID
  /// Definition: Unique identifier for the Study or Requested Procedure
  value121018,

  /// Display: Procedure Study Component UID
  /// Definition: Unique identifier for the Performed Procedure Step
  value121019,

  /// Display: Placer Number
  /// Definition: Identifier for the Order (or Service Request) assigned by the order placer system
  value121020,

  /// Display: Filler Number
  /// Definition: Identifier for the Order (or Service Request) assigned by the order filler system
  value121021,

  /// Display: Accession Number
  /// Definition: Identifier for the Order (or Service Request) assigned by the department information system
  value121022,

  /// Display: Procedure Code
  /// Definition: Type of procedure scheduled or performed
  value121023,

  /// Display: Subject Class
  /// Definition: Type of observation subject
  value121024,

  /// Display: Patient
  /// Definition: A patient is the subject of observations
  value121025,

  /// Display: Fetus
  /// Definition: Fetus of patient is the subject of observations
  value121026,

  /// Display: Specimen
  /// Definition: Specimen is the subject of observations
  value121027,

  /// Display: Subject UID
  /// Definition: Unique Identifier of patient or fetus who is the subject of observations
  value121028,

  /// Display: Subject Name
  /// Definition: Name of patient who is the subject of observations
  value121029,

  /// Display: Subject ID
  /// Definition: Identifier of patient or fetus who is the subject of observations
  value121030,

  /// Display: Subject Birth Date
  /// Definition: Birth Date of patient who is the subject of observations
  value121031,

  /// Display: Subject Sex
  /// Definition: Sex of patient who is the subject of observations
  value121032,

  /// Display: Subject Age
  /// Definition: Age of patient who is the subject of observations
  value121033,

  /// Display: Subject Species
  /// Definition: Species of patient who is the subject of observations
  value121034,

  /// Display: Subject Breed
  /// Definition: The breed of the subject
  value121035,

  /// Display: Mother of fetus
  /// Definition: Name of mother of fetus that is the subject of observations
  value121036,

  /// Display: Fetus number
  value121037,

  /// Display: Number of Fetuses
  value121038,

  /// Display: Specimen UID
  /// Definition: Unique Identifier of specimen that is the subject of observations
  value121039,

  /// Display: Specimen Accession Number
  /// Definition: Accession Number of specimen that is the subject of observations
  value121040,

  /// Display: Specimen Identifier
  /// Definition: Identifier of specimen that is the subject of observations
  value121041,

  /// Display: Specimen Type
  /// Definition: Coded category of specimen that is the subject of observations
  value121042,

  /// Display: Slide Identifier
  /// Definition: Identifier of specimen microscope slide that is the subject of observations
  value121043,

  /// Display: Slide UID
  /// Definition: Unique Identifier of specimen microscope slide that is the subject of observations
  value121044,

  /// Display: Language
  /// Definition: The language of the content, being a language that is primarily used for human communication; e.g. English, French
  value121045,

  /// Display: Country of Language
  /// Definition: The country-specific variant of language; e.g. Canada for Candadian French
  value121046,

  /// Display: Language of Value
  /// Definition: The language of the value component of a name-value pair
  value121047,

  /// Display: Language of Name and Value
  /// Definition: The language of both the name component and the value component of a name-value pair
  value121048,

  /// Display: Language of Content Item and Descendants
  /// Definition: The language of the current content item (node in a tree of content) and all its descendants
  value121049,

  /// Display: Equivalent Meaning of Concept Name
  /// Definition: The human readable meaning of the name component of a name-value pair that is equivalent to the post-coordinated meaning conveyed by the coded name and its concept modifier children
  value121050,

  /// Display: Equivalent Meaning of Value
  /// Definition: The human readable meaning of the value component of a name-value pair that is equivalent to the post-coordinated meaning conveyed by the coded value and its concept modifier children
  value121051,

  /// Display: Presence of property
  /// Definition: Whether or not the property concept being modified is present or absent
  value121052,

  /// Display: Present
  value121053,

  /// Display: Absent
  value121054,

  /// Display: Path
  /// Definition: A set of points on an image, that when connected by line segments, provide a polyline from which a linear measurement was inferred
  value121055,

  /// Display: Area outline
  /// Definition: A set of points on an image, that when connected by line segments, provide a closed polyline that is the border of a defined region from which an area, or two-dimensional measurement, was inferred
  value121056,

  /// Display: Perimeter outline
  /// Definition: A set of points on an image, that when connected by line segments, provide a closed polyline that is a two-dimensional border of a three-dimensional region's intersection with, or projection into the image
  value121057,

  /// Display: Procedure reported
  /// Definition: The imaging procedure whose results are reported
  value121058,

  /// Display: Presence Undetermined
  /// Definition: Presence or absence of a property is undetermined
  value121059,

  /// Display: History
  value121060,

  /// Display: Request
  value121062,

  /// Display: Current Procedure Descriptions
  value121064,

  /// Display: Procedure Description
  /// Definition: A description of the imaging procedure
  value121065,

  /// Display: Prior Procedure Descriptions
  value121066,

  /// Display: Previous Findings
  value121068,

  /// Display: Previous Finding
  /// Definition: An observation found on a prior imaging study
  value121069,

  /// Display: Findings
  value121070,

  /// Display: Finding
  /// Definition: An observation found on an imaging study
  value121071,

  /// Display: Impressions
  value121072,

  /// Display: Impression
  /// Definition: An interpretation in the clinical context of the finding(s) on an imaging study
  value121073,

  /// Display: Recommendations
  value121074,

  /// Display: Recommendation
  /// Definition: A recommendation for management or investigation based on the findings and impressions of an imaging study
  value121075,

  /// Display: Conclusions
  value121076,

  /// Display: Conclusion
  /// Definition: An interpretation in the clinical context of the finding(s) on an imaging study
  value121077,

  /// Display: Addendum
  value121078,

  /// Display: Baseline
  /// Definition: Initial images used to esyablish a beginning condition that is used for comparison over time to look for changes. [Paraphrases NCI-PT (C1442488, UMLS, "Baseline"), which is defined as "An initial measurement that is taken at an early time point to represent a beginning condition, and is used for comparison over time to look for changes. For example, the size of a tumor will be measured before treatment (baseline) and then afterwards to see if the treatment had an effect. A starting point to which things may be compared."]
  value121079,

  /// Display: Best illustration of finding
  /// Definition: A selection of composite instances that best illustrates a particular finding; e.g. an image slice at the location of the largest extent of a tumor
  value121080,

  /// Display: Physician
  value121081,

  /// Display: Nurse
  value121082,

  /// Display: Technologist
  value121083,

  /// Display: Radiographer
  value121084,

  /// Display: Intern
  value121085,

  /// Display: Resident
  value121086,

  /// Display: Registrar
  value121087,

  /// Display: Fellow
  /// Definition: A medical practitioner undergoing sub-specialty training; e.g. during the period after specialty training (residency)
  value121088,

  /// Display: Attending [Consultant]
  value121089,

  /// Display: Scrub nurse
  value121090,

  /// Display: Surgeon
  value121091,

  /// Display: Sonologist
  /// Definition: A medical practitioner with sub-specialty training in Ultrasound
  value121092,

  /// Display: Sonographer
  value121093,

  /// Display: Performing
  /// Definition: The person responsible for performing the procedure
  value121094,

  /// Display: Referring
  /// Definition: The person responsible for referring the patient for the procedure
  value121095,

  /// Display: Requesting
  /// Definition: The person responsible for requesting the procedure
  value121096,

  /// Display: Recording
  /// Definition: The person responsible for recording the procedure or observation
  value121097,

  /// Display: Verifying
  /// Definition: The person responsible for verifying the recorded procedure or observation
  value121098,

  /// Display: Assisting
  /// Definition: The person responsible for assisting with the procedure
  value121099,

  /// Display: Circulating
  /// Definition: The person responsible for making preparations for and monitoring the procedure
  value121100,

  /// Display: Standby
  /// Definition: The person responsible for standing by to assist with the precedure if required
  value121101,

  /// Display: Other sex
  /// Definition: Other sex
  value121102,

  /// Display: Undetermined sex
  /// Definition: Sex of subject undetermined at time of encoding
  value121103,

  /// Display: Ambiguous sex
  /// Definition: Ambiguous sex
  value121104,

  /// Display: Radiation Physicist
  /// Definition: Radiation Physicist
  value121105,

  /// Display: Comment
  /// Definition: Comment
  value121106,

  /// Display: Indications for Procedure
  /// Definition: Indications for Procedure
  value121109,

  /// Display: Patient Presentation
  /// Definition: Patient condition at the beginning of a healthcare encounter
  value121110,

  /// Display: Summary
  /// Definition: Summary of a procedure, including most significant findings
  value121111,

  /// Display: Source of Measurement
  /// Definition: Image or waveform used as source for measurement
  value121112,

  /// Display: Complications
  /// Definition: Complications from a procedure
  value121113,

  /// Display: Performing Physician
  /// Definition: Physician who performed a procedure
  value121114,

  /// Display: Discharge Summary
  /// Definition: Summary of patient condition upon Discharge from a healthcare facility
  value121115,

  /// Display: Proximal Finding Site
  /// Definition: Proximal Anatomic Location for a differential measurement; may be considered subtype of term (G-C0E3, SRT, "Finding Site"); e.g. distance or pressure gradient
  value121116,

  /// Display: Distal Finding Site
  /// Definition: Distal Anatomic Location for a differential measurement; may be considered subtype of term (G-C0E3, SRT, "Finding Site"); e.g. distance or pressure gradient
  value121117,

  /// Display: Patient Characteristics
  /// Definition: Patient Characteristics (findings)
  value121118,

  /// Display: Cath Lab Procedure Log
  /// Definition: Time-stamped record of events that occur during a catheterization procedure
  value121120,

  /// Display: Room identification
  /// Definition: Room identification
  value121121,

  /// Display: Equipment Identification
  /// Definition: Equipment identification
  value121122,

  /// Display: Patient Status or Event
  /// Definition: A recorded Patient Status or an event involving a patient
  value121123,

  /// Display: Procedure Action Item ID
  /// Definition: Identification of a step, action, or phase of a procedure
  value121124,

  /// Display: DateTime of Recording of Log Entry
  /// Definition: DateTime of Recording of an Entry in an Event Log
  value121125,

  /// Display: Performed Procedure Step SOP Instance UID
  /// Definition: SOP Instance UID of a Performed Procedure Step
  value121126,

  /// Display: Performed Procedure Step SOP Class UID
  /// Definition: SOP Class UID of a Performed Procedure Step
  value121127,

  /// Display: Procedure Action Duration
  /// Definition: Duration of a step, action, or phase of a procedure
  value121128,

  /// Display: Start Procedure Action Item
  /// Definition: Beginning of a step, action, or phase of a procedure
  value121130,

  /// Display: End Procedure Action Item
  /// Definition: End of a step, action, or phase of a procedure
  value121131,

  /// Display: Suspend Procedure Action Item
  /// Definition: Suspension of a step, action, or phase of a procedure
  value121132,

  /// Display: Resume Procedure Action Item
  /// Definition: Resumption of a step, action, or phase of a procedure
  value121133,

  /// Display: Observation DateTime Qualifier
  /// Definition: Concept modifier for the DateTime of Recording of an Entry in an Event Log
  value121135,

  /// Display: DateTime Unsynchronized
  /// Definition: Recorded DateTime had its source in a system clock not synchronized to other recorded DateTimes
  value121136,

  /// Display: DateTime Estimated
  /// Definition: Recorded DateTime is estimated
  value121137,

  /// Display: Image Acquired
  /// Definition: Event of the acquisition of an image
  value121138,

  /// Display: Modality
  /// Definition: Type of data acquisition device
  value121139,

  /// Display: Number of Frames
  /// Definition: Number of Frames in a multi-frame image
  value121140,

  /// Display: Image Type
  /// Definition: Descriptor of an Image
  value121141,

  /// Display: Acquisition Duration
  /// Definition: Duration of the acquisition of an image or a waveform
  value121142,

  /// Display: Waveform Acquired
  /// Definition: Event of the acquisition of an image
  value121143,

  /// Display: Document Title
  /// Definition: Document Title
  value121144,

  /// Display: Description of Material
  /// Definition: Description of Material used in a procedure
  value121145,

  /// Display: Quantity of Material
  /// Definition: Quantity of Material used in a procedure
  value121146,

  /// Display: Billing Code
  /// Definition: Billing Code for materials used in a procedure
  value121147,

  /// Display: Unit Serial Identifier
  /// Definition: Unit or Device Serial Identifier
  value121148,

  /// Display: Lot Identifier
  /// Definition: Lot Identifier
  value121149,

  /// Display: Device Code
  /// Definition: Vendor or local coded value identifying a device
  value121150,

  /// Display: Lesion Identifier
  /// Definition: Identification of a Lesion observed during an imaging procedure
  value121151,

  /// Display: Person administering drug/contrast
  /// Definition: Person administering drug/contrast
  value121152,

  /// Display: Lesion Risk
  /// Definition: Assessment of the risk a coronary lesion presents to the health of a patient
  value121153,

  /// Display: Intervention attempt identifier
  /// Definition: Identifier for an attempted Intervention
  value121154,

  /// Display: Deployment
  /// Definition: Use of a device to deploy another device
  value121155,

  /// Display: Percutaneous Entry Action
  /// Definition: Action of a clinical professional at the site of percutaneous access to a patient's cardiovascular system
  value121156,

  /// Display: Begin Circulatory Support
  /// Definition: The action or event of beginning circulatory support for a patient
  value121157,

  /// Display: End Circulatory Support
  /// Definition: The action or event of ending circulatory support for a patient
  value121158,

  /// Display: Oxygen Administration Rate
  /// Definition: Rate of Oxygen Administration
  value121160,

  /// Display: Begin Oxygen Administration
  /// Definition: The action or event of beginning administration of oxygen to a patient
  value121161,

  /// Display: End oxygen administration
  /// Definition: The action or event of ending administration of oxygen to a patient
  value121162,

  /// Display: By ventilator
  /// Definition: Method of administration of oxygen to a patient by ventilator
  value121163,

  /// Display: Patient Assessment Performed
  /// Definition: The action or event of assessing the clinical status of a patient
  value121165,

  /// Display: Begin Pacing
  /// Definition: The action or event of beginning pacing support for a patient
  value121166,

  /// Display: End Pacing
  /// Definition: The action or event of ending pacing support for a patient
  value121167,

  /// Display: Begin Ventilation
  /// Definition: The action or event of beginning ventilation support for a patient
  value121168,

  /// Display: End Ventilation
  /// Definition: The action or event of ending ventilation support for a patient
  value121169,

  /// Display: Tech Note
  /// Definition: Procedural note originated by a technologist
  value121171,

  /// Display: Nursing Note
  /// Definition: Procedural note originated by a nurse
  value121172,

  /// Display: Physician Note
  /// Definition: Procedural note originated by a Physician
  value121173,

  /// Display: Procedure Note
  /// Definition: General procedural note
  value121174,

  /// Display: Key Images
  /// Definition: List of references to images considered significant
  value121180,

  /// Display: DICOM Object Catalog
  /// Definition: List of references to DICOM SOP Instances
  value121181,

  /// Display: Referenced Frames
  /// Definition: Individual frames selected as a subset of a multi-frame image
  value121190,

  /// Display: Referenced Segment
  /// Definition: Segment selected as a subset of a segmentation image, specifically the pixels/voxels identified as belonging to the classification of the identified segment
  value121191,

  /// Display: Device Subject
  /// Definition: A device is the subject of observations
  value121192,

  /// Display: Device Subject Name
  /// Definition: Name or other identifier of a device that is the subject of observations
  value121193,

  /// Display: Device Subject Manufacturer
  /// Definition: Manufacturer of a device that is the subject of observations
  value121194,

  /// Display: Device Subject Model Name
  /// Definition: Model Name of a device that is the subject of observations
  value121195,

  /// Display: Device Subject Serial Number
  /// Definition: Serial Number of a device that is the subject of observations
  value121196,

  /// Display: Device Subject Physical Location during observation
  /// Definition: Physical Location of a device that is the subject of observations during those observations
  value121197,

  /// Display: Device Subject UID
  /// Definition: Unique Identifier of a device that is the subject of observations
  value121198,

  /// Display: Illustration of ROI
  /// Definition: Illustration of a region of interest
  value121200,

  /// Display: Area Outline
  value121201,

  /// Display: Area of Defined Region
  value121202,

  /// Display: Distance
  /// Definition: A one dimensional, or linear, numeric measurement
  value121206,

  /// Display: Height
  /// Definition: Vertical measurement value
  value121207,

  /// Display: Inter-Marker Distance
  /// Definition: Distance between marks on a device of calibrated size; e.g. a ruler
  value121208,

  /// Display: Path
  value121210,

  /// Display: Path length
  /// Definition: A one dimensional, or linear, numeric measurement along a polyline
  value121211,

  /// Display: Perimeter Outline
  value121213,

  /// Display: Referenced Segmentation Frame
  /// Definition: Frame selected from a segmentation image, specifically the pixels/voxels identified as belonging to the classification of the segment encompassing the identified frame
  value121214,

  /// Display: Volume estimated from single 2D region
  /// Definition: A three-dimensional numeric measurement that is approximate, based on a two-dimensional region in a single image
  value121216,

  /// Display: Volume estimated from three or more non-coplanar 2D regions
  /// Definition: A three-dimensional numeric measurement that is approximate, based on three or more non-coplanar two-dimensional image regions
  value121217,

  /// Display: Volume estimated from two non-coplanar 2D regions
  /// Definition: A three-dimensional numeric measurement that is approximate, based on two non-coplanar two-dimensional image regions
  value121218,

  /// Display: Volume of bounding three dimensional region
  /// Definition: A three-dimensional numeric measurement of the bounding region of a three-dimensional region of interest in an image set
  value121219,

  /// Display: Volume of circumscribed sphere
  /// Definition: A three-dimensional numeric measurement of the bounding sphere of a three-dimensional region of interest in an image set
  value121220,

  /// Display: Volume of ellipsoid
  /// Definition: A three-dimensional numeric measurement of an ellipsoid shaped three-dimensional region of interest in an image set
  value121221,

  /// Display: Volume of sphere
  /// Definition: A three-dimensional numeric measurement of a sphere shaped three-dimensional region of interest in an image set
  value121222,

  /// Display: Path Vertex
  /// Definition: Coordinates of a point on a defined path
  value121230,

  /// Display: Volume Surface
  /// Definition: Surface of an identified or measured volume
  value121231,

  /// Display: Source series for segmentation
  /// Definition: Series of image instances used as source data for a segmentation
  value121232,

  /// Display: Source image for segmentation
  /// Definition: Image instances used as source data for a segmentation
  value121233,

  /// Display: Distance from nipple
  /// Definition: Indicates the location of the area of interest as measured from the nipple of the breast
  value121242,

  /// Display: Distance from skin
  /// Definition: Indicates the location of the area of interest as measured from the most direct skin point of the breast
  value121243,

  /// Display: Distance from chest wall
  /// Definition: Indicates the location of the area of interest as measured from the chest wall
  value121244,

  /// Display: Patient exposure to ionizing radiation
  /// Definition: Patient exposure to ionizing radiation (procedure)
  value121290,

  /// Display: Results communicated
  /// Definition: The act of communicating actionable findings to a responsible receiver
  value121291,

  /// Display: Simultaneous Doppler
  /// Definition: Reference is to a Doppler waveform acquired simultaneously with an image
  value121301,

  /// Display: Simultaneous Hemodynamic
  /// Definition: Reference is to a Hemodynamic waveform acquired simultaneously with an image
  value121302,

  /// Display: Simultaneous ECG
  /// Definition: Reference is to a ECG waveform acquired simultaneously with an image
  value121303,

  /// Display: Simultaneous Voice Narrative
  /// Definition: Reference is to a voice narrative recording acquired simultaneously with an image
  value121304,

  /// Display: Simultaneous Respiratory Waveform
  /// Definition: A waveform representing chest expansion and contraction due to respiratory activity, measured simultaneously with the acquisition of this Image
  value121305,

  /// Display: Simultaneous Arterial Pulse Waveform
  /// Definition: Arterial pulse waveform obtained simultaneously with acquisition of a referencing image
  value121306,

  /// Display: Simultaneous Phonocardiographic Waveform
  /// Definition: Phonocardiographic waveform obtained simultaneously with acquisition of a referencing image
  value121307,

  /// Display: Localizer
  /// Definition: Image providing an anatomical reference on the patient under examination, for the purpose of defining the location of the ensuing imaging
  value121311,

  /// Display: Biopsy localizer
  /// Definition: Image providing an anatomical reference on the patient under examination, for the purpose of planning or documenting a biopsy
  value121312,

  /// Display: Other partial views
  /// Definition: Image providing a partial view of the target anatomy, when the target anatomy is too large for a single image
  value121313,

  /// Display: Other image of biplane pair
  /// Definition: Image providing a view of the target anatomy in a different imaging plane, typically from a near perpendicular angle
  value121314,

  /// Display: Other image of stereoscopic pair
  /// Definition: Image providing a view of the target anatomy in a different imaging plane, typically with a small angular difference
  value121315,

  /// Display: Images related to standalone object
  /// Definition: Image related to a non-image information object
  value121316,

  /// Display: Spectroscopy
  /// Definition: Image where signals are identified and separated according to their frequencies; e.g. to identify individual chemicals, or individual nuclei in a chemical compound
  value121317,

  /// Display: Spectroscopy Data for Water Phase Correction
  /// Definition: MR spectroscopy data acquired to correct the phase of the diagnostic data for the phase signal of the Water
  value121318,

  /// Display: Uncompressed predecessor
  /// Definition: An image that has not already been lossy compressed that is used as the source for creation of a lossy compressed image
  value121320,

  /// Display: Mask image for image processing operation
  /// Definition: Image used as the mask for an image processing operation, such as subtraction
  value121321,

  /// Display: Source image for image processing operation
  /// Definition: Image used as the source for an image processing operation
  value121322,

  /// Display: Source series for image processing operation
  /// Definition: Series used as the source for an image processing operation
  value121323,

  /// Display: Source Image
  /// Definition: Image used as the source for a derived or compressed image
  value121324,

  /// Display: Lossy compressed image
  /// Definition: Image encoded with a lossy compression transfer syntax
  value121325,

  /// Display: Alternate SOP Class instance
  /// Definition: SOP Instance encoded with a different SOP Class but otherwise equivalent data
  value121326,

  /// Display: Full fidelity image
  /// Definition: Full fidelity image, uncompressed or lossless compressed
  value121327,

  /// Display: Alternate Photometric Interpretation image
  /// Definition: Image encoded with a different photometric interpretation
  value121328,

  /// Display: Source image for montage
  /// Definition: Image used as a source for a montage (stitched) image
  value121329,

  /// Display: Lossy compressed predecessor
  /// Definition: An image that has previously been lossy compressed that is used as the source for creation of another lossy compressed image
  value121330,

  /// Display: Equivalent CDA Document
  /// Definition: HL7 Document Architecture (CDA) Document that contains clinical content equivalent to the referencing Instance
  value121331,

  /// Display: Complete Rendering for Presentation
  /// Definition: Instance that contains a displayable complete rendering of the referencing Instance
  value121332,

  /// Display: Partial Rendering for Presentation
  /// Definition: Instance that contains a displayable partial rendering of the referencing Instance
  value121333,

  /// Display: Extended Rendering for Presentation
  /// Definition: Instance that contains a displayable complete rendering of the referencing Instance, plus additional content such as inline rendering of referenced images
  value121334,

  /// Display: Source Document
  /// Definition: Document whose content has been wholly or partially transformed to create the referencing document
  value121335,

  /// Display: Anatomic image
  /// Definition: Image showing structural anatomic features
  value121338,

  /// Display: Functional image
  /// Definition: Image showing physical or chemical activity
  value121339,

  /// Display: Spectral filtered image
  /// Definition: Image providing the same view of the target anatomy acquired using only a specific imaging wavelength, frequency or energy
  value121340,

  /// Display: Device localizer
  /// Definition: Image providing an anatomical reference on the patient under examination, for the purpose of documenting the location of device such as a diagnostic or therapeutic catheter
  value121341,

  /// Display: Dose Image
  /// Definition: Image providing a graphic view of the distribution of radiation dose
  value121342,

  /// Display: Acquisition frames corresponding to volume
  /// Definition: The referenced image is the source of spatially-related frames from which the referencing 3D volume data set was derived
  value121346,

  /// Display: Volume corresponding to spatially-related acquisition frames
  /// Definition: 3D Volume containing the spatially-related frames in the referencing instance
  value121347,

  /// Display: Temporal Predecessor
  /// Definition: Instance acquired prior to the referencing instance in a set of consecutively acquired instances
  value121348,

  /// Display: Temporal Successor
  /// Definition: Instance acquired subsequent to the referencing instance in a set of consecutively acquired instances
  value121349,

  /// Display: Same acquisition at lower resolution
  /// Definition: Image of the same target area at lower resolution acquired in the same acquisition process
  value121350,

  /// Display: Same acquisition at higher resolution
  /// Definition: Image of the same target area at higher resolution acquired in the same acquisition process
  value121351,

  /// Display: Same acquisition at different focal depth
  /// Definition: Image of the same target area at different focal depth (Z-plane) acquired in the same acquisition process
  value121352,

  /// Display: Same acquisition at different spectral band
  /// Definition: Image of the same target area at different spectral band acquired in the same acquisition process
  value121353,

  /// Display: Imaged container label
  /// Definition: Image specifically targeting the container label
  value121354,

  /// Display: For Processing predecessor
  /// Definition: Source image from which FOR PRESENTATION images were created
  value121358,

  /// Display: Replaced report
  /// Definition: The reference is to a predecessor report that has been replaced by the current report
  value121360,

  /// Display: Addended report
  /// Definition: The reference is to a predecessor report to which the current report provides and addendum
  value121361,

  /// Display: Preliminary report
  /// Definition: A report that precedes the final report and may contain only limited information; it may be time sensitive, and it is not expected to contain all the reportable findings
  value121362,

  /// Display: Partial report
  /// Definition: A report that is not complete
  value121363,

  /// Display: Composed from prior doses
  /// Definition: The dose object created was calculated by summation of existing, previously calculated, RT Dose instances
  value121370,

  /// Display: Composed from prior doses and current plan
  /// Definition: The dose object created was calculated by summation of existing, previously calculated, RT Dose instances and dose newly calculated by the application. The newly calculated dose may or may not exist as an independent object
  value121371,

  /// Display: Source dose for composing current dose
  /// Definition: RT Dose Instances used as source for calculated dose
  value121372,

  /// Display: Active Ingredient Undiluted Concentration
  /// Definition: Concentration of the chemically or physically interesting (active) ingredient of a drug or contrast agent as delivered in product form from the manufacturer, typically in mg/ml
  value121380,

  /// Display: Contrast/Bolus Ingredient Opaque
  /// Definition: X-Ray absorption of the active ingredient of a contrast agent ingredient is greater than the absorption of water (tissue)
  value121381,

  /// Display: Quantity administered
  /// Definition: Number of units of substance administered to a patient; e.g. tablets
  value121382,

  /// Display: Mass administered
  /// Definition: Mass of substance administered to a patient
  value121383,

  /// Display: Derivation
  /// Definition: Method of deriving or calculating a measured value; e.g. mean, or maximum of set
  value121401,

  /// Display: Normality
  /// Definition: Assessment of a measurement relative to a normal range of values; may be considered subtype of term (G-C0F2, SRT, "has interpretation")
  value121402,

  /// Display: Level of Significance
  /// Definition: Significance of a measurement
  value121403,

  /// Display: Selection Status
  /// Definition: Status of selection of a measurement for further processing or use
  value121404,

  /// Display: Population description
  /// Definition: Description of a population of measurements
  value121405,

  /// Display: Reference Authority
  /// Definition: Bibliographic or clinical reference for a Description of a population of measurements
  value121406,

  /// Display: Normal Range description
  /// Definition: Description of a normal range of values for a measurement concept
  value121407,

  /// Display: Normal Range Authority
  /// Definition: Bibliographic or clinical reference for a Description of a normal range of values
  value121408,

  /// Display: User chosen value
  /// Definition: Observation value selected by user for further processing or use, or as most representative
  value121410,

  /// Display: Most recent value chosen
  /// Definition: Observation value is the recently obtained, and has been selected for further processing or use
  value121411,

  /// Display: Mean value chosen
  /// Definition: Observation value is the mean of several measurements, and has been selected for further processing or use
  value121412,

  /// Display: Standard deviation of population
  /// Definition: Standard deviation of a measurement in a reference population
  value121414,

  /// Display: Percentile Ranking of measurement
  /// Definition: Percentile Ranking of an observation value with respect a reference population
  value121415,

  /// Display: Z-Score of measurement
  /// Definition: Z-score of an observation value with respect a reference population, expressed as the dimensionless quantity (x-m) /s, where (x-m) is the deviation of the observation value (x) from the population mean (m), and s is the standard deviation of the population
  value121416,

  /// Display: 2 Sigma deviation of population
  /// Definition: 2 Sigma deviation of a measurement in a reference population
  value121417,

  /// Display: Equation
  /// Definition: Formula used to compute a derived measurement
  value121420,

  /// Display: Equation Citation
  /// Definition: Bibliographic reference to a formula used to compute a derived measurement; reference may be to a specific equation in a journal article
  value121421,

  /// Display: Table of Values Citation
  /// Definition: Bibliographic reference to a Table of Values used to look up a derived measurement
  value121422,

  /// Display: Method Citation
  /// Definition: Bibliographic reference to a method used to compute a derived measurement
  value121423,

  /// Display: Table of Values
  /// Definition: A Table of Values used to look up a derived measurement
  value121424,

  /// Display: Index
  /// Definition: Factor (divisor or multiplicand) for normalizing a measurement; e.g. body surface area used for normalizing hemodynamic measurements
  value121425,

  /// Display: Estimated
  /// Definition: Measurement obtained by observer estimation, rather than with a measurement tool or by calculation
  value121427,

  /// Display: Calculated
  /// Definition: Measurement obtained by calculation
  value121428,

  /// Display: Concern
  /// Definition: Identified issue about a state or process that has the potential to require intervention or management
  value121430,

  /// Display: DateTime Concern Noted
  /// Definition: DateTime concern noted (noted by whom is determined by context of use)
  value121431,

  /// Display: DateTime Concern Resolved
  /// Definition: DateTime the concern was resolved
  value121432,

  /// Display: DateTime Problem Resolved
  /// Definition: DateTime the problem was resolved
  value121433,

  /// Display: Service Delivery Location
  /// Definition: Place at which healthcare services may be provided
  value121434,

  /// Display: Service Performer
  /// Definition: Identification of a healthcare provider who performed a healthcare service; may be either a person or an organization
  value121435,

  /// Display: Medical Device Used
  /// Definition: Type or identifier of a medical device used on, in, or by a patient
  value121436,

  /// Display: Pharmacologic and exercise stress test
  /// Definition: Cardiac stress test using pharmacologic and exercise stressors
  value121437,

  /// Display: Paced stress test
  /// Definition: Cardiac stress test using an implanted or external cardiac pacing device
  value121438,

  /// Display: Correction of congenital cardiovascular deformity
  /// Definition: Procedure for correction of congenital cardiovascular deformity
  value121439,

  /// Display: RT Patient Setup
  /// Definition: Process of placing patient in the anticipated treatment position, including specification and location of positioning aids, and other treatment delivery accessories
  value121701,

  /// Display: RT Patient Position Acquisition, single plane MV
  /// Definition: Acquisition of patient positioning information prior to treatment delivery, using single-plane megavoltage imaging
  value121702,

  /// Display: RT Patient Position Acquisition, dual plane MV
  /// Definition: Acquisition of patient positioning information prior to treatment delivery, using dual-plane megavoltage imaging
  value121703,

  /// Display: RT Patient Position Acquisition, single plane kV
  /// Definition: Acquisition of patient positioning information prior to treatment delivery, using single-plane kilovoltage imaging
  value121704,

  /// Display: RT Patient Position Acquisition, dual plane kV
  /// Definition: Acquisition of patient positioning information prior to treatment delivery, using dual-plane kilovoltage imaging
  value121705,

  /// Display: RT Patient Position Acquisition, dual plane kV/MV
  /// Definition: Acquisition of patient positioning information prior to treatment delivery, using dual-plane combination kilovoltage and megavoltage imaging
  value121706,

  /// Display: RT Patient Position Acquisition, CT kV
  /// Definition: Acquisition of patient positioning information prior to treatment delivery, using kilovoltage CT imaging
  value121707,

  /// Display: RT Patient Position Acquisition, CT MV
  /// Definition: Acquisition of patient positioning information prior to treatment delivery, using megavoltage CT imaging
  value121708,

  /// Display: RT Patient Position Acquisition, Optical
  /// Definition: Acquisition of patient positioning information prior to treatment delivery, using optical imaging
  value121709,

  /// Display: RT Patient Position Acquisition, Ultrasound
  /// Definition: Acquisition of patient positioning information prior to treatment delivery, using ultrasound imaging
  value121710,

  /// Display: RT Patient Position Acquisition, Spatial Fiducials
  /// Definition: Acquisition of patient positioning information prior to treatment delivery, using spatial fiducials
  value121711,

  /// Display: RT Patient Position Registration, single plane
  /// Definition: Registration of intended and actual patient position prior to treatment delivery, using single-plane images
  value121712,

  /// Display: RT Patient Position Registration, dual plane
  /// Definition: Registration of intended and actual patient position prior to treatment delivery, using dual-plane images
  value121713,

  /// Display: RT Patient Position Registration, 3D CT general
  /// Definition: Registration of intended and actual patient position prior to treatment delivery, using 3D CT images and an unspecified registration approach
  value121714,

  /// Display: RT Patient Position Registration, 3D CT marker-based
  /// Definition: Registration of intended and actual patient position prior to treatment delivery, using 3D CT images and a marker-based registration approach
  value121715,

  /// Display: RT Patient Position Registration, 3D CT volume-based
  /// Definition: Registration of intended and actual patient position prior to treatment delivery, using 3D CT images and a volume-based registration approach
  value121716,

  /// Display: RT Patient Position Registration, 3D on 2D reference
  /// Definition: Registration of intended and actual patient position prior to treatment delivery, using 3D verification images and 2D reference images
  value121717,

  /// Display: RT Patient Position Registration, 2D on 3D reference
  /// Definition: Registration of intended and actual patient position prior to treatment delivery, using 2D verification images and 3D reference images
  value121718,

  /// Display: RT Patient Position Registration, Optical
  /// Definition: Registration of intended and actual patient position prior to treatment delivery, using optical images
  value121719,

  /// Display: RT Patient Position Registration, Ultrasound
  /// Definition: Registration of intended and actual patient position prior to treatment delivery, using ultrasound images
  value121720,

  /// Display: RT Patient Position Registration, Spatial Fiducials
  /// Definition: Registration of intended and actual patient position prior to treatment delivery, using spatial fiducials
  value121721,

  /// Display: RT Patient Position Adjustment
  /// Definition: Adjustment of patient position such that the patient is correctly positioned for treatment
  value121722,

  /// Display: RT Patient Position In-treatment-session Review
  /// Definition: Review of patient positioning information in the process of delivering a treatment session
  value121723,

  /// Display: RT Treatment Simulation with Internal Verification
  /// Definition: Simulated radiotherapy treatment delivery using verification integral to the Treatment Delivery System
  value121724,

  /// Display: RT Treatment Simulation with External Verification
  /// Definition: Simulated radiotherapy treatment delivery using verification by a external Machine Parameter Verifier
  value121725,

  /// Display: RT Treatment with Internal Verification
  /// Definition: Radiotherapy treatment delivery using verification integral to the Treatment Delivery System
  value121726,

  /// Display: RT Treatment with External Verification
  /// Definition: Radiotherapy treatment delivery using verification by an external Machine Parameter Verifier
  value121727,

  /// Display: RT Treatment QA with Internal Verification
  /// Definition: Quality assurance of a radiotherapy treatment delivery using verification integral to the Treatment Delivery System
  value121728,

  /// Display: RT Treatment QA with External Verification
  /// Definition: Quality assurance of a radiotherapy treatment delivery using verification by an external Machine Parameter Verifier
  value121729,

  /// Display: RT Machine QA
  /// Definition: Quality assurance of a Treatment Delivery Device
  value121730,

  /// Display: RT Treatment QA by RT Plan Dose Check
  /// Definition: Perform Quality Assurance on an RT Plan by evaluating dosimetric content of the current RT Plan
  value121731,

  /// Display: RT Treatment QA by RT Plan Difference Check
  /// Definition: Perform Quality Assurance on an RT Plan by comparing the content of previously quality-assessed RT Plans with the current RT Plan
  value121732,

  /// Display: RT Treatment QA by RT Ion Plan Dose Check
  /// Definition: Perform Quality Assurance on an RT Ion Plan by evaluating dosimetric content of the current RT Ion Plan
  value121733,

  /// Display: RT Treatment QA with RT Ion Plan Difference Check
  /// Definition: Perform Quality Assurance on an RT Ion Plan by comparing the content of previously quality-assessed RT Ion Plans with the current RT Ion Plan
  value121734,

  /// Display: Treatment Delivery Type
  /// Definition: Indicates whether the treatment to be delivered is a complete fraction or a continuation of previous incompletely treated fraction
  value121740,

  /// Display: Patient called to procedure room
  /// Definition: Patient called to procedure room
  value122001,

  /// Display: Patient admitted to procedure room
  /// Definition: Patient admitted to procedure room
  value122002,

  /// Display: Patient given pre-procedure instruction
  /// Definition: Patient given pre-procedure instruction
  value122003,

  /// Display: Patient informed consent given
  /// Definition: Patient informed consent given
  value122004,

  /// Display: Patient advance directive given
  /// Definition: Patient advance directive given
  value122005,

  /// Display: Nil Per Os (NPO) status confirmed
  /// Definition: Nil Per Os (NPO) status confirmed
  value122006,

  /// Display: Patient assisted to table
  /// Definition: Patient assisted to table
  value122007,

  /// Display: Patient prepped and draped
  /// Definition: Patient prepped and draped
  value122008,

  /// Display: Patient connected to continuous monitoring
  /// Definition: Patient connected to continuous monitoring
  value122009,

  /// Display: Patient transferred to holding area
  /// Definition: Patient transferred to holding area
  value122010,

  /// Display: Patient transferred to surgery
  /// Definition: Patient transferred to surgery
  value122011,

  /// Display: Patient transferred to CCU
  /// Definition: Patient transferred to CCU
  value122012,

  /// Display: Patient disoriented
  /// Definition: Patient disoriented
  value122020,

  /// Display: Patient reports nausea
  /// Definition: Patient reports nausea
  value122021,

  /// Display: Patient reports discomfort
  /// Definition: Patient reports discomfort
  value122022,

  /// Display: Patient reports chest pain
  /// Definition: Patient reports chest pain
  value122023,

  /// Display: Patient reports no pain
  /// Definition: Patient reports no pain
  value122024,

  /// Display: Patient alert
  /// Definition: Patient alert
  value122025,

  /// Display: Patient restless
  /// Definition: Patient restless
  value122026,

  /// Display: Patient sedated
  /// Definition: Patient sedated
  value122027,

  /// Display: Patient asleep
  /// Definition: Patient asleep
  value122028,

  /// Display: Patient unresponsive
  /// Definition: Patient unresponsive
  value122029,

  /// Display: Patient has respiratory difficulty
  /// Definition: Patient has respiratory difficulty
  value122030,

  /// Display: Patient coughed
  /// Definition: Patient coughed
  value122031,

  /// Display: Patient disconnected from continuous monitoring
  /// Definition: Patient disconnected from continuous monitoring
  value122032,

  /// Display: Hemostasis achieved
  /// Definition: Hemostasis achieved
  value122033,

  /// Display: Hemostasis not achieved - oozing
  /// Definition: Hemostasis not achieved - oozing
  value122034,

  /// Display: Hemostasis not achieved - actively bleeding
  /// Definition: Hemostasis not achieved - actively bleeding
  value122035,

  /// Display: Patient given post-procedure instruction
  /// Definition: Patient given post-procedure instruction
  value122036,

  /// Display: Patient discharged from department
  /// Definition: Patient discharged from department or laboratory
  value122037,

  /// Display: Patient pronounced dead
  /// Definition: Patient pronounced dead
  value122038,

  /// Display: Patient transferred to morgue
  /// Definition: Patient transferred to morgue
  value122039,

  /// Display: Personnel Arrived
  /// Definition: Identified personnel or staff arrived in procedure room
  value122041,

  /// Display: Personnel Departed
  /// Definition: Identified personnel or staff departed procedure room
  value122042,

  /// Display: Page Sent To
  /// Definition: Page sent to identified personnel or staff
  value122043,

  /// Display: Consultation With
  /// Definition: Consultation with identified personnel or staff
  value122044,

  /// Display: Office called
  /// Definition: Office of identified personnel or staff was called
  value122045,

  /// Display: Equipment failure
  /// Definition: Equipment failure
  value122046,

  /// Display: Equipment brought to procedure room
  /// Definition: Equipment brought to procedure room
  value122047,

  /// Display: Equipment ready
  /// Definition: Equipment ready for procedure
  value122048,

  /// Display: Equipment removed
  /// Definition: Equipment removed from procedure room
  value122049,

  /// Display: Bioptome
  /// Definition: Device for obtaining biopsy sample
  value122052,

  /// Display: Valvular Intervention
  /// Definition: Valvular Intervention
  value122053,

  /// Display: Aortic Intervention
  /// Definition: Aortic Intervention
  value122054,

  /// Display: Septal Defect Intervention
  /// Definition: Septal Defect Intervention
  value122055,

  /// Display: Vascular Intervention
  /// Definition: Vascular Intervention
  value122056,

  /// Display: Myocardial biopsy
  /// Definition: Myocardial biopsy
  value122057,

  /// Display: Arterial conduit angiography
  /// Definition: Arterial conduit angiography
  value122058,

  /// Display: Single plane Angiography
  /// Definition: Single plane Angiography
  value122059,

  /// Display: Bi-plane Angiography
  /// Definition: Bi-plane Angiography
  value122060,

  /// Display: Percutaneous Coronary Intervention
  /// Definition: Percutaneous Coronary Intervention
  value122061,

  /// Display: 15-Lead ECG
  /// Definition: 15-Lead electrocardiography
  value122062,

  /// Display: Pre-procedure log
  /// Definition: Log of events occurring prior to the current procedure
  value122072,

  /// Display: Current procedure evidence
  /// Definition: Analysis or measurements for current procedure (purpose of reference to evidence document)
  value122073,

  /// Display: Prior report for current patient
  /// Definition: Prior report for current patient
  value122075,

  /// Display: Consumable taken from inventory
  /// Definition: Identifier of Consumable taken from inventory
  value122076,

  /// Display: Consumable returned to inventory
  /// Definition: Identifier of Consumable returned to inventory
  value122077,

  /// Display: Remaining consumable disposed
  /// Definition: Identifier of consumable whose remaining content has been disposed
  value122078,

  /// Display: Consumable unusable
  /// Definition: Identifier of Consumable determined to be unusable
  value122079,

  /// Display: Drug start
  /// Definition: Identifier of Drug whose administration has started
  value122081,

  /// Display: Drug end
  /// Definition: Identifier of Drug whose administration has ended
  value122082,

  /// Display: Drug administered
  /// Definition: Identifier of Drug administered as part of procedure
  value122083,

  /// Display: Contrast start
  /// Definition: Identifier of Contrast agent whose administration has started
  value122084,

  /// Display: Contrast end
  /// Definition: Identifier of Contrast agent whose administration has ended
  value122085,

  /// Display: Contrast administered
  /// Definition: Identifier of Contrast agent administered
  value122086,

  /// Display: Infusate start
  /// Definition: Identifier of Infusate whose administration has started
  value122087,

  /// Display: Infusate end
  /// Definition: Identifier of Infusate whose administration has ended
  value122088,

  /// Display: Device crossed lesion
  /// Definition: Action of a device traversing a vascular lesion
  value122089,

  /// Display: Intervention Action
  /// Definition: Action of a clinical professional performed on a patient for therapeutic purpose
  value122090,

  /// Display: Volume administered
  /// Definition: Volume of Drug, Contrast agent, or Infusate administered
  value122091,

  /// Display: Undiluted dose administered
  /// Definition: Undiluted dose of Drug, Contrast agent, or Infusate administered
  value122092,

  /// Display: Concentration
  /// Definition: Concentration of Drug, Contrast agent, or Infusate administered
  value122093,

  /// Display: Rate of administration
  /// Definition: Rate of Drug, Contrast agent, or Infusate administration
  value122094,

  /// Display: Duration of administration
  /// Definition: Duration of Drug, Contrast agent, or Infusate administration
  value122095,

  /// Display: Volume unadministered or discarded
  /// Definition: Volume of Drug, Contrast agent, or Infusate unadministered or discarded
  value122096,

  /// Display: Catheter Curve
  /// Definition: Numeric parameter of Curvature of Catheter
  value122097,

  /// Display: Transmit Frequency
  /// Definition: Transmit Frequency
  value122098,

  /// Display: ST change from baseline
  /// Definition: Measured change of patient electrocardiographic ST level relative to baseline measurement
  value122099,

  /// Display: Aneurysm on cited vessel
  /// Definition: Anatomic term modifier indicating aneurysm on cited vessel is the subject of the finding
  value122101,

  /// Display: Graft to cited segment, proximal section
  /// Definition: Anatomic term modifier indicating proximal section of graft to cited vessel is the subject of the finding
  value122102,

  /// Display: Graft to cited segment, mid section
  /// Definition: Anatomic term modifier indicating mid section of graft to cited vessel is the subject of the finding
  value122103,

  /// Display: Graft to cited segment, distal section
  /// Definition: Anatomic term modifier indicating distal section of graft to cited vessel is the subject of the finding
  value122104,

  /// Display: DateTime of Intervention
  /// Definition: DateTime of Intervention
  value122105,

  /// Display: Duration of Intervention
  /// Definition: Duration of Intervention
  value122106,

  /// Display: Baseline Stenosis Measurement
  /// Definition: Lesion stenosis measured prior to any interventional procedure
  value122107,

  /// Display: Post-Intervention Stenosis Measurement
  /// Definition: Lesion stenosis measured after an interventional procedure
  value122108,

  /// Display: Baseline TIMI Flow
  /// Definition: Assessment of perfusion across a coronary lesion measured prior to any interventional procedure
  value122109,

  /// Display: Post-Intervention TIMI Flow
  /// Definition: Assessment of perfusion across a coronary lesion measured after an interventional procedure
  value122110,

  /// Display: Primary Intervention Device
  /// Definition: Indication that device is the primary (first and/or most significant) device used for interventional therapy of a particular pathology; e.g. lesion
  value122111,

  /// Display: Normal Myocardium
  /// Definition: Normal Myocardium
  value122112,

  /// Display: Sacrred Myocardial
  /// Definition: Sacrred Myocardial
  value122113,

  /// Display: Thinning Myocardium
  /// Definition: Thinning Myocardium
  value122114,

  /// Display: Hemodynamics Report
  /// Definition: Hemodynamics Report
  value122120,

  /// Display: Atrial pressure measurements
  /// Definition: Atrial pressure measurements, report section
  value122121,

  /// Display: Ventricular pressure measurements
  /// Definition: Ventricular pressure measurements, report section
  value122122,

  /// Display: Gradient assessment
  /// Definition: Gradient assessment, report section
  value122123,

  /// Display: Blood velocity measurements
  /// Definition: Blood velocity measurements, report section
  value122124,

  /// Display: Blood lab measurements
  /// Definition: Blood lab measurements, report section
  value122125,

  /// Display: Derived Hemodynamic Measurements
  /// Definition: Derived Hemodynamic Measurements, report section
  value122126,

  /// Display: Clinical Context
  /// Definition: Clinical Context, report section
  value122127,

  /// Display: Patient Transferred From
  /// Definition: Location from which the patient was transferred
  value122128,

  /// Display: PCI during this procedure
  /// Definition: Indication that the procedure includes a percutaneous coronary intervention
  value122129,

  /// Display: Dose Area Product
  /// Definition: Radiation dose times area of exposure
  value122130,

  /// Display: Degree of Thrombus
  /// Definition: Finding of probability and/or severity of thrombus
  value122131,

  /// Display: Severity of Calcification
  /// Definition: Severity of Calcification, property of lesion
  value122132,

  /// Display: Lesion Morphology
  /// Definition: Lesion Morphology; form and/or structural properties of lesion
  value122133,

  /// Display: Vessel Morphology
  /// Definition: Vessel Morphology; form and/or structural properties of vessel
  value122134,

  /// Display: Circulatory Support
  /// Definition: Technique (device or procedure) of support for patient circulatory system; hemodynamic support
  value122138,

  /// Display: Reason for Exam
  /// Definition: Reason for Exam
  value122139,

  /// Display: Comparison with Prior Exam Done
  /// Definition: Indication that the current exam data has been compared with prior exam data
  value122140,

  /// Display: Electrode Placement
  /// Definition: Electrocardiographic electrode placement technique
  value122141,

  /// Display: Acquisition Device Type
  /// Definition: Acquisition Device Type
  value122142,

  /// Display: Acquisition Device ID
  /// Definition: Acquisition Device ID
  value122143,

  /// Display: Quantitative Analysis
  /// Definition: Quantitative Analysis, report section
  value122144,

  /// Display: Qualitative Analysis
  /// Definition: Qualitative Analysis, report section
  value122145,

  /// Display: Procedure DateTime
  /// Definition: The date and time on which a procedure was performed on a patient
  value122146,

  /// Display: Clinical Interpretation
  /// Definition: Clinical Interpretation, report section
  value122147,

  /// Display: Lead ID
  /// Definition: ECG Lead Identifier
  value122148,

  /// Display: Beat Number
  /// Definition: Beat Number; ordinal of cardiac cycle within an acquisition
  value122149,

  /// Display: Compound Statement
  /// Definition: Complex coded semantic unit, consisting of several coded components
  value122150,

  /// Display: Trend
  /// Definition: Trend (temporal progression) of a clinical condition, finding, or disease
  value122151,

  /// Display: Statement
  /// Definition: Coded semantic unit
  value122152,

  /// Display: Statement Modifier
  /// Definition: Coded modifier for a semantic unit
  value122153,

  /// Display: Conjunctive Term
  /// Definition: Conjunctive term between semantic units
  value122154,

  /// Display: Probability
  /// Definition: Probability
  value122157,

  /// Display: ECG Global Measurements
  /// Definition: ECG Global Measurements, report section
  value122158,

  /// Display: ECG Lead Measurements
  /// Definition: ECG Lead Measurements, report section
  value122159,

  /// Display: Derived Area, Non-Valve
  /// Definition: Derived cross-sectional area of a vessel or anatomic feature, other than a cardiac valve
  value122160,

  /// Display: Pulmonary Flow
  /// Definition: Rate of blood flow through Pulmonary artery
  value122161,

  /// Display: Systemic Flow
  /// Definition: Rate of blood flow through the aorta
  value122162,

  /// Display: Discharge DateTime
  /// Definition: DateTime of patient discharge from hospital admission
  value122163,

  /// Display: Coronary Artery Bypass During This Admission
  /// Definition: Indication that a Coronary Artery Bypass operation was performed during the current hospital admission
  value122164,

  /// Display: Date of Death
  /// Definition: Date of Death
  value122165,

  /// Display: Death During This Admission
  /// Definition: Indication that the patient died during the current hospital admission
  value122166,

  /// Display: Death During Catheterization
  /// Definition: Indication that the patient died during the current Catheterization procedure
  value122167,

  /// Display: Type of Myocardial Infarction
  /// Definition: Finding of type of Myocardial Infarction
  value122170,

  /// Display: Coronary lesion > = 50% stenosis
  /// Definition: Finding of Coronary lesion with greater than 50% stenosis
  value122171,

  /// Display: Acute MI Present
  /// Definition: Finding of Acute Myocardial Infarction Presence as indication for interventional procedure
  value122172,

  /// Display: ST Elevation Onset DateTime
  /// Definition: DateTime of first determination of elevated ECG ST segment, as indication of Myocardial Infarction
  value122173,

  /// Display: Number of lesion interventions attempted
  /// Definition: Number of lesion interventions attempted during current procedure
  value122175,

  /// Display: Number of lesion interventions successful
  /// Definition: Number of lesion interventions successful during current procedure, where the residual post intervention stenosis is less than or equal to 50% of the arterial luminal diameter, TIMI Flow is 3 and the minimal decrease in stenosis was 20%
  value122176,

  /// Display: Procedure Result
  /// Definition: Overall success of interventional procedure
  value122177,

  /// Display: Lesion Intervention Information
  /// Definition: Lesion Intervention Information, report section
  value122178,

  /// Display: Peri-procedural MI occurred
  /// Definition: Indication that Myocardial Infarction occurred during current procedure
  value122179,

  /// Display: CK-MB baseline
  /// Definition: Creatine Kinase-MB value at baseline (start of procedure)
  value122180,

  /// Display: CK-MB peak
  /// Definition: Creatine Kinase-MB highest value measured during procedure
  value122181,

  /// Display: R-R interval
  /// Definition: Time interval between ECG R-wave peaks in subsequent cardiac cycles
  value122182,

  /// Display: Blood temperature
  /// Definition: Blood temperature
  value122183,

  /// Display: Blood Oxygen content
  /// Definition: Blood Oxygen content
  value122185,

  /// Display: Blood Carbon dioxide saturation
  /// Definition: Blood Carbon dioxide saturation
  value122187,

  /// Display: Pulmonary Arterial Content (FCpa)
  /// Definition: Pulmonary Arterial Content (FCpa)
  value122188,

  /// Display: Pulmonary Venous Content (FCpv)
  /// Definition: Pulmonary Venous Content (FCpv)
  value122189,

  /// Display: Max dp/dt/P
  /// Definition: Max dp/dt/P
  value122190,

  /// Display: Ventricular End Diastolic pressure
  /// Definition: Ventricular End Diastolic pressure
  value122191,

  /// Display: Indicator appearance time
  /// Definition: Elapsed time from injection of an indicator bolus until it is observed at another location
  value122192,

  /// Display: Maximum pressure acceleration
  /// Definition: Maximum pressure acceleration
  value122193,

  /// Display: Ventricular Systolic blood pressure
  /// Definition: Ventricular Systolic blood pressure
  value122194,

  /// Display: Pulse Strength
  /// Definition: Pulse Strength; palpable strength of systolic flow
  value122195,

  /// Display: C wave pressure
  /// Definition: The secondary peak pressure in the atrium during atrial contraction
  value122196,

  /// Display: Gradient pressure, average
  /// Definition: Gradient pressure, average
  value122197,

  /// Display: Gradient pressure, peak
  /// Definition: Gradient pressure, peak
  value122198,

  /// Display: Pressure at dp/dt max
  /// Definition: Pressure at dp/dt max
  value122199,

  /// Display: Diastolic blood velocity, mean
  /// Definition: Diastolic blood velocity, mean
  value122201,

  /// Display: Diastolic blood velocity, peak
  /// Definition: Diastolic blood velocity, peak
  value122202,

  /// Display: Systolic blood velocity, mean
  /// Definition: Systolic blood velocity, mean
  value122203,

  /// Display: Systolic blood velocity, peak
  /// Definition: Systolic blood velocity, peak
  value122204,

  /// Display: Blood velocity, mean
  /// Definition: Blood velocity, mean
  value122205,

  /// Display: Blood velocity, minimum
  /// Definition: Blood velocity, minimum
  value122206,

  /// Display: Blood velocity, peak
  /// Definition: Blood velocity, peak
  value122207,

  /// Display: x-descent pressure
  /// Definition: Venous or atrial pressure minimum during ventricular systole, after A-wave
  value122208,

  /// Display: y-descent pressure
  /// Definition: Venous or atrial pressure minimum when tricuspid valve opens during diastole, after V-wave
  value122209,

  /// Display: z-point pressure
  /// Definition: Atrial pressure upon closure of tricuspid and mitral valves
  value122210,

  /// Display: Left Ventricular ejection time
  /// Definition: Left Ventricular ejection time
  value122211,

  /// Display: Left Ventricular filling time
  /// Definition: Left Ventricular filling time
  value122212,

  /// Display: Right Ventricular ejection time
  /// Definition: Right Ventricular ejection time
  value122213,

  /// Display: Right Ventricular filling time
  /// Definition: Right Ventricular filling time
  value122214,

  /// Display: Total Pulmonary Resistance
  /// Definition: Total Pulmonary Resistance
  value122215,

  /// Display: Total Vascular Resistance
  /// Definition: Total Vascular Resistance
  value122216,

  /// Display: Coronary Flow reserve
  /// Definition: Coronary Flow reserve
  value122217,

  /// Display: Diastolic/Systolic velocity ratio
  /// Definition: Diastolic/Systolic velocity ratio
  value122218,

  /// Display: Hyperemic ratio
  /// Definition: Hyperemic ratio
  value122219,

  /// Display: Hemodynamic Resistance Index
  /// Definition: Hemodynamic Resistance Index
  value122220,

  /// Display: Thorax diameter, sagittal
  /// Definition: Thorax diameter, sagittal
  value122221,

  /// Display: Procedure Environmental Characteristics
  /// Definition: Environmental characteristics in the procedure room
  value122222,

  /// Display: Room oxygen concentration
  /// Definition: Oxygen concentration in the procedure room
  value122223,

  /// Display: Room temperature
  /// Definition: Temperature in the procedure room
  value122224,

  /// Display: Room Barometric pressure
  /// Definition: Barometric pressure in the procedure room
  value122225,

  /// Display: Left to Right Flow
  /// Definition: Left to Right Flow
  value122227,

  /// Display: Right to Left Flow
  /// Definition: Right to Left Flow
  value122228,

  /// Display: Arteriovenous difference
  /// Definition: Arteriovenous oxygen content difference
  value122229,

  /// Display: 10 Year CHD Risk
  /// Definition: Framingham Study 10 Year CHD Risk
  value122230,

  /// Display: Comparative Average10 Year CHD Risk
  /// Definition: Framingham Study Comparative Average10 Year CHD Risk
  value122231,

  /// Display: Comparative Low10 Year CHD Risk
  /// Definition: Framingham Study Comparative Low10 Year CHD Risk
  value122232,

  /// Display: LDL Cholesterol Score Sheet for Men
  /// Definition: Framingham Study LDL Cholesterol Score Sheet for Men
  value122233,

  /// Display: LDL Cholesterol Score Sheet for Women
  /// Definition: Framingham Study LDL Cholesterol Score Sheet for Women
  value122234,

  /// Display: Total Cholesterol Score Sheet for Men
  /// Definition: Framingham Study Total Cholesterol Score Sheet for Men
  value122235,

  /// Display: Total Cholesterol Score Sheet for Women
  /// Definition: Framingham Study Total Cholesterol Score Sheet for Women
  value122236,

  /// Display: Corrected Sinus Node Recovery Time
  /// Definition: Corrected Sinus Node Recovery Time
  value122237,

  /// Display: Max volume normalized to 50mmHg pulse pressure
  /// Definition: Max volume normalized to 50mmHg pulse pressure
  value122238,

  /// Display: Oxygen Consumption
  /// Definition: Oxygen Consumption
  value122239,

  /// Display: BSA = 3.207*WT^(0.7285-0.0188 log (WT)) *HT^0.3
  /// Definition: Body Surface Area computed from patient height and weight: BSA = 3.207*WT[g]^(0.7285-0.0188 log (WT[g])) *HT[cm] ^ 0.3 [Boyd E, The growth of the surface area of the human body. Minneapolis: University of Minnesota Press, 1935, eq. (36) ]
  value122240,

  /// Display: BSA = 0.007184*WT^ 0.425*HT^0.725
  /// Definition: Body Surface Area computed from patient height and weight: BSA = 0.007184* WT[kg] ^ 0.425*HT[cm] ^ 0.725 [Dubois and Dubois, Arch Int Med 1916 17:863-71]
  value122241,

  /// Display: BSA = 0.0235*WT^0.51456*HT^ 0.42246
  /// Definition: Body Surface Area computed from patient height and weight: BSA = 0.0235* WT[kg] ^0.51456*HT[cm]^ 0.42246 [Gehan EA, George SL, 'Estimation of human body surface area from height and weight', Cancer Chemother Rep 1970 54:225-35]
  value122242,

  /// Display: BSA = 0.024265*WT^0.5378*HT^0.3964
  /// Definition: Body Surface Area computed from patient height and weight: BSA = 0.024265 * WT[kg] ^ 0.5378 * HT[cm] ^ 0.3964 [Haycock G.B., Schwartz G.J., Wisotsky D.H. 'Geometric method for measuring body surface area: A height weight formula validated in infants, children and adults.' The Journal of Pediatrics 1978 93:1:62-66]
  value122243,

  /// Display: BSA = (HT * WT/36) ^0.5
  /// Definition: Body Surface Area computed from patient height and weight: BSA = (HT[m] * WT[kg] / 36) ^ 0.5 [Mosteller, R.D. 'Simplified Calculation of Body Surface Area.' N Engl J Med 1987 Oct 22;317(17):1098]
  value122244,

  /// Display: BSA = 1321+0.3433*WT
  /// Definition: Body Surface Area computed from patient weight:BSA = 1321 + 0.3433 * WT[kg] (for pediatrics 3-30 kg) [Current, J.D. 'A Linear Equation For Estimating The Body Surface Area In Infants And Children', The Internet Journal of Anesthesiology. 1998. 2:2]
  value122245,

  /// Display: BSA = 0.0004688 * WT ^ (0.8168 - 0.0154 * log(WT))
  /// Definition: BSA = 0.0004688 * (1000 * WT) ^ (0.8168 - 0.0154 * log(1000 * WT)) Where (WT is weight in kilogram) Units = m2 Boyd, Edith. The Growth of the Surface Area of the Human Body(originally published in 1935 by the University of Minnesota Press), Greenwood Press, Westport, Connecticut, 1975, p. 102.Equation (35)
  value122246,

  /// Display: VO2male = BSA (138.1 - 11.49 * loge(age) + 0.378 * HRf)
  /// Definition: Equation for estimated oxygen consumption: VO2male = BSA (138.1 - 11.49 * loge(age) + 0.378 * HRf)
  value122247,

  /// Display: VO2female = BSA (138.1 - 17.04 * loge(age) + 0.378 * HRf)
  /// Definition: Equation for estimated oxygen consumption: VO2female = BSA (138.1 - 17.04 * loge(age) + 0.378 * HRf)
  value122248,

  /// Display: VO2 = VeSTPD * 10 * (FIO2 - FE02)
  /// Definition: Equation for estimated oxygen consumption: VO2 = VeSTPD * 10 * (FIO2 - FE02)
  value122249,

  /// Display: VO2 = 152 * BSA
  /// Definition: Equation for estimated oxygen consumption: VO2 = 152 * BSA
  value122250,

  /// Display: VO2 = 175 * BSA
  /// Definition: Equation for estimated oxygen consumption: VO2 = 175 * BSA
  value122251,

  /// Display: VO2 = 176 * BSA
  /// Definition: Equation for estimated oxygen consumption: VO2 = 176 * BSA
  value122252,

  /// Display: Robertson & Reid table
  /// Definition: Robertson & Reid Table for estimated oxygen consumption
  value122253,

  /// Display: Fleisch table
  /// Definition: Fleisch table for estimated oxygen consumption
  value122254,

  /// Display: Boothby table
  /// Definition: Boothby table for estimated oxygen consumption
  value122255,

  /// Display: if (prem age< 3days) P50 = 19.9
  /// Definition: Estimate of Oxygen partial pressure at 50% saturation for premature infants less than 3 days old: P50 = 19.9
  value122256,

  /// Display: if (age < 1day) P50 = 21.6
  /// Definition: Estimate of Oxygen partial pressure at 50% saturation for infants less than 1 day old: P50 = 21.6
  value122257,

  /// Display: if (age < 30day) P50 = 24.6
  /// Definition: Estimate of Oxygen partial pressure at 50% saturation for infants less than 30 days old: P50 = 24.6
  value122258,

  /// Display: if (age < 18y) P50 = 27.2
  /// Definition: Estimate of Oxygen partial pressure at 50% saturation for patients less than 18 years old: P50 = 27.2
  value122259,

  /// Display: if (age < 40y) P50 = 27.4
  /// Definition: Estimate of Oxygen partial pressure at 50% saturation for patients less than 40 years old: P50 = 27.4
  value122260,

  /// Display: if (age > 60y) P50 = 29.3
  /// Definition: Estimate of Oxygen partial pressure at 50% saturation for patients more than 60 years old: P50 = 29.3
  value122261,

  /// Display: Area = Flow / 44.5 * sqrt(Gradient[mmHg])
  /// Definition: Cardiac valve area computed from flow and pressure gradient: Area = Flow / 44.5 * sqrt(Gradient[mmHg]) [Gorlin and Gorlin, Am Heart J, 1951]
  value122262,

  /// Display: MVA = Flow / 38.0 * sqrt(Gradient[mmHg])
  /// Definition: Mitral valve area computed from flow and pressure gradient: Mitral valve Area = Flow / 38.0 * sqrt(Gradient[mmHg]) [Gorlin and Gorlin, Am Heart J, 1951]
  value122263,

  /// Display: BMI = Wt / Ht ^ 2
  /// Definition: Body Mass Index computed from weight and height: BMI = Wt/Ht^2
  value122265,

  /// Display: BSA = 0.007358 * WT ^ 0.425 * HT ^ 0.725
  /// Definition: Body Surface Area computed from patient height and weight: BSA = 0.007358 * WT[kg] ^ 0.425 * HT[cm] ^ 0.725 (for East Asian adult, aged 15+ years) [Kanai Izumi, Masamitsu Kanai, 'Clinical examination method summary']
  value122266,

  /// Display: BSA = 0.010265 * WT ^ 0.423 * HT ^ 0.651
  /// Definition: Body Surface Area computed from patient height and weight: BSA = 0.010265 * WT[kg] ^ 0.423 * HT[cm] ^ 0.651 (For East Asian child aged 12-14 years)
  value122267,

  /// Display: BSA = 0.008883 * WT ^ 0.444 * HT ^ 0.663
  /// Definition: Body Surface Area computed from patient height and weight: BSA = 0.008883* WT[kg] ^ 0.444 * HT[cm] ^ 0.663 (For East Asian child aged 6-11 years)
  value122268,

  /// Display: BSA = 0.038189 * WT ^ 0.423 * HT ^ 0.362
  /// Definition: Body Surface Area computed from patient height and weight: BSA = 0.038189 * WT[kg] ^ 0.423 * HT[cm] ^ 0.362 (For East Asian child aged 1-5 years)
  value122269,

  /// Display: BSA = 0.009568 * WT ^ 0.473 * HT ^ 0.655
  /// Definition: Body Surface Area computed from patient height and weight: BSA = 0.009568* WT[kg] ^ 0.473 * HT[cm] ^ 0.655 (For East Asian child aged 0-12 months)
  value122270,

  /// Display: Skin Condition Warm
  /// Definition: Skin Condition Warm
  value122271,

  /// Display: Skin Condition Cool
  /// Definition: Skin Condition Cool
  value122272,

  /// Display: Skin Condition Cold
  /// Definition: Skin Condition Cold
  value122273,

  /// Display: Skin Condition Dry
  /// Definition: Skin Condition Dry
  value122274,

  /// Display: Skin Condition Clammy
  /// Definition: Skin Condition Clammy
  value122275,

  /// Display: Skin Condition Diaphoretic
  /// Definition: Skin Condition Diaphoretic
  value122276,

  /// Display: Skin Condition Flush
  /// Definition: Skin Condition Flush
  value122277,

  /// Display: Skin Condition Mottled
  /// Definition: Skin Condition Mottled
  value122278,

  /// Display: Skin Condition Pale
  /// Definition: Skin Condition Pale
  value122279,

  /// Display: Airway unobstructed
  /// Definition: Airway unobstructed
  value122281,

  /// Display: Airway partially obstructed
  /// Definition: Airway partially obstructed
  value122282,

  /// Display: Airway severely obstructed
  /// Definition: Airway severely obstructed
  value122283,

  /// Display: Not Visualized
  /// Definition: Anatomy could not be visualized for the purpose of evaluation
  value122288,

  /// Display: Quantitative Arteriography Report
  /// Definition: Quantitative Arteriography Report
  value122291,

  /// Display: Quantitative Ventriculography Report
  /// Definition: Quantitative Ventriculography Report
  value122292,

  /// Display: Guidewire crossing lesion unsuccessful
  /// Definition: Guidewire crossing lesion unsuccessful
  value122301,

  /// Display: Guidewire crossing lesion successful
  /// Definition: Guidewire crossing lesion successful
  value122302,

  /// Display: Angioplasty balloon inflated
  /// Definition: Angioplasty balloon inflated
  value122303,

  /// Display: Angioplasty balloon deflated
  /// Definition: Angioplasty balloon deflated
  value122304,

  /// Display: Device deployed
  /// Definition: Device deployed
  value122305,

  /// Display: Stent re-expanded
  /// Definition: Stent re-expanded
  value122306,

  /// Display: Object removed
  /// Definition: Object removed
  value122307,

  /// Display: Radiation applied
  /// Definition: Radiation applied
  value122308,

  /// Display: Radiation removed
  /// Definition: Radiation removed
  value122309,

  /// Display: Interventional device placement unsuccessful
  /// Definition: Interventional device placement unsuccessful
  value122310,

  /// Display: Interventional device placed
  /// Definition: Interventional device placed
  value122311,

  /// Display: Intervention performed
  /// Definition: Intervention performed
  value122312,

  /// Display: Interventional device withdrawn
  /// Definition: Interventional device withdrawn
  value122313,

  /// Display: Catheter Size
  /// Definition: Catheter Size
  value122319,

  /// Display: Injectate Temperature
  /// Definition: Injectate Temperature
  value122320,

  /// Display: Injectate Volume
  /// Definition: Injectate Volume
  value122321,

  /// Display: Calibration Factor
  /// Definition: Factor by which a measured or calculated value is multiplied to obtain the estimated real-world value
  value122322,

  /// Display: IVUS Report
  /// Definition: Intravascular Ultrasound Report
  value122325,

  /// Display: EEM Diameter
  /// Definition: External Elastic Membrane (EEM) diameter measured through the center point of the vessel. Center point of the vessel is defined as the center of gravity of the EEM area. The EEM is a discrete interface at the border between the media and the adventitia
  value122330,

  /// Display: Plaque Plus Media Thickness
  /// Definition: The distance from intimal leading edge to the external elastic membrane along any line passing through the luminal center, which is defined as the center of gravity of the lumen area
  value122331,

  /// Display: Lumen Perimeter
  /// Definition: Planimetered perimeter of the lumen
  value122332,

  /// Display: EEM Cross-Sectional Area
  /// Definition: Vessel area measured at the External Elastic Membrane (EEM), a discrete interface at the border between the media and the adventitia
  value122333,

  /// Display: Plaque plus Media Cross-Sectional Area
  /// Definition: Area within the EEM occupied by atheroma, regardless of lumen compromise. Plaque plus Media Area = EEM cross-sectional area - vessel lumen cross-sectional area
  value122334,

  /// Display: In-Stent Neointimal Cross-Sectional Area
  /// Definition: Measurement of in-stent restenosis. In-Stent Intimal Area = Stent cross-sectional area - vessel lumen cross-sectional area
  value122335,

  /// Display: Vascular Volume measurement length
  /// Definition: Longitudinal extent of the Vascular Volume Measurement. This is the distance from the distal edge to the proximal edge of the Volume measurement
  value122336,

  /// Display: Relative position
  /// Definition: Longitudinal distance from the closest edge of a fiducial feature or reference location to the start of the vascular measurement. This value will be a positive if the measurement is distal to the fiducial feature or reference location, or negative if the measurement is proximal to the fiducial feature or reference location
  value122337,

  /// Display: Stent Volume Obstruction
  /// Definition: In-Stent Neointimal Volume / Stent Volume
  value122339,

  /// Display: Fiducial feature
  /// Definition: Reference, normally anatomical, which is used for locating the position of a measurement
  value122340,

  /// Display: Calcium Length
  /// Definition: Longitudinal calcium length measurement
  value122341,

  /// Display: Lumen Eccentricity Index
  /// Definition: Measurement of vessel lumen eccentricity. Lumen Eccentricity Index = (maximum vessel lumen diameter - minimum vessel lumen diameter) / maximum vessel lumen diameter. Lumen diameters are measured through the center point of the lumen, which is defined as the center of gravity of the lumen area
  value122343,

  /// Display: Plaque plus Media Eccentricity Index
  /// Definition: Plaque plus Media Eccentricity Index = (maximum Plaque plus media thickness - minimum Plaque plus media thickness) / maximum Plaque plus media thickness
  value122344,

  /// Display: Remodeling Index
  /// Definition: Measurement of increase or decrease in EEM area that occurs during the development of atherosclerosis. Remodeling Index = Lesion EEM area / reference EEM area
  value122345,

  /// Display: Stent Symmetry Index
  /// Definition: Measurement of stent circularity. Stent Symmetry Index = (maximum stent diameter - minimum stent diameter) / maximum stent diameter
  value122346,

  /// Display: Stent Expansion Index
  /// Definition: Measurement of stent area relative to the reference lumen area. Stent Expansion Index = Minimum stent area / reference vessel lumen cross-sectional area
  value122347,

  /// Display: Lumen Shape Index
  /// Definition: Measurement of vessel lumen eccentricity. Lumen Shape Index = (2p * sqrt(Vessel lumen cross-sectional area / p) / Lumen Perimeter) 2 Reference: Tobis & Yock, "Intravascular Ultrasound Imaging", Chapter 7
  value122348,

  /// Display: Lumen Diameter Ratio
  /// Definition: Lumen diameter ratio = minimum vessel lumen diameter / maximum vessel lumen diameter, measured at the same cross section in the vessel. Lumen diameters are measured through the center point of the lumen, which is defined as the center of gravity of the lumen area
  value122350,

  /// Display: Stent Diameter Ratio
  /// Definition: Stent diameter ratio = Minimum stent diameter / Maximum stent diameter, measured at the same cross section in the vessel. Stent diameters are measured through the center point of the stent, which is defined as the center of gravity of the stent area
  value122351,

  /// Display: EEM Diameter Ratio
  /// Definition: EEM diameter ratio = minimum EEM diameter / maximum EEM diameter. Measured at the same cross section in the vessel
  value122352,

  /// Display: Plaque Burden
  /// Definition: Fractional area within the External Elastic Membrane (EEM) occupied by atheroma. Plaque Burden = (EEM area - vessel lumen cross-sectional area) / EEM area
  value122354,

  /// Display: Arc of Calcium
  /// Definition: Angular measurement of a Calcium deposit with the apex located at the center of the lumen, which is defined as the center of gravity of the lumen area
  value122355,

  /// Display: Soft plaque
  /// Definition: Plaque characterized by low density or echogenicity
  value122356,

  /// Display: In-Stent Neointima
  /// Definition: Abnormal thickening of the intima within the stented segment
  value122357,

  /// Display: True Lumen
  /// Definition: Lumen surrounded by all three layers of the vessel-intima, media, and adventitia
  value122360,

  /// Display: False Lumen
  /// Definition: A channel, usually parallel to the true lumen, which does not communicate with the true lumen over a portion of its length
  value122361,

  /// Display: Plaque Rupture
  /// Definition: Plaque ulceration with a tear detected in a fibrous cap
  value122363,

  /// Display: Stent Gap
  /// Definition: Length of gap between two consecutive stents
  value122364,

  /// Display: T-1 Worst
  /// Definition: Worst stenosis - the stenosis with the smallest lumen size within a vessel segment
  value122367,

  /// Display: T-2 Secondary
  /// Definition: 2nd most severe stenosis within a vessel segment
  value122368,

  /// Display: T-3 Secondary
  /// Definition: 3rd most severe stenosis within a vessel segment
  value122369,

  /// Display: T-4 Secondary
  /// Definition: 4th most severe stenosis within a vessel segment
  value122370,

  /// Display: EEM Volume
  /// Definition: External Elastic Membrane (EEM) volume measured within a specified region. The EEM is a discrete interface at the border between the media and the Adventitia
  value122371,

  /// Display: Lumen Volume
  /// Definition: Lumen volume measured within a specified region
  value122372,

  /// Display: In-Stent Neointimal Volume
  /// Definition: The amount of plaque between the lumen and stent, within the stent region; In-stent restenosis. In-Stent Neointimal Volume = Stent Volume - Lumen Volume
  value122374,

  /// Display: Native Plaque Volume
  /// Definition: The amount of plaque between the stent and the EEM, within the stent region. Native Plaque Volume = EEM Volume - Stent Volume
  value122375,

  /// Display: Total Plaque Volume
  /// Definition: Total amount of plaque between the EEM and the Lumen, over the entire region that is measured. Total Plaque Volume = EEM Volume - Lumen Volume
  value122376,

  /// Display: Proximal Reference
  /// Definition: Proximal reference segment measurement site. Typically the site with the largest lumen proximal to a stenosis but within the same segment (usually within 10 mm of the stenosis with no major intervening branches)
  value122380,

  /// Display: Distal Reference
  /// Definition: Distal reference segment measurement site. Typically the site with the largest lumen distal to a stenosis but within the same segment (usually within 10 mm of the stenosis with no major intervening branches)
  value122381,

  /// Display: Site of Lumen Minimum
  /// Definition: Site of the smallest lumen in a vessel; e.g. due to a stenotic lesion
  value122382,

  /// Display: Entire Pullback
  /// Definition: Measurement region that encompasses the entire vessel imaged in a single pullback acquisition
  value122383,

  /// Display: Stented Region
  /// Definition: Measurement region occupied by the stent
  value122384,

  /// Display: Proximal Stent Margin
  /// Definition: Region starting at the proximal edge of the Stent and extending several millimeters (usually 5 mm) proximal to the Stent edge
  value122385,

  /// Display: Distal Stent Margin
  /// Definition: Region starting at the distal edge of the Stent and extending several millimeters (usually 5 mm) distal to the Stent edge
  value122386,

  /// Display: Dissection Classification
  /// Definition: Classification of dissections in a vessel
  value122387,

  /// Display: Intra-stent Dissection
  /// Definition: Separation of neointimal hyperplasia from stent struts, usually seen only after treatment of in-stent restenosis
  value122388,

  /// Display: Vulnerable Plaque
  /// Definition: Plaque with a thin cap fibrous atheroma that is at increased risk of rupture and thrombosis (or re-thrombosis) and rapid stenosis progression
  value122389,

  /// Display: Eroded Plaque
  /// Definition: Plaque erosions with no structural defect (beyond endothelial injury) or gap in the plaque
  value122390,

  /// Display: Relative Stenosis Severity
  /// Definition: Stenosis severity classifications of multiple lesions in a vessel
  value122391,

  /// Display: Restenotic Lesion
  /// Definition: A finding of a previously treated lesion in which stenosis has reoccurred
  value122393,

  /// Display: Fibro-Lipidic Plaque
  /// Definition: Loosely packed bundles of collagen fibers with regions of lipid deposition present. Region is cellular and no cholesterol clefts or necrosis are present. Some macrophage infiltration. Increase in extra cellular matrix
  value122394,

  /// Display: Necrotic-Lipidic Plaque
  /// Definition: Area within the plaque with very low echogenicity separated from the lumen and surrounded by more echogenic structures (fibrous cap). Highly lipidic necrotic region with remnants of foam cells and dead lymphocytes present. No collagen fibers are visible and mechanical integrity is poor. Cholesterol clefts and micro calcifications are visible
  value122395,

  /// Display: Intimal Dissection
  /// Definition: Dissection limited to the intima or atheroma, and not extending to the media
  value122398,

  /// Display: Medial Dissection
  /// Definition: Dissection in the arterial Media, extending into the media
  value122399,

  /// Display: Simultaneously Acquired
  /// Definition: The referenced information was acquired simultaneously with the information in the object in which the reference occurs
  value122400,

  /// Display: Same Anatomy
  /// Definition: Information acquired for the same anatomic region
  value122401,

  /// Display: Same Indication
  /// Definition: Information acquired for the same indication; e.g. to elucidate the same diagnostic question
  value122402,

  /// Display: For Attenuation Correction
  /// Definition: The referenced information was used to correct the data for differential attenuation through different anatomic tissue
  value122403,

  /// Display: Reconstructed
  /// Definition: Value estimated for a vessel in the absence of a stenosis
  value122404,

  /// Display: Algorithm Manufacturer
  /// Definition: Manufacturer of application used
  value122405,

  /// Display: Left Atrial Ejection Fraction by Angiography
  /// Definition: Left Atrial Ejection Fraction by Angiography
  value122406,

  /// Display: Left Atrial ED Volume
  /// Definition: Left Atrial End Diastolic Volume
  value122407,

  /// Display: Left Atrial ES Volume
  /// Definition: Left Atrial End Systolic Volume
  value122408,

  /// Display: Contour Realignment
  /// Definition: Contour repositioning of End Diastolic relative to End Systolic contour
  value122410,

  /// Display: Threshold Value
  /// Definition: The minimum standard deviation to define the hypokinesis and hyperkinesis
  value122411,

  /// Display: Regional Abnormal Wall Motion
  /// Definition: Report of differentiation of wall motion compared to normal
  value122417,

  /// Display: Calibration Object
  /// Definition: Object used for Calibration
  value122421,

  /// Display: Calibration Method
  /// Definition: Method used for Calibration
  value122422,

  /// Display: Calibration Object Size
  /// Definition: Size of calibration object
  value122423,

  /// Display: Area Length Method
  /// Definition: Method how long axis is positioned
  value122428,

  /// Display: Volume Method
  /// Definition: Model for cardiac chamber volume calculation
  value122429,

  /// Display: Reference Method
  /// Definition: Method to define original diameter of the artery
  value122430,

  /// Display: Regression Slope ED
  /// Definition: Relation between calculated End Diastolic volume and ventricular End Diastolic volume. The specific meaning is dependent on volume method used
  value122431,

  /// Display: Regression Offset ED
  /// Definition: Correction factor for the calculated End Diastolic volume and ventricular End Diastolic volume. The specific meaning is dependent on volume method used
  value122432,

  /// Display: Regression Slope ES
  /// Definition: Relation between calculated End Systolic volume and ventricular End Systolic volume. The specific meaning is dependent on volume method used
  value122433,

  /// Display: Regression Offset ES
  /// Definition: Correction factor for the calculated End Systolic volume and ventricular End Systolic volume. The specific meaning is dependent on volume method used
  value122434,

  /// Display: Regression Volume Exponent
  /// Definition: Exponent of volume in regression formula
  value122435,

  /// Display: Reference Points
  /// Definition: Container for spatial locations or coordinates used for calculation
  value122438,

  /// Display: Wall Thickness
  /// Definition: Average thickness of the chamber wall in the current view
  value122445,

  /// Display: Wall Volume
  /// Definition: Volume of the chamber wall estimated from the current view
  value122446,

  /// Display: Wall Mass
  /// Definition: Mass of the chamber wall (myocardium)
  value122447,

  /// Display: Wall Stress
  /// Definition: Peak systolic stress of chamber wall
  value122448,

  /// Display: Centerline Wall Motion Analysis
  /// Definition: Method to calculate wall motion [example: Sheehan, 1986]
  value122449,

  /// Display: Normalized Chord Length
  /// Definition: The length between End Diastolic and End Systolic contour perpendicular on the centerline normalized by a method dependent ventricular perimeter length. The centerline is the line equidistant between the End Diastolic and End Systolic contour [example: Sheehan, 1986]
  value122450,

  /// Display: Abnormal Region
  /// Definition: The report of the boundaries of the abnormal (hyperkinetic, hypokinetic, a-kinetic) regions associated with the territory of the artery [example: Sheehan, 1986]
  value122451,

  /// Display: First Chord of Abnormal Region
  /// Definition: The chord number specifying the begin of abnormal region [example: Sheehan, 1986]
  value122452,

  /// Display: Last Chord of Abnormal Region
  /// Definition: The chord number specifying the end of abnormal region [example: Sheehan, 1986]
  value122453,

  /// Display: Territory Region Severity
  /// Definition: Severity at the regional abnormality extent [example: Sheehan, 1986]
  value122459,

  /// Display: Opposite Region Severity
  /// Definition: Severity at the opposite regional abnormality extent [example: Sheehan, 1986]
  value122461,

  /// Display: LAD Region in RAO Projection
  /// Definition: Based on a total number of chords of 100 and RAO project the range of chords belonging to this circumferential extent lies between 5 - 85. [Sheehan, 1986]
  value122464,

  /// Display: RCA Region in ROA Projection
  /// Definition: Based on a total number of chords of 100 and RAO project the range of chords belonging to this circumferential extent lies between 25 - 85. [Sheehan, 1986]
  value122465,

  /// Display: Single LAD Region in RAO Projection
  /// Definition: Based on a total number of chords of 100 and RAO projection the range of chords belonging to this regional extent lies between 10 - 66 (hypokinetic) and 67 - 80 (hyperkinetic). [Sheehan, 1986]
  value122466,

  /// Display: Single RCA Region in RAO Projection
  /// Definition: Based on a total number of chords of 100 and RAO projection the range of chords belonging to this regional extent lies between 51 - 80 (hypokinetic) and 10 - 50 (hyperkinetic). [Sheehan, 1986]
  value122467,

  /// Display: Multiple LAD Region in RAO Projection
  /// Definition: Based on a total number of chords of 100 and RAO projection the range of chords belonging to this regional extent lies between 10 - 58 (hypokinetic) and 59 -80 (hyperkinetic). [Sheehan, 1986]
  value122468,

  /// Display: Multiple RCA Region in RAO Projection
  /// Definition: Based on a total number of chords of 100 and RAO projection the range of chords belonging to this regional extent lies between 59 - 80 (hypokinetic) and 10 - 58 (hyperkinetic). [Sheehan, 1986]
  value122469,

  /// Display: LAD Region in LAO Projection
  /// Definition: Based on a total number of chords of 100 and LAO projection the range of chords belonging to this regional extent lies between 50 -100 (hypokinetic) and 20 - 49 (hyperkinetic). [Sheehan, 1986]
  value122470,

  /// Display: RCA Region in LAO Projection
  /// Definition: Based on a total number of chords of 100 and LAO projection the range of chords belonging to this regional extent lies between 19 - 67 (hypokinetic) and 68 - 100 (hyperkinetic). [Sheehan, 1986]
  value122471,

  /// Display: CFX Region in LAO Projection
  /// Definition: Based on a total number of chords of 100 and LAO projection the range of chords belonging to this regional extent lies between 38 -74 (hypokinetic) and 75 - 100 (hyperkinetic). [Sheehan, 1986]
  value122472,

  /// Display: Circular Method
  /// Definition: Method based on assumption that the image object is circular
  value122473,

  /// Display: Densitometric Method
  /// Definition: Method based on the gray value distribution of the image
  value122474,

  /// Display: Center of Gravity
  /// Definition: End Systolic contour realigned to End Diastolic contour based on the center of gravity
  value122475,

  /// Display: Long Axis Based
  /// Definition: End Systolic contour realigned to End Diastolic contour based on the mid point of the long axis. The long axis end-points are defined as the posterior and apex
  value122476,

  /// Display: No Realignment
  /// Definition: No Contour Realignment applied
  value122477,

  /// Display: Vessel Lumen Cross-Sectional Area
  /// Definition: Calculated Vessel Lumen Cross-Sectional Area based on the referenced method
  value122480,

  /// Display: Contour Start
  /// Definition: Location of the beginning of a contour
  value122481,

  /// Display: Contour End
  /// Definition: Location of the end of a contour
  value122482,

  /// Display: Sphere
  /// Definition: Sphere is used as calibration object
  value122485,

  /// Display: Geometric Isocenter
  /// Definition: Object of interest in isocenter of image and pixel separation is calculated from geometric data
  value122486,

  /// Display: Geometric Non-Isocenter
  /// Definition: Object of interest not in isocenter of image and pixel separation is calculated from geometric data and out of isocenter distances
  value122487,

  /// Display: Calibration Object Used
  /// Definition: Object used for calibration; e.g. sphere
  value122488,

  /// Display: Curve Fitted Reference
  /// Definition: Application dependent method to calculate the reference diameter based on the multiple diameter values
  value122489,

  /// Display: Interpolated Local Reference
  /// Definition: Application dependent method to calculate reference by interpolation, based on the diameter of two or more user defined reference positions
  value122490,

  /// Display: Mean Local Reference
  /// Definition: Application dependent method to calculate by averaging the reference, based on the diameter of one or more user defined reference positions
  value122491,

  /// Display: Radial Based Wall Motion Analysis
  /// Definition: Method to calculate wall motion based on the lengths of the radials in the predefined regions [Ingels]
  value122493,

  /// Display: Regional Contribution to Ejection Fraction
  /// Definition: Contribution of Region to global Ejection factor based on radial or landmark based wall motion method
  value122495,

  /// Display: Radial Shortening
  /// Definition: The reduction of area between End Systolic and End Diastolic based on radial wall motion analysis
  value122496,

  /// Display: Landmark Based Wall Motion Analysis
  /// Definition: Method to calculate wall motion based on the move of landmarks on the wall [Slager]
  value122497,

  /// Display: Slice Contribution to Ejection Fraction
  /// Definition: Contribution to the ejection fraction of a specific slice region [Slager]
  value122498,

  /// Display: Frame to Frame Analysis
  /// Definition: Method to calculate volumes of heart chambers for every image in a range
  value122499,

  /// Display: Area of closed irregular polygon
  /// Definition: The area is derived by considering a set of coordinates as a closed irregular polygon, accounting for inner angles. The exact method, such as by decomposition into triangles or quadrilaterals, is not specified, since it does not affect the numeric result, apart from the effect of numeric precision during computation of intermediate results
  value122501,

  /// Display: Area of a closed NURBS
  /// Definition: The area is derived by using a set of coordinates as control points for a Non Uniform Rational B-Spline (NURBS)
  value122502,

  /// Display: Integration of sum of closed areas on contiguous slices
  /// Definition: The volume derived by integrating the sum of the areas on adjacent slices across the slice interval; each area is defined by a regular planar shape or by considering a set of coordinates as a closed irregular polygon, accounting for inner angles
  value122503,

  /// Display: Calibration
  /// Definition: Procedure used to calibrate measurements or measurement devices
  value122505,

  /// Display: Left Contour
  /// Definition: Left contour of lumen (direction proximal to distal)
  value122507,

  /// Display: Right Contour
  /// Definition: Right contour of lumen (direction proximal to distal)
  value122508,

  /// Display: Diameter Graph
  /// Definition: Ordered set of diameters values derived from contours (direction proximal to distal)
  value122509,

  /// Display: Length Luminal Segment
  /// Definition: Length Luminal Segment
  value122510,

  /// Display: Graph Increment
  /// Definition: Increment value along X-axis in Diameter Graph
  value122511,

  /// Display: Site of Maximum Luminal
  /// Definition: Location of the maximum lumen area in a lesion or vessel
  value122516,

  /// Display: Densitometric Luminal Cross-sectional Area Graph
  /// Definition: Ordered set of cross-sectional Vessel Lumen Cross-Sectional Area values derived from contours (direction proximal to distal) based on densitometric method
  value122517,

  /// Display: Position of Proximal Border
  /// Definition: Position of proximal border of segment relative to the contour start (proximal end of analysis area)
  value122528,

  /// Display: Position of Distal Border
  /// Definition: Position of distal border of segment relative to the contour start (proximal end of analysis area)
  value122529,

  /// Display: Plaque Area
  /// Definition: Longitudinal cross sectional area of plaque
  value122542,

  /// Display: Diameter Symmetry
  /// Definition: Symmetry of stenosis (0 = complete asymmetry, 1 = complete symmetry); see Section T.2 "Definition of Diameter Symmetry with Arterial Plaques" in PS3.17
  value122544,

  /// Display: Area Symmetry
  /// Definition: Symmetry of plaque (0 = complete asymmetry, 1 = complete symmetry); see Section T.2 "Definition of Diameter Symmetry with Arterial Plaques" in PS3.17
  value122545,

  /// Display: Inflow Angle
  /// Definition: The average slope of the diameter function between the position of the minimum luminal diameter and the position of the proximal border of the segment
  value122546,

  /// Display: Outflow Angle
  /// Definition: The average slope of the diameter function between the position of the minimum luminal diameter and the position of the distal border of the segment
  value122547,

  /// Display: Stenotic Flow Reserve
  /// Definition: The relation between coronary pressure and coronary flow
  value122548,

  /// Display: Poiseuille Resistance
  /// Definition: Poiseuille Resistance at the location of the stenosis
  value122549,

  /// Display: Turbulence Resistance
  /// Definition: Turbulence Resistance at the location of the stenosis
  value122550,

  /// Display: Pressure Drop at SFR
  /// Definition: Pressure drop over the stenosis at maximum heart output
  value122551,

  /// Display: Segmentation Method
  /// Definition: Method for selection of vessel sub-segments
  value122554,

  /// Display: Estimated Normal Flow
  /// Definition: Estimate of the volume of blood flow in the absence of stenosis
  value122555,

  /// Display: Area Length Kennedy
  /// Definition: Area Length method defined by Kennedy [Kennedy, 1970]
  value122558,

  /// Display: Area Length Dodge
  /// Definition: Area Length method defined by Dodge [Dodge, 1960]
  value122559,

  /// Display: Area Length Wynne
  /// Definition: Area Length method defined by Wynne [Wynne]
  value122560,

  /// Display: Multiple Slices
  /// Definition: Volume method based on multiple slice
  value122562,

  /// Display: Boak
  /// Definition: Volume method defined by Boak [Boak]
  value122563,

  /// Display: TS Pyramid
  /// Definition: Volume method defined by Ferlinz [Ferlinz]
  value122564,

  /// Display: Two Chamber
  /// Definition: Volume method defined by Graham [Graham]
  value122565,

  /// Display: Parallelepiped
  /// Definition: Volume method defined by Arcilla [Arcilla]
  value122566,

  /// Display: BSA^1.219
  /// Definition: Corrected Body Surface area for indexing the hemodynamic measurements for a pediatric patient
  value122572,

  /// Display: Equidistant method
  /// Definition: Method for selecting sub-segments that are all of the same length
  value122574,

  /// Display: User selected method
  /// Definition: Manually selected start and end of sub-segment
  value122575,

  /// Display: Left ventricular posterobasal segment
  /// Definition: Left ventricular posterobasal segment
  value122582,

  /// Display: Cardiovascular Analysis Report
  /// Definition: Report of a Cardiovascular Analysis, typically from a CT or MR study
  value122600,

  /// Display: Ventricular Analysis
  /// Definition: Ventricular Analysis
  value122601,

  /// Display: Myocardial Perfusion Analysis
  /// Definition: Myocardial Perfusion Analysis
  value122602,

  /// Display: Calcium Scoring Analysis
  /// Definition: Calcium Scoring Analysis
  value122603,

  /// Display: Flow Quantification
  /// Definition: Flow Quantification Analysis
  value122604,

  /// Display: Vascular Morphological Analysis
  /// Definition: Vascular Morphological Analysis
  value122605,

  /// Display: Vascular Functional Analysis
  /// Definition: Vascular Functional Analysis
  value122606,

  /// Display: Thickening Analysis
  /// Definition: Analysis of myocardial wall thickening
  value122607,

  /// Display: Absolute Values Of Ventricular Measurements
  /// Definition: Section Heading for absolute values of ventricular measurements
  value122608,

  /// Display: Normalized Values Of Ventricular Measurements
  /// Definition: Results of normalizing ventricular measurements
  value122609,

  /// Display: Reference Point
  /// Definition: Reference Point of a measurement
  value122611,

  /// Display: Central breathing position
  /// Definition: Central breathing position between inspiration and expiration
  value122612,

  /// Display: Peak Ejection Rate
  /// Definition: Peak of the ventricular ejection rate
  value122616,

  /// Display: Peak Ejection Time
  /// Definition: Time of the peak of ventricular ejection
  value122617,

  /// Display: Peak Filling Rate
  /// Definition: Peak of the fluid filling rate
  value122618,

  /// Display: Peak Filling Time
  /// Definition: Time interval until time of peak filling from a given reference point; e.g. end systole
  value122619,

  /// Display: Papillary Muscle Excluded
  /// Definition: Papillary muscle was excluded from the measurement
  value122620,

  /// Display: Papillary Muscle Included
  /// Definition: Papillary muscle was included in the measurement
  value122621,

  /// Display: Wall Thickness Ratio end-systolic to end-diastolic
  /// Definition: The ratio of the end-systolic wall thickness compared to the end-diastolic wall thickness
  value122624,

  /// Display: Curve Fit Method
  /// Definition: The method to smooth a ventricular volume as a function of time
  value122627,

  /// Display: Baseline Result Correction
  /// Definition: Baseline correction used in the calculation of the results
  value122628,

  /// Display: Signal Earliest Peak Time
  /// Definition: The time in a dynamic set of images at which the first peak of the signal is observed for the analyzed myocardial wall segments
  value122631,

  /// Display: Signal Increase Start Time
  /// Definition: This is the time at which the signal begins to increase
  value122633,

  /// Display: Signal Time to Peak
  /// Definition: Time interval between the beginning of the signal increase to the time at which the signal intensity reaches its first maximum in a dynamic set of images
  value122634,

  /// Display: MR Perfusion Peak
  /// Definition: Peak of the MR perfusion signal
  value122635,

  /// Display: MR Perfusion Slope
  /// Definition: Signal intensity as a function of time. It is the change in the signal intensity divided by the change in the time
  value122636,

  /// Display: MR Perfusion Time Integral
  /// Definition: MR perfusion time integral from baseline (foot time) to earliest peak
  value122637,

  /// Display: Signal Baseline Start
  /// Definition: First time point in a dynamic set of images used in the calculation of the baseline signal intensity for each myocardial wall segment
  value122638,

  /// Display: Signal Baseline End
  /// Definition: Last time point in a dynamic set of images used in the calculation of the baseline signal intensity for each myocardial wall segment
  value122639,

  /// Display: Image Interval
  /// Definition: The time delta between images in a dynamic set of images
  value122640,

  /// Display: Velocity Encoding Minimum Value
  /// Definition: The minimum velocity encoded by the phase encoding gradient
  value122642,

  /// Display: Velocity Encoding Maximum Value
  /// Definition: The maximum velocity encoded by the phase encoding gradient
  value122643,

  /// Display: Net Forward Volume
  /// Definition: Forward volume-reverse volume
  value122645,

  /// Display: Area Based Method
  /// Definition: Area Based Method for estimating volume or area
  value122650,

  /// Display: Diameter Based Method
  /// Definition: Diameter Based Method for estimating volume, area or diameter
  value122651,

  /// Display: Volume Based Method
  /// Definition: Volume Based Method for estimating volume
  value122652,

  /// Display: NASCET
  /// Definition: A method of diameter measurements according to NASCET (North American Symptomatic Carotid Endarterectomy Trial)
  value122655,

  /// Display: ECST
  /// Definition: A method of diameter measurements according to ECST (European Carotid Surgery Trial)
  value122656,

  /// Display: Agatston Score Threshold
  /// Definition: Agatston Score Threshold
  value122657,

  /// Display: Calcium Mass Threshold
  /// Definition: Calcium Mass Threshold
  value122658,

  /// Display: Calcium Scoring Calibration
  /// Definition: Calcium Scoring Calibration
  value122659,

  /// Display: Calcium Volume
  /// Definition: Calcium Volume
  value122660,

  /// Display: Calcium Mass
  /// Definition: Calcium Mass
  value122661,

  /// Display: Late Contrast Enhancement
  /// Definition: Delayed hyperenhancement of a tissue observed in an image acquired after injection of contrast media
  value122664,

  /// Display: Time interval since injection of contrast media
  /// Definition: Time interval since injection of contrast media
  value122665,

  /// Display: Time relative to R-wave peak
  /// Definition: Time relative to R-wave peak
  value122666,

  /// Display: Blood velocity vs. time of cardiac cycle
  /// Definition: Relationship between blood velocity and time relative to R-wave peak
  value122667,

  /// Display: Time interval since detection of contrast bolus
  /// Definition: Time interval since detection of contrast bolus
  value122668,

  /// Display: Papillary Muscle Included/Excluded
  /// Definition: Indicates if the papillary muscle was included or excluded in the measurement
  value122670,

  /// Display: Anterior-Posterior
  /// Definition: Anterior to Posterior direction
  value122675,

  /// Display: endoleak
  /// Definition: Persistent flow of blood into the stent-grafting
  value122680,

  /// Display: Stent Fracture
  /// Definition: Fracture of a stent
  value122683,

  /// Display: Stent Disintegration
  /// Definition: Disintegration of a stent
  value122684,

  /// Display: Stent Composition
  /// Definition: Material that a stent consists of
  value122685,

  /// Display: Parent Vessel Finding
  /// Definition: Finding about the characteristics of the parent vessel of a vessel
  value122686,

  /// Display: Site of Lumen Maximum
  /// Definition: Site of Maximal lumen diameter of a vessel
  value122687,

  /// Display: X-Concept
  /// Definition: The physical domain (time, space, etc.) to the horizontal axis of the graphical presentation
  value122698,

  /// Display: Y-Concept
  /// Definition: The physical domain (time, space, etc.) to the vertical axis of the graphical presentation
  value122699,

  /// Display: Indications for Pharmacological Stress
  /// Definition: Indications for Pharmacological Stress
  value122700,

  /// Display: Procedure time base
  /// Definition: Reference time for measurement of elapsed time in a procedure
  value122701,

  /// Display: Treadmill speed
  /// Definition: Treadmill speed
  value122702,

  /// Display: Treadmill gradient
  /// Definition: Treadmill gradient
  value122703,

  /// Display: Ergometer power
  /// Definition: Ergometer power
  value122704,

  /// Display: Pharmacological Stress Agent Dose Rate
  /// Definition: Pharmacological Stress Agent Dose Rate
  value122705,

  /// Display: Rating of Perceived Exertion
  /// Definition: Rating of Perceived Exertion
  value122706,

  /// Display: Number of Ectopic Beats
  /// Definition: Number of ectopic beats during a period of collection
  value122707,

  /// Display: Double Product
  /// Definition: Heart rate times systolic blood pressure
  value122708,

  /// Display: Activity workload
  /// Definition: Physical activity workload (intensity) measurement
  value122709,

  /// Display: Time since start of stage
  /// Definition: Elapsed time at stage
  value122710,

  /// Display: Exercise duration after stress agent injection
  /// Definition: Exercise duration after stress agent injection
  value122711,

  /// Display: Imaging Start Time
  /// Definition: Imaging Start Time
  value122712,

  /// Display: Attenuation correction method
  /// Definition: Attenuation correction method
  value122713,

  /// Display: Pharmacological Stress Agent Dose
  /// Definition: Pharmacological Stress Agent Dose
  value122715,

  /// Display: Maximum Power Output Achieved
  /// Definition: Maximum power output achieved during course of procedure
  value122716,

  /// Display: Peak activity workload
  /// Definition: Peak physical activity intensity measurement during course of procedure
  value122717,

  /// Display: Peak Double Product
  /// Definition: Peak Double Product measurement during course of procedure
  value122718,

  /// Display: OSEM algorithm
  /// Definition: Ordered subsets expectation maximization reconstruction algorithm
  value122720,

  /// Display: Chang method
  /// Definition: Chang attenuation correction method
  value122721,

  /// Display: Algorithmic attenuation correction
  /// Definition: Attenuation correction not based on image-based attenuation maps
  value122726,

  /// Display: NM transmission attenuation correction
  /// Definition: NM transmission attenuation correction
  value122727,

  /// Display: CT-based attenuation correction
  /// Definition: CT-based attenuation correction
  value122728,

  /// Display: No Attenuation Correction
  /// Definition: No attenuation correction
  value122729,

  /// Display: Bazett QTc Algorithm
  /// Definition: Bazett QT Correction Algorithm; QT/(RR ^ 0.5); Bazett HC. "An analysis of the time-relations of electrocardiograms" Heart7:353-370 (1920)
  value122730,

  /// Display: Hodges QTc Algorithm
  /// Definition: Hodges QT Correction Algorithm; QT + 1.75 (heart rate-60); Hodges M, Salerno Q, Erlien D. "Bazett's QT correction reviewed. Evidence that a linear QT correction for heart rate is better." J Am Coll Cardiol1:694 (1983)
  value122731,

  /// Display: Fridericia QTc Algorithm
  /// Definition: Fridericia QT Correction Algorithm; QT/(RR ^ 0.333); Fridericia LS. "The duration of systole in the electrocardiogram of normal subjects and of patients with heart disease" Acta Med Scand53:469-486 (1920)
  value122732,

  /// Display: Framingham QTc Algorithm
  /// Definition: Framingham QT Correction Algorithm; QT + 0.154 (1- RR); Sagie A, Larson MG, Goldberg RJ, et al. "An improved method for adjusting the QT interval for heart rate (the Framingham Heart Study)." Am J Cardiol70:797-801(1992)
  value122733,

  /// Display: Borg RPE Scale
  /// Definition: Borg Rating of Perceived Exertion Scale, range 6:20
  value122734,

  /// Display: Borg CR10 Scale
  /// Definition: Borg category ratio scale, open ended range with nominal range 0:10
  value122735,

  /// Display: Overall study quality
  /// Definition: Overall study quality
  value122739,

  /// Display: Excellent image quality
  /// Definition: Excellent image quality
  value122740,

  /// Display: Good image quality
  /// Definition: Good image quality
  value122741,

  /// Display: Poor image quality
  /// Definition: Poor image quality
  value122742,

  /// Display: Body habitus attenuation
  /// Definition: Image attenuation due to body physique (overweight)
  value122743,

  /// Display: Breast attenuation
  /// Definition: Image attenuation due to breast tissue
  value122744,

  /// Display: Diaphragmatic attenuation
  /// Definition: Image attenuation due to diaphragm
  value122745,

  /// Display: False positive defect finding
  /// Definition: Finding of a defect is incorrect; e.g. from automated analysis
  value122748,

  /// Display: Non-diagnostic - low heart rate
  /// Definition: ECG is non-diagnostic due to low heart rate
  value122750,

  /// Display: Non-diagnostic - resting ST abnormalities
  /// Definition: ECG is non-diagnostic due to resting ST abnormalities
  value122751,

  /// Display: Non-diagnostic - ventricular pacing or LBBB
  /// Definition: ECG is non-diagnostic due to ventricular pacing or Left Bundle Branch Block
  value122752,

  /// Display: Non-diagnostic ECG
  /// Definition: ECG is non-diagnostic for presence of acute coronary syndrome
  value122753,

  /// Display: Strongly positive
  /// Definition: Strongly positive finding
  value122755,

  /// Display: Strongly positive - ST elevation
  /// Definition: Strongly positive finding - ST elevation
  value122756,

  /// Display: ST Depression - Horizontal
  /// Definition: Finding of ST segment depression with no slope
  value122757,

  /// Display: ST Depression - Upsloping
  /// Definition: Finding of ST segment depression with upslope
  value122758,

  /// Display: ST Depression - Downsloping
  /// Definition: Finding of ST segment depression with downslope
  value122759,

  /// Display: Stress test score
  /// Definition: Stress test score
  value122760,

  /// Display: Number of diseased vessel territories
  /// Definition: Number of diseased vessel territories
  value122762,

  /// Display: Weight exceeds equipment limit
  /// Definition: Patient weight exceeds equipment limit
  value122764,

  /// Display: Difference in Ejection Fraction
  /// Definition: Difference in Ejection Fraction
  value122768,

  /// Display: Difference in ED LV Volume
  /// Definition: Difference in End Diastolic Left Ventricular Volume
  value122769,

  /// Display: Ratio of achieved to predicted maximal oxygen consumption
  /// Definition: Ratio of achieved to predicted maximal oxygen consumption
  value122770,

  /// Display: Ratio of achieved to predicted functional capacity
  /// Definition: Ratio of achieved to predicted functional capacity
  value122771,

  /// Display: Aerobic index
  /// Definition: Workload (Watts) at target heart rate divided by body weight
  value122772,

  /// Display: ST/HR Index
  /// Definition: ST depression at peak exercise divided by the exercise-induced increase in heart rate [Kligfield P, Ameisen O, Okin PM. "Heart rate adjustment of ST segment depression for improved detection of coronary artery disease." Circulation 1989;79:245-55.]
  value122773,

  /// Display: Agreement with prior findings
  /// Definition: Agreement with prior findings
  value122775,

  /// Display: Disagreement with prior findings
  /// Definition: Disagreement with prior findings
  value122776,

  /// Display: Rest thallium/stress technetium procedure
  /// Definition: Nuclear Medicine Rest thallium/stress technetium procedure
  value122781,

  /// Display: Rest technetium/stress technetium 1 day procedure
  /// Definition: Nuclear Medicine Rest technetium/stress technetium 1 day procedure
  value122782,

  /// Display: Rest technetium/stress technetium 2 day procedure
  /// Definition: Nuclear Medicine Rest technetium/stress technetium 2 day procedure
  value122783,

  /// Display: Stress technetium/rest technetium 1 day procedure
  /// Definition: Nuclear Medicine Stress technetium/rest technetium 1 day procedure
  value122784,

  /// Display: NM Myocardial Viability procedure
  /// Definition: Nuclear Medicine Myocardial Viability procedure
  value122785,

  /// Display: PET Myocardial Perfusion, Rest only
  /// Definition: Positron Emission Tomography Perfusion Imaging procedure, rest only
  value122791,

  /// Display: PET Myocardial Perfusion, Stress only
  /// Definition: Positron Emission Tomography Perfusion Imaging procedure, stress only
  value122792,

  /// Display: PET Myocardial Perfusion, Rest and Stress
  /// Definition: Positron Emission Tomography Perfusion Imaging procedure, rest and stress
  value122793,

  /// Display: PET Myocardial Viability, Rest only
  /// Definition: Positron Emission Tomography Myocardial Viability procedure, rest only
  value122795,

  /// Display: PET Myocardial Viability, Stress only
  /// Definition: Positron Emission Tomography Myocardial Viability procedure, stress only
  value122796,

  /// Display: PET Myocardial Viability, Rest and Stress
  /// Definition: Positron Emission Tomography Myocardial Viability procedure, rest and stress
  value122797,

  /// Display: Anginal Equivalent
  /// Definition: Group of symptoms heralding angina pectoris that does not include chest pain (dyspnea, diaphoresis, profuse vomiting in a diabetic patient, or arm or jaw pain)
  value122799,

  /// Display: Radiopharmaceutical
  /// Definition: Active ingredient (molecular) used for radioactive tracing
  value123001,

  /// Display: Radiopharmaceutical Start Time
  /// Definition: Time of radiopharmaceutical administration to the patient for imaging purposes
  value123003,

  /// Display: Radiopharmaceutical Stop Time
  /// Definition: Ending time of radiopharmaceutical administration to the patient for imaging purposes
  value123004,

  /// Display: Radiopharmaceutical Volume
  /// Definition: Volume of radiopharmaceutical administered to the patient
  value123005,

  /// Display: Radionuclide Total Dose
  /// Definition: Total amount of radionuclide administered to the patient at Radiopharmaceutical Start Time
  value123006,

  /// Display: Radiopharmaceutical Specific Activity
  /// Definition: Activity per unit mass of the radiopharmaceutical at Radiopharmaceutical Start Time
  value123007,

  /// Display: Radionuclide Syringe Counts
  /// Definition: Pre-injection syringe acquisition count rate
  value123009,

  /// Display: Radionuclide Residual Syringe Counts
  /// Definition: Syringe acquisition count rate following patient injection
  value123010,

  /// Display: Contrast/Bolus Agent
  /// Definition: Contrast or bolus agent
  value123011,

  /// Display: Pre-Medication
  /// Definition: Medication to be administered at the beginning of the Scheduled Procedure Step
  value123012,

  /// Display: Target Region
  /// Definition: Anatomic Region to be imaged
  value123014,

  /// Display: Imaging Direction
  /// Definition: Direction of imaging (includes view, transducer orientation, patient orientation, and/or projection)
  value123015,

  /// Display: Imaging Conditions
  /// Definition: Imaging condition for refinement of protocol (includes secondary posture, instruction, X-Ray / electron beam energy or nuclide, and ultrasound modes), as used in JJ1017 v3.0
  value123016,

  /// Display: Caudal 10 degree distal-cranioproximal oblique
  /// Definition: Caudal 10 degree distal-cranioproximal oblique radiographic projection, defined per Smallwood et al
  value123019,

  /// Display: Neighborhood Analysis
  /// Definition: Surface processing utilizing predefined weighting factors (i.e., kernels) applied to different data values depending on their location relative to other data values within the data domain. Includes Low Pass, High Pass, Gaussian, Laplacian, etc.
  value123101,

  /// Display: Adaptive Filtering
  /// Definition: Surface processing applied non-uniformly utilizing a priori knowledge of the system and/or relative locations of the data values within the data domain. Example: Neighborhood analysis where weighting factors are modified continuously based on predefined criteria
  value123102,

  /// Display: Edge Detection
  /// Definition: Surface processing through the exploitation of discontinuities in the data values within their domain. Includes Gradient filters
  value123103,

  /// Display: Morphological Operations
  /// Definition: Surface processing based on the connectivity of values based on the shape or structure of the data values within their domain. Includes erode, dilate, etc.
  value123104,

  /// Display: Histogram Analysis
  /// Definition: Surface processing applied to the distribution of the data values. Includes thresholding, Bayesian Classification, etc.
  value123105,

  /// Display: Multi-Scale/Resolution Filtering
  /// Definition: Surface processing accomplished through varying the data domain size. Include deformable models
  value123106,

  /// Display: Cluster Analysis
  /// Definition: Surface processing accomplished by combining data values based on their relative location within their domain or value distribution. Includes K- and C-means, Fuzzy Analysis, Watershed, Seed Growing, etc.
  value123107,

  /// Display: Multispectral Processing
  /// Definition: Surface processing accomplished through the weighted combination of multiple data sets. Includes Principle Component Analysis, linear and non-linear weighed combinations, etc.
  value123108,

  /// Display: Manual Processing
  /// Definition: Surface processing accomplished through human interaction. Region drawing
  value123109,

  /// Display: Artificial Intelligence
  /// Definition: Surface processing using Artificial Intelligence techniques, such as Machine Learning, Neural Networks, etc.
  value123110,

  /// Display: Deformable Models
  /// Definition: Surface processing using Deformable Model techniques, such as Point Distribution Models, Level Sets, Simplex Meshes, etc.
  value123111,

  /// Display: OB-GYN Ultrasound Procedure Report
  /// Definition: Document Title of OB-GYN procedure report
  value125000,

  /// Display: Fetal Biometry Ratios
  /// Definition: Report section for assessment of fetal growth using ratios and indexes
  value125001,

  /// Display: Fetal Biometry
  /// Definition: Report section for assessment of fetal growth
  value125002,

  /// Display: Fetal Long Bones
  /// Definition: Report section for assessment of fetal growth by long bone measurements
  value125003,

  /// Display: Fetal Cranium
  /// Definition: Report section for assessment of fetal cranium growth
  value125004,

  /// Display: Biometry Group
  /// Definition: Biometric assessment of
  value125005,

  /// Display: Biophysical Profile
  /// Definition: Report section for assessment of biophysical observations that evaluate fetal well-being according to Manning, Antepartum Fetal Evaluation: Development of a Fetal Biophysical Profile Score, Am. J Obstet Gynecol, 1980;136:787
  value125006,

  /// Display: Measurement Group
  /// Definition: A grouping of related measurements and calculations that share a common context
  value125007,

  /// Display: Fetus Summary
  /// Definition: Report section for fetus specific procedure summary observations
  value125008,

  /// Display: Early Gestation
  /// Definition: Report section for assessment of early gestation fetus
  value125009,

  /// Display: Identifier
  /// Definition: A name to differentiate between multiple instances of some item
  value125010,

  /// Display: Pelvis and Uterus
  /// Definition: Report section for assessment of pelvis and uterus
  value125011,

  /// Display: Growth Percentile rank
  /// Definition: The rank of a measured growth indicator relative to a normal distribution expressed as a percentage
  value125012,

  /// Display: Growth Z-score
  /// Definition: The rank of a measured growth indicator relative to a normal distribution expressed as the dimensionless quantity z = (x-m) /s where (x-m) is the deviation of the value x, from the distribution mean, m, and s is the standard deviation of the distribution
  value125013,

  /// Display: Fetus Characteristics
  /// Definition: Fetus characteristics (findings section title)
  value125015,

  /// Display: Fetal Measurements
  /// Definition: Fetal Measurements (findings section title)
  value125016,

  /// Display: Frame of Reference Identity
  /// Definition: There is a defined equivalence between the Frame of Reference of the Registration SOP instance and the Frame of Reference of the referenced images
  value125021,

  /// Display: Fiducial Alignment
  /// Definition: The registration is based on fiducials that represent patient or specimen features identified in each data set
  value125022,

  /// Display: Acquisition Equipment Alignment
  /// Definition: Registration based on a-priori knowledge of the acquisition geometry. This is not an object registration as in fiducial registration. Rather, it specifies a known spatial relationship
  value125023,

  /// Display: Image Content-based Alignment
  /// Definition: Computed registration based on global image information
  value125024,

  /// Display: Visual Alignment
  /// Definition: Registration by visually guided manipulation
  value125025,

  /// Display: Inter-Hemispheric Plane
  /// Definition: A plane fiducial that specifies the location of the plane separating the two hemispheres of the brain
  value125030,

  /// Display: Right Hemisphere Most Anterior
  /// Definition: A point fiducial that specifies the location in the plane perpendicular to the Anterior- Posterior-Commissure axis and tangential to the anterior limit of the right brain hemisphere
  value125031,

  /// Display: Right Hemisphere Most Posterior
  /// Definition: A point fiducial that specifies the location in the plane perpendicular to the Anterior- Posterior-Commissure axis and tangential to the posterior limit of the right brain hemisphere
  value125032,

  /// Display: Right Hemisphere Most Superior
  /// Definition: A point fiducial that specifies the location in the plane perpendicular to the Anterior- Posterior-Commissure axis and tangential to the superior limit of the right brain hemisphere
  value125033,

  /// Display: Right Hemisphere Most Inferior
  /// Definition: A point fiducial that specifies the location in the plane perpendicular to the Anterior- Posterior-Commissure axis and tangential to the inferior limit of the Right brain hemisphere
  value125034,

  /// Display: Left Hemisphere Most Anterior
  /// Definition: A point fiducial that specifies the location in the plane perpendicular to the Anterior- Posterior-Commissure axis and tangential to the anterior limit of the left brain hemisphere
  value125035,

  /// Display: Left Hemisphere Most Posterior
  /// Definition: A point fiducial that specifies the location in the plane perpendicular to the Anterior- Posterior-Commissure axis and tangential to the posterior limit of the left brain hemisphere
  value125036,

  /// Display: Left Hemisphere Most Superior
  /// Definition: A point fiducial that specifies the location in the plane perpendicular to the Anterior- Posterior-Commissure axis and tangential to the superior limit of the left brain hemisphere
  value125037,

  /// Display: Left Hemisphere Most Inferior
  /// Definition: A point fiducial that specifies the location in the plane perpendicular to the Anterior- Posterior-Commissure axis and tangential to the inferior limit of the left brain hemisphere
  value125038,

  /// Display: Background
  /// Definition: That which is not part of an object
  value125040,

  /// Display: Registration Input
  /// Definition: A segment for use as an input to an image registration process; e.g. to specify the bounding region for determining a Frame of Reference Transformation Matrix
  value125041,

  /// Display: Vascular Ultrasound Procedure Report
  /// Definition: Root Document Title for ultrasound vascular evidence reports (worksheets)
  value125100,

  /// Display: Vessel Branch
  /// Definition: The particular vessel branch, such as the inferior, medial or lateral
  value125101,

  /// Display: Graft Type
  /// Definition: A descriptor or elaboration of the type of graft
  value125102,

  /// Display: Measurement Orientation
  /// Definition: A modifier to a 2D distance measurement to describe its orientation; e.g. a vascular distance measurement for a vessel plague could have a modifier Transverse or Longitudinal
  value125105,

  /// Display: Doppler Angle
  /// Definition: The angle formed between the Doppler beam line and the direction of blood flow within a region of interest in the body defined by the sample volume
  value125106,

  /// Display: Sample Volume Depth
  /// Definition: The depth of the center of the Doppler sample volume measured from skin line along the Doppler line
  value125107,

  /// Display: Pediatric Cardiac Ultrasound Report
  /// Definition: Pediatric Cardiac Ultrasound Report (document title)
  value125195,

  /// Display: Fetal Cardiac Ultrasound Report
  /// Definition: Fetal Cardiac Ultrasound Report (document title)
  value125196,

  /// Display: Adult Congenital Cardiac Ultrasound Report
  /// Definition: Adult Congenital Cardiac Ultrasound Report (document title)
  value125197,

  /// Display: Adult Echocardiography Procedure Report
  /// Definition: Document title of adult echocardiography procedure (evidence) report
  value125200,

  /// Display: Illustration of Finding
  /// Definition: An image that is a pictorial representation of findings. The concept is typically used as a purpose of reference to an image, such as a depiction of myocardium segments depicting wall motion function
  value125201,

  /// Display: LV Wall Motion Score Index
  /// Definition: The average of all scored (non-zero) Left Ventricle segment wall motion scores
  value125202,

  /// Display: Acquisition Protocol
  /// Definition: A type of clinical acquisition protocol for creating images or image-derived measurements. Acquisition protocols may be specific to a manufacturer's product
  value125203,

  /// Display: Area-length biplane
  /// Definition: Method for calculating left ventricular volume from two orthogonal views containing the true long axis (usually the apical 4 and 2 chamber views). Volume = [pL1 / 6] * [(4A1) ÷ (pL1) ] * [(4A2) ÷ (pL2) ]
  value125204,

  /// Display: Area-Length Single Plane
  /// Definition: Method for calculating left ventricular volume from a view containing the true long axis (usually the apical 4-chamber view). Volume = [8(A)2]÷[3pL]
  value125205,

  /// Display: Cube
  /// Definition: Method (formula) for calculating left ventricle volumes and function derivatives (EF, SV, SI, etc.) that estimates the volume as the cube of diameter
  value125206,

  /// Display: Method of Disks, Biplane
  /// Definition: Method of calculating volume based on the summation of disk volumes. The disk axis is parallel to the left ventricular long axis and using a disk diameter averaged from the two chamber and four chamber views
  value125207,

  /// Display: Method of Disks, Single Plane
  /// Definition: Method of calculating volume based on the summation of disk volumes. The disk axis is parallel to the left ventricular long axis with disk diameter taken from the four-chamber view
  value125208,

  /// Display: Teichholz
  /// Definition: Method (formula) for calculating left ventricle volumes and function derivatives (EF, SV, SI, etc.) Volume = [7.0/(2.4+D) ]*D3
  value125209,

  /// Display: Area by Pressure Half-Time
  /// Definition: Mitral valve area (cm2) by Pressure Half-time = 220 (cm2.ms) / PHT (ms)
  value125210,

  /// Display: Biplane Ellipse
  /// Definition: Area = P/4 X d1 X d2 d1 = anterior/posterior axis d2 = medial/lateral axis Hagen-Ansert, Sandra L., Textbook of Diagnostic Ultrasound, ed. 3, The C.V.Mosby Co., 1989, p. 73.
  value125211,

  /// Display: Continuity Equation
  /// Definition: For conduits in series ("in continuity"), volume flow is equal: A1*V1 = A2*V2. where V is the velocity
  value125212,

  /// Display: Continuity Equation by Mean Velocity
  /// Definition: For conduits in series ("in continuity"), volume flow is equal: A1*V1 = A2*V2. where V is the mean velocity
  value125213,

  /// Display: Continuity Equation by Peak Velocity
  /// Definition: For conduits in series ("in continuity"), volume flow is equal: A1*V1 = A2*V2. where V is the peak velocity
  value125214,

  /// Display: Continuity Equation by Velocity Time Integral
  /// Definition: For conduits in series ("in continuity"), volume flow is equal: A1*V1 = A2*V2. where V is the velocity time integral
  value125215,

  /// Display: Proximal Isovelocity Surface Area
  /// Definition: Utilizes aliasing velocity (by color Doppler) of flow into an orifice (often regurgitant or stenotic) to measure instantaneous flow rate, orifice area, and flow volume. The instantaneous flow rate = (2πr2vav ) * (α / π) where vav is the constant velocity known as aliasing velocity at radius r, vp is the peak velocity at the orifice, and α is the angle in radians of the constant velocity surface. Estimated Orifice area = Flow rate / vp , where vp is the peak velocity at the orifice and the flow rate is the PISA peak flow rate. The volume flow is then the product of the orifice area and Velocity Time Integral
  value125216,

  /// Display: Full Bernoulli
  /// Definition: ΔP = 4*(V12 - V22)
  value125217,

  /// Display: Simplified Bernoulli
  /// Definition: ΔP = 4*V2
  value125218,

  /// Display: Doppler Volume Flow
  /// Definition: Volume flow = Conduit CSA * (Velocity Time Integral)
  value125219,

  /// Display: Planimetry
  /// Definition: Direct measurement of an area by tracing an irregular perimeter
  value125220,

  /// Display: Left Ventricle Mass by M-mode
  /// Definition: Mass = 1.04 * [(ST+LVID+PWT)3 - LVID3] * 0.8+ 0.6. Mass unit is grams and length in cm
  value125221,

  /// Display: Left Ventricle Mass by Truncated Ellipse
  /// Definition: Mass = 1.05P ((b + t)2 X (2/3 (a + t) + d - d3 /3(a + t)2) - b2 (2/3a + d - d3 /3a2)) a = Semi-major axis from widest minor axis radius to apex. b = Short axis radius calculated from short axis cavity area t = Myocardial thickness calculated from short axis epicardial and cavity areas d = Truncated semi-major axis from widest short axis diameter to plane of mitral annulus. Mass unit is grams and length in cm. Schiller NB et al: Recommendations for quantification of the left ventricle by two-dimensional echocardiography, American Society of Echocardiography 2:364, 1989.
  value125222,

  /// Display: 4 Point Segment Finding Scale
  /// Definition: A four point, echocardiographic numeric scoring scheme of myocardium segments based on evaluation of wall motion and ventricle morphology. Recommendations for Quantitation of the Left Ventricle by Two-Dimensional Echocardiography, Journal of the American Society of Echocardiography, 2:358-367, 1989
  value125223,

  /// Display: 5 Point Segment Finding Scale
  /// Definition: A five point, echocardiographic numeric scoring scheme of myocardium segments based on evaluation of wall motion and ventricle morphology. Recommendations for Quantitation of the Left Ventricle by Two-Dimensional Echocardiography, Journal of the American Society of Echocardiography, 2:358-367, 1989
  value125224,

  /// Display: 5 Point Segment Finding Scale With Graded Hypokinesis
  /// Definition: A five point, echocardiographic numeric scoring scheme of myocardium segments based on evaluation of wall motion and ventricle morphology, with severity of hypokinesis graded. Recommendations for Quantitation of the Left Ventricle by Two-Dimensional Echocardiography, Journal of the American Society of Echocardiography, 2:358-367, 1989
  value125225,

  /// Display: Single Plane Ellipse
  /// Definition: Method of estimating volume from a planar ellipse. Equivalent to Biplane Ellipse with an assumption that the ellipse in the orthogonal plane has identical major and minor diameters
  value125226,

  /// Display: Modified Simpson
  /// Definition: Modified Simpson's Method of estimating ventricular volume, based on the method of disks with paired apical views. Schiller NB, et al. "Recommendations for quantitation of the left ventricle by two-dimensional echocardiography. American Society of Echocardiography Committee on Standards, Subcommittee on Quantitation of Two-Dimensional Echocardiograms". J Am Soc Echocardiogr.1989 2(5):358-367. Sep-Oct
  value125227,

  /// Display: Bullet Method
  /// Definition: Bullet method of estimating ventricular volume. Volume = 5/6 * L * S L: Left ventricle long axis length S: Left ventricle area, SAX view at level of Mitral Valve
  value125228,

  /// Display: Power Doppler
  /// Definition: Color coded ultrasound images of blood flow, which depict the amplitude, or power, of Doppler signals
  value125230,

  /// Display: 3D mode
  /// Definition: Volumetric ultrasound imaging
  value125231,

  /// Display: Start of drug dose administration
  /// Definition: Onset of administration of dose of a drug
  value125233,

  /// Display: Start of contrast agent administration
  /// Definition: Onset of contrast agent administration
  value125234,

  /// Display: Destruction of microbubbles
  /// Definition: Destruction of ultrasonic contrast microbubbles by a high-energy ultrasound pulse
  value125235,

  /// Display: Onset of exercise
  /// Definition: Instant at which exercise begins
  value125236,

  /// Display: Cessation of exercise
  /// Definition: Instant at which exercise ends
  value125237,

  /// Display: Onset of stimulation
  /// Definition: Instant at which stimulation begins
  value125238,

  /// Display: Cessation of stimulation
  /// Definition: Instant at which stimulation ends
  value125239,

  /// Display: Line scan pattern
  /// Definition: Ultrasound transducer scan pattern in which information is gathered along a line
  value125240,

  /// Display: Plane scan pattern
  /// Definition: Ultrasound transducer scan pattern in which information is gathered within a plane
  value125241,

  /// Display: Volume scan pattern
  /// Definition: Ultrasound transducer scan pattern in which information is gathered within a volume
  value125242,

  /// Display: Non-imaging Doppler ultrasound transducer geometry
  /// Definition: Ultrasound transducer geometry characterized by a single scan line used for PW or CW Doppler scanning
  value125251,

  /// Display: Linear ultrasound transducer geometry
  /// Definition: Ultrasonic transducer geometry characterized by parallel lines
  value125252,

  /// Display: Curved linear ultrasound transducer geometry
  /// Definition: Ultrasonic transducer geometry characterized by radial lines normal to the outside of a curved surface
  value125253,

  /// Display: Sector ultrasound transducer geometry
  /// Definition: Ultrasonic transducer geometry characterized by lines originating from a common apex
  value125254,

  /// Display: Radial ultrasound transducer geometry
  /// Definition: Ultrasonic transducer geometry characterized by lines emanating radially from a single point
  value125255,

  /// Display: Ring ultrasound transducer geometry
  /// Definition: Ultrasonic transducer geometry characterized by a circular ring of transducer elements
  value125256,

  /// Display: Fixed beam direction
  /// Definition: Ultrasonic steering technique consisting of a single beam normal to the transducer face steered by the orientation of the probe
  value125257,

  /// Display: Mechanical beam steering
  /// Definition: Ultrasonic steering technique consisting of mechanically directing the beam
  value125258,

  /// Display: Phased beam steering
  /// Definition: Ultrasonic steering technique consisting of electronically-steered beams
  value125259,

  /// Display: External Transducer
  /// Definition: Transducer is designed to be placed onto the surface of the subject
  value125261,

  /// Display: Transesophageal Transducer
  /// Definition: Transducer is designed for insertion into the esophagus
  value125262,

  /// Display: Endovaginal Transducer
  /// Definition: Transducer is designed for insertion into the vagina
  value125263,

  /// Display: Endorectal Transducer
  /// Definition: Transducer is designed for insertion into the rectum
  value125264,

  /// Display: Intravascular Transducer
  /// Definition: Transducer is designed for insertion via a catheter
  value125265,

  /// Display: Left Ventricle Mass by Area Length
  /// Definition: method to measure the mass of the Left Ventricle via the ASE area-length method at end diastole. LV Mass = 1.05*(5/6*(A1*(L+t)) - 5/6*(A2*L)) A1 = Left Ventricle epicardial SAX area at the level of the papillary muscle tips at end diastole. A2 = Left Ventricle endocardial SAX area cavity area at the level of the papillary muscle tips at end diastole. L = Left Ventricle apical view long axis length at end diastole. t = Myocardial thickness can be computed as: t = sqrt (A1/3.14) - sqrt (A2/3.14) Reference: 1) Schiller, N.B., et al. "Recommendations for Quantification of the LV by Two-dimensional Echocardiography." J Am Soc Echo, Vol. 2, No. 5: 358-367, Sep-Oct 1989. 2) Reichek, N., et al. "Anatomic Validation of Left Ventricular Mass Estimates from Clinical Two-dimensional Echocardiography: Initial Results." Circulation, Vol. 67, No. 2: 348-52, February 1983
  value125270,

  /// Display: Left Ventricle Mass by M-mode - adjusted by Height
  /// Definition: Equation = Left Ventricle Mass by M-mode (in gram) / (Height (in meter)) ^2.7 Reference: Giovanni De Simone, et al. "Effect of Growth on Variability of Left Ventricular Mass: Assessment of Allometric Signals in Adults and Children and Their Capacity to Predict Cardiovascular Risk". New York, New York and Cincinnati, Ohio
  value125271,

  /// Display: Left Ventricle Mass by Truncated Ellipse - adjusted by Height
  /// Definition: Equation = Left Ventricle Mass by Truncated Ellipse / Height^2.7 Reference: Giovanni De Simone, et al. "Effect of Growth on Variability of Left Ventricular Mass: Assessment of Allometric Signals in Adults and Children and Their Capacity to Predict Cardiovascular Risk". New York, New York and Cincinnati, Ohio
  value125272,

  /// Display: Left Ventricle Mass by Area Length - adjusted by Height
  /// Definition: Equation = Left Ventricle Mass by Area Length / Height^2.7 Reference: Giovanni De Simone, et al. "Effect of Growth on Variability of Left Ventricular Mass: Assessment of Allometric Signals in Adults and Children and Their Capacity to Predict Cardiovascular Risk". New York, New York and Cincinnati, Ohio
  value125273,

  /// Display: CARDIOsphere
  /// Definition: CARDIOsphere ultrasonic contrast agent produced by POINT Biomedical
  value125901,

  /// Display: Echovist
  /// Definition: Echovist® ultrasonic contrast agent produced by Schering AG
  value125902,

  /// Display: Imagify
  /// Definition: Imagify ultrasonic contrast agent produced by Accusphere Inc
  value125903,

  /// Display: Levovist
  /// Definition: Levovist® ultrasonic contrast agent produced by Schering AG
  value125904,

  /// Display: Sonazoid
  /// Definition: Sonazoid ultrasonic contrast agent produced by Daiichi Pharmaceutical / General Electric
  value125905,

  /// Display: SonoVue
  /// Definition: SonoVue ultrasonic contrast agent produced by Bracco Diagnostics
  value125906,

  /// Display: Targestar-B
  /// Definition: Targestar-B ultrasonic contrast agent produced by Targeson LLC
  value125907,

  /// Display: Targestar-P
  /// Definition: Targestar-P ultrasonic contrast agent produced by Targeson LLC
  value125908,

  /// Display: Imaging Measurement Report
  /// Definition: A structured report containing the quantitative results of human or machine analysis of images
  value126000,

  /// Display: Oncology Measurement Report
  /// Definition: A structured report containing the quantitative results of human or machine analysis of images for oncology evaluation
  value126001,

  /// Display: Dynamic Contrast MR Measurement Report
  /// Definition: A structured report containing the quantitative results of human or machine analysis of DCE-MR
  value126002,

  /// Display: PET Measurement Report
  /// Definition: A structured report containing the quantitative results of human or machine analysis of PET images
  value126003,

  /// Display: Imaging Measurements
  /// Definition: Measurements made on images
  value126010,

  /// Display: Derived Imaging Measurements
  /// Definition: Measurements derived from measurements made on images
  value126011,

  /// Display: Multiparametric MRI
  /// Definition: An MRI procedure in which multiple parameters including diffusion, dynamic contrast and T2 are measured
  value126020,

  /// Display: Multiparametric MRI of prostate
  /// Definition: An MRI procedure of the prostate in which multiple parameters including diffusion, dynamic contrast and T2 are measured
  value126021,

  /// Display: Multiparametric MRI of whole body
  /// Definition: An MRI procedure of the whole body in which multiple parameters including diffusion, dynamic contrast and T2 are measured
  value126022,

  /// Display: Sum of segmented voxel volumes
  /// Definition: The volume derived by summing the volumes of all the voxels (and partial voxels if the segment contains partially occupied voxels) included in the segment
  value126030,

  /// Display: Peak Value Within ROI
  /// Definition: Maximum average gray value that is calculated from a 1 cubic centimeter sphere placed within the region of interest. Reference Wahl et al PERCIST article
  value126031,

  /// Display: Metabolic Volume
  /// Definition: The volume of a lesion (e.g. a tumor) ascertained through information about its metabolic activity (e.g. SUV on PET). Abbreviated "MV". Synonymous with Metabolic Tumor Volume (MTV)
  value126032,

  /// Display: Total Lesion Glycolysis
  /// Definition: The total activity of a lesion obtained as the product of its volume and its glycolytic activity (on FDG-PET). The volume may be defined on the same modality (e.g. the MV on FDG-PET by some thresholding or other technique) or on another spatially registered modality (e.g. the lesion outline segmented on CT or MR). Does not apply to other radiopharmaceuticals than those involved in glucose metabolism. Abbreviated TLG. Synonymnous with "Tumor Lesion Glycolysis"
  value126033,

  /// Display: Glycolysis
  /// Definition: The amount glycolytic activity summed across all voxels in a defined region or within a defined range of SUV (on FDG-PET)
  value126034,

  /// Display: Total Lesion Proliferation
  /// Definition: The total activity of a lesion obtained as the product of its volume and its proliferative activity (on FLT-PET). The volume may be defined on the same modality (e.g. the MV on FDG-PET by some thresholding or other technique) or on another spatially registered modality (e.g. the lesion outline segmented on CT or MR). Does not apply to other radiopharmaceuticals than those involved in cellular proliferation. Abbreviated TLP. Synonymnous with "Tumor Lesion Proliferation"
  value126035,

  /// Display: Proliferative Activity
  /// Definition: The amount proliferative activity summed across all voxels in a defined region or within a defined range of SUV (on FLT-PET)
  value126036,

  /// Display: Standardized Added Metabolic Activity (SAM)
  /// Definition: A background-corrected, partial volume independent version of TLG. SAM is calculated by drawing a volume of interest (VOI1) around the tumour and a larger VOI (VOI2) around VOI1. Subtracting the background activity in VOI2-VOI1 from VOI1 yields SAM. See Mertens et al. "Standardized added metabolic activity (SAM): a partial volume independent marker of total lesion glycolysis in liver metastases". Eur J Nucl Med Mol Imaging (2012) 39:1441-1448
  value126037,

  /// Display: Standardized Added Metabolic Activity (SAM) Background
  /// Definition: The background value (VOI2-VOI1) used to calculate Standardized Added Metabolic Activity (SAM). SAM is calculated by drawing a volume of interest (VOI1) around the tumour and a larger VOI (VOI2) around VOI1. Subtracting the background activity in VOI2-VOI1 from VOI1 yields SAM. See Mertens et al. "Standardized added metabolic activity (SAM): a partial volume independent marker of total lesion glycolysis in liver metastases". Eur J Nucl Med Mol Imaging (2012) 39:1441-1448
  value126038,

  /// Display: Lesion to Background SUV Ratio
  /// Definition: The ratio of the SUV within a tumor to the SUV of a pre-defined background region. Need reference(s). A more general concept than Tumor to Background Ratio (TBR)
  value126039,

  /// Display: Background for Lesion to Background SUV Ratio
  /// Definition: The SUV of a pre-defined background region used to compute Lesion to Background SUV Ratio. Need reference(s)
  value126040,

  /// Display: Fractal Dimension
  /// Definition: A statistical index of complexity comparing how detail in a fractal pattern changes with the scale at which it is measured; a ratio of the change in detail to the change in scale
  value126050,

  /// Display: Skewness
  /// Definition: Measure of the asymmetry of the probability distribution of a real-valued random variable about its mean
  value126051,

  /// Display: Kurtosis
  /// Definition: Measure of the peakedness of the probability distribution of a real-valued random variable
  value126052,

  /// Display: Entropy of GLCM
  /// Definition: The zero order entropy of a Gray Level Co-occurrence Matrix (GLCM). A measure of disorder. See http://www.fp.ucalgary.ca/mhallbey/equations.htm
  value126060,

  /// Display: Energy of GLCM
  /// Definition: The energy (uniformity) (square root of the Angular Second Moment (ASM)) of a Gray Level Co-occurrence Matrix (GLCM). A measure of orderliness. See http://www.fp.ucalgary.ca/mhallbey/equations.htm
  value126061,

  /// Display: Homogeneity of GLCM
  /// Definition: The Inverse Difference Moment of a Gray Level Co-occurrence Matrix (GLCM). See http://www.fp.ucalgary.ca/mhallbey/equations.htm
  value126062,

  /// Display: Contrast of GLCM
  /// Definition: The sum of squares variance of a Gray Level Co-occurrence Matrix (GLCM). See http://www.fp.ucalgary.ca/mhallbey/equations.htm
  value126063,

  /// Display: Dissimilarity of GLCM
  /// Definition: The dissimilarity of a Gray Level Co-occurrence Matrix (GLCM). See http://www.fp.ucalgary.ca/mhallbey/equations.htm
  value126064,

  /// Display: ASM of GLCM
  /// Definition: The Angular Second Moment of a Gray Level Co-occurrence Matrix (GLCM). See http://www.fp.ucalgary.ca/mhallbey/equations.htm
  value126065,

  /// Display: Correlation of GLCM
  /// Definition: A measure of the linear dependency of grey levels on those of neighbouring pixels of a Gray Level Co-occurrence Matrix (GLCM). See http://www.fp.ucalgary.ca/mhallbey/equations.htm
  value126066,

  /// Display: Gray Level Co-occurrence Matrix (GLCM)
  /// Definition: A tabulation of how often different combinations of pixel values (grey levels) occur in an image. See http://www.fp.ucalgary.ca/mhallbey/the_glcm.htm
  value126067,

  /// Display: Subject Time Point Identifier
  /// Definition: An identifier of a specific time point in a continuum, which is unique within an appropriate local context (such as an entire organization, system or treatment protocol), which identifies the time point for a specific patient
  value126070,

  /// Display: Protocol Time Point Identifier
  /// Definition: An identifier of a specific time point in a continuum, which is unique within an appropriate local context (such as an entire organization, system or treatment protocol), which identifies the time point "slot" within a treatment protocol using the same value for all patients in the protocol
  value126071,

  /// Display: Time Point Type
  /// Definition: A pre-defined type of a specific time point in a continuum
  value126072,

  /// Display: Time Point Order
  /// Definition: A number indicating the order of a time point relative to other time points in the same continuum
  value126073,

  /// Display: Posttreatment
  /// Definition: The time after the treatment of interest
  value126074,

  /// Display: Eligibility
  /// Definition: For the purpose of determining eligibility for a protocol
  value126075,

  /// Display: RECIST 1.0
  /// Definition: Response Evaluation Criteria in Solid Tumors version 1.0. See [RECIST] in Normative References
  value126080,

  /// Display: RECIST 1.1
  /// Definition: Response Evaluation Criteria in Solid Tumors Version 1.1. See Eisenhauer et al. "New Response Evaluation Criteria in Solid Tumours: Revised RECIST Guideline (version 1.1)." European Journal of Cancer 45, no. 2 (n.d.): 228-47. doi:10.1016/j.ejca.2008.10.026.
  value126081,

  /// Display: Real World Value Map used for measurement
  /// Definition: A reference to the Real World Value Map applied to the stored image pixel values before their use for a measurement
  value126100,

  /// Display: Image Library Group
  /// Definition: A container that groups common information about a set of images used as evidence to produce a report
  value126200,

  /// Display: Acquisition Date
  /// Definition: The date the acquisition of data started
  value126201,

  /// Display: Acquisition Time
  /// Definition: The time the acquisition of data started
  value126202,

  /// Display: PET Radionuclide Incubation Time
  /// Definition: The time between the start of injection of the PET radionuclide and the start of acquisition of the PET data
  value126203,

  /// Display: R2-Coefficient
  /// Definition: Coefficient of determination, R2. An indication of goodness of fit
  value126220,

  /// Display: Perfusion analysis by Stable Xenon CT technique
  /// Definition: Perfusion analysis by Stable Xenon CT technique
  value126300,

  /// Display: Perfusion analysis by IV Iodinated Contrast CT technique
  /// Definition: Perfusion analysis by IV Iodinated Contrast CT technique
  value126301,

  /// Display: Perfusion analysis by Arterial Spin Labeling MR technique
  /// Definition: Perfusion analysis by Arterial Spin Labeling (ASL) MR technique
  value126302,

  /// Display: Perfusion analysis by Susceptibility MR technique
  /// Definition: Perfusion analysis by Susceptibility (T2*) MR technique
  value126303,

  /// Display: Least Mean Square (LMS) deconvolution
  /// Definition: Least Mean Square (LMS) deconvolution
  value126310,

  /// Display: Singular Value Decomposition (SVD) deconvolution
  /// Definition: Singular Value Decomposition (SVD) deconvolution
  value126311,

  /// Display: Ktrans
  /// Definition: Ktrans, the volume transfer constant of a tracer diffusion kinetic model, specifically the volume transfer constant between blood plasma and extravascular extracellular space (EES) See Tofts et al, "Estimating Kinetic Parameters From Dynamic Contrast-Enhanced T1-Weighted MRI of a Diffusable Tracer: Standardized Quantities and Symbols", Journal of Magnetic Resonance Imaging, vol. 10, pp. 223-232, 1999
  value126312,

  /// Display: kep
  /// Definition: kep, the rate constant between extravascular extracellular space (EES) and blood plasma See Tofts et al, "Estimating Kinetic Parameters From Dynamic Contrast-Enhanced T1-Weighted MRI of a Diffusable Tracer: Standardized Quantities and Symbols", Journal of Magnetic Resonance Imaging, vol. 10, pp. 223-232, 1999
  value126313,

  /// Display: ve
  /// Definition: ve, the fractional (not absolute) volume of extravascular extracellular space (EES) per unit volume of tissue See Tofts et al, "Estimating Kinetic Parameters From Dynamic Contrast-Enhanced T1-Weighted MRI of a Diffusable Tracer: Standardized Quantities and Symbols", Journal of Magnetic Resonance Imaging, vol. 10, pp. 223-232, 1999
  value126314,

  /// Display: IAUC
  /// Definition: The intial area under the contrast agent concentration-time curve
  value126320,

  /// Display: IAUC60
  /// Definition: The intial area under the contrast agent concentration-time curve at 60 seconds after the onset time
  value126321,

  /// Display: IAUC90
  /// Definition: The intial area under the contrast agent concentration-time curve at 90 seconds after the onset time
  value126322,

  /// Display: tau_m
  /// Definition: τm. The mean intracellular water lifetime (τi). Used in the Shutter-Speed Model (SSM) of tracer kinetics
  value126330,

  /// Display: vp
  /// Definition: vp. The fractional (not absolute) blood plasma volume per unit volume of tissue. See Tofts et al, "Estimating Kinetic Parameters From Dynamic Contrast-Enhanced T1-Weighted MRI of a Diffusable Tracer: Standardized Quantities and Symbols", Journal of Magnetic Resonance Imaging, vol. 10, pp. 223-232, 1999
  value126331,

  /// Display: Standard Tofts Model
  /// Definition: A tracer diffusion kinetic model in which the permeability is assumed to be isodirectional. See P. Tofts, "Modeling tracer kinetics in dynamic Gd-DTPA MR imaging", Journal of Magnetic Resonance Imaging, vol. 7, pp. 91-101, 1997
  value126340,

  /// Display: Extended Tofts Model
  /// Definition: A tracer diffusion kinetic model in which the permeability is not assumed to be isodirectional, and which includes the contribution of tracer in the blood plasma to the total tissue concentration. See P. Tofts, "Modeling tracer kinetics in dynamic Gd-DTPA MR imaging", Journal of Magnetic Resonance Imaging, vol. 7, pp. 91-101, 1997
  value126341,

  /// Display: Model-free concentration-time quantitification
  /// Definition: A semiquantitative analysis of the contrast-enhancement concentration versus time curve that avoids the use of a pharmacokinetic model; e.g. integration to compute the initial area under the curve
  value126342,

  /// Display: First Pass Leakage Profile (FPLP)
  /// Definition: A tracer diffusion kinetic model that accounts for the tumor leakage profile during the first pass of contrast. See Li, Ka-Loh, Xiao Ping Zhu, John Waterton, and Alan Jackson. "Improved 3D Quantitative Mapping of Blood Volume and Endothelial Permeability in Brain Tumors." Journal of Magnetic Resonance Imaging 12, no. 2 (2000): 347-357. doi:10.1002/1522-2586(200008)12:2<347::AID-JMRI19>3.0.CO;2-7
  value126343,

  /// Display: Shutter-Speed Model (SSM)
  /// Definition: A tracer diffusion kinetic model that does not assume that intercompartmental water molecule exchange is infinitely fast. See Li, Xin, Wei Huang, Thomas E. Yankeelov, Alina Tudorica, William D. Rooney, and Charles S. Springer. "Shutter-Speed Analysis of Contrast Reagent Bolus-Tracking Data: Preliminary Observations in Benign and Malignant Breast Disease." Magnetic Resonance in Medicine 53, no. 3 (2005): 724-29. doi:10.1002/mrm.20405
  value126344,

  /// Display: T1 by Multiple Flip Angles
  /// Definition: T1 measurement by Multiple Flip Angles (MFA) (variable saturation) method
  value126350,

  /// Display: T1 by Inversion Recovery
  /// Definition: T1 measurement by Inversion Recovery (IR) method
  value126351,

  /// Display: T1 by Fixed Value
  /// Definition: Calculation was performed using a fixed value of T1 rather than a measured value. The value could be encoded as the value of (126353, DCM, "T1 Used For Calculation")
  value126352,

  /// Display: T1 Used For Calculation
  /// Definition: The fixed value of T1 used for a calculation
  value126353,

  /// Display: AIF Ignored
  /// Definition: No Arterial Input Function was used
  value126360,

  /// Display: Population Averaged AIF
  /// Definition: A population-averaged Arterial Input Function
  value126361,

  /// Display: User-defined AIF ROI
  /// Definition: An Arterial Input Function computed from a user-defined Region of Interest
  value126362,

  /// Display: Automatically Detected AIF ROI
  /// Definition: An Arterial Input Function computed from an automatically detected Region of Interest
  value126363,

  /// Display: Blind Estimation of AIF
  /// Definition: A data-driven blind source separation (BSS) algorithm that estimates AIF from individuals without any presumed AIF model and initialization. See Lin, Yu-Chun, Tsung-Han Chan, Chong-Yung Chi, Shu-Hang Ng, Hao-Li Liu, Kuo-Chen Wei, Yau-Yau Wai, Chun-Chieh Wang, and Jiun-Jie Wang. "Blind Estimation of the Arterial Input Function in Dynamic Contrast-Enhanced MRI Using Purity Maximization." Magnetic Resonance in Medicine 68, no. 5 (November 1, 2012): 1439-49. doi:10.1002/mrm.24144
  value126364,

  /// Display: Time of Peak Concentration
  /// Definition: The time at which the concentration-time curve achieves its peak for the first time. Used as a concept name for a value or as a method; e.g. used as a method of calculation for BAT. See Shpilfoygel Med Phys 2008. doi: 10.1118/1.1288669
  value126370,

  /// Display: Bolus Arrival Time
  /// Definition: The nominal time at which arrival of a contrast bolus is detected, which is used as a reference point for subsequent calculations. Used as a concept name for a value or as a method. No specific computational method is implied by this general definition. Abbreviated BAT
  value126371,

  /// Display: Time of Leading Half-Peak Concentration
  /// Definition: The time at which the concentration-time curve achieves half of its peak density for the first time. Used as a concept name for a value or as a method; e.g. used as a method of calculation for BAT. See Shpilfoygel Med Phys 2008. doi: 10.1118/1.1288669
  value126372,

  /// Display: Temporal Derivative Exceeds Threshold
  /// Definition: A method of determining BAT that involves computing the temporal derivative of the concentration-time curve and selecting the time when the temporal derivative exceeds a specified threshold. See Shpilfoygel Med Phys 2008. doi: 10.1118/1.1288669
  value126373,

  /// Display: Temporal Derivative Threshold
  /// Definition: A threshold applied to the temporal derivative of the concentration-time curve; e.g. used to establish BAT. See Shpilfoygel Med Phys 2008. doi: 10.1118/1.1288669
  value126374,

  /// Display: Maximum Slope
  /// Definition: The maximum rate of signal intensity change within a measured region of a time-activity curve. See Boonsirikamchai, Piyaporn, Harmeet Kaur, Deborah A. Kuban, Edward Jackson, Ping Hou, and Haesun Choi. "Use of Maximum Slope Images Generated From Dynamic Contrast-Enhanced MRI to Detect Locally Recurrent Prostate Carcinoma After Prostatectomy: A Practical Approach." American Journal of Roentgenology 198, no. 3 (March 1, 2012): W228-W236. doi:10.2214/AJR.10.6387
  value126375,

  /// Display: Maximum Difference
  /// Definition: The maximum degree of signal intensity change within a measured region of a time-activity curve. See Boonsirikamchai, Piyaporn, Harmeet Kaur, Deborah A. Kuban, Edward Jackson, Ping Hou, and Haesun Choi. "Use of Maximum Slope Images Generated From Dynamic Contrast-Enhanced MRI to Detect Locally Recurrent Prostate Carcinoma After Prostatectomy: A Practical Approach." American Journal of Roentgenology 198, no. 3 (March 1, 2012): W228-W236. doi:10.2214/AJR.10.6387
  value126376,

  /// Display: Tracer Concentration
  /// Definition: Tracer concentration in tissue; e.g. in a DCE-MR experiment, the concentration of contrast agent in mmol/l
  value126377,

  /// Display: Contrast Longitudinal Relaxivity
  /// Definition: The degree to which a paramagnetic contrast agent can enhance the proton longitudinal relaxation rate constant (R1, 1/T1), normalized to the concentration of the contrast agent. Also referred to as r1. Typically expressed in units of l/mmol/s
  value126380,

  /// Display: Regional Blood Flow
  /// Definition: The flow rate of blood perfusing a region as volume per mass per unit of time
  value126390,

  /// Display: Regional Blood Volume
  /// Definition: The volume of blood perfusing a region as volume per mass
  value126391,

  /// Display: Oxygen Extraction Fraction
  /// Definition: The percent of the oxygen removed from the blood by tissue during its passage through the capillary network. For example, as measured by blood oxygenation level dependent (BOLD) MR. See He, Xiang, and Dmitriy A. Yablonskiy. "Quantitative BOLD: Mapping of Human Cerebral Deoxygenated Blood Volume and Oxygen Extraction Fraction: Default State." Magnetic Resonance in Medicine 57, no. 1 (2007): 115-26
  value126392,

  /// Display: R1
  /// Definition: The longitiudinal relaxation rate constant. The inverse of longitudinal relaxation time, i.e., R1 = 1/T1
  value126393,

  /// Display: R2
  /// Definition: The transverse relaxation rate constant. The inverse of transverse relaxation time, i.e., R2 = 1/T2
  value126394,

  /// Display: Standardized Uptake Value
  /// Definition: A ratio of locally measured radioactivity concentration versus the injected radioactivity distributed evenly throughout the whole body. This general concept encompasses all specific methods of calculating the whole body volume of distribution, such as using body weight, lean body mass, body surface area, etc.
  value126400,

  /// Display: SUVbw
  /// Definition: Standardized Uptake Value calculated using body weight. The patient size correction factor for males and females is body weight. Defined in Sugawara et al. Reevaluation of the Standardized Uptake Value for FDG: Variations with Body Weight and Methods for Correction.Radiology, 1999 at http://radiology.rsna.org/content/213/2/521
  value126401,

  /// Display: SUVlbm
  /// Definition: Standardized Uptake Value calculated using lean body mass. The patient size correction factor for males is 1.10 * weight - 120 * (weight/height) ^2, and for females is 1.07 * weight - 148 * (weight/height) ^2. Defined in Sugawara et al. Reevaluation of the Standardized Uptake Value for FDG: Variations with Body Weight and Methods for Correction.Radiology, 1999 at http://radiology.rsna.org/content/213/2/521
  value126402,

  /// Display: SUVbsa
  /// Definition: Standardized Uptake Value calculated using body surface area. The patient size correction factor for males and females is weight^ 0.425 * height^0.725 * 0.007184. Defined in Sugawara et al. Reevaluation of the Standardized Uptake Value for FDG: Variations with Body Weight and Methods for Correction.Radiology, 1999 at http://radiology.rsna.org/content/213/2/521
  value126403,

  /// Display: SUVibw
  /// Definition: Standardized Uptake Value calculated using ideal body weight. The patient size correction factor for males is 48.0 + 1.06 * (height - 152) and for females is 45.5 + 0.91 * (height - 152). Defined in Sugawara et al. Reevaluation of the Standardized Uptake Value for FDG: Variations with Body Weight and Methods for Correction.Radiology, 1999 at http://radiology.rsna.org/content/213/2/521
  value126404,

  /// Display: SUV body weight calculation method
  /// Definition: Method of calculating Standardized Uptake Value using body weight. The patient size correction factor for males and females is body weight. Defined in Sugawara et al. Reevaluation of the Standardized Uptake Value for FDG: Variations with Body Weight and Methods for Correction.Radiology, 1999 at http://radiology.rsna.org/content/213/2/521
  value126410,

  /// Display: SUV lean body mass calculation method
  /// Definition: Method of calculating Standardized Uptake Value using lean body mass. The patient size correction factor for males is 1.10 * weight - 120 * (weight/height) ^2, and for females is 1.07 * weight - 148 * (weight/height) ^2. Defined in Sugawara et al. Reevaluation of the Standardized Uptake Value for FDG: Variations with Body Weight and Methods for Correction.Radiology, 1999 at http://radiology.rsna.org/content/213/2/521
  value126411,

  /// Display: SUV body surface area calculation method
  /// Definition: Method of calculating Standardized Uptake Value using body surface area. The patient size correction factor for males and females is weight^ 0.425 * height^0.725 * 0.007184. Defined in Sugawara et al. Reevaluation of the Standardized Uptake Value for FDG: Variations with Body Weight and Methods for Correction.Radiology, 1999 at http://radiology.rsna.org/content/213/2/521
  value126412,

  /// Display: SUV ideal body weight calculation method
  /// Definition: Method of calculating Standardized Uptake Value using ideal body weight. The patient size correction factor for males is 48.0 + 1.06 * (height - 152) and for females is 45.5 + 0.91 * (height - 152). Defined in Sugawara et al. Reevaluation of the Standardized Uptake Value for FDG: Variations with Body Weight and Methods for Correction.Radiology, 1999 at http://radiology.rsna.org/content/213/2/521
  value126413,

  /// Display: Pittsburgh compound B C^11^
  /// Definition: A beta-amyloid PET radiotracer that is an analog of thioflavin T
  value126500,

  /// Display: Florbetaben F^18^
  /// Definition: A beta-amyloid PET radiotracer
  value126501,

  /// Display: T807 F^18^
  /// Definition: A PHF-tau PET radiotracer
  value126502,

  /// Display: Flubatine F^18^
  /// Definition: A nicotinic α4β2 receptor (nAChR) PET radiotracer
  value126503,

  /// Display: Monoclonal Antibody (mAb) ^64^Cu
  /// Definition: A Cu 64 Monoclonal Antibody (mAb) PET Radiotracer
  value126510,

  /// Display: Monoclonal Antibody (mAb) ^89^Zr
  /// Definition: A Zr 89 Monoclonal Antibody (mAb) PET Radiotracer
  value126511,

  /// Display: Trastuzumab ^89^Zr
  /// Definition: A Zr 89 Trastuzumab PET Radiotracer
  value126512,

  /// Display: Cetuximab ^89^Zr
  /// Definition: A Zr 89 Cetuximab PET Radiotracer
  value126513,

  /// Display: J591 ^89^Zr
  /// Definition: A Zr 89 J591 PET Radiotracer
  value126514,

  /// Display: cU36 ^89^Zr
  /// Definition: A Zr 89 cU36 PET Radiotracer
  value126515,

  /// Display: Bevacizumab ^89^Zr
  /// Definition: A Zr 89 Bevacizumab PET Radiotracer
  value126516,

  /// Display: cG250-F(ab')(2) ^89^Zr
  /// Definition: A Zr 89 cG250-F(ab')(2) PET Radiotracer
  value126517,

  /// Display: R1507 ^89^Zr
  /// Definition: A Zr 89 R1507 PET Radiotracer
  value126518,

  /// Display: E4G10 ^89^Zr
  /// Definition: A Zr 89 E4G10 PET Radiotracer
  value126519,

  /// Display: Df-CD45 ^89^Zr
  /// Definition: A Zr 89 Df-CD45 PET Radiotracer
  value126520,

  /// Display: ^44^Scandium
  /// Definition: ^44^Scandium
  value126600,

  /// Display: ^51^Manganese
  /// Definition: ^51^Manganese
  value126601,

  /// Display: ^70^Arsenic
  /// Definition: ^70^Arsenic
  value126602,

  /// Display: ^90^Niobium
  /// Definition: ^90^Niobium
  value126603,

  /// Display: ^191m^Iridium
  /// Definition: ^191m^Iridium
  value126604,

  /// Display: ^43^Scandium
  /// Definition: ^43^Scandium
  value126605,

  /// Display: ^152^Terbium
  /// Definition: ^152^Terbium
  value126606,

  /// Display: ATSM Cu^60^
  /// Definition: A Cu 60 ATSM PET radiotracer
  value126700,

  /// Display: ATSM Cu^61^
  /// Definition: A Cu 61 ATSM PET radiotracer
  value126701,

  /// Display: ATSM Cu^62^
  /// Definition: A Cu 62 ATSM PET radiotracer
  value126702,

  /// Display: Choline C^11^
  /// Definition: A C 11 Choline PET radiotracer
  value126703,

  /// Display: Fallypride C^11^
  /// Definition: A C 11 Fallypride PET radiotracer
  value126704,

  /// Display: Fallypride F^18^
  /// Definition: An F 18 Fallypride PET radiotracer
  value126705,

  /// Display: FLB 457 C^11^
  /// Definition: A C 11 FLB 457 PET radiotracer
  value126706,

  /// Display: Fluorotriopride F^18^
  /// Definition: An F 18 Fluorotriopride PET radiotracer
  value126707,

  /// Display: Fluoromisonidazole (FMISO) F^18^
  /// Definition: An F 18 Fluoromisonidazole PET radiotracer
  value126708,

  /// Display: Glutamine C^11^
  /// Definition: A C 11 Glutamine PET radiotracer
  value126709,

  /// Display: Glutamine C^14^
  /// Definition: A C 14 Glutamine PET radiotracer
  value126710,

  /// Display: Glutamine F^18^
  /// Definition: An F 18 Glutamine PET radiotracer
  value126711,

  /// Display: Flubatine F^18^
  /// Definition: An F 18 Flubatine PET radiotracer
  value126712,

  /// Display: 2FA F^18^
  /// Definition: An F 18 2FA PET radiotracer
  value126713,

  /// Display: Nifene F^18^
  /// Definition: An F 18 Nifene PET radiotracer
  value126714,

  /// Display: CLR1404 I^124^
  /// Definition: An I 124 cancer targeted phospholipid ether PET radiotracer
  value126715,

  /// Display: CLR1404 I^131^
  /// Definition: An I 131 cancer targeted phospholipid ether PET radiotracer
  value126716,

  /// Display: IEC6127 Patient Support Continuous Angle
  /// Definition: Patient Support Continuous Angle in IEC PATIENT SUPPORT Coordinate System [IEC 61217]
  value126801,

  /// Display: IEC6127 Table Top Continuous Pitch Angle
  /// Definition: Table Top Continuous Pitch Angle in the direction of the IEC TABLE TOP Coordinate System [IEC 61217]
  value126802,

  /// Display: IEC6127 Table Top Continuous Roll Angle
  /// Definition: Table Top Continuous Roll Angle in the direction of the IEC TABLE TOP Coordinate System [IEC 61217]
  value126803,

  /// Display: IEC6127 Table Top Eccentric Axis Distance
  /// Definition: Table Top Eccentric Axis Distance [IEC 61217]
  value126804,

  /// Display: IEC6127 Table Top Continuous Eccentric Angle
  /// Definition: Table Top Continuous Eccentric Angle in the direction of the IEC TABLE TOP ECCENTRIC Coordinate System [IEC 61217]
  value126805,

  /// Display: IEC6127 Table Top Lateral Position
  /// Definition: Table Top Lateral Position IEC TABLE TOP Coordinate System [IEC 61217]
  value126806,

  /// Display: IEC6127 Table Top Longitudinal Position
  /// Definition: Table Top Longitudinal Position IEC TABLE TOP Coordinate System [IEC 61217]
  value126807,

  /// Display: IEC6127 Table Top Vertical Position
  /// Definition: Table Top Vertical Position in IEC TABLE TOP Coordinate System [IEC 61217]
  value126808,

  /// Display: IEC6127 Gantry Continuous Roll Angle
  /// Definition: Gantry Continuous Roll Angle in degrees of the radiation source, i.e., the rotation about the Y-axis of the IEC GANTRY coordinate system [IEC 61217]
  value126809,

  /// Display: IEC6127 Gantry Continuous Pitch Angle
  /// Definition: Gantry Pitch Continuous Angle in degrees of the radiation source, i.e., the rotation about the X-axis of the IEC GANTRY coordinate system [IEC 61217]
  value126810,

  /// Display: IEC6127 Gantry Continuous Yaw Angle
  /// Definition: Gantry Yaw Continuous Angle in degrees of the radiation source, i.e., about the Z-axis of the IEC GANTRY coordinate system [IEC 61217]
  value126811,

  /// Display: read
  /// Definition: Read the current state of the resource.
  read,

  /// Display: vread
  /// Definition: Read the state of a specific version of the resource.
  vread,

  /// Display: update
  /// Definition: Update an existing resource by its id (or create it if it is new).
  update,

  /// Display: patch
  /// Definition: Update an existing resource by posting a set of changes to it.
  patch,

  /// Display: delete
  /// Definition: Delete a resource.
  delete,

  /// Display: history
  /// Definition: Retrieve the change history for a particular resource, type of resource, or the entire system.
  history,

  /// Display: history-instance
  /// Definition: Retrieve the change history for a particular resource.
  history_instance,

  /// Display: history-type
  /// Definition: Retrieve the change history for all resources of a particular type.
  history_type,

  /// Display: history-system
  /// Definition: Retrieve the change history for all resources on a system.
  history_system,

  /// Display: create
  /// Definition: Create a new resource with a server assigned id.
  create,

  /// Display: search
  /// Definition: Search a resource type or all resources based on some filter criteria.
  search,

  /// Display: search-type
  /// Definition: Search all resources of the specified type based on some filter criteria.
  search_type,

  /// Display: search-system
  /// Definition: Search all resources based on some filter criteria.
  search_system,

  /// Display: capabilities
  /// Definition: Get a Capability Statement for the system.
  capabilities,

  /// Display: transaction
  /// Definition: Update, create or delete a set of resources as a single transaction.
  transaction,

  /// Display: batch
  /// Definition: perform a set of a separate interactions in a single http operation
  batch,

  /// Display: operation
  /// Definition: Perform an operation as defined by an OperationDefinition.
  operation,
  ;

  @override
  String toString() {
    switch (this) {
      case ARCHIVE:
        return 'ARCHIVE';
      case AR:
        return 'AR';
      case AS:
        return 'AS';
      case AU:
        return 'AU';
      case BDUS:
        return 'BDUS';
      case BI:
        return 'BI';
      case BMD:
        return 'BMD';
      case CAD:
        return 'CAD';
      case CAPTURE:
        return 'CAPTURE';
      case CD:
        return 'CD';
      case CF:
        return 'CF';
      case COMP:
        return 'COMP';
      case CP:
        return 'CP';
      case CR:
        return 'CR';
      case CS:
        return 'CS';
      case CT:
        return 'CT';
      case DD:
        return 'DD';
      case DF:
        return 'DF';
      case DG:
        return 'DG';
      case DM:
        return 'DM';
      case DOCD:
        return 'DOCD';
      case DS:
        return 'DS';
      case DSS:
        return 'DSS';
      case DX:
        return 'DX';
      case EC:
        return 'EC';
      case ECG:
        return 'ECG';
      case EPS:
        return 'EPS';
      case ES:
        return 'ES';
      case F:
        return 'F';
      case FA:
        return 'FA';
      case FC:
        return 'FC';
      case FILMD:
        return 'FILMD';
      case FP:
        return 'FP';
      case FS:
        return 'FS';
      case GM:
        return 'GM';
      case H:
        return 'H';
      case HC:
        return 'HC';
      case HD:
        return 'HD';
      case IO:
        return 'IO';
      case IVOCT:
        return 'IVOCT';
      case IVUS:
        return 'IVUS';
      case KER:
        return 'KER';
      case KO:
        return 'KO';
      case LEN:
        return 'LEN';
      case LOG:
        return 'LOG';
      case LP:
        return 'LP';
      case LS:
        return 'LS';
      case M:
        return 'M';
      case MA:
        return 'MA';
      case MC:
        return 'MC';
      case MCD:
        return 'MCD';
      case MEDIM:
        return 'MEDIM';
      case MG:
        return 'MG';
      case MP:
        return 'MP';
      case MR:
        return 'MR';
      case MS:
        return 'MS';
      case NEARLINE:
        return 'NEARLINE';
      case NM:
        return 'NM';
      case OAM:
        return 'OAM';
      case OCT:
        return 'OCT';
      case OFFLINE:
        return 'OFFLINE';
      case ONLINE:
        return 'ONLINE';
      case OP:
        return 'OP';
      case OPM:
        return 'OPM';
      case OPR:
        return 'OPR';
      case OPT:
        return 'OPT';
      case OPV:
        return 'OPV';
      case OSS:
        return 'OSS';
      case OT:
        return 'OT';
      case PR:
        return 'PR';
      case PRINT:
        return 'PRINT';
      case PT:
        return 'PT';
      case PX:
        return 'PX';
      case REG:
        return 'REG';
      case RF:
        return 'RF';
      case RG:
        return 'RG';
      case RT:
        return 'RT';
      case RTDOSE:
        return 'RTDOSE';
      case RTIMAGE:
        return 'RTIMAGE';
      case RTPLAN:
        return 'RTPLAN';
      case RTRECORD:
        return 'RTRECORD';
      case RTSTRUCT:
        return 'RTSTRUCT';
      case SEG:
        return 'SEG';
      case SM:
        return 'SM';
      case SMR:
        return 'SMR';
      case SR:
        return 'SR';
      case SRF:
        return 'SRF';
      case ST:
        return 'ST';
      case TG:
        return 'TG';
      case U:
        return 'U';
      case UNAVAILABLE:
        return 'UNAVAILABLE';
      case US:
        return 'US';
      case VA:
        return 'VA';
      case VF:
        return 'VF';
      case VIDD:
        return 'VIDD';
      case WSD:
        return 'WSD';
      case XA:
        return 'XA';
      case XC:
        return 'XC';
      case value109001:
        return '109001';
      case value109002:
        return '109002';
      case value109003:
        return '109003';
      case value109004:
        return '109004';
      case value109005:
        return '109005';
      case value109006:
        return '109006';
      case value109007:
        return '109007';
      case value109008:
        return '109008';
      case value109009:
        return '109009';
      case value109010:
        return '109010';
      case value109011:
        return '109011';
      case value109012:
        return '109012';
      case value109013:
        return '109013';
      case value109014:
        return '109014';
      case value109015:
        return '109015';
      case value109016:
        return '109016';
      case value109017:
        return '109017';
      case value109018:
        return '109018';
      case value109019:
        return '109019';
      case value109020:
        return '109020';
      case value109021:
        return '109021';
      case value109022:
        return '109022';
      case value109023:
        return '109023';
      case value109024:
        return '109024';
      case value109025:
        return '109025';
      case value109026:
        return '109026';
      case value109027:
        return '109027';
      case value109028:
        return '109028';
      case value109029:
        return '109029';
      case value109030:
        return '109030';
      case value109031:
        return '109031';
      case value109032:
        return '109032';
      case value109033:
        return '109033';
      case value109034:
        return '109034';
      case value109035:
        return '109035';
      case value109036:
        return '109036';
      case value109037:
        return '109037';
      case value109038:
        return '109038';
      case value109039:
        return '109039';
      case value109040:
        return '109040';
      case value109041:
        return '109041';
      case value109042:
        return '109042';
      case value109043:
        return '109043';
      case value109044:
        return '109044';
      case value109045:
        return '109045';
      case value109046:
        return '109046';
      case value109047:
        return '109047';
      case value109048:
        return '109048';
      case value109049:
        return '109049';
      case value109050:
        return '109050';
      case value109051:
        return '109051';
      case value109052:
        return '109052';
      case value109053:
        return '109053';
      case value109054:
        return '109054';
      case value109055:
        return '109055';
      case value109056:
        return '109056';
      case value109057:
        return '109057';
      case value109058:
        return '109058';
      case value109059:
        return '109059';
      case value109060:
        return '109060';
      case value109061:
        return '109061';
      case value109063:
        return '109063';
      case value109070:
        return '109070';
      case value109071:
        return '109071';
      case value109072:
        return '109072';
      case value109073:
        return '109073';
      case value109080:
        return '109080';
      case value109081:
        return '109081';
      case value109082:
        return '109082';
      case value109083:
        return '109083';
      case value109091:
        return '109091';
      case value109092:
        return '109092';
      case value109093:
        return '109093';
      case value109094:
        return '109094';
      case value109095:
        return '109095';
      case value109096:
        return '109096';
      case value109101:
        return '109101';
      case value109102:
        return '109102';
      case value109103:
        return '109103';
      case value109104:
        return '109104';
      case value109105:
        return '109105';
      case value109106:
        return '109106';
      case value109110:
        return '109110';
      case value109111:
        return '109111';
      case value109112:
        return '109112';
      case value109113:
        return '109113';
      case value109114:
        return '109114';
      case value109115:
        return '109115';
      case value109116:
        return '109116';
      case value109117:
        return '109117';
      case value109120:
        return '109120';
      case value109121:
        return '109121';
      case value109122:
        return '109122';
      case value109123:
        return '109123';
      case value109124:
        return '109124';
      case value109125:
        return '109125';
      case value109132:
        return '109132';
      case value109133:
        return '109133';
      case value109134:
        return '109134';
      case value109135:
        return '109135';
      case value109136:
        return '109136';
      case value109200:
        return '109200';
      case value109201:
        return '109201';
      case value109202:
        return '109202';
      case value109203:
        return '109203';
      case value109204:
        return '109204';
      case value109205:
        return '109205';
      case value109206:
        return '109206';
      case value109207:
        return '109207';
      case value109208:
        return '109208';
      case value109209:
        return '109209';
      case value109210:
        return '109210';
      case value109211:
        return '109211';
      case value109212:
        return '109212';
      case value109213:
        return '109213';
      case value109214:
        return '109214';
      case value109215:
        return '109215';
      case value109216:
        return '109216';
      case value109217:
        return '109217';
      case value109218:
        return '109218';
      case value109219:
        return '109219';
      case value109220:
        return '109220';
      case value109221:
        return '109221';
      case value109222:
        return '109222';
      case value109701:
        return '109701';
      case value109702:
        return '109702';
      case value109703:
        return '109703';
      case value109704:
        return '109704';
      case value109705:
        return '109705';
      case value109706:
        return '109706';
      case value109707:
        return '109707';
      case value109708:
        return '109708';
      case value109709:
        return '109709';
      case value109710:
        return '109710';
      case value109801:
        return '109801';
      case value109802:
        return '109802';
      case value109803:
        return '109803';
      case value109804:
        return '109804';
      case value109805:
        return '109805';
      case value109806:
        return '109806';
      case value109807:
        return '109807';
      case value109808:
        return '109808';
      case value109809:
        return '109809';
      case value109810:
        return '109810';
      case value109811:
        return '109811';
      case value109812:
        return '109812';
      case value109813:
        return '109813';
      case value109814:
        return '109814';
      case value109815:
        return '109815';
      case value109816:
        return '109816';
      case value109817:
        return '109817';
      case value109818:
        return '109818';
      case value109819:
        return '109819';
      case value109820:
        return '109820';
      case value109821:
        return '109821';
      case value109822:
        return '109822';
      case value109823:
        return '109823';
      case value109824:
        return '109824';
      case value109825:
        return '109825';
      case value109826:
        return '109826';
      case value109827:
        return '109827';
      case value109828:
        return '109828';
      case value109829:
        return '109829';
      case value109830:
        return '109830';
      case value109831:
        return '109831';
      case value109832:
        return '109832';
      case value109833:
        return '109833';
      case value109834:
        return '109834';
      case value109835:
        return '109835';
      case value109836:
        return '109836';
      case value109837:
        return '109837';
      case value109838:
        return '109838';
      case value109839:
        return '109839';
      case value109840:
        return '109840';
      case value109841:
        return '109841';
      case value109842:
        return '109842';
      case value109843:
        return '109843';
      case value109844:
        return '109844';
      case value109845:
        return '109845';
      case value109846:
        return '109846';
      case value109847:
        return '109847';
      case value109848:
        return '109848';
      case value109849:
        return '109849';
      case value109850:
        return '109850';
      case value109851:
        return '109851';
      case value109852:
        return '109852';
      case value109853:
        return '109853';
      case value109854:
        return '109854';
      case value109855:
        return '109855';
      case value109856:
        return '109856';
      case value109857:
        return '109857';
      case value109858:
        return '109858';
      case value109859:
        return '109859';
      case value109860:
        return '109860';
      case value109861:
        return '109861';
      case value109862:
        return '109862';
      case value109863:
        return '109863';
      case value109864:
        return '109864';
      case value109865:
        return '109865';
      case value109866:
        return '109866';
      case value109867:
        return '109867';
      case value109868:
        return '109868';
      case value109869:
        return '109869';
      case value109870:
        return '109870';
      case value109871:
        return '109871';
      case value109872:
        return '109872';
      case value109873:
        return '109873';
      case value109874:
        return '109874';
      case value109875:
        return '109875';
      case value109876:
        return '109876';
      case value109877:
        return '109877';
      case value109878:
        return '109878';
      case value109879:
        return '109879';
      case value109880:
        return '109880';
      case value109881:
        return '109881';
      case value109901:
        return '109901';
      case value109902:
        return '109902';
      case value109903:
        return '109903';
      case value109904:
        return '109904';
      case value109905:
        return '109905';
      case value109906:
        return '109906';
      case value109907:
        return '109907';
      case value109908:
        return '109908';
      case value109909:
        return '109909';
      case value109910:
        return '109910';
      case value109911:
        return '109911';
      case value109912:
        return '109912';
      case value109913:
        return '109913';
      case value109914:
        return '109914';
      case value109915:
        return '109915';
      case value109916:
        return '109916';
      case value109917:
        return '109917';
      case value109918:
        return '109918';
      case value109919:
        return '109919';
      case value109920:
        return '109920';
      case value109921:
        return '109921';
      case value109931:
        return '109931';
      case value109932:
        return '109932';
      case value109933:
        return '109933';
      case value109941:
        return '109941';
      case value109943:
        return '109943';
      case value109991:
        return '109991';
      case value109992:
        return '109992';
      case value109993:
        return '109993';
      case value109994:
        return '109994';
      case value109995:
        return '109995';
      case value109996:
        return '109996';
      case value109997:
        return '109997';
      case value109998:
        return '109998';
      case value109999:
        return '109999';
      case value110001:
        return '110001';
      case value110002:
        return '110002';
      case value110003:
        return '110003';
      case value110004:
        return '110004';
      case value110005:
        return '110005';
      case value110006:
        return '110006';
      case value110007:
        return '110007';
      case value110008:
        return '110008';
      case value110009:
        return '110009';
      case value110010:
        return '110010';
      case value110011:
        return '110011';
      case value110012:
        return '110012';
      case value110013:
        return '110013';
      case value110020:
        return '110020';
      case value110021:
        return '110021';
      case value110022:
        return '110022';
      case value110023:
        return '110023';
      case value110024:
        return '110024';
      case value110025:
        return '110025';
      case value110026:
        return '110026';
      case value110027:
        return '110027';
      case value110028:
        return '110028';
      case value110030:
        return '110030';
      case value110031:
        return '110031';
      case value110032:
        return '110032';
      case value110033:
        return '110033';
      case value110034:
        return '110034';
      case value110035:
        return '110035';
      case value110036:
        return '110036';
      case value110037:
        return '110037';
      case value110038:
        return '110038';
      case value110100:
        return '110100';
      case value110101:
        return '110101';
      case value110102:
        return '110102';
      case value110103:
        return '110103';
      case value110104:
        return '110104';
      case value110105:
        return '110105';
      case value110106:
        return '110106';
      case value110107:
        return '110107';
      case value110108:
        return '110108';
      case value110109:
        return '110109';
      case value110110:
        return '110110';
      case value110111:
        return '110111';
      case value110112:
        return '110112';
      case value110113:
        return '110113';
      case value110114:
        return '110114';
      case value110120:
        return '110120';
      case value110121:
        return '110121';
      case value110122:
        return '110122';
      case value110123:
        return '110123';
      case value110124:
        return '110124';
      case value110125:
        return '110125';
      case value110126:
        return '110126';
      case value110127:
        return '110127';
      case value110128:
        return '110128';
      case value110129:
        return '110129';
      case value110130:
        return '110130';
      case value110131:
        return '110131';
      case value110132:
        return '110132';
      case value110133:
        return '110133';
      case value110134:
        return '110134';
      case value110135:
        return '110135';
      case value110136:
        return '110136';
      case value110137:
        return '110137';
      case value110138:
        return '110138';
      case value110139:
        return '110139';
      case value110140:
        return '110140';
      case value110141:
        return '110141';
      case value110142:
        return '110142';
      case value110150:
        return '110150';
      case value110151:
        return '110151';
      case value110152:
        return '110152';
      case value110153:
        return '110153';
      case value110154:
        return '110154';
      case value110155:
        return '110155';
      case value110180:
        return '110180';
      case value110181:
        return '110181';
      case value110182:
        return '110182';
      case value110190:
        return '110190';
      case value110500:
        return '110500';
      case value110501:
        return '110501';
      case value110502:
        return '110502';
      case value110503:
        return '110503';
      case value110504:
        return '110504';
      case value110505:
        return '110505';
      case value110506:
        return '110506';
      case value110507:
        return '110507';
      case value110508:
        return '110508';
      case value110509:
        return '110509';
      case value110510:
        return '110510';
      case value110511:
        return '110511';
      case value110512:
        return '110512';
      case value110513:
        return '110513';
      case value110514:
        return '110514';
      case value110515:
        return '110515';
      case value110516:
        return '110516';
      case value110518:
        return '110518';
      case value110519:
        return '110519';
      case value110521:
        return '110521';
      case value110522:
        return '110522';
      case value110523:
        return '110523';
      case value110524:
        return '110524';
      case value110526:
        return '110526';
      case value110527:
        return '110527';
      case value110528:
        return '110528';
      case value110529:
        return '110529';
      case value110700:
        return '110700';
      case value110701:
        return '110701';
      case value110702:
        return '110702';
      case value110703:
        return '110703';
      case value110704:
        return '110704';
      case value110705:
        return '110705';
      case value110706:
        return '110706';
      case value110800:
        return '110800';
      case value110801:
        return '110801';
      case value110802:
        return '110802';
      case value110803:
        return '110803';
      case value110804:
        return '110804';
      case value110805:
        return '110805';
      case value110806:
        return '110806';
      case value110807:
        return '110807';
      case value110808:
        return '110808';
      case value110809:
        return '110809';
      case value110810:
        return '110810';
      case value110811:
        return '110811';
      case value110812:
        return '110812';
      case value110813:
        return '110813';
      case value110814:
        return '110814';
      case value110815:
        return '110815';
      case value110816:
        return '110816';
      case value110817:
        return '110817';
      case value110818:
        return '110818';
      case value110819:
        return '110819';
      case value110820:
        return '110820';
      case value110821:
        return '110821';
      case value110822:
        return '110822';
      case value110823:
        return '110823';
      case value110824:
        return '110824';
      case value110825:
        return '110825';
      case value110826:
        return '110826';
      case value110827:
        return '110827';
      case value110828:
        return '110828';
      case value110829:
        return '110829';
      case value110830:
        return '110830';
      case value110831:
        return '110831';
      case value110832:
        return '110832';
      case value110833:
        return '110833';
      case value110834:
        return '110834';
      case value110835:
        return '110835';
      case value110836:
        return '110836';
      case value110837:
        return '110837';
      case value110838:
        return '110838';
      case value110839:
        return '110839';
      case value110840:
        return '110840';
      case value110841:
        return '110841';
      case value110842:
        return '110842';
      case value110843:
        return '110843';
      case value110844:
        return '110844';
      case value110845:
        return '110845';
      case value110846:
        return '110846';
      case value110847:
        return '110847';
      case value110848:
        return '110848';
      case value110849:
        return '110849';
      case value110850:
        return '110850';
      case value110851:
        return '110851';
      case value110852:
        return '110852';
      case value110853:
        return '110853';
      case value110854:
        return '110854';
      case value110855:
        return '110855';
      case value110856:
        return '110856';
      case value110857:
        return '110857';
      case value110858:
        return '110858';
      case value110859:
        return '110859';
      case value110860:
        return '110860';
      case value110861:
        return '110861';
      case value110862:
        return '110862';
      case value110863:
        return '110863';
      case value110864:
        return '110864';
      case value110865:
        return '110865';
      case value110866:
        return '110866';
      case value110867:
        return '110867';
      case value110868:
        return '110868';
      case value110869:
        return '110869';
      case value110870:
        return '110870';
      case value110871:
        return '110871';
      case value110872:
        return '110872';
      case value110873:
        return '110873';
      case value110874:
        return '110874';
      case value110875:
        return '110875';
      case value110876:
        return '110876';
      case value110877:
        return '110877';
      case value110901:
        return '110901';
      case value110902:
        return '110902';
      case value110903:
        return '110903';
      case value110904:
        return '110904';
      case value110905:
        return '110905';
      case value110906:
        return '110906';
      case value110907:
        return '110907';
      case value110908:
        return '110908';
      case value110909:
        return '110909';
      case value110910:
        return '110910';
      case value110911:
        return '110911';
      case value111001:
        return '111001';
      case value111002:
        return '111002';
      case value111003:
        return '111003';
      case value111004:
        return '111004';
      case value111005:
        return '111005';
      case value111006:
        return '111006';
      case value111007:
        return '111007';
      case value111008:
        return '111008';
      case value111009:
        return '111009';
      case value111010:
        return '111010';
      case value111011:
        return '111011';
      case value111012:
        return '111012';
      case value111013:
        return '111013';
      case value111014:
        return '111014';
      case value111015:
        return '111015';
      case value111016:
        return '111016';
      case value111017:
        return '111017';
      case value111018:
        return '111018';
      case value111019:
        return '111019';
      case value111020:
        return '111020';
      case value111021:
        return '111021';
      case value111022:
        return '111022';
      case value111023:
        return '111023';
      case value111024:
        return '111024';
      case value111025:
        return '111025';
      case value111026:
        return '111026';
      case value111027:
        return '111027';
      case value111028:
        return '111028';
      case value111029:
        return '111029';
      case value111030:
        return '111030';
      case value111031:
        return '111031';
      case value111032:
        return '111032';
      case value111033:
        return '111033';
      case value111034:
        return '111034';
      case value111035:
        return '111035';
      case value111036:
        return '111036';
      case value111037:
        return '111037';
      case value111038:
        return '111038';
      case value111039:
        return '111039';
      case value111040:
        return '111040';
      case value111041:
        return '111041';
      case value111042:
        return '111042';
      case value111043:
        return '111043';
      case value111044:
        return '111044';
      case value111045:
        return '111045';
      case value111046:
        return '111046';
      case value111047:
        return '111047';
      case value111048:
        return '111048';
      case value111049:
        return '111049';
      case value111050:
        return '111050';
      case value111051:
        return '111051';
      case value111052:
        return '111052';
      case value111053:
        return '111053';
      case value111054:
        return '111054';
      case value111055:
        return '111055';
      case value111056:
        return '111056';
      case value111057:
        return '111057';
      case value111058:
        return '111058';
      case value111059:
        return '111059';
      case value111060:
        return '111060';
      case value111061:
        return '111061';
      case value111062:
        return '111062';
      case value111063:
        return '111063';
      case value111064:
        return '111064';
      case value111065:
        return '111065';
      case value111066:
        return '111066';
      case value111069:
        return '111069';
      case value111071:
        return '111071';
      case value111072:
        return '111072';
      case value111081:
        return '111081';
      case value111086:
        return '111086';
      case value111087:
        return '111087';
      case value111088:
        return '111088';
      case value111089:
        return '111089';
      case value111090:
        return '111090';
      case value111091:
        return '111091';
      case value111092:
        return '111092';
      case value111093:
        return '111093';
      case value111099:
        return '111099';
      case value111100:
        return '111100';
      case value111101:
        return '111101';
      case value111102:
        return '111102';
      case value111103:
        return '111103';
      case value111104:
        return '111104';
      case value111105:
        return '111105';
      case value111111:
        return '111111';
      case value111112:
        return '111112';
      case value111113:
        return '111113';
      case value111120:
        return '111120';
      case value111121:
        return '111121';
      case value111122:
        return '111122';
      case value111123:
        return '111123';
      case value111124:
        return '111124';
      case value111125:
        return '111125';
      case value111126:
        return '111126';
      case value111127:
        return '111127';
      case value111128:
        return '111128';
      case value111129:
        return '111129';
      case value111130:
        return '111130';
      case value111135:
        return '111135';
      case value111136:
        return '111136';
      case value111137:
        return '111137';
      case value111138:
        return '111138';
      case value111139:
        return '111139';
      case value111140:
        return '111140';
      case value111141:
        return '111141';
      case value111142:
        return '111142';
      case value111143:
        return '111143';
      case value111144:
        return '111144';
      case value111145:
        return '111145';
      case value111146:
        return '111146';
      case value111147:
        return '111147';
      case value111148:
        return '111148';
      case value111149:
        return '111149';
      case value111150:
        return '111150';
      case value111151:
        return '111151';
      case value111152:
        return '111152';
      case value111153:
        return '111153';
      case value111154:
        return '111154';
      case value111155:
        return '111155';
      case value111156:
        return '111156';
      case value111157:
        return '111157';
      case value111158:
        return '111158';
      case value111159:
        return '111159';
      case value111168:
        return '111168';
      case value111170:
        return '111170';
      case value111171:
        return '111171';
      case value111172:
        return '111172';
      case value111173:
        return '111173';
      case value111174:
        return '111174';
      case value111175:
        return '111175';
      case value111176:
        return '111176';
      case value111177:
        return '111177';
      case value111178:
        return '111178';
      case value111179:
        return '111179';
      case value111180:
        return '111180';
      case value111181:
        return '111181';
      case value111182:
        return '111182';
      case value111183:
        return '111183';
      case value111184:
        return '111184';
      case value111185:
        return '111185';
      case value111186:
        return '111186';
      case value111187:
        return '111187';
      case value111188:
        return '111188';
      case value111189:
        return '111189';
      case value111190:
        return '111190';
      case value111191:
        return '111191';
      case value111192:
        return '111192';
      case value111193:
        return '111193';
      case value111194:
        return '111194';
      case value111195:
        return '111195';
      case value111196:
        return '111196';
      case value111197:
        return '111197';
      case value111198:
        return '111198';
      case value111199:
        return '111199';
      case value111200:
        return '111200';
      case value111201:
        return '111201';
      case value111202:
        return '111202';
      case value111203:
        return '111203';
      case value111204:
        return '111204';
      case value111205:
        return '111205';
      case value111206:
        return '111206';
      case value111207:
        return '111207';
      case value111208:
        return '111208';
      case value111209:
        return '111209';
      case value111210:
        return '111210';
      case value111211:
        return '111211';
      case value111212:
        return '111212';
      case value111213:
        return '111213';
      case value111214:
        return '111214';
      case value111215:
        return '111215';
      case value111216:
        return '111216';
      case value111217:
        return '111217';
      case value111218:
        return '111218';
      case value111219:
        return '111219';
      case value111220:
        return '111220';
      case value111221:
        return '111221';
      case value111222:
        return '111222';
      case value111223:
        return '111223';
      case value111224:
        return '111224';
      case value111225:
        return '111225';
      case value111233:
        return '111233';
      case value111234:
        return '111234';
      case value111235:
        return '111235';
      case value111236:
        return '111236';
      case value111237:
        return '111237';
      case value111238:
        return '111238';
      case value111239:
        return '111239';
      case value111240:
        return '111240';
      case value111241:
        return '111241';
      case value111242:
        return '111242';
      case value111243:
        return '111243';
      case value111244:
        return '111244';
      case value111245:
        return '111245';
      case value111248:
        return '111248';
      case value111249:
        return '111249';
      case value111250:
        return '111250';
      case value111251:
        return '111251';
      case value111252:
        return '111252';
      case value111253:
        return '111253';
      case value111254:
        return '111254';
      case value111255:
        return '111255';
      case value111256:
        return '111256';
      case value111257:
        return '111257';
      case value111258:
        return '111258';
      case value111259:
        return '111259';
      case value111260:
        return '111260';
      case value111262:
        return '111262';
      case value111263:
        return '111263';
      case value111264:
        return '111264';
      case value111265:
        return '111265';
      case value111269:
        return '111269';
      case value111271:
        return '111271';
      case value111273:
        return '111273';
      case value111277:
        return '111277';
      case value111278:
        return '111278';
      case value111279:
        return '111279';
      case value111281:
        return '111281';
      case value111283:
        return '111283';
      case value111284:
        return '111284';
      case value111285:
        return '111285';
      case value111286:
        return '111286';
      case value111287:
        return '111287';
      case value111288:
        return '111288';
      case value111290:
        return '111290';
      case value111291:
        return '111291';
      case value111292:
        return '111292';
      case value111293:
        return '111293';
      case value111294:
        return '111294';
      case value111296:
        return '111296';
      case value111297:
        return '111297';
      case value111298:
        return '111298';
      case value111299:
        return '111299';
      case value111300:
        return '111300';
      case value111301:
        return '111301';
      case value111302:
        return '111302';
      case value111303:
        return '111303';
      case value111304:
        return '111304';
      case value111305:
        return '111305';
      case value111306:
        return '111306';
      case value111307:
        return '111307';
      case value111308:
        return '111308';
      case value111309:
        return '111309';
      case value111310:
        return '111310';
      case value111311:
        return '111311';
      case value111312:
        return '111312';
      case value111313:
        return '111313';
      case value111314:
        return '111314';
      case value111315:
        return '111315';
      case value111316:
        return '111316';
      case value111317:
        return '111317';
      case value111318:
        return '111318';
      case value111320:
        return '111320';
      case value111321:
        return '111321';
      case value111322:
        return '111322';
      case value111323:
        return '111323';
      case value111324:
        return '111324';
      case value111325:
        return '111325';
      case value111326:
        return '111326';
      case value111327:
        return '111327';
      case value111328:
        return '111328';
      case value111329:
        return '111329';
      case value111330:
        return '111330';
      case value111331:
        return '111331';
      case value111332:
        return '111332';
      case value111333:
        return '111333';
      case value111334:
        return '111334';
      case value111335:
        return '111335';
      case value111336:
        return '111336';
      case value111338:
        return '111338';
      case value111340:
        return '111340';
      case value111341:
        return '111341';
      case value111342:
        return '111342';
      case value111343:
        return '111343';
      case value111344:
        return '111344';
      case value111345:
        return '111345';
      case value111346:
        return '111346';
      case value111347:
        return '111347';
      case value111350:
        return '111350';
      case value111351:
        return '111351';
      case value111352:
        return '111352';
      case value111353:
        return '111353';
      case value111354:
        return '111354';
      case value111355:
        return '111355';
      case value111356:
        return '111356';
      case value111357:
        return '111357';
      case value111358:
        return '111358';
      case value111359:
        return '111359';
      case value111360:
        return '111360';
      case value111361:
        return '111361';
      case value111362:
        return '111362';
      case value111363:
        return '111363';
      case value111364:
        return '111364';
      case value111365:
        return '111365';
      case value111366:
        return '111366';
      case value111367:
        return '111367';
      case value111368:
        return '111368';
      case value111369:
        return '111369';
      case value111370:
        return '111370';
      case value111371:
        return '111371';
      case value111372:
        return '111372';
      case value111373:
        return '111373';
      case value111374:
        return '111374';
      case value111375:
        return '111375';
      case value111376:
        return '111376';
      case value111377:
        return '111377';
      case value111380:
        return '111380';
      case value111381:
        return '111381';
      case value111382:
        return '111382';
      case value111383:
        return '111383';
      case value111384:
        return '111384';
      case value111385:
        return '111385';
      case value111386:
        return '111386';
      case value111387:
        return '111387';
      case value111388:
        return '111388';
      case value111389:
        return '111389';
      case value111390:
        return '111390';
      case value111391:
        return '111391';
      case value111392:
        return '111392';
      case value111393:
        return '111393';
      case value111394:
        return '111394';
      case value111395:
        return '111395';
      case value111396:
        return '111396';
      case value111397:
        return '111397';
      case value111398:
        return '111398';
      case value111399:
        return '111399';
      case value111400:
        return '111400';
      case value111401:
        return '111401';
      case value111402:
        return '111402';
      case value111403:
        return '111403';
      case value111404:
        return '111404';
      case value111405:
        return '111405';
      case value111406:
        return '111406';
      case value111407:
        return '111407';
      case value111408:
        return '111408';
      case value111409:
        return '111409';
      case value111410:
        return '111410';
      case value111411:
        return '111411';
      case value111412:
        return '111412';
      case value111413:
        return '111413';
      case value111414:
        return '111414';
      case value111415:
        return '111415';
      case value111416:
        return '111416';
      case value111417:
        return '111417';
      case value111418:
        return '111418';
      case value111419:
        return '111419';
      case value111420:
        return '111420';
      case value111421:
        return '111421';
      case value111423:
        return '111423';
      case value111424:
        return '111424';
      case value111425:
        return '111425';
      case value111426:
        return '111426';
      case value111427:
        return '111427';
      case value111428:
        return '111428';
      case value111429:
        return '111429';
      case value111430:
        return '111430';
      case value111431:
        return '111431';
      case value111432:
        return '111432';
      case value111433:
        return '111433';
      case value111434:
        return '111434';
      case value111435:
        return '111435';
      case value111436:
        return '111436';
      case value111437:
        return '111437';
      case value111438:
        return '111438';
      case value111439:
        return '111439';
      case value111440:
        return '111440';
      case value111441:
        return '111441';
      case value111442:
        return '111442';
      case value111443:
        return '111443';
      case value111444:
        return '111444';
      case value111445:
        return '111445';
      case value111446:
        return '111446';
      case value111447:
        return '111447';
      case value111448:
        return '111448';
      case value111449:
        return '111449';
      case value111450:
        return '111450';
      case value111451:
        return '111451';
      case value111452:
        return '111452';
      case value111453:
        return '111453';
      case value111454:
        return '111454';
      case value111455:
        return '111455';
      case value111456:
        return '111456';
      case value111457:
        return '111457';
      case value111458:
        return '111458';
      case value111459:
        return '111459';
      case value111460:
        return '111460';
      case value111461:
        return '111461';
      case value111462:
        return '111462';
      case value111463:
        return '111463';
      case value111464:
        return '111464';
      case value111465:
        return '111465';
      case value111466:
        return '111466';
      case value111467:
        return '111467';
      case value111468:
        return '111468';
      case value111469:
        return '111469';
      case value111470:
        return '111470';
      case value111471:
        return '111471';
      case value111472:
        return '111472';
      case value111473:
        return '111473';
      case value111474:
        return '111474';
      case value111475:
        return '111475';
      case value111476:
        return '111476';
      case value111477:
        return '111477';
      case value111478:
        return '111478';
      case value111479:
        return '111479';
      case value111480:
        return '111480';
      case value111481:
        return '111481';
      case value111482:
        return '111482';
      case value111483:
        return '111483';
      case value111484:
        return '111484';
      case value111485:
        return '111485';
      case value111486:
        return '111486';
      case value111487:
        return '111487';
      case value111488:
        return '111488';
      case value111489:
        return '111489';
      case value111490:
        return '111490';
      case value111491:
        return '111491';
      case value111492:
        return '111492';
      case value111494:
        return '111494';
      case value111495:
        return '111495';
      case value111496:
        return '111496';
      case value111497:
        return '111497';
      case value111498:
        return '111498';
      case value111499:
        return '111499';
      case value111500:
        return '111500';
      case value111501:
        return '111501';
      case value111502:
        return '111502';
      case value111503:
        return '111503';
      case value111504:
        return '111504';
      case value111505:
        return '111505';
      case value111506:
        return '111506';
      case value111507:
        return '111507';
      case value111508:
        return '111508';
      case value111509:
        return '111509';
      case value111510:
        return '111510';
      case value111511:
        return '111511';
      case value111512:
        return '111512';
      case value111513:
        return '111513';
      case value111514:
        return '111514';
      case value111515:
        return '111515';
      case value111516:
        return '111516';
      case value111517:
        return '111517';
      case value111518:
        return '111518';
      case value111519:
        return '111519';
      case value111520:
        return '111520';
      case value111521:
        return '111521';
      case value111522:
        return '111522';
      case value111523:
        return '111523';
      case value111524:
        return '111524';
      case value111525:
        return '111525';
      case value111526:
        return '111526';
      case value111527:
        return '111527';
      case value111528:
        return '111528';
      case value111529:
        return '111529';
      case value111530:
        return '111530';
      case value111531:
        return '111531';
      case value111532:
        return '111532';
      case value111533:
        return '111533';
      case value111534:
        return '111534';
      case value111535:
        return '111535';
      case value111536:
        return '111536';
      case value111537:
        return '111537';
      case value111538:
        return '111538';
      case value111539:
        return '111539';
      case value111540:
        return '111540';
      case value111541:
        return '111541';
      case value111542:
        return '111542';
      case value111543:
        return '111543';
      case value111544:
        return '111544';
      case value111545:
        return '111545';
      case value111546:
        return '111546';
      case value111547:
        return '111547';
      case value111548:
        return '111548';
      case value111549:
        return '111549';
      case value111550:
        return '111550';
      case value111551:
        return '111551';
      case value111552:
        return '111552';
      case value111553:
        return '111553';
      case value111554:
        return '111554';
      case value111555:
        return '111555';
      case value111556:
        return '111556';
      case value111557:
        return '111557';
      case value111558:
        return '111558';
      case value111559:
        return '111559';
      case value111560:
        return '111560';
      case value111561:
        return '111561';
      case value111562:
        return '111562';
      case value111563:
        return '111563';
      case value111564:
        return '111564';
      case value111565:
        return '111565';
      case value111566:
        return '111566';
      case value111567:
        return '111567';
      case value111568:
        return '111568';
      case value111569:
        return '111569';
      case value111570:
        return '111570';
      case value111571:
        return '111571';
      case value111572:
        return '111572';
      case value111573:
        return '111573';
      case value111574:
        return '111574';
      case value111575:
        return '111575';
      case value111576:
        return '111576';
      case value111577:
        return '111577';
      case value111578:
        return '111578';
      case value111579:
        return '111579';
      case value111580:
        return '111580';
      case value111581:
        return '111581';
      case value111582:
        return '111582';
      case value111583:
        return '111583';
      case value111584:
        return '111584';
      case value111585:
        return '111585';
      case value111586:
        return '111586';
      case value111587:
        return '111587';
      case value111590:
        return '111590';
      case value111591:
        return '111591';
      case value111592:
        return '111592';
      case value111593:
        return '111593';
      case value111601:
        return '111601';
      case value111602:
        return '111602';
      case value111603:
        return '111603';
      case value111604:
        return '111604';
      case value111605:
        return '111605';
      case value111606:
        return '111606';
      case value111607:
        return '111607';
      case value111609:
        return '111609';
      case value111621:
        return '111621';
      case value111622:
        return '111622';
      case value111623:
        return '111623';
      case value111625:
        return '111625';
      case value111626:
        return '111626';
      case value111627:
        return '111627';
      case value111628:
        return '111628';
      case value111629:
        return '111629';
      case value111630:
        return '111630';
      case value111631:
        return '111631';
      case value111632:
        return '111632';
      case value111633:
        return '111633';
      case value111634:
        return '111634';
      case value111635:
        return '111635';
      case value111636:
        return '111636';
      case value111637:
        return '111637';
      case value111638:
        return '111638';
      case value111641:
        return '111641';
      case value111642:
        return '111642';
      case value111643:
        return '111643';
      case value111644:
        return '111644';
      case value111645:
        return '111645';
      case value111646:
        return '111646';
      case value111671:
        return '111671';
      case value111672:
        return '111672';
      case value111673:
        return '111673';
      case value111674:
        return '111674';
      case value111675:
        return '111675';
      case value111676:
        return '111676';
      case value111677:
        return '111677';
      case value111678:
        return '111678';
      case value111679:
        return '111679';
      case value111680:
        return '111680';
      case value111685:
        return '111685';
      case value111686:
        return '111686';
      case value111687:
        return '111687';
      case value111688:
        return '111688';
      case value111689:
        return '111689';
      case value111690:
        return '111690';
      case value111691:
        return '111691';
      case value111692:
        return '111692';
      case value111693:
        return '111693';
      case value111694:
        return '111694';
      case value111695:
        return '111695';
      case value111696:
        return '111696';
      case value111697:
        return '111697';
      case value111698:
        return '111698';
      case value111700:
        return '111700';
      case value111701:
        return '111701';
      case value111702:
        return '111702';
      case value111703:
        return '111703';
      case value111704:
        return '111704';
      case value111705:
        return '111705';
      case value111706:
        return '111706';
      case value111707:
        return '111707';
      case value111708:
        return '111708';
      case value111709:
        return '111709';
      case value111710:
        return '111710';
      case value111711:
        return '111711';
      case value111712:
        return '111712';
      case value111718:
        return '111718';
      case value111719:
        return '111719';
      case value111720:
        return '111720';
      case value111721:
        return '111721';
      case value111723:
        return '111723';
      case value111724:
        return '111724';
      case value111726:
        return '111726';
      case value111727:
        return '111727';
      case value111729:
        return '111729';
      case value111741:
        return '111741';
      case value111742:
        return '111742';
      case value111743:
        return '111743';
      case value111744:
        return '111744';
      case value111745:
        return '111745';
      case value111746:
        return '111746';
      case value111747:
        return '111747';
      case value111748:
        return '111748';
      case value111749:
        return '111749';
      case value111750:
        return '111750';
      case value111751:
        return '111751';
      case value111752:
        return '111752';
      case value111753:
        return '111753';
      case value111754:
        return '111754';
      case value111755:
        return '111755';
      case value111756:
        return '111756';
      case value111760:
        return '111760';
      case value111761:
        return '111761';
      case value111762:
        return '111762';
      case value111763:
        return '111763';
      case value111764:
        return '111764';
      case value111765:
        return '111765';
      case value111766:
        return '111766';
      case value111767:
        return '111767';
      case value111768:
        return '111768';
      case value111769:
        return '111769';
      case value111770:
        return '111770';
      case value111771:
        return '111771';
      case value111772:
        return '111772';
      case value111773:
        return '111773';
      case value111776:
        return '111776';
      case value111777:
        return '111777';
      case value111778:
        return '111778';
      case value111779:
        return '111779';
      case value111780:
        return '111780';
      case value111781:
        return '111781';
      case value111782:
        return '111782';
      case value111783:
        return '111783';
      case value111786:
        return '111786';
      case value111787:
        return '111787';
      case value111791:
        return '111791';
      case value111792:
        return '111792';
      case value111800:
        return '111800';
      case value111801:
        return '111801';
      case value111802:
        return '111802';
      case value111803:
        return '111803';
      case value111804:
        return '111804';
      case value111805:
        return '111805';
      case value111806:
        return '111806';
      case value111807:
        return '111807';
      case value111808:
        return '111808';
      case value111809:
        return '111809';
      case value111810:
        return '111810';
      case value111811:
        return '111811';
      case value111812:
        return '111812';
      case value111813:
        return '111813';
      case value111814:
        return '111814';
      case value111815:
        return '111815';
      case value111816:
        return '111816';
      case value111817:
        return '111817';
      case value111818:
        return '111818';
      case value111819:
        return '111819';
      case value111820:
        return '111820';
      case value111821:
        return '111821';
      case value111822:
        return '111822';
      case value111823:
        return '111823';
      case value111824:
        return '111824';
      case value111825:
        return '111825';
      case value111826:
        return '111826';
      case value111827:
        return '111827';
      case value111828:
        return '111828';
      case value111829:
        return '111829';
      case value111830:
        return '111830';
      case value111831:
        return '111831';
      case value111832:
        return '111832';
      case value111833:
        return '111833';
      case value111834:
        return '111834';
      case value111835:
        return '111835';
      case value111836:
        return '111836';
      case value111837:
        return '111837';
      case value111838:
        return '111838';
      case value111839:
        return '111839';
      case value111840:
        return '111840';
      case value111841:
        return '111841';
      case value111842:
        return '111842';
      case value111843:
        return '111843';
      case value111844:
        return '111844';
      case value111845:
        return '111845';
      case value111846:
        return '111846';
      case value111847:
        return '111847';
      case value111848:
        return '111848';
      case value111849:
        return '111849';
      case value111850:
        return '111850';
      case value111851:
        return '111851';
      case value111852:
        return '111852';
      case value111853:
        return '111853';
      case value111854:
        return '111854';
      case value111855:
        return '111855';
      case value111856:
        return '111856';
      case value111900:
        return '111900';
      case value111901:
        return '111901';
      case value111902:
        return '111902';
      case value111903:
        return '111903';
      case value111904:
        return '111904';
      case value111905:
        return '111905';
      case value111906:
        return '111906';
      case value111907:
        return '111907';
      case value111908:
        return '111908';
      case value111909:
        return '111909';
      case value111910:
        return '111910';
      case value111911:
        return '111911';
      case value111912:
        return '111912';
      case value111913:
        return '111913';
      case value111914:
        return '111914';
      case value111915:
        return '111915';
      case value111916:
        return '111916';
      case value111917:
        return '111917';
      case value111918:
        return '111918';
      case value111919:
        return '111919';
      case value111920:
        return '111920';
      case value111921:
        return '111921';
      case value111922:
        return '111922';
      case value111923:
        return '111923';
      case value111924:
        return '111924';
      case value111925:
        return '111925';
      case value111926:
        return '111926';
      case value111927:
        return '111927';
      case value111928:
        return '111928';
      case value111929:
        return '111929';
      case value111930:
        return '111930';
      case value111931:
        return '111931';
      case value111932:
        return '111932';
      case value111933:
        return '111933';
      case value111934:
        return '111934';
      case value111935:
        return '111935';
      case value111936:
        return '111936';
      case value111937:
        return '111937';
      case value111938:
        return '111938';
      case value111939:
        return '111939';
      case value111940:
        return '111940';
      case value111941:
        return '111941';
      case value111942:
        return '111942';
      case value111943:
        return '111943';
      case value111944:
        return '111944';
      case value111945:
        return '111945';
      case value111946:
        return '111946';
      case value111947:
        return '111947';
      case value112000:
        return '112000';
      case value112001:
        return '112001';
      case value112002:
        return '112002';
      case value112003:
        return '112003';
      case value112004:
        return '112004';
      case value112005:
        return '112005';
      case value112006:
        return '112006';
      case value112007:
        return '112007';
      case value112008:
        return '112008';
      case value112009:
        return '112009';
      case value112010:
        return '112010';
      case value112011:
        return '112011';
      case value112012:
        return '112012';
      case value112013:
        return '112013';
      case value112014:
        return '112014';
      case value112015:
        return '112015';
      case value112016:
        return '112016';
      case value112017:
        return '112017';
      case value112018:
        return '112018';
      case value112019:
        return '112019';
      case value112020:
        return '112020';
      case value112021:
        return '112021';
      case value112022:
        return '112022';
      case value112023:
        return '112023';
      case value112024:
        return '112024';
      case value112025:
        return '112025';
      case value112026:
        return '112026';
      case value112027:
        return '112027';
      case value112028:
        return '112028';
      case value112029:
        return '112029';
      case value112030:
        return '112030';
      case value112031:
        return '112031';
      case value112032:
        return '112032';
      case value112033:
        return '112033';
      case value112034:
        return '112034';
      case value112035:
        return '112035';
      case value112036:
        return '112036';
      case value112037:
        return '112037';
      case value112038:
        return '112038';
      case value112039:
        return '112039';
      case value112040:
        return '112040';
      case value112041:
        return '112041';
      case value112042:
        return '112042';
      case value112043:
        return '112043';
      case value112044:
        return '112044';
      case value112045:
        return '112045';
      case value112046:
        return '112046';
      case value112047:
        return '112047';
      case value112048:
        return '112048';
      case value112049:
        return '112049';
      case value112050:
        return '112050';
      case value112051:
        return '112051';
      case value112052:
        return '112052';
      case value112053:
        return '112053';
      case value112054:
        return '112054';
      case value112055:
        return '112055';
      case value112056:
        return '112056';
      case value112057:
        return '112057';
      case value112058:
        return '112058';
      case value112059:
        return '112059';
      case value112060:
        return '112060';
      case value112061:
        return '112061';
      case value112062:
        return '112062';
      case value112063:
        return '112063';
      case value112064:
        return '112064';
      case value112065:
        return '112065';
      case value112066:
        return '112066';
      case value112067:
        return '112067';
      case value112068:
        return '112068';
      case value112069:
        return '112069';
      case value112070:
        return '112070';
      case value112071:
        return '112071';
      case value112072:
        return '112072';
      case value112073:
        return '112073';
      case value112074:
        return '112074';
      case value112075:
        return '112075';
      case value112076:
        return '112076';
      case value112077:
        return '112077';
      case value112078:
        return '112078';
      case value112079:
        return '112079';
      case value112080:
        return '112080';
      case value112081:
        return '112081';
      case value112082:
        return '112082';
      case value112083:
        return '112083';
      case value112084:
        return '112084';
      case value112085:
        return '112085';
      case value112086:
        return '112086';
      case value112087:
        return '112087';
      case value112088:
        return '112088';
      case value112089:
        return '112089';
      case value112090:
        return '112090';
      case value112091:
        return '112091';
      case value112092:
        return '112092';
      case value112093:
        return '112093';
      case value112094:
        return '112094';
      case value112095:
        return '112095';
      case value112096:
        return '112096';
      case value112097:
        return '112097';
      case value112098:
        return '112098';
      case value112099:
        return '112099';
      case value112100:
        return '112100';
      case value112101:
        return '112101';
      case value112102:
        return '112102';
      case value112103:
        return '112103';
      case value112104:
        return '112104';
      case value112105:
        return '112105';
      case value112106:
        return '112106';
      case value112107:
        return '112107';
      case value112108:
        return '112108';
      case value112109:
        return '112109';
      case value112110:
        return '112110';
      case value112111:
        return '112111';
      case value112112:
        return '112112';
      case value112113:
        return '112113';
      case value112114:
        return '112114';
      case value112115:
        return '112115';
      case value112116:
        return '112116';
      case value112117:
        return '112117';
      case value112118:
        return '112118';
      case value112119:
        return '112119';
      case value112120:
        return '112120';
      case value112121:
        return '112121';
      case value112122:
        return '112122';
      case value112123:
        return '112123';
      case value112124:
        return '112124';
      case value112125:
        return '112125';
      case value112126:
        return '112126';
      case value112127:
        return '112127';
      case value112128:
        return '112128';
      case value112129:
        return '112129';
      case value112130:
        return '112130';
      case value112131:
        return '112131';
      case value112132:
        return '112132';
      case value112133:
        return '112133';
      case value112134:
        return '112134';
      case value112135:
        return '112135';
      case value112136:
        return '112136';
      case value112137:
        return '112137';
      case value112138:
        return '112138';
      case value112139:
        return '112139';
      case value112140:
        return '112140';
      case value112141:
        return '112141';
      case value112142:
        return '112142';
      case value112143:
        return '112143';
      case value112144:
        return '112144';
      case value112145:
        return '112145';
      case value112146:
        return '112146';
      case value112147:
        return '112147';
      case value112148:
        return '112148';
      case value112149:
        return '112149';
      case value112150:
        return '112150';
      case value112151:
        return '112151';
      case value112152:
        return '112152';
      case value112153:
        return '112153';
      case value112154:
        return '112154';
      case value112155:
        return '112155';
      case value112156:
        return '112156';
      case value112157:
        return '112157';
      case value112158:
        return '112158';
      case value112159:
        return '112159';
      case value112160:
        return '112160';
      case value112161:
        return '112161';
      case value112162:
        return '112162';
      case value112163:
        return '112163';
      case value112164:
        return '112164';
      case value112165:
        return '112165';
      case value112166:
        return '112166';
      case value112167:
        return '112167';
      case value112168:
        return '112168';
      case value112169:
        return '112169';
      case value112170:
        return '112170';
      case value112171:
        return '112171';
      case value112172:
        return '112172';
      case value112173:
        return '112173';
      case value112174:
        return '112174';
      case value112175:
        return '112175';
      case value112176:
        return '112176';
      case value112177:
        return '112177';
      case value112178:
        return '112178';
      case value112179:
        return '112179';
      case value112180:
        return '112180';
      case value112181:
        return '112181';
      case value112182:
        return '112182';
      case value112183:
        return '112183';
      case value112184:
        return '112184';
      case value112185:
        return '112185';
      case value112186:
        return '112186';
      case value112187:
        return '112187';
      case value112188:
        return '112188';
      case value112189:
        return '112189';
      case value112191:
        return '112191';
      case value112192:
        return '112192';
      case value112193:
        return '112193';
      case value112194:
        return '112194';
      case value112195:
        return '112195';
      case value112196:
        return '112196';
      case value112197:
        return '112197';
      case value112198:
        return '112198';
      case value112199:
        return '112199';
      case value112200:
        return '112200';
      case value112201:
        return '112201';
      case value112220:
        return '112220';
      case value112222:
        return '112222';
      case value112224:
        return '112224';
      case value112225:
        return '112225';
      case value112226:
        return '112226';
      case value112227:
        return '112227';
      case value112228:
        return '112228';
      case value112229:
        return '112229';
      case value112232:
        return '112232';
      case value112233:
        return '112233';
      case value112238:
        return '112238';
      case value112240:
        return '112240';
      case value112241:
        return '112241';
      case value112242:
        return '112242';
      case value112243:
        return '112243';
      case value112244:
        return '112244';
      case value112248:
        return '112248';
      case value112249:
        return '112249';
      case value112300:
        return '112300';
      case value112301:
        return '112301';
      case value112302:
        return '112302';
      case value112303:
        return '112303';
      case value112304:
        return '112304';
      case value112305:
        return '112305';
      case value112306:
        return '112306';
      case value112307:
        return '112307';
      case value112308:
        return '112308';
      case value112309:
        return '112309';
      case value112310:
        return '112310';
      case value112311:
        return '112311';
      case value112312:
        return '112312';
      case value112313:
        return '112313';
      case value112314:
        return '112314';
      case value112315:
        return '112315';
      case value112316:
        return '112316';
      case value112317:
        return '112317';
      case value112318:
        return '112318';
      case value112319:
        return '112319';
      case value112320:
        return '112320';
      case value112321:
        return '112321';
      case value112325:
        return '112325';
      case value112340:
        return '112340';
      case value112341:
        return '112341';
      case value112342:
        return '112342';
      case value112343:
        return '112343';
      case value112344:
        return '112344';
      case value112345:
        return '112345';
      case value112346:
        return '112346';
      case value112347:
        return '112347';
      case value112348:
        return '112348';
      case value112350:
        return '112350';
      case value112351:
        return '112351';
      case value112352:
        return '112352';
      case value112353:
        return '112353';
      case value112354:
        return '112354';
      case value112355:
        return '112355';
      case value112356:
        return '112356';
      case value112357:
        return '112357';
      case value112358:
        return '112358';
      case value112359:
        return '112359';
      case value112360:
        return '112360';
      case value112361:
        return '112361';
      case value112362:
        return '112362';
      case value112363:
        return '112363';
      case value112364:
        return '112364';
      case value112365:
        return '112365';
      case value112366:
        return '112366';
      case value112367:
        return '112367';
      case value112368:
        return '112368';
      case value112369:
        return '112369';
      case value112370:
        return '112370';
      case value112371:
        return '112371';
      case value112372:
        return '112372';
      case value112373:
        return '112373';
      case value112374:
        return '112374';
      case value112375:
        return '112375';
      case value112376:
        return '112376';
      case value112377:
        return '112377';
      case value112378:
        return '112378';
      case value112379:
        return '112379';
      case value112380:
        return '112380';
      case value112381:
        return '112381';
      case value112700:
        return '112700';
      case value112701:
        return '112701';
      case value112702:
        return '112702';
      case value112703:
        return '112703';
      case value112704:
        return '112704';
      case value112705:
        return '112705';
      case value112706:
        return '112706';
      case value112707:
        return '112707';
      case value112708:
        return '112708';
      case value112709:
        return '112709';
      case value112710:
        return '112710';
      case value112711:
        return '112711';
      case value112712:
        return '112712';
      case value112713:
        return '112713';
      case value112714:
        return '112714';
      case value112715:
        return '112715';
      case value112716:
        return '112716';
      case value112717:
        return '112717';
      case value112718:
        return '112718';
      case value112719:
        return '112719';
      case value112720:
        return '112720';
      case value112721:
        return '112721';
      case value113000:
        return '113000';
      case value113001:
        return '113001';
      case value113002:
        return '113002';
      case value113003:
        return '113003';
      case value113004:
        return '113004';
      case value113005:
        return '113005';
      case value113006:
        return '113006';
      case value113007:
        return '113007';
      case value113008:
        return '113008';
      case value113009:
        return '113009';
      case value113010:
        return '113010';
      case value113011:
        return '113011';
      case value113012:
        return '113012';
      case value113013:
        return '113013';
      case value113014:
        return '113014';
      case value113015:
        return '113015';
      case value113016:
        return '113016';
      case value113017:
        return '113017';
      case value113018:
        return '113018';
      case value113020:
        return '113020';
      case value113021:
        return '113021';
      case value113026:
        return '113026';
      case value113030:
        return '113030';
      case value113031:
        return '113031';
      case value113032:
        return '113032';
      case value113033:
        return '113033';
      case value113034:
        return '113034';
      case value113035:
        return '113035';
      case value113036:
        return '113036';
      case value113037:
        return '113037';
      case value113038:
        return '113038';
      case value113039:
        return '113039';
      case value113040:
        return '113040';
      case value113041:
        return '113041';
      case value113042:
        return '113042';
      case value113043:
        return '113043';
      case value113044:
        return '113044';
      case value113045:
        return '113045';
      case value113046:
        return '113046';
      case value113047:
        return '113047';
      case value113048:
        return '113048';
      case value113049:
        return '113049';
      case value113050:
        return '113050';
      case value113051:
        return '113051';
      case value113052:
        return '113052';
      case value113053:
        return '113053';
      case value113054:
        return '113054';
      case value113055:
        return '113055';
      case value113056:
        return '113056';
      case value113057:
        return '113057';
      case value113058:
        return '113058';
      case value113059:
        return '113059';
      case value113060:
        return '113060';
      case value113061:
        return '113061';
      case value113062:
        return '113062';
      case value113063:
        return '113063';
      case value113064:
        return '113064';
      case value113065:
        return '113065';
      case value113066:
        return '113066';
      case value113067:
        return '113067';
      case value113068:
        return '113068';
      case value113069:
        return '113069';
      case value113070:
        return '113070';
      case value113071:
        return '113071';
      case value113072:
        return '113072';
      case value113073:
        return '113073';
      case value113074:
        return '113074';
      case value113075:
        return '113075';
      case value113076:
        return '113076';
      case value113077:
        return '113077';
      case value113078:
        return '113078';
      case value113079:
        return '113079';
      case value113080:
        return '113080';
      case value113081:
        return '113081';
      case value113082:
        return '113082';
      case value113083:
        return '113083';
      case value113085:
        return '113085';
      case value113086:
        return '113086';
      case value113087:
        return '113087';
      case value113088:
        return '113088';
      case value113089:
        return '113089';
      case value113090:
        return '113090';
      case value113091:
        return '113091';
      case value113092:
        return '113092';
      case value113093:
        return '113093';
      case value113094:
        return '113094';
      case value113095:
        return '113095';
      case value113096:
        return '113096';
      case value113097:
        return '113097';
      case value113100:
        return '113100';
      case value113101:
        return '113101';
      case value113102:
        return '113102';
      case value113103:
        return '113103';
      case value113104:
        return '113104';
      case value113105:
        return '113105';
      case value113106:
        return '113106';
      case value113107:
        return '113107';
      case value113108:
        return '113108';
      case value113109:
        return '113109';
      case value113110:
        return '113110';
      case value113111:
        return '113111';
      case value113500:
        return '113500';
      case value113502:
        return '113502';
      case value113503:
        return '113503';
      case value113505:
        return '113505';
      case value113506:
        return '113506';
      case value113507:
        return '113507';
      case value113508:
        return '113508';
      case value113509:
        return '113509';
      case value113510:
        return '113510';
      case value113511:
        return '113511';
      case value113512:
        return '113512';
      case value113513:
        return '113513';
      case value113514:
        return '113514';
      case value113516:
        return '113516';
      case value113517:
        return '113517';
      case value113518:
        return '113518';
      case value113520:
        return '113520';
      case value113521:
        return '113521';
      case value113522:
        return '113522';
      case value113523:
        return '113523';
      case value113526:
        return '113526';
      case value113527:
        return '113527';
      case value113528:
        return '113528';
      case value113529:
        return '113529';
      case value113530:
        return '113530';
      case value113540:
        return '113540';
      case value113541:
        return '113541';
      case value113542:
        return '113542';
      case value113543:
        return '113543';
      case value113550:
        return '113550';
      case value113551:
        return '113551';
      case value113552:
        return '113552';
      case value113560:
        return '113560';
      case value113561:
        return '113561';
      case value113562:
        return '113562';
      case value113563:
        return '113563';
      case value113568:
        return '113568';
      case value113570:
        return '113570';
      case value113571:
        return '113571';
      case value113572:
        return '113572';
      case value113573:
        return '113573';
      case value113574:
        return '113574';
      case value113575:
        return '113575';
      case value113576:
        return '113576';
      case value113577:
        return '113577';
      case value113601:
        return '113601';
      case value113602:
        return '113602';
      case value113603:
        return '113603';
      case value113605:
        return '113605';
      case value113606:
        return '113606';
      case value113607:
        return '113607';
      case value113608:
        return '113608';
      case value113609:
        return '113609';
      case value113611:
        return '113611';
      case value113612:
        return '113612';
      case value113613:
        return '113613';
      case value113620:
        return '113620';
      case value113621:
        return '113621';
      case value113622:
        return '113622';
      case value113630:
        return '113630';
      case value113631:
        return '113631';
      case value113650:
        return '113650';
      case value113651:
        return '113651';
      case value113652:
        return '113652';
      case value113653:
        return '113653';
      case value113661:
        return '113661';
      case value113662:
        return '113662';
      case value113663:
        return '113663';
      case value113664:
        return '113664';
      case value113665:
        return '113665';
      case value113666:
        return '113666';
      case value113669:
        return '113669';
      case value113670:
        return '113670';
      case value113671:
        return '113671';
      case value113680:
        return '113680';
      case value113681:
        return '113681';
      case value113682:
        return '113682';
      case value113683:
        return '113683';
      case value113684:
        return '113684';
      case value113685:
        return '113685';
      case value113686:
        return '113686';
      case value113687:
        return '113687';
      case value113688:
        return '113688';
      case value113689:
        return '113689';
      case value113690:
        return '113690';
      case value113691:
        return '113691';
      case value113692:
        return '113692';
      case value113701:
        return '113701';
      case value113702:
        return '113702';
      case value113704:
        return '113704';
      case value113705:
        return '113705';
      case value113706:
        return '113706';
      case value113710:
        return '113710';
      case value113711:
        return '113711';
      case value113720:
        return '113720';
      case value113721:
        return '113721';
      case value113722:
        return '113722';
      case value113723:
        return '113723';
      case value113724:
        return '113724';
      case value113725:
        return '113725';
      case value113726:
        return '113726';
      case value113727:
        return '113727';
      case value113728:
        return '113728';
      case value113729:
        return '113729';
      case value113730:
        return '113730';
      case value113731:
        return '113731';
      case value113732:
        return '113732';
      case value113733:
        return '113733';
      case value113734:
        return '113734';
      case value113735:
        return '113735';
      case value113736:
        return '113736';
      case value113737:
        return '113737';
      case value113738:
        return '113738';
      case value113739:
        return '113739';
      case value113740:
        return '113740';
      case value113742:
        return '113742';
      case value113743:
        return '113743';
      case value113744:
        return '113744';
      case value113745:
        return '113745';
      case value113748:
        return '113748';
      case value113750:
        return '113750';
      case value113751:
        return '113751';
      case value113752:
        return '113752';
      case value113753:
        return '113753';
      case value113754:
        return '113754';
      case value113755:
        return '113755';
      case value113756:
        return '113756';
      case value113757:
        return '113757';
      case value113758:
        return '113758';
      case value113759:
        return '113759';
      case value113760:
        return '113760';
      case value113761:
        return '113761';
      case value113763:
        return '113763';
      case value113764:
        return '113764';
      case value113766:
        return '113766';
      case value113767:
        return '113767';
      case value113768:
        return '113768';
      case value113769:
        return '113769';
      case value113770:
        return '113770';
      case value113771:
        return '113771';
      case value113772:
        return '113772';
      case value113773:
        return '113773';
      case value113780:
        return '113780';
      case value113788:
        return '113788';
      case value113789:
        return '113789';
      case value113790:
        return '113790';
      case value113791:
        return '113791';
      case value113792:
        return '113792';
      case value113793:
        return '113793';
      case value113794:
        return '113794';
      case value113795:
        return '113795';
      case value113800:
        return '113800';
      case value113801:
        return '113801';
      case value113802:
        return '113802';
      case value113803:
        return '113803';
      case value113804:
        return '113804';
      case value113805:
        return '113805';
      case value113806:
        return '113806';
      case value113807:
        return '113807';
      case value113808:
        return '113808';
      case value113809:
        return '113809';
      case value113810:
        return '113810';
      case value113811:
        return '113811';
      case value113812:
        return '113812';
      case value113813:
        return '113813';
      case value113814:
        return '113814';
      case value113815:
        return '113815';
      case value113816:
        return '113816';
      case value113817:
        return '113817';
      case value113818:
        return '113818';
      case value113819:
        return '113819';
      case value113820:
        return '113820';
      case value113821:
        return '113821';
      case value113822:
        return '113822';
      case value113823:
        return '113823';
      case value113824:
        return '113824';
      case value113825:
        return '113825';
      case value113826:
        return '113826';
      case value113827:
        return '113827';
      case value113828:
        return '113828';
      case value113829:
        return '113829';
      case value113830:
        return '113830';
      case value113831:
        return '113831';
      case value113832:
        return '113832';
      case value113833:
        return '113833';
      case value113834:
        return '113834';
      case value113835:
        return '113835';
      case value113836:
        return '113836';
      case value113837:
        return '113837';
      case value113838:
        return '113838';
      case value113839:
        return '113839';
      case value113840:
        return '113840';
      case value113841:
        return '113841';
      case value113842:
        return '113842';
      case value113845:
        return '113845';
      case value113846:
        return '113846';
      case value113847:
        return '113847';
      case value113850:
        return '113850';
      case value113851:
        return '113851';
      case value113852:
        return '113852';
      case value113853:
        return '113853';
      case value113854:
        return '113854';
      case value113855:
        return '113855';
      case value113856:
        return '113856';
      case value113857:
        return '113857';
      case value113858:
        return '113858';
      case value113859:
        return '113859';
      case value113860:
        return '113860';
      case value113861:
        return '113861';
      case value113862:
        return '113862';
      case value113863:
        return '113863';
      case value113864:
        return '113864';
      case value113865:
        return '113865';
      case value113866:
        return '113866';
      case value113867:
        return '113867';
      case value113868:
        return '113868';
      case value113870:
        return '113870';
      case value113871:
        return '113871';
      case value113872:
        return '113872';
      case value113873:
        return '113873';
      case value113874:
        return '113874';
      case value113875:
        return '113875';
      case value113876:
        return '113876';
      case value113877:
        return '113877';
      case value113878:
        return '113878';
      case value113879:
        return '113879';
      case value113880:
        return '113880';
      case value113890:
        return '113890';
      case value113893:
        return '113893';
      case value113895:
        return '113895';
      case value113896:
        return '113896';
      case value113897:
        return '113897';
      case value113898:
        return '113898';
      case value113899:
        return '113899';
      case value113900:
        return '113900';
      case value113901:
        return '113901';
      case value113902:
        return '113902';
      case value113903:
        return '113903';
      case value113904:
        return '113904';
      case value113905:
        return '113905';
      case value113906:
        return '113906';
      case value113907:
        return '113907';
      case value113908:
        return '113908';
      case value113909:
        return '113909';
      case value113910:
        return '113910';
      case value113911:
        return '113911';
      case value113912:
        return '113912';
      case value113913:
        return '113913';
      case value113914:
        return '113914';
      case value113921:
        return '113921';
      case value113922:
        return '113922';
      case value113923:
        return '113923';
      case value113930:
        return '113930';
      case value113931:
        return '113931';
      case value113932:
        return '113932';
      case value113933:
        return '113933';
      case value113934:
        return '113934';
      case value113935:
        return '113935';
      case value113936:
        return '113936';
      case value113937:
        return '113937';
      case value113940:
        return '113940';
      case value113941:
        return '113941';
      case value113942:
        return '113942';
      case value113943:
        return '113943';
      case value113944:
        return '113944';
      case value113945:
        return '113945';
      case value113946:
        return '113946';
      case value113947:
        return '113947';
      case value113948:
        return '113948';
      case value113949:
        return '113949';
      case value113950:
        return '113950';
      case value113951:
        return '113951';
      case value113952:
        return '113952';
      case value113953:
        return '113953';
      case value113954:
        return '113954';
      case value113955:
        return '113955';
      case value113956:
        return '113956';
      case value113957:
        return '113957';
      case value113958:
        return '113958';
      case value113959:
        return '113959';
      case value113961:
        return '113961';
      case value113962:
        return '113962';
      case value113963:
        return '113963';
      case value113970:
        return '113970';
      case value114000:
        return '114000';
      case value114001:
        return '114001';
      case value114002:
        return '114002';
      case value114003:
        return '114003';
      case value114004:
        return '114004';
      case value114005:
        return '114005';
      case value114006:
        return '114006';
      case value114007:
        return '114007';
      case value114008:
        return '114008';
      case value114009:
        return '114009';
      case value114010:
        return '114010';
      case value114011:
        return '114011';
      case value114201:
        return '114201';
      case value114202:
        return '114202';
      case value114203:
        return '114203';
      case value114204:
        return '114204';
      case value114205:
        return '114205';
      case value114206:
        return '114206';
      case value114207:
        return '114207';
      case value114208:
        return '114208';
      case value114209:
        return '114209';
      case value114210:
        return '114210';
      case value114211:
        return '114211';
      case value114213:
        return '114213';
      case value114215:
        return '114215';
      case value114216:
        return '114216';
      case value121001:
        return '121001';
      case value121002:
        return '121002';
      case value121003:
        return '121003';
      case value121004:
        return '121004';
      case value121005:
        return '121005';
      case value121006:
        return '121006';
      case value121007:
        return '121007';
      case value121008:
        return '121008';
      case value121009:
        return '121009';
      case value121010:
        return '121010';
      case value121011:
        return '121011';
      case value121012:
        return '121012';
      case value121013:
        return '121013';
      case value121014:
        return '121014';
      case value121015:
        return '121015';
      case value121016:
        return '121016';
      case value121017:
        return '121017';
      case value121018:
        return '121018';
      case value121019:
        return '121019';
      case value121020:
        return '121020';
      case value121021:
        return '121021';
      case value121022:
        return '121022';
      case value121023:
        return '121023';
      case value121024:
        return '121024';
      case value121025:
        return '121025';
      case value121026:
        return '121026';
      case value121027:
        return '121027';
      case value121028:
        return '121028';
      case value121029:
        return '121029';
      case value121030:
        return '121030';
      case value121031:
        return '121031';
      case value121032:
        return '121032';
      case value121033:
        return '121033';
      case value121034:
        return '121034';
      case value121035:
        return '121035';
      case value121036:
        return '121036';
      case value121037:
        return '121037';
      case value121038:
        return '121038';
      case value121039:
        return '121039';
      case value121040:
        return '121040';
      case value121041:
        return '121041';
      case value121042:
        return '121042';
      case value121043:
        return '121043';
      case value121044:
        return '121044';
      case value121045:
        return '121045';
      case value121046:
        return '121046';
      case value121047:
        return '121047';
      case value121048:
        return '121048';
      case value121049:
        return '121049';
      case value121050:
        return '121050';
      case value121051:
        return '121051';
      case value121052:
        return '121052';
      case value121053:
        return '121053';
      case value121054:
        return '121054';
      case value121055:
        return '121055';
      case value121056:
        return '121056';
      case value121057:
        return '121057';
      case value121058:
        return '121058';
      case value121059:
        return '121059';
      case value121060:
        return '121060';
      case value121062:
        return '121062';
      case value121064:
        return '121064';
      case value121065:
        return '121065';
      case value121066:
        return '121066';
      case value121068:
        return '121068';
      case value121069:
        return '121069';
      case value121070:
        return '121070';
      case value121071:
        return '121071';
      case value121072:
        return '121072';
      case value121073:
        return '121073';
      case value121074:
        return '121074';
      case value121075:
        return '121075';
      case value121076:
        return '121076';
      case value121077:
        return '121077';
      case value121078:
        return '121078';
      case value121079:
        return '121079';
      case value121080:
        return '121080';
      case value121081:
        return '121081';
      case value121082:
        return '121082';
      case value121083:
        return '121083';
      case value121084:
        return '121084';
      case value121085:
        return '121085';
      case value121086:
        return '121086';
      case value121087:
        return '121087';
      case value121088:
        return '121088';
      case value121089:
        return '121089';
      case value121090:
        return '121090';
      case value121091:
        return '121091';
      case value121092:
        return '121092';
      case value121093:
        return '121093';
      case value121094:
        return '121094';
      case value121095:
        return '121095';
      case value121096:
        return '121096';
      case value121097:
        return '121097';
      case value121098:
        return '121098';
      case value121099:
        return '121099';
      case value121100:
        return '121100';
      case value121101:
        return '121101';
      case value121102:
        return '121102';
      case value121103:
        return '121103';
      case value121104:
        return '121104';
      case value121105:
        return '121105';
      case value121106:
        return '121106';
      case value121109:
        return '121109';
      case value121110:
        return '121110';
      case value121111:
        return '121111';
      case value121112:
        return '121112';
      case value121113:
        return '121113';
      case value121114:
        return '121114';
      case value121115:
        return '121115';
      case value121116:
        return '121116';
      case value121117:
        return '121117';
      case value121118:
        return '121118';
      case value121120:
        return '121120';
      case value121121:
        return '121121';
      case value121122:
        return '121122';
      case value121123:
        return '121123';
      case value121124:
        return '121124';
      case value121125:
        return '121125';
      case value121126:
        return '121126';
      case value121127:
        return '121127';
      case value121128:
        return '121128';
      case value121130:
        return '121130';
      case value121131:
        return '121131';
      case value121132:
        return '121132';
      case value121133:
        return '121133';
      case value121135:
        return '121135';
      case value121136:
        return '121136';
      case value121137:
        return '121137';
      case value121138:
        return '121138';
      case value121139:
        return '121139';
      case value121140:
        return '121140';
      case value121141:
        return '121141';
      case value121142:
        return '121142';
      case value121143:
        return '121143';
      case value121144:
        return '121144';
      case value121145:
        return '121145';
      case value121146:
        return '121146';
      case value121147:
        return '121147';
      case value121148:
        return '121148';
      case value121149:
        return '121149';
      case value121150:
        return '121150';
      case value121151:
        return '121151';
      case value121152:
        return '121152';
      case value121153:
        return '121153';
      case value121154:
        return '121154';
      case value121155:
        return '121155';
      case value121156:
        return '121156';
      case value121157:
        return '121157';
      case value121158:
        return '121158';
      case value121160:
        return '121160';
      case value121161:
        return '121161';
      case value121162:
        return '121162';
      case value121163:
        return '121163';
      case value121165:
        return '121165';
      case value121166:
        return '121166';
      case value121167:
        return '121167';
      case value121168:
        return '121168';
      case value121169:
        return '121169';
      case value121171:
        return '121171';
      case value121172:
        return '121172';
      case value121173:
        return '121173';
      case value121174:
        return '121174';
      case value121180:
        return '121180';
      case value121181:
        return '121181';
      case value121190:
        return '121190';
      case value121191:
        return '121191';
      case value121192:
        return '121192';
      case value121193:
        return '121193';
      case value121194:
        return '121194';
      case value121195:
        return '121195';
      case value121196:
        return '121196';
      case value121197:
        return '121197';
      case value121198:
        return '121198';
      case value121200:
        return '121200';
      case value121201:
        return '121201';
      case value121202:
        return '121202';
      case value121206:
        return '121206';
      case value121207:
        return '121207';
      case value121208:
        return '121208';
      case value121210:
        return '121210';
      case value121211:
        return '121211';
      case value121213:
        return '121213';
      case value121214:
        return '121214';
      case value121216:
        return '121216';
      case value121217:
        return '121217';
      case value121218:
        return '121218';
      case value121219:
        return '121219';
      case value121220:
        return '121220';
      case value121221:
        return '121221';
      case value121222:
        return '121222';
      case value121230:
        return '121230';
      case value121231:
        return '121231';
      case value121232:
        return '121232';
      case value121233:
        return '121233';
      case value121242:
        return '121242';
      case value121243:
        return '121243';
      case value121244:
        return '121244';
      case value121290:
        return '121290';
      case value121291:
        return '121291';
      case value121301:
        return '121301';
      case value121302:
        return '121302';
      case value121303:
        return '121303';
      case value121304:
        return '121304';
      case value121305:
        return '121305';
      case value121306:
        return '121306';
      case value121307:
        return '121307';
      case value121311:
        return '121311';
      case value121312:
        return '121312';
      case value121313:
        return '121313';
      case value121314:
        return '121314';
      case value121315:
        return '121315';
      case value121316:
        return '121316';
      case value121317:
        return '121317';
      case value121318:
        return '121318';
      case value121320:
        return '121320';
      case value121321:
        return '121321';
      case value121322:
        return '121322';
      case value121323:
        return '121323';
      case value121324:
        return '121324';
      case value121325:
        return '121325';
      case value121326:
        return '121326';
      case value121327:
        return '121327';
      case value121328:
        return '121328';
      case value121329:
        return '121329';
      case value121330:
        return '121330';
      case value121331:
        return '121331';
      case value121332:
        return '121332';
      case value121333:
        return '121333';
      case value121334:
        return '121334';
      case value121335:
        return '121335';
      case value121338:
        return '121338';
      case value121339:
        return '121339';
      case value121340:
        return '121340';
      case value121341:
        return '121341';
      case value121342:
        return '121342';
      case value121346:
        return '121346';
      case value121347:
        return '121347';
      case value121348:
        return '121348';
      case value121349:
        return '121349';
      case value121350:
        return '121350';
      case value121351:
        return '121351';
      case value121352:
        return '121352';
      case value121353:
        return '121353';
      case value121354:
        return '121354';
      case value121358:
        return '121358';
      case value121360:
        return '121360';
      case value121361:
        return '121361';
      case value121362:
        return '121362';
      case value121363:
        return '121363';
      case value121370:
        return '121370';
      case value121371:
        return '121371';
      case value121372:
        return '121372';
      case value121380:
        return '121380';
      case value121381:
        return '121381';
      case value121382:
        return '121382';
      case value121383:
        return '121383';
      case value121401:
        return '121401';
      case value121402:
        return '121402';
      case value121403:
        return '121403';
      case value121404:
        return '121404';
      case value121405:
        return '121405';
      case value121406:
        return '121406';
      case value121407:
        return '121407';
      case value121408:
        return '121408';
      case value121410:
        return '121410';
      case value121411:
        return '121411';
      case value121412:
        return '121412';
      case value121414:
        return '121414';
      case value121415:
        return '121415';
      case value121416:
        return '121416';
      case value121417:
        return '121417';
      case value121420:
        return '121420';
      case value121421:
        return '121421';
      case value121422:
        return '121422';
      case value121423:
        return '121423';
      case value121424:
        return '121424';
      case value121425:
        return '121425';
      case value121427:
        return '121427';
      case value121428:
        return '121428';
      case value121430:
        return '121430';
      case value121431:
        return '121431';
      case value121432:
        return '121432';
      case value121433:
        return '121433';
      case value121434:
        return '121434';
      case value121435:
        return '121435';
      case value121436:
        return '121436';
      case value121437:
        return '121437';
      case value121438:
        return '121438';
      case value121439:
        return '121439';
      case value121701:
        return '121701';
      case value121702:
        return '121702';
      case value121703:
        return '121703';
      case value121704:
        return '121704';
      case value121705:
        return '121705';
      case value121706:
        return '121706';
      case value121707:
        return '121707';
      case value121708:
        return '121708';
      case value121709:
        return '121709';
      case value121710:
        return '121710';
      case value121711:
        return '121711';
      case value121712:
        return '121712';
      case value121713:
        return '121713';
      case value121714:
        return '121714';
      case value121715:
        return '121715';
      case value121716:
        return '121716';
      case value121717:
        return '121717';
      case value121718:
        return '121718';
      case value121719:
        return '121719';
      case value121720:
        return '121720';
      case value121721:
        return '121721';
      case value121722:
        return '121722';
      case value121723:
        return '121723';
      case value121724:
        return '121724';
      case value121725:
        return '121725';
      case value121726:
        return '121726';
      case value121727:
        return '121727';
      case value121728:
        return '121728';
      case value121729:
        return '121729';
      case value121730:
        return '121730';
      case value121731:
        return '121731';
      case value121732:
        return '121732';
      case value121733:
        return '121733';
      case value121734:
        return '121734';
      case value121740:
        return '121740';
      case value122001:
        return '122001';
      case value122002:
        return '122002';
      case value122003:
        return '122003';
      case value122004:
        return '122004';
      case value122005:
        return '122005';
      case value122006:
        return '122006';
      case value122007:
        return '122007';
      case value122008:
        return '122008';
      case value122009:
        return '122009';
      case value122010:
        return '122010';
      case value122011:
        return '122011';
      case value122012:
        return '122012';
      case value122020:
        return '122020';
      case value122021:
        return '122021';
      case value122022:
        return '122022';
      case value122023:
        return '122023';
      case value122024:
        return '122024';
      case value122025:
        return '122025';
      case value122026:
        return '122026';
      case value122027:
        return '122027';
      case value122028:
        return '122028';
      case value122029:
        return '122029';
      case value122030:
        return '122030';
      case value122031:
        return '122031';
      case value122032:
        return '122032';
      case value122033:
        return '122033';
      case value122034:
        return '122034';
      case value122035:
        return '122035';
      case value122036:
        return '122036';
      case value122037:
        return '122037';
      case value122038:
        return '122038';
      case value122039:
        return '122039';
      case value122041:
        return '122041';
      case value122042:
        return '122042';
      case value122043:
        return '122043';
      case value122044:
        return '122044';
      case value122045:
        return '122045';
      case value122046:
        return '122046';
      case value122047:
        return '122047';
      case value122048:
        return '122048';
      case value122049:
        return '122049';
      case value122052:
        return '122052';
      case value122053:
        return '122053';
      case value122054:
        return '122054';
      case value122055:
        return '122055';
      case value122056:
        return '122056';
      case value122057:
        return '122057';
      case value122058:
        return '122058';
      case value122059:
        return '122059';
      case value122060:
        return '122060';
      case value122061:
        return '122061';
      case value122062:
        return '122062';
      case value122072:
        return '122072';
      case value122073:
        return '122073';
      case value122075:
        return '122075';
      case value122076:
        return '122076';
      case value122077:
        return '122077';
      case value122078:
        return '122078';
      case value122079:
        return '122079';
      case value122081:
        return '122081';
      case value122082:
        return '122082';
      case value122083:
        return '122083';
      case value122084:
        return '122084';
      case value122085:
        return '122085';
      case value122086:
        return '122086';
      case value122087:
        return '122087';
      case value122088:
        return '122088';
      case value122089:
        return '122089';
      case value122090:
        return '122090';
      case value122091:
        return '122091';
      case value122092:
        return '122092';
      case value122093:
        return '122093';
      case value122094:
        return '122094';
      case value122095:
        return '122095';
      case value122096:
        return '122096';
      case value122097:
        return '122097';
      case value122098:
        return '122098';
      case value122099:
        return '122099';
      case value122101:
        return '122101';
      case value122102:
        return '122102';
      case value122103:
        return '122103';
      case value122104:
        return '122104';
      case value122105:
        return '122105';
      case value122106:
        return '122106';
      case value122107:
        return '122107';
      case value122108:
        return '122108';
      case value122109:
        return '122109';
      case value122110:
        return '122110';
      case value122111:
        return '122111';
      case value122112:
        return '122112';
      case value122113:
        return '122113';
      case value122114:
        return '122114';
      case value122120:
        return '122120';
      case value122121:
        return '122121';
      case value122122:
        return '122122';
      case value122123:
        return '122123';
      case value122124:
        return '122124';
      case value122125:
        return '122125';
      case value122126:
        return '122126';
      case value122127:
        return '122127';
      case value122128:
        return '122128';
      case value122129:
        return '122129';
      case value122130:
        return '122130';
      case value122131:
        return '122131';
      case value122132:
        return '122132';
      case value122133:
        return '122133';
      case value122134:
        return '122134';
      case value122138:
        return '122138';
      case value122139:
        return '122139';
      case value122140:
        return '122140';
      case value122141:
        return '122141';
      case value122142:
        return '122142';
      case value122143:
        return '122143';
      case value122144:
        return '122144';
      case value122145:
        return '122145';
      case value122146:
        return '122146';
      case value122147:
        return '122147';
      case value122148:
        return '122148';
      case value122149:
        return '122149';
      case value122150:
        return '122150';
      case value122151:
        return '122151';
      case value122152:
        return '122152';
      case value122153:
        return '122153';
      case value122154:
        return '122154';
      case value122157:
        return '122157';
      case value122158:
        return '122158';
      case value122159:
        return '122159';
      case value122160:
        return '122160';
      case value122161:
        return '122161';
      case value122162:
        return '122162';
      case value122163:
        return '122163';
      case value122164:
        return '122164';
      case value122165:
        return '122165';
      case value122166:
        return '122166';
      case value122167:
        return '122167';
      case value122170:
        return '122170';
      case value122171:
        return '122171';
      case value122172:
        return '122172';
      case value122173:
        return '122173';
      case value122175:
        return '122175';
      case value122176:
        return '122176';
      case value122177:
        return '122177';
      case value122178:
        return '122178';
      case value122179:
        return '122179';
      case value122180:
        return '122180';
      case value122181:
        return '122181';
      case value122182:
        return '122182';
      case value122183:
        return '122183';
      case value122185:
        return '122185';
      case value122187:
        return '122187';
      case value122188:
        return '122188';
      case value122189:
        return '122189';
      case value122190:
        return '122190';
      case value122191:
        return '122191';
      case value122192:
        return '122192';
      case value122193:
        return '122193';
      case value122194:
        return '122194';
      case value122195:
        return '122195';
      case value122196:
        return '122196';
      case value122197:
        return '122197';
      case value122198:
        return '122198';
      case value122199:
        return '122199';
      case value122201:
        return '122201';
      case value122202:
        return '122202';
      case value122203:
        return '122203';
      case value122204:
        return '122204';
      case value122205:
        return '122205';
      case value122206:
        return '122206';
      case value122207:
        return '122207';
      case value122208:
        return '122208';
      case value122209:
        return '122209';
      case value122210:
        return '122210';
      case value122211:
        return '122211';
      case value122212:
        return '122212';
      case value122213:
        return '122213';
      case value122214:
        return '122214';
      case value122215:
        return '122215';
      case value122216:
        return '122216';
      case value122217:
        return '122217';
      case value122218:
        return '122218';
      case value122219:
        return '122219';
      case value122220:
        return '122220';
      case value122221:
        return '122221';
      case value122222:
        return '122222';
      case value122223:
        return '122223';
      case value122224:
        return '122224';
      case value122225:
        return '122225';
      case value122227:
        return '122227';
      case value122228:
        return '122228';
      case value122229:
        return '122229';
      case value122230:
        return '122230';
      case value122231:
        return '122231';
      case value122232:
        return '122232';
      case value122233:
        return '122233';
      case value122234:
        return '122234';
      case value122235:
        return '122235';
      case value122236:
        return '122236';
      case value122237:
        return '122237';
      case value122238:
        return '122238';
      case value122239:
        return '122239';
      case value122240:
        return '122240';
      case value122241:
        return '122241';
      case value122242:
        return '122242';
      case value122243:
        return '122243';
      case value122244:
        return '122244';
      case value122245:
        return '122245';
      case value122246:
        return '122246';
      case value122247:
        return '122247';
      case value122248:
        return '122248';
      case value122249:
        return '122249';
      case value122250:
        return '122250';
      case value122251:
        return '122251';
      case value122252:
        return '122252';
      case value122253:
        return '122253';
      case value122254:
        return '122254';
      case value122255:
        return '122255';
      case value122256:
        return '122256';
      case value122257:
        return '122257';
      case value122258:
        return '122258';
      case value122259:
        return '122259';
      case value122260:
        return '122260';
      case value122261:
        return '122261';
      case value122262:
        return '122262';
      case value122263:
        return '122263';
      case value122265:
        return '122265';
      case value122266:
        return '122266';
      case value122267:
        return '122267';
      case value122268:
        return '122268';
      case value122269:
        return '122269';
      case value122270:
        return '122270';
      case value122271:
        return '122271';
      case value122272:
        return '122272';
      case value122273:
        return '122273';
      case value122274:
        return '122274';
      case value122275:
        return '122275';
      case value122276:
        return '122276';
      case value122277:
        return '122277';
      case value122278:
        return '122278';
      case value122279:
        return '122279';
      case value122281:
        return '122281';
      case value122282:
        return '122282';
      case value122283:
        return '122283';
      case value122288:
        return '122288';
      case value122291:
        return '122291';
      case value122292:
        return '122292';
      case value122301:
        return '122301';
      case value122302:
        return '122302';
      case value122303:
        return '122303';
      case value122304:
        return '122304';
      case value122305:
        return '122305';
      case value122306:
        return '122306';
      case value122307:
        return '122307';
      case value122308:
        return '122308';
      case value122309:
        return '122309';
      case value122310:
        return '122310';
      case value122311:
        return '122311';
      case value122312:
        return '122312';
      case value122313:
        return '122313';
      case value122319:
        return '122319';
      case value122320:
        return '122320';
      case value122321:
        return '122321';
      case value122322:
        return '122322';
      case value122325:
        return '122325';
      case value122330:
        return '122330';
      case value122331:
        return '122331';
      case value122332:
        return '122332';
      case value122333:
        return '122333';
      case value122334:
        return '122334';
      case value122335:
        return '122335';
      case value122336:
        return '122336';
      case value122337:
        return '122337';
      case value122339:
        return '122339';
      case value122340:
        return '122340';
      case value122341:
        return '122341';
      case value122343:
        return '122343';
      case value122344:
        return '122344';
      case value122345:
        return '122345';
      case value122346:
        return '122346';
      case value122347:
        return '122347';
      case value122348:
        return '122348';
      case value122350:
        return '122350';
      case value122351:
        return '122351';
      case value122352:
        return '122352';
      case value122354:
        return '122354';
      case value122355:
        return '122355';
      case value122356:
        return '122356';
      case value122357:
        return '122357';
      case value122360:
        return '122360';
      case value122361:
        return '122361';
      case value122363:
        return '122363';
      case value122364:
        return '122364';
      case value122367:
        return '122367';
      case value122368:
        return '122368';
      case value122369:
        return '122369';
      case value122370:
        return '122370';
      case value122371:
        return '122371';
      case value122372:
        return '122372';
      case value122374:
        return '122374';
      case value122375:
        return '122375';
      case value122376:
        return '122376';
      case value122380:
        return '122380';
      case value122381:
        return '122381';
      case value122382:
        return '122382';
      case value122383:
        return '122383';
      case value122384:
        return '122384';
      case value122385:
        return '122385';
      case value122386:
        return '122386';
      case value122387:
        return '122387';
      case value122388:
        return '122388';
      case value122389:
        return '122389';
      case value122390:
        return '122390';
      case value122391:
        return '122391';
      case value122393:
        return '122393';
      case value122394:
        return '122394';
      case value122395:
        return '122395';
      case value122398:
        return '122398';
      case value122399:
        return '122399';
      case value122400:
        return '122400';
      case value122401:
        return '122401';
      case value122402:
        return '122402';
      case value122403:
        return '122403';
      case value122404:
        return '122404';
      case value122405:
        return '122405';
      case value122406:
        return '122406';
      case value122407:
        return '122407';
      case value122408:
        return '122408';
      case value122410:
        return '122410';
      case value122411:
        return '122411';
      case value122417:
        return '122417';
      case value122421:
        return '122421';
      case value122422:
        return '122422';
      case value122423:
        return '122423';
      case value122428:
        return '122428';
      case value122429:
        return '122429';
      case value122430:
        return '122430';
      case value122431:
        return '122431';
      case value122432:
        return '122432';
      case value122433:
        return '122433';
      case value122434:
        return '122434';
      case value122435:
        return '122435';
      case value122438:
        return '122438';
      case value122445:
        return '122445';
      case value122446:
        return '122446';
      case value122447:
        return '122447';
      case value122448:
        return '122448';
      case value122449:
        return '122449';
      case value122450:
        return '122450';
      case value122451:
        return '122451';
      case value122452:
        return '122452';
      case value122453:
        return '122453';
      case value122459:
        return '122459';
      case value122461:
        return '122461';
      case value122464:
        return '122464';
      case value122465:
        return '122465';
      case value122466:
        return '122466';
      case value122467:
        return '122467';
      case value122468:
        return '122468';
      case value122469:
        return '122469';
      case value122470:
        return '122470';
      case value122471:
        return '122471';
      case value122472:
        return '122472';
      case value122473:
        return '122473';
      case value122474:
        return '122474';
      case value122475:
        return '122475';
      case value122476:
        return '122476';
      case value122477:
        return '122477';
      case value122480:
        return '122480';
      case value122481:
        return '122481';
      case value122482:
        return '122482';
      case value122485:
        return '122485';
      case value122486:
        return '122486';
      case value122487:
        return '122487';
      case value122488:
        return '122488';
      case value122489:
        return '122489';
      case value122490:
        return '122490';
      case value122491:
        return '122491';
      case value122493:
        return '122493';
      case value122495:
        return '122495';
      case value122496:
        return '122496';
      case value122497:
        return '122497';
      case value122498:
        return '122498';
      case value122499:
        return '122499';
      case value122501:
        return '122501';
      case value122502:
        return '122502';
      case value122503:
        return '122503';
      case value122505:
        return '122505';
      case value122507:
        return '122507';
      case value122508:
        return '122508';
      case value122509:
        return '122509';
      case value122510:
        return '122510';
      case value122511:
        return '122511';
      case value122516:
        return '122516';
      case value122517:
        return '122517';
      case value122528:
        return '122528';
      case value122529:
        return '122529';
      case value122542:
        return '122542';
      case value122544:
        return '122544';
      case value122545:
        return '122545';
      case value122546:
        return '122546';
      case value122547:
        return '122547';
      case value122548:
        return '122548';
      case value122549:
        return '122549';
      case value122550:
        return '122550';
      case value122551:
        return '122551';
      case value122554:
        return '122554';
      case value122555:
        return '122555';
      case value122558:
        return '122558';
      case value122559:
        return '122559';
      case value122560:
        return '122560';
      case value122562:
        return '122562';
      case value122563:
        return '122563';
      case value122564:
        return '122564';
      case value122565:
        return '122565';
      case value122566:
        return '122566';
      case value122572:
        return '122572';
      case value122574:
        return '122574';
      case value122575:
        return '122575';
      case value122582:
        return '122582';
      case value122600:
        return '122600';
      case value122601:
        return '122601';
      case value122602:
        return '122602';
      case value122603:
        return '122603';
      case value122604:
        return '122604';
      case value122605:
        return '122605';
      case value122606:
        return '122606';
      case value122607:
        return '122607';
      case value122608:
        return '122608';
      case value122609:
        return '122609';
      case value122611:
        return '122611';
      case value122612:
        return '122612';
      case value122616:
        return '122616';
      case value122617:
        return '122617';
      case value122618:
        return '122618';
      case value122619:
        return '122619';
      case value122620:
        return '122620';
      case value122621:
        return '122621';
      case value122624:
        return '122624';
      case value122627:
        return '122627';
      case value122628:
        return '122628';
      case value122631:
        return '122631';
      case value122633:
        return '122633';
      case value122634:
        return '122634';
      case value122635:
        return '122635';
      case value122636:
        return '122636';
      case value122637:
        return '122637';
      case value122638:
        return '122638';
      case value122639:
        return '122639';
      case value122640:
        return '122640';
      case value122642:
        return '122642';
      case value122643:
        return '122643';
      case value122645:
        return '122645';
      case value122650:
        return '122650';
      case value122651:
        return '122651';
      case value122652:
        return '122652';
      case value122655:
        return '122655';
      case value122656:
        return '122656';
      case value122657:
        return '122657';
      case value122658:
        return '122658';
      case value122659:
        return '122659';
      case value122660:
        return '122660';
      case value122661:
        return '122661';
      case value122664:
        return '122664';
      case value122665:
        return '122665';
      case value122666:
        return '122666';
      case value122667:
        return '122667';
      case value122668:
        return '122668';
      case value122670:
        return '122670';
      case value122675:
        return '122675';
      case value122680:
        return '122680';
      case value122683:
        return '122683';
      case value122684:
        return '122684';
      case value122685:
        return '122685';
      case value122686:
        return '122686';
      case value122687:
        return '122687';
      case value122698:
        return '122698';
      case value122699:
        return '122699';
      case value122700:
        return '122700';
      case value122701:
        return '122701';
      case value122702:
        return '122702';
      case value122703:
        return '122703';
      case value122704:
        return '122704';
      case value122705:
        return '122705';
      case value122706:
        return '122706';
      case value122707:
        return '122707';
      case value122708:
        return '122708';
      case value122709:
        return '122709';
      case value122710:
        return '122710';
      case value122711:
        return '122711';
      case value122712:
        return '122712';
      case value122713:
        return '122713';
      case value122715:
        return '122715';
      case value122716:
        return '122716';
      case value122717:
        return '122717';
      case value122718:
        return '122718';
      case value122720:
        return '122720';
      case value122721:
        return '122721';
      case value122726:
        return '122726';
      case value122727:
        return '122727';
      case value122728:
        return '122728';
      case value122729:
        return '122729';
      case value122730:
        return '122730';
      case value122731:
        return '122731';
      case value122732:
        return '122732';
      case value122733:
        return '122733';
      case value122734:
        return '122734';
      case value122735:
        return '122735';
      case value122739:
        return '122739';
      case value122740:
        return '122740';
      case value122741:
        return '122741';
      case value122742:
        return '122742';
      case value122743:
        return '122743';
      case value122744:
        return '122744';
      case value122745:
        return '122745';
      case value122748:
        return '122748';
      case value122750:
        return '122750';
      case value122751:
        return '122751';
      case value122752:
        return '122752';
      case value122753:
        return '122753';
      case value122755:
        return '122755';
      case value122756:
        return '122756';
      case value122757:
        return '122757';
      case value122758:
        return '122758';
      case value122759:
        return '122759';
      case value122760:
        return '122760';
      case value122762:
        return '122762';
      case value122764:
        return '122764';
      case value122768:
        return '122768';
      case value122769:
        return '122769';
      case value122770:
        return '122770';
      case value122771:
        return '122771';
      case value122772:
        return '122772';
      case value122773:
        return '122773';
      case value122775:
        return '122775';
      case value122776:
        return '122776';
      case value122781:
        return '122781';
      case value122782:
        return '122782';
      case value122783:
        return '122783';
      case value122784:
        return '122784';
      case value122785:
        return '122785';
      case value122791:
        return '122791';
      case value122792:
        return '122792';
      case value122793:
        return '122793';
      case value122795:
        return '122795';
      case value122796:
        return '122796';
      case value122797:
        return '122797';
      case value122799:
        return '122799';
      case value123001:
        return '123001';
      case value123003:
        return '123003';
      case value123004:
        return '123004';
      case value123005:
        return '123005';
      case value123006:
        return '123006';
      case value123007:
        return '123007';
      case value123009:
        return '123009';
      case value123010:
        return '123010';
      case value123011:
        return '123011';
      case value123012:
        return '123012';
      case value123014:
        return '123014';
      case value123015:
        return '123015';
      case value123016:
        return '123016';
      case value123019:
        return '123019';
      case value123101:
        return '123101';
      case value123102:
        return '123102';
      case value123103:
        return '123103';
      case value123104:
        return '123104';
      case value123105:
        return '123105';
      case value123106:
        return '123106';
      case value123107:
        return '123107';
      case value123108:
        return '123108';
      case value123109:
        return '123109';
      case value123110:
        return '123110';
      case value123111:
        return '123111';
      case value125000:
        return '125000';
      case value125001:
        return '125001';
      case value125002:
        return '125002';
      case value125003:
        return '125003';
      case value125004:
        return '125004';
      case value125005:
        return '125005';
      case value125006:
        return '125006';
      case value125007:
        return '125007';
      case value125008:
        return '125008';
      case value125009:
        return '125009';
      case value125010:
        return '125010';
      case value125011:
        return '125011';
      case value125012:
        return '125012';
      case value125013:
        return '125013';
      case value125015:
        return '125015';
      case value125016:
        return '125016';
      case value125021:
        return '125021';
      case value125022:
        return '125022';
      case value125023:
        return '125023';
      case value125024:
        return '125024';
      case value125025:
        return '125025';
      case value125030:
        return '125030';
      case value125031:
        return '125031';
      case value125032:
        return '125032';
      case value125033:
        return '125033';
      case value125034:
        return '125034';
      case value125035:
        return '125035';
      case value125036:
        return '125036';
      case value125037:
        return '125037';
      case value125038:
        return '125038';
      case value125040:
        return '125040';
      case value125041:
        return '125041';
      case value125100:
        return '125100';
      case value125101:
        return '125101';
      case value125102:
        return '125102';
      case value125105:
        return '125105';
      case value125106:
        return '125106';
      case value125107:
        return '125107';
      case value125195:
        return '125195';
      case value125196:
        return '125196';
      case value125197:
        return '125197';
      case value125200:
        return '125200';
      case value125201:
        return '125201';
      case value125202:
        return '125202';
      case value125203:
        return '125203';
      case value125204:
        return '125204';
      case value125205:
        return '125205';
      case value125206:
        return '125206';
      case value125207:
        return '125207';
      case value125208:
        return '125208';
      case value125209:
        return '125209';
      case value125210:
        return '125210';
      case value125211:
        return '125211';
      case value125212:
        return '125212';
      case value125213:
        return '125213';
      case value125214:
        return '125214';
      case value125215:
        return '125215';
      case value125216:
        return '125216';
      case value125217:
        return '125217';
      case value125218:
        return '125218';
      case value125219:
        return '125219';
      case value125220:
        return '125220';
      case value125221:
        return '125221';
      case value125222:
        return '125222';
      case value125223:
        return '125223';
      case value125224:
        return '125224';
      case value125225:
        return '125225';
      case value125226:
        return '125226';
      case value125227:
        return '125227';
      case value125228:
        return '125228';
      case value125230:
        return '125230';
      case value125231:
        return '125231';
      case value125233:
        return '125233';
      case value125234:
        return '125234';
      case value125235:
        return '125235';
      case value125236:
        return '125236';
      case value125237:
        return '125237';
      case value125238:
        return '125238';
      case value125239:
        return '125239';
      case value125240:
        return '125240';
      case value125241:
        return '125241';
      case value125242:
        return '125242';
      case value125251:
        return '125251';
      case value125252:
        return '125252';
      case value125253:
        return '125253';
      case value125254:
        return '125254';
      case value125255:
        return '125255';
      case value125256:
        return '125256';
      case value125257:
        return '125257';
      case value125258:
        return '125258';
      case value125259:
        return '125259';
      case value125261:
        return '125261';
      case value125262:
        return '125262';
      case value125263:
        return '125263';
      case value125264:
        return '125264';
      case value125265:
        return '125265';
      case value125270:
        return '125270';
      case value125271:
        return '125271';
      case value125272:
        return '125272';
      case value125273:
        return '125273';
      case value125901:
        return '125901';
      case value125902:
        return '125902';
      case value125903:
        return '125903';
      case value125904:
        return '125904';
      case value125905:
        return '125905';
      case value125906:
        return '125906';
      case value125907:
        return '125907';
      case value125908:
        return '125908';
      case value126000:
        return '126000';
      case value126001:
        return '126001';
      case value126002:
        return '126002';
      case value126003:
        return '126003';
      case value126010:
        return '126010';
      case value126011:
        return '126011';
      case value126020:
        return '126020';
      case value126021:
        return '126021';
      case value126022:
        return '126022';
      case value126030:
        return '126030';
      case value126031:
        return '126031';
      case value126032:
        return '126032';
      case value126033:
        return '126033';
      case value126034:
        return '126034';
      case value126035:
        return '126035';
      case value126036:
        return '126036';
      case value126037:
        return '126037';
      case value126038:
        return '126038';
      case value126039:
        return '126039';
      case value126040:
        return '126040';
      case value126050:
        return '126050';
      case value126051:
        return '126051';
      case value126052:
        return '126052';
      case value126060:
        return '126060';
      case value126061:
        return '126061';
      case value126062:
        return '126062';
      case value126063:
        return '126063';
      case value126064:
        return '126064';
      case value126065:
        return '126065';
      case value126066:
        return '126066';
      case value126067:
        return '126067';
      case value126070:
        return '126070';
      case value126071:
        return '126071';
      case value126072:
        return '126072';
      case value126073:
        return '126073';
      case value126074:
        return '126074';
      case value126075:
        return '126075';
      case value126080:
        return '126080';
      case value126081:
        return '126081';
      case value126100:
        return '126100';
      case value126200:
        return '126200';
      case value126201:
        return '126201';
      case value126202:
        return '126202';
      case value126203:
        return '126203';
      case value126220:
        return '126220';
      case value126300:
        return '126300';
      case value126301:
        return '126301';
      case value126302:
        return '126302';
      case value126303:
        return '126303';
      case value126310:
        return '126310';
      case value126311:
        return '126311';
      case value126312:
        return '126312';
      case value126313:
        return '126313';
      case value126314:
        return '126314';
      case value126320:
        return '126320';
      case value126321:
        return '126321';
      case value126322:
        return '126322';
      case value126330:
        return '126330';
      case value126331:
        return '126331';
      case value126340:
        return '126340';
      case value126341:
        return '126341';
      case value126342:
        return '126342';
      case value126343:
        return '126343';
      case value126344:
        return '126344';
      case value126350:
        return '126350';
      case value126351:
        return '126351';
      case value126352:
        return '126352';
      case value126353:
        return '126353';
      case value126360:
        return '126360';
      case value126361:
        return '126361';
      case value126362:
        return '126362';
      case value126363:
        return '126363';
      case value126364:
        return '126364';
      case value126370:
        return '126370';
      case value126371:
        return '126371';
      case value126372:
        return '126372';
      case value126373:
        return '126373';
      case value126374:
        return '126374';
      case value126375:
        return '126375';
      case value126376:
        return '126376';
      case value126377:
        return '126377';
      case value126380:
        return '126380';
      case value126390:
        return '126390';
      case value126391:
        return '126391';
      case value126392:
        return '126392';
      case value126393:
        return '126393';
      case value126394:
        return '126394';
      case value126400:
        return '126400';
      case value126401:
        return '126401';
      case value126402:
        return '126402';
      case value126403:
        return '126403';
      case value126404:
        return '126404';
      case value126410:
        return '126410';
      case value126411:
        return '126411';
      case value126412:
        return '126412';
      case value126413:
        return '126413';
      case value126500:
        return '126500';
      case value126501:
        return '126501';
      case value126502:
        return '126502';
      case value126503:
        return '126503';
      case value126510:
        return '126510';
      case value126511:
        return '126511';
      case value126512:
        return '126512';
      case value126513:
        return '126513';
      case value126514:
        return '126514';
      case value126515:
        return '126515';
      case value126516:
        return '126516';
      case value126517:
        return '126517';
      case value126518:
        return '126518';
      case value126519:
        return '126519';
      case value126520:
        return '126520';
      case value126600:
        return '126600';
      case value126601:
        return '126601';
      case value126602:
        return '126602';
      case value126603:
        return '126603';
      case value126604:
        return '126604';
      case value126605:
        return '126605';
      case value126606:
        return '126606';
      case value126700:
        return '126700';
      case value126701:
        return '126701';
      case value126702:
        return '126702';
      case value126703:
        return '126703';
      case value126704:
        return '126704';
      case value126705:
        return '126705';
      case value126706:
        return '126706';
      case value126707:
        return '126707';
      case value126708:
        return '126708';
      case value126709:
        return '126709';
      case value126710:
        return '126710';
      case value126711:
        return '126711';
      case value126712:
        return '126712';
      case value126713:
        return '126713';
      case value126714:
        return '126714';
      case value126715:
        return '126715';
      case value126716:
        return '126716';
      case value126801:
        return '126801';
      case value126802:
        return '126802';
      case value126803:
        return '126803';
      case value126804:
        return '126804';
      case value126805:
        return '126805';
      case value126806:
        return '126806';
      case value126807:
        return '126807';
      case value126808:
        return '126808';
      case value126809:
        return '126809';
      case value126810:
        return '126810';
      case value126811:
        return '126811';
      case read:
        return 'read';
      case vread:
        return 'vread';
      case update:
        return 'update';
      case patch:
        return 'patch';
      case delete:
        return 'delete';
      case history:
        return 'history';
      case history_instance:
        return 'history-instance';
      case history_type:
        return 'history-type';
      case history_system:
        return 'history-system';
      case create:
        return 'create';
      case search:
        return 'search';
      case search_type:
        return 'search-type';
      case search_system:
        return 'search-system';
      case capabilities:
        return 'capabilities';
      case transaction:
        return 'transaction';
      case batch:
        return 'batch';
      case operation:
        return 'operation';
    }
  }

  /// Returns a [String] from a [AuditEventSubType] enum.
  String toJson() => toString();

  /// Returns a [AuditEventSubType] from a [String] enum.
  static AuditEventSubType fromString(String str) {
    switch (str) {
      case 'ARCHIVE':
        return AuditEventSubType.ARCHIVE;
      case 'AR':
        return AuditEventSubType.AR;
      case 'AS':
        return AuditEventSubType.AS;
      case 'AU':
        return AuditEventSubType.AU;
      case 'BDUS':
        return AuditEventSubType.BDUS;
      case 'BI':
        return AuditEventSubType.BI;
      case 'BMD':
        return AuditEventSubType.BMD;
      case 'CAD':
        return AuditEventSubType.CAD;
      case 'CAPTURE':
        return AuditEventSubType.CAPTURE;
      case 'CD':
        return AuditEventSubType.CD;
      case 'CF':
        return AuditEventSubType.CF;
      case 'COMP':
        return AuditEventSubType.COMP;
      case 'CP':
        return AuditEventSubType.CP;
      case 'CR':
        return AuditEventSubType.CR;
      case 'CS':
        return AuditEventSubType.CS;
      case 'CT':
        return AuditEventSubType.CT;
      case 'DD':
        return AuditEventSubType.DD;
      case 'DF':
        return AuditEventSubType.DF;
      case 'DG':
        return AuditEventSubType.DG;
      case 'DM':
        return AuditEventSubType.DM;
      case 'DOCD':
        return AuditEventSubType.DOCD;
      case 'DS':
        return AuditEventSubType.DS;
      case 'DSS':
        return AuditEventSubType.DSS;
      case 'DX':
        return AuditEventSubType.DX;
      case 'EC':
        return AuditEventSubType.EC;
      case 'ECG':
        return AuditEventSubType.ECG;
      case 'EPS':
        return AuditEventSubType.EPS;
      case 'ES':
        return AuditEventSubType.ES;
      case 'F':
        return AuditEventSubType.F;
      case 'FA':
        return AuditEventSubType.FA;
      case 'FC':
        return AuditEventSubType.FC;
      case 'FILMD':
        return AuditEventSubType.FILMD;
      case 'FP':
        return AuditEventSubType.FP;
      case 'FS':
        return AuditEventSubType.FS;
      case 'GM':
        return AuditEventSubType.GM;
      case 'H':
        return AuditEventSubType.H;
      case 'HC':
        return AuditEventSubType.HC;
      case 'HD':
        return AuditEventSubType.HD;
      case 'IO':
        return AuditEventSubType.IO;
      case 'IVOCT':
        return AuditEventSubType.IVOCT;
      case 'IVUS':
        return AuditEventSubType.IVUS;
      case 'KER':
        return AuditEventSubType.KER;
      case 'KO':
        return AuditEventSubType.KO;
      case 'LEN':
        return AuditEventSubType.LEN;
      case 'LOG':
        return AuditEventSubType.LOG;
      case 'LP':
        return AuditEventSubType.LP;
      case 'LS':
        return AuditEventSubType.LS;
      case 'M':
        return AuditEventSubType.M;
      case 'MA':
        return AuditEventSubType.MA;
      case 'MC':
        return AuditEventSubType.MC;
      case 'MCD':
        return AuditEventSubType.MCD;
      case 'MEDIM':
        return AuditEventSubType.MEDIM;
      case 'MG':
        return AuditEventSubType.MG;
      case 'MP':
        return AuditEventSubType.MP;
      case 'MR':
        return AuditEventSubType.MR;
      case 'MS':
        return AuditEventSubType.MS;
      case 'NEARLINE':
        return AuditEventSubType.NEARLINE;
      case 'NM':
        return AuditEventSubType.NM;
      case 'OAM':
        return AuditEventSubType.OAM;
      case 'OCT':
        return AuditEventSubType.OCT;
      case 'OFFLINE':
        return AuditEventSubType.OFFLINE;
      case 'ONLINE':
        return AuditEventSubType.ONLINE;
      case 'OP':
        return AuditEventSubType.OP;
      case 'OPM':
        return AuditEventSubType.OPM;
      case 'OPR':
        return AuditEventSubType.OPR;
      case 'OPT':
        return AuditEventSubType.OPT;
      case 'OPV':
        return AuditEventSubType.OPV;
      case 'OSS':
        return AuditEventSubType.OSS;
      case 'OT':
        return AuditEventSubType.OT;
      case 'PR':
        return AuditEventSubType.PR;
      case 'PRINT':
        return AuditEventSubType.PRINT;
      case 'PT':
        return AuditEventSubType.PT;
      case 'PX':
        return AuditEventSubType.PX;
      case 'REG':
        return AuditEventSubType.REG;
      case 'RF':
        return AuditEventSubType.RF;
      case 'RG':
        return AuditEventSubType.RG;
      case 'RT':
        return AuditEventSubType.RT;
      case 'RTDOSE':
        return AuditEventSubType.RTDOSE;
      case 'RTIMAGE':
        return AuditEventSubType.RTIMAGE;
      case 'RTPLAN':
        return AuditEventSubType.RTPLAN;
      case 'RTRECORD':
        return AuditEventSubType.RTRECORD;
      case 'RTSTRUCT':
        return AuditEventSubType.RTSTRUCT;
      case 'SEG':
        return AuditEventSubType.SEG;
      case 'SM':
        return AuditEventSubType.SM;
      case 'SMR':
        return AuditEventSubType.SMR;
      case 'SR':
        return AuditEventSubType.SR;
      case 'SRF':
        return AuditEventSubType.SRF;
      case 'ST':
        return AuditEventSubType.ST;
      case 'TG':
        return AuditEventSubType.TG;
      case 'U':
        return AuditEventSubType.U;
      case 'UNAVAILABLE':
        return AuditEventSubType.UNAVAILABLE;
      case 'US':
        return AuditEventSubType.US;
      case 'VA':
        return AuditEventSubType.VA;
      case 'VF':
        return AuditEventSubType.VF;
      case 'VIDD':
        return AuditEventSubType.VIDD;
      case 'WSD':
        return AuditEventSubType.WSD;
      case 'XA':
        return AuditEventSubType.XA;
      case 'XC':
        return AuditEventSubType.XC;
      case '109001':
        return AuditEventSubType.value109001;
      case '109002':
        return AuditEventSubType.value109002;
      case '109003':
        return AuditEventSubType.value109003;
      case '109004':
        return AuditEventSubType.value109004;
      case '109005':
        return AuditEventSubType.value109005;
      case '109006':
        return AuditEventSubType.value109006;
      case '109007':
        return AuditEventSubType.value109007;
      case '109008':
        return AuditEventSubType.value109008;
      case '109009':
        return AuditEventSubType.value109009;
      case '109010':
        return AuditEventSubType.value109010;
      case '109011':
        return AuditEventSubType.value109011;
      case '109012':
        return AuditEventSubType.value109012;
      case '109013':
        return AuditEventSubType.value109013;
      case '109014':
        return AuditEventSubType.value109014;
      case '109015':
        return AuditEventSubType.value109015;
      case '109016':
        return AuditEventSubType.value109016;
      case '109017':
        return AuditEventSubType.value109017;
      case '109018':
        return AuditEventSubType.value109018;
      case '109019':
        return AuditEventSubType.value109019;
      case '109020':
        return AuditEventSubType.value109020;
      case '109021':
        return AuditEventSubType.value109021;
      case '109022':
        return AuditEventSubType.value109022;
      case '109023':
        return AuditEventSubType.value109023;
      case '109024':
        return AuditEventSubType.value109024;
      case '109025':
        return AuditEventSubType.value109025;
      case '109026':
        return AuditEventSubType.value109026;
      case '109027':
        return AuditEventSubType.value109027;
      case '109028':
        return AuditEventSubType.value109028;
      case '109029':
        return AuditEventSubType.value109029;
      case '109030':
        return AuditEventSubType.value109030;
      case '109031':
        return AuditEventSubType.value109031;
      case '109032':
        return AuditEventSubType.value109032;
      case '109033':
        return AuditEventSubType.value109033;
      case '109034':
        return AuditEventSubType.value109034;
      case '109035':
        return AuditEventSubType.value109035;
      case '109036':
        return AuditEventSubType.value109036;
      case '109037':
        return AuditEventSubType.value109037;
      case '109038':
        return AuditEventSubType.value109038;
      case '109039':
        return AuditEventSubType.value109039;
      case '109040':
        return AuditEventSubType.value109040;
      case '109041':
        return AuditEventSubType.value109041;
      case '109042':
        return AuditEventSubType.value109042;
      case '109043':
        return AuditEventSubType.value109043;
      case '109044':
        return AuditEventSubType.value109044;
      case '109045':
        return AuditEventSubType.value109045;
      case '109046':
        return AuditEventSubType.value109046;
      case '109047':
        return AuditEventSubType.value109047;
      case '109048':
        return AuditEventSubType.value109048;
      case '109049':
        return AuditEventSubType.value109049;
      case '109050':
        return AuditEventSubType.value109050;
      case '109051':
        return AuditEventSubType.value109051;
      case '109052':
        return AuditEventSubType.value109052;
      case '109053':
        return AuditEventSubType.value109053;
      case '109054':
        return AuditEventSubType.value109054;
      case '109055':
        return AuditEventSubType.value109055;
      case '109056':
        return AuditEventSubType.value109056;
      case '109057':
        return AuditEventSubType.value109057;
      case '109058':
        return AuditEventSubType.value109058;
      case '109059':
        return AuditEventSubType.value109059;
      case '109060':
        return AuditEventSubType.value109060;
      case '109061':
        return AuditEventSubType.value109061;
      case '109063':
        return AuditEventSubType.value109063;
      case '109070':
        return AuditEventSubType.value109070;
      case '109071':
        return AuditEventSubType.value109071;
      case '109072':
        return AuditEventSubType.value109072;
      case '109073':
        return AuditEventSubType.value109073;
      case '109080':
        return AuditEventSubType.value109080;
      case '109081':
        return AuditEventSubType.value109081;
      case '109082':
        return AuditEventSubType.value109082;
      case '109083':
        return AuditEventSubType.value109083;
      case '109091':
        return AuditEventSubType.value109091;
      case '109092':
        return AuditEventSubType.value109092;
      case '109093':
        return AuditEventSubType.value109093;
      case '109094':
        return AuditEventSubType.value109094;
      case '109095':
        return AuditEventSubType.value109095;
      case '109096':
        return AuditEventSubType.value109096;
      case '109101':
        return AuditEventSubType.value109101;
      case '109102':
        return AuditEventSubType.value109102;
      case '109103':
        return AuditEventSubType.value109103;
      case '109104':
        return AuditEventSubType.value109104;
      case '109105':
        return AuditEventSubType.value109105;
      case '109106':
        return AuditEventSubType.value109106;
      case '109110':
        return AuditEventSubType.value109110;
      case '109111':
        return AuditEventSubType.value109111;
      case '109112':
        return AuditEventSubType.value109112;
      case '109113':
        return AuditEventSubType.value109113;
      case '109114':
        return AuditEventSubType.value109114;
      case '109115':
        return AuditEventSubType.value109115;
      case '109116':
        return AuditEventSubType.value109116;
      case '109117':
        return AuditEventSubType.value109117;
      case '109120':
        return AuditEventSubType.value109120;
      case '109121':
        return AuditEventSubType.value109121;
      case '109122':
        return AuditEventSubType.value109122;
      case '109123':
        return AuditEventSubType.value109123;
      case '109124':
        return AuditEventSubType.value109124;
      case '109125':
        return AuditEventSubType.value109125;
      case '109132':
        return AuditEventSubType.value109132;
      case '109133':
        return AuditEventSubType.value109133;
      case '109134':
        return AuditEventSubType.value109134;
      case '109135':
        return AuditEventSubType.value109135;
      case '109136':
        return AuditEventSubType.value109136;
      case '109200':
        return AuditEventSubType.value109200;
      case '109201':
        return AuditEventSubType.value109201;
      case '109202':
        return AuditEventSubType.value109202;
      case '109203':
        return AuditEventSubType.value109203;
      case '109204':
        return AuditEventSubType.value109204;
      case '109205':
        return AuditEventSubType.value109205;
      case '109206':
        return AuditEventSubType.value109206;
      case '109207':
        return AuditEventSubType.value109207;
      case '109208':
        return AuditEventSubType.value109208;
      case '109209':
        return AuditEventSubType.value109209;
      case '109210':
        return AuditEventSubType.value109210;
      case '109211':
        return AuditEventSubType.value109211;
      case '109212':
        return AuditEventSubType.value109212;
      case '109213':
        return AuditEventSubType.value109213;
      case '109214':
        return AuditEventSubType.value109214;
      case '109215':
        return AuditEventSubType.value109215;
      case '109216':
        return AuditEventSubType.value109216;
      case '109217':
        return AuditEventSubType.value109217;
      case '109218':
        return AuditEventSubType.value109218;
      case '109219':
        return AuditEventSubType.value109219;
      case '109220':
        return AuditEventSubType.value109220;
      case '109221':
        return AuditEventSubType.value109221;
      case '109222':
        return AuditEventSubType.value109222;
      case '109701':
        return AuditEventSubType.value109701;
      case '109702':
        return AuditEventSubType.value109702;
      case '109703':
        return AuditEventSubType.value109703;
      case '109704':
        return AuditEventSubType.value109704;
      case '109705':
        return AuditEventSubType.value109705;
      case '109706':
        return AuditEventSubType.value109706;
      case '109707':
        return AuditEventSubType.value109707;
      case '109708':
        return AuditEventSubType.value109708;
      case '109709':
        return AuditEventSubType.value109709;
      case '109710':
        return AuditEventSubType.value109710;
      case '109801':
        return AuditEventSubType.value109801;
      case '109802':
        return AuditEventSubType.value109802;
      case '109803':
        return AuditEventSubType.value109803;
      case '109804':
        return AuditEventSubType.value109804;
      case '109805':
        return AuditEventSubType.value109805;
      case '109806':
        return AuditEventSubType.value109806;
      case '109807':
        return AuditEventSubType.value109807;
      case '109808':
        return AuditEventSubType.value109808;
      case '109809':
        return AuditEventSubType.value109809;
      case '109810':
        return AuditEventSubType.value109810;
      case '109811':
        return AuditEventSubType.value109811;
      case '109812':
        return AuditEventSubType.value109812;
      case '109813':
        return AuditEventSubType.value109813;
      case '109814':
        return AuditEventSubType.value109814;
      case '109815':
        return AuditEventSubType.value109815;
      case '109816':
        return AuditEventSubType.value109816;
      case '109817':
        return AuditEventSubType.value109817;
      case '109818':
        return AuditEventSubType.value109818;
      case '109819':
        return AuditEventSubType.value109819;
      case '109820':
        return AuditEventSubType.value109820;
      case '109821':
        return AuditEventSubType.value109821;
      case '109822':
        return AuditEventSubType.value109822;
      case '109823':
        return AuditEventSubType.value109823;
      case '109824':
        return AuditEventSubType.value109824;
      case '109825':
        return AuditEventSubType.value109825;
      case '109826':
        return AuditEventSubType.value109826;
      case '109827':
        return AuditEventSubType.value109827;
      case '109828':
        return AuditEventSubType.value109828;
      case '109829':
        return AuditEventSubType.value109829;
      case '109830':
        return AuditEventSubType.value109830;
      case '109831':
        return AuditEventSubType.value109831;
      case '109832':
        return AuditEventSubType.value109832;
      case '109833':
        return AuditEventSubType.value109833;
      case '109834':
        return AuditEventSubType.value109834;
      case '109835':
        return AuditEventSubType.value109835;
      case '109836':
        return AuditEventSubType.value109836;
      case '109837':
        return AuditEventSubType.value109837;
      case '109838':
        return AuditEventSubType.value109838;
      case '109839':
        return AuditEventSubType.value109839;
      case '109840':
        return AuditEventSubType.value109840;
      case '109841':
        return AuditEventSubType.value109841;
      case '109842':
        return AuditEventSubType.value109842;
      case '109843':
        return AuditEventSubType.value109843;
      case '109844':
        return AuditEventSubType.value109844;
      case '109845':
        return AuditEventSubType.value109845;
      case '109846':
        return AuditEventSubType.value109846;
      case '109847':
        return AuditEventSubType.value109847;
      case '109848':
        return AuditEventSubType.value109848;
      case '109849':
        return AuditEventSubType.value109849;
      case '109850':
        return AuditEventSubType.value109850;
      case '109851':
        return AuditEventSubType.value109851;
      case '109852':
        return AuditEventSubType.value109852;
      case '109853':
        return AuditEventSubType.value109853;
      case '109854':
        return AuditEventSubType.value109854;
      case '109855':
        return AuditEventSubType.value109855;
      case '109856':
        return AuditEventSubType.value109856;
      case '109857':
        return AuditEventSubType.value109857;
      case '109858':
        return AuditEventSubType.value109858;
      case '109859':
        return AuditEventSubType.value109859;
      case '109860':
        return AuditEventSubType.value109860;
      case '109861':
        return AuditEventSubType.value109861;
      case '109862':
        return AuditEventSubType.value109862;
      case '109863':
        return AuditEventSubType.value109863;
      case '109864':
        return AuditEventSubType.value109864;
      case '109865':
        return AuditEventSubType.value109865;
      case '109866':
        return AuditEventSubType.value109866;
      case '109867':
        return AuditEventSubType.value109867;
      case '109868':
        return AuditEventSubType.value109868;
      case '109869':
        return AuditEventSubType.value109869;
      case '109870':
        return AuditEventSubType.value109870;
      case '109871':
        return AuditEventSubType.value109871;
      case '109872':
        return AuditEventSubType.value109872;
      case '109873':
        return AuditEventSubType.value109873;
      case '109874':
        return AuditEventSubType.value109874;
      case '109875':
        return AuditEventSubType.value109875;
      case '109876':
        return AuditEventSubType.value109876;
      case '109877':
        return AuditEventSubType.value109877;
      case '109878':
        return AuditEventSubType.value109878;
      case '109879':
        return AuditEventSubType.value109879;
      case '109880':
        return AuditEventSubType.value109880;
      case '109881':
        return AuditEventSubType.value109881;
      case '109901':
        return AuditEventSubType.value109901;
      case '109902':
        return AuditEventSubType.value109902;
      case '109903':
        return AuditEventSubType.value109903;
      case '109904':
        return AuditEventSubType.value109904;
      case '109905':
        return AuditEventSubType.value109905;
      case '109906':
        return AuditEventSubType.value109906;
      case '109907':
        return AuditEventSubType.value109907;
      case '109908':
        return AuditEventSubType.value109908;
      case '109909':
        return AuditEventSubType.value109909;
      case '109910':
        return AuditEventSubType.value109910;
      case '109911':
        return AuditEventSubType.value109911;
      case '109912':
        return AuditEventSubType.value109912;
      case '109913':
        return AuditEventSubType.value109913;
      case '109914':
        return AuditEventSubType.value109914;
      case '109915':
        return AuditEventSubType.value109915;
      case '109916':
        return AuditEventSubType.value109916;
      case '109917':
        return AuditEventSubType.value109917;
      case '109918':
        return AuditEventSubType.value109918;
      case '109919':
        return AuditEventSubType.value109919;
      case '109920':
        return AuditEventSubType.value109920;
      case '109921':
        return AuditEventSubType.value109921;
      case '109931':
        return AuditEventSubType.value109931;
      case '109932':
        return AuditEventSubType.value109932;
      case '109933':
        return AuditEventSubType.value109933;
      case '109941':
        return AuditEventSubType.value109941;
      case '109943':
        return AuditEventSubType.value109943;
      case '109991':
        return AuditEventSubType.value109991;
      case '109992':
        return AuditEventSubType.value109992;
      case '109993':
        return AuditEventSubType.value109993;
      case '109994':
        return AuditEventSubType.value109994;
      case '109995':
        return AuditEventSubType.value109995;
      case '109996':
        return AuditEventSubType.value109996;
      case '109997':
        return AuditEventSubType.value109997;
      case '109998':
        return AuditEventSubType.value109998;
      case '109999':
        return AuditEventSubType.value109999;
      case '110001':
        return AuditEventSubType.value110001;
      case '110002':
        return AuditEventSubType.value110002;
      case '110003':
        return AuditEventSubType.value110003;
      case '110004':
        return AuditEventSubType.value110004;
      case '110005':
        return AuditEventSubType.value110005;
      case '110006':
        return AuditEventSubType.value110006;
      case '110007':
        return AuditEventSubType.value110007;
      case '110008':
        return AuditEventSubType.value110008;
      case '110009':
        return AuditEventSubType.value110009;
      case '110010':
        return AuditEventSubType.value110010;
      case '110011':
        return AuditEventSubType.value110011;
      case '110012':
        return AuditEventSubType.value110012;
      case '110013':
        return AuditEventSubType.value110013;
      case '110020':
        return AuditEventSubType.value110020;
      case '110021':
        return AuditEventSubType.value110021;
      case '110022':
        return AuditEventSubType.value110022;
      case '110023':
        return AuditEventSubType.value110023;
      case '110024':
        return AuditEventSubType.value110024;
      case '110025':
        return AuditEventSubType.value110025;
      case '110026':
        return AuditEventSubType.value110026;
      case '110027':
        return AuditEventSubType.value110027;
      case '110028':
        return AuditEventSubType.value110028;
      case '110030':
        return AuditEventSubType.value110030;
      case '110031':
        return AuditEventSubType.value110031;
      case '110032':
        return AuditEventSubType.value110032;
      case '110033':
        return AuditEventSubType.value110033;
      case '110034':
        return AuditEventSubType.value110034;
      case '110035':
        return AuditEventSubType.value110035;
      case '110036':
        return AuditEventSubType.value110036;
      case '110037':
        return AuditEventSubType.value110037;
      case '110038':
        return AuditEventSubType.value110038;
      case '110100':
        return AuditEventSubType.value110100;
      case '110101':
        return AuditEventSubType.value110101;
      case '110102':
        return AuditEventSubType.value110102;
      case '110103':
        return AuditEventSubType.value110103;
      case '110104':
        return AuditEventSubType.value110104;
      case '110105':
        return AuditEventSubType.value110105;
      case '110106':
        return AuditEventSubType.value110106;
      case '110107':
        return AuditEventSubType.value110107;
      case '110108':
        return AuditEventSubType.value110108;
      case '110109':
        return AuditEventSubType.value110109;
      case '110110':
        return AuditEventSubType.value110110;
      case '110111':
        return AuditEventSubType.value110111;
      case '110112':
        return AuditEventSubType.value110112;
      case '110113':
        return AuditEventSubType.value110113;
      case '110114':
        return AuditEventSubType.value110114;
      case '110120':
        return AuditEventSubType.value110120;
      case '110121':
        return AuditEventSubType.value110121;
      case '110122':
        return AuditEventSubType.value110122;
      case '110123':
        return AuditEventSubType.value110123;
      case '110124':
        return AuditEventSubType.value110124;
      case '110125':
        return AuditEventSubType.value110125;
      case '110126':
        return AuditEventSubType.value110126;
      case '110127':
        return AuditEventSubType.value110127;
      case '110128':
        return AuditEventSubType.value110128;
      case '110129':
        return AuditEventSubType.value110129;
      case '110130':
        return AuditEventSubType.value110130;
      case '110131':
        return AuditEventSubType.value110131;
      case '110132':
        return AuditEventSubType.value110132;
      case '110133':
        return AuditEventSubType.value110133;
      case '110134':
        return AuditEventSubType.value110134;
      case '110135':
        return AuditEventSubType.value110135;
      case '110136':
        return AuditEventSubType.value110136;
      case '110137':
        return AuditEventSubType.value110137;
      case '110138':
        return AuditEventSubType.value110138;
      case '110139':
        return AuditEventSubType.value110139;
      case '110140':
        return AuditEventSubType.value110140;
      case '110141':
        return AuditEventSubType.value110141;
      case '110142':
        return AuditEventSubType.value110142;
      case '110150':
        return AuditEventSubType.value110150;
      case '110151':
        return AuditEventSubType.value110151;
      case '110152':
        return AuditEventSubType.value110152;
      case '110153':
        return AuditEventSubType.value110153;
      case '110154':
        return AuditEventSubType.value110154;
      case '110155':
        return AuditEventSubType.value110155;
      case '110180':
        return AuditEventSubType.value110180;
      case '110181':
        return AuditEventSubType.value110181;
      case '110182':
        return AuditEventSubType.value110182;
      case '110190':
        return AuditEventSubType.value110190;
      case '110500':
        return AuditEventSubType.value110500;
      case '110501':
        return AuditEventSubType.value110501;
      case '110502':
        return AuditEventSubType.value110502;
      case '110503':
        return AuditEventSubType.value110503;
      case '110504':
        return AuditEventSubType.value110504;
      case '110505':
        return AuditEventSubType.value110505;
      case '110506':
        return AuditEventSubType.value110506;
      case '110507':
        return AuditEventSubType.value110507;
      case '110508':
        return AuditEventSubType.value110508;
      case '110509':
        return AuditEventSubType.value110509;
      case '110510':
        return AuditEventSubType.value110510;
      case '110511':
        return AuditEventSubType.value110511;
      case '110512':
        return AuditEventSubType.value110512;
      case '110513':
        return AuditEventSubType.value110513;
      case '110514':
        return AuditEventSubType.value110514;
      case '110515':
        return AuditEventSubType.value110515;
      case '110516':
        return AuditEventSubType.value110516;
      case '110518':
        return AuditEventSubType.value110518;
      case '110519':
        return AuditEventSubType.value110519;
      case '110521':
        return AuditEventSubType.value110521;
      case '110522':
        return AuditEventSubType.value110522;
      case '110523':
        return AuditEventSubType.value110523;
      case '110524':
        return AuditEventSubType.value110524;
      case '110526':
        return AuditEventSubType.value110526;
      case '110527':
        return AuditEventSubType.value110527;
      case '110528':
        return AuditEventSubType.value110528;
      case '110529':
        return AuditEventSubType.value110529;
      case '110700':
        return AuditEventSubType.value110700;
      case '110701':
        return AuditEventSubType.value110701;
      case '110702':
        return AuditEventSubType.value110702;
      case '110703':
        return AuditEventSubType.value110703;
      case '110704':
        return AuditEventSubType.value110704;
      case '110705':
        return AuditEventSubType.value110705;
      case '110706':
        return AuditEventSubType.value110706;
      case '110800':
        return AuditEventSubType.value110800;
      case '110801':
        return AuditEventSubType.value110801;
      case '110802':
        return AuditEventSubType.value110802;
      case '110803':
        return AuditEventSubType.value110803;
      case '110804':
        return AuditEventSubType.value110804;
      case '110805':
        return AuditEventSubType.value110805;
      case '110806':
        return AuditEventSubType.value110806;
      case '110807':
        return AuditEventSubType.value110807;
      case '110808':
        return AuditEventSubType.value110808;
      case '110809':
        return AuditEventSubType.value110809;
      case '110810':
        return AuditEventSubType.value110810;
      case '110811':
        return AuditEventSubType.value110811;
      case '110812':
        return AuditEventSubType.value110812;
      case '110813':
        return AuditEventSubType.value110813;
      case '110814':
        return AuditEventSubType.value110814;
      case '110815':
        return AuditEventSubType.value110815;
      case '110816':
        return AuditEventSubType.value110816;
      case '110817':
        return AuditEventSubType.value110817;
      case '110818':
        return AuditEventSubType.value110818;
      case '110819':
        return AuditEventSubType.value110819;
      case '110820':
        return AuditEventSubType.value110820;
      case '110821':
        return AuditEventSubType.value110821;
      case '110822':
        return AuditEventSubType.value110822;
      case '110823':
        return AuditEventSubType.value110823;
      case '110824':
        return AuditEventSubType.value110824;
      case '110825':
        return AuditEventSubType.value110825;
      case '110826':
        return AuditEventSubType.value110826;
      case '110827':
        return AuditEventSubType.value110827;
      case '110828':
        return AuditEventSubType.value110828;
      case '110829':
        return AuditEventSubType.value110829;
      case '110830':
        return AuditEventSubType.value110830;
      case '110831':
        return AuditEventSubType.value110831;
      case '110832':
        return AuditEventSubType.value110832;
      case '110833':
        return AuditEventSubType.value110833;
      case '110834':
        return AuditEventSubType.value110834;
      case '110835':
        return AuditEventSubType.value110835;
      case '110836':
        return AuditEventSubType.value110836;
      case '110837':
        return AuditEventSubType.value110837;
      case '110838':
        return AuditEventSubType.value110838;
      case '110839':
        return AuditEventSubType.value110839;
      case '110840':
        return AuditEventSubType.value110840;
      case '110841':
        return AuditEventSubType.value110841;
      case '110842':
        return AuditEventSubType.value110842;
      case '110843':
        return AuditEventSubType.value110843;
      case '110844':
        return AuditEventSubType.value110844;
      case '110845':
        return AuditEventSubType.value110845;
      case '110846':
        return AuditEventSubType.value110846;
      case '110847':
        return AuditEventSubType.value110847;
      case '110848':
        return AuditEventSubType.value110848;
      case '110849':
        return AuditEventSubType.value110849;
      case '110850':
        return AuditEventSubType.value110850;
      case '110851':
        return AuditEventSubType.value110851;
      case '110852':
        return AuditEventSubType.value110852;
      case '110853':
        return AuditEventSubType.value110853;
      case '110854':
        return AuditEventSubType.value110854;
      case '110855':
        return AuditEventSubType.value110855;
      case '110856':
        return AuditEventSubType.value110856;
      case '110857':
        return AuditEventSubType.value110857;
      case '110858':
        return AuditEventSubType.value110858;
      case '110859':
        return AuditEventSubType.value110859;
      case '110860':
        return AuditEventSubType.value110860;
      case '110861':
        return AuditEventSubType.value110861;
      case '110862':
        return AuditEventSubType.value110862;
      case '110863':
        return AuditEventSubType.value110863;
      case '110864':
        return AuditEventSubType.value110864;
      case '110865':
        return AuditEventSubType.value110865;
      case '110866':
        return AuditEventSubType.value110866;
      case '110867':
        return AuditEventSubType.value110867;
      case '110868':
        return AuditEventSubType.value110868;
      case '110869':
        return AuditEventSubType.value110869;
      case '110870':
        return AuditEventSubType.value110870;
      case '110871':
        return AuditEventSubType.value110871;
      case '110872':
        return AuditEventSubType.value110872;
      case '110873':
        return AuditEventSubType.value110873;
      case '110874':
        return AuditEventSubType.value110874;
      case '110875':
        return AuditEventSubType.value110875;
      case '110876':
        return AuditEventSubType.value110876;
      case '110877':
        return AuditEventSubType.value110877;
      case '110901':
        return AuditEventSubType.value110901;
      case '110902':
        return AuditEventSubType.value110902;
      case '110903':
        return AuditEventSubType.value110903;
      case '110904':
        return AuditEventSubType.value110904;
      case '110905':
        return AuditEventSubType.value110905;
      case '110906':
        return AuditEventSubType.value110906;
      case '110907':
        return AuditEventSubType.value110907;
      case '110908':
        return AuditEventSubType.value110908;
      case '110909':
        return AuditEventSubType.value110909;
      case '110910':
        return AuditEventSubType.value110910;
      case '110911':
        return AuditEventSubType.value110911;
      case '111001':
        return AuditEventSubType.value111001;
      case '111002':
        return AuditEventSubType.value111002;
      case '111003':
        return AuditEventSubType.value111003;
      case '111004':
        return AuditEventSubType.value111004;
      case '111005':
        return AuditEventSubType.value111005;
      case '111006':
        return AuditEventSubType.value111006;
      case '111007':
        return AuditEventSubType.value111007;
      case '111008':
        return AuditEventSubType.value111008;
      case '111009':
        return AuditEventSubType.value111009;
      case '111010':
        return AuditEventSubType.value111010;
      case '111011':
        return AuditEventSubType.value111011;
      case '111012':
        return AuditEventSubType.value111012;
      case '111013':
        return AuditEventSubType.value111013;
      case '111014':
        return AuditEventSubType.value111014;
      case '111015':
        return AuditEventSubType.value111015;
      case '111016':
        return AuditEventSubType.value111016;
      case '111017':
        return AuditEventSubType.value111017;
      case '111018':
        return AuditEventSubType.value111018;
      case '111019':
        return AuditEventSubType.value111019;
      case '111020':
        return AuditEventSubType.value111020;
      case '111021':
        return AuditEventSubType.value111021;
      case '111022':
        return AuditEventSubType.value111022;
      case '111023':
        return AuditEventSubType.value111023;
      case '111024':
        return AuditEventSubType.value111024;
      case '111025':
        return AuditEventSubType.value111025;
      case '111026':
        return AuditEventSubType.value111026;
      case '111027':
        return AuditEventSubType.value111027;
      case '111028':
        return AuditEventSubType.value111028;
      case '111029':
        return AuditEventSubType.value111029;
      case '111030':
        return AuditEventSubType.value111030;
      case '111031':
        return AuditEventSubType.value111031;
      case '111032':
        return AuditEventSubType.value111032;
      case '111033':
        return AuditEventSubType.value111033;
      case '111034':
        return AuditEventSubType.value111034;
      case '111035':
        return AuditEventSubType.value111035;
      case '111036':
        return AuditEventSubType.value111036;
      case '111037':
        return AuditEventSubType.value111037;
      case '111038':
        return AuditEventSubType.value111038;
      case '111039':
        return AuditEventSubType.value111039;
      case '111040':
        return AuditEventSubType.value111040;
      case '111041':
        return AuditEventSubType.value111041;
      case '111042':
        return AuditEventSubType.value111042;
      case '111043':
        return AuditEventSubType.value111043;
      case '111044':
        return AuditEventSubType.value111044;
      case '111045':
        return AuditEventSubType.value111045;
      case '111046':
        return AuditEventSubType.value111046;
      case '111047':
        return AuditEventSubType.value111047;
      case '111048':
        return AuditEventSubType.value111048;
      case '111049':
        return AuditEventSubType.value111049;
      case '111050':
        return AuditEventSubType.value111050;
      case '111051':
        return AuditEventSubType.value111051;
      case '111052':
        return AuditEventSubType.value111052;
      case '111053':
        return AuditEventSubType.value111053;
      case '111054':
        return AuditEventSubType.value111054;
      case '111055':
        return AuditEventSubType.value111055;
      case '111056':
        return AuditEventSubType.value111056;
      case '111057':
        return AuditEventSubType.value111057;
      case '111058':
        return AuditEventSubType.value111058;
      case '111059':
        return AuditEventSubType.value111059;
      case '111060':
        return AuditEventSubType.value111060;
      case '111061':
        return AuditEventSubType.value111061;
      case '111062':
        return AuditEventSubType.value111062;
      case '111063':
        return AuditEventSubType.value111063;
      case '111064':
        return AuditEventSubType.value111064;
      case '111065':
        return AuditEventSubType.value111065;
      case '111066':
        return AuditEventSubType.value111066;
      case '111069':
        return AuditEventSubType.value111069;
      case '111071':
        return AuditEventSubType.value111071;
      case '111072':
        return AuditEventSubType.value111072;
      case '111081':
        return AuditEventSubType.value111081;
      case '111086':
        return AuditEventSubType.value111086;
      case '111087':
        return AuditEventSubType.value111087;
      case '111088':
        return AuditEventSubType.value111088;
      case '111089':
        return AuditEventSubType.value111089;
      case '111090':
        return AuditEventSubType.value111090;
      case '111091':
        return AuditEventSubType.value111091;
      case '111092':
        return AuditEventSubType.value111092;
      case '111093':
        return AuditEventSubType.value111093;
      case '111099':
        return AuditEventSubType.value111099;
      case '111100':
        return AuditEventSubType.value111100;
      case '111101':
        return AuditEventSubType.value111101;
      case '111102':
        return AuditEventSubType.value111102;
      case '111103':
        return AuditEventSubType.value111103;
      case '111104':
        return AuditEventSubType.value111104;
      case '111105':
        return AuditEventSubType.value111105;
      case '111111':
        return AuditEventSubType.value111111;
      case '111112':
        return AuditEventSubType.value111112;
      case '111113':
        return AuditEventSubType.value111113;
      case '111120':
        return AuditEventSubType.value111120;
      case '111121':
        return AuditEventSubType.value111121;
      case '111122':
        return AuditEventSubType.value111122;
      case '111123':
        return AuditEventSubType.value111123;
      case '111124':
        return AuditEventSubType.value111124;
      case '111125':
        return AuditEventSubType.value111125;
      case '111126':
        return AuditEventSubType.value111126;
      case '111127':
        return AuditEventSubType.value111127;
      case '111128':
        return AuditEventSubType.value111128;
      case '111129':
        return AuditEventSubType.value111129;
      case '111130':
        return AuditEventSubType.value111130;
      case '111135':
        return AuditEventSubType.value111135;
      case '111136':
        return AuditEventSubType.value111136;
      case '111137':
        return AuditEventSubType.value111137;
      case '111138':
        return AuditEventSubType.value111138;
      case '111139':
        return AuditEventSubType.value111139;
      case '111140':
        return AuditEventSubType.value111140;
      case '111141':
        return AuditEventSubType.value111141;
      case '111142':
        return AuditEventSubType.value111142;
      case '111143':
        return AuditEventSubType.value111143;
      case '111144':
        return AuditEventSubType.value111144;
      case '111145':
        return AuditEventSubType.value111145;
      case '111146':
        return AuditEventSubType.value111146;
      case '111147':
        return AuditEventSubType.value111147;
      case '111148':
        return AuditEventSubType.value111148;
      case '111149':
        return AuditEventSubType.value111149;
      case '111150':
        return AuditEventSubType.value111150;
      case '111151':
        return AuditEventSubType.value111151;
      case '111152':
        return AuditEventSubType.value111152;
      case '111153':
        return AuditEventSubType.value111153;
      case '111154':
        return AuditEventSubType.value111154;
      case '111155':
        return AuditEventSubType.value111155;
      case '111156':
        return AuditEventSubType.value111156;
      case '111157':
        return AuditEventSubType.value111157;
      case '111158':
        return AuditEventSubType.value111158;
      case '111159':
        return AuditEventSubType.value111159;
      case '111168':
        return AuditEventSubType.value111168;
      case '111170':
        return AuditEventSubType.value111170;
      case '111171':
        return AuditEventSubType.value111171;
      case '111172':
        return AuditEventSubType.value111172;
      case '111173':
        return AuditEventSubType.value111173;
      case '111174':
        return AuditEventSubType.value111174;
      case '111175':
        return AuditEventSubType.value111175;
      case '111176':
        return AuditEventSubType.value111176;
      case '111177':
        return AuditEventSubType.value111177;
      case '111178':
        return AuditEventSubType.value111178;
      case '111179':
        return AuditEventSubType.value111179;
      case '111180':
        return AuditEventSubType.value111180;
      case '111181':
        return AuditEventSubType.value111181;
      case '111182':
        return AuditEventSubType.value111182;
      case '111183':
        return AuditEventSubType.value111183;
      case '111184':
        return AuditEventSubType.value111184;
      case '111185':
        return AuditEventSubType.value111185;
      case '111186':
        return AuditEventSubType.value111186;
      case '111187':
        return AuditEventSubType.value111187;
      case '111188':
        return AuditEventSubType.value111188;
      case '111189':
        return AuditEventSubType.value111189;
      case '111190':
        return AuditEventSubType.value111190;
      case '111191':
        return AuditEventSubType.value111191;
      case '111192':
        return AuditEventSubType.value111192;
      case '111193':
        return AuditEventSubType.value111193;
      case '111194':
        return AuditEventSubType.value111194;
      case '111195':
        return AuditEventSubType.value111195;
      case '111196':
        return AuditEventSubType.value111196;
      case '111197':
        return AuditEventSubType.value111197;
      case '111198':
        return AuditEventSubType.value111198;
      case '111199':
        return AuditEventSubType.value111199;
      case '111200':
        return AuditEventSubType.value111200;
      case '111201':
        return AuditEventSubType.value111201;
      case '111202':
        return AuditEventSubType.value111202;
      case '111203':
        return AuditEventSubType.value111203;
      case '111204':
        return AuditEventSubType.value111204;
      case '111205':
        return AuditEventSubType.value111205;
      case '111206':
        return AuditEventSubType.value111206;
      case '111207':
        return AuditEventSubType.value111207;
      case '111208':
        return AuditEventSubType.value111208;
      case '111209':
        return AuditEventSubType.value111209;
      case '111210':
        return AuditEventSubType.value111210;
      case '111211':
        return AuditEventSubType.value111211;
      case '111212':
        return AuditEventSubType.value111212;
      case '111213':
        return AuditEventSubType.value111213;
      case '111214':
        return AuditEventSubType.value111214;
      case '111215':
        return AuditEventSubType.value111215;
      case '111216':
        return AuditEventSubType.value111216;
      case '111217':
        return AuditEventSubType.value111217;
      case '111218':
        return AuditEventSubType.value111218;
      case '111219':
        return AuditEventSubType.value111219;
      case '111220':
        return AuditEventSubType.value111220;
      case '111221':
        return AuditEventSubType.value111221;
      case '111222':
        return AuditEventSubType.value111222;
      case '111223':
        return AuditEventSubType.value111223;
      case '111224':
        return AuditEventSubType.value111224;
      case '111225':
        return AuditEventSubType.value111225;
      case '111233':
        return AuditEventSubType.value111233;
      case '111234':
        return AuditEventSubType.value111234;
      case '111235':
        return AuditEventSubType.value111235;
      case '111236':
        return AuditEventSubType.value111236;
      case '111237':
        return AuditEventSubType.value111237;
      case '111238':
        return AuditEventSubType.value111238;
      case '111239':
        return AuditEventSubType.value111239;
      case '111240':
        return AuditEventSubType.value111240;
      case '111241':
        return AuditEventSubType.value111241;
      case '111242':
        return AuditEventSubType.value111242;
      case '111243':
        return AuditEventSubType.value111243;
      case '111244':
        return AuditEventSubType.value111244;
      case '111245':
        return AuditEventSubType.value111245;
      case '111248':
        return AuditEventSubType.value111248;
      case '111249':
        return AuditEventSubType.value111249;
      case '111250':
        return AuditEventSubType.value111250;
      case '111251':
        return AuditEventSubType.value111251;
      case '111252':
        return AuditEventSubType.value111252;
      case '111253':
        return AuditEventSubType.value111253;
      case '111254':
        return AuditEventSubType.value111254;
      case '111255':
        return AuditEventSubType.value111255;
      case '111256':
        return AuditEventSubType.value111256;
      case '111257':
        return AuditEventSubType.value111257;
      case '111258':
        return AuditEventSubType.value111258;
      case '111259':
        return AuditEventSubType.value111259;
      case '111260':
        return AuditEventSubType.value111260;
      case '111262':
        return AuditEventSubType.value111262;
      case '111263':
        return AuditEventSubType.value111263;
      case '111264':
        return AuditEventSubType.value111264;
      case '111265':
        return AuditEventSubType.value111265;
      case '111269':
        return AuditEventSubType.value111269;
      case '111271':
        return AuditEventSubType.value111271;
      case '111273':
        return AuditEventSubType.value111273;
      case '111277':
        return AuditEventSubType.value111277;
      case '111278':
        return AuditEventSubType.value111278;
      case '111279':
        return AuditEventSubType.value111279;
      case '111281':
        return AuditEventSubType.value111281;
      case '111283':
        return AuditEventSubType.value111283;
      case '111284':
        return AuditEventSubType.value111284;
      case '111285':
        return AuditEventSubType.value111285;
      case '111286':
        return AuditEventSubType.value111286;
      case '111287':
        return AuditEventSubType.value111287;
      case '111288':
        return AuditEventSubType.value111288;
      case '111290':
        return AuditEventSubType.value111290;
      case '111291':
        return AuditEventSubType.value111291;
      case '111292':
        return AuditEventSubType.value111292;
      case '111293':
        return AuditEventSubType.value111293;
      case '111294':
        return AuditEventSubType.value111294;
      case '111296':
        return AuditEventSubType.value111296;
      case '111297':
        return AuditEventSubType.value111297;
      case '111298':
        return AuditEventSubType.value111298;
      case '111299':
        return AuditEventSubType.value111299;
      case '111300':
        return AuditEventSubType.value111300;
      case '111301':
        return AuditEventSubType.value111301;
      case '111302':
        return AuditEventSubType.value111302;
      case '111303':
        return AuditEventSubType.value111303;
      case '111304':
        return AuditEventSubType.value111304;
      case '111305':
        return AuditEventSubType.value111305;
      case '111306':
        return AuditEventSubType.value111306;
      case '111307':
        return AuditEventSubType.value111307;
      case '111308':
        return AuditEventSubType.value111308;
      case '111309':
        return AuditEventSubType.value111309;
      case '111310':
        return AuditEventSubType.value111310;
      case '111311':
        return AuditEventSubType.value111311;
      case '111312':
        return AuditEventSubType.value111312;
      case '111313':
        return AuditEventSubType.value111313;
      case '111314':
        return AuditEventSubType.value111314;
      case '111315':
        return AuditEventSubType.value111315;
      case '111316':
        return AuditEventSubType.value111316;
      case '111317':
        return AuditEventSubType.value111317;
      case '111318':
        return AuditEventSubType.value111318;
      case '111320':
        return AuditEventSubType.value111320;
      case '111321':
        return AuditEventSubType.value111321;
      case '111322':
        return AuditEventSubType.value111322;
      case '111323':
        return AuditEventSubType.value111323;
      case '111324':
        return AuditEventSubType.value111324;
      case '111325':
        return AuditEventSubType.value111325;
      case '111326':
        return AuditEventSubType.value111326;
      case '111327':
        return AuditEventSubType.value111327;
      case '111328':
        return AuditEventSubType.value111328;
      case '111329':
        return AuditEventSubType.value111329;
      case '111330':
        return AuditEventSubType.value111330;
      case '111331':
        return AuditEventSubType.value111331;
      case '111332':
        return AuditEventSubType.value111332;
      case '111333':
        return AuditEventSubType.value111333;
      case '111334':
        return AuditEventSubType.value111334;
      case '111335':
        return AuditEventSubType.value111335;
      case '111336':
        return AuditEventSubType.value111336;
      case '111338':
        return AuditEventSubType.value111338;
      case '111340':
        return AuditEventSubType.value111340;
      case '111341':
        return AuditEventSubType.value111341;
      case '111342':
        return AuditEventSubType.value111342;
      case '111343':
        return AuditEventSubType.value111343;
      case '111344':
        return AuditEventSubType.value111344;
      case '111345':
        return AuditEventSubType.value111345;
      case '111346':
        return AuditEventSubType.value111346;
      case '111347':
        return AuditEventSubType.value111347;
      case '111350':
        return AuditEventSubType.value111350;
      case '111351':
        return AuditEventSubType.value111351;
      case '111352':
        return AuditEventSubType.value111352;
      case '111353':
        return AuditEventSubType.value111353;
      case '111354':
        return AuditEventSubType.value111354;
      case '111355':
        return AuditEventSubType.value111355;
      case '111356':
        return AuditEventSubType.value111356;
      case '111357':
        return AuditEventSubType.value111357;
      case '111358':
        return AuditEventSubType.value111358;
      case '111359':
        return AuditEventSubType.value111359;
      case '111360':
        return AuditEventSubType.value111360;
      case '111361':
        return AuditEventSubType.value111361;
      case '111362':
        return AuditEventSubType.value111362;
      case '111363':
        return AuditEventSubType.value111363;
      case '111364':
        return AuditEventSubType.value111364;
      case '111365':
        return AuditEventSubType.value111365;
      case '111366':
        return AuditEventSubType.value111366;
      case '111367':
        return AuditEventSubType.value111367;
      case '111368':
        return AuditEventSubType.value111368;
      case '111369':
        return AuditEventSubType.value111369;
      case '111370':
        return AuditEventSubType.value111370;
      case '111371':
        return AuditEventSubType.value111371;
      case '111372':
        return AuditEventSubType.value111372;
      case '111373':
        return AuditEventSubType.value111373;
      case '111374':
        return AuditEventSubType.value111374;
      case '111375':
        return AuditEventSubType.value111375;
      case '111376':
        return AuditEventSubType.value111376;
      case '111377':
        return AuditEventSubType.value111377;
      case '111380':
        return AuditEventSubType.value111380;
      case '111381':
        return AuditEventSubType.value111381;
      case '111382':
        return AuditEventSubType.value111382;
      case '111383':
        return AuditEventSubType.value111383;
      case '111384':
        return AuditEventSubType.value111384;
      case '111385':
        return AuditEventSubType.value111385;
      case '111386':
        return AuditEventSubType.value111386;
      case '111387':
        return AuditEventSubType.value111387;
      case '111388':
        return AuditEventSubType.value111388;
      case '111389':
        return AuditEventSubType.value111389;
      case '111390':
        return AuditEventSubType.value111390;
      case '111391':
        return AuditEventSubType.value111391;
      case '111392':
        return AuditEventSubType.value111392;
      case '111393':
        return AuditEventSubType.value111393;
      case '111394':
        return AuditEventSubType.value111394;
      case '111395':
        return AuditEventSubType.value111395;
      case '111396':
        return AuditEventSubType.value111396;
      case '111397':
        return AuditEventSubType.value111397;
      case '111398':
        return AuditEventSubType.value111398;
      case '111399':
        return AuditEventSubType.value111399;
      case '111400':
        return AuditEventSubType.value111400;
      case '111401':
        return AuditEventSubType.value111401;
      case '111402':
        return AuditEventSubType.value111402;
      case '111403':
        return AuditEventSubType.value111403;
      case '111404':
        return AuditEventSubType.value111404;
      case '111405':
        return AuditEventSubType.value111405;
      case '111406':
        return AuditEventSubType.value111406;
      case '111407':
        return AuditEventSubType.value111407;
      case '111408':
        return AuditEventSubType.value111408;
      case '111409':
        return AuditEventSubType.value111409;
      case '111410':
        return AuditEventSubType.value111410;
      case '111411':
        return AuditEventSubType.value111411;
      case '111412':
        return AuditEventSubType.value111412;
      case '111413':
        return AuditEventSubType.value111413;
      case '111414':
        return AuditEventSubType.value111414;
      case '111415':
        return AuditEventSubType.value111415;
      case '111416':
        return AuditEventSubType.value111416;
      case '111417':
        return AuditEventSubType.value111417;
      case '111418':
        return AuditEventSubType.value111418;
      case '111419':
        return AuditEventSubType.value111419;
      case '111420':
        return AuditEventSubType.value111420;
      case '111421':
        return AuditEventSubType.value111421;
      case '111423':
        return AuditEventSubType.value111423;
      case '111424':
        return AuditEventSubType.value111424;
      case '111425':
        return AuditEventSubType.value111425;
      case '111426':
        return AuditEventSubType.value111426;
      case '111427':
        return AuditEventSubType.value111427;
      case '111428':
        return AuditEventSubType.value111428;
      case '111429':
        return AuditEventSubType.value111429;
      case '111430':
        return AuditEventSubType.value111430;
      case '111431':
        return AuditEventSubType.value111431;
      case '111432':
        return AuditEventSubType.value111432;
      case '111433':
        return AuditEventSubType.value111433;
      case '111434':
        return AuditEventSubType.value111434;
      case '111435':
        return AuditEventSubType.value111435;
      case '111436':
        return AuditEventSubType.value111436;
      case '111437':
        return AuditEventSubType.value111437;
      case '111438':
        return AuditEventSubType.value111438;
      case '111439':
        return AuditEventSubType.value111439;
      case '111440':
        return AuditEventSubType.value111440;
      case '111441':
        return AuditEventSubType.value111441;
      case '111442':
        return AuditEventSubType.value111442;
      case '111443':
        return AuditEventSubType.value111443;
      case '111444':
        return AuditEventSubType.value111444;
      case '111445':
        return AuditEventSubType.value111445;
      case '111446':
        return AuditEventSubType.value111446;
      case '111447':
        return AuditEventSubType.value111447;
      case '111448':
        return AuditEventSubType.value111448;
      case '111449':
        return AuditEventSubType.value111449;
      case '111450':
        return AuditEventSubType.value111450;
      case '111451':
        return AuditEventSubType.value111451;
      case '111452':
        return AuditEventSubType.value111452;
      case '111453':
        return AuditEventSubType.value111453;
      case '111454':
        return AuditEventSubType.value111454;
      case '111455':
        return AuditEventSubType.value111455;
      case '111456':
        return AuditEventSubType.value111456;
      case '111457':
        return AuditEventSubType.value111457;
      case '111458':
        return AuditEventSubType.value111458;
      case '111459':
        return AuditEventSubType.value111459;
      case '111460':
        return AuditEventSubType.value111460;
      case '111461':
        return AuditEventSubType.value111461;
      case '111462':
        return AuditEventSubType.value111462;
      case '111463':
        return AuditEventSubType.value111463;
      case '111464':
        return AuditEventSubType.value111464;
      case '111465':
        return AuditEventSubType.value111465;
      case '111466':
        return AuditEventSubType.value111466;
      case '111467':
        return AuditEventSubType.value111467;
      case '111468':
        return AuditEventSubType.value111468;
      case '111469':
        return AuditEventSubType.value111469;
      case '111470':
        return AuditEventSubType.value111470;
      case '111471':
        return AuditEventSubType.value111471;
      case '111472':
        return AuditEventSubType.value111472;
      case '111473':
        return AuditEventSubType.value111473;
      case '111474':
        return AuditEventSubType.value111474;
      case '111475':
        return AuditEventSubType.value111475;
      case '111476':
        return AuditEventSubType.value111476;
      case '111477':
        return AuditEventSubType.value111477;
      case '111478':
        return AuditEventSubType.value111478;
      case '111479':
        return AuditEventSubType.value111479;
      case '111480':
        return AuditEventSubType.value111480;
      case '111481':
        return AuditEventSubType.value111481;
      case '111482':
        return AuditEventSubType.value111482;
      case '111483':
        return AuditEventSubType.value111483;
      case '111484':
        return AuditEventSubType.value111484;
      case '111485':
        return AuditEventSubType.value111485;
      case '111486':
        return AuditEventSubType.value111486;
      case '111487':
        return AuditEventSubType.value111487;
      case '111488':
        return AuditEventSubType.value111488;
      case '111489':
        return AuditEventSubType.value111489;
      case '111490':
        return AuditEventSubType.value111490;
      case '111491':
        return AuditEventSubType.value111491;
      case '111492':
        return AuditEventSubType.value111492;
      case '111494':
        return AuditEventSubType.value111494;
      case '111495':
        return AuditEventSubType.value111495;
      case '111496':
        return AuditEventSubType.value111496;
      case '111497':
        return AuditEventSubType.value111497;
      case '111498':
        return AuditEventSubType.value111498;
      case '111499':
        return AuditEventSubType.value111499;
      case '111500':
        return AuditEventSubType.value111500;
      case '111501':
        return AuditEventSubType.value111501;
      case '111502':
        return AuditEventSubType.value111502;
      case '111503':
        return AuditEventSubType.value111503;
      case '111504':
        return AuditEventSubType.value111504;
      case '111505':
        return AuditEventSubType.value111505;
      case '111506':
        return AuditEventSubType.value111506;
      case '111507':
        return AuditEventSubType.value111507;
      case '111508':
        return AuditEventSubType.value111508;
      case '111509':
        return AuditEventSubType.value111509;
      case '111510':
        return AuditEventSubType.value111510;
      case '111511':
        return AuditEventSubType.value111511;
      case '111512':
        return AuditEventSubType.value111512;
      case '111513':
        return AuditEventSubType.value111513;
      case '111514':
        return AuditEventSubType.value111514;
      case '111515':
        return AuditEventSubType.value111515;
      case '111516':
        return AuditEventSubType.value111516;
      case '111517':
        return AuditEventSubType.value111517;
      case '111518':
        return AuditEventSubType.value111518;
      case '111519':
        return AuditEventSubType.value111519;
      case '111520':
        return AuditEventSubType.value111520;
      case '111521':
        return AuditEventSubType.value111521;
      case '111522':
        return AuditEventSubType.value111522;
      case '111523':
        return AuditEventSubType.value111523;
      case '111524':
        return AuditEventSubType.value111524;
      case '111525':
        return AuditEventSubType.value111525;
      case '111526':
        return AuditEventSubType.value111526;
      case '111527':
        return AuditEventSubType.value111527;
      case '111528':
        return AuditEventSubType.value111528;
      case '111529':
        return AuditEventSubType.value111529;
      case '111530':
        return AuditEventSubType.value111530;
      case '111531':
        return AuditEventSubType.value111531;
      case '111532':
        return AuditEventSubType.value111532;
      case '111533':
        return AuditEventSubType.value111533;
      case '111534':
        return AuditEventSubType.value111534;
      case '111535':
        return AuditEventSubType.value111535;
      case '111536':
        return AuditEventSubType.value111536;
      case '111537':
        return AuditEventSubType.value111537;
      case '111538':
        return AuditEventSubType.value111538;
      case '111539':
        return AuditEventSubType.value111539;
      case '111540':
        return AuditEventSubType.value111540;
      case '111541':
        return AuditEventSubType.value111541;
      case '111542':
        return AuditEventSubType.value111542;
      case '111543':
        return AuditEventSubType.value111543;
      case '111544':
        return AuditEventSubType.value111544;
      case '111545':
        return AuditEventSubType.value111545;
      case '111546':
        return AuditEventSubType.value111546;
      case '111547':
        return AuditEventSubType.value111547;
      case '111548':
        return AuditEventSubType.value111548;
      case '111549':
        return AuditEventSubType.value111549;
      case '111550':
        return AuditEventSubType.value111550;
      case '111551':
        return AuditEventSubType.value111551;
      case '111552':
        return AuditEventSubType.value111552;
      case '111553':
        return AuditEventSubType.value111553;
      case '111554':
        return AuditEventSubType.value111554;
      case '111555':
        return AuditEventSubType.value111555;
      case '111556':
        return AuditEventSubType.value111556;
      case '111557':
        return AuditEventSubType.value111557;
      case '111558':
        return AuditEventSubType.value111558;
      case '111559':
        return AuditEventSubType.value111559;
      case '111560':
        return AuditEventSubType.value111560;
      case '111561':
        return AuditEventSubType.value111561;
      case '111562':
        return AuditEventSubType.value111562;
      case '111563':
        return AuditEventSubType.value111563;
      case '111564':
        return AuditEventSubType.value111564;
      case '111565':
        return AuditEventSubType.value111565;
      case '111566':
        return AuditEventSubType.value111566;
      case '111567':
        return AuditEventSubType.value111567;
      case '111568':
        return AuditEventSubType.value111568;
      case '111569':
        return AuditEventSubType.value111569;
      case '111570':
        return AuditEventSubType.value111570;
      case '111571':
        return AuditEventSubType.value111571;
      case '111572':
        return AuditEventSubType.value111572;
      case '111573':
        return AuditEventSubType.value111573;
      case '111574':
        return AuditEventSubType.value111574;
      case '111575':
        return AuditEventSubType.value111575;
      case '111576':
        return AuditEventSubType.value111576;
      case '111577':
        return AuditEventSubType.value111577;
      case '111578':
        return AuditEventSubType.value111578;
      case '111579':
        return AuditEventSubType.value111579;
      case '111580':
        return AuditEventSubType.value111580;
      case '111581':
        return AuditEventSubType.value111581;
      case '111582':
        return AuditEventSubType.value111582;
      case '111583':
        return AuditEventSubType.value111583;
      case '111584':
        return AuditEventSubType.value111584;
      case '111585':
        return AuditEventSubType.value111585;
      case '111586':
        return AuditEventSubType.value111586;
      case '111587':
        return AuditEventSubType.value111587;
      case '111590':
        return AuditEventSubType.value111590;
      case '111591':
        return AuditEventSubType.value111591;
      case '111592':
        return AuditEventSubType.value111592;
      case '111593':
        return AuditEventSubType.value111593;
      case '111601':
        return AuditEventSubType.value111601;
      case '111602':
        return AuditEventSubType.value111602;
      case '111603':
        return AuditEventSubType.value111603;
      case '111604':
        return AuditEventSubType.value111604;
      case '111605':
        return AuditEventSubType.value111605;
      case '111606':
        return AuditEventSubType.value111606;
      case '111607':
        return AuditEventSubType.value111607;
      case '111609':
        return AuditEventSubType.value111609;
      case '111621':
        return AuditEventSubType.value111621;
      case '111622':
        return AuditEventSubType.value111622;
      case '111623':
        return AuditEventSubType.value111623;
      case '111625':
        return AuditEventSubType.value111625;
      case '111626':
        return AuditEventSubType.value111626;
      case '111627':
        return AuditEventSubType.value111627;
      case '111628':
        return AuditEventSubType.value111628;
      case '111629':
        return AuditEventSubType.value111629;
      case '111630':
        return AuditEventSubType.value111630;
      case '111631':
        return AuditEventSubType.value111631;
      case '111632':
        return AuditEventSubType.value111632;
      case '111633':
        return AuditEventSubType.value111633;
      case '111634':
        return AuditEventSubType.value111634;
      case '111635':
        return AuditEventSubType.value111635;
      case '111636':
        return AuditEventSubType.value111636;
      case '111637':
        return AuditEventSubType.value111637;
      case '111638':
        return AuditEventSubType.value111638;
      case '111641':
        return AuditEventSubType.value111641;
      case '111642':
        return AuditEventSubType.value111642;
      case '111643':
        return AuditEventSubType.value111643;
      case '111644':
        return AuditEventSubType.value111644;
      case '111645':
        return AuditEventSubType.value111645;
      case '111646':
        return AuditEventSubType.value111646;
      case '111671':
        return AuditEventSubType.value111671;
      case '111672':
        return AuditEventSubType.value111672;
      case '111673':
        return AuditEventSubType.value111673;
      case '111674':
        return AuditEventSubType.value111674;
      case '111675':
        return AuditEventSubType.value111675;
      case '111676':
        return AuditEventSubType.value111676;
      case '111677':
        return AuditEventSubType.value111677;
      case '111678':
        return AuditEventSubType.value111678;
      case '111679':
        return AuditEventSubType.value111679;
      case '111680':
        return AuditEventSubType.value111680;
      case '111685':
        return AuditEventSubType.value111685;
      case '111686':
        return AuditEventSubType.value111686;
      case '111687':
        return AuditEventSubType.value111687;
      case '111688':
        return AuditEventSubType.value111688;
      case '111689':
        return AuditEventSubType.value111689;
      case '111690':
        return AuditEventSubType.value111690;
      case '111691':
        return AuditEventSubType.value111691;
      case '111692':
        return AuditEventSubType.value111692;
      case '111693':
        return AuditEventSubType.value111693;
      case '111694':
        return AuditEventSubType.value111694;
      case '111695':
        return AuditEventSubType.value111695;
      case '111696':
        return AuditEventSubType.value111696;
      case '111697':
        return AuditEventSubType.value111697;
      case '111698':
        return AuditEventSubType.value111698;
      case '111700':
        return AuditEventSubType.value111700;
      case '111701':
        return AuditEventSubType.value111701;
      case '111702':
        return AuditEventSubType.value111702;
      case '111703':
        return AuditEventSubType.value111703;
      case '111704':
        return AuditEventSubType.value111704;
      case '111705':
        return AuditEventSubType.value111705;
      case '111706':
        return AuditEventSubType.value111706;
      case '111707':
        return AuditEventSubType.value111707;
      case '111708':
        return AuditEventSubType.value111708;
      case '111709':
        return AuditEventSubType.value111709;
      case '111710':
        return AuditEventSubType.value111710;
      case '111711':
        return AuditEventSubType.value111711;
      case '111712':
        return AuditEventSubType.value111712;
      case '111718':
        return AuditEventSubType.value111718;
      case '111719':
        return AuditEventSubType.value111719;
      case '111720':
        return AuditEventSubType.value111720;
      case '111721':
        return AuditEventSubType.value111721;
      case '111723':
        return AuditEventSubType.value111723;
      case '111724':
        return AuditEventSubType.value111724;
      case '111726':
        return AuditEventSubType.value111726;
      case '111727':
        return AuditEventSubType.value111727;
      case '111729':
        return AuditEventSubType.value111729;
      case '111741':
        return AuditEventSubType.value111741;
      case '111742':
        return AuditEventSubType.value111742;
      case '111743':
        return AuditEventSubType.value111743;
      case '111744':
        return AuditEventSubType.value111744;
      case '111745':
        return AuditEventSubType.value111745;
      case '111746':
        return AuditEventSubType.value111746;
      case '111747':
        return AuditEventSubType.value111747;
      case '111748':
        return AuditEventSubType.value111748;
      case '111749':
        return AuditEventSubType.value111749;
      case '111750':
        return AuditEventSubType.value111750;
      case '111751':
        return AuditEventSubType.value111751;
      case '111752':
        return AuditEventSubType.value111752;
      case '111753':
        return AuditEventSubType.value111753;
      case '111754':
        return AuditEventSubType.value111754;
      case '111755':
        return AuditEventSubType.value111755;
      case '111756':
        return AuditEventSubType.value111756;
      case '111760':
        return AuditEventSubType.value111760;
      case '111761':
        return AuditEventSubType.value111761;
      case '111762':
        return AuditEventSubType.value111762;
      case '111763':
        return AuditEventSubType.value111763;
      case '111764':
        return AuditEventSubType.value111764;
      case '111765':
        return AuditEventSubType.value111765;
      case '111766':
        return AuditEventSubType.value111766;
      case '111767':
        return AuditEventSubType.value111767;
      case '111768':
        return AuditEventSubType.value111768;
      case '111769':
        return AuditEventSubType.value111769;
      case '111770':
        return AuditEventSubType.value111770;
      case '111771':
        return AuditEventSubType.value111771;
      case '111772':
        return AuditEventSubType.value111772;
      case '111773':
        return AuditEventSubType.value111773;
      case '111776':
        return AuditEventSubType.value111776;
      case '111777':
        return AuditEventSubType.value111777;
      case '111778':
        return AuditEventSubType.value111778;
      case '111779':
        return AuditEventSubType.value111779;
      case '111780':
        return AuditEventSubType.value111780;
      case '111781':
        return AuditEventSubType.value111781;
      case '111782':
        return AuditEventSubType.value111782;
      case '111783':
        return AuditEventSubType.value111783;
      case '111786':
        return AuditEventSubType.value111786;
      case '111787':
        return AuditEventSubType.value111787;
      case '111791':
        return AuditEventSubType.value111791;
      case '111792':
        return AuditEventSubType.value111792;
      case '111800':
        return AuditEventSubType.value111800;
      case '111801':
        return AuditEventSubType.value111801;
      case '111802':
        return AuditEventSubType.value111802;
      case '111803':
        return AuditEventSubType.value111803;
      case '111804':
        return AuditEventSubType.value111804;
      case '111805':
        return AuditEventSubType.value111805;
      case '111806':
        return AuditEventSubType.value111806;
      case '111807':
        return AuditEventSubType.value111807;
      case '111808':
        return AuditEventSubType.value111808;
      case '111809':
        return AuditEventSubType.value111809;
      case '111810':
        return AuditEventSubType.value111810;
      case '111811':
        return AuditEventSubType.value111811;
      case '111812':
        return AuditEventSubType.value111812;
      case '111813':
        return AuditEventSubType.value111813;
      case '111814':
        return AuditEventSubType.value111814;
      case '111815':
        return AuditEventSubType.value111815;
      case '111816':
        return AuditEventSubType.value111816;
      case '111817':
        return AuditEventSubType.value111817;
      case '111818':
        return AuditEventSubType.value111818;
      case '111819':
        return AuditEventSubType.value111819;
      case '111820':
        return AuditEventSubType.value111820;
      case '111821':
        return AuditEventSubType.value111821;
      case '111822':
        return AuditEventSubType.value111822;
      case '111823':
        return AuditEventSubType.value111823;
      case '111824':
        return AuditEventSubType.value111824;
      case '111825':
        return AuditEventSubType.value111825;
      case '111826':
        return AuditEventSubType.value111826;
      case '111827':
        return AuditEventSubType.value111827;
      case '111828':
        return AuditEventSubType.value111828;
      case '111829':
        return AuditEventSubType.value111829;
      case '111830':
        return AuditEventSubType.value111830;
      case '111831':
        return AuditEventSubType.value111831;
      case '111832':
        return AuditEventSubType.value111832;
      case '111833':
        return AuditEventSubType.value111833;
      case '111834':
        return AuditEventSubType.value111834;
      case '111835':
        return AuditEventSubType.value111835;
      case '111836':
        return AuditEventSubType.value111836;
      case '111837':
        return AuditEventSubType.value111837;
      case '111838':
        return AuditEventSubType.value111838;
      case '111839':
        return AuditEventSubType.value111839;
      case '111840':
        return AuditEventSubType.value111840;
      case '111841':
        return AuditEventSubType.value111841;
      case '111842':
        return AuditEventSubType.value111842;
      case '111843':
        return AuditEventSubType.value111843;
      case '111844':
        return AuditEventSubType.value111844;
      case '111845':
        return AuditEventSubType.value111845;
      case '111846':
        return AuditEventSubType.value111846;
      case '111847':
        return AuditEventSubType.value111847;
      case '111848':
        return AuditEventSubType.value111848;
      case '111849':
        return AuditEventSubType.value111849;
      case '111850':
        return AuditEventSubType.value111850;
      case '111851':
        return AuditEventSubType.value111851;
      case '111852':
        return AuditEventSubType.value111852;
      case '111853':
        return AuditEventSubType.value111853;
      case '111854':
        return AuditEventSubType.value111854;
      case '111855':
        return AuditEventSubType.value111855;
      case '111856':
        return AuditEventSubType.value111856;
      case '111900':
        return AuditEventSubType.value111900;
      case '111901':
        return AuditEventSubType.value111901;
      case '111902':
        return AuditEventSubType.value111902;
      case '111903':
        return AuditEventSubType.value111903;
      case '111904':
        return AuditEventSubType.value111904;
      case '111905':
        return AuditEventSubType.value111905;
      case '111906':
        return AuditEventSubType.value111906;
      case '111907':
        return AuditEventSubType.value111907;
      case '111908':
        return AuditEventSubType.value111908;
      case '111909':
        return AuditEventSubType.value111909;
      case '111910':
        return AuditEventSubType.value111910;
      case '111911':
        return AuditEventSubType.value111911;
      case '111912':
        return AuditEventSubType.value111912;
      case '111913':
        return AuditEventSubType.value111913;
      case '111914':
        return AuditEventSubType.value111914;
      case '111915':
        return AuditEventSubType.value111915;
      case '111916':
        return AuditEventSubType.value111916;
      case '111917':
        return AuditEventSubType.value111917;
      case '111918':
        return AuditEventSubType.value111918;
      case '111919':
        return AuditEventSubType.value111919;
      case '111920':
        return AuditEventSubType.value111920;
      case '111921':
        return AuditEventSubType.value111921;
      case '111922':
        return AuditEventSubType.value111922;
      case '111923':
        return AuditEventSubType.value111923;
      case '111924':
        return AuditEventSubType.value111924;
      case '111925':
        return AuditEventSubType.value111925;
      case '111926':
        return AuditEventSubType.value111926;
      case '111927':
        return AuditEventSubType.value111927;
      case '111928':
        return AuditEventSubType.value111928;
      case '111929':
        return AuditEventSubType.value111929;
      case '111930':
        return AuditEventSubType.value111930;
      case '111931':
        return AuditEventSubType.value111931;
      case '111932':
        return AuditEventSubType.value111932;
      case '111933':
        return AuditEventSubType.value111933;
      case '111934':
        return AuditEventSubType.value111934;
      case '111935':
        return AuditEventSubType.value111935;
      case '111936':
        return AuditEventSubType.value111936;
      case '111937':
        return AuditEventSubType.value111937;
      case '111938':
        return AuditEventSubType.value111938;
      case '111939':
        return AuditEventSubType.value111939;
      case '111940':
        return AuditEventSubType.value111940;
      case '111941':
        return AuditEventSubType.value111941;
      case '111942':
        return AuditEventSubType.value111942;
      case '111943':
        return AuditEventSubType.value111943;
      case '111944':
        return AuditEventSubType.value111944;
      case '111945':
        return AuditEventSubType.value111945;
      case '111946':
        return AuditEventSubType.value111946;
      case '111947':
        return AuditEventSubType.value111947;
      case '112000':
        return AuditEventSubType.value112000;
      case '112001':
        return AuditEventSubType.value112001;
      case '112002':
        return AuditEventSubType.value112002;
      case '112003':
        return AuditEventSubType.value112003;
      case '112004':
        return AuditEventSubType.value112004;
      case '112005':
        return AuditEventSubType.value112005;
      case '112006':
        return AuditEventSubType.value112006;
      case '112007':
        return AuditEventSubType.value112007;
      case '112008':
        return AuditEventSubType.value112008;
      case '112009':
        return AuditEventSubType.value112009;
      case '112010':
        return AuditEventSubType.value112010;
      case '112011':
        return AuditEventSubType.value112011;
      case '112012':
        return AuditEventSubType.value112012;
      case '112013':
        return AuditEventSubType.value112013;
      case '112014':
        return AuditEventSubType.value112014;
      case '112015':
        return AuditEventSubType.value112015;
      case '112016':
        return AuditEventSubType.value112016;
      case '112017':
        return AuditEventSubType.value112017;
      case '112018':
        return AuditEventSubType.value112018;
      case '112019':
        return AuditEventSubType.value112019;
      case '112020':
        return AuditEventSubType.value112020;
      case '112021':
        return AuditEventSubType.value112021;
      case '112022':
        return AuditEventSubType.value112022;
      case '112023':
        return AuditEventSubType.value112023;
      case '112024':
        return AuditEventSubType.value112024;
      case '112025':
        return AuditEventSubType.value112025;
      case '112026':
        return AuditEventSubType.value112026;
      case '112027':
        return AuditEventSubType.value112027;
      case '112028':
        return AuditEventSubType.value112028;
      case '112029':
        return AuditEventSubType.value112029;
      case '112030':
        return AuditEventSubType.value112030;
      case '112031':
        return AuditEventSubType.value112031;
      case '112032':
        return AuditEventSubType.value112032;
      case '112033':
        return AuditEventSubType.value112033;
      case '112034':
        return AuditEventSubType.value112034;
      case '112035':
        return AuditEventSubType.value112035;
      case '112036':
        return AuditEventSubType.value112036;
      case '112037':
        return AuditEventSubType.value112037;
      case '112038':
        return AuditEventSubType.value112038;
      case '112039':
        return AuditEventSubType.value112039;
      case '112040':
        return AuditEventSubType.value112040;
      case '112041':
        return AuditEventSubType.value112041;
      case '112042':
        return AuditEventSubType.value112042;
      case '112043':
        return AuditEventSubType.value112043;
      case '112044':
        return AuditEventSubType.value112044;
      case '112045':
        return AuditEventSubType.value112045;
      case '112046':
        return AuditEventSubType.value112046;
      case '112047':
        return AuditEventSubType.value112047;
      case '112048':
        return AuditEventSubType.value112048;
      case '112049':
        return AuditEventSubType.value112049;
      case '112050':
        return AuditEventSubType.value112050;
      case '112051':
        return AuditEventSubType.value112051;
      case '112052':
        return AuditEventSubType.value112052;
      case '112053':
        return AuditEventSubType.value112053;
      case '112054':
        return AuditEventSubType.value112054;
      case '112055':
        return AuditEventSubType.value112055;
      case '112056':
        return AuditEventSubType.value112056;
      case '112057':
        return AuditEventSubType.value112057;
      case '112058':
        return AuditEventSubType.value112058;
      case '112059':
        return AuditEventSubType.value112059;
      case '112060':
        return AuditEventSubType.value112060;
      case '112061':
        return AuditEventSubType.value112061;
      case '112062':
        return AuditEventSubType.value112062;
      case '112063':
        return AuditEventSubType.value112063;
      case '112064':
        return AuditEventSubType.value112064;
      case '112065':
        return AuditEventSubType.value112065;
      case '112066':
        return AuditEventSubType.value112066;
      case '112067':
        return AuditEventSubType.value112067;
      case '112068':
        return AuditEventSubType.value112068;
      case '112069':
        return AuditEventSubType.value112069;
      case '112070':
        return AuditEventSubType.value112070;
      case '112071':
        return AuditEventSubType.value112071;
      case '112072':
        return AuditEventSubType.value112072;
      case '112073':
        return AuditEventSubType.value112073;
      case '112074':
        return AuditEventSubType.value112074;
      case '112075':
        return AuditEventSubType.value112075;
      case '112076':
        return AuditEventSubType.value112076;
      case '112077':
        return AuditEventSubType.value112077;
      case '112078':
        return AuditEventSubType.value112078;
      case '112079':
        return AuditEventSubType.value112079;
      case '112080':
        return AuditEventSubType.value112080;
      case '112081':
        return AuditEventSubType.value112081;
      case '112082':
        return AuditEventSubType.value112082;
      case '112083':
        return AuditEventSubType.value112083;
      case '112084':
        return AuditEventSubType.value112084;
      case '112085':
        return AuditEventSubType.value112085;
      case '112086':
        return AuditEventSubType.value112086;
      case '112087':
        return AuditEventSubType.value112087;
      case '112088':
        return AuditEventSubType.value112088;
      case '112089':
        return AuditEventSubType.value112089;
      case '112090':
        return AuditEventSubType.value112090;
      case '112091':
        return AuditEventSubType.value112091;
      case '112092':
        return AuditEventSubType.value112092;
      case '112093':
        return AuditEventSubType.value112093;
      case '112094':
        return AuditEventSubType.value112094;
      case '112095':
        return AuditEventSubType.value112095;
      case '112096':
        return AuditEventSubType.value112096;
      case '112097':
        return AuditEventSubType.value112097;
      case '112098':
        return AuditEventSubType.value112098;
      case '112099':
        return AuditEventSubType.value112099;
      case '112100':
        return AuditEventSubType.value112100;
      case '112101':
        return AuditEventSubType.value112101;
      case '112102':
        return AuditEventSubType.value112102;
      case '112103':
        return AuditEventSubType.value112103;
      case '112104':
        return AuditEventSubType.value112104;
      case '112105':
        return AuditEventSubType.value112105;
      case '112106':
        return AuditEventSubType.value112106;
      case '112107':
        return AuditEventSubType.value112107;
      case '112108':
        return AuditEventSubType.value112108;
      case '112109':
        return AuditEventSubType.value112109;
      case '112110':
        return AuditEventSubType.value112110;
      case '112111':
        return AuditEventSubType.value112111;
      case '112112':
        return AuditEventSubType.value112112;
      case '112113':
        return AuditEventSubType.value112113;
      case '112114':
        return AuditEventSubType.value112114;
      case '112115':
        return AuditEventSubType.value112115;
      case '112116':
        return AuditEventSubType.value112116;
      case '112117':
        return AuditEventSubType.value112117;
      case '112118':
        return AuditEventSubType.value112118;
      case '112119':
        return AuditEventSubType.value112119;
      case '112120':
        return AuditEventSubType.value112120;
      case '112121':
        return AuditEventSubType.value112121;
      case '112122':
        return AuditEventSubType.value112122;
      case '112123':
        return AuditEventSubType.value112123;
      case '112124':
        return AuditEventSubType.value112124;
      case '112125':
        return AuditEventSubType.value112125;
      case '112126':
        return AuditEventSubType.value112126;
      case '112127':
        return AuditEventSubType.value112127;
      case '112128':
        return AuditEventSubType.value112128;
      case '112129':
        return AuditEventSubType.value112129;
      case '112130':
        return AuditEventSubType.value112130;
      case '112131':
        return AuditEventSubType.value112131;
      case '112132':
        return AuditEventSubType.value112132;
      case '112133':
        return AuditEventSubType.value112133;
      case '112134':
        return AuditEventSubType.value112134;
      case '112135':
        return AuditEventSubType.value112135;
      case '112136':
        return AuditEventSubType.value112136;
      case '112137':
        return AuditEventSubType.value112137;
      case '112138':
        return AuditEventSubType.value112138;
      case '112139':
        return AuditEventSubType.value112139;
      case '112140':
        return AuditEventSubType.value112140;
      case '112141':
        return AuditEventSubType.value112141;
      case '112142':
        return AuditEventSubType.value112142;
      case '112143':
        return AuditEventSubType.value112143;
      case '112144':
        return AuditEventSubType.value112144;
      case '112145':
        return AuditEventSubType.value112145;
      case '112146':
        return AuditEventSubType.value112146;
      case '112147':
        return AuditEventSubType.value112147;
      case '112148':
        return AuditEventSubType.value112148;
      case '112149':
        return AuditEventSubType.value112149;
      case '112150':
        return AuditEventSubType.value112150;
      case '112151':
        return AuditEventSubType.value112151;
      case '112152':
        return AuditEventSubType.value112152;
      case '112153':
        return AuditEventSubType.value112153;
      case '112154':
        return AuditEventSubType.value112154;
      case '112155':
        return AuditEventSubType.value112155;
      case '112156':
        return AuditEventSubType.value112156;
      case '112157':
        return AuditEventSubType.value112157;
      case '112158':
        return AuditEventSubType.value112158;
      case '112159':
        return AuditEventSubType.value112159;
      case '112160':
        return AuditEventSubType.value112160;
      case '112161':
        return AuditEventSubType.value112161;
      case '112162':
        return AuditEventSubType.value112162;
      case '112163':
        return AuditEventSubType.value112163;
      case '112164':
        return AuditEventSubType.value112164;
      case '112165':
        return AuditEventSubType.value112165;
      case '112166':
        return AuditEventSubType.value112166;
      case '112167':
        return AuditEventSubType.value112167;
      case '112168':
        return AuditEventSubType.value112168;
      case '112169':
        return AuditEventSubType.value112169;
      case '112170':
        return AuditEventSubType.value112170;
      case '112171':
        return AuditEventSubType.value112171;
      case '112172':
        return AuditEventSubType.value112172;
      case '112173':
        return AuditEventSubType.value112173;
      case '112174':
        return AuditEventSubType.value112174;
      case '112175':
        return AuditEventSubType.value112175;
      case '112176':
        return AuditEventSubType.value112176;
      case '112177':
        return AuditEventSubType.value112177;
      case '112178':
        return AuditEventSubType.value112178;
      case '112179':
        return AuditEventSubType.value112179;
      case '112180':
        return AuditEventSubType.value112180;
      case '112181':
        return AuditEventSubType.value112181;
      case '112182':
        return AuditEventSubType.value112182;
      case '112183':
        return AuditEventSubType.value112183;
      case '112184':
        return AuditEventSubType.value112184;
      case '112185':
        return AuditEventSubType.value112185;
      case '112186':
        return AuditEventSubType.value112186;
      case '112187':
        return AuditEventSubType.value112187;
      case '112188':
        return AuditEventSubType.value112188;
      case '112189':
        return AuditEventSubType.value112189;
      case '112191':
        return AuditEventSubType.value112191;
      case '112192':
        return AuditEventSubType.value112192;
      case '112193':
        return AuditEventSubType.value112193;
      case '112194':
        return AuditEventSubType.value112194;
      case '112195':
        return AuditEventSubType.value112195;
      case '112196':
        return AuditEventSubType.value112196;
      case '112197':
        return AuditEventSubType.value112197;
      case '112198':
        return AuditEventSubType.value112198;
      case '112199':
        return AuditEventSubType.value112199;
      case '112200':
        return AuditEventSubType.value112200;
      case '112201':
        return AuditEventSubType.value112201;
      case '112220':
        return AuditEventSubType.value112220;
      case '112222':
        return AuditEventSubType.value112222;
      case '112224':
        return AuditEventSubType.value112224;
      case '112225':
        return AuditEventSubType.value112225;
      case '112226':
        return AuditEventSubType.value112226;
      case '112227':
        return AuditEventSubType.value112227;
      case '112228':
        return AuditEventSubType.value112228;
      case '112229':
        return AuditEventSubType.value112229;
      case '112232':
        return AuditEventSubType.value112232;
      case '112233':
        return AuditEventSubType.value112233;
      case '112238':
        return AuditEventSubType.value112238;
      case '112240':
        return AuditEventSubType.value112240;
      case '112241':
        return AuditEventSubType.value112241;
      case '112242':
        return AuditEventSubType.value112242;
      case '112243':
        return AuditEventSubType.value112243;
      case '112244':
        return AuditEventSubType.value112244;
      case '112248':
        return AuditEventSubType.value112248;
      case '112249':
        return AuditEventSubType.value112249;
      case '112300':
        return AuditEventSubType.value112300;
      case '112301':
        return AuditEventSubType.value112301;
      case '112302':
        return AuditEventSubType.value112302;
      case '112303':
        return AuditEventSubType.value112303;
      case '112304':
        return AuditEventSubType.value112304;
      case '112305':
        return AuditEventSubType.value112305;
      case '112306':
        return AuditEventSubType.value112306;
      case '112307':
        return AuditEventSubType.value112307;
      case '112308':
        return AuditEventSubType.value112308;
      case '112309':
        return AuditEventSubType.value112309;
      case '112310':
        return AuditEventSubType.value112310;
      case '112311':
        return AuditEventSubType.value112311;
      case '112312':
        return AuditEventSubType.value112312;
      case '112313':
        return AuditEventSubType.value112313;
      case '112314':
        return AuditEventSubType.value112314;
      case '112315':
        return AuditEventSubType.value112315;
      case '112316':
        return AuditEventSubType.value112316;
      case '112317':
        return AuditEventSubType.value112317;
      case '112318':
        return AuditEventSubType.value112318;
      case '112319':
        return AuditEventSubType.value112319;
      case '112320':
        return AuditEventSubType.value112320;
      case '112321':
        return AuditEventSubType.value112321;
      case '112325':
        return AuditEventSubType.value112325;
      case '112340':
        return AuditEventSubType.value112340;
      case '112341':
        return AuditEventSubType.value112341;
      case '112342':
        return AuditEventSubType.value112342;
      case '112343':
        return AuditEventSubType.value112343;
      case '112344':
        return AuditEventSubType.value112344;
      case '112345':
        return AuditEventSubType.value112345;
      case '112346':
        return AuditEventSubType.value112346;
      case '112347':
        return AuditEventSubType.value112347;
      case '112348':
        return AuditEventSubType.value112348;
      case '112350':
        return AuditEventSubType.value112350;
      case '112351':
        return AuditEventSubType.value112351;
      case '112352':
        return AuditEventSubType.value112352;
      case '112353':
        return AuditEventSubType.value112353;
      case '112354':
        return AuditEventSubType.value112354;
      case '112355':
        return AuditEventSubType.value112355;
      case '112356':
        return AuditEventSubType.value112356;
      case '112357':
        return AuditEventSubType.value112357;
      case '112358':
        return AuditEventSubType.value112358;
      case '112359':
        return AuditEventSubType.value112359;
      case '112360':
        return AuditEventSubType.value112360;
      case '112361':
        return AuditEventSubType.value112361;
      case '112362':
        return AuditEventSubType.value112362;
      case '112363':
        return AuditEventSubType.value112363;
      case '112364':
        return AuditEventSubType.value112364;
      case '112365':
        return AuditEventSubType.value112365;
      case '112366':
        return AuditEventSubType.value112366;
      case '112367':
        return AuditEventSubType.value112367;
      case '112368':
        return AuditEventSubType.value112368;
      case '112369':
        return AuditEventSubType.value112369;
      case '112370':
        return AuditEventSubType.value112370;
      case '112371':
        return AuditEventSubType.value112371;
      case '112372':
        return AuditEventSubType.value112372;
      case '112373':
        return AuditEventSubType.value112373;
      case '112374':
        return AuditEventSubType.value112374;
      case '112375':
        return AuditEventSubType.value112375;
      case '112376':
        return AuditEventSubType.value112376;
      case '112377':
        return AuditEventSubType.value112377;
      case '112378':
        return AuditEventSubType.value112378;
      case '112379':
        return AuditEventSubType.value112379;
      case '112380':
        return AuditEventSubType.value112380;
      case '112381':
        return AuditEventSubType.value112381;
      case '112700':
        return AuditEventSubType.value112700;
      case '112701':
        return AuditEventSubType.value112701;
      case '112702':
        return AuditEventSubType.value112702;
      case '112703':
        return AuditEventSubType.value112703;
      case '112704':
        return AuditEventSubType.value112704;
      case '112705':
        return AuditEventSubType.value112705;
      case '112706':
        return AuditEventSubType.value112706;
      case '112707':
        return AuditEventSubType.value112707;
      case '112708':
        return AuditEventSubType.value112708;
      case '112709':
        return AuditEventSubType.value112709;
      case '112710':
        return AuditEventSubType.value112710;
      case '112711':
        return AuditEventSubType.value112711;
      case '112712':
        return AuditEventSubType.value112712;
      case '112713':
        return AuditEventSubType.value112713;
      case '112714':
        return AuditEventSubType.value112714;
      case '112715':
        return AuditEventSubType.value112715;
      case '112716':
        return AuditEventSubType.value112716;
      case '112717':
        return AuditEventSubType.value112717;
      case '112718':
        return AuditEventSubType.value112718;
      case '112719':
        return AuditEventSubType.value112719;
      case '112720':
        return AuditEventSubType.value112720;
      case '112721':
        return AuditEventSubType.value112721;
      case '113000':
        return AuditEventSubType.value113000;
      case '113001':
        return AuditEventSubType.value113001;
      case '113002':
        return AuditEventSubType.value113002;
      case '113003':
        return AuditEventSubType.value113003;
      case '113004':
        return AuditEventSubType.value113004;
      case '113005':
        return AuditEventSubType.value113005;
      case '113006':
        return AuditEventSubType.value113006;
      case '113007':
        return AuditEventSubType.value113007;
      case '113008':
        return AuditEventSubType.value113008;
      case '113009':
        return AuditEventSubType.value113009;
      case '113010':
        return AuditEventSubType.value113010;
      case '113011':
        return AuditEventSubType.value113011;
      case '113012':
        return AuditEventSubType.value113012;
      case '113013':
        return AuditEventSubType.value113013;
      case '113014':
        return AuditEventSubType.value113014;
      case '113015':
        return AuditEventSubType.value113015;
      case '113016':
        return AuditEventSubType.value113016;
      case '113017':
        return AuditEventSubType.value113017;
      case '113018':
        return AuditEventSubType.value113018;
      case '113020':
        return AuditEventSubType.value113020;
      case '113021':
        return AuditEventSubType.value113021;
      case '113026':
        return AuditEventSubType.value113026;
      case '113030':
        return AuditEventSubType.value113030;
      case '113031':
        return AuditEventSubType.value113031;
      case '113032':
        return AuditEventSubType.value113032;
      case '113033':
        return AuditEventSubType.value113033;
      case '113034':
        return AuditEventSubType.value113034;
      case '113035':
        return AuditEventSubType.value113035;
      case '113036':
        return AuditEventSubType.value113036;
      case '113037':
        return AuditEventSubType.value113037;
      case '113038':
        return AuditEventSubType.value113038;
      case '113039':
        return AuditEventSubType.value113039;
      case '113040':
        return AuditEventSubType.value113040;
      case '113041':
        return AuditEventSubType.value113041;
      case '113042':
        return AuditEventSubType.value113042;
      case '113043':
        return AuditEventSubType.value113043;
      case '113044':
        return AuditEventSubType.value113044;
      case '113045':
        return AuditEventSubType.value113045;
      case '113046':
        return AuditEventSubType.value113046;
      case '113047':
        return AuditEventSubType.value113047;
      case '113048':
        return AuditEventSubType.value113048;
      case '113049':
        return AuditEventSubType.value113049;
      case '113050':
        return AuditEventSubType.value113050;
      case '113051':
        return AuditEventSubType.value113051;
      case '113052':
        return AuditEventSubType.value113052;
      case '113053':
        return AuditEventSubType.value113053;
      case '113054':
        return AuditEventSubType.value113054;
      case '113055':
        return AuditEventSubType.value113055;
      case '113056':
        return AuditEventSubType.value113056;
      case '113057':
        return AuditEventSubType.value113057;
      case '113058':
        return AuditEventSubType.value113058;
      case '113059':
        return AuditEventSubType.value113059;
      case '113060':
        return AuditEventSubType.value113060;
      case '113061':
        return AuditEventSubType.value113061;
      case '113062':
        return AuditEventSubType.value113062;
      case '113063':
        return AuditEventSubType.value113063;
      case '113064':
        return AuditEventSubType.value113064;
      case '113065':
        return AuditEventSubType.value113065;
      case '113066':
        return AuditEventSubType.value113066;
      case '113067':
        return AuditEventSubType.value113067;
      case '113068':
        return AuditEventSubType.value113068;
      case '113069':
        return AuditEventSubType.value113069;
      case '113070':
        return AuditEventSubType.value113070;
      case '113071':
        return AuditEventSubType.value113071;
      case '113072':
        return AuditEventSubType.value113072;
      case '113073':
        return AuditEventSubType.value113073;
      case '113074':
        return AuditEventSubType.value113074;
      case '113075':
        return AuditEventSubType.value113075;
      case '113076':
        return AuditEventSubType.value113076;
      case '113077':
        return AuditEventSubType.value113077;
      case '113078':
        return AuditEventSubType.value113078;
      case '113079':
        return AuditEventSubType.value113079;
      case '113080':
        return AuditEventSubType.value113080;
      case '113081':
        return AuditEventSubType.value113081;
      case '113082':
        return AuditEventSubType.value113082;
      case '113083':
        return AuditEventSubType.value113083;
      case '113085':
        return AuditEventSubType.value113085;
      case '113086':
        return AuditEventSubType.value113086;
      case '113087':
        return AuditEventSubType.value113087;
      case '113088':
        return AuditEventSubType.value113088;
      case '113089':
        return AuditEventSubType.value113089;
      case '113090':
        return AuditEventSubType.value113090;
      case '113091':
        return AuditEventSubType.value113091;
      case '113092':
        return AuditEventSubType.value113092;
      case '113093':
        return AuditEventSubType.value113093;
      case '113094':
        return AuditEventSubType.value113094;
      case '113095':
        return AuditEventSubType.value113095;
      case '113096':
        return AuditEventSubType.value113096;
      case '113097':
        return AuditEventSubType.value113097;
      case '113100':
        return AuditEventSubType.value113100;
      case '113101':
        return AuditEventSubType.value113101;
      case '113102':
        return AuditEventSubType.value113102;
      case '113103':
        return AuditEventSubType.value113103;
      case '113104':
        return AuditEventSubType.value113104;
      case '113105':
        return AuditEventSubType.value113105;
      case '113106':
        return AuditEventSubType.value113106;
      case '113107':
        return AuditEventSubType.value113107;
      case '113108':
        return AuditEventSubType.value113108;
      case '113109':
        return AuditEventSubType.value113109;
      case '113110':
        return AuditEventSubType.value113110;
      case '113111':
        return AuditEventSubType.value113111;
      case '113500':
        return AuditEventSubType.value113500;
      case '113502':
        return AuditEventSubType.value113502;
      case '113503':
        return AuditEventSubType.value113503;
      case '113505':
        return AuditEventSubType.value113505;
      case '113506':
        return AuditEventSubType.value113506;
      case '113507':
        return AuditEventSubType.value113507;
      case '113508':
        return AuditEventSubType.value113508;
      case '113509':
        return AuditEventSubType.value113509;
      case '113510':
        return AuditEventSubType.value113510;
      case '113511':
        return AuditEventSubType.value113511;
      case '113512':
        return AuditEventSubType.value113512;
      case '113513':
        return AuditEventSubType.value113513;
      case '113514':
        return AuditEventSubType.value113514;
      case '113516':
        return AuditEventSubType.value113516;
      case '113517':
        return AuditEventSubType.value113517;
      case '113518':
        return AuditEventSubType.value113518;
      case '113520':
        return AuditEventSubType.value113520;
      case '113521':
        return AuditEventSubType.value113521;
      case '113522':
        return AuditEventSubType.value113522;
      case '113523':
        return AuditEventSubType.value113523;
      case '113526':
        return AuditEventSubType.value113526;
      case '113527':
        return AuditEventSubType.value113527;
      case '113528':
        return AuditEventSubType.value113528;
      case '113529':
        return AuditEventSubType.value113529;
      case '113530':
        return AuditEventSubType.value113530;
      case '113540':
        return AuditEventSubType.value113540;
      case '113541':
        return AuditEventSubType.value113541;
      case '113542':
        return AuditEventSubType.value113542;
      case '113543':
        return AuditEventSubType.value113543;
      case '113550':
        return AuditEventSubType.value113550;
      case '113551':
        return AuditEventSubType.value113551;
      case '113552':
        return AuditEventSubType.value113552;
      case '113560':
        return AuditEventSubType.value113560;
      case '113561':
        return AuditEventSubType.value113561;
      case '113562':
        return AuditEventSubType.value113562;
      case '113563':
        return AuditEventSubType.value113563;
      case '113568':
        return AuditEventSubType.value113568;
      case '113570':
        return AuditEventSubType.value113570;
      case '113571':
        return AuditEventSubType.value113571;
      case '113572':
        return AuditEventSubType.value113572;
      case '113573':
        return AuditEventSubType.value113573;
      case '113574':
        return AuditEventSubType.value113574;
      case '113575':
        return AuditEventSubType.value113575;
      case '113576':
        return AuditEventSubType.value113576;
      case '113577':
        return AuditEventSubType.value113577;
      case '113601':
        return AuditEventSubType.value113601;
      case '113602':
        return AuditEventSubType.value113602;
      case '113603':
        return AuditEventSubType.value113603;
      case '113605':
        return AuditEventSubType.value113605;
      case '113606':
        return AuditEventSubType.value113606;
      case '113607':
        return AuditEventSubType.value113607;
      case '113608':
        return AuditEventSubType.value113608;
      case '113609':
        return AuditEventSubType.value113609;
      case '113611':
        return AuditEventSubType.value113611;
      case '113612':
        return AuditEventSubType.value113612;
      case '113613':
        return AuditEventSubType.value113613;
      case '113620':
        return AuditEventSubType.value113620;
      case '113621':
        return AuditEventSubType.value113621;
      case '113622':
        return AuditEventSubType.value113622;
      case '113630':
        return AuditEventSubType.value113630;
      case '113631':
        return AuditEventSubType.value113631;
      case '113650':
        return AuditEventSubType.value113650;
      case '113651':
        return AuditEventSubType.value113651;
      case '113652':
        return AuditEventSubType.value113652;
      case '113653':
        return AuditEventSubType.value113653;
      case '113661':
        return AuditEventSubType.value113661;
      case '113662':
        return AuditEventSubType.value113662;
      case '113663':
        return AuditEventSubType.value113663;
      case '113664':
        return AuditEventSubType.value113664;
      case '113665':
        return AuditEventSubType.value113665;
      case '113666':
        return AuditEventSubType.value113666;
      case '113669':
        return AuditEventSubType.value113669;
      case '113670':
        return AuditEventSubType.value113670;
      case '113671':
        return AuditEventSubType.value113671;
      case '113680':
        return AuditEventSubType.value113680;
      case '113681':
        return AuditEventSubType.value113681;
      case '113682':
        return AuditEventSubType.value113682;
      case '113683':
        return AuditEventSubType.value113683;
      case '113684':
        return AuditEventSubType.value113684;
      case '113685':
        return AuditEventSubType.value113685;
      case '113686':
        return AuditEventSubType.value113686;
      case '113687':
        return AuditEventSubType.value113687;
      case '113688':
        return AuditEventSubType.value113688;
      case '113689':
        return AuditEventSubType.value113689;
      case '113690':
        return AuditEventSubType.value113690;
      case '113691':
        return AuditEventSubType.value113691;
      case '113692':
        return AuditEventSubType.value113692;
      case '113701':
        return AuditEventSubType.value113701;
      case '113702':
        return AuditEventSubType.value113702;
      case '113704':
        return AuditEventSubType.value113704;
      case '113705':
        return AuditEventSubType.value113705;
      case '113706':
        return AuditEventSubType.value113706;
      case '113710':
        return AuditEventSubType.value113710;
      case '113711':
        return AuditEventSubType.value113711;
      case '113720':
        return AuditEventSubType.value113720;
      case '113721':
        return AuditEventSubType.value113721;
      case '113722':
        return AuditEventSubType.value113722;
      case '113723':
        return AuditEventSubType.value113723;
      case '113724':
        return AuditEventSubType.value113724;
      case '113725':
        return AuditEventSubType.value113725;
      case '113726':
        return AuditEventSubType.value113726;
      case '113727':
        return AuditEventSubType.value113727;
      case '113728':
        return AuditEventSubType.value113728;
      case '113729':
        return AuditEventSubType.value113729;
      case '113730':
        return AuditEventSubType.value113730;
      case '113731':
        return AuditEventSubType.value113731;
      case '113732':
        return AuditEventSubType.value113732;
      case '113733':
        return AuditEventSubType.value113733;
      case '113734':
        return AuditEventSubType.value113734;
      case '113735':
        return AuditEventSubType.value113735;
      case '113736':
        return AuditEventSubType.value113736;
      case '113737':
        return AuditEventSubType.value113737;
      case '113738':
        return AuditEventSubType.value113738;
      case '113739':
        return AuditEventSubType.value113739;
      case '113740':
        return AuditEventSubType.value113740;
      case '113742':
        return AuditEventSubType.value113742;
      case '113743':
        return AuditEventSubType.value113743;
      case '113744':
        return AuditEventSubType.value113744;
      case '113745':
        return AuditEventSubType.value113745;
      case '113748':
        return AuditEventSubType.value113748;
      case '113750':
        return AuditEventSubType.value113750;
      case '113751':
        return AuditEventSubType.value113751;
      case '113752':
        return AuditEventSubType.value113752;
      case '113753':
        return AuditEventSubType.value113753;
      case '113754':
        return AuditEventSubType.value113754;
      case '113755':
        return AuditEventSubType.value113755;
      case '113756':
        return AuditEventSubType.value113756;
      case '113757':
        return AuditEventSubType.value113757;
      case '113758':
        return AuditEventSubType.value113758;
      case '113759':
        return AuditEventSubType.value113759;
      case '113760':
        return AuditEventSubType.value113760;
      case '113761':
        return AuditEventSubType.value113761;
      case '113763':
        return AuditEventSubType.value113763;
      case '113764':
        return AuditEventSubType.value113764;
      case '113766':
        return AuditEventSubType.value113766;
      case '113767':
        return AuditEventSubType.value113767;
      case '113768':
        return AuditEventSubType.value113768;
      case '113769':
        return AuditEventSubType.value113769;
      case '113770':
        return AuditEventSubType.value113770;
      case '113771':
        return AuditEventSubType.value113771;
      case '113772':
        return AuditEventSubType.value113772;
      case '113773':
        return AuditEventSubType.value113773;
      case '113780':
        return AuditEventSubType.value113780;
      case '113788':
        return AuditEventSubType.value113788;
      case '113789':
        return AuditEventSubType.value113789;
      case '113790':
        return AuditEventSubType.value113790;
      case '113791':
        return AuditEventSubType.value113791;
      case '113792':
        return AuditEventSubType.value113792;
      case '113793':
        return AuditEventSubType.value113793;
      case '113794':
        return AuditEventSubType.value113794;
      case '113795':
        return AuditEventSubType.value113795;
      case '113800':
        return AuditEventSubType.value113800;
      case '113801':
        return AuditEventSubType.value113801;
      case '113802':
        return AuditEventSubType.value113802;
      case '113803':
        return AuditEventSubType.value113803;
      case '113804':
        return AuditEventSubType.value113804;
      case '113805':
        return AuditEventSubType.value113805;
      case '113806':
        return AuditEventSubType.value113806;
      case '113807':
        return AuditEventSubType.value113807;
      case '113808':
        return AuditEventSubType.value113808;
      case '113809':
        return AuditEventSubType.value113809;
      case '113810':
        return AuditEventSubType.value113810;
      case '113811':
        return AuditEventSubType.value113811;
      case '113812':
        return AuditEventSubType.value113812;
      case '113813':
        return AuditEventSubType.value113813;
      case '113814':
        return AuditEventSubType.value113814;
      case '113815':
        return AuditEventSubType.value113815;
      case '113816':
        return AuditEventSubType.value113816;
      case '113817':
        return AuditEventSubType.value113817;
      case '113818':
        return AuditEventSubType.value113818;
      case '113819':
        return AuditEventSubType.value113819;
      case '113820':
        return AuditEventSubType.value113820;
      case '113821':
        return AuditEventSubType.value113821;
      case '113822':
        return AuditEventSubType.value113822;
      case '113823':
        return AuditEventSubType.value113823;
      case '113824':
        return AuditEventSubType.value113824;
      case '113825':
        return AuditEventSubType.value113825;
      case '113826':
        return AuditEventSubType.value113826;
      case '113827':
        return AuditEventSubType.value113827;
      case '113828':
        return AuditEventSubType.value113828;
      case '113829':
        return AuditEventSubType.value113829;
      case '113830':
        return AuditEventSubType.value113830;
      case '113831':
        return AuditEventSubType.value113831;
      case '113832':
        return AuditEventSubType.value113832;
      case '113833':
        return AuditEventSubType.value113833;
      case '113834':
        return AuditEventSubType.value113834;
      case '113835':
        return AuditEventSubType.value113835;
      case '113836':
        return AuditEventSubType.value113836;
      case '113837':
        return AuditEventSubType.value113837;
      case '113838':
        return AuditEventSubType.value113838;
      case '113839':
        return AuditEventSubType.value113839;
      case '113840':
        return AuditEventSubType.value113840;
      case '113841':
        return AuditEventSubType.value113841;
      case '113842':
        return AuditEventSubType.value113842;
      case '113845':
        return AuditEventSubType.value113845;
      case '113846':
        return AuditEventSubType.value113846;
      case '113847':
        return AuditEventSubType.value113847;
      case '113850':
        return AuditEventSubType.value113850;
      case '113851':
        return AuditEventSubType.value113851;
      case '113852':
        return AuditEventSubType.value113852;
      case '113853':
        return AuditEventSubType.value113853;
      case '113854':
        return AuditEventSubType.value113854;
      case '113855':
        return AuditEventSubType.value113855;
      case '113856':
        return AuditEventSubType.value113856;
      case '113857':
        return AuditEventSubType.value113857;
      case '113858':
        return AuditEventSubType.value113858;
      case '113859':
        return AuditEventSubType.value113859;
      case '113860':
        return AuditEventSubType.value113860;
      case '113861':
        return AuditEventSubType.value113861;
      case '113862':
        return AuditEventSubType.value113862;
      case '113863':
        return AuditEventSubType.value113863;
      case '113864':
        return AuditEventSubType.value113864;
      case '113865':
        return AuditEventSubType.value113865;
      case '113866':
        return AuditEventSubType.value113866;
      case '113867':
        return AuditEventSubType.value113867;
      case '113868':
        return AuditEventSubType.value113868;
      case '113870':
        return AuditEventSubType.value113870;
      case '113871':
        return AuditEventSubType.value113871;
      case '113872':
        return AuditEventSubType.value113872;
      case '113873':
        return AuditEventSubType.value113873;
      case '113874':
        return AuditEventSubType.value113874;
      case '113875':
        return AuditEventSubType.value113875;
      case '113876':
        return AuditEventSubType.value113876;
      case '113877':
        return AuditEventSubType.value113877;
      case '113878':
        return AuditEventSubType.value113878;
      case '113879':
        return AuditEventSubType.value113879;
      case '113880':
        return AuditEventSubType.value113880;
      case '113890':
        return AuditEventSubType.value113890;
      case '113893':
        return AuditEventSubType.value113893;
      case '113895':
        return AuditEventSubType.value113895;
      case '113896':
        return AuditEventSubType.value113896;
      case '113897':
        return AuditEventSubType.value113897;
      case '113898':
        return AuditEventSubType.value113898;
      case '113899':
        return AuditEventSubType.value113899;
      case '113900':
        return AuditEventSubType.value113900;
      case '113901':
        return AuditEventSubType.value113901;
      case '113902':
        return AuditEventSubType.value113902;
      case '113903':
        return AuditEventSubType.value113903;
      case '113904':
        return AuditEventSubType.value113904;
      case '113905':
        return AuditEventSubType.value113905;
      case '113906':
        return AuditEventSubType.value113906;
      case '113907':
        return AuditEventSubType.value113907;
      case '113908':
        return AuditEventSubType.value113908;
      case '113909':
        return AuditEventSubType.value113909;
      case '113910':
        return AuditEventSubType.value113910;
      case '113911':
        return AuditEventSubType.value113911;
      case '113912':
        return AuditEventSubType.value113912;
      case '113913':
        return AuditEventSubType.value113913;
      case '113914':
        return AuditEventSubType.value113914;
      case '113921':
        return AuditEventSubType.value113921;
      case '113922':
        return AuditEventSubType.value113922;
      case '113923':
        return AuditEventSubType.value113923;
      case '113930':
        return AuditEventSubType.value113930;
      case '113931':
        return AuditEventSubType.value113931;
      case '113932':
        return AuditEventSubType.value113932;
      case '113933':
        return AuditEventSubType.value113933;
      case '113934':
        return AuditEventSubType.value113934;
      case '113935':
        return AuditEventSubType.value113935;
      case '113936':
        return AuditEventSubType.value113936;
      case '113937':
        return AuditEventSubType.value113937;
      case '113940':
        return AuditEventSubType.value113940;
      case '113941':
        return AuditEventSubType.value113941;
      case '113942':
        return AuditEventSubType.value113942;
      case '113943':
        return AuditEventSubType.value113943;
      case '113944':
        return AuditEventSubType.value113944;
      case '113945':
        return AuditEventSubType.value113945;
      case '113946':
        return AuditEventSubType.value113946;
      case '113947':
        return AuditEventSubType.value113947;
      case '113948':
        return AuditEventSubType.value113948;
      case '113949':
        return AuditEventSubType.value113949;
      case '113950':
        return AuditEventSubType.value113950;
      case '113951':
        return AuditEventSubType.value113951;
      case '113952':
        return AuditEventSubType.value113952;
      case '113953':
        return AuditEventSubType.value113953;
      case '113954':
        return AuditEventSubType.value113954;
      case '113955':
        return AuditEventSubType.value113955;
      case '113956':
        return AuditEventSubType.value113956;
      case '113957':
        return AuditEventSubType.value113957;
      case '113958':
        return AuditEventSubType.value113958;
      case '113959':
        return AuditEventSubType.value113959;
      case '113961':
        return AuditEventSubType.value113961;
      case '113962':
        return AuditEventSubType.value113962;
      case '113963':
        return AuditEventSubType.value113963;
      case '113970':
        return AuditEventSubType.value113970;
      case '114000':
        return AuditEventSubType.value114000;
      case '114001':
        return AuditEventSubType.value114001;
      case '114002':
        return AuditEventSubType.value114002;
      case '114003':
        return AuditEventSubType.value114003;
      case '114004':
        return AuditEventSubType.value114004;
      case '114005':
        return AuditEventSubType.value114005;
      case '114006':
        return AuditEventSubType.value114006;
      case '114007':
        return AuditEventSubType.value114007;
      case '114008':
        return AuditEventSubType.value114008;
      case '114009':
        return AuditEventSubType.value114009;
      case '114010':
        return AuditEventSubType.value114010;
      case '114011':
        return AuditEventSubType.value114011;
      case '114201':
        return AuditEventSubType.value114201;
      case '114202':
        return AuditEventSubType.value114202;
      case '114203':
        return AuditEventSubType.value114203;
      case '114204':
        return AuditEventSubType.value114204;
      case '114205':
        return AuditEventSubType.value114205;
      case '114206':
        return AuditEventSubType.value114206;
      case '114207':
        return AuditEventSubType.value114207;
      case '114208':
        return AuditEventSubType.value114208;
      case '114209':
        return AuditEventSubType.value114209;
      case '114210':
        return AuditEventSubType.value114210;
      case '114211':
        return AuditEventSubType.value114211;
      case '114213':
        return AuditEventSubType.value114213;
      case '114215':
        return AuditEventSubType.value114215;
      case '114216':
        return AuditEventSubType.value114216;
      case '121001':
        return AuditEventSubType.value121001;
      case '121002':
        return AuditEventSubType.value121002;
      case '121003':
        return AuditEventSubType.value121003;
      case '121004':
        return AuditEventSubType.value121004;
      case '121005':
        return AuditEventSubType.value121005;
      case '121006':
        return AuditEventSubType.value121006;
      case '121007':
        return AuditEventSubType.value121007;
      case '121008':
        return AuditEventSubType.value121008;
      case '121009':
        return AuditEventSubType.value121009;
      case '121010':
        return AuditEventSubType.value121010;
      case '121011':
        return AuditEventSubType.value121011;
      case '121012':
        return AuditEventSubType.value121012;
      case '121013':
        return AuditEventSubType.value121013;
      case '121014':
        return AuditEventSubType.value121014;
      case '121015':
        return AuditEventSubType.value121015;
      case '121016':
        return AuditEventSubType.value121016;
      case '121017':
        return AuditEventSubType.value121017;
      case '121018':
        return AuditEventSubType.value121018;
      case '121019':
        return AuditEventSubType.value121019;
      case '121020':
        return AuditEventSubType.value121020;
      case '121021':
        return AuditEventSubType.value121021;
      case '121022':
        return AuditEventSubType.value121022;
      case '121023':
        return AuditEventSubType.value121023;
      case '121024':
        return AuditEventSubType.value121024;
      case '121025':
        return AuditEventSubType.value121025;
      case '121026':
        return AuditEventSubType.value121026;
      case '121027':
        return AuditEventSubType.value121027;
      case '121028':
        return AuditEventSubType.value121028;
      case '121029':
        return AuditEventSubType.value121029;
      case '121030':
        return AuditEventSubType.value121030;
      case '121031':
        return AuditEventSubType.value121031;
      case '121032':
        return AuditEventSubType.value121032;
      case '121033':
        return AuditEventSubType.value121033;
      case '121034':
        return AuditEventSubType.value121034;
      case '121035':
        return AuditEventSubType.value121035;
      case '121036':
        return AuditEventSubType.value121036;
      case '121037':
        return AuditEventSubType.value121037;
      case '121038':
        return AuditEventSubType.value121038;
      case '121039':
        return AuditEventSubType.value121039;
      case '121040':
        return AuditEventSubType.value121040;
      case '121041':
        return AuditEventSubType.value121041;
      case '121042':
        return AuditEventSubType.value121042;
      case '121043':
        return AuditEventSubType.value121043;
      case '121044':
        return AuditEventSubType.value121044;
      case '121045':
        return AuditEventSubType.value121045;
      case '121046':
        return AuditEventSubType.value121046;
      case '121047':
        return AuditEventSubType.value121047;
      case '121048':
        return AuditEventSubType.value121048;
      case '121049':
        return AuditEventSubType.value121049;
      case '121050':
        return AuditEventSubType.value121050;
      case '121051':
        return AuditEventSubType.value121051;
      case '121052':
        return AuditEventSubType.value121052;
      case '121053':
        return AuditEventSubType.value121053;
      case '121054':
        return AuditEventSubType.value121054;
      case '121055':
        return AuditEventSubType.value121055;
      case '121056':
        return AuditEventSubType.value121056;
      case '121057':
        return AuditEventSubType.value121057;
      case '121058':
        return AuditEventSubType.value121058;
      case '121059':
        return AuditEventSubType.value121059;
      case '121060':
        return AuditEventSubType.value121060;
      case '121062':
        return AuditEventSubType.value121062;
      case '121064':
        return AuditEventSubType.value121064;
      case '121065':
        return AuditEventSubType.value121065;
      case '121066':
        return AuditEventSubType.value121066;
      case '121068':
        return AuditEventSubType.value121068;
      case '121069':
        return AuditEventSubType.value121069;
      case '121070':
        return AuditEventSubType.value121070;
      case '121071':
        return AuditEventSubType.value121071;
      case '121072':
        return AuditEventSubType.value121072;
      case '121073':
        return AuditEventSubType.value121073;
      case '121074':
        return AuditEventSubType.value121074;
      case '121075':
        return AuditEventSubType.value121075;
      case '121076':
        return AuditEventSubType.value121076;
      case '121077':
        return AuditEventSubType.value121077;
      case '121078':
        return AuditEventSubType.value121078;
      case '121079':
        return AuditEventSubType.value121079;
      case '121080':
        return AuditEventSubType.value121080;
      case '121081':
        return AuditEventSubType.value121081;
      case '121082':
        return AuditEventSubType.value121082;
      case '121083':
        return AuditEventSubType.value121083;
      case '121084':
        return AuditEventSubType.value121084;
      case '121085':
        return AuditEventSubType.value121085;
      case '121086':
        return AuditEventSubType.value121086;
      case '121087':
        return AuditEventSubType.value121087;
      case '121088':
        return AuditEventSubType.value121088;
      case '121089':
        return AuditEventSubType.value121089;
      case '121090':
        return AuditEventSubType.value121090;
      case '121091':
        return AuditEventSubType.value121091;
      case '121092':
        return AuditEventSubType.value121092;
      case '121093':
        return AuditEventSubType.value121093;
      case '121094':
        return AuditEventSubType.value121094;
      case '121095':
        return AuditEventSubType.value121095;
      case '121096':
        return AuditEventSubType.value121096;
      case '121097':
        return AuditEventSubType.value121097;
      case '121098':
        return AuditEventSubType.value121098;
      case '121099':
        return AuditEventSubType.value121099;
      case '121100':
        return AuditEventSubType.value121100;
      case '121101':
        return AuditEventSubType.value121101;
      case '121102':
        return AuditEventSubType.value121102;
      case '121103':
        return AuditEventSubType.value121103;
      case '121104':
        return AuditEventSubType.value121104;
      case '121105':
        return AuditEventSubType.value121105;
      case '121106':
        return AuditEventSubType.value121106;
      case '121109':
        return AuditEventSubType.value121109;
      case '121110':
        return AuditEventSubType.value121110;
      case '121111':
        return AuditEventSubType.value121111;
      case '121112':
        return AuditEventSubType.value121112;
      case '121113':
        return AuditEventSubType.value121113;
      case '121114':
        return AuditEventSubType.value121114;
      case '121115':
        return AuditEventSubType.value121115;
      case '121116':
        return AuditEventSubType.value121116;
      case '121117':
        return AuditEventSubType.value121117;
      case '121118':
        return AuditEventSubType.value121118;
      case '121120':
        return AuditEventSubType.value121120;
      case '121121':
        return AuditEventSubType.value121121;
      case '121122':
        return AuditEventSubType.value121122;
      case '121123':
        return AuditEventSubType.value121123;
      case '121124':
        return AuditEventSubType.value121124;
      case '121125':
        return AuditEventSubType.value121125;
      case '121126':
        return AuditEventSubType.value121126;
      case '121127':
        return AuditEventSubType.value121127;
      case '121128':
        return AuditEventSubType.value121128;
      case '121130':
        return AuditEventSubType.value121130;
      case '121131':
        return AuditEventSubType.value121131;
      case '121132':
        return AuditEventSubType.value121132;
      case '121133':
        return AuditEventSubType.value121133;
      case '121135':
        return AuditEventSubType.value121135;
      case '121136':
        return AuditEventSubType.value121136;
      case '121137':
        return AuditEventSubType.value121137;
      case '121138':
        return AuditEventSubType.value121138;
      case '121139':
        return AuditEventSubType.value121139;
      case '121140':
        return AuditEventSubType.value121140;
      case '121141':
        return AuditEventSubType.value121141;
      case '121142':
        return AuditEventSubType.value121142;
      case '121143':
        return AuditEventSubType.value121143;
      case '121144':
        return AuditEventSubType.value121144;
      case '121145':
        return AuditEventSubType.value121145;
      case '121146':
        return AuditEventSubType.value121146;
      case '121147':
        return AuditEventSubType.value121147;
      case '121148':
        return AuditEventSubType.value121148;
      case '121149':
        return AuditEventSubType.value121149;
      case '121150':
        return AuditEventSubType.value121150;
      case '121151':
        return AuditEventSubType.value121151;
      case '121152':
        return AuditEventSubType.value121152;
      case '121153':
        return AuditEventSubType.value121153;
      case '121154':
        return AuditEventSubType.value121154;
      case '121155':
        return AuditEventSubType.value121155;
      case '121156':
        return AuditEventSubType.value121156;
      case '121157':
        return AuditEventSubType.value121157;
      case '121158':
        return AuditEventSubType.value121158;
      case '121160':
        return AuditEventSubType.value121160;
      case '121161':
        return AuditEventSubType.value121161;
      case '121162':
        return AuditEventSubType.value121162;
      case '121163':
        return AuditEventSubType.value121163;
      case '121165':
        return AuditEventSubType.value121165;
      case '121166':
        return AuditEventSubType.value121166;
      case '121167':
        return AuditEventSubType.value121167;
      case '121168':
        return AuditEventSubType.value121168;
      case '121169':
        return AuditEventSubType.value121169;
      case '121171':
        return AuditEventSubType.value121171;
      case '121172':
        return AuditEventSubType.value121172;
      case '121173':
        return AuditEventSubType.value121173;
      case '121174':
        return AuditEventSubType.value121174;
      case '121180':
        return AuditEventSubType.value121180;
      case '121181':
        return AuditEventSubType.value121181;
      case '121190':
        return AuditEventSubType.value121190;
      case '121191':
        return AuditEventSubType.value121191;
      case '121192':
        return AuditEventSubType.value121192;
      case '121193':
        return AuditEventSubType.value121193;
      case '121194':
        return AuditEventSubType.value121194;
      case '121195':
        return AuditEventSubType.value121195;
      case '121196':
        return AuditEventSubType.value121196;
      case '121197':
        return AuditEventSubType.value121197;
      case '121198':
        return AuditEventSubType.value121198;
      case '121200':
        return AuditEventSubType.value121200;
      case '121201':
        return AuditEventSubType.value121201;
      case '121202':
        return AuditEventSubType.value121202;
      case '121206':
        return AuditEventSubType.value121206;
      case '121207':
        return AuditEventSubType.value121207;
      case '121208':
        return AuditEventSubType.value121208;
      case '121210':
        return AuditEventSubType.value121210;
      case '121211':
        return AuditEventSubType.value121211;
      case '121213':
        return AuditEventSubType.value121213;
      case '121214':
        return AuditEventSubType.value121214;
      case '121216':
        return AuditEventSubType.value121216;
      case '121217':
        return AuditEventSubType.value121217;
      case '121218':
        return AuditEventSubType.value121218;
      case '121219':
        return AuditEventSubType.value121219;
      case '121220':
        return AuditEventSubType.value121220;
      case '121221':
        return AuditEventSubType.value121221;
      case '121222':
        return AuditEventSubType.value121222;
      case '121230':
        return AuditEventSubType.value121230;
      case '121231':
        return AuditEventSubType.value121231;
      case '121232':
        return AuditEventSubType.value121232;
      case '121233':
        return AuditEventSubType.value121233;
      case '121242':
        return AuditEventSubType.value121242;
      case '121243':
        return AuditEventSubType.value121243;
      case '121244':
        return AuditEventSubType.value121244;
      case '121290':
        return AuditEventSubType.value121290;
      case '121291':
        return AuditEventSubType.value121291;
      case '121301':
        return AuditEventSubType.value121301;
      case '121302':
        return AuditEventSubType.value121302;
      case '121303':
        return AuditEventSubType.value121303;
      case '121304':
        return AuditEventSubType.value121304;
      case '121305':
        return AuditEventSubType.value121305;
      case '121306':
        return AuditEventSubType.value121306;
      case '121307':
        return AuditEventSubType.value121307;
      case '121311':
        return AuditEventSubType.value121311;
      case '121312':
        return AuditEventSubType.value121312;
      case '121313':
        return AuditEventSubType.value121313;
      case '121314':
        return AuditEventSubType.value121314;
      case '121315':
        return AuditEventSubType.value121315;
      case '121316':
        return AuditEventSubType.value121316;
      case '121317':
        return AuditEventSubType.value121317;
      case '121318':
        return AuditEventSubType.value121318;
      case '121320':
        return AuditEventSubType.value121320;
      case '121321':
        return AuditEventSubType.value121321;
      case '121322':
        return AuditEventSubType.value121322;
      case '121323':
        return AuditEventSubType.value121323;
      case '121324':
        return AuditEventSubType.value121324;
      case '121325':
        return AuditEventSubType.value121325;
      case '121326':
        return AuditEventSubType.value121326;
      case '121327':
        return AuditEventSubType.value121327;
      case '121328':
        return AuditEventSubType.value121328;
      case '121329':
        return AuditEventSubType.value121329;
      case '121330':
        return AuditEventSubType.value121330;
      case '121331':
        return AuditEventSubType.value121331;
      case '121332':
        return AuditEventSubType.value121332;
      case '121333':
        return AuditEventSubType.value121333;
      case '121334':
        return AuditEventSubType.value121334;
      case '121335':
        return AuditEventSubType.value121335;
      case '121338':
        return AuditEventSubType.value121338;
      case '121339':
        return AuditEventSubType.value121339;
      case '121340':
        return AuditEventSubType.value121340;
      case '121341':
        return AuditEventSubType.value121341;
      case '121342':
        return AuditEventSubType.value121342;
      case '121346':
        return AuditEventSubType.value121346;
      case '121347':
        return AuditEventSubType.value121347;
      case '121348':
        return AuditEventSubType.value121348;
      case '121349':
        return AuditEventSubType.value121349;
      case '121350':
        return AuditEventSubType.value121350;
      case '121351':
        return AuditEventSubType.value121351;
      case '121352':
        return AuditEventSubType.value121352;
      case '121353':
        return AuditEventSubType.value121353;
      case '121354':
        return AuditEventSubType.value121354;
      case '121358':
        return AuditEventSubType.value121358;
      case '121360':
        return AuditEventSubType.value121360;
      case '121361':
        return AuditEventSubType.value121361;
      case '121362':
        return AuditEventSubType.value121362;
      case '121363':
        return AuditEventSubType.value121363;
      case '121370':
        return AuditEventSubType.value121370;
      case '121371':
        return AuditEventSubType.value121371;
      case '121372':
        return AuditEventSubType.value121372;
      case '121380':
        return AuditEventSubType.value121380;
      case '121381':
        return AuditEventSubType.value121381;
      case '121382':
        return AuditEventSubType.value121382;
      case '121383':
        return AuditEventSubType.value121383;
      case '121401':
        return AuditEventSubType.value121401;
      case '121402':
        return AuditEventSubType.value121402;
      case '121403':
        return AuditEventSubType.value121403;
      case '121404':
        return AuditEventSubType.value121404;
      case '121405':
        return AuditEventSubType.value121405;
      case '121406':
        return AuditEventSubType.value121406;
      case '121407':
        return AuditEventSubType.value121407;
      case '121408':
        return AuditEventSubType.value121408;
      case '121410':
        return AuditEventSubType.value121410;
      case '121411':
        return AuditEventSubType.value121411;
      case '121412':
        return AuditEventSubType.value121412;
      case '121414':
        return AuditEventSubType.value121414;
      case '121415':
        return AuditEventSubType.value121415;
      case '121416':
        return AuditEventSubType.value121416;
      case '121417':
        return AuditEventSubType.value121417;
      case '121420':
        return AuditEventSubType.value121420;
      case '121421':
        return AuditEventSubType.value121421;
      case '121422':
        return AuditEventSubType.value121422;
      case '121423':
        return AuditEventSubType.value121423;
      case '121424':
        return AuditEventSubType.value121424;
      case '121425':
        return AuditEventSubType.value121425;
      case '121427':
        return AuditEventSubType.value121427;
      case '121428':
        return AuditEventSubType.value121428;
      case '121430':
        return AuditEventSubType.value121430;
      case '121431':
        return AuditEventSubType.value121431;
      case '121432':
        return AuditEventSubType.value121432;
      case '121433':
        return AuditEventSubType.value121433;
      case '121434':
        return AuditEventSubType.value121434;
      case '121435':
        return AuditEventSubType.value121435;
      case '121436':
        return AuditEventSubType.value121436;
      case '121437':
        return AuditEventSubType.value121437;
      case '121438':
        return AuditEventSubType.value121438;
      case '121439':
        return AuditEventSubType.value121439;
      case '121701':
        return AuditEventSubType.value121701;
      case '121702':
        return AuditEventSubType.value121702;
      case '121703':
        return AuditEventSubType.value121703;
      case '121704':
        return AuditEventSubType.value121704;
      case '121705':
        return AuditEventSubType.value121705;
      case '121706':
        return AuditEventSubType.value121706;
      case '121707':
        return AuditEventSubType.value121707;
      case '121708':
        return AuditEventSubType.value121708;
      case '121709':
        return AuditEventSubType.value121709;
      case '121710':
        return AuditEventSubType.value121710;
      case '121711':
        return AuditEventSubType.value121711;
      case '121712':
        return AuditEventSubType.value121712;
      case '121713':
        return AuditEventSubType.value121713;
      case '121714':
        return AuditEventSubType.value121714;
      case '121715':
        return AuditEventSubType.value121715;
      case '121716':
        return AuditEventSubType.value121716;
      case '121717':
        return AuditEventSubType.value121717;
      case '121718':
        return AuditEventSubType.value121718;
      case '121719':
        return AuditEventSubType.value121719;
      case '121720':
        return AuditEventSubType.value121720;
      case '121721':
        return AuditEventSubType.value121721;
      case '121722':
        return AuditEventSubType.value121722;
      case '121723':
        return AuditEventSubType.value121723;
      case '121724':
        return AuditEventSubType.value121724;
      case '121725':
        return AuditEventSubType.value121725;
      case '121726':
        return AuditEventSubType.value121726;
      case '121727':
        return AuditEventSubType.value121727;
      case '121728':
        return AuditEventSubType.value121728;
      case '121729':
        return AuditEventSubType.value121729;
      case '121730':
        return AuditEventSubType.value121730;
      case '121731':
        return AuditEventSubType.value121731;
      case '121732':
        return AuditEventSubType.value121732;
      case '121733':
        return AuditEventSubType.value121733;
      case '121734':
        return AuditEventSubType.value121734;
      case '121740':
        return AuditEventSubType.value121740;
      case '122001':
        return AuditEventSubType.value122001;
      case '122002':
        return AuditEventSubType.value122002;
      case '122003':
        return AuditEventSubType.value122003;
      case '122004':
        return AuditEventSubType.value122004;
      case '122005':
        return AuditEventSubType.value122005;
      case '122006':
        return AuditEventSubType.value122006;
      case '122007':
        return AuditEventSubType.value122007;
      case '122008':
        return AuditEventSubType.value122008;
      case '122009':
        return AuditEventSubType.value122009;
      case '122010':
        return AuditEventSubType.value122010;
      case '122011':
        return AuditEventSubType.value122011;
      case '122012':
        return AuditEventSubType.value122012;
      case '122020':
        return AuditEventSubType.value122020;
      case '122021':
        return AuditEventSubType.value122021;
      case '122022':
        return AuditEventSubType.value122022;
      case '122023':
        return AuditEventSubType.value122023;
      case '122024':
        return AuditEventSubType.value122024;
      case '122025':
        return AuditEventSubType.value122025;
      case '122026':
        return AuditEventSubType.value122026;
      case '122027':
        return AuditEventSubType.value122027;
      case '122028':
        return AuditEventSubType.value122028;
      case '122029':
        return AuditEventSubType.value122029;
      case '122030':
        return AuditEventSubType.value122030;
      case '122031':
        return AuditEventSubType.value122031;
      case '122032':
        return AuditEventSubType.value122032;
      case '122033':
        return AuditEventSubType.value122033;
      case '122034':
        return AuditEventSubType.value122034;
      case '122035':
        return AuditEventSubType.value122035;
      case '122036':
        return AuditEventSubType.value122036;
      case '122037':
        return AuditEventSubType.value122037;
      case '122038':
        return AuditEventSubType.value122038;
      case '122039':
        return AuditEventSubType.value122039;
      case '122041':
        return AuditEventSubType.value122041;
      case '122042':
        return AuditEventSubType.value122042;
      case '122043':
        return AuditEventSubType.value122043;
      case '122044':
        return AuditEventSubType.value122044;
      case '122045':
        return AuditEventSubType.value122045;
      case '122046':
        return AuditEventSubType.value122046;
      case '122047':
        return AuditEventSubType.value122047;
      case '122048':
        return AuditEventSubType.value122048;
      case '122049':
        return AuditEventSubType.value122049;
      case '122052':
        return AuditEventSubType.value122052;
      case '122053':
        return AuditEventSubType.value122053;
      case '122054':
        return AuditEventSubType.value122054;
      case '122055':
        return AuditEventSubType.value122055;
      case '122056':
        return AuditEventSubType.value122056;
      case '122057':
        return AuditEventSubType.value122057;
      case '122058':
        return AuditEventSubType.value122058;
      case '122059':
        return AuditEventSubType.value122059;
      case '122060':
        return AuditEventSubType.value122060;
      case '122061':
        return AuditEventSubType.value122061;
      case '122062':
        return AuditEventSubType.value122062;
      case '122072':
        return AuditEventSubType.value122072;
      case '122073':
        return AuditEventSubType.value122073;
      case '122075':
        return AuditEventSubType.value122075;
      case '122076':
        return AuditEventSubType.value122076;
      case '122077':
        return AuditEventSubType.value122077;
      case '122078':
        return AuditEventSubType.value122078;
      case '122079':
        return AuditEventSubType.value122079;
      case '122081':
        return AuditEventSubType.value122081;
      case '122082':
        return AuditEventSubType.value122082;
      case '122083':
        return AuditEventSubType.value122083;
      case '122084':
        return AuditEventSubType.value122084;
      case '122085':
        return AuditEventSubType.value122085;
      case '122086':
        return AuditEventSubType.value122086;
      case '122087':
        return AuditEventSubType.value122087;
      case '122088':
        return AuditEventSubType.value122088;
      case '122089':
        return AuditEventSubType.value122089;
      case '122090':
        return AuditEventSubType.value122090;
      case '122091':
        return AuditEventSubType.value122091;
      case '122092':
        return AuditEventSubType.value122092;
      case '122093':
        return AuditEventSubType.value122093;
      case '122094':
        return AuditEventSubType.value122094;
      case '122095':
        return AuditEventSubType.value122095;
      case '122096':
        return AuditEventSubType.value122096;
      case '122097':
        return AuditEventSubType.value122097;
      case '122098':
        return AuditEventSubType.value122098;
      case '122099':
        return AuditEventSubType.value122099;
      case '122101':
        return AuditEventSubType.value122101;
      case '122102':
        return AuditEventSubType.value122102;
      case '122103':
        return AuditEventSubType.value122103;
      case '122104':
        return AuditEventSubType.value122104;
      case '122105':
        return AuditEventSubType.value122105;
      case '122106':
        return AuditEventSubType.value122106;
      case '122107':
        return AuditEventSubType.value122107;
      case '122108':
        return AuditEventSubType.value122108;
      case '122109':
        return AuditEventSubType.value122109;
      case '122110':
        return AuditEventSubType.value122110;
      case '122111':
        return AuditEventSubType.value122111;
      case '122112':
        return AuditEventSubType.value122112;
      case '122113':
        return AuditEventSubType.value122113;
      case '122114':
        return AuditEventSubType.value122114;
      case '122120':
        return AuditEventSubType.value122120;
      case '122121':
        return AuditEventSubType.value122121;
      case '122122':
        return AuditEventSubType.value122122;
      case '122123':
        return AuditEventSubType.value122123;
      case '122124':
        return AuditEventSubType.value122124;
      case '122125':
        return AuditEventSubType.value122125;
      case '122126':
        return AuditEventSubType.value122126;
      case '122127':
        return AuditEventSubType.value122127;
      case '122128':
        return AuditEventSubType.value122128;
      case '122129':
        return AuditEventSubType.value122129;
      case '122130':
        return AuditEventSubType.value122130;
      case '122131':
        return AuditEventSubType.value122131;
      case '122132':
        return AuditEventSubType.value122132;
      case '122133':
        return AuditEventSubType.value122133;
      case '122134':
        return AuditEventSubType.value122134;
      case '122138':
        return AuditEventSubType.value122138;
      case '122139':
        return AuditEventSubType.value122139;
      case '122140':
        return AuditEventSubType.value122140;
      case '122141':
        return AuditEventSubType.value122141;
      case '122142':
        return AuditEventSubType.value122142;
      case '122143':
        return AuditEventSubType.value122143;
      case '122144':
        return AuditEventSubType.value122144;
      case '122145':
        return AuditEventSubType.value122145;
      case '122146':
        return AuditEventSubType.value122146;
      case '122147':
        return AuditEventSubType.value122147;
      case '122148':
        return AuditEventSubType.value122148;
      case '122149':
        return AuditEventSubType.value122149;
      case '122150':
        return AuditEventSubType.value122150;
      case '122151':
        return AuditEventSubType.value122151;
      case '122152':
        return AuditEventSubType.value122152;
      case '122153':
        return AuditEventSubType.value122153;
      case '122154':
        return AuditEventSubType.value122154;
      case '122157':
        return AuditEventSubType.value122157;
      case '122158':
        return AuditEventSubType.value122158;
      case '122159':
        return AuditEventSubType.value122159;
      case '122160':
        return AuditEventSubType.value122160;
      case '122161':
        return AuditEventSubType.value122161;
      case '122162':
        return AuditEventSubType.value122162;
      case '122163':
        return AuditEventSubType.value122163;
      case '122164':
        return AuditEventSubType.value122164;
      case '122165':
        return AuditEventSubType.value122165;
      case '122166':
        return AuditEventSubType.value122166;
      case '122167':
        return AuditEventSubType.value122167;
      case '122170':
        return AuditEventSubType.value122170;
      case '122171':
        return AuditEventSubType.value122171;
      case '122172':
        return AuditEventSubType.value122172;
      case '122173':
        return AuditEventSubType.value122173;
      case '122175':
        return AuditEventSubType.value122175;
      case '122176':
        return AuditEventSubType.value122176;
      case '122177':
        return AuditEventSubType.value122177;
      case '122178':
        return AuditEventSubType.value122178;
      case '122179':
        return AuditEventSubType.value122179;
      case '122180':
        return AuditEventSubType.value122180;
      case '122181':
        return AuditEventSubType.value122181;
      case '122182':
        return AuditEventSubType.value122182;
      case '122183':
        return AuditEventSubType.value122183;
      case '122185':
        return AuditEventSubType.value122185;
      case '122187':
        return AuditEventSubType.value122187;
      case '122188':
        return AuditEventSubType.value122188;
      case '122189':
        return AuditEventSubType.value122189;
      case '122190':
        return AuditEventSubType.value122190;
      case '122191':
        return AuditEventSubType.value122191;
      case '122192':
        return AuditEventSubType.value122192;
      case '122193':
        return AuditEventSubType.value122193;
      case '122194':
        return AuditEventSubType.value122194;
      case '122195':
        return AuditEventSubType.value122195;
      case '122196':
        return AuditEventSubType.value122196;
      case '122197':
        return AuditEventSubType.value122197;
      case '122198':
        return AuditEventSubType.value122198;
      case '122199':
        return AuditEventSubType.value122199;
      case '122201':
        return AuditEventSubType.value122201;
      case '122202':
        return AuditEventSubType.value122202;
      case '122203':
        return AuditEventSubType.value122203;
      case '122204':
        return AuditEventSubType.value122204;
      case '122205':
        return AuditEventSubType.value122205;
      case '122206':
        return AuditEventSubType.value122206;
      case '122207':
        return AuditEventSubType.value122207;
      case '122208':
        return AuditEventSubType.value122208;
      case '122209':
        return AuditEventSubType.value122209;
      case '122210':
        return AuditEventSubType.value122210;
      case '122211':
        return AuditEventSubType.value122211;
      case '122212':
        return AuditEventSubType.value122212;
      case '122213':
        return AuditEventSubType.value122213;
      case '122214':
        return AuditEventSubType.value122214;
      case '122215':
        return AuditEventSubType.value122215;
      case '122216':
        return AuditEventSubType.value122216;
      case '122217':
        return AuditEventSubType.value122217;
      case '122218':
        return AuditEventSubType.value122218;
      case '122219':
        return AuditEventSubType.value122219;
      case '122220':
        return AuditEventSubType.value122220;
      case '122221':
        return AuditEventSubType.value122221;
      case '122222':
        return AuditEventSubType.value122222;
      case '122223':
        return AuditEventSubType.value122223;
      case '122224':
        return AuditEventSubType.value122224;
      case '122225':
        return AuditEventSubType.value122225;
      case '122227':
        return AuditEventSubType.value122227;
      case '122228':
        return AuditEventSubType.value122228;
      case '122229':
        return AuditEventSubType.value122229;
      case '122230':
        return AuditEventSubType.value122230;
      case '122231':
        return AuditEventSubType.value122231;
      case '122232':
        return AuditEventSubType.value122232;
      case '122233':
        return AuditEventSubType.value122233;
      case '122234':
        return AuditEventSubType.value122234;
      case '122235':
        return AuditEventSubType.value122235;
      case '122236':
        return AuditEventSubType.value122236;
      case '122237':
        return AuditEventSubType.value122237;
      case '122238':
        return AuditEventSubType.value122238;
      case '122239':
        return AuditEventSubType.value122239;
      case '122240':
        return AuditEventSubType.value122240;
      case '122241':
        return AuditEventSubType.value122241;
      case '122242':
        return AuditEventSubType.value122242;
      case '122243':
        return AuditEventSubType.value122243;
      case '122244':
        return AuditEventSubType.value122244;
      case '122245':
        return AuditEventSubType.value122245;
      case '122246':
        return AuditEventSubType.value122246;
      case '122247':
        return AuditEventSubType.value122247;
      case '122248':
        return AuditEventSubType.value122248;
      case '122249':
        return AuditEventSubType.value122249;
      case '122250':
        return AuditEventSubType.value122250;
      case '122251':
        return AuditEventSubType.value122251;
      case '122252':
        return AuditEventSubType.value122252;
      case '122253':
        return AuditEventSubType.value122253;
      case '122254':
        return AuditEventSubType.value122254;
      case '122255':
        return AuditEventSubType.value122255;
      case '122256':
        return AuditEventSubType.value122256;
      case '122257':
        return AuditEventSubType.value122257;
      case '122258':
        return AuditEventSubType.value122258;
      case '122259':
        return AuditEventSubType.value122259;
      case '122260':
        return AuditEventSubType.value122260;
      case '122261':
        return AuditEventSubType.value122261;
      case '122262':
        return AuditEventSubType.value122262;
      case '122263':
        return AuditEventSubType.value122263;
      case '122265':
        return AuditEventSubType.value122265;
      case '122266':
        return AuditEventSubType.value122266;
      case '122267':
        return AuditEventSubType.value122267;
      case '122268':
        return AuditEventSubType.value122268;
      case '122269':
        return AuditEventSubType.value122269;
      case '122270':
        return AuditEventSubType.value122270;
      case '122271':
        return AuditEventSubType.value122271;
      case '122272':
        return AuditEventSubType.value122272;
      case '122273':
        return AuditEventSubType.value122273;
      case '122274':
        return AuditEventSubType.value122274;
      case '122275':
        return AuditEventSubType.value122275;
      case '122276':
        return AuditEventSubType.value122276;
      case '122277':
        return AuditEventSubType.value122277;
      case '122278':
        return AuditEventSubType.value122278;
      case '122279':
        return AuditEventSubType.value122279;
      case '122281':
        return AuditEventSubType.value122281;
      case '122282':
        return AuditEventSubType.value122282;
      case '122283':
        return AuditEventSubType.value122283;
      case '122288':
        return AuditEventSubType.value122288;
      case '122291':
        return AuditEventSubType.value122291;
      case '122292':
        return AuditEventSubType.value122292;
      case '122301':
        return AuditEventSubType.value122301;
      case '122302':
        return AuditEventSubType.value122302;
      case '122303':
        return AuditEventSubType.value122303;
      case '122304':
        return AuditEventSubType.value122304;
      case '122305':
        return AuditEventSubType.value122305;
      case '122306':
        return AuditEventSubType.value122306;
      case '122307':
        return AuditEventSubType.value122307;
      case '122308':
        return AuditEventSubType.value122308;
      case '122309':
        return AuditEventSubType.value122309;
      case '122310':
        return AuditEventSubType.value122310;
      case '122311':
        return AuditEventSubType.value122311;
      case '122312':
        return AuditEventSubType.value122312;
      case '122313':
        return AuditEventSubType.value122313;
      case '122319':
        return AuditEventSubType.value122319;
      case '122320':
        return AuditEventSubType.value122320;
      case '122321':
        return AuditEventSubType.value122321;
      case '122322':
        return AuditEventSubType.value122322;
      case '122325':
        return AuditEventSubType.value122325;
      case '122330':
        return AuditEventSubType.value122330;
      case '122331':
        return AuditEventSubType.value122331;
      case '122332':
        return AuditEventSubType.value122332;
      case '122333':
        return AuditEventSubType.value122333;
      case '122334':
        return AuditEventSubType.value122334;
      case '122335':
        return AuditEventSubType.value122335;
      case '122336':
        return AuditEventSubType.value122336;
      case '122337':
        return AuditEventSubType.value122337;
      case '122339':
        return AuditEventSubType.value122339;
      case '122340':
        return AuditEventSubType.value122340;
      case '122341':
        return AuditEventSubType.value122341;
      case '122343':
        return AuditEventSubType.value122343;
      case '122344':
        return AuditEventSubType.value122344;
      case '122345':
        return AuditEventSubType.value122345;
      case '122346':
        return AuditEventSubType.value122346;
      case '122347':
        return AuditEventSubType.value122347;
      case '122348':
        return AuditEventSubType.value122348;
      case '122350':
        return AuditEventSubType.value122350;
      case '122351':
        return AuditEventSubType.value122351;
      case '122352':
        return AuditEventSubType.value122352;
      case '122354':
        return AuditEventSubType.value122354;
      case '122355':
        return AuditEventSubType.value122355;
      case '122356':
        return AuditEventSubType.value122356;
      case '122357':
        return AuditEventSubType.value122357;
      case '122360':
        return AuditEventSubType.value122360;
      case '122361':
        return AuditEventSubType.value122361;
      case '122363':
        return AuditEventSubType.value122363;
      case '122364':
        return AuditEventSubType.value122364;
      case '122367':
        return AuditEventSubType.value122367;
      case '122368':
        return AuditEventSubType.value122368;
      case '122369':
        return AuditEventSubType.value122369;
      case '122370':
        return AuditEventSubType.value122370;
      case '122371':
        return AuditEventSubType.value122371;
      case '122372':
        return AuditEventSubType.value122372;
      case '122374':
        return AuditEventSubType.value122374;
      case '122375':
        return AuditEventSubType.value122375;
      case '122376':
        return AuditEventSubType.value122376;
      case '122380':
        return AuditEventSubType.value122380;
      case '122381':
        return AuditEventSubType.value122381;
      case '122382':
        return AuditEventSubType.value122382;
      case '122383':
        return AuditEventSubType.value122383;
      case '122384':
        return AuditEventSubType.value122384;
      case '122385':
        return AuditEventSubType.value122385;
      case '122386':
        return AuditEventSubType.value122386;
      case '122387':
        return AuditEventSubType.value122387;
      case '122388':
        return AuditEventSubType.value122388;
      case '122389':
        return AuditEventSubType.value122389;
      case '122390':
        return AuditEventSubType.value122390;
      case '122391':
        return AuditEventSubType.value122391;
      case '122393':
        return AuditEventSubType.value122393;
      case '122394':
        return AuditEventSubType.value122394;
      case '122395':
        return AuditEventSubType.value122395;
      case '122398':
        return AuditEventSubType.value122398;
      case '122399':
        return AuditEventSubType.value122399;
      case '122400':
        return AuditEventSubType.value122400;
      case '122401':
        return AuditEventSubType.value122401;
      case '122402':
        return AuditEventSubType.value122402;
      case '122403':
        return AuditEventSubType.value122403;
      case '122404':
        return AuditEventSubType.value122404;
      case '122405':
        return AuditEventSubType.value122405;
      case '122406':
        return AuditEventSubType.value122406;
      case '122407':
        return AuditEventSubType.value122407;
      case '122408':
        return AuditEventSubType.value122408;
      case '122410':
        return AuditEventSubType.value122410;
      case '122411':
        return AuditEventSubType.value122411;
      case '122417':
        return AuditEventSubType.value122417;
      case '122421':
        return AuditEventSubType.value122421;
      case '122422':
        return AuditEventSubType.value122422;
      case '122423':
        return AuditEventSubType.value122423;
      case '122428':
        return AuditEventSubType.value122428;
      case '122429':
        return AuditEventSubType.value122429;
      case '122430':
        return AuditEventSubType.value122430;
      case '122431':
        return AuditEventSubType.value122431;
      case '122432':
        return AuditEventSubType.value122432;
      case '122433':
        return AuditEventSubType.value122433;
      case '122434':
        return AuditEventSubType.value122434;
      case '122435':
        return AuditEventSubType.value122435;
      case '122438':
        return AuditEventSubType.value122438;
      case '122445':
        return AuditEventSubType.value122445;
      case '122446':
        return AuditEventSubType.value122446;
      case '122447':
        return AuditEventSubType.value122447;
      case '122448':
        return AuditEventSubType.value122448;
      case '122449':
        return AuditEventSubType.value122449;
      case '122450':
        return AuditEventSubType.value122450;
      case '122451':
        return AuditEventSubType.value122451;
      case '122452':
        return AuditEventSubType.value122452;
      case '122453':
        return AuditEventSubType.value122453;
      case '122459':
        return AuditEventSubType.value122459;
      case '122461':
        return AuditEventSubType.value122461;
      case '122464':
        return AuditEventSubType.value122464;
      case '122465':
        return AuditEventSubType.value122465;
      case '122466':
        return AuditEventSubType.value122466;
      case '122467':
        return AuditEventSubType.value122467;
      case '122468':
        return AuditEventSubType.value122468;
      case '122469':
        return AuditEventSubType.value122469;
      case '122470':
        return AuditEventSubType.value122470;
      case '122471':
        return AuditEventSubType.value122471;
      case '122472':
        return AuditEventSubType.value122472;
      case '122473':
        return AuditEventSubType.value122473;
      case '122474':
        return AuditEventSubType.value122474;
      case '122475':
        return AuditEventSubType.value122475;
      case '122476':
        return AuditEventSubType.value122476;
      case '122477':
        return AuditEventSubType.value122477;
      case '122480':
        return AuditEventSubType.value122480;
      case '122481':
        return AuditEventSubType.value122481;
      case '122482':
        return AuditEventSubType.value122482;
      case '122485':
        return AuditEventSubType.value122485;
      case '122486':
        return AuditEventSubType.value122486;
      case '122487':
        return AuditEventSubType.value122487;
      case '122488':
        return AuditEventSubType.value122488;
      case '122489':
        return AuditEventSubType.value122489;
      case '122490':
        return AuditEventSubType.value122490;
      case '122491':
        return AuditEventSubType.value122491;
      case '122493':
        return AuditEventSubType.value122493;
      case '122495':
        return AuditEventSubType.value122495;
      case '122496':
        return AuditEventSubType.value122496;
      case '122497':
        return AuditEventSubType.value122497;
      case '122498':
        return AuditEventSubType.value122498;
      case '122499':
        return AuditEventSubType.value122499;
      case '122501':
        return AuditEventSubType.value122501;
      case '122502':
        return AuditEventSubType.value122502;
      case '122503':
        return AuditEventSubType.value122503;
      case '122505':
        return AuditEventSubType.value122505;
      case '122507':
        return AuditEventSubType.value122507;
      case '122508':
        return AuditEventSubType.value122508;
      case '122509':
        return AuditEventSubType.value122509;
      case '122510':
        return AuditEventSubType.value122510;
      case '122511':
        return AuditEventSubType.value122511;
      case '122516':
        return AuditEventSubType.value122516;
      case '122517':
        return AuditEventSubType.value122517;
      case '122528':
        return AuditEventSubType.value122528;
      case '122529':
        return AuditEventSubType.value122529;
      case '122542':
        return AuditEventSubType.value122542;
      case '122544':
        return AuditEventSubType.value122544;
      case '122545':
        return AuditEventSubType.value122545;
      case '122546':
        return AuditEventSubType.value122546;
      case '122547':
        return AuditEventSubType.value122547;
      case '122548':
        return AuditEventSubType.value122548;
      case '122549':
        return AuditEventSubType.value122549;
      case '122550':
        return AuditEventSubType.value122550;
      case '122551':
        return AuditEventSubType.value122551;
      case '122554':
        return AuditEventSubType.value122554;
      case '122555':
        return AuditEventSubType.value122555;
      case '122558':
        return AuditEventSubType.value122558;
      case '122559':
        return AuditEventSubType.value122559;
      case '122560':
        return AuditEventSubType.value122560;
      case '122562':
        return AuditEventSubType.value122562;
      case '122563':
        return AuditEventSubType.value122563;
      case '122564':
        return AuditEventSubType.value122564;
      case '122565':
        return AuditEventSubType.value122565;
      case '122566':
        return AuditEventSubType.value122566;
      case '122572':
        return AuditEventSubType.value122572;
      case '122574':
        return AuditEventSubType.value122574;
      case '122575':
        return AuditEventSubType.value122575;
      case '122582':
        return AuditEventSubType.value122582;
      case '122600':
        return AuditEventSubType.value122600;
      case '122601':
        return AuditEventSubType.value122601;
      case '122602':
        return AuditEventSubType.value122602;
      case '122603':
        return AuditEventSubType.value122603;
      case '122604':
        return AuditEventSubType.value122604;
      case '122605':
        return AuditEventSubType.value122605;
      case '122606':
        return AuditEventSubType.value122606;
      case '122607':
        return AuditEventSubType.value122607;
      case '122608':
        return AuditEventSubType.value122608;
      case '122609':
        return AuditEventSubType.value122609;
      case '122611':
        return AuditEventSubType.value122611;
      case '122612':
        return AuditEventSubType.value122612;
      case '122616':
        return AuditEventSubType.value122616;
      case '122617':
        return AuditEventSubType.value122617;
      case '122618':
        return AuditEventSubType.value122618;
      case '122619':
        return AuditEventSubType.value122619;
      case '122620':
        return AuditEventSubType.value122620;
      case '122621':
        return AuditEventSubType.value122621;
      case '122624':
        return AuditEventSubType.value122624;
      case '122627':
        return AuditEventSubType.value122627;
      case '122628':
        return AuditEventSubType.value122628;
      case '122631':
        return AuditEventSubType.value122631;
      case '122633':
        return AuditEventSubType.value122633;
      case '122634':
        return AuditEventSubType.value122634;
      case '122635':
        return AuditEventSubType.value122635;
      case '122636':
        return AuditEventSubType.value122636;
      case '122637':
        return AuditEventSubType.value122637;
      case '122638':
        return AuditEventSubType.value122638;
      case '122639':
        return AuditEventSubType.value122639;
      case '122640':
        return AuditEventSubType.value122640;
      case '122642':
        return AuditEventSubType.value122642;
      case '122643':
        return AuditEventSubType.value122643;
      case '122645':
        return AuditEventSubType.value122645;
      case '122650':
        return AuditEventSubType.value122650;
      case '122651':
        return AuditEventSubType.value122651;
      case '122652':
        return AuditEventSubType.value122652;
      case '122655':
        return AuditEventSubType.value122655;
      case '122656':
        return AuditEventSubType.value122656;
      case '122657':
        return AuditEventSubType.value122657;
      case '122658':
        return AuditEventSubType.value122658;
      case '122659':
        return AuditEventSubType.value122659;
      case '122660':
        return AuditEventSubType.value122660;
      case '122661':
        return AuditEventSubType.value122661;
      case '122664':
        return AuditEventSubType.value122664;
      case '122665':
        return AuditEventSubType.value122665;
      case '122666':
        return AuditEventSubType.value122666;
      case '122667':
        return AuditEventSubType.value122667;
      case '122668':
        return AuditEventSubType.value122668;
      case '122670':
        return AuditEventSubType.value122670;
      case '122675':
        return AuditEventSubType.value122675;
      case '122680':
        return AuditEventSubType.value122680;
      case '122683':
        return AuditEventSubType.value122683;
      case '122684':
        return AuditEventSubType.value122684;
      case '122685':
        return AuditEventSubType.value122685;
      case '122686':
        return AuditEventSubType.value122686;
      case '122687':
        return AuditEventSubType.value122687;
      case '122698':
        return AuditEventSubType.value122698;
      case '122699':
        return AuditEventSubType.value122699;
      case '122700':
        return AuditEventSubType.value122700;
      case '122701':
        return AuditEventSubType.value122701;
      case '122702':
        return AuditEventSubType.value122702;
      case '122703':
        return AuditEventSubType.value122703;
      case '122704':
        return AuditEventSubType.value122704;
      case '122705':
        return AuditEventSubType.value122705;
      case '122706':
        return AuditEventSubType.value122706;
      case '122707':
        return AuditEventSubType.value122707;
      case '122708':
        return AuditEventSubType.value122708;
      case '122709':
        return AuditEventSubType.value122709;
      case '122710':
        return AuditEventSubType.value122710;
      case '122711':
        return AuditEventSubType.value122711;
      case '122712':
        return AuditEventSubType.value122712;
      case '122713':
        return AuditEventSubType.value122713;
      case '122715':
        return AuditEventSubType.value122715;
      case '122716':
        return AuditEventSubType.value122716;
      case '122717':
        return AuditEventSubType.value122717;
      case '122718':
        return AuditEventSubType.value122718;
      case '122720':
        return AuditEventSubType.value122720;
      case '122721':
        return AuditEventSubType.value122721;
      case '122726':
        return AuditEventSubType.value122726;
      case '122727':
        return AuditEventSubType.value122727;
      case '122728':
        return AuditEventSubType.value122728;
      case '122729':
        return AuditEventSubType.value122729;
      case '122730':
        return AuditEventSubType.value122730;
      case '122731':
        return AuditEventSubType.value122731;
      case '122732':
        return AuditEventSubType.value122732;
      case '122733':
        return AuditEventSubType.value122733;
      case '122734':
        return AuditEventSubType.value122734;
      case '122735':
        return AuditEventSubType.value122735;
      case '122739':
        return AuditEventSubType.value122739;
      case '122740':
        return AuditEventSubType.value122740;
      case '122741':
        return AuditEventSubType.value122741;
      case '122742':
        return AuditEventSubType.value122742;
      case '122743':
        return AuditEventSubType.value122743;
      case '122744':
        return AuditEventSubType.value122744;
      case '122745':
        return AuditEventSubType.value122745;
      case '122748':
        return AuditEventSubType.value122748;
      case '122750':
        return AuditEventSubType.value122750;
      case '122751':
        return AuditEventSubType.value122751;
      case '122752':
        return AuditEventSubType.value122752;
      case '122753':
        return AuditEventSubType.value122753;
      case '122755':
        return AuditEventSubType.value122755;
      case '122756':
        return AuditEventSubType.value122756;
      case '122757':
        return AuditEventSubType.value122757;
      case '122758':
        return AuditEventSubType.value122758;
      case '122759':
        return AuditEventSubType.value122759;
      case '122760':
        return AuditEventSubType.value122760;
      case '122762':
        return AuditEventSubType.value122762;
      case '122764':
        return AuditEventSubType.value122764;
      case '122768':
        return AuditEventSubType.value122768;
      case '122769':
        return AuditEventSubType.value122769;
      case '122770':
        return AuditEventSubType.value122770;
      case '122771':
        return AuditEventSubType.value122771;
      case '122772':
        return AuditEventSubType.value122772;
      case '122773':
        return AuditEventSubType.value122773;
      case '122775':
        return AuditEventSubType.value122775;
      case '122776':
        return AuditEventSubType.value122776;
      case '122781':
        return AuditEventSubType.value122781;
      case '122782':
        return AuditEventSubType.value122782;
      case '122783':
        return AuditEventSubType.value122783;
      case '122784':
        return AuditEventSubType.value122784;
      case '122785':
        return AuditEventSubType.value122785;
      case '122791':
        return AuditEventSubType.value122791;
      case '122792':
        return AuditEventSubType.value122792;
      case '122793':
        return AuditEventSubType.value122793;
      case '122795':
        return AuditEventSubType.value122795;
      case '122796':
        return AuditEventSubType.value122796;
      case '122797':
        return AuditEventSubType.value122797;
      case '122799':
        return AuditEventSubType.value122799;
      case '123001':
        return AuditEventSubType.value123001;
      case '123003':
        return AuditEventSubType.value123003;
      case '123004':
        return AuditEventSubType.value123004;
      case '123005':
        return AuditEventSubType.value123005;
      case '123006':
        return AuditEventSubType.value123006;
      case '123007':
        return AuditEventSubType.value123007;
      case '123009':
        return AuditEventSubType.value123009;
      case '123010':
        return AuditEventSubType.value123010;
      case '123011':
        return AuditEventSubType.value123011;
      case '123012':
        return AuditEventSubType.value123012;
      case '123014':
        return AuditEventSubType.value123014;
      case '123015':
        return AuditEventSubType.value123015;
      case '123016':
        return AuditEventSubType.value123016;
      case '123019':
        return AuditEventSubType.value123019;
      case '123101':
        return AuditEventSubType.value123101;
      case '123102':
        return AuditEventSubType.value123102;
      case '123103':
        return AuditEventSubType.value123103;
      case '123104':
        return AuditEventSubType.value123104;
      case '123105':
        return AuditEventSubType.value123105;
      case '123106':
        return AuditEventSubType.value123106;
      case '123107':
        return AuditEventSubType.value123107;
      case '123108':
        return AuditEventSubType.value123108;
      case '123109':
        return AuditEventSubType.value123109;
      case '123110':
        return AuditEventSubType.value123110;
      case '123111':
        return AuditEventSubType.value123111;
      case '125000':
        return AuditEventSubType.value125000;
      case '125001':
        return AuditEventSubType.value125001;
      case '125002':
        return AuditEventSubType.value125002;
      case '125003':
        return AuditEventSubType.value125003;
      case '125004':
        return AuditEventSubType.value125004;
      case '125005':
        return AuditEventSubType.value125005;
      case '125006':
        return AuditEventSubType.value125006;
      case '125007':
        return AuditEventSubType.value125007;
      case '125008':
        return AuditEventSubType.value125008;
      case '125009':
        return AuditEventSubType.value125009;
      case '125010':
        return AuditEventSubType.value125010;
      case '125011':
        return AuditEventSubType.value125011;
      case '125012':
        return AuditEventSubType.value125012;
      case '125013':
        return AuditEventSubType.value125013;
      case '125015':
        return AuditEventSubType.value125015;
      case '125016':
        return AuditEventSubType.value125016;
      case '125021':
        return AuditEventSubType.value125021;
      case '125022':
        return AuditEventSubType.value125022;
      case '125023':
        return AuditEventSubType.value125023;
      case '125024':
        return AuditEventSubType.value125024;
      case '125025':
        return AuditEventSubType.value125025;
      case '125030':
        return AuditEventSubType.value125030;
      case '125031':
        return AuditEventSubType.value125031;
      case '125032':
        return AuditEventSubType.value125032;
      case '125033':
        return AuditEventSubType.value125033;
      case '125034':
        return AuditEventSubType.value125034;
      case '125035':
        return AuditEventSubType.value125035;
      case '125036':
        return AuditEventSubType.value125036;
      case '125037':
        return AuditEventSubType.value125037;
      case '125038':
        return AuditEventSubType.value125038;
      case '125040':
        return AuditEventSubType.value125040;
      case '125041':
        return AuditEventSubType.value125041;
      case '125100':
        return AuditEventSubType.value125100;
      case '125101':
        return AuditEventSubType.value125101;
      case '125102':
        return AuditEventSubType.value125102;
      case '125105':
        return AuditEventSubType.value125105;
      case '125106':
        return AuditEventSubType.value125106;
      case '125107':
        return AuditEventSubType.value125107;
      case '125195':
        return AuditEventSubType.value125195;
      case '125196':
        return AuditEventSubType.value125196;
      case '125197':
        return AuditEventSubType.value125197;
      case '125200':
        return AuditEventSubType.value125200;
      case '125201':
        return AuditEventSubType.value125201;
      case '125202':
        return AuditEventSubType.value125202;
      case '125203':
        return AuditEventSubType.value125203;
      case '125204':
        return AuditEventSubType.value125204;
      case '125205':
        return AuditEventSubType.value125205;
      case '125206':
        return AuditEventSubType.value125206;
      case '125207':
        return AuditEventSubType.value125207;
      case '125208':
        return AuditEventSubType.value125208;
      case '125209':
        return AuditEventSubType.value125209;
      case '125210':
        return AuditEventSubType.value125210;
      case '125211':
        return AuditEventSubType.value125211;
      case '125212':
        return AuditEventSubType.value125212;
      case '125213':
        return AuditEventSubType.value125213;
      case '125214':
        return AuditEventSubType.value125214;
      case '125215':
        return AuditEventSubType.value125215;
      case '125216':
        return AuditEventSubType.value125216;
      case '125217':
        return AuditEventSubType.value125217;
      case '125218':
        return AuditEventSubType.value125218;
      case '125219':
        return AuditEventSubType.value125219;
      case '125220':
        return AuditEventSubType.value125220;
      case '125221':
        return AuditEventSubType.value125221;
      case '125222':
        return AuditEventSubType.value125222;
      case '125223':
        return AuditEventSubType.value125223;
      case '125224':
        return AuditEventSubType.value125224;
      case '125225':
        return AuditEventSubType.value125225;
      case '125226':
        return AuditEventSubType.value125226;
      case '125227':
        return AuditEventSubType.value125227;
      case '125228':
        return AuditEventSubType.value125228;
      case '125230':
        return AuditEventSubType.value125230;
      case '125231':
        return AuditEventSubType.value125231;
      case '125233':
        return AuditEventSubType.value125233;
      case '125234':
        return AuditEventSubType.value125234;
      case '125235':
        return AuditEventSubType.value125235;
      case '125236':
        return AuditEventSubType.value125236;
      case '125237':
        return AuditEventSubType.value125237;
      case '125238':
        return AuditEventSubType.value125238;
      case '125239':
        return AuditEventSubType.value125239;
      case '125240':
        return AuditEventSubType.value125240;
      case '125241':
        return AuditEventSubType.value125241;
      case '125242':
        return AuditEventSubType.value125242;
      case '125251':
        return AuditEventSubType.value125251;
      case '125252':
        return AuditEventSubType.value125252;
      case '125253':
        return AuditEventSubType.value125253;
      case '125254':
        return AuditEventSubType.value125254;
      case '125255':
        return AuditEventSubType.value125255;
      case '125256':
        return AuditEventSubType.value125256;
      case '125257':
        return AuditEventSubType.value125257;
      case '125258':
        return AuditEventSubType.value125258;
      case '125259':
        return AuditEventSubType.value125259;
      case '125261':
        return AuditEventSubType.value125261;
      case '125262':
        return AuditEventSubType.value125262;
      case '125263':
        return AuditEventSubType.value125263;
      case '125264':
        return AuditEventSubType.value125264;
      case '125265':
        return AuditEventSubType.value125265;
      case '125270':
        return AuditEventSubType.value125270;
      case '125271':
        return AuditEventSubType.value125271;
      case '125272':
        return AuditEventSubType.value125272;
      case '125273':
        return AuditEventSubType.value125273;
      case '125901':
        return AuditEventSubType.value125901;
      case '125902':
        return AuditEventSubType.value125902;
      case '125903':
        return AuditEventSubType.value125903;
      case '125904':
        return AuditEventSubType.value125904;
      case '125905':
        return AuditEventSubType.value125905;
      case '125906':
        return AuditEventSubType.value125906;
      case '125907':
        return AuditEventSubType.value125907;
      case '125908':
        return AuditEventSubType.value125908;
      case '126000':
        return AuditEventSubType.value126000;
      case '126001':
        return AuditEventSubType.value126001;
      case '126002':
        return AuditEventSubType.value126002;
      case '126003':
        return AuditEventSubType.value126003;
      case '126010':
        return AuditEventSubType.value126010;
      case '126011':
        return AuditEventSubType.value126011;
      case '126020':
        return AuditEventSubType.value126020;
      case '126021':
        return AuditEventSubType.value126021;
      case '126022':
        return AuditEventSubType.value126022;
      case '126030':
        return AuditEventSubType.value126030;
      case '126031':
        return AuditEventSubType.value126031;
      case '126032':
        return AuditEventSubType.value126032;
      case '126033':
        return AuditEventSubType.value126033;
      case '126034':
        return AuditEventSubType.value126034;
      case '126035':
        return AuditEventSubType.value126035;
      case '126036':
        return AuditEventSubType.value126036;
      case '126037':
        return AuditEventSubType.value126037;
      case '126038':
        return AuditEventSubType.value126038;
      case '126039':
        return AuditEventSubType.value126039;
      case '126040':
        return AuditEventSubType.value126040;
      case '126050':
        return AuditEventSubType.value126050;
      case '126051':
        return AuditEventSubType.value126051;
      case '126052':
        return AuditEventSubType.value126052;
      case '126060':
        return AuditEventSubType.value126060;
      case '126061':
        return AuditEventSubType.value126061;
      case '126062':
        return AuditEventSubType.value126062;
      case '126063':
        return AuditEventSubType.value126063;
      case '126064':
        return AuditEventSubType.value126064;
      case '126065':
        return AuditEventSubType.value126065;
      case '126066':
        return AuditEventSubType.value126066;
      case '126067':
        return AuditEventSubType.value126067;
      case '126070':
        return AuditEventSubType.value126070;
      case '126071':
        return AuditEventSubType.value126071;
      case '126072':
        return AuditEventSubType.value126072;
      case '126073':
        return AuditEventSubType.value126073;
      case '126074':
        return AuditEventSubType.value126074;
      case '126075':
        return AuditEventSubType.value126075;
      case '126080':
        return AuditEventSubType.value126080;
      case '126081':
        return AuditEventSubType.value126081;
      case '126100':
        return AuditEventSubType.value126100;
      case '126200':
        return AuditEventSubType.value126200;
      case '126201':
        return AuditEventSubType.value126201;
      case '126202':
        return AuditEventSubType.value126202;
      case '126203':
        return AuditEventSubType.value126203;
      case '126220':
        return AuditEventSubType.value126220;
      case '126300':
        return AuditEventSubType.value126300;
      case '126301':
        return AuditEventSubType.value126301;
      case '126302':
        return AuditEventSubType.value126302;
      case '126303':
        return AuditEventSubType.value126303;
      case '126310':
        return AuditEventSubType.value126310;
      case '126311':
        return AuditEventSubType.value126311;
      case '126312':
        return AuditEventSubType.value126312;
      case '126313':
        return AuditEventSubType.value126313;
      case '126314':
        return AuditEventSubType.value126314;
      case '126320':
        return AuditEventSubType.value126320;
      case '126321':
        return AuditEventSubType.value126321;
      case '126322':
        return AuditEventSubType.value126322;
      case '126330':
        return AuditEventSubType.value126330;
      case '126331':
        return AuditEventSubType.value126331;
      case '126340':
        return AuditEventSubType.value126340;
      case '126341':
        return AuditEventSubType.value126341;
      case '126342':
        return AuditEventSubType.value126342;
      case '126343':
        return AuditEventSubType.value126343;
      case '126344':
        return AuditEventSubType.value126344;
      case '126350':
        return AuditEventSubType.value126350;
      case '126351':
        return AuditEventSubType.value126351;
      case '126352':
        return AuditEventSubType.value126352;
      case '126353':
        return AuditEventSubType.value126353;
      case '126360':
        return AuditEventSubType.value126360;
      case '126361':
        return AuditEventSubType.value126361;
      case '126362':
        return AuditEventSubType.value126362;
      case '126363':
        return AuditEventSubType.value126363;
      case '126364':
        return AuditEventSubType.value126364;
      case '126370':
        return AuditEventSubType.value126370;
      case '126371':
        return AuditEventSubType.value126371;
      case '126372':
        return AuditEventSubType.value126372;
      case '126373':
        return AuditEventSubType.value126373;
      case '126374':
        return AuditEventSubType.value126374;
      case '126375':
        return AuditEventSubType.value126375;
      case '126376':
        return AuditEventSubType.value126376;
      case '126377':
        return AuditEventSubType.value126377;
      case '126380':
        return AuditEventSubType.value126380;
      case '126390':
        return AuditEventSubType.value126390;
      case '126391':
        return AuditEventSubType.value126391;
      case '126392':
        return AuditEventSubType.value126392;
      case '126393':
        return AuditEventSubType.value126393;
      case '126394':
        return AuditEventSubType.value126394;
      case '126400':
        return AuditEventSubType.value126400;
      case '126401':
        return AuditEventSubType.value126401;
      case '126402':
        return AuditEventSubType.value126402;
      case '126403':
        return AuditEventSubType.value126403;
      case '126404':
        return AuditEventSubType.value126404;
      case '126410':
        return AuditEventSubType.value126410;
      case '126411':
        return AuditEventSubType.value126411;
      case '126412':
        return AuditEventSubType.value126412;
      case '126413':
        return AuditEventSubType.value126413;
      case '126500':
        return AuditEventSubType.value126500;
      case '126501':
        return AuditEventSubType.value126501;
      case '126502':
        return AuditEventSubType.value126502;
      case '126503':
        return AuditEventSubType.value126503;
      case '126510':
        return AuditEventSubType.value126510;
      case '126511':
        return AuditEventSubType.value126511;
      case '126512':
        return AuditEventSubType.value126512;
      case '126513':
        return AuditEventSubType.value126513;
      case '126514':
        return AuditEventSubType.value126514;
      case '126515':
        return AuditEventSubType.value126515;
      case '126516':
        return AuditEventSubType.value126516;
      case '126517':
        return AuditEventSubType.value126517;
      case '126518':
        return AuditEventSubType.value126518;
      case '126519':
        return AuditEventSubType.value126519;
      case '126520':
        return AuditEventSubType.value126520;
      case '126600':
        return AuditEventSubType.value126600;
      case '126601':
        return AuditEventSubType.value126601;
      case '126602':
        return AuditEventSubType.value126602;
      case '126603':
        return AuditEventSubType.value126603;
      case '126604':
        return AuditEventSubType.value126604;
      case '126605':
        return AuditEventSubType.value126605;
      case '126606':
        return AuditEventSubType.value126606;
      case '126700':
        return AuditEventSubType.value126700;
      case '126701':
        return AuditEventSubType.value126701;
      case '126702':
        return AuditEventSubType.value126702;
      case '126703':
        return AuditEventSubType.value126703;
      case '126704':
        return AuditEventSubType.value126704;
      case '126705':
        return AuditEventSubType.value126705;
      case '126706':
        return AuditEventSubType.value126706;
      case '126707':
        return AuditEventSubType.value126707;
      case '126708':
        return AuditEventSubType.value126708;
      case '126709':
        return AuditEventSubType.value126709;
      case '126710':
        return AuditEventSubType.value126710;
      case '126711':
        return AuditEventSubType.value126711;
      case '126712':
        return AuditEventSubType.value126712;
      case '126713':
        return AuditEventSubType.value126713;
      case '126714':
        return AuditEventSubType.value126714;
      case '126715':
        return AuditEventSubType.value126715;
      case '126716':
        return AuditEventSubType.value126716;
      case '126801':
        return AuditEventSubType.value126801;
      case '126802':
        return AuditEventSubType.value126802;
      case '126803':
        return AuditEventSubType.value126803;
      case '126804':
        return AuditEventSubType.value126804;
      case '126805':
        return AuditEventSubType.value126805;
      case '126806':
        return AuditEventSubType.value126806;
      case '126807':
        return AuditEventSubType.value126807;
      case '126808':
        return AuditEventSubType.value126808;
      case '126809':
        return AuditEventSubType.value126809;
      case '126810':
        return AuditEventSubType.value126810;
      case '126811':
        return AuditEventSubType.value126811;
      case 'read':
        return AuditEventSubType.read;
      case 'vread':
        return AuditEventSubType.vread;
      case 'update':
        return AuditEventSubType.update;
      case 'patch':
        return AuditEventSubType.patch;
      case 'delete':
        return AuditEventSubType.delete;
      case 'history':
        return AuditEventSubType.history;
      case 'history-instance':
        return AuditEventSubType.history_instance;
      case 'history-type':
        return AuditEventSubType.history_type;
      case 'history-system':
        return AuditEventSubType.history_system;
      case 'create':
        return AuditEventSubType.create;
      case 'search':
        return AuditEventSubType.search;
      case 'search-type':
        return AuditEventSubType.search_type;
      case 'search-system':
        return AuditEventSubType.search_system;
      case 'capabilities':
        return AuditEventSubType.capabilities;
      case 'transaction':
        return AuditEventSubType.transaction;
      case 'batch':
        return AuditEventSubType.batch;
      case 'operation':
        return AuditEventSubType.operation;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  /// Returns a [AuditEventSubType] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static AuditEventSubType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
