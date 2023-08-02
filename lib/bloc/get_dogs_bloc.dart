import 'package:bloc/bloc.dart';
import 'package:dogs_bloc_app/repo/get_dogs_repo.dart';

import '../model/dogs_model.dart';

part 'get_dogs_event.dart';
part 'get_dogs_state.dart';

class GetDogsBloc extends Bloc<GetDogsEvent, GetDogsState> {
  GetDogsBloc({required this.repo}) : super(GetDogsInitial()) {
    on<GetDataEvent>((event, emit) async {
      try {
        emit(
          GetDogsSuccess(
            model: await repo.grtDogsData(
              count: event.count,
            ),
          ),
        );
      } catch (e) {
        emit(GetDogsError());
      }
    });
  }
  final GetDogsRepo repo;
}
