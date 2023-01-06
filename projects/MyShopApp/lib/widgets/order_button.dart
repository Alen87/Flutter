import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/orders.dart';
import '../providers/cart.dart';

class OrderButton extends StatefulWidget {
  @override
  State<OrderButton> createState() => _OrderButtonState();
}

class _OrderButtonState extends State<OrderButton> {
  var _isLoading = false;
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return TextButton(
      onPressed: (cart.totalAmount <= 0 || _isLoading)
          ? null
          : () async {
              setState(() {
                _isLoading = true;
              });
              await Provider.of<Orders>(context, listen: false).addOrder(
                cart.items.values.toList(),
                cart.totalAmount,
              );
              setState(() {
                _isLoading = false;
              });
              cart.clear();
            },
      child: _isLoading
          ? CircularProgressIndicator()
          : Text(
              'ORDER NOW',
              style: TextStyle(color: Theme.of(context).colorScheme.primary),
            ),
    );
  }
}
