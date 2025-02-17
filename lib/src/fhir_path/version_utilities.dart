// ignore_for_file: public_member_api_docs

class VersionUtilities {
  static const List<String> supportedMajorVersions = [
    '1.0',
    '1.4',
    '3.0',
    '4.0',
    '5.0',
    '6.0',
  ];
  static const List<String> supportedVersions = [
    '1.0.2',
    '1.4.0',
    '3.0.2',
    '4.0.1',
    '4.1.0',
    '4.3.0',
    '5.0.0',
    '6.0.0',
  ];

  static String? packageForVersion(String v) {
    if (isR2Ver(v)) return 'hl7.fhir.r2.core';
    if (isR2BVer(v)) return 'hl7.fhir.r2b.core';
    if (isR3Ver(v)) return 'hl7.fhir.r3.core';
    if (isR4Ver(v)) return 'hl7.fhir.r4.core';
    if (isR4BVer(v)) return 'hl7.fhir.r4b.core';
    if (isR5Ver(v)) return 'hl7.fhir.r5.core';
    if (isR6Ver(v)) return 'hl7.fhir.r6.core';
    if (v == 'current') return 'hl7.fhir.r5.core';
    return null;
  }

  static String getCurrentVersion(String v) {
    if (isR2Ver(v)) return '1.0.2';
    if (isR2BVer(v)) return '1.4.0';
    if (isR3Ver(v)) return '3.0.2';
    if (isR4Ver(v)) return '4.0.1';
    if (isR5Ver(v)) return '5.0.0';
    if (isR6Ver(v)) return '6.0.0';
    return v;
  }

  static String? getMajMin(String oldVersion) {
    var version = oldVersion;
    if (version.startsWith('http://hl7.org/fhir/')) {
      version = version.substring(20);
      if (version.contains('/')) {
        version = version.substring(0, version.indexOf('/'));
      }
    }

    final parts = version.split('.');
    if (parts.length >= 2) {
      return '${parts[0]}.${parts[1]}';
    }

    switch (version.toUpperCase()) {
      case 'R2':
        return '1.0';
      case 'R2B':
        return '1.4';
      case 'R3':
        return '3.0';
      case 'R4':
        return '4.0';
      case 'R4B':
        return '4.3';
      case 'R5':
        return '5.0';
      case 'R6':
        return '6.0';
      default:
        return null;
    }
  }

  static String? getPatch(String version) {
    final parts = version.split('.');
    return parts.length == 3 ? parts[2] : null;
  }

  static bool isR2Ver(String? ver) => ver?.startsWith('1.0') ?? false;
  static bool isR2BVer(String? ver) => ver?.startsWith('1.4') ?? false;
  static bool isR3Ver(String? ver) => ver?.startsWith('3.0') ?? false;
  static bool isR4Ver(String? ver) => ver?.startsWith('4.0') ?? false;
  static bool isR4BVer(String? ver) =>
      ver?.startsWith('4.1') ?? false || (ver?.startsWith('4.3') ?? false);
  static bool isR5Ver(String? ver) => ver?.startsWith('5.0') ?? false;
  static bool isR6Ver(String? ver) => ver?.startsWith('6.0') ?? false;
  static bool isR5VerOrLater(String? ver) => isR5Ver(ver) || isR6Ver(ver);

  static bool isSupportedVersion(String version) {
    final cleanVersion = version.contains('-')
        ? version.substring(0, version.indexOf('-'))
        : version;
    return supportedVersions.contains(cleanVersion);
  }

  static String listSupportedVersions() {
    return supportedVersions.join(', ');
  }

  static String listSupportedMajorVersions() {
    return supportedMajorVersions.join(', ');
  }

  static bool versionsMatch(String? v1, String? v2) {
    final mm1 = getMajMin(v1!);
    final mm2 = getMajMin(v2!);
    return mm1 == mm2;
  }

  static bool isThisOrLater(String test, String current) {
    final t = getMajMin(test);
    final c = getMajMin(current);

    if (t == null || c == null) return false;

    if (c.compareTo(t) == 0) {
      return isMajMinOrLaterPatch(test, current);
    }

    final testParts = t.split('.');
    final currentParts = c.split('.');

    for (var i = 0; i < testParts.length; i++) {
      final testPart = int.tryParse(testParts[i]) ?? 0;
      final currentPart = int.tryParse(currentParts[i]) ?? 0;
      if (currentPart > testPart) return true;
      if (currentPart < testPart) return false;
    }

    return true;
  }

  static bool isMajMinOrLaterPatch(String test, String current) {
    final t = getMajMin(test);
    final c = getMajMin(current);
    if (t != null && c != null && t == c) {
      final patchTest = getPatch(test) ?? '0';
      final patchCurrent = getPatch(current) ?? '0';
      return int.tryParse(patchCurrent)! >= int.tryParse(patchTest)!;
    }
    return false;
  }

  static String incMajorVersion(String version) {
    final parts = version.split('.');
    final major = int.parse(parts[0]) + 1;
    return '$major.0.0';
  }

  static String incMinorVersion(String version) {
    final parts = version.split('.');
    final minor = int.parse(parts[1]) + 1;
    return '${parts[0]}.$minor.0';
  }

  static String incPatchVersion(String version) {
    final parts = version.split('.');
    final patch = int.parse(parts[2]) + 1;
    return '${parts[0]}.${parts[1]}.$patch';
  }

  static bool versionsCompatible(String v1, String v2) {
    final mm1 = getMajMin(v1);
    final mm2 = getMajMin(v2);
    return mm1 == mm2;
  }

  static int compareVersions(String? ver1, String? ver2) {
    if (ver1 == null) return ver2 == null ? 0 : -1;
    if (ver2 == null) return 1;

    final sv1 = ver1.split('.').map(int.parse).toList();
    final sv2 = ver2.split('.').map(int.parse).toList();

    for (var i = 0; i < 3; i++) {
      if (sv1[i] != sv2[i]) return sv1[i].compareTo(sv2[i]);
    }

    return 0;
  }
}

class PackageVersion {
  /// Constructor that accepts `id` and `version` separately.
  PackageVersion(this.id, this.version);

  /// Constructor that parses the source string into `id` and `version`.
  /// Throws an [ArgumentError] if the source is null or invalid.
  PackageVersion.fromSource(String source)
      : id = source.contains('#')
            ? source.substring(0, source.indexOf('#'))
            : throw ArgumentError(
                'Source must contain "#" to separate id and version',
              ),
        version = source.contains('#')
            ? source.substring(source.indexOf('#') + 1)
            : throw ArgumentError(
                'Source must contain "#" to separate id and version',
              );
  final String id;
  final String version;

  /// Returns whether the package is an examples package.
  bool isExamplesPackage() {
    return id.startsWith('hl7.fhir.') && id.endsWith('.examples');
  }

  @override
  String toString() {
    return '$id#$version';
  }
}
