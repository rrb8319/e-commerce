import 'package:flutter/material.dart';
import 'package:ecommerce/src/models/places.dart';
import 'package:ecommerce/src/screens/details.dart';

class ImageCard extends StatelessWidget {
  
  final String name;
  final int days;
  final String pictures;
  final Place place;

  ImageCard({ @required this.name,@required this.days,@required this.pictures,this.place});
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(4),
      child: InkWell(
        onTap: (){
         Navigator.push(context, MaterialPageRoute(builder: (_)=> Details(place)));
        },
       child: Container(
        decoration: BoxDecoration(
         boxShadow: [
           BoxShadow(
             color: Color.fromARGB(62, 168, 174, 201),
             offset: Offset(0, 9),
             blurRadius: 14,
           )
         ] 
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Stack(
            children: <Widget>[
              Image.asset(
                "images/$pictures",
                width: 200,
                height: double.infinity,
                fit: BoxFit.cover,
              ),

              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: 200,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Colors.black.withOpacity(0.8),
                        Colors.black.withOpacity(0.7),
                        Colors.black.withOpacity(0.6),
                        Colors.black.withOpacity(0.6),
                        Colors.black.withOpacity(0.4),
                        Colors.black.withOpacity(0.1),
                        Colors.black.withOpacity(0.05),
                        Colors.black.withOpacity(0.025),
                      ],
                    )
                  ),

                  child: Padding(padding: const EdgeInsets.only(top: 8),
                  child: Container(),),

                ),
              ),


              Positioned(
                bottom: 30,
                left: 5,
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: RichText(
                      text: TextSpan(
                        children:[
                          TextSpan(
                            text: '$name',
                            style: TextStyle(fontSize: 22)
                          )
                        ]
                         ),
                    ),
                  ),
                ),
              ),

            Positioned(
              bottom: 10,
              left: 5,
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.calendar_today,color: Colors.white, size:14,),
                      SizedBox(width:5),
                      Text('$days days',style: TextStyle(color: Colors.white),)
                    ],
                  ),
                ),
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