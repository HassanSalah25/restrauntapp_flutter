import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:restraunt/details.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: _HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }

}


class _HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomePage1();
  }

}

class _HomePage1 extends State<_HomePage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement buil
    return Scaffold(
      backgroundColor: Colors.lime,
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(icon: Icon(CupertinoIcons.back), onPressed: (){}),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(icon: Icon(Icons.list), onPressed: (){}),
                      IconButton(icon: Icon(Icons.menu), onPressed: (){})
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 25.0),
          Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                Text('Restraunt',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                SizedBox(width: 25.0,),
                Text('Restraunt',style: TextStyle(color: Colors.white),),
              ],
            )
          ),
          SizedBox(height: 25),
          Container(
            height: MediaQuery.of(context).size.height - 185,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(75))
            ),
            child: ListView(
              padding: EdgeInsets.only(top: 25,left: 25,bottom: 0),
              children: [
                Padding(
                  padding: EdgeInsets.all(0),
                  child: Container(
                    height: MediaQuery.of(context).size.height - 280,
                    child: ListView(
                      children: [
                        _buildFoodItem('assets/1.jpg','Plate 1','10\$'),
                        _buildFoodItem('assets/2.jpg','Plate 2','20\$'),
                        _buildFoodItem('assets/3.jpg','Plate 3','40\$'),
                        _buildFoodItem('assets/2.jpg','Plate 4','80\$'),
                        _buildFoodItem('assets/3.jpg','Plate 5','40\$'),
                        _buildFoodItem('assets/1.jpg','Plate 6','50\$'),
                        _buildFoodItem('assets/1.jpg','Plate 7','10\$'),
                        _buildFoodItem('assets/2.jpg','Plate 8','20\$'),
                        _buildFoodItem('assets/3.jpg','Plate 8','40\$'),
                        _buildFoodItem('assets/2.jpg','Plate 10','80\$'),
                        _buildFoodItem('assets/3.jpg','Plate 11','40\$'),
                        _buildFoodItem('assets/1.jpg','Plate 12','50\$'),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }


Widget _buildFoodItem(String img,String FoodName,String price){
  return Padding(
    padding: EdgeInsets.all(10),
    child: InkWell(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => Details(img, FoodName, price)
        ));
      },
      child: Row(
        children: [
          Container(
            child:
            Row(
              children: [
                    Hero(
                      tag: new Text('hero1'),
                      child: Image(
                        image: AssetImage(img),
                        fit: BoxFit.cover,
                        height: 55,
                        width: 55,
                      )
                    ),
                SizedBox(width: 15,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(FoodName),
                    Text(price)
                  ],
                )
              ],
            )
          ),
          SizedBox(width: 125),
          IconButton(icon: Icon(Icons.add),color: Colors.black,)
        ],
      ),
    ),
  );
}
}