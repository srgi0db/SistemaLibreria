-- Patch mínimo para mejorar historial de recargas y movimientos de saldo.
-- Ejecutar solo si spring.jpa.hibernate.ddl-auto=update no actualiza automáticamente la tabla.

ALTER TABLE movimientos_saldo
    ADD COLUMN codigo_operacion VARCHAR(40) NULL;

ALTER TABLE movimientos_saldo
    ADD COLUMN referencia VARCHAR(150) NULL;

CREATE INDEX idx_movimientos_saldo_cliente_fecha
    ON movimientos_saldo (cliente_id, fecha);

CREATE INDEX idx_movimientos_saldo_cliente_tipo_fecha
    ON movimientos_saldo (cliente_id, tipo, fecha);
