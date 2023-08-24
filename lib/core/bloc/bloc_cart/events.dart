import 'package:equatable/equatable.dart';

import '../../../data/models/cart_model.dart';

abstract class CartEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class AddItem extends CartEvent {
  final CartItem item;

  AddItem(this.item);

  @override
  List<Object?> get props => [item];
}

class RemoveItem extends CartEvent {
  final CartItem item;

  RemoveItem(this.item);

  @override
  List<Object?> get props => [item];
}
