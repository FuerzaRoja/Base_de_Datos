
SELECT libros.titulo AS Titulo, 
	   autores.nombre_autor AS Autor, 
       libros.isbn AS ISBN, 
       libros.editorial AS Editorial
FROM ((autor_libro
INNER JOIN autores ON autor_libro.id_autor = autores.id_autor)
INNER JOIN libros ON autor_libro.isbn = libros.isbn);

SELECT libros.titulo AS Titulo, 
	   autores.nombre_autor AS Autor, 
       libros.isbn AS ISBN, 
       libros.editorial AS Editorial
FROM autor_libro INNER JOIN (autores, libros) 
				 ON (autor_libro.id_autor = autores.id_autor AND autor_libro.isbn = libros.isbn);

SELECT libros.titulo AS Titulo, 
       autores.nombre_autor AS Autor, 
       libros.isbn AS ISBN, 
       libros.editorial AS Editorial
  FROM autores,
       autor_libro,
       libros
 WHERE 1=1
   AND autores.id_autor = autor_libro.id_autor
   AND libros.isbn = autor_libro.isbn


SELECT A.Titulo,
       A.Autor,
       A.ISBN,
       A.Editorial
FROM (
SELECT libros.titulo AS Titulo, 
       autores.nombre_autor AS Autor, 
       libros.isbn AS ISBN, 
       libros.editorial AS Editorial
  FROM autores,
       autor_libro,
       libros
 WHERE 1=1
   AND autores.id_autor = autor_libro.id_autor
   AND libros.isbn = autor_libro.isbn ) A


SELECT personas.nombre AS Nombre,
       personas.apellido_paterno AS Apellido,
       personas.codigo_socio AS Codigo_Socio,
       libros.titulo AS Titulo
  FROM personas,
       prestamos,
       ejemplar,
       libros
 WHERE 1=1
   AND personas.dni = prestamos.dni
   AND prestamos.id_ejemplar = ejemplar.id_ejemplar
   AND ejemplar.isbn = libros.isbn

SELECT personas.nombre AS Nombre,
       personas.apellido_paterno AS Apellido,
       personas.codigo_socio AS Codigo_Socio,
       libros.titulo AS Titulo
  FROM personas INNER JOIN prestamos ON personas.dni = prestamos.dni
                INNER JOIN ejemplar ON prestamos.id_ejemplar = ejemplar.id_ejemplar
                INNER JOIN libros ON ejemplar.isbn = libros.isbn

SELECT * FROM personas

UPDATE personas
   SET nombre = 'Juanito'
 WHERE codigo_socio = 'SB009';
   
SELECT * FROM personas;