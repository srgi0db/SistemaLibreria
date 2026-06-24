-- Patch puntual para recargas de saldo e historial.
-- Ejecuta estas sentencias si Hibernate ddl-auto=update no crea las columnas automáticamente.
-- Si alguna columna ya existe, omite esa sentencia.

ALTER TABLE movimientos_saldo
    ADD COLUMN codigo_operacion VARCHAR(40) NULL;

ALTER TABLE movimientos_saldo
    ADD COLUMN referencia VARCHAR(80) NULL;

CREATE INDEX idx_movimientos_saldo_cliente_tipo_fecha
    ON movimientos_saldo (cliente_id, tipo, fecha);
