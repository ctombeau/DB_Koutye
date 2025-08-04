CREATE FUNCTION showUserByUsername(
  @username VARCHAR(100) 
)
RETURNS TABLE 
AS
RETURN
(
	SELECT * FROM utilisateur WHERE username=@username
);