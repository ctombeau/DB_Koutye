SET SERVEROUTPUT ON size 30000;
create or replace procedure addUser(
 nom IN varchar2,
 prenom IN varchar,
 username IN varchar2,
 email IN varchar2,
 password IN varchar2,
 actif IN Number,
 phone IN varchar2,
 photo IN varchar2,
 type IN varchar2
)
as
type_id Number;
findUsername number;
findEmail Number;
begin
  select id_type into type_id from type_utilisateur where nom_type=type;
  select count(*) into findUsername from utilisateur where username=username;
  select count(*) into findEmail from utilisateur where email=email;
  
  IF findUsername=0 AND findEmail=0 THEN
    insert into utilisateur(nom,prenom,username,email,password,actif,creation_date, modification_date, login_date,logout_date,
    phone,photo,id_type)
    values(nom,prenom,username,email,password,actif, current_timestamp,null,null,null,phone,photo,type_id);
  ELSE
     DBMS_OUTPUT.PUT_LINE('cet utilisateur existe...');
  END IF;
end;

--exec addUser ('Tombeau','Chrisnor','ctombeau','tombeauc@gmail.com','Edma@1988',1,'38051274','','Proprietaire')

--select * from utilisateur;