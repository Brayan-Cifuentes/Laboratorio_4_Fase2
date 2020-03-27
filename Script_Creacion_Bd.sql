create database Planilla_Bd;
-- Drop database Planilla_Bd;
use Planilla_Bd;

create table Concepto_1113(
	Codigo_Concepto varchar(5) primary key,
    Nombre_Concepto varchar(60),
    Efecto_Concepto varchar(1),
    estatus_concepto varchar(1)
)Engine=InnoDB;

create table Departamento_1113(
	Codigo_Departamento varchar(5) primary key,
    Nombre_Departamento varchar(60),
    Estatus_Departamento varchar(1)
)Engine=InnoDB;

create table Puesto_1113(
	Codigo_Puesto varchar(5) primary key,
    Nombre_Puesto varchar(60),
    Estatus_Puesto varchar(60)
)Engine=InnoDB;

create table Empleado_1113(
	Codigo_Empleado varchar(5) primary key,
    Nombre_Empleado varchar(60),
    
    Codigo_Puesto varchar(5),
    Codigo_Departamento varchar(5),
    
    Sueldo_Empleado float,
    Estatus_Empleado varchar(1),
    

    foreign key (Codigo_Departamento) references Departamento_1113(Codigo_Departamento),
    foreign key (Codigo_Puesto) references Puesto_1113(Codigo_Puesto)
    
)Engine=InnoDB;


create table Nominae_1113(
	Codigo_Nomina varchar(5) primary key,
    Fecha_Inicial_Nomina date,
    Fecha_Final_Nomina date
)Engine=InnoDB;

create table Nominad_1113(
	Codigo_Nomina varchar(5),
    Codigo_Empleado varchar(5),
    Codigo_Concepto varchar(5),
    Valor_NominaD float,
    
    foreign key (Codigo_Nomina) references Nominae_1113(Codigo_Nomina),
    foreign key (Codigo_Empleado) references Empleado_1113(Codigo_Empleado),
    foreign key (Codigo_Concepto) references Concepto_1113(Codigo_Concepto)
    
)Engine=InnoDB;
