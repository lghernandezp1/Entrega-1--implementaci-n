DROP TABLE usuario;
DROP TABLE cliente;
DROP TABLE empleado;
DROP TABLE cuenta;
DROP TABLE operacion;
DROP TABLE operacionprestamo;
DROP TABLE operacioncuenta;
DROP TABLE oficina;
DROP TABLE puntoatencion;
DROP TABLE prestamo;
-- Se recomienda correr el codigo por bloques para evitar problemas. Primero correr el bloque de crear tablas. Luego correr el bloque de los alters. Por ultimo correr cada RF por separado,
-- ya que algunos de las pruebas dan errores para confirmar que son detectamos correctamente.

------------------------------------------------------
// CREAR TABLAS
CREATE TABLE usuario (
    login                               VARCHAR(20) NOT NULL UNIQUE,
    palabraclave                        VARCHAR(20) NOT NULL, 
    rol                                 VARCHAR(20) NOT NULL,
    documentoidentificaciontipo         VARCHAR(30) NOT NULL,
    documentoidentificacionnumero       NUMBER,
    nombre                              VARCHAR(40) NOT NULL ,
    nacionalidad                        VARCHAR(30) NOT NULL,
    direccionfisica                     VARCHAR(50) NOT NULL,
    direccionelectronica                VARCHAR(40) NOT NULL,
    telefono                            NUMBER NOT NULL,
    ciudad                              VARCHAR(20) NOT NULL,
    departamento                        VARCHAR(20) NOT NULL,
    codigopostal                        NUMBER NOT NULL
);

CREATE TABLE cliente (
    id                                  NUMBER PRIMARY KEY,
    tipocliente                         VARCHAR(10)
);

CREATE TABLE empleado (
    rol                                 VARCHAR(20) NOT NULL,
    idempleado                          VARCHAR(20) NOT NULL,
    documentoidentificacionnumero       NUMBER PRIMARY KEY,
    direccion                           VARCHAR(50)
);

CREATE TABLE cuenta (
    numerocuenta                        NUMBER,
    tipo                                VARCHAR(20) NOT NULL,
    saldo                               NUMBER NOT NULL,
    fechaultimatransaccion              TIMESTAMP NOT NULL,
    estado                              VARCHAR(20) NOT NULL,
    documentoidentificacionnumero       NUMBER
);

CREATE TABLE operacion(
    id                                  NUMBER,
    tipooperacion                       VARCHAR(20) NOT NULL,
    fecha                               DATE NOT NULL,
    hora                                TIMESTAMP NOT NULL,
    valor                               NUMBER NOT NULL,
    direccion                           VARCHAR(50),
    localizacion                        VARCHAR(50)
);

CREATE TABLE operacionprestamo(
    id                                  NUMBER,
    numeroprestamo                      VARCHAR(30) NOT NULL,
    idprestamo                          VARCHAR(30),
    tipoprestamo                        VARCHAR(30)
);

CREATE TABLE operacioncuenta(
    id                                  NUMBER PRIMARY KEY,
    tipopago                            VARCHAR(15) NOT NULL,
    numerocuentaafectada                VARCHAR(20) NOT NULL,
    numerocuenta                        NUMBER
);

CREATE TABLE oficina(
    nombre                              VARCHAR(50) NOT NULL,
    direccion                           VARCHAR(50) ,
    numpuestosatencion                  NUMBER NOT NULL
);
ALTER TABLE oficina ADD CONSTRAINT oficinapk PRIMARY KEY ( direccion );

CREATE TABLE puntoatencion(
    tipo                                VARCHAR(40),
    localizacion                        VARCHAR(50) PRIMARY KEY,
    direccion                           VARCHAR(50)
);

CREATE TABLE prestamo(
    idprestamo                          VARCHAR(30),
    tipoprestamo                        VARCHAR(30),
    estado                              VARCHAR(20) NOT NULL,
    monto                               NUMBER NOT NULL,
    intereses                           NUMBER NOT NULL,
    mespago                             VARCHAR(20) NOT NULL,
    valorcuota                          NUMBER NOT NULL UNIQUE,
    id                                  NUMBER
);






---------------------------------
// ALTERS

ALTER TABLE usuario ADD CONSTRAINT usuariopk PRIMARY KEY ( documentoidentificacionnumero );
ALTER TABLE usuario ADD CONSTRAINT ckrolusuario CHECK (rol IN ('Cliente', 'Cajero', 'Gerente de Oficina', 'Gerente General', 'Administrador'));

ALTER TABLE cliente ADD CONSTRAINT fkusuariocliente FOREIGN KEY (id) REFERENCES usuario (documentoidentificacionnumero);
ALTER TABLE cliente ADD CONSTRAINT cktipocliente CHECK (tipocliente IN ('Natural', 'Juridico'));

ALTER TABLE empleado ADD CONSTRAINT fkempleadocliente FOREIGN KEY (documentoidentificacionnumero) REFERENCES usuario (documentoidentificacionnumero);
ALTER TABLE empleado ADD CONSTRAINT ckrolempleado CHECK (rol IN ('Gerente de Oficina', 'Gerente General', 'Administrador', 'Cajero'));
ALTER TABLE empleado ADD CONSTRAINT fkempleadooficina FOREIGN KEY (direccion) REFERENCES oficina (direccion);

ALTER TABLE cuenta ADD CONSTRAINT cuentapk PRIMARY KEY ( numerocuenta );
ALTER TABLE cuenta ADD CONSTRAINT ckestadocuenta CHECK (estado IN ('Activa', 'Cerrada', 'Desactivada'));
ALTER TABLE cuenta ADD CONSTRAINT fkcuentacliente FOREIGN KEY (documentoidentificacionnumero) REFERENCES cliente (id);

ALTER TABLE operacion ADD CONSTRAINT operacionpk PRIMARY KEY ( id );
ALTER TABLE operacion ADD CONSTRAINT cktipooperacionoperacion CHECK (tipooperacion IN ('Abrir', 'Cerrar', 'Consignar', 'Retirar', 'Transferir'));
ALTER TABLE operacion ADD CONSTRAINT fkoperacionpuntoatencionl FOREIGN KEY (localizacion) REFERENCES puntoatencion (localizacion);
ALTER TABLE operacion ADD CONSTRAINT fkoperacionpuntoatenciond FOREIGN KEY (direccion) REFERENCES oficina (direccion);

ALTER TABLE prestamo ADD CONSTRAINT prestamopkid PRIMARY KEY ( idprestamo, tipoprestamo );
ALTER TABLE prestamo ADD CONSTRAINT ckestado CHECK (estado IN ('Solicitado', 'Aprobado', 'Rechazado', 'Pagado'));
ALTER TABLE prestamo ADD CONSTRAINT fkprestamoclientes FOREIGN KEY (id) REFERENCES cliente (id);

ALTER TABLE operacionprestamo ADD CONSTRAINT operacionprestamopk PRIMARY KEY ( id );
ALTER TABLE operacionprestamo ADD CONSTRAINT fkoperacionprestamoprestamoid FOREIGN KEY (idprestamo, tipoprestamo) REFERENCES prestamo (idprestamo, tipoprestamo);

ALTER TABLE operacioncuenta ADD CONSTRAINT fkoperacioncuenta FOREIGN KEY (id) REFERENCES operacion (id);
ALTER TABLE operacioncuenta ADD CONSTRAINT cktipopago CHECK (tipopago IN ('Consignar', 'Transferir'));
ALTER TABLE operacioncuenta ADD CONSTRAINT fkoperacioncuentacuenta FOREIGN KEY (numerocuenta) REFERENCES cuenta (numerocuenta);

ALTER TABLE puntoatencion ADD CONSTRAINT cktipopuntoatencion CHECK (tipo IN ('Punto Atencion Personalizada', 'Cajero Automatico'));
ALTER TABLE puntoatencion ADD CONSTRAINT fkpuntoatencionoficina FOREIGN KEY (direccion) REFERENCES oficina (direccion);

------------------------------------
// RF

-- RF1 - CREAR USUARIO
INSERT INTO usuario (login, palabraclave, rol, documentoidentificaciontipo, documentoidentificacionnumero, nombre, nacionalidad, direccionfisica, direccionelectronica, telefono, ciudad, departamento, codigopostal)
VALUES ('admin', 'claveAdmin', 'Administrador', 'Cédula de Ciudadanía', 1234567890, 'Jorge Cardenas', 'Colombiana', 'Calle 123', 'jorge@bancandes.com', 3102456789, 'Bogotá', 'Cundinamarca', 12345);

INSERT INTO usuario (login, palabraclave, rol, documentoidentificaciontipo, documentoidentificacionnumero, nombre, nacionalidad, direccionfisica, direccionelectronica, telefono, ciudad, departamento, codigopostal)
VALUES ('admin', 'clave123', 'Cajero', 'Cédula de Ciudadanía', 9876543210, 'Andres Jimenez', 'Colombiana', 'Calle 123', 'jorge@bancandes.com', 3109876542, 'Bogotá', 'Cundinamarca', 12346);

INSERT INTO usuario (login, palabraclave, rol, documentoidentificaciontipo, documentoidentificacionnumero, nombre, nacionalidad, direccionfisica, direccionelectronica, telefono, ciudad, departamento, codigopostal)
VALUES (123, 'claveAdmin', 'Administrador', 'Cédula de Ciudadanía', 1234567890, 'Jorge Cardenas', 'Colombiana', 'Calle 123', 'jorge@bancandes.com', 3102456789, 'Bogotá', 'Cundinamarca', 12345);

SELECT * FROM usuario;
-- RF2 - CREAR OFICINA
INSERT INTO oficina (nombre, direccion, numpuestosatencion)
VALUES ('Oficina Central', 'Calle Central', 5);

INSERT INTO oficina (nombre, direccion, numpuestosatencion)
VALUES ('Oficina Central', 'Calle Central', 5);

INSERT INTO oficina (nombre, direccion, numpuestosatencion)
VALUES (123, 'Calle Central', 5);

SELECT * FROM oficina;
-- RF3 - CREAR Y BORRAR PUNTO DE ATENCIÓN
INSERT INTO puntoatencion (tipo, localizacion, direccion)
VALUES ('Punto Atencion Personalizada', 'Localización 1', 'Calle Central');

INSERT INTO puntoatencion (tipo, localizacion, direccion)
VALUES ('Punto Atencion Personalizada', 'Localización 1', 'Calle Atención 1');

INSERT INTO puntoatencion (tipo, localizacion, direccion)
VALUES ('Punto Atencion Personalizada', 'Localización 1', 'Calle Central');

INSERT INTO puntoatencion (tipo, localizacion, direccion)
VALUES (123, 'Localización 1', 'Calle Central');

SELECT * FROM puntoatencion;

DELETE FROM puntoatencion WHERE localizacion = 'Localización 1';
-- RF4 - CREAR CUENTA
INSERT INTO cliente (id, tipocliente)
VALUES (1234567890,'Natural');

INSERT INTO cuenta (numerocuenta, tipo, saldo, fechaultimatransaccion, estado, documentoidentificacionnumero)
VALUES (123, 'Corriente', 250000, CURRENT_TIMESTAMP, 'Activa', 1234567890);

INSERT INTO cuenta (numerocuenta, tipo, saldo, fechaultimatransaccion, estado, documentoidentificacionnumero)
VALUES (123, 'Corriente', 250000, CURRENT_TIMESTAMP, 'Activa', 1234567890);

INSERT INTO cuenta (numerocuenta, tipo, saldo, fechaultimatransaccion, estado, documentoidentificacionnumero)
VALUES ('123', 'Corriente', 250000, CURRENT_TIMESTAMP, 'Activa', 1234567890);

INSERT INTO cuenta (numerocuenta, tipo, saldo, fechaultimatransaccion, estado, documentoidentificacionnumero)
VALUES (123, 'Corriente', 250000, CURRENT_TIMESTAMP, 'Activa', 12345678);

SELECT * FROM cliente;
SELECT * FROM cuenta;
-- RF5 - CAMBIAR ESTADO DE CUENTA A CERRADA O DESACTIVADA
UPDATE cuenta SET estado = 'Cerrada' WHERE numerocuenta = 123;

SELECT * FROM cuenta;
-- RF6 - REGISTRAR OPERACIÓN SOBRE CUENTA
UPDATE cuenta SET estado = 'Activa' WHERE numerocuenta = 123;

INSERT INTO usuario (login, palabraclave, rol, documentoidentificaciontipo, documentoidentificacionnumero, nombre, nacionalidad, direccionfisica, direccionelectronica, telefono, ciudad, departamento, codigopostal)
VALUES ('maria.lopez', 'clave456', 'Cajero', 'CC', 23456789, 'María López', 'Colombia', 'Cra. 10 #45-67', 'maria.lopez@gmail.com', 987654321, 'Bogotá', 'Cundinamarca', 5678);

INSERT INTO cliente (id, tipocliente)
VALUES (23456789,'Natural');

INSERT INTO cuenta (numerocuenta, tipo, saldo, fechaultimatransaccion, estado, documentoidentificacionnumero)
VALUES (456, 'Corriente', 250000, CURRENT_TIMESTAMP, 'Activa', 23456789);

INSERT INTO puntoatencion (tipo, localizacion, direccion)
VALUES ('Punto Atencion Personalizada', 'Localización 1', 'Calle Central');

INSERT INTO operacion (id, tipooperacion, fecha, hora, valor, direccion, localizacion)
VALUES (1, 'Consignar', CURRENT_DATE ,CURRENT_TIMESTAMP, 100000, 'Calle Central', 'Localización 1');

INSERT INTO operacioncuenta (id, tipopago, numerocuentaafectada, numerocuenta)
VALUES (1, 'Consignar', 456, 123);

INSERT INTO operacioncuenta (id, tipopago, numerocuentaafectada, numerocuenta)
VALUES (1, 'Consignar', 456, 123);

INSERT INTO operacioncuenta (id, tipopago, numerocuentaafectada, numerocuenta)
VALUES ('1', 'Consignar', 456, 123);

INSERT INTO operacioncuenta (id, tipopago, numerocuentaafectada, numerocuenta)
VALUES (1, 'Consignar', 456, 789);

SELECT * FROM operacioncuenta;
-- RF7 - CREAR PRÉSTAMO
INSERT INTO prestamo (idprestamo, tipoprestamo, estado, monto, intereses, mespago, valorcuota, id)
VALUES ('P1001', 'Hipotecario', 'Aprobado', 200000, 15000, 'Enero', 5000, 1234567890);

INSERT INTO prestamo (idprestamo, tipoprestamo, estado, monto, intereses, mespago, valorcuota, id)
VALUES ('P1001', 'Hipotecario', 'Aprobado', 200000, 15000, 'Enero', 5000, 1234567890);

INSERT INTO prestamo (idprestamo, tipoprestamo, estado, monto, intereses, mespago, valorcuota, id)
VALUES (1001, 'Hipotecario', 'Aprobado', 200000, 15000, 'Enero', 5000, 1234567890);

SELECT * FROM prestamo;
-- RF8 - REGISTRO DE OPERACIÓN SOBRE PRÉSTAMO
INSERT INTO operacionprestamo (id, numeroprestamo, idprestamo, tipoprestamo)
VALUES (2, 'P1', 'P1001', 'Hipotecario');

INSERT INTO operacionprestamo (id, numeroprestamo, idprestamo, tipoprestamo)
VALUES (2, 'P1', 'P1001', 'Hipotecario');

INSERT INTO operacionprestamo (id, numeroprestamo, idprestamo, tipoprestamo)
VALUES (2, 1, 'P1001', 'Hipotecario');

INSERT INTO operacionprestamo (id, numeroprestamo, idprestamo, tipoprestamo)
VALUES (2, 'P1', 'P1002', 'Hipotecario');

SELECT * FROM operacionprestamo;
-- RF9 - ACTUALIZAR PRÉSTAMO A CERRADO
UPDATE prestamo SET estado = 'Pagado' WHERE idprestamo = 'P1001';

SELECT * FROM prestamo;