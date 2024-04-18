import 'package:freezed_annotation/freezed_annotation.dart';

import 'dto/weather_dto.dart';

part 'wearher_data_model.freezed.dart';

part 'wearher_data_model.g.dart';

@freezed
class WearherDataModel with _$WearherDataModel {
  const factory WearherDataModel({
    required num latitude,
    required num longitude,
    required Hourly hourly,
  }) = _WearherDataModel;

  factory WearherDataModel.fromJson(Map<String, Object?> json) =>
      _$WearherDataModelFromJson(json);
}
