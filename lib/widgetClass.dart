
import 'package:flutter/material.dart';
import 'package:belajar/model.dart';


class ShowData extends StatefulWidget {
  DataUser data;
    ShowData({Key key, this.data,});
  @override
  _ShowDataState createState() => _ShowDataState();
}

class _ShowDataState extends State<ShowData> {
   bool flag = false;

  suka(){
    setState(() {
      flag=!flag;
    });
    
  }

 
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(15)),
        boxShadow: [
          BoxShadow(offset: Offset(5,5), blurRadius: 5,
          spreadRadius: 5, color: Colors.grey[400])
        ]
      ),
      margin: EdgeInsets.all(10),
      height: 100,
      child: Row(
      children: <Widget>[
       Container(
         width: 100,
         decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(width:10,color:Colors.white),
        borderRadius: BorderRadius.all(Radius.circular(50)),
        image: DecorationImage(image: AssetImage(widget.data.foto),fit: BoxFit.contain,),
         ),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.end,
           children: <Widget>[
             Text(widget.data.nama,style: TextStyle(color:Colors.white,fontSize: 18
             , fontWeight: FontWeight.w600),)
           ],
         ),
       ),
       Expanded(
        child: Padding(
         padding: EdgeInsets.all(10),
         child:Column(
           children: <Widget>[
             Text(widget.data.nama, style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700)),
             Text(widget.data.gender, style: TextStyle(fontSize: 18),),
             Text('Umur '+widget.data.umur.toString()),
           ],
         ),
       ),
       ),
      Expanded(
        child: GestureDetector(
        onTap:()=>suka(),
        child: !flag ? Icon(Icons.favorite_border,size:30,color: Colors.red[700],)
        : Icon(Icons.favorite,size:30,color: Colors.red[700],),
      ),
      )
      ],
    ),
    );
  }
}


