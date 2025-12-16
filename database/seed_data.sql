-- 1. Insertamos al Estudiante Estrella (Tú)
INSERT INTO estudiantes (
  cedula, nombre, apellido, correo, 
  carrera, curso, jornada, 
  promedio, deuda, matriculado, 
  asistencia_porc, horas_practicas
) VALUES (
  '1206950808', 'Samuel', 'Pinto', 'samuel@universidad.edu.ec',
  'Ingeniería de Sistemas', 'Octavo Semestre', 'Nocturna',
  9.5, 0.00, true, 
  98, 240
);

-- 2. Insertamos sus Notas (Para que salga la tabla llena en el PDF)
INSERT INTO notas_detalle (cedula_estudiante, materia, parcial_1, parcial_2, nota_final) VALUES 
('1206950808', 'Inteligencia Artificial', 9.5, 9.5, 9.50),
('1206950808', 'Arquitectura de Software', 10.0, 9.0, 9.50),
('1206950808', 'Gestión de Proyectos', 8.5, 9.0, 8.75),
('1206950808', 'Ética Profesional', 10.0, 10.0, 10.0);

-- 3. Insertamos un estudiante con deuda (Para probar el manejo de errores/bloqueos opcional)
INSERT INTO estudiantes (
  cedula, nombre, apellido, correo, 
  carrera, curso, jornada, 
  promedio, deuda, matriculado, 
  asistencia_porc, horas_practicas
) VALUES (
  '9999999999', 'Juan', 'Perez', 'juan@test.com',
  'Derecho', 'Primer Semestre', 'Matutina',
  7.0, 150.00, false, -- Tiene deuda y no está matriculado
  60, 0
);