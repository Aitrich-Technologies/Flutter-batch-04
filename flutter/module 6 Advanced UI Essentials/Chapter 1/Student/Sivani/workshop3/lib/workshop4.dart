import 'package:flutter/material.dart';

class Buyers19 extends StatefulWidget {
  const Buyers19({Key? key}) : super(key: key);

  @override
  State<Buyers19> createState() => _Buyers19State();
}

class _Buyers19State extends State<Buyers19> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  Set<String> likedItems = {};

  void toggleLike(String item) {
    setState(() {
      if (likedItems.contains(item)) {
        likedItems.remove(item);
      } else {
        likedItems.add(item);
      }
    });
  }

  String? selectedValue3 = "Breed";

  final List<String> items3 = ['breed1', 'breed2', 'breed3', 'breed4'];
  bool isChecked2 = false;
  bool isCheckedvac = false;
  bool isCheckedcer = false;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('Cat'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              _scaffoldKey.currentState!.openEndDrawer();
            },
            icon: const Icon(Icons.filter_alt_sharp),
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search_rounded)),
        ],
      ),
      endDrawer: Drawer(
        child: ListView(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Center(child: Text("Filter & Sort")),
                SizedBox(height: 10),
                DropdownButton(
                    value: selectedValue3,
                    items: ['Breed', 'Breed2', 'Breed3', 'Breed4']
                        .map<DropdownMenuItem<String>>((String Value) {
                      return DropdownMenuItem<String>(
                        value: Value,
                        child: Text(Value),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedValue3 = newValue;
                      });
                    }),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Age Limit : "),
                    SizedBox(width: 5),
                    Expanded(
                        child: TextFormField(
                            decoration:
                                InputDecoration(border: OutlineInputBorder()))),
                    SizedBox(width: 10),
                    Text(" To"),
                    SizedBox(width: 5),
                    Expanded(
                        child: TextFormField(
                            decoration:
                                InputDecoration(border: OutlineInputBorder()))),
                  ],
                ),
                SizedBox(height: 5),
                Text("Date Published"),
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "Three days ago...",
                      border: OutlineInputBorder()),
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Looking to Adopt'),
                    Checkbox(
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value ?? false;
                        });
                      },
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text("Price Range")],
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 20),
                    Expanded(
                      child: TextFormField(
                        decoration:
                            InputDecoration(border: OutlineInputBorder()),
                      ),
                    ),
                    SizedBox(width: 20),
                    Text("-"),
                    SizedBox(width: 20),
                    Expanded(
                      child: TextFormField(
                        decoration:
                            InputDecoration(border: OutlineInputBorder()),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: "Location", border: OutlineInputBorder()),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Vaccinated'),
                    Checkbox(
                      value: isCheckedvac,
                      onChanged: (bool? value) {
                        setState(() {
                          isCheckedvac = value ?? false;
                        });
                      },
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Certified'),
                    Checkbox(
                      value: isCheckedcer,
                      onChanged: (bool? value) {
                        setState(() {
                          isCheckedcer = value ?? false;
                        });
                      },
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            padding: EdgeInsets.symmetric(
                                horizontal: 130, vertical: 20)),
                        onPressed: () {},
                        child: Text(
                          "Apply",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ))
                  ],
                )
              ],
            ),
          ],
        ),
      ),
      // Create enddrawer here
      body: ListView(
        children: [
          buildListItem("Bella", "₹ 5000"),
          buildListItem("Lucy", "₹ 1500"),
          buildListItem("Loki", "₹ 2000"),
          buildListItem("Milo", "₹ 10000"),
          buildListItem("Leo", "₹ 6500"),
          buildListItem("Oggy", "₹ 3500"),
        ],
      ),
    );
  }

  Widget buildListItem(String name, String price) {
    bool isLiked = likedItems.contains(name);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: const Color.fromARGB(255, 232, 229, 229),
        child: ListTile(
          title: Text(name),
          subtitle: Text(price),
          trailing: IconButton(
            onPressed: () {
              toggleLike(name);
            },
            icon: Icon(
              isLiked ? Icons.favorite : Icons.favorite_border,
              color: isLiked ? Colors.red : null,
            ),
          ),
          leading: const CircleAvatar(
            backgroundColor: Colors.black,
            radius: 30,
          ),
        ),
      ),
    );
  }
}
