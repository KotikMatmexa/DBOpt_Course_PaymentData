USE PaymentData
-- ��� �������
CREATE NONCLUSTERED INDEX indexedNamePaymentCategory ON dbo.PaymentCategory (Name) 

--��� ������� ����� CalculateProjectBalance
CREATE NONCLUSTERED INDEX indexedNameAccountType ON dbo.AccountType (Name) 

-- ������� CalculateBalanceByMaterial
CREATE NONCLUSTERED INDEX indexedProfitByMaterialAsPayer ON dbo.Supplier (ProfitByMaterialAsPayer) 
CREATE NONCLUSTERED INDEX indexedProfitByMaterialAsPayee ON dbo.Supplier (ProfitByMaterialAsPayee) 
CREATE NONCLUSTERED INDEX indexedProfitByMaterial ON dbo.PaymentCategory (ProfitByMaterial)
CREATE NONCLUSTERED INDEX indexedCostByMaterial ON dbo.PaymentCategory (CostByMaterial) 

--������� CalculatePaymentParticipantBalance 
CREATE NONCLUSTERED INDEX indexedNotInPaymentParticipantProfit ON dbo.PaymentCategory (NotInPaymentParticipantProfit) 



