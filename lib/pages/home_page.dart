import 'package:flutter/material.dart';
import 'package:personal_wallet/utils/action_button.dart';
import 'package:personal_wallet/utils/credit_card.dart';
import 'package:personal_wallet/utils/menu_tile.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  // page controller
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Colors.pink,
        child: const Icon(Icons.monetization_on, size: 32),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.home, size: 32)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.settings, size: 32)),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          // app bar
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Text(
                        "My",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        " Cards",
                        style: TextStyle(fontSize: 28),
                      ),
                    ],
                  ),

                  // plus button
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.add),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            // cards
            SizedBox(
              height: 200,
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: _controller,
                children: [
                  CreditCard(
                    balance: 5250.20,
                    cardNumber: 12358458,
                    expiryMonth: 05,
                    expiryYear: 24,
                    color: Colors.deepPurple[300],
                  ),
                  CreditCard(
                    balance: 2150.87,
                    cardNumber: 47251456,
                    expiryMonth: 06,
                    expiryYear: 27,
                    color: Colors.teal[300],
                  ),
                  CreditCard(
                    balance: 362.10,
                    cardNumber: 48763541,
                    expiryMonth: 02,
                    expiryYear: 23,
                    color: Colors.amber[300],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ExpandingDotsEffect(
                activeDotColor: Colors.grey.shade800,
              ),
            ),

            const SizedBox(height: 25),

            // 3 buttons -> send + pay + bill
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  // send button
                  ActionButton(iconPath: 'lib/icons/send_money.png', buttonText: 'Send'),
                  ActionButton(iconPath: 'lib/icons/pay.png', buttonText: 'Pay'),
                  ActionButton(iconPath: 'lib/icons/bill.png', buttonText: 'Bills'),
                  // pay button

                  // bills button
                ],
              ),
            ),

            const SizedBox(height: 25),

            // column -> stats + transactions
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: const [
                  // statistics
                  MenuTile(
                    iconPath: 'lib/icons/statistics.png',
                    tileTitle: 'Statistics',
                    tileSubtitle: 'Payments and income',
                  ),

                  // transation history
                  MenuTile(
                    iconPath: 'lib/icons/transaction.png',
                    tileTitle: 'Transactions',
                    tileSubtitle: 'Transaction history',
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
