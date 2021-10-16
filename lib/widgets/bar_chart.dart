import 'package:flutter/material.dart';


//ignore_for_file: prefer_const_constructors, file_names
class BarChart extends StatelessWidget {
  final List<double> expenses;
  BarChart(this.expenses);

  @override
  Widget build(BuildContext context) {
    double mostExpensive = 0;

    expenses.forEach((double price) {
      if (price > mostExpensive) {
        mostExpensive = price;
      }
    });
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        
        // ignore: prefer_const_literals_to_create_immutables
        children: <Widget>[
          Text(
            "Weekly Spending",
            style: TextStyle(
                fontSize: 20.0, fontWeight: FontWeight.bold, letterSpacing: 1.2),
          ),
          SizedBox(
            height: 5.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            
            children: <Widget>[
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_back),
                iconSize: 30,
              ),
              Text(
                "Oct 10,2021 - Oct 16,2021 ",
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.2),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_forward),
                iconSize: 30,
              ),
            ],
          ),
          SizedBox(
            height: 30.0,
          ),
          Row(
            
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
          
            children: <Widget>[
            
              Bar(label: "Su", amountSpent: expenses[0], mostExpensive: 200),
              Bar(label: "Mon", amountSpent: expenses[1], mostExpensive: 200),
              Bar(label: "Tue", amountSpent: expenses[2], mostExpensive: 200),
              Bar(label: "Wed", amountSpent: expenses[3], mostExpensive: 200),
              Bar(label: "Thu", amountSpent: expenses[4], mostExpensive: 200),
              Bar(label: "Fri", amountSpent: expenses[5], mostExpensive: 200),
              Bar(label: "Sat", amountSpent: expenses[6], mostExpensive: 200),
            ],
          )
        ],
      ),
    );
  }
}

class Bar extends StatelessWidget {
  final String label;
  final double amountSpent;
  final double mostExpensive;
  final double _maxBarHeight = 150.0;

  Bar(
      {required this.label,
      required this.amountSpent,
      required this.mostExpensive});

  @override
  Widget build(BuildContext context) {
    final barHeight = amountSpent / mostExpensive * _maxBarHeight;
    return Column(
      children: <Widget>[
        Text(
          "\$${amountSpent.toStringAsFixed(2)}",
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          height: 8.0,
        ),
        Container(
          height: barHeight,
          width: 18.0,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(6.0),
          ),
        ),
        SizedBox(
          height: 8.0,
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
