import 'package:flutter/material.dart';
import 'package:project14/AddressPage.dart';

class DetailContainer extends StatelessWidget {
  final String title;
  final String data;
  final Map<String, dynamic> address;

  const DetailContainer({
    Key? key,
    required this.title,
    required this.data,
    required this.address,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (title == "Email") {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Addresspage(
                address: address,
              ),
            ),
          );
        }
      },
      child: Card(
        elevation: 5,
        margin: const EdgeInsets.symmetric(vertical: 10.0),
        child: ListTile(
          title: Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          subtitle: Text(
            data,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black54,
            ),
          ),
          trailing:
              title == "Email" ? const Icon(Icons.arrow_forward_ios) : null,
        ),
      ),
    );
  }
}
