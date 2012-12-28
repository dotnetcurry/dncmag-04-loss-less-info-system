DELETE FROM UserAccountOperations;
DELETE FROM UserAccounts;

DBCC CHECKIDENT (UserAccountOperations, reseed, 0)
DBCC CHECKIDENT (UserAccounts, reseed, 0)
------------------ INSERT UserAccounts ------------------ 
INSERT INTO UserAccounts (CreatedById, CreatedDate)
Values(1, GETDATE());

INSERT INTO UserAccountOperations
           ([UserAccountId]
           ,[UserName]
           ,[Address]
           ,[Action]
           ,[UpdatedById]
           ,[UpdatedDate])
     VALUES
           (@@IDENTITY
           ,'Sumit'
           ,'Sacramento'
           ,'C'
           ,1
           ,GETDATE())

------------------ INSERT UserAccounts ------------------ 
INSERT INTO UserAccounts (CreatedById, CreatedDate)
Values(1, GETDATE());

INSERT INTO UserAccountOperations
           ([UserAccountId]
           ,[UserName]
           ,[Address]
           ,[Action]
           ,[UpdatedById]
           ,[UpdatedDate])
     VALUES
           (@@IDENTITY
           ,'Supro'
           ,'Pune'
           ,'C'
           ,1
           ,GETDATE())
------------------ INSERT UserAccounts ------------------ 
INSERT INTO UserAccounts (CreatedById, CreatedDate)
Values(1, GETDATE());

INSERT INTO UserAccountOperations
           ([UserAccountId]
           ,[UserName]
           ,[Address]
           ,[Action]
           ,[UpdatedById]
           ,[UpdatedDate])
     VALUES
           (@@IDENTITY
           ,'Raj'
           ,'Sydney'
           ,'C'
           ,1
           ,GETDATE())
------------------ INSERT UserAccounts ------------------ 
INSERT INTO UserAccounts (CreatedById, CreatedDate)
Values(1, GETDATE());

INSERT INTO UserAccountOperations
           ([UserAccountId]
           ,[UserName]
           ,[Address]
           ,[Action]
           ,[UpdatedById]
           ,[UpdatedDate])
     VALUES
           (@@IDENTITY
           ,'Akhi'
           ,'Fremont'
           ,'C'
           ,1
           ,GETDATE())
---------------- END INSERT UserAccounts ---------------- 
------------------ UPDATE UserAccounts ------------------ 
INSERT INTO UserAccountOperations
           ([UserAccountId]
           ,[UserName]
           ,[Address]
           ,[Action]
           ,[UpdatedById]
           ,[UpdatedDate])
     VALUES
           (1
           ,'Akhi'
           ,'Milpitas'
           ,'U'
           ,1
           ,GETDATE())
------------------ UPDATE UserAccounts ------------------ 
INSERT INTO UserAccountOperations
           ([UserAccountId]
           ,[UserName]
           ,[Address]
           ,[Action]
           ,[UpdatedById]
           ,[UpdatedDate])
     VALUES
           (1
           ,'Sumit'
           ,'Milpitas'
           ,'U'
           ,1
           ,GETDATE())
------------------ UPDATE UserAccounts ------------------ 
INSERT INTO UserAccountOperations
           ([UserAccountId]
           ,[UserName]
           ,[Address]
           ,[Action]
           ,[UpdatedById]
           ,[UpdatedDate])
     VALUES
           (1
           ,'Sumit'
           ,'Pune'
           ,'U'
           ,1
           ,GETDATE())
------------------ UPDATE UserAccounts ------------------ 
INSERT INTO UserAccountOperations
           ([UserAccountId]
           ,[UserName]
           ,[Address]
           ,[Action]
           ,[UpdatedById]
           ,[UpdatedDate])
     VALUES
           (4
           ,'Akhi'
           ,'Milpitas'
           ,'U'
           ,1
           ,GETDATE())
