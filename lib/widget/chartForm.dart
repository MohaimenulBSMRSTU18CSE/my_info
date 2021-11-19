import 'package:flutter/material.dart';

class ChartForm extends StatelessWidget {
  //const ChartForm({Key? key}) : super(key: key);
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            width: double.infinity,
            margin: EdgeInsets.zero,
            child: Card(
              color: Colors.red.shade300,
              //margin: EdgeInsets.only(top: 20, bottom: 20),
              margin: EdgeInsets.zero,
              child: Container(
                padding: EdgeInsets.only(top: 8, bottom: 8),
                child: Text(
                  "Chart",
                  style: TextStyle(fontSize: 30, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          TextField(
            decoration: InputDecoration(
              labelText: "Title",
            ),
            controller: titleController,
          ),
          TextField(
            decoration: InputDecoration(
              labelText: 'Amount',
            ),
            controller: amountController,
          ),
          ElevatedButton(
            onPressed: () {
              print(titleController.text);
              print(amountController.text);
            },
            child: Container(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text("Add"),
                  const Icon(Icons.add),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
