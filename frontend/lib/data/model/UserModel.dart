// ignore_for_file: public_member_api_docs, sort_constructors_first
import '../../packages.dart';

// ignore: camel_case_types
class user extends Equatable {
  final String? emailAdress;
  final String? id;
  final String? name;
  const user({this.emailAdress, required this.id, this.name});

  static const empty = user(id: '');
  bool get isEmpty => this == user.empty;
  bool get isNotEmpty => this != user.empty;

  @override
  List<Object?> get props => [
        emailAdress,
        id,
        name,
      ];
}
