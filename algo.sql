-- ======================================================================
-- Grid Empresa
/* SELECT tblEmpresa.EmpresaId, tblEmpresa.EmpresaDes, tblEmpresa.EmpresaRUC, tblEmpresa.Direccion, tblCiudad.CiudadId, tblCiudad.CiudadDes, tblEmpresa.Telefono1, tblEmpresa.Telefono2, tblEmpresa.Movil, tblEmpresa.Fax, tblEmpresa.CodPostal, tblEmpresa.Email, tblEmpresa.Web, tblEmpresa.MesAperturaId, tblMesApertura.MesDes As MesAperturaDes, tblEmpresa.MesCierreId, tblMesCierre.MesDes As MesCierreDes, tblMoneda.MonedaId, tblMoneda.MonedaDes, tblEstado.EstadoId, tblEstado.EstadoDes
FROM tblEmpresa, tblCiudad, tblEstado, tblMes As tblMesApertura, tblMes As tblMesCierre, tblMoneda
WHERE  tblEmpresa.CiudadId = tblCiudad.CiudadId  AND 
    tblEmpresa.EstadoId = tblEstado.EstadoId  AND 
    tblEmpresa.MesAperturaId = tblMesApertura.MesId AND
    tblEmpresa.MesCierreId = tblMesCierre.MesId  AND
    tblEmpresa.MonedaId = tblMoneda.MonedaId
ORDER BY tblEmpresa.EmpresaDes  */
/* SELECT tblEmpresa.EmpresaId, tblEmpresa.EmpresaDes, tblEmpresa.EmpresaRUC, tblEmpresa.Direccion, tblCiudad.CiudadId, tblCiudad.CiudadDes, tblEmpresa.Telefono1, tblEmpresa.Telefono2, tblEmpresa.Movil, tblEmpresa.Fax, tblEmpresa.CodPostal, tblEmpresa.Email, tblEmpresa.Web, tblEmpresa.MesAperturaId, tblMesApertura.MesDes As MesAperturaDes, tblEmpresa.MesCierreId, tblMesCierre.MesDes As MesCierreDes, tblMoneda.MonedaId, tblMoneda.MonedaDes, tblEstado.EstadoId, tblEstado.EstadoDes
FROM tblEmpresa, tblCiudad, tblEstado, tblMes As tblMesApertura, tblMes As tblMesCierre, tblMoneda
WHERE  tblEmpresa.CiudadId = tblCiudad.CiudadId  AND  tblEmpresa.EstadoId = tblEstado.EstadoId  AND  tblEmpresa.MesAperturaId = tblMesApertura.MesId  AND  tblEmpresa.MesCierreId = tblMesCierre.MesId  AND  tblEmpresa.MonedaId = tblMoneda.MonedaId
AND EmpresaId <> -1 */
-- ======================================================================
-- Grid Plan (solo muestra el nivel 1, como tambien los que tiene PlanPadreId = 0)
-- Primera ejecucion
/* SELECT tblPlan.PlanId, tblPlan.EmpresaId, tblPlan.PlanDes, tblPlan.PlanCta, tblPlan.EsAna, tblPlan.PlanPadreId, tblPlan.Orden, tblPlan.Nivel, tblPlan.TipoPlanId, tblPlan.TipoGrupoId, tblPlan.MonedaId, tblPlan.TieneAnaAdd, tblPlan.MostrarAnaAdd, tblPlan.SucCCOId, tblPlan.EstadoId, tblPlan.sLastUpdate_id, tblPlan.dtLastUpdate_dt, tblPlan.iConcurrency_id
FROM tblPlan
WHERE  tblPlan.EmpresaId = 1 AND  tblPlan.PlanPadreId = 0
ORDER BY tblPlan.Orden  */
-- Ejecucion n + 1
/* SELECT tblPlan.PlanId, tblPlan.EmpresaId, tblPlan.PlanDes, tblPlan.PlanCta, tblPlan.EsAna, tblPlan.PlanPadreId, tblPlan.Orden, tblPlan.Nivel, tblPlan.TipoPlanId, tblPlan.TipoGrupoId, tblPlan.MonedaId, tblPlan.TieneAnaAdd, tblPlan.MostrarAnaAdd, tblPlan.SucCCOId, tblPlan.EstadoId, tblPlan.sLastUpdate_id, tblPlan.dtLastUpdate_dt, tblPlan.iConcurrency_id
FROM tblPlan  WHERE  tblPlan.EmpresaId = 1 AND  tblPlan.PlanPadreId = 1 */
-- ======================================================================
-- Grid Plan
-- INSERT INTO secUser (secUser.UserId, secUser.AppId, secUser.GroupId, secUser.FirstName, secUser.LastName, secUser.LoginId, secUser.EstadoId, secUser.sLastUpdate_id, secUser.dtLastUpdate_dt, secUser.iConcurrency_id) VALUES (53, 2, 2, 'cont', 'admin', 'admin_c', 1, 'admin', GETDATE(), 1)
/* SELECT secUser.UserId, secUser.AppId, secUser.GroupId, secUser.FirstName, secUser.LastName, secUser.LoginId, secUser.Pass, secUser.EstadoId, secUser.sLastUpdate_id, secUser.dtLastUpdate_dt, secUser.iConcurrency_id
FROM secUser WHERE secUser.AppId = 2 AND secUser.EstadoId = 1 ORDER BY secUser.LastName */
-- ======================================================================
-- Grid Comprobantes
-- Con este SQL sale: Filas = 0
/* SELECT tblComp.CompId, tblComp.EmpresaId, tblComp.GestionId, tblComp.Fecha, tblTipoComp.TipoCompId, tblTipoComp.TipoCompDes, tblEstado.EstadoId, tblEstado.EstadoDes, tblComp.CompNro, tblMoneda.MonedaId, tblMoneda.MonedaDes, tblComp.TipoCambio, tblComp.DebeBs, tblComp.DebeUs, tblComp.EntregadoA, tblComp.PorConcepto, invTipoNota.TipoNotaId, invTipoNota.TipoNotaDes, tblComp.NotaNro, tblComp.SinFac, tblComp.ConFac, tblTipoAsiento.TipoAsientoId, tblTipoAsiento.TipoAsientoDes
FROM tblComp, tblTipoComp, tblMoneda, invTipoNota, tblTipoAsiento, tblEstado
WHERE  tblComp.EmpresaId = 1 AND
    tblComp.GestionId = 11 AND
    tblComp.TipoCompId = tblTipoComp.TipoCompId  AND
    tblComp.MonedaId = tblMoneda.MonedaId  AND
    tblComp.TipoNotaId = invTipoNota.TipoNotaId  AND
    tblComp.TipoAsientoId = tblTipoAsiento.TipoAsientoId  AND
    tblComp.EstadoId = tblEstado.EstadoId
ORDER BY tblComp.CompId DESC */
-- Con este SQL sale el total. Filas: 47003
/* SELECT tblComp.CompId, tblComp.EmpresaId, tblComp.GestionId, tblComp.Fecha, tblTipoComp.TipoCompId, tblTipoComp.TipoCompDes, tblEstado.EstadoId, tblEstado.EstadoDes, tblComp.CompNro, tblMoneda.MonedaId, tblMoneda.MonedaDes, tblComp.TipoCambio, tblComp.DebeBs, tblComp.DebeUs, tblComp.EntregadoA, tblComp.PorConcepto, invTipoNota.TipoNotaId, invTipoNota.TipoNotaDes, tblComp.NotaNro, tblComp.SinFac, tblComp.ConFac, tblTipoAsiento.TipoAsientoId, tblTipoAsiento.TipoAsientoDes
FROM tblComp, tblTipoComp, tblMoneda, invTipoNota, tblTipoAsiento, tblEstado
WHERE  
    tblComp.TipoCompId = tblTipoComp.TipoCompId  AND
    tblComp.MonedaId = tblMoneda.MonedaId  AND
    tblComp.TipoNotaId = invTipoNota.TipoNotaId  AND
    tblComp.TipoAsientoId = tblTipoAsiento.TipoAsientoId  AND
    tblComp.EstadoId = tblEstado.EstadoId
ORDER BY tblComp.CompId DESC
 */
 -- ======================================================================

/* SELECT fc.correlativo, fc.Descripcion as 'Rubro', deb.PlanDes as 'Debito', cre.PlanDes as 'Credito'
FROM fc_relacionador_ingresos as fc, tblPlan as deb, tblPlan as cre
WHERE fc.Cta_Cred = deb.PlanId AND fc.Cta_Cred = cre.PlanId
ORDER BY fc.correlativo */

/* USE [CONDOBO]
GO
SET NOCOUNT ON
INSERT INTO [dbo].[correlativo_comp] ([tipoCompId], [descCorrel], [mes], [correlativo])
VALUES (1, 'Ingreso', MONTH(GETDATE()), 0), (2, 'Egreso', MONTH(GETDATE()), 0), (3, 'Traspaso', MONTH(GETDATE()), 0)
GO */

