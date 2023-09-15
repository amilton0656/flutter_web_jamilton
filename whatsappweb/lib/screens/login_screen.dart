import 'dart:js_interop';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:whatsappweb/utils/paleta_cores.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _controllerNome =
      TextEditingController(text: 'Amilton Rocha');
  final TextEditingController _controllerEmail =
      TextEditingController(text: 'amilton@email.com');
  final TextEditingController _controllerSenha =
      TextEditingController(text: '1234567');

  bool _cadastroUsuario = false;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  _validarCampos() async {
    String nome = _controllerNome.text;
    String email = _controllerEmail.text;
    String senha = _controllerSenha.text;

    if (email.isNotEmpty && email.contains('@')) {
      if (senha.isNotEmpty && senha.length > 6) {
        if (_cadastroUsuario) {
          //cadastro
          if (nome.isNotEmpty && nome.length > 3) {
            await _auth
                .createUserWithEmailAndPassword(
              email: email,
              password: senha,
            )
                .then((auth) {
              String? idUsuario = auth.user?.uid;
              print('Usuario : $idUsuario');
            });
          } else {
            print('nome inválido');
          }
        } else {
          //login
        }
      } else {
        print('senha inválida');
      }
    } else {
      print('email inválido');
    }
  }

  @override
  Widget build(BuildContext context) {
    double alturaTela = MediaQuery.of(context).size.height;
    double larguraTela = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        color: PaletaCores.corFundo,
        height: alturaTela,
        width: larguraTela,
        child: Stack(
          children: [
            Positioned(
              child: Container(
                height: alturaTela * 0.5,
                width: larguraTela,
                color: PaletaCores.corPrimaria,
              ),
            ),
            Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Card(
                    elevation: 4,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Container(
                      width: 500,
                      padding: const EdgeInsets.all(40),
                      child: Column(
                        children: [
                          //Imagem perfil
                          Visibility(
                            visible: _cadastroUsuario,
                            child: ClipOval(
                              child: Image.asset(
                                'assets/images/perfil.png',
                                height: 120,
                                width: 120,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                          const SizedBox(height: 8),
                          Visibility(
                            visible: _cadastroUsuario,
                            child: OutlinedButton(
                              onPressed: () {},
                              child: const Text('Selecionar foto'),
                            ),
                          ),
                          const SizedBox(height: 8),

                          //Nome
                          Visibility(
                            visible: _cadastroUsuario,
                            child: TextField(
                              keyboardType: TextInputType.text,
                              controller: _controllerNome,
                              decoration: const InputDecoration(
                                hintText: 'Nome',
                                labelText: 'Nome',
                                suffix: Icon(Icons.person),
                              ),
                            ),
                          ),

                          //Email
                          TextField(
                            keyboardType: TextInputType.emailAddress,
                            controller: _controllerEmail,
                            decoration: const InputDecoration(
                              hintText: 'Email',
                              labelText: 'Email',
                              suffix: Icon(Icons.mail_outline),
                            ),
                          ),

                          //Senha
                          TextField(
                            keyboardType: TextInputType.text,
                            controller: _controllerSenha,
                            obscureText: true,
                            decoration: const InputDecoration(
                              hintText: 'Senha',
                              labelText: 'Senha',
                              suffix: Icon(Icons.lock_outline),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),

                          //Botao Login
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: PaletaCores.corPrimaria,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  _cadastroUsuario ? 'Cadastrar' : 'Login',
                                  style: const TextStyle(fontSize: 18),
                                ),
                              ),
                            ),
                          ),

                          //Rodape
                          Row(
                            children: [
                              const Text('Login'),
                              Switch(
                                value: _cadastroUsuario,
                                onChanged: (value) {
                                  setState(() {
                                    _cadastroUsuario = value;
                                  });
                                },
                              ),
                              const Text('Cadastro'),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
