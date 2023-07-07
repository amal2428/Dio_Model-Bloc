part of 'response_bloc_bloc.dart';

@freezed
class ResponseBlocState with _$ResponseBlocState {
  const factory ResponseBlocState.initial({

required  List<ResponseModel?>? responseData,


  }) = _Initial;
}
