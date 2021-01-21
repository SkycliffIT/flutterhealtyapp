import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  bodyWidget(BuildContext context) => Container(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          margin: EdgeInsets.all(20.0),
          elevation: 6.0,
          child: Column(
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(2.0),
                    // padding: EdgeInsets.only(bottom: 10.0),
                    child: Center(
                      child: Image.network(
                          "https://img.rankedboost.com/wp-content/uploads/2018/10/Ivysaur-Pokemon-Lets-GO.png"),
                    ),
                  ),
                  Container(
                    child: Text(
                      "Ivysaur",
                      style: TextStyle(
                          fontWeight: FontWeight.w800, fontSize: 20.0),
                    ),
                    padding: EdgeInsets.only(top: 20.0),
                  ),
                  Container(
                    child: Text(
                      "Height: 0.99 m",
                      style: TextStyle(fontSize: 16.0),
                    ),
                    margin: EdgeInsets.only(
                      top: 10.0,
                    ),
                  ),
                  Container(
                    child: Text("Weight: 13.0 kg",
                        style: TextStyle(fontSize: 16.0)),
                    margin: EdgeInsets.only(top: 10.0),
                  ),
                  Container(
                    child: Text(
                      "Types",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                    ),
                    margin: EdgeInsets.only(top: 10.0),
                  ),
                  ListTile(
                    title: Container(
                      // padding: const EdgeInsets.all(50.0),
                      child:
                          // RaisedButton(
                          //   shape: RoundedRectangleBorder(
                          //       borderRadius: BorderRadius.circular(20.0)),
                          //   onPressed: () {},
                          //   elevation: 2.0,
                          //   color: Colors.amber,
                          //   child: Text('Grass'),
                          // ),
                          FilterChip(
                        onSelected: (a) {},
                        pressElevation: 2.0,
                        backgroundColor: Colors.amber,
                        label: Text(
                          'Grass',
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ),
                    ),
                    trailing: Container(
                      padding: const EdgeInsets.only(right: 50.0),
                      child: FilterChip(
                        onSelected: (a) {},
                        pressElevation: 2.0,
                        backgroundColor: Colors.amber,
                        label: Text(
                          'Poison',
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ),
                      // RaisedButton(
                      //   shape: RoundedRectangleBorder(
                      //       borderRadius: BorderRadius.circular(20.0)),
                      //   onPressed: () {},
                      //   elevation: 2.0,
                      //   color: Colors.amber,
                      //   child: Text('Poison'),
                      // ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 20.0, top: 10.0),
                    child: Text(
                      "Weakness",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FilterChip(
                        onSelected: (a) {},
                        pressElevation: 2.0,
                        backgroundColor: Colors.redAccent,
                        label: Text(
                          'Fire',
                          style: TextStyle(color: Colors.white, fontSize: 16.0),
                        ),
                      ),
                      FilterChip(
                        onSelected: (a) {},
                        pressElevation: 2.0,
                        backgroundColor: Colors.redAccent,
                        label: Text(
                          'Ice',
                          style: TextStyle(color: Colors.white, fontSize: 16.0),
                        ),
                      ),
                      FilterChip(
                        onSelected: (a) {},
                        pressElevation: 2.0,
                        backgroundColor: Colors.redAccent,
                        label: Text(
                          'Flying',
                          style: TextStyle(color: Colors.white, fontSize: 16.0),
                        ),
                      ),
                      FilterChip(
                        onSelected: (a) {},
                        pressElevation: 2.0,
                        backgroundColor: Colors.redAccent,
                        label: Text(
                          'Psychic',
                          style: TextStyle(color: Colors.white, fontSize: 16.0),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
                    child: Text(
                      "Next Evolution",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                    ),
                  ),
                  FilterChip(
                    elevation: 6.0,
                    shadowColor: Colors.green,
                    tooltip: "Ven",
                    avatar: CircleAvatar(
                      backgroundColor: Theme.of(context).cardColor,
                      child: Text("A"),
                    ),
                    backgroundColor: Colors.green,
                    onSelected: (bool selected) {
                      // widget.isSelected = widget.isSelected
                    },
                    // selected: widget,
                    labelStyle: TextStyle(
                        color: Colors.white,
                        // fontSize: 16.0,
                        fontWeight: FontWeight.w600),
                    label: Text(
                      "Venusaur",
                    ),
                  ),
                  // RaisedButton(
                  //   padding: EdgeInsets.all(0.0),
                  //   elevation: 6.0,
                  //   shape: RoundedRectangleBorder(
                  //     borderRadius: BorderRadius.circular(20.0),
                  //   ),
                  //   color: Colors.green,
                  //   onPressed: () {},
                  //   child: Text(
                  //     "Venusaur",
                  //     style: TextStyle(
                  //         color: Colors.white, fontWeight: FontWeight.w600),
                  //   ),
                  // )
                ],
              ),
            ],
          ),
        ),
      );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        elevation: 0.0,
        backgroundColor: Colors.cyan,
        title: Text(
          "Ivysaur",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: bodyWidget(context),
    );
  }
}
