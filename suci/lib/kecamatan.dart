import 'package:flutter/material.dart';

class Kecamatan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
          ),
        
          Padding(
            padding: EdgeInsets.all(6.0),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              columns: <DataColumn>[
                DataColumn(
                    label: Text('No', style: TextStyle(color: Colors.black))),
                DataColumn(
                    label: Text('kecamatan',
                        style: TextStyle(color: Colors.black))),
                DataColumn(
                    label:
                        Text('Positif', style: TextStyle(color: Colors.black))),
                DataColumn(
                    label:
                        Text('Sembuh', style: TextStyle(color: Colors.black))),
                DataColumn(
                    label: Text('Meninggal',
                        style: TextStyle(color: Colors.black))),
              ],
              rows: <DataRow>[
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('1', style: TextStyle(color: Colors.black))),
                    DataCell(Text('dayeuhkolot',
                        style: TextStyle(color: Colors.black))),
                    DataCell(Text('908', style: TextStyle(color: Colors.black))),
                    DataCell(Text('655', style: TextStyle(color: Colors.black))),
                    DataCell(Text('405', style: TextStyle(color: Colors.black))),
                  ],
                ),
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}