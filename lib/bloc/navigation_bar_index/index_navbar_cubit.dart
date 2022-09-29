import 'package:bloc/bloc.dart';

class IndexNavbarCubit extends Cubit<int> {
  IndexNavbarCubit() : super(0);

  void setIndex(int id) {
    emit(id);
  }
}
