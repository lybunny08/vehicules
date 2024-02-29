import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Profile',
            style: TextStyle(fontWeight: FontWeight.w500)),
      ),
      body: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                border:
                    Border.all(color: Colors.black.withOpacity(0.3), width: 5)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                'assets/images/profile.jpg',
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Mamitiana',
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              Padding(
                padding: EdgeInsets.only(left: 5),
                child: Text('Lydien',
                    style: TextStyle(fontWeight: FontWeight.w700)),
              )
            ],
          )
        ],
      )),
    );
  }
}
