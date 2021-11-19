import 'package:flutter/material.dart';
import 'package:my_info/model/transitionlist.dart';
import 'package:intl/intl.dart';

class TrasitionList extends StatelessWidget {
  const TrasitionList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      child: Column(
        children: <Widget>[
          ...transition.map((tr) {
            return Card(
              color: Colors.grey.shade200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    //color: Colors.amber,
                    //width: 100,
                    //height: 30,
                    padding:
                        EdgeInsets.only(top: 5, right: 7, left: 7, bottom: 5),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.green, width: 1)),
                    child: Text(
                      "\$ ${tr.amount.toString()}",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        tr.title,
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        DateFormat.yMMMEd().format(tr.tr_date),
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  )
                ],
              ),
            );
          }).toList()
        ],
      ),
    );
  }
}
