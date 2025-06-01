--exec addUser ('Tombeau','Chrisnor','ctombeau','tombeauc@gmail.com','Edma@1988',1,'38051274','','Proprietaire')

--select * from utilisateur
/*
create or replace type utilisateur_t as object(
  nom varchar2(50),
  prenom varchar2(50),
  username varchar2(50),
  email varchar2(100),
  password varchar2(100),
  actif number,
  creation_date timestamp,
  modification_date timestamp,
  login_date timestamp,
  logout_date timestamp,
  photo varchar2(100),
  phone varchar2(50),
  id_type Number
);

create type utilisateur_result as Table of utilisateur_t;
*/
create or replace function login (username IN utilisateur.username%type, password IN utilisateur.password%type)
return utilisateur_result
is
begin
   select * from utilisateur where username=username and password=password;
   return utilisateur_result;
end;