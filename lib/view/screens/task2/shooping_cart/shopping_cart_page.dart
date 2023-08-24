import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/bloc/bloc_cart/bloc.dart';
import '../../../../core/bloc/bloc_cart/events.dart';
import '../../../../core/bloc/bloc_cart/states.dart';
import '../../../../core/constance/colors/colors.dart';
import '../../../../data/models/cart_model.dart';

class ShoppingCartPage extends StatefulWidget {
  const ShoppingCartPage({super.key});

  @override
  State<ShoppingCartPage> createState() => _ShoppingCartPageState();
}

class _ShoppingCartPageState extends State<ShoppingCartPage> {
  final CartBloc cartBloc = CartBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: orange.shade400,
        elevation: 0,
        title: const Text('Shopping Cart'),
      ),
      body: SafeArea(
        child: BlocBuilder<CartBloc, CartState>(
          bloc: cartBloc,
          builder: (context, state) {
            if (state is CartEmpty) {
              return const Center(
                child: Text('Cart is empty!'),
              );
            } else if (state is CartLoaded) {
              return ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: state.items.length,
                itemBuilder: (context, index) {
                  CartItem item = state.items[index];
                  return Padding(
                    padding: const EdgeInsetsDirectional.symmetric(
                        horizontal: 15, vertical: 8),
                    child: Container(
                      padding: const EdgeInsetsDirectional.symmetric(
                          horizontal: 15, vertical: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: grey.shade200,
                      ),
                      child: ListTile(
                        title: Text("Name : ${item.name}"),
                        subtitle:
                            Text("Price : ${item.price.toStringAsFixed(2)}"),
                        trailing: IconButton(
                          icon: const Icon(
                            Icons.remove_circle,
                            color: black,
                          ),
                          onPressed: () {
                            cartBloc.add(RemoveItem(item));
                          },
                        ),
                      ),
                    ),
                  );
                },
              );
            }

            return Container();
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        backgroundColor: orange.shade400,
        child: const Icon(
          Icons.add,
        ),
        onPressed: () {
          var random = Random();
          var randomNumber = random.nextInt(100);
          CartItem newItem = CartItem(
            id: 'item_id',
            name: "cart",
            price: randomNumber.toDouble(),
          );
          cartBloc.add(AddItem(newItem));
        },
      ),
    );
  }
}
