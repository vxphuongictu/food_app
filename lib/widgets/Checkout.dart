import 'package:flutter/material.dart';


class ModalCheckOut extends StatefulWidget
{
  const ModalCheckOut({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ModalCheckout();
  }
}

class _ModalCheckout extends State<StatefulWidget>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: checkOutScreen(),
    );
  }

  Widget checkOutScreen()
  {
    return Column(
      children: [
        Expanded(
          child: Center(
            child: TextButton(
              onPressed: () => setState(() {
                showModalBottomSheet(
                  backgroundColor: Colors.transparent,
                  enableDrag: false,
                  isDismissible: false,
                  context: context,
                  builder: (context){
                    return StatefulBuilder(builder: (context, newState){
                      return checkOut();
                    });
                  },
                );
              }),
              child: Text("Check out"),
            ),
          ),
        ),
      ],
    );
  }

  Widget checkOut()
  {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
      ),
      child: Container(
        margin: EdgeInsets.only(top: 30.0, left: 25.0, right: 25.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Checkout",
                  style: TextStyle(
                      fontFamily: "Gilroy",
                      fontWeight: FontWeight.w600,
                      fontSize: 24.0
                  ),
                ),
                IconButton(
                  onPressed: () => closeModal(),
                  icon: Icon(Icons.close),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget closeModal()
  {
    print("123322");
    return Text("32123");
  }
}