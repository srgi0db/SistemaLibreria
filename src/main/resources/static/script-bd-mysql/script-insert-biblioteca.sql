/* USAR LA BASE DE DATOS CREADA */
USE `db_appbiblioteca` ;

INSERT INTO categorias (nombre, estado, eliminado) VALUES
('Programación', 'ACTIVO', FALSE),
('Base de datos', 'ACTIVO', FALSE),
('Arquitectura de software', 'ACTIVO', FALSE),
('Negocios', 'ACTIVO', FALSE),
('Literatura', 'ACTIVO', FALSE);

INSERT INTO libros (isbn, titulo, autor, editorial, categoria_id, precio_unitario, stock, url_imagen, estado, eliminado) VALUES
('9780132350884', 'Clean Code', 'Robert C. Martin', 'Prentice Hall', 1, 189.90, 15, 'https://example.com/clean-code.jpg', 'ACTIVO', FALSE),
('9780134494166', 'Clean Architecture', 'Robert C. Martin', 'Prentice Hall', 3, 199.90, 12, 'https://example.com/clean-architecture.jpg', 'ACTIVO', FALSE),
('9781617294945', 'Spring in Action', 'Craig Walls', 'Manning', 1, 179.50, 10, 'https://example.com/spring-in-action.jpg', 'ACTIVO', FALSE),
('9780321125217', 'Domain-Driven Design', 'Eric Evans', 'Addison-Wesley', 3, 220.00, 8, 'https://example.com/ddd.jpg', 'ACTIVO', FALSE),
('9780134685991', 'Effective Java', 'Joshua Bloch', 'Addison-Wesley', 1, 185.00, 11, 'https://example.com/effective-java.jpg', 'ACTIVO', FALSE),
('9781449373320', 'Designing Data-Intensive Applications', 'Martin Kleppmann', 'OReilly', 2, 210.00, 7, 'https://example.com/ddia.jpg', 'ACTIVO', FALSE),
('9780596009205', 'Head First Design Patterns', 'Eric Freeman', 'OReilly', 1, 165.00, 9, 'https://example.com/design-patterns.jpg', 'ACTIVO', FALSE),
('9781492078005', 'SQL Antipatterns', 'Bill Karwin', 'Pragmatic Bookshelf', 2, 145.00, 13, 'https://example.com/sql-antipatterns.jpg', 'ACTIVO', FALSE),
('9780307887894', 'The Lean Startup', 'Eric Ries', 'Crown Business', 4, 120.00, 18, 'https://example.com/lean-startup.jpg', 'ACTIVO', FALSE),
('9780307474278', 'Cien años de soledad', 'Gabriel García Márquez', 'Vintage Español', 5, 95.00, 20, 'https://example.com/cien-anos.jpg', 'ACTIVO', FALSE);

INSERT INTO clientes (nombres, apellidos, tipo_documento, numero_documento, email, telefono, saldo, estado, eliminado) VALUES
('Carlos', 'Ramírez', 'DNI', '70123456', 'carlos.ramirez@example.com', '987654321', 100.00,'ACTIVO', FALSE),
('María', 'Fernández', 'DNI', '70456789', 'maria.fernandez@example.com', '912345678', 200.00,'ACTIVO', FALSE);

-- El usuario administrador lo crea automáticamente el proyecto al iniciar:
-- email: admin@ventaslibros.com
-- password: Admin12345

SELECT * FROM usuarios;
SELECT * FROM categorias;
SELECT * FROM detalle_ventas;
SELECT * FROM libros;
SELECT * FROM clientes;
SELECT * FROM ventas;
SELECT * FROM movimientos_saldo;
