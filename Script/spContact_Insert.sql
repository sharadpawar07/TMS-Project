CREATE OR ALTER PROCEDURE spContact_Insert
--execute  spContact_Insert "Sharad","pawarsharad521@gmail.com","Feedback","Good Work."
    @name VARCHAR(50),
    @email VARCHAR(50),
    @subject VARCHAR(50),
    @message VARCHAR(MAX)
    
AS
BEGIN
    -- Start transaction
    BEGIN TRY
        BEGIN TRANSACTION;

        -- Insert into the contact_tbl including the new mobile_no column
        INSERT INTO contact_tbl (name, email, subject, message)
        VALUES (@name, @email, @subject, @message);
        
        -- Commit the transaction if everything is successful
        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        -- Rollback the transaction if there is an error
        IF @@TRANCOUNT > 0
            ROLLBACK TRANSACTION;

        -- Capture and return the error message
        DECLARE @ErrorMessage NVARCHAR(4000);
        DECLARE @ErrorSeverity INT;
        DECLARE @ErrorState INT;

        SELECT 
            @ErrorMessage = ERROR_MESSAGE(),
            @ErrorSeverity = ERROR_SEVERITY(),
            @ErrorState = ERROR_STATE();

        -- Raiserror to propagate the error information
        RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
    END CATCH;
END;


