import 'package:fhir_r4_cds_hooks/src/models/cds_feedback.dart';

/// A feedback request sent to a CDS Hooks service.
class CdsFeedbackRequest {
  /// Creates a [CdsFeedbackRequest].
  CdsFeedbackRequest({required this.feedback});

  /// Creates a [CdsFeedbackRequest] from a JSON map.
  factory CdsFeedbackRequest.fromJson(Map<String, dynamic> json) {
    return CdsFeedbackRequest(
      feedback: (json['feedback'] as List<dynamic>)
          .map((e) => CdsFeedback.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  /// The list of feedback items.
  final List<CdsFeedback> feedback;

  /// Serializes to a JSON map.
  Map<String, dynamic> toJson() => <String, dynamic>{
        'feedback': feedback.map((f) => f.toJson()).toList(),
      };

  /// Returns a copy with the given fields replaced.
  CdsFeedbackRequest copyWith({List<CdsFeedback>? feedback}) {
    return CdsFeedbackRequest(feedback: feedback ?? this.feedback);
  }
}
