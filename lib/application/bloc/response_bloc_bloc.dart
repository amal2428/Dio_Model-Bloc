import 'package:dio_model_bloc/domain/model/response_model.dart';
import 'package:dio_model_bloc/infrastructure/api_services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_bloc_event.dart';
part 'response_bloc_state.dart';
part 'response_bloc_bloc.freezed.dart';

class ResponseBlocBloc extends Bloc<ResponseBlocEvent, ResponseBlocState> {
  ResponseBlocBloc() : super(const _Initial(responseData: null)) {
    on<FetchDataEvent>((event, emit) async {
      List<ResponseModel?>? responseValue = await ApiServices.fetchData();

      print("data fetched");

      emit(state.copyWith(responseData: responseValue));
      print(responseValue);
    });
  }
}
