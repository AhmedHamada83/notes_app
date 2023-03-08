// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'add_note_cubit.dart';

@immutable
abstract class AddNoteCubitState {}

class AddNoteCubitInitial extends AddNoteCubitState {}
class AddNoteCubitLoading extends AddNoteCubitState {}
class AddNoteCubitSuccess extends AddNoteCubitState {}
class AddNoteCubitFailure extends AddNoteCubitState {
  final String errorMassage;
  AddNoteCubitFailure(
     this.errorMassage,
  );
}
