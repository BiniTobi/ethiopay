import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  
  HomePage({Key? key}) : super(key: key);
  final user = FirebaseAuth.instance.currentUser!;

  // sign user out method
  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      
        actions: [
          IconButton(
            onPressed: signUserOut,
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.center,
                child: Text(
                  'LOGGED IN AS ${user.email!}',
                  style: const TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ),
              const SizedBox(height: 16),
              Center(
                child: Card(
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color.fromARGB(255, 241, 148, 8), Color.fromARGB(255, 255, 145, 11)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Overview of Bill Summary',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white, 
                            ),
                          ),
                          SizedBox(height: 10),
                          Text('Bill Title: The Clean Energy and Jobs Act of 2024',
                              style: TextStyle(color: Colors.white)),
                          Text('Bill Number: HR 4567',
                              style: TextStyle(color: Colors.white)),
                          Text(
                            'Sponsor: Representative Sarah Green (D-CA)',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            'Committee: House Committee on Energy and Commerce',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(height: 10),
                          Text('Summary:', style: TextStyle(color: Colors.white)),
                          SizedBox(height: 5),
                          Text(
                            '• Main Goal: To accelerate the transition to a clean energy economy...',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text('• Key Provisions:',
                              style: TextStyle(color: Colors.white)),
                          Text(
                            '  - Provides \$100 billion in tax credits for renewable energy...',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              
              // const SizedBox(height: 6),
              Center(
                child: Wrap(
                  spacing: 16.0,
                  runSpacing: 16.0,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2.5,
                      child: Card(
                        margin: const EdgeInsets.only(top: 10.0),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Image.asset(
                                'assets/billing.png',
                                width: 100,
                                height: 100,
                              ),
                            ),
                            const Text('Bill Detail',
                            style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold,fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2.5,
                      child: Card(
                        
                        margin: const EdgeInsets.only(top: 10.0),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Image.asset(
                                'assets/payeer.png',
                                width: 100,
                                height: 100,
                              ),
                            ),
                            const Text('Payment',style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold,fontSize: 16),),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2.5,
                      child: Card(
                        margin: const EdgeInsets.only(top: 20.0),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Image.asset(
                                'assets/transaction.png',
                                width: 100,
                                height: 100,
                              ),
                            ),
                            const Text('Transaction',style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold,fontSize: 16),),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2.5,
                      child: Card(
                        margin: const EdgeInsets.only(top: 20.0),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Image.asset(
                                'assets/settings.png',
                                width: 100,
                                height: 100,
                              ),
                            ),
                            const Text('Settings',style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold,fontSize: 16),),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
