USE PaymentData
-- все функции
CREATE NONCLUSTERED INDEX indexedNamePaymentCategory ON dbo.PaymentCategory (Name) 

--все функции кроме CalculateProjectBalance
CREATE NONCLUSTERED INDEX indexedNameAccountType ON dbo.AccountType (Name) 

-- функция CalculateBalanceByMaterial
CREATE NONCLUSTERED INDEX indexedProfitByMaterialAsPayer ON dbo.Supplier (ProfitByMaterialAsPayer) 
CREATE NONCLUSTERED INDEX indexedProfitByMaterialAsPayee ON dbo.Supplier (ProfitByMaterialAsPayee) 
CREATE NONCLUSTERED INDEX indexedProfitByMaterial ON dbo.PaymentCategory (ProfitByMaterial)
CREATE NONCLUSTERED INDEX indexedCostByMaterial ON dbo.PaymentCategory (CostByMaterial) 

--функция CalculatePaymentParticipantBalance 
CREATE NONCLUSTERED INDEX indexedNotInPaymentParticipantProfit ON dbo.PaymentCategory (NotInPaymentParticipantProfit) 



