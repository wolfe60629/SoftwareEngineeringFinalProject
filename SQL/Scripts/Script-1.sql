ALTER PROCEDURE INSERTLOANPROCTEST
(
	@DEALER_ID INT 
)
AS
BEGIN
	DECLARE @DEALER_SCORE INT;
	DECLARE @ACCEPTED BIT;
	SET @DEALER_SCORE = (SELECT DEALER_SCORE FROM DEALER WHERE DEALER_ID = @DEALER_ID);
	IF @DEALER_SCORE > 200
		SET @ACCEPTED = 1
	ELSE 
		SET @ACCEPTED = 0
END
BEGIN 
	SELECT @ACCEPTED
END
