CREATE TABLE students(
    full_name varchar(30) PRIMARY KEY,
    age integer NOT NULL,
    birth_date date,
    gender varchar(7),
    averege_grade float NOT NULL,
    info text CHECK ( char_length(info) < 50 ),
    dorm boolean,
    adit_info text NOT NULL
);

CREATE TABLE instructors(
    full_name varchar PRIMARY KEY,
    languages varchar(20) NOT NULL,
    remote_lessons boolean NOT NULL
);

CREATE TABLE lesson(
    instr_name varchar references instructors(full_name),
    stud_name varchar references students(full_name),
    r_number integer CHECK ( r_number > 0 )
);