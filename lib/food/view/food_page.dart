import 'package:flutter/material.dart';
import 'package:new_app_cli/food/model/food_model.dart';
class FoodPage extends StatefulWidget {
  // const FoodPage({required Key key}) : super(key: key);

  @override
  _FoodPageState createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Food Cubit Demo"),
        centerTitle: true,

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Nutrient value',style: TextStyle(fontSize: 30),),
                SizedBox(width: 10,),
                Text('20',style: TextStyle(fontSize: 30,color: Colors.green),),
              ],
            ),
            Container(
              child: Stack(
                children: [
                  Image.network("https://image.freepik.com/free-vector/realistic-white-plate-isolated_1284-41743.jpg"),
                  
                ],
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
               physics: NeverScrollableScrollPhysics(),
               itemCount: foodList.length,

                itemBuilder: (context,index){
                 return Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Card(
                     child: Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Column(
                             children: [
                              Image.network( foodList[index].foodImg,height: 80,width: 80,fit: BoxFit.cover,),
                               Text(foodList[index].foodName,)

                             ],
                           ),
                           Container(
                             child: Row(
                               children: [
                                 Icon(Icons.add_box,size: 40,color: Colors.orange,),
                                 Icon(Icons.indeterminate_check_box,size: 40,color: Colors.orange,),
                               ],
                             ),
                           )
                         ],
                       ),
                     ),
                   ),
                 );
                })
          ],
        ),
      ),
    );
  }
}
