import "package:flutter/material.dart";

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 211, 122),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 111, 0, 0),
          leading: Container(
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
          ),
          actions: [Container(
            child: IconButton(
              onPressed: (){},
              icon: Icon(Icons.bookmark_add_outlined),
            ),
          )],
          title: Container(
            child: Text("Tokoh Alkitab"),
          ),
          flexibleSpace: Container(
            height: 100,
            width: 100,
          ),
        ),
        body: Container(
          margin: EdgeInsets.all(2),
          padding: EdgeInsets.all(2),
          child: Padding(
            padding: EdgeInsets.all(16),
            child: SafeArea(
              child: ListView(
                children: [
                  PhotoBox(),
                  SizedBox(height: 15),
                  DataTableWidget(),
                  SizedBox(height: 15),
                  TextWidgetBox(),
                  SizedBox(height: 15),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class TextWidgetBox extends StatelessWidget {
  const TextWidgetBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0),
                bottomLeft: Radius.circular(10.0),
                bottomRight: Radius.circular(10.0)),
            color: Color.fromARGB(255, 252, 220, 157),
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                blurRadius: 5.0,
              ),
            ]),
        width: MediaQuery.of(context).size.width * 0.7,
        child: Text(
          "Yohanes Pembaptis memiliki peran penting dalam sejarah keselamatan menurut pandangan Katolik. Dia adalah yang memberikan baptisan pengampunan dosa kepada orang-orang yang datang kepada-Nya di Sungai Yordan sebagai tanda pertobatan. Yohanes juga mengenali Yesus Kristus sebagai Mesias yang dinantikan dan melakukan baptisan-Nya.",
          textAlign: TextAlign.justify,
          maxLines: 10,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}

class PhotoBox extends StatelessWidget {
  const PhotoBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Center(
        child: Image.network(
          "http://1.bp.blogspot.com/-CBjsrN1R0Hc/T5zgfd0BghI/AAAAAAAAArw/bb57T6Zw_Jg/s1600/726.jpg",
          width: 250,
        ),
      ),
    );
  }
}

class DataTableWidget extends StatelessWidget {
  const DataTableWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      color: Color.fromARGB(0, 252, 220, 157),
      child: DataTable(
        columns: [
          DataColumn(label: Text('Nama')),
          DataColumn(label: Text('Santo Yohanes')),
        ],
        rows: [
          DataRow(cells: [
            DataCell(Text('Lahir')),
            DataCell(Text('Ein Karem')),
          ]),
          DataRow(cells: [
            DataCell(Text('Umur')),
            DataCell(Text('Unknown')),
          ]),
        ],
      ),
    ));
  }
}



//==========================================tanpa listview=================================================
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         backgroundColor: Color.fromARGB(255, 255, 211, 122) ,
//         appBar: AppBar(
//           backgroundColor: Color.fromARGB(255, 111, 0, 0),
//           leading: Container(
//               child: IconButton(
//               onPressed: () {},
//               icon: Icon(Icons.bookmark_add_outlined),
//             )
//           ),
//           title: Container(
//             child: Text("Tokoh Alkitab"),
//           ),
//           flexibleSpace: Container(
//             height: 100,
//             width: 100,
//           ),
//         ),
        
//         body: Padding(
//           padding: EdgeInsets.all(16),               
//           child: SafeArea(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 PhotoBox(),
//                 SizedBox(height: 20),
//                 DataTableWidget(),
//                 SizedBox(height: 20),
//                 TextWidgetBox(),
                
//                 //============================versi panjang=============================================
//                 // SimpleRowWidget(
//                 //   label: 'Nama',
//                 //   value: 'Yohanes Pembaptis',
//                 // ),
//                 // SimpleRowWidget(
//                 //   label: 'Lahir',
//                 //   value: 'Ein Karem',
//                 // ),
//                 // SimpleRowWidget(
//                 //   label: 'Umur',
//                 //   value: 'Unknown',
//                 // ),
//                 //============================versi panjang=============================================
//               ],
//             ),
            
//           ),
//         ),
//       ),
//     );
//   }
// }
//==========================================tanpa listview=================================================

//============================================versi simple row widget======================================
// class SimpleRowWidget extends StatelessWidget {
//   final String label;
//   final String value;

//   SimpleRowWidget({Key? key, required this.label, required this.value})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       mainAxisSize: MainAxisSize.max,
//       children: <Widget>[
//         Text('$label :'),
//         SizedBox(width: 16),
//         Text(value),
//       ],
//     );
//   }
// }
//============================================versi simple row widget======================================


// ================================================versi panjang==========================================
// class RowWidget extends StatelessWidget {
//   const RowWidget({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       mainAxisSize: MainAxisSize.max,
//       children: <Widget>[
//         Text('Nama :'),
//         Padding(padding: EdgeInsets.all(16.0)),
//         Text('Yohanes Pembabtis'),
//       ],
//     );
//   }
// }
// class RowWidget2 extends StatelessWidget {
//   const RowWidget2({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       mainAxisSize: MainAxisSize.max,
//       children: <Widget>[
//         Text('Lahir :  '),
//         Padding(padding: EdgeInsets.all(16.0)),
//         Text('Ein Karem                '),
//       ],
//     );
//   }
// }
// class RowWidget3 extends StatelessWidget {
//   const RowWidget3({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       mainAxisSize: MainAxisSize.max,
//       children: <Widget>[
//         Text('Umur :'),
//         Padding(padding: EdgeInsets.all(16.0)),
//         Text('Unknown                 '),
//       ],
//     );
//   }
// }
// ================================================versi panjang==========================================

