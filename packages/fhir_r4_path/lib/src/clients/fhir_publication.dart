// ignore_for_file: public_member_api_docs

import 'package:fhir_r4_path/fhir_r4_path.dart';

enum FhirPublication {
  null_,
  dstu1,
  dstu2,
  dstu2016May,
  stu3,
  r4,
  r4b,
  r5,
  r6;

  static FhirPublication? fromCode(String v) {
    if (VersionUtilities.isR2Ver(v)) {
      return FhirPublication.dstu2;
    }
    if (VersionUtilities.isR2BVer(v)) {
      return FhirPublication.dstu2016May;
    }
    if (VersionUtilities.isR3Ver(v)) {
      return FhirPublication.stu3;
    }
    if (VersionUtilities.isR4Ver(v)) {
      return FhirPublication.r4;
    }
    if (VersionUtilities.isR4BVer(v)) {
      return FhirPublication.r4b;
    }
    if (VersionUtilities.isR5Ver(v)) {
      return FhirPublication.r5;
    }
    if (VersionUtilities.isR6Ver(v)) {
      return FhirPublication.r6;
    }
    return null;
  }

  String toCode() {
    switch (this) {
      case FhirPublication.dstu1:
        return '0.01';
      case FhirPublication.dstu2:
        return '1.0.2';
      case FhirPublication.dstu2016May:
        return '1.4.0';
      case FhirPublication.stu3:
        return '3.0.2';
      case FhirPublication.r4:
        return '4.0.1';
      case FhirPublication.r4b:
        return '4.3.0';
      case FhirPublication.r5:
        return '5.0.0';
      case FhirPublication.r6:
        return '6.0.0';
      case FhirPublication.null_:
        return '??';
    }
  }
}
