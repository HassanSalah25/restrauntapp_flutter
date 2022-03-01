import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Details extends StatefulWidget{
  final heroTag;
  final foodname;
  final price;
  Details(this.heroTag,this.foodname,this.price);
  @override
  _Details createState() => _Details();
}

class _Details extends State<Details>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(CupertinoIcons.back),
          onPressed: (){
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("Details of Plat"),
        centerTitle: true,
        actions: [
          IconButton(icon: Icon(Icons.more_horiz), onPressed: (){},color: Colors.white),
        ],
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height - 82,
                width: MediaQuery.of(context).size.width,
                color: Colors.transparent,
              ),
              Positioned(
                top: 70,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(45),topRight: Radius.circular(45)),
                      color: Colors.white
                    ),
                  ),
                height: MediaQuery.of(context).size.height - 100,
                width: MediaQuery.of(context).size.width,
              ),
              Positioned(
                top: 30,
                left:  (MediaQuery.of(context).size.width/2) - 100,
                child: Hero(
                  tag: new Text('hero2'),
                  child:Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(widget.heroTag),
                        fit: BoxFit.cover
                      )
                    ),
                  ),
                ),
                height:200,
                width: 200
              ),
              Positioned(
                  top: 250,
                  left: 50,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.foodname),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(widget.price,style: TextStyle(color: Colors.grey),),
                          SizedBox(width: 120,),
                          Container(
                              width: 125,
                              height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.lime
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                InkWell(
                                  onTap: (){},
                                  child: Container(
                                    height: 25,
                                    width: 25,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.lime
                                    ),
                                    child: Center(
                                      child: Icon(
                                          Icons.remove,
                                          color: Colors.white,
                                          size:20,
                                      ),

                                    )
                                  )
                                ),
                                Text('1'),
                                InkWell(
                                    onTap: () {},
                                    child: Container(
                                      height: 25,
                                      width: 25,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(7),
                                          color: Colors.lime
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                          size: 20,
                                        ),
                                      ),
                                    )
                                ),
                              ],
                            )
                          )
                        ],
                      ),
                    ],
                  )
              ),
            ],
          )
        ],
      ),
    );
  }

}