CREATE PROCEDURE [dbo].[spPosts_Details]
    @id int
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
        [p].[Id], 
        [p].[Title], 
        [p].[Body], 
        [p].[DateCreated], 
        [u].[UserName], 
        [u].[FirstName], 
        [u].[LastName]
    FROM dbo.Posts p
    INNER JOIN dbo.Users u
        ON p.UserID = u.Id
    WHERE p.Id = @id;
END
