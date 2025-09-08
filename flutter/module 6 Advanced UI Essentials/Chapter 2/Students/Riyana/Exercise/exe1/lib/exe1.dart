import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class exe1 extends StatefulWidget{
  exe1({super.key});
 @override
  State createState()=>_reg();
  
}
class _reg extends State<exe1>{
final _formKey = GlobalKey<FormState>();
TextEditingController namecontroller=TextEditingController();
TextEditingController emailcontroller=TextEditingController();
TextEditingController phonecontroller=TextEditingController();
TextEditingController addrescontrol=TextEditingController();
String? usernameerror;
String? emailerror;
String? phoneerror;
 @override
  void dispose() {
    namecontroller.dispose();
    emailcontroller.dispose();
    phonecontroller.dispose();
    super.dispose();
  }

String? validatename(String name){
  if(RegExp(r'[!@#$%^&*:?<>_`~;[\]\\|=+)(%0-9]').hasMatch(name)){
  return 'Name only contain letters';
  }
  if(name.isEmpty){
    return 'Name cannot be empty';
  }
  return null;
 
}
String? validateemail(String email){
  if(!RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$').hasMatch(email)){
    return 'Enter a valid email , must conatin special symbol';
  }
  if(email.isEmpty){
    return 'fill the email';
  }
  return null;
}
String? validatephone(String phone){
  if(RegExp(r'[!@#$%^&*:?<>_`~;[\]\\|=+)(a-zA-Z]').hasMatch(phone)){
  return 'Enter a valid phone number';
  }
  if(!RegExp(r'^\d{10}$').hasMatch(phone)){
    return 'phone number must contain 10 digits';
  }
  if(phone.isEmpty){
    return 'fill the phone number';
  }
  return null;
}

void _savefrom(){
  print('Name:${namecontroller}');
  print('email:${emailcontroller}');
  print("Phone:${phonecontroller}");
  print("addres:${addrescontrol}");


  namecontroller.clear();
  emailcontroller.clear();
  phonecontroller.clear();
  addrescontrol.clear();
}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Text('Edit Account'),centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:<Widget> [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        CircleAvatar(radius: 60,backgroundColor: Colors.black,),
                        SizedBox(width: 40,),
                        Text('Change / Delete Photo'),
                      ],
                    ),
                  ),SizedBox(height: 20,),
                  TextFormField(controller: namecontroller,
                  decoration: InputDecoration(labelText: 'Name',errorText: usernameerror,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(2))),
                 onChanged: (value) {
                   setState(() {
                     usernameerror=validatename(value);
                   });
                 },
                  ),SizedBox(height: 20,),
                   TextFormField(controller: emailcontroller,
                  decoration: InputDecoration(labelText: 'Email',errorText: emailerror,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(2))),
                 onChanged: (value) {
                   setState(() {
                     emailerror=validateemail(value);
                   });
                 },
                  ),SizedBox(height: 20,),
                 Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    TextFormField(
      controller: phonecontroller,
      keyboardType: TextInputType.phone,maxLength: 10,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(10)
     ],
      decoration: InputDecoration(
        labelText: 'Phone Number',
        errorText: phoneerror,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(2)),
        counterText: '', 
      ),
      onChanged: (value) {
        setState(() {
          phoneerror = validatephone(value);
        });
      },
    ),
  ],
)
                 ,SizedBox(height:20,),
                  TextFormField(controller: addrescontrol,maxLines: 5,
                  decoration: InputDecoration(labelText: 'Address',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(2))),),
                  SizedBox(height: 30,),
                  Center(
                    child: ElevatedButton(onPressed: (){
                      setState(() {
                       if (usernameerror != null || emailerror != null ||
                        phoneerror != null || addrescontrol.text.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Please fill all fields correctly")),
        );
      } else {
      
        _savefrom();
        
      }
    });
  },
  style: ElevatedButton.styleFrom(
    backgroundColor: Colors.orangeAccent,
    minimumSize: Size(350, 50),
  ),
  child: Text('Save', style: TextStyle(fontSize: 20, color: Colors.black)),
),
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
