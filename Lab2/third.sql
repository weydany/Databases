CREATE TABLE students(
    full_name varchar PRIMARY KEY ,
    age integer NOT NULL,
    birt_date date,
    gender varchar(7),
    gpa float NOT NULL,
    info text CHECK ( char_length(info) < 30 ),
    dorm boolean,
    ad_info text NOT NULL
);

CREATE TABLE instructors(
    full_name varchar PRIMARY KEY ,
    remote_lessons boolean NOT NULL
);

CREATE TABLE capabilities(
    cap_id integer PRIMARY KEY ,
    inst_id varchar references instructors(full_name)
);

CREATE TABLE jobs(
    job_id integer PRIMARY KEY,
    company_name varchar NOT NULL ,
    cap_id integer references capabilities(cap_id)
);

CREATE TABLE languages(
    lan_id integer PRIMARY KEY ,
    lan_name varchar(10) NOT NULL ,
    cap_id integer references capabilities(cap_id)
);

CREATE TABLE lesson_participants (
    title varchar(15) NOT NULL PRIMARY KEY ,
    instructor varchar references instructors(full_name),
    room_number integer CHECK ( room_number > 0 )
);

CREATE TABLE lesson(
    les_id varchar(15) references lesson_participants(title),
    stud_id varchar references students(full_name)
);