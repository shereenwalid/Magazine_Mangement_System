
create or replace PROCEDURE GetArticleTitle
(
  text_in   IN  VARCHAR2,
  title_out OUT SYS_REFCURSOR
)
AS
BEGIN
  OPEN title_out FOR
    SELECT a.Title, a.Author, c.Category_Name, m.Magazine_Name, m.Publish_Date, m.Review, m.Rating, m.Price, m.Language, m.Age_Limit 
    FROM Article a 
    JOIN Magazine m ON a.Magazine_Id = m.Magazine_Id 
    JOIN Category c ON a.Article_Id = c.Article_Id 
    WHERE a.author = text_in OR c.Category_Name = text_in;
END;



create or replace PROCEDURE GetMagazineInfo (
  Text IN VARCHAR2,
  Publish_date OUT DATE,
  Rating OUT NUMBER,
  Price OUT NUMBER,
  Lang OUT VARCHAR2,
  AL OUT NUMBER
) AS
BEGIN
  SELECT publish_date, rating, price, language, age_limit
  INTO Publish_date, Rating, Price, Lang, AL
  FROM magazine
  WHERE magazine_name = Text;
END;

