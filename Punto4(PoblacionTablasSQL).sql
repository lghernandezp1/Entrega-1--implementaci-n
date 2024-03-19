-- Población de la tabla 'usuario'
INSERT INTO usuario (login, palabraclave, rol, "documentoidentificacion(tipo)", documentoidentificacionnumero, nombre, nacionalidad, direccionfisica, direccionelectronica, telefono, ciudad, departamento, codigopostal) VALUES 
    ('juan.perez', 'clave123', 'Cliente', 'CC', 12345678, 'Juan Pérez', 'Argentina', 'Av. Principal 123', 'juan.perez@gmail.com', 123456789, 'Buenos Aires', 'Buenos Aires', 1234);
INSERT INTO usuario (login, palabraclave, rol, "documentoidentificacion(tipo)", documentoidentificacionnumero, nombre, nacionalidad, direccionfisica, direccionelectronica, telefono, ciudad, departamento, codigopostal) VALUES 
    ('maria.lopez', 'clave456', 'Cajero', 'CC', 23456789, 'María López', 'Colombia', 'Cra. 10 #45-67', 'maria.lopez@gmail.com', 987654321, 'Bogotá', 'Cundinamarca', 5678);
INSERT INTO usuario (login, palabraclave, rol, "documentoidentificacion(tipo)", documentoidentificacionnumero, nombre, nacionalidad, direccionfisica, direccionelectronica, telefono, ciudad, departamento, codigopostal) VALUES 
    ('carlos.gonzalez', 'clave789', 'Cliente', 'CC', 34567890, 'Carlos González', 'Perú', 'Jr. Lima 456', 'carlos.gonzalez@gmail.com', 987654321, 'Lima', 'Lima', 56789);
INSERT INTO usuario (login, palabraclave, rol, "documentoidentificacion(tipo)", documentoidentificacionnumero, nombre, nacionalidad, direccionfisica, direccionelectronica, telefono, ciudad, departamento, codigopostal) VALUES 
    ('laura.martinez', 'clave012', 'Cajero', 'CC', 45678901, 'Laura Martínez', 'México', 'Calle Reforma 123', 'laura.martinez@gmail.com', 123456789, 'Ciudad de México', 'Distrito Federal', 67890);
INSERT INTO usuario (login, palabraclave, rol, "documentoidentificacion(tipo)", documentoidentificacionnumero, nombre, nacionalidad, direccionfisica, direccionelectronica, telefono, ciudad, departamento, codigopostal) VALUES 
    ('ana.gomez', 'clave246', 'Cliente', 'CC', 90123456, 'Ana Gómez', 'España', 'Calle Mayor 789', 'ana.gomez@gmail.com', 987654321, 'Barcelona', 'Cataluña', 4567);
INSERT INTO usuario (login, palabraclave, rol, "documentoidentificacion(tipo)", documentoidentificacionnumero, nombre, nacionalidad, direccionfisica, direccionelectronica, telefono, ciudad, departamento, codigopostal) VALUES 
    ('david.fernandez', 'clave357', 'Cliente', 'CC', 12345678, 'David Fernández', 'México', 'Calle Revolución 123', 'david.fernandez@gmail.com', 654321987, 'Ciudad de México', 'Distrito Federal', 3456);
INSERT INTO usuario (login, palabraclave, rol, "documentoidentificacion(tipo)", documentoidentificacionnumero, nombre, nacionalidad, direccionfisica, direccionelectronica, telefono, ciudad, departamento, codigopostal) VALUES 
    ('laura.sanchez', 'clave468', 'Cliente', 'CC', 23456789, 'Laura Sánchez', 'Colombia', 'Cra. 20 #30-40', 'laura.sanchez@gmail.com', 123789456, 'Medellín', 'Antioquia', 2345);
INSERT INTO usuario (login, palabraclave, rol, "documentoidentificacion(tipo)", documentoidentificacionnumero, nombre, nacionalidad, direccionfisica, direccionelectronica, telefono, ciudad, departamento, codigopostal) VALUES 
    ('sergio.lopez', 'clave579', 'Cajero', 'CC', 34567890, 'Sergio López', 'Argentina', 'Av. Rivadavia 1234', 'sergio.lopez@gmail.com', 456987321, 'Buenos Aires', 'Buenos Aires', 5678);
INSERT INTO usuario (login, palabraclave, rol, "documentoidentificacion(tipo)", documentoidentificacionnumero, nombre, nacionalidad, direccionfisica, direccionelectronica, telefono, ciudad, departamento, codigopostal) VALUES 
    ('carolina.hernandez', 'clave123', 'Cliente', 'CC', 78901234, 'Carolina Hernández', 'Colombia', 'Cra. 15 #25-35', 'carolina.hernandez@gmail.com', 987654321, 'Medellín', 'Antioquia', 1234);
INSERT INTO usuario (login, palabraclave, rol, "documentoidentificacion(tipo)", documentoidentificacionnumero, nombre, nacionalidad, direccionfisica, direccionelectronica, telefono, ciudad, departamento, codigopostal) VALUES 
    ('pedro.rodriguez', 'clave456', 'Cliente', 'CC', 89012345, 'Pedro Rodríguez', 'México', 'Calle 30 #40-50', 'pedro.rodriguez@gmail.com', 654987321, 'Ciudad de México', 'Distrito Federal', 2345);
INSERT INTO usuario (login, palabraclave, rol, "documentoidentificacion(tipo)", documentoidentificacionnumero, nombre, nacionalidad, direccionfisica, direccionelectronica, telefono, ciudad, departamento, codigopostal) VALUES 
    ('ana.martinez', 'clave789', 'Cliente', 'CC', 90123456, 'Ana Martínez', 'Argentina', 'Av. San Martín 567', 'ana.martinez@gmail.com', 123456789, 'Buenos Aires', 'Buenos Aires', 3456);

-- Población de la tabla 'cliente'
INSERT INTO cliente (documentoidentificacionnumero, tipocliente) VALUES
    (12345678, 'Natural');
INSERT INTO cliente (documentoidentificacionnumero, tipocliente) VALUES
    (23456789, 'Natural');
INSERT INTO cliente (documentoidentificacionnumero, tipocliente) VALUES
    (34567890, 'Natural');
INSERT INTO cliente (documentoidentificacionnumero, tipocliente) VALUES
    (45678901, 'Natural');
INSERT INTO cliente (documentoidentificacionnumero, tipocliente) VALUES
    (90123456, 'Natural');
INSERT INTO cliente (documentoidentificacionnumero, tipocliente) VALUES
    (12345678, 'Natural');
INSERT INTO cliente (documentoidentificacionnumero, tipocliente) VALUES
    (23456789, 'Natural');
INSERT INTO cliente (documentoidentificacionnumero, tipocliente) VALUES
    (34567890, 'Natural');
INSERT INTO cliente (documentoidentificacionnumero, tipocliente) VALUES
    (78901234, 'Natural');
INSERT INTO cliente (documentoidentificacionnumero, tipocliente) VALUES
    (89012345, 'Natural');
INSERT INTO cliente (documentoidentificacionnumero, tipocliente) VALUES
    (90123456, 'Natural');

-- Población de la tabla 'empleado'
INSERT INTO empleado (rol, idempleado, documentoidentificacionnumero) VALUES
    ('Gerente de Oficina', 'EMPLEADO1', 12345678);
INSERT INTO empleado (rol, idempleado, documentoidentificacionnumero) VALUES
    ('Gerente General', 'EMPLEADO2', 23456789);
INSERT INTO empleado (rol, idempleado, documentoidentificacionnumero) VALUES
    ('Cajero', 'EMPLEADO3', 34567890);
INSERT INTO empleado (rol, idempleado, documentoidentificacionnumero) VALUES
    ('Analista Financiero', 'EMPLEADO4', 45678901);
INSERT INTO empleado (rol, idempleado, documentoidentificacionnumero) VALUES
    ('Asesor Financiero', 'EMPLEADO7', 90123456);
INSERT INTO empleado (rol, idempleado, documentoidentificacionnumero) VALUES
    ('Analista de Crédito', 'EMPLEADO8', 12345678);
INSERT INTO empleado (rol, idempleado, documentoidentificacionnumero) VALUES
    ('Cajero', 'EMPLEADO9', 23456789);
INSERT INTO empleado (rol, idempleado, documentoidentificacionnumero) VALUES
    ('Especialista en Inversiones', 'EMPLEADO10', 34567890);
INSERT INTO empleado (rol, idempleado, documentoidentificacionnumero) VALUES
    ('Ejecutivo de Cuentas', 'EMPLEADO11', 78901234);
INSERT INTO empleado (rol, idempleado, documentoidentificacionnumero) VALUES
    ('Analista de Riesgos', 'EMPLEADO12', 89012345);
INSERT INTO empleado (rol, idempleado, documentoidentificacionnumero) VALUES
    ('Asesor Financiero', 'EMPLEADO13', 90123456);

-- Población de la tabla 'cuenta'
INSERT INTO cuenta (numerocuenta, tipo, saldo, fechaultimatransaccion, estado, documentoidentificacionnumero) VALUES
    (1001, 'Corriente', 5000, CURRENT_TIMESTAMP, 'Activa', 12345678);
INSERT INTO cuenta (numerocuenta, tipo, saldo, fechaultimatransaccion, estado, documentoidentificacionnumero) VALUES
    (1002, 'Ahorros', 10000, CURRENT_TIMESTAMP, 'Activa', 23456789);
INSERT INTO cuenta (numerocuenta, tipo, saldo, fechaultimatransaccion, estado, documentoidentificacionnumero) VALUES
    (1003, 'Corriente', 8000, CURRENT_TIMESTAMP, 'Activa', 34567890);
INSERT INTO cuenta (numerocuenta, tipo, saldo, fechaultimatransaccion, estado, documentoidentificacionnumero) VALUES
    (1004, 'Ahorros', 15000, CURRENT_TIMESTAMP, 'Activa', 45678901);
INSERT INTO cuenta (numerocuenta, tipo, saldo, fechaultimatransaccion, estado, documentoidentificacionnumero) VALUES
    (1007, 'Corriente', 7000, CURRENT_TIMESTAMP, 'Activa', 90123456);
INSERT INTO cuenta (numerocuenta, tipo, saldo, fechaultimatransaccion, estado, documentoidentificacionnumero) VALUES
    (1008, 'Ahorros', 20000, CURRENT_TIMESTAMP, 'Activa', 12345678);
INSERT INTO cuenta (numerocuenta, tipo, saldo, fechaultimatransaccion, estado, documentoidentificacionnumero) VALUES
    (1009, 'Corriente', 6000, CURRENT_TIMESTAMP, 'Activa', 23456789);
INSERT INTO cuenta (numerocuenta, tipo, saldo, fechaultimatransaccion, estado, documentoidentificacionnumero) VALUES
    (1010, 'Ahorros', 18000, CURRENT_TIMESTAMP, 'Activa', 34567890);
INSERT INTO cuenta (numerocuenta, tipo, saldo, fechaultimatransaccion, estado, documentoidentificacionnumero) VALUES
    (1011, 'Corriente', 5000, CURRENT_TIMESTAMP, 'Activa', 78901234);
INSERT INTO cuenta (numerocuenta, tipo, saldo, fechaultimatransaccion, estado, documentoidentificacionnumero) VALUES
    (1012, 'Ahorros', 15000, CURRENT_TIMESTAMP, 'Activa', 89012345);
INSERT INTO cuenta (numerocuenta, tipo, saldo, fechaultimatransaccion, estado, documentoidentificacionnumero) VALUES
    (1013, 'Corriente', 4000, CURRENT_TIMESTAMP, 'Activa', 90123456);

-- Población de la tabla 'oficina'
INSERT INTO oficina (nombre, direccion, numpuestosatencion) VALUES
    ('Oficina Principal', 'Av. Principal 123', 5);
INSERT INTO oficina (nombre, direccion, numpuestosatencion) VALUES
    ('Oficina Central', 'Cra. 10 #45-67', 3);
INSERT INTO oficina (nombre, direccion, numpuestosatencion) VALUES
    ('Sucursal Norte', 'Av. Amazonas 789', 4);
INSERT INTO oficina (nombre, direccion, numpuestosatencion) VALUES
    ('Sucursal Sur', 'Av. del Sol 234', 2);
INSERT INTO oficina (nombre, direccion, numpuestosatencion) VALUES
    ('Sucursal Norte', 'Av. del Sol 123', 3);
INSERT INTO oficina (nombre, direccion, numpuestosatencion) VALUES
    ('Sucursal Sur', 'Calle Mayor 789', 4);
INSERT INTO oficina (nombre, direccion, numpuestosatencion) VALUES
    ('Sucursal Norte', 'Av. Bolívar 123', 3);
INSERT INTO oficina (nombre, direccion, numpuestosatencion) VALUES
    ('Sucursal Sur', 'Calle 50 #60-70', 4);

-- Población de la tabla 'puntosatencion'
INSERT INTO puntosatencion (tipo, localizacion) VALUES
    ('Punto Atencion Personalizada', 'Av. Principal 123');
INSERT INTO puntosatencion (tipo, localizacion) VALUES
    ('Cajero Automatico', 'Cra. 10 #45-67');
INSERT INTO puntosatencion (tipo, localizacion) VALUES
    ('Punto Atencion Personalizada', 'Av. Amazonas 789');
INSERT INTO puntosatencion (tipo, localizacion) VALUES
    ('Cajero Automatico', 'Av. del Sol 234');
INSERT INTO puntosatencion (tipo, localizacion) VALUES
    ('Punto Atencion Personalizada', 'Av. del Sol 123');
INSERT INTO puntosatencion (tipo, localizacion) VALUES
    ('Cajero Automatico', 'Calle Mayor 789');
INSERT INTO puntosatencion (tipo, localizacion) VALUES
    ('Punto Atencion Personalizada', 'Av. Bolívar 123');
INSERT INTO puntosatencion (tipo, localizacion) VALUES
    ('Cajero Automatico', 'Calle 50 #60-70');

-- Población de la tabla 'prestamo'
INSERT INTO prestamo (idprestamo, tipoprestamo, estado, monto, intereses, mespago, valorcuota, documentoidentificacionnumero) VALUES
    ('P1001', 'Hipotecario', 'Aprobado', 200000, 15000, 'Enero', 5000, 12345678);
INSERT INTO prestamo (idprestamo, tipoprestamo, estado, monto, intereses, mespago, valorcuota, documentoidentificacionnumero) VALUES
    ('P1002', 'Personal', 'Solicitado', 50000, 5000, 'Febrero', 2500, 23456789);
INSERT INTO prestamo (idprestamo, tipoprestamo, estado, monto, intereses, mespago, valorcuota, documentoidentificacionnumero) VALUES
    ('P1003', 'Automotriz', 'Aprobado', 150000, 12000, 'Marzo', 4000, 34567890);
INSERT INTO prestamo (idprestamo, tipoprestamo, estado, monto, intereses, mespago, valorcuota, documentoidentificacionnumero) VALUES
    ('P1004', 'Educativo', 'Solicitado', 70000, 6000, 'Abril', 3000, 45678901);
INSERT INTO prestamo (idprestamo, tipoprestamo, estado, monto, intereses, mespago, valorcuota, documentoidentificacionnumero) VALUES
    ('P1007', 'Hipotecario', 'Aprobado', 300000, 20000, 'Julio', 8000, 90123456);
INSERT INTO prestamo (idprestamo, tipoprestamo, estado, monto, intereses, mespago, valorcuota, documentoidentificacionnumero) VALUES
    ('P1008', 'Personal', 'Solicitado', 100000, 9000, 'Agosto', 5000, 12345678);
INSERT INTO prestamo (idprestamo, tipoprestamo, estado, monto, intereses, mespago, valorcuota, documentoidentificacionnumero) VALUES
    ('P1009', 'Educativo', 'Aprobado', 50000, 4000, 'Septiembre', 3000, 23456789);
INSERT INTO prestamo (idprestamo, tipoprestamo, estado, monto, intereses, mespago, valorcuota, documentoidentificacionnumero) VALUES
    ('P1010', 'Automotriz', 'Solicitado', 120000, 10000, 'Octubre', 6000, 34567890);
INSERT INTO prestamo (idprestamo, tipoprestamo, estado, monto, intereses, mespago, valorcuota, documentoidentificacionnumero) VALUES
    ('P1011', 'Hipotecario', 'Aprobado', 200000, 15000, 'Noviembre', 5000, 78901234);
INSERT INTO prestamo (idprestamo, tipoprestamo, estado, monto, intereses, mespago, valorcuota, documentoidentificacionnumero) VALUES
    ('P1012', 'Personal', 'Solicitado', 50000, 5000, 'Diciembre', 2500, 89012345);
INSERT INTO prestamo (idprestamo, tipoprestamo, estado, monto, intereses, mespago, valorcuota, documentoidentificacionnumero) VALUES
    ('P1013', 'Hipotecario', 'Solicitado', 300000, 20000, 'Enero', 10000, 90123456);


////////////////////////////////////////////////////
