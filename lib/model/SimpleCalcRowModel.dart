class SimpleCalcRowModel {

  int minBpm;
  int maxBpm;
  double highSpeed;
  double minScrollSpeed;
  double maxScrollSpeed;

//<editor-fold desc="Data Methods">
  SimpleCalcRowModel({
    required this.minBpm,
    required this.maxBpm,
    required this.highSpeed,
    required this.minScrollSpeed,
    required this.maxScrollSpeed,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          (other is SimpleCalcRowModel &&
              runtimeType == other.runtimeType &&
              minBpm == other.minBpm &&
              maxBpm == other.maxBpm &&
              highSpeed == other.highSpeed &&
              minScrollSpeed == other.minScrollSpeed &&
              maxScrollSpeed == other.maxScrollSpeed);

  @override
  int get hashCode =>
      minBpm.hashCode ^
      maxBpm.hashCode ^
      highSpeed.hashCode ^
      minScrollSpeed.hashCode ^
      maxScrollSpeed.hashCode;

  @override
  String toString() {
    return 'SimpleCalcRowModel{' +
        ' minBpm: $minBpm,' +
        ' maxBpm: $maxBpm,' +
        ' highSpeed: $highSpeed,' +
        ' minScrollSpeed: $minScrollSpeed,' +
        ' maxScrollSpeed: $maxScrollSpeed,' +
        '}';
  }

  SimpleCalcRowModel copyWith({
    int? minBpm,
    int? maxBpm,
    double? highSpeed,
    double? minScrollSpeed,
    double? maxScrollSpeed,
  }) {
    return SimpleCalcRowModel(
      minBpm: minBpm ?? this.minBpm,
      maxBpm: maxBpm ?? this.maxBpm,
      highSpeed: highSpeed ?? this.highSpeed,
      minScrollSpeed: minScrollSpeed ?? this.minScrollSpeed,
      maxScrollSpeed: maxScrollSpeed ?? this.maxScrollSpeed,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'minBpm': this.minBpm,
      'maxBpm': this.maxBpm,
      'highSpeed': this.highSpeed,
      'minScrollSpeed': this.minScrollSpeed,
      'maxScrollSpeed': this.maxScrollSpeed,
    };
  }

  factory SimpleCalcRowModel.fromMap(Map<String, dynamic> map) {
    return SimpleCalcRowModel(
      minBpm: map['minBpm'] as int,
      maxBpm: map['maxBpm'] as int,
      highSpeed: map['highSpeed'] as double,
      minScrollSpeed: map['minScrollSpeed'] as double,
      maxScrollSpeed: map['maxScrollSpeed'] as double,
    );
  }

//</editor-fold>
  List<SimpleCalcRowModel> rows() {
    List<SimpleCalcRowModel> rows = [ SimpleCalcRowModel(
        minBpm: 100,
        maxBpm: 200,
        highSpeed: 2.5,
        minScrollSpeed: 250,
        maxScrollSpeed: 500),
      SimpleCalcRowModel(
          minBpm: 200,
          maxBpm: 400,
          highSpeed: 5.75,
          minScrollSpeed: 1000,
          maxScrollSpeed: 3000),
      SimpleCalcRowModel(
          minBpm: 100,
          maxBpm: 200,
          highSpeed: 2.5,
          minScrollSpeed: 250,
          maxScrollSpeed: 500),
      SimpleCalcRowModel(
          minBpm: 200,
          maxBpm: 400,
          highSpeed: 5.75,
          minScrollSpeed: 1000,
          maxScrollSpeed: 3000),
      SimpleCalcRowModel(
          minBpm: 100,
          maxBpm: 200,
          highSpeed: 2.5,
          minScrollSpeed: 250,
          maxScrollSpeed: 500),
      SimpleCalcRowModel(
          minBpm: 200,
          maxBpm: 400,
          highSpeed: 5.75,
          minScrollSpeed: 1000,
          maxScrollSpeed: 3000),
    ];

    return rows;
  }

}