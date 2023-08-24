import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task1/core/bloc/bloc_cart/states.dart';

import '../../../data/models/cart_model.dart';
import 'events.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartEmpty());

  List<CartItem> cartItems = [];

  @override
  Stream<CartState> mapEventToState(CartEvent event) async* {
    if (event is AddItem) {
      cartItems.add(event.item);
    } else if (event is RemoveItem) {
      cartItems.remove(event.item);
    }

    double totalPrice = cartItems.fold(0, (sum, item) => sum + item.price);

    yield CartLoaded(List.from(cartItems), totalPrice);
  }
}
