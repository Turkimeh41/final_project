// ignore_for_file: unused_local_variable

import 'package:final_project/Provider/activites_provider.dart';
import 'package:final_project/Provider/participations_provider.dart';
import 'package:final_project/Provider/transactions_provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:final_project/Provider/user_provider.dart' as u;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<u.User>(context, listen: true);
    final activity = Provider.of<Activites>(context, listen: true);
    final transaction = Provider.of<Transactions>(context, listen: true);
    final participation = Provider.of<Participations>(context, listen: true);
    return ListView(
      children: [
        SizedBox(
          height: 200,
          child: Stack(
            children: [
              Positioned(
                  child: Text(
                'Welcome',
                style: GoogleFonts.signika(color: Colors.black),
              ))
            ],
          ),
        )
      ],
    );
  }
}
