import 'package:flutter/material.dart';
import 'package:flutter_my_dog/db/user/user_db.dart';
import 'package:image_picker/image_picker.dart';

class addEvent extends StatefulWidget {
   addEvent({super.key});

  @override
  State<addEvent> createState() => _addEventState();
}

class _addEventState extends State<addEvent> {
TextEditingController namecontroller=TextEditingController();

TextEditingController venuecontroller=TextEditingController();

TextEditingController datecontroller=TextEditingController();

void _clearTextFields() {
    setState(() {
      namecontroller.clear();
      venuecontroller.clear();
      datecontroller.clear();
     
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white  ,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              // SizedBox(height: 30,),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Hero(
                    tag: kBackBtn,
                    child: Card(
                      color: Colors.blue,
                      elevation: 10,
                      shape: kBackButtonShape,
                      child: MaterialButton(
                        height: 50,
                        minWidth: 50,
                        elevation: 10,
                        shape: kBackButtonShape,
                        onPressed: (){
                          Navigator.pop(context);
                        },
                        child: kBackBtn,
                      
                      ),
                    ),
                  ),
                  // SizedBox(
                  //   width: 50,
                  // ),
                 Hero(
                    tag: 'title',
                    transitionOnUserGestures: true,
                    child: Card(
                      color: Colors.blue,
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                        ),
                      ),
                      child: InkWell(
                        
                        child: Container(
                           
                          width: MediaQuery.of(context).size.width / 1.5,
                          height: 50,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Text(
                                'Add Event',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  // color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
               Padding(
        padding: const EdgeInsets.only(top: 20 ,right: 190,left: 20),
        child: Column(
         children:[ Text('Set NewEvents',style: TextStyle(
        color: const Color.fromARGB(255, 0, 0, 0) ,
        fontSize: 30,
        fontWeight: FontWeight.bold 
      ),),
       Text(' Here...',style: TextStyle(
        color: const Color.fromARGB(255, 0, 0, 0) ,
        fontSize: 28,
        fontWeight: FontWeight.bold 
      ),),
     
    ] )
      ),
             Padding(
  padding: const EdgeInsets.only(top: 20),
  child: Container(
    width: 250,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
    ),
    child: Stack(
      alignment: Alignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Image.network('https://thumb.ac-illust.com/cf/cf96c7be7f75b8546ba073915764b302_t.jpeg'),
        ),
        IconButton(onPressed:
          () {
                     showDialog(context: context, builder: (context) {
              return AlertDialog(
            title: Text("Pick image"),
              actions: [IconButton(onPressed: ()async{
             await eventimgPick(ImageSource.gallery);
                              
             }, icon: Icon(Icons.browse_gallery)),IconButton(onPressed: (){
                eventimgPick(ImageSource.camera);}, icon: Icon(Icons.camera))],);
           },);
                                        
        }, icon: Icon(Icons.add_a_photo_outlined,),style: ButtonStyle(
          iconSize: MaterialStatePropertyAll(45)
        ),)
      ],
    ),
  ),
),
 Padding(
  padding: EdgeInsets.only(top: 30,right: 40,left: 40),
  child:   Column(
  
    children: [
  
          TextField(
           controller: namecontroller,
      
  
          decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
          border: UnderlineInputBorder()
           ,
      
  
            labelText:'    Event Name' ,
            labelStyle: TextStyle(
              color: const Color.fromARGB(255, 0, 0, 0) ,
              
              
            )
  
      
  
          ),
     onEditingComplete: () {
                FocusScope.of(context).nextFocus();
                            }  
      ),
  
      TextField(
         controller: venuecontroller,
        decoration: InputDecoration(
           fillColor: Colors.white,
            filled: true,
          border: UnderlineInputBorder(), 
          labelText:'    Event Venue',
          labelStyle: TextStyle(
              color: const Color.fromARGB(255, 0, 0, 0) 
            )
        ),
        onEditingComplete: () {
                FocusScope.of(context).nextFocus();
                            }  
  
      ),
  
       TextField(
          controller: datecontroller,
        decoration: InputDecoration(
           fillColor: Colors.white,
            filled: true,
          labelText:'    Event Date',
          labelStyle: TextStyle(
              color: const Color.fromARGB(255, 0, 0, 0) 
            ) 
        ),
        onEditingComplete: () {
                FocusScope.of(context).unfocus();
                            }  
       
      ),
      SizedBox(height:20,),
      ElevatedButton(onPressed: () {
        addEventToDB(namecontroller.text, venuecontroller.text, datecontroller.text);
        _clearTextFields();
        // Navigator.push(context,MaterialPageRoute(builder:(context)=>addReminder() ));
      }, child: Text('Add',style: TextStyle(
        color: const Color.fromARGB(255, 0, 0, 0)
      ),),style: ButtonStyle(backgroundColor:
        MaterialStatePropertyAll(Color.fromARGB(255, 33, 170, 255))),)
    ],
  
  ),
)

            ]
          )
          ,)
          ,)
    );
  }
}

ShapeBorder kBackButtonShape = RoundedRectangleBorder(
  borderRadius: BorderRadius.only(
    topRight: Radius.circular(30),
  ),
);

Widget kBackBtn = Icon(
  Icons.arrow_back_ios,
  color: Colors.black54,
);