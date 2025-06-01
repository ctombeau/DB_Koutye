CREATE OR ALTER FUNCTION getAppartementByUsername(@username VARCHAR(255))
returns  dbo.appartement
as begin
	DECLARE @apps TABLE (idapp BIGINT, description VARCHAR(255) );
 
   SET @apps = select id, descriprion from dbo.appartement;
   return @apps;
end;
