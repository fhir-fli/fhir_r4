import 'package:fhir_r4_cds_hooks/src/models/cds_coding.dart';

/// The reason a user overrode a CDS Hooks card suggestion.
class CdsOverrideReason {
  /// Creates a [CdsOverrideReason].
  CdsOverrideReason({this.reason, this.userComment});

  /// Creates a [CdsOverrideReason] from a JSON map.
  factory CdsOverrideReason.fromJson(Map<String, dynamic> json) {
    return CdsOverrideReason(
      reason: json['reason'] != null
          ? CdsCoding.fromJson(json['reason'] as Map<String, dynamic>)
          : null,
      userComment: json['userComment'] as String?,
    );
  }

  /// An optional coded reason for the override.
  final CdsCoding? reason;

  /// An optional free-text comment from the user.
  final String? userComment;

  /// Serializes to a JSON map.
  Map<String, dynamic> toJson() => <String, dynamic>{
        if (reason != null) 'reason': reason!.toJson(),
        if (userComment != null) 'userComment': userComment,
      };

  /// Returns a copy with the given fields replaced.
  CdsOverrideReason copyWith({CdsCoding? reason, String? userComment}) {
    return CdsOverrideReason(
      reason: reason ?? this.reason,
      userComment: userComment ?? this.userComment,
    );
  }
}
