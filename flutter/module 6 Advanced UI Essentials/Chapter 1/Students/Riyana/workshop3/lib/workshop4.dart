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

  String? selectedValue3='Breed';

  final List<String> items3 = ['breed1', 'breed2', 'breed3', 'breed4'];
  bool isChecked2 = false;
  bool isCheckedvac = false;
  bool isCheckedcer = false;

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
          
          IconButton(onPressed: () {}, icon: const Icon(Icons.search_rounded)
          ),
        ],
      ),endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(0),
          children:<Widget >[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 100,),
                Center(child: Text('Filter & Sort')),
                
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DropdownButton(value: selectedValue3,
                            items: ['breed 1', 'breed 2', 'breed 3','breed 4'].map<DropdownMenuItem<String>>
                            ((String value){
                              return DropdownMenuItem<String>(value: value,child: Text(value),);
                            }).toList(),
                             onChanged: (String? newvalue){
                              setState(() {
                  selectedValue3=newvalue;
                              });
                             },),
                ),
            Row(
              children: [
                Text('Age Limit'),
              SizedBox(width: 5,),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
            border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Text('TO'),
                SizedBox(width: 5,),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
            border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
             SizedBox(height: 20,),
             Center(child: Text('Date Published')),
             SizedBox(height: 10,),
              TextFormField(
                    decoration: InputDecoration(labelText: 'Three days ago',
            border: OutlineInputBorder(),
                    ),
                  ),
                
            
             Row(
              mainAxisAlignment: MainAxisAlignment.end,
               children: [
                 Text('looking for adoption'),
                 Checkbox(value: isChecked2, onChanged: (value){
                  setState(() {
                    isChecked2=value!;
                  });
                  
                 })
               ],
             ),
             Center(child: Text('Pet prices')),
             SizedBox(height: 10,),
              Row(
              children: [
          
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
            border: OutlineInputBorder(),
                    ),
                  ),
                ),SizedBox(width: 5,),
               Text('-'),
                SizedBox(width: 5,),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
            border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),SizedBox(height: 20,),
             TextFormField(
                    decoration: InputDecoration(labelText: 'Location',
            border: OutlineInputBorder(),
                    ),
                  ),

              Row(
              mainAxisAlignment: MainAxisAlignment.end,
               children: [
                 Text(' Vaccinated'),
                 Checkbox(value: isCheckedvac, onChanged: (value){
                  setState(() {
                    isCheckedvac=value!;
                  });
                  
                 })
               ],
             ),
              Row(
              mainAxisAlignment: MainAxisAlignment.end,
               children: [
                 Text(' Ceritified'),
                 Checkbox(value: isCheckedcer, onChanged: (value){
                  setState(() {
                    isCheckedcer=value!;
                  });
                  
                 }),
               
               ],
             ),
               Center(
                 child: ElevatedButton(onPressed: (){
                 
                   },style: ElevatedButton.styleFrom(backgroundColor: Colors.orangeAccent,minimumSize: Size(350, 40)),
                   child: Text('Apply')),
               )
            
             
              ],
            ),
          ),]
        ),
        
      ),
     // Create enddrawer here
      body: ListView(
        children: [
          buildListItem("Bella", "₹ 5000"),
          buildListItem("Lucy", "₹ 1500" ),    
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