set @@foreign_key_checks=0;
CREATE TABLE Collider
(
    collider_name    VARCHAR(10) NOT NULL,
    event_name    VARCHAR(100) NOT NULL,
    event_number    VARCHAR(100) NOT NULL,
    primary key (event_name, event_number)
);

CREATE TABLE Physial_property
(
    invariant_mass    Double,
    event_number    VARCHAR(100) NOT NULL,
    px    Double,
    py    Double,
    pz    Double,
    event_name    VARCHAR(100),
    primary key(event_number),
    foreign key (event_number, event_name) references Collider
    
)ENGINE INNODB;


CREATE TABLE Physial_property
(
    invariant_mass    Double,
    event_number    VARCHAR(100) NOT NULL,
    px    Double,
    py    Double,
    pz    Double,
    event_name    VARCHAR(100),
    primary key(event_number)
    
)ENGINE INNODB;
alter table  Physial_property 

add foreign key (event_name, event_number) 
references Collider(event_name, event_number);