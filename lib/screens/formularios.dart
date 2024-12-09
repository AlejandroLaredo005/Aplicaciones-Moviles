import 'package:tarea1_alejandro/routes/imports.dart';
import 'dart:math'; 

class FormularioScreen extends StatefulWidget {
  const FormularioScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _FormularioScreenState createState() => _FormularioScreenState();
}

class _FormularioScreenState extends State<FormularioScreen> {
  final _formKey = GlobalKey<FormState>();
  final _numberController = TextEditingController();
  final int _randomNumber = Random().nextInt(100) + 1;
  String? _numberHint;
  bool _isAccepted = false;
  String? _gender = 'Masculino';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Formulario"),
      ),
      drawer: const MenuLateral(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Correo',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, ingrese un correo';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Usuario',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, ingrese un usuario';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Contraseña',
                ),
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, ingrese una contraseña';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Teléfono',
                ),
                keyboardType: TextInputType.phone,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, ingrese un número de teléfono';
                  } else if (!RegExp(r'^\d{9}$').hasMatch(value)) {
                    return 'El número de teléfono debe tener 9 dígitos';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _numberController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Adivina el número (1-100)',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, ingrese un número';
                  }
                  final number = int.tryParse(value);
                  if (number == null) {
                    return 'Ingrese un número válido';
                  }
                  if (number < 1 || number > 100) {
                    return 'El número debe estar entre 1 y 100';
                  }
                  if (number < _randomNumber) {
                    _numberHint = 'El número es mayor';
                    return _numberHint;
                  } else if (number > _randomNumber) {
                    _numberHint = 'El número es menor';
                    return _numberHint;
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              // Radio Buttons para el género
              const Text(
                'Selecciona tu género',
                style: TextStyle(fontSize: 16),
              ),
              Row(
                children: [
                  Radio<String>(
                    value: 'Masculino',
                    groupValue: _gender,
                    onChanged: (String? value) {
                      setState(() {
                        _gender = value;
                      });
                    },
                  ),
                  const Text('Masculino'),
                  Radio<String>(
                    value: 'Femenino',
                    groupValue: _gender,
                    onChanged: (String? value) {
                      setState(() {
                        _gender = value;
                      });
                    },
                  ),
                  const Text('Femenino'),
                  Radio<String>(
                    value: 'Otro',
                    groupValue: _gender,
                    onChanged: (String? value) {
                      setState(() {
                        _gender = value;
                      });
                    },
                  ),
                  const Text('Otro'),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: _isAccepted,
                    onChanged: (bool? newValue) {
                      setState(() {
                        _isAccepted = newValue ?? false;
                      });
                    },
                  ),
                  const Text("Acepto los términos y condiciones"),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Formulario Enviado')),
                    );
                  }
                },
                child: const Text('Enviar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
