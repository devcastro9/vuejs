-- Select rows from a Table or View 'tblComp' in schema 'dbo'
USE CONDOBO
GO
SELECT tblComp.EmpresaId, tblEmpresa.EmpresaDes AS 'EMPRESA' FROM tblComp, tblEmpresa
WHERE tblEmpresa.EmpresaId = tblComp.EmpresaId
-- WHERE CompId BETWEEN 1 AND 10
GO