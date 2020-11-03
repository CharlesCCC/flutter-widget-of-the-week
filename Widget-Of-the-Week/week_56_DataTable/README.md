# week_56_DataTable

A new Flutter project.

## Getting Started

- Do you have some important data to show to the user in a table? Define your columns, rows, and automatically size cells with DataTable!
- Official Youtube Tutorial: https://youtu.be/ktTajqbhIcY
- Official Doc: https://api.flutter.dev/flutter/material/DataTable-class.html

```dart
      body: Center(
        child: DataTable(
          sortColumnIndex: 1,
          sortAscending: true,
          columns: <DataColumn>[
            DataColumn(
              label: Text(
                'Name',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
            DataColumn(
              label: Text(
                'Age',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
              numeric: true,
            ),
            DataColumn(
              label: Text(
                'Role',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
          ],
          rows: <DataRow>[
            DataRow(
              cells: <DataCell>[
                DataCell(Text('Sarah')),
                DataCell(Text('19')),
                DataCell(Text('Student')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('Janine')),
                DataCell(Text('43')),
                DataCell(Text('Professor')),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('William')),
                DataCell(Text('27')),
                DataCell(Text('Associate Professor')),
              ],
            ),
          ],
        ),
      ),
```

