class TimeZone {
  String? name;
  int? offset;
  int? offset_with_dst;
  String? current_time;
  double? current_time_unix;
  bool? is_dst;
  int? dst_savings;

  TimeZone({
    required this.name,
    required this.offset,
    required this.offset_with_dst,
    required this.current_time,
    required this.current_time_unix,
    required this.is_dst,
    required this.dst_savings,
  });

  factory TimeZone.fromJson(Map<String, Object?> json) => TimeZone(
        name: json["name"] as String?,
        offset: json["offset"] as int?,
        offset_with_dst: json["offset_with_dst"] as int?,
        current_time: json["current_time"] as String?,
        current_time_unix: json["current_time_unix"] as double?,
        is_dst: json["is_dst"] as bool?,
        dst_savings: json["dst_savings"] as int?,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TimeZone &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          offset == other.offset &&
          offset_with_dst == other.offset_with_dst &&
          current_time == other.current_time &&
          current_time_unix == other.current_time_unix &&
          is_dst == other.is_dst &&
          dst_savings == other.dst_savings;

  @override
  int get hashCode =>
      name.hashCode ^
      offset.hashCode ^
      offset_with_dst.hashCode ^
      current_time.hashCode ^
      current_time_unix.hashCode ^
      is_dst.hashCode ^
      dst_savings.hashCode;

  @override
  String toString() {
    return 'TimeZone(name: $name, '
        'offset: $offset, '
        'offset_with_dst: $offset_with_dst, '
        'current_time: $current_time, '
        'current_time_unix: $current_time_unix, '
        'is_dst: $is_dst, '
        'dst_savings: $dst_savings)';
  }
}
