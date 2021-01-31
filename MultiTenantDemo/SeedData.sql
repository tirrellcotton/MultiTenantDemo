USE MultiTenantDemo 
GO

INSERT INTO dbo.Tenant(Id, ApiKey, 
    TenantName,  IsActive)
    VALUES('f3cfe18a-369b-4630-89b0-ed121d083c59', 
        'e71c77c8-e18a-4114-b659-006af444c2dc',
        'Tenant A', 1)

INSERT INTO dbo.Tenant(Id, ApiKey, 
    TenantName, IsActive)
    VALUES('47df0eb1-aef2-4208-8d03-ac88ae6c8330', 
        'a8ac37d4-715f-41e9-ae36-292cc6615e73',
        'Tenant B', 2)

INSERT INTO dbo.Tenant(Id, ApiKey, 
    TenantName, IsActive)
    VALUES('a9121c5e-a37e-4c77-bd11-0cddaae46d4b', 
        'cab37f08-10aa-473d-9f26-16d9d4a958e5',
        'Tenant C', 3)
GO

INSERT dbo.Customer(Id,
    TenantId, CustomerName, IsActive)
    VALUES ('169d0df3-688a-4864-8b11-078f2d1b1c24', 
        'f3cfe18a-369b-4630-89b0-ed121d083c59', 
        'Customer 1', 1)
GO

INSERT dbo.Customer(Id, 
    TenantId, CustomerName, IsActive)
    VALUES ('8b9b5299-f718-4eeb-93ba-f1acc62356ab', 
        '47df0eb1-aef2-4208-8d03-ac88ae6c8330', 
        'Customer 2', 1)
GO

INSERT dbo.Customer(Id, 
    TenantId, CustomerName, IsActive)
    VALUES ('7fc8a49f-1a15-46fb-b30b-d8b9c479e7cc', 
        'a9121c5e-a37e-4c77-bd11-0cddaae46d4b', 
        'Customer 3', 10)
GO

INSERT dbo.Customer(Id, 
    TenantId, CustomerName, IsActive)
    VALUES ('e6cb4033-d215-4a5a-9e61-6af1e69a074c', 
        'f3cfe18a-369b-4630-89b0-ed121d083c59', 
        'Customer 4', 1)
GO

INSERT dbo.Customer(Id, 
    TenantId, CustomerName, IsActive)
    VALUES ('a5f7ab05-9862-409f-8b29-5d7406cd15f3', 
        'a9121c5e-a37e-4c77-bd11-0cddaae46d4b', 
        'Customer 5', 1)
GO
