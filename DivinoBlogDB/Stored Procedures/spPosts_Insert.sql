CREATE PROCEDURE [dbo].[spPosts_Insert]
    @userId int,
    @title nvarchar(150),
    @body text,
    @dateCreated datetime2
AS
begin
    set nocount on;
    
    INSERT INTO dbo.Posts (UserID, Title, Body, DateCreated)
    VALUES (@userId, @title, @body, @dateCreated);
end