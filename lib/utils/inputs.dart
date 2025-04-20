import 'package:flutter/material.dart';

const List<String> bancos = [
  "Abn Amro Bank (Chile)",
  "Banco de Chile",
  "BCI/TBANK/NOVA",
  "Banco Bice",
  "Banco Consorcio",
  "Banco Coopeuch",
  "Banco Estado",
  "Banco Falabella",
  "Banco Internacional de Chile",
  "Banco Itaú",
  "Banco JP Morgan",
  "Banco Prepago Los Héroes",
  "Banco Santander",
  "Banco Scotiabank",
];

const List<Map<String, String>> titulos = [
  {"bancosScreen": "Agregar cuenta bancaria"},
  {"insertMoney": "Cuánto dinero quieres retirar?"},
  {"checkData": "Revisa si está todo bien"},
  {"done": "Listo! Los \$"},
  {"error": "Error"},
  {"inicio": "Inicio"},
  {"indicadores": "Indicadores comerciales"},
];

const List<Map<String, String>> enlaces = [
  {"ayuda": "https://www.mercadopago.cl/ayuda"},
];

const Map<String, Map<String, String>> titulosYDescripciones = {
  "verifica": {
    "titulo": "Verifica que esta cuenta te pertenece",
    "descripcion": "Elige cómo recibir el código de verificación.",
  },
  "ingresa": {
    "titulo": "Ingresa el código de verificación",
    "descripcion": "Recibiste un número de 6 dígitos por",
  },
};

const List<Map<String, dynamic>> listaGenericaDeVerificacion = [
  {
    "icono": Icons.sms_outlined,
    "titulo": "SMS",
    "subtitulo": "Al celular terminado en 8932",
  },
  {
    "icono": Icons.local_phone,
    "titulo": "WhatsApp",
    "subtitulo": "Al celular terminado en 8932",
  },
  {
    "icono": Icons.local_phone_outlined,
    "titulo": "Llamada telefónica",
    "subtitulo": "Al celular terminado en 8932",
  },
];

const List<Map<String, String>> botonesSimples = [
  {"verifica": "Verifica de otra forma"},
  {"otro": "Usar otro método"},
  {"inicio": "Ir al inicio"},
];

const Map<String, Map<String, dynamic>> botonesConEstilo = {
  "continuar": {
    "backgroundColor": Color.fromARGB(255, 71, 119, 252),
    "color": Colors.white,
    "text": "Continuar",
  },
  "retirar": {
    "backgroundColor": Color.fromARGB(255, 71, 119, 252),
    "color": Colors.white,
    "text": "Retirar",
  },
  "reenviar": {
    "backgroundColor": Color.fromARGB(255, 232, 241, 255),
    "color": Color.fromARGB(255, 65, 129, 232),
    "text": "Reenviar código",
  },
  "ingresar": {
    "backgroundColor": Color.fromARGB(255, 232, 241, 255),
    "color": Color.fromARGB(255, 65, 129, 232),
    "text": "Ingresar dinero",
  },
  "transferir": {
    "backgroundColor": Color.fromARGB(255, 232, 241, 255),
    "color": Color.fromARGB(255, 65, 129, 232),
    "text": "Transferir dinero",
  },
};

const List<Map<String, String>> receiver = [
  {"banco": "BancoEstado"},
  {"tituloTitular": "Titular"},
  {"titular": "Elizabeth Cerda"},
  {"tituloCuenta": "Cuenta Vista - Número de cuenta"},
  {"cuenta": "13676575"},
];

const List<Map<String, dynamic>> error = [
  {"icono": Icons.error_outline},
  {"mensaje": "Lo sentimos, se ha producido un error."},
];

const List<Map<String, String>> home = [
  {"titulo": "Dinero disponible"},
  {"amount": "\$ 9.134"},
  {"subAmount": "⁰⁰"},
  {"aLiberar": "\$ 0 a liberar"},
  {"ganancia": "\$ 4.294 generados en total"},
  {"procentajeGanancia": "4.7%"},
];

const Map<String, Map<String, dynamic>> miniCard = {
  "shareMyData": {
    "icono": Icons.content_copy_outlined,
    "titulo": "Comparte tu cuenta para que te transfieran",
  },
  "indicators": {
    "icono": Icons.currency_bitcoin_outlined,
    "titulo": "Conoce los valores de las divisas hoy",
  },
  "crypto": {
    "icono": Icons.currency_bitcoin_outlined,
    "titulo": "Compra cripto desde \$1",
  },
  "ahorro": {
    "icono": Icons.savings_outlined,
    "titulo": "Empieza a ahorrar con Reservas",
  },
};

const List<Map<String, String>> indicadoresComerciales = [
  {"nombre": "Dólar", "valor": "\$ 935,20"},
  {"nombre": "Euro", "valor": "€ 1.015,45"},
  {"nombre": "UF", "valor": "36.412,07"},
  {"nombre": "UTM", "valor": "\$ 65.740"},
  {"nombre": "Bitcoin", "valor": "\$ 64.350"},
];

const String datosTransferencia = '''
Banco: Banco Estado
Titular: Iván Bustos
Cuenta: 141499564
Tipo: Cuenta Vista
Email: rockerrobot.tech@gmail.com
''';

const detalleSaldo = "De \$9.134 disponible";
const mensajeMantencion = "Disculpe las molestias. Estamos en mantención.";
const invite = "¡Recomienda la app y gana hasta \$500.000!";
const camino = "están en camino";
const ayuda = "Ayuda";
const tituloDescubreMas = "Descubre más";
const imagePromo = "assets/images/promo_meli.png";
const mensajeAcreditacion = "Se acreditarán el martes";
const fechaAcreditacion = "22 de abril";
const agregarCuenta = "Agregar otra cuenta";
const successText1 = "¡Listo! Los \$";
const successText2 = "están en camino";
const successDescription1 =
    "El dinero estará el martes 22 de abril en la cuenta del Banco Estado.\n";
const successDescription2 =
    "Cuando se acredite te lo confirmaremos por e-mail.";
const warningInversion = "Estás usando dinero que tenés invertido";
const tiempo = "02:35";
const mensajeDatosCopiados = "Datos copiados";
