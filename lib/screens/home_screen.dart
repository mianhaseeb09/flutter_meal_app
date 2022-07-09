import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_ui/data/data.dart';
import 'package:flutter_food_delivery_ui/widgets/recent_order.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.account_circle),
          iconSize: 30.0,
          onPressed: () {},
        ),
        title: const Text('Food Delivery',),
        actions: <Widget>[
          TextButton(
            onPressed: () {},
            child: Text(
              'Cart(${currentUser.cart.length})',
              style: const TextStyle(color: Colors.white, fontSize: 20.0),
            ),
          )
        ],
      ),
      body: ListView(

        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 15.0),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide: const BorderSide(width: 0.8)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide: BorderSide(width: 0.8, color: Theme
                          .of(context)
                          .primaryColor)),
                  hintText: 'Search Food or Restaurants',
                  prefixIcon: const Icon(
                    Icons.search,
                    size: 30.0,
                  ),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.clear),
                    onPressed: () {},
                  )),
            ),
          ),
          const RecentOrders(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal:20.0),
                child: Text('NearBy Restaurant',style: TextStyle
                  (
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.2,
                  fontSize: 24.0,

                ),),
              )
            ],
          )
        ],
      ),
    );

  }
}
