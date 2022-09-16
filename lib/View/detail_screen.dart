import 'package:covid_tracker/reuseable_widgets/reuseable_row.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  String image;
  String name;
  int totalCases,
      totalRecovered,
      totalDeaths,
      active,
      test,
      todayRecovered,
      critical;

  DetailScreen({
    required this.image,
    required this.name,
    required this.totalCases,
    required this.totalRecovered,
    required this.totalDeaths,
    required this.active,
    required this.test,
    required this.todayRecovered,
    required this.critical,
  });

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * .067),
                child: Card(
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .06,
                      ),
                      ReusableRow(
                          title: 'Cases', value: widget.totalCases.toString()),
                      ReusableRow(
                          title: 'Recovered',
                          value: widget.totalRecovered.toString()),
                      ReusableRow(
                          title: 'Deaths',
                          value: widget.totalDeaths.toString()),
                      ReusableRow(
                          title: 'Critical', value: widget.critical.toString()),
                      ReusableRow(
                          title: 'Today Recovered',
                          value: widget.todayRecovered.toString()),
                      ReusableRow(
                          title: 'Active', value: widget.active.toString()),
                      ReusableRow(
                          title: 'Tests', value: widget.test.toString()),
                    ],
                  ),
                ),
              ),
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(widget.image),
              ),
            ],
          )
        ],
      ),
    );
  }
}
