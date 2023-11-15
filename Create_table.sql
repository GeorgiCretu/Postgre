CREATE TABLE piloto (
    id INT PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    alias VARCHAR(50),
    num NUMERIC,
    country VARCHAR(50),
    equipo VARCHAR(50)

)

CREATE TABLE equipo (
    id INT PRIMARY KEY,
    nombre VARCHAR(50),
    jefe VARCHAR(50),
    marca VARCHAR(50)

);

CREATE TABLE marca (
    id INT PRIMARY KEY,
    equipo VARCHAR(50),
    jefe VARCHAR(50),
    nombre_marca VARCHAR(50)

);
 CREATE TABLE pais (
    id_piloto INT REFERENCES piloto (id),
    id_equipo INT REFERENCES equipo (id),
    id_gran_premio INT REFERENCES gran_premio (id)

 );

 CREATE TABLE resultado (
    id INT PRIMARY KEY,
    incidencia VARCHAR (100),
    categoria NUMERIC

 );

 CREATE TABLE gran_premio (
    id INT PRIMARY KEY,
    year NUMERIC,
    id_piloto INT REFERENCES piloto (id),
    id_circuito INT REFERENCES circuito (id),
    id_resultado INT REFERENCES resultado (id) 

 );

 CREATE TABLE circuito (
    id INT PRIMARY KEY,
    nombre VARCHAR(50),
    longitud VARCHAR(50),
    telefono NUMERIC,
    tiempo_vuelta_rapida VARCHAR(50),
    país VARCHAR (50)
 );

 CREATE TABLE piloto_circuito (
    id_piloto INT REFERENCES piloto (id),
    Id_circuito INT REFERENCES circuito (id),
    vuelta_record VARCHAR (50),
    fecha NUMERIC,
    tiempo VARCHAR (50)
 );

 CREATE TABLE piloto_equipo (
    id_piloto INT REFERENCES piloto (id),
    id_equipo INT REFERENCES equipo (id),
    year NUMERIC,
    dorsal NUMERIC
 );