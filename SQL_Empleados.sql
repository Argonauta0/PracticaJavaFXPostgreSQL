CREATE TABLE IF NOT EXISTS empleado (
     id SERIAL PRIMARY KEY,
	 nombres VARCHAR(80) NOT NULL,
	 apellidos VARCHAR(80) NOT NULL,
	 cedula VARCHAR(20) NOT NULL UNIQUE,
	 correo VARCHAR(100) UNIQUE,
	 telefono VARCHAR(20),
	 cargo VARCHAR(50) NOT NULL,
	 departamento VARCHAR(50) NOT NULL,
	 salario NUMERIC(10, 2) NOT NULL CHECK (salario >= 0),
	 fecha_contratacion DATE NOT NULL,
	 estado VARCHAR(20) NOT NULL DEFAULT 'Activo'
);

-- Insercion de 5 registro de pruebas.
INSERT INTO empleado (nombres, apellidos, cedula, correo, telefono, cargo, departamento, salario, fecha_contratacion, estado) VALUES
('Carlos Alberto', 'Gómez Ruiz', '001-120590-0001A', 'carlos.gomez@empresa.com', '88881111', 'Desarrollador Junior', 'Tecnología', 25000.00, '2023-01-15', 'Activo'),
('María Fernanda', 'López Vega', '001-230894-0002B', 'maria.lopez@empresa.com', '88882222', 'Contadora Senior', 'Contabilidad', 32000.00, '2021-06-01', 'Activo'),
('José Antonio', 'Martínez Silva', '001-051188-0003C', 'jose.martinez@empresa.com', '88883333', 'Analista de Sistemas', 'Tecnología', 28500.50, '2022-03-10', 'Inactivo'),
('Ana Patricia', 'Morales Paz', '001-190299-0004D', 'ana.morales@empresa.com', '88884444', 'Especialista de RRHH', 'Recursos Humanos', 22000.00, '2024-02-01', 'Activo'),
('Roberto Carlos', 'Hernández Ríos', '001-300792-0005E', 'roberto.h@empresa.com', '88885555', 'Gerente de Ventas', 'Ventas', 45000.00, '2019-11-20', 'Activo'),
