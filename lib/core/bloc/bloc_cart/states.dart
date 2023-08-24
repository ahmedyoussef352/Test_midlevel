import 'package:equatable/equatable.dart';

import '../../../data/models/cart_model.dart';

abstract class CartState extends Equatable {
  @override
  List<Object?> get props => [];
}

class CartEmpty extends CartState {}

class CartLoaded extends CartState {
  final List<CartItem> items;
  final double totalPrice;

  CartLoaded(this.items, this.totalPrice);

  @override
  List<Object?> get props => [items, totalPrice];
}
