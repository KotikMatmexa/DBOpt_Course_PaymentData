USE PaymentData;

DECLARE @id_project UNIQUEIDENTIFIER
DECLARE @id_category UNIQUEIDENTIFIER
DECLARE @id_payee UNIQUEIDENTIFIER
DECLARE @id_payer UNIQUEIDENTIFIER

--¬ыбор случайных участников платежа
SET @id_project = (SELECT TOP (1) dbo.Project.Oid FROM dbo.Project ORDER BY RAND())
SET @id_payee = (SELECT TOP (1) PaymentParticipant.Oid FROM dbo.PaymentParticipant ORDER BY RAND())
SET @id_payer = (SELECT TOP (1) PaymentParticipant.Oid FROM dbo.PaymentParticipant ORDER BY RAND())
SET @id_category = (SELECT TOP (1) PaymentCategory.Oid FROM dbo.PaymentCategory ORDER BY RAND())

--¬ставка в таблицу Payment типового платежа
INSERT dbo.Payment(
	Oid, 
	Amount, 
	Category, 
	Project, 
	Justification, 
	Comment, 
	Date, 
	Payer, 
	Payee, 
	OptimisticLockField, 
	GCRecord, 
	CreateDate, 
	CheckNumber, 
	IsAuthorized, 
	Number
) VALUES (
	NEWID(), 
	100, 
	@id_category, 
	@id_project, 
	N'12345', 
	N'Test', 
	'2020-06-24 21:32:44.034', 
	@id_payer, 
	@id_payee, 
	-100, 
	100, 
	'2010-06-24 21:32:44.034', 
	N'12345', 
	0, 
	N'12345'
)