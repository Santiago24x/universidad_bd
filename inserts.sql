

-- INSERT INTOS 
-- Inserciones en la tabla faculty
INSERT INTO faculty (id, name) VALUES (1, 'Facultad de Ciencias de la Computación');
INSERT INTO faculty (id, name) VALUES (2, 'Facultad de Ciencias Sociales');
INSERT INTO faculty (id, name) VALUES (3, 'Facultad de Humanidades');
INSERT INTO faculty (id, name) VALUES (4, 'Facultad de Ingeniería Civil');
INSERT INTO faculty (id, name) VALUES (5, 'Facultad de Ciencias Naturales');

-- Inserciones en la tabla department
INSERT INTO department (id, name, location, faculty_id) VALUES (1, 'Informática', 'Edificio A', 1);
INSERT INTO department (id, name, location, faculty_id) VALUES (2, 'Historia', 'Edificio B', 2);
INSERT INTO department (id, name, location, faculty_id) VALUES (3, 'Lengua y Literatura', 'Edificio C', 3);
INSERT INTO department (id, name, location, faculty_id) VALUES (4, 'Ingeniería Civil', 'Edificio D', 4);
INSERT INTO department (id, name, location, faculty_id) VALUES (5, 'Biología', 'Edificio E', 5);

-- Inserciones en la tabla stateCourse
INSERT INTO stateCourse (id, type) VALUES (1, 'Activo');
INSERT INTO stateCourse (id, type) VALUES (2, 'Inactivo');
INSERT INTO stateCourse (id, type) VALUES (3, 'En Revisión');
INSERT INTO stateCourse (id, type) VALUES (4, 'Suspendido');
INSERT INTO stateCourse (id, type) VALUES (5, 'Finalizado');

-- Inserciones en la tabla stateInscription
INSERT INTO stateInscription (id, type) VALUES (1, 'Pendiente');
INSERT INTO stateInscription (id, type) VALUES (2, 'Aprobada');
INSERT INTO stateInscription (id, type) VALUES (3, 'Rechazada');
INSERT INTO stateInscription (id, type) VALUES (4, 'En Espera');
INSERT INTO stateInscription (id, type) VALUES (5, 'Cancelada');

-- Inserciones en la tabla priority
INSERT INTO priority (id, type) VALUES (1, 'Institucional');
INSERT INTO priority (id, type) VALUES (2, 'Trabajo');
INSERT INTO priority (id, type) VALUES (3, 'Personal');

-- Inserciones en la tabla academicSessions
INSERT INTO academicSessions (id, semester, academicYear) VALUES (1, 1, 2023);
INSERT INTO academicSessions (id, semester, academicYear) VALUES (2, 2, 2023);
INSERT INTO academicSessions (id, semester, academicYear) VALUES (3, 1, 2024);
INSERT INTO academicSessions (id, semester, academicYear) VALUES (4, 2, 2024);
INSERT INTO academicSessions (id, semester, academicYear) VALUES (5, 1, 2025);

-- Inserciones en la tabla teachers
INSERT INTO teachers (id, name, lastName) VALUES (1, 'Juan', 'Pérez');
INSERT INTO teachers (id, name, lastName) VALUES (2, 'María', 'González');
INSERT INTO teachers (id, name, lastName) VALUES (3, 'Luis', 'Martínez');
INSERT INTO teachers (id, name, lastName) VALUES (4, 'Laura', 'Díaz');
INSERT INTO teachers (id, name, lastName) VALUES (5, 'Pedro', 'Sánchez');


-- Inserciones en la tabla teachersEmails
INSERT INTO teachersEmails (teachers_id, email, priority_id) VALUES (1, 'juan.perez@example.com', 1);
INSERT INTO teachersEmails (teachers_id, email, priority_id) VALUES (2, 'maria.gonzalez@example.com', 2);
INSERT INTO teachersEmails (teachers_id, email, priority_id) VALUES (3, 'luis.martinez@example.com', 3);
INSERT INTO teachersEmails (teachers_id, email, priority_id) VALUES (4, 'laura.diaz@example.com', 1);
INSERT INTO teachersEmails (teachers_id, email, priority_id) VALUES (5, 'pedro.sanchez@example.com', 2);

-- Inserciones en la tabla teachersPhones
INSERT INTO teachersPhones (teachers_id, phone, priority_id) VALUES (1, '+573123456789', 1);
INSERT INTO teachersPhones (teachers_id, phone, priority_id) VALUES (2, '+573987654321', 2);
INSERT INTO teachersPhones (teachers_id, phone, priority_id) VALUES (3, '+573113456789', 3);
INSERT INTO teachersPhones (teachers_id, phone, priority_id) VALUES (4, '+573908901234', 1);
INSERT INTO teachersPhones (teachers_id, phone, priority_id) VALUES (5, '+573706789012', 2);


-- Inserciones en la tabla students
INSERT INTO students (id, name, lastName) VALUES (1, 'Carlos', 'Gómez');
INSERT INTO students (id, name, lastName) VALUES (2, 'Laura', 'Hernández');
INSERT INTO students (id, name, lastName) VALUES (3, 'María', 'Martínez');
INSERT INTO students (id, name, lastName) VALUES (4, 'David', 'Pérez');
INSERT INTO students (id, name, lastName) VALUES (5, 'Sofía', 'García');


-- Inserciones en la tabla studentsEmails
INSERT INTO studentsEmails (email, student_id, priority_id) VALUES ('carlos.gomez@example.com', 1, 1);
INSERT INTO studentsEmails (email, student_id, priority_id) VALUES ('laura.hernandez@example.com', 2, 2);
INSERT INTO studentsEmails (email, student_id, priority_id) VALUES ('maria.martinez@example.com', 3, 3);
INSERT INTO studentsEmails (email, student_id, priority_id) VALUES ('david.perez@example.com', 4, 1);
INSERT INTO studentsEmails (email, student_id, priority_id) VALUES ('sofia.garcia@example.com', 5, 2);

-- Inserciones en la tabla studentsPhones
INSERT INTO studentsPhones (phone, student_id, priority_id) VALUES ('+573001234567', 1, 1);
INSERT INTO studentsPhones (phone, student_id, priority_id) VALUES ('+573102345678', 2, 2);
INSERT INTO studentsPhones (phone, student_id, priority_id) VALUES ('+573203456789', 3, 3);
INSERT INTO studentsPhones (phone, student_id, priority_id) VALUES ('+573504567890', 4, 1);
INSERT INTO studentsPhones (phone, student_id, priority_id) VALUES ('+573605678901', 5, 2);

-- Inserciones en la tabla course
INSERT INTO course (id, name, code, description, duration, department_id, teachers_id, stateCourse_id)
VALUES 
(1, 'Introducción a la Programación', 'PROG101', 'Curso introductorio a la programación.', '12 semanas', 1, 1, 1),
(2, 'Desarrollo Web Avanzado', 'WEB202', 'Curso avanzado de desarrollo web.', '16 semanas', 2, 2, 1),
(3, 'Bases de Datos Relacionales', 'DB101', 'Curso sobre bases de datos relacionales.', '10 semanas', 3, 3, 1),
(4, 'Inteligencia Artificial', 'AI301', 'Curso sobre técnicas de inteligencia artificial.', '14 semanas', 4, 4, 1),
(5, 'Programación Orientada a Objetos', 'OOP201', 'Curso sobre programación orientada a objetos.', '12 semanas', 1, 5, 1);

-- Inserciones en la tabla academicSessions_has_courses 
INSERT INTO academicSessions_has_courses (academicSession_id, course_id) 
VALUES 
(1, 1),
(1, 2),
(1, 3),
(2, 4),
(2, 5);

-- Inserciones en la tabla exam
INSERT INTO exam (student_id, id, grade, course_id) 
VALUES 
(1, 1, 85.5, 1),
(2, 2, 78.3, 2),
(3, 3, 92.0, 3),
(4, 4, 70.8, 4),
(5, 5, 89.2, 5);


-- Inserciones en la tabla inscription
INSERT INTO inscription (id, student_id, course_id, state_id) 
VALUES 
(1, 1, 1, 2),
(2, 2, 2, 2),
(3, 3, 3, 2),
(4, 4, 4, 2),
(5, 5, 5, 2);


-- Inserciones en la tabla assistance
INSERT INTO assistance (id, date, student_id, course_id) 
VALUES 
(1, '2023-11-15', 1, 1),
(2, '2023-11-16', 2, 2),
(3, '2023-11-17', 3, 3),
(4, '2023-11-18', 4, 4),
(5, '2023-11-19', 5, 5);

 





