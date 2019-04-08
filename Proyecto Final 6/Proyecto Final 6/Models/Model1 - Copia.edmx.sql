
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 04/07/2019 23:27:47
-- Generated from EDMX file: C:\Users\Erick\source\repos\Proyecto Final 6\Proyecto Final 6\Models\Model1 - Copia.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [BD6];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_CargosEmpleados_Cargos]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CargosEmpleados] DROP CONSTRAINT [FK_CargosEmpleados_Cargos];
GO
IF OBJECT_ID(N'[dbo].[FK_CargosEmpleados_Empleados]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CargosEmpleados] DROP CONSTRAINT [FK_CargosEmpleados_Empleados];
GO
IF OBJECT_ID(N'[dbo].[FK_EmpleadosSalidas]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[SalidasSet] DROP CONSTRAINT [FK_EmpleadosSalidas];
GO
IF OBJECT_ID(N'[dbo].[FK_VacacionesEmpleados]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[VacacionesSet] DROP CONSTRAINT [FK_VacacionesEmpleados];
GO
IF OBJECT_ID(N'[dbo].[FK_EmpleadosLicencias]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[LicenciasSet] DROP CONSTRAINT [FK_EmpleadosLicencias];
GO
IF OBJECT_ID(N'[dbo].[FK_EmpleadosPermisos]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PermisosSet] DROP CONSTRAINT [FK_EmpleadosPermisos];
GO
IF OBJECT_ID(N'[dbo].[FK_EmpleadosDepartamentos_Empleados]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EmpleadosDepartamentos] DROP CONSTRAINT [FK_EmpleadosDepartamentos_Empleados];
GO
IF OBJECT_ID(N'[dbo].[FK_EmpleadosDepartamentos_Departamentos]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[EmpleadosDepartamentos] DROP CONSTRAINT [FK_EmpleadosDepartamentos_Departamentos];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[EmpleadosSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EmpleadosSet];
GO
IF OBJECT_ID(N'[dbo].[DepartamentosSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[DepartamentosSet];
GO
IF OBJECT_ID(N'[dbo].[CargosSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CargosSet];
GO
IF OBJECT_ID(N'[dbo].[NominasSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[NominasSet];
GO
IF OBJECT_ID(N'[dbo].[SalidasSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SalidasSet];
GO
IF OBJECT_ID(N'[dbo].[VacacionesSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[VacacionesSet];
GO
IF OBJECT_ID(N'[dbo].[PermisosSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PermisosSet];
GO
IF OBJECT_ID(N'[dbo].[LicenciasSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[LicenciasSet];
GO
IF OBJECT_ID(N'[dbo].[CargosEmpleados]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CargosEmpleados];
GO
IF OBJECT_ID(N'[dbo].[EmpleadosDepartamentos]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EmpleadosDepartamentos];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'EmpleadosSet'
CREATE TABLE [dbo].[EmpleadosSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [CodigoE] smallint  NOT NULL,
    [Nombre] nvarchar(max)  NOT NULL,
    [Apellido] nvarchar(max)  NOT NULL,
    [Telefono] nvarchar(max)  NOT NULL,
    [NombreD] nvarchar(max)  NOT NULL,
    [Cargo] nvarchar(max)  NOT NULL,
    [FechaIngreso] datetime  NOT NULL,
    [Salario] decimal(18,0)  NOT NULL,
    [Estatus] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'DepartamentosSet'
CREATE TABLE [dbo].[DepartamentosSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [CodigoD] smallint  NOT NULL,
    [NombreD] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'CargosSet'
CREATE TABLE [dbo].[CargosSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Cargo] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'NominasSet'
CREATE TABLE [dbo].[NominasSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Anio] nvarchar(max)  NOT NULL,
    [Mes] nvarchar(max)  NOT NULL,
    [Monto] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'SalidasSet'
CREATE TABLE [dbo].[SalidasSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [CodigoE] smallint  NOT NULL,
    [TipoSalida] nvarchar(max)  NOT NULL,
    [Motivo] nvarchar(max)  NOT NULL,
    [FechaSalida] datetime  NOT NULL
);
GO

-- Creating table 'VacacionesSet'
CREATE TABLE [dbo].[VacacionesSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [CodigoE] smallint  NOT NULL,
    [Desde] datetime  NOT NULL,
    [Hasta] datetime  NOT NULL,
    [Correspondiente] smallint  NOT NULL,
    [Comentarios] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'PermisosSet'
CREATE TABLE [dbo].[PermisosSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [CodigoE] smallint  NOT NULL,
    [Desde] datetime  NOT NULL,
    [Hasta] datetime  NOT NULL,
    [Comentarios] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'LicenciasSet'
CREATE TABLE [dbo].[LicenciasSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [CodigoE] smallint  NOT NULL,
    [Desde] datetime  NOT NULL,
    [Hasta] datetime  NOT NULL,
    [Motivo] nvarchar(max)  NOT NULL,
    [Comentarios] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'CargosEmpleados'
CREATE TABLE [dbo].[CargosEmpleados] (
    [Cargos_Id] int  NOT NULL,
    [Empleados_Id] int  NOT NULL
);
GO

-- Creating table 'EmpleadosSalidas'
CREATE TABLE [dbo].[EmpleadosSalidas] (
    [Empleados_Id] int  NOT NULL,
    [Salidas_Id] int  NOT NULL
);
GO

-- Creating table 'VacacionesEmpleados'
CREATE TABLE [dbo].[VacacionesEmpleados] (
    [Vacaciones_Id] int  NOT NULL,
    [Empleados_Id] int  NOT NULL
);
GO

-- Creating table 'EmpleadosLicencias'
CREATE TABLE [dbo].[EmpleadosLicencias] (
    [Empleados_Id] int  NOT NULL,
    [Licencias_Id] int  NOT NULL
);
GO

-- Creating table 'EmpleadosPermisos'
CREATE TABLE [dbo].[EmpleadosPermisos] (
    [Empleados_Id] int  NOT NULL,
    [Permisos_Id] int  NOT NULL
);
GO

-- Creating table 'EmpleadosDepartamentos'
CREATE TABLE [dbo].[EmpleadosDepartamentos] (
    [Empleados_Id] int  NOT NULL,
    [Departamentos_Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'EmpleadosSet'
ALTER TABLE [dbo].[EmpleadosSet]
ADD CONSTRAINT [PK_EmpleadosSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'DepartamentosSet'
ALTER TABLE [dbo].[DepartamentosSet]
ADD CONSTRAINT [PK_DepartamentosSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'CargosSet'
ALTER TABLE [dbo].[CargosSet]
ADD CONSTRAINT [PK_CargosSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'NominasSet'
ALTER TABLE [dbo].[NominasSet]
ADD CONSTRAINT [PK_NominasSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'SalidasSet'
ALTER TABLE [dbo].[SalidasSet]
ADD CONSTRAINT [PK_SalidasSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'VacacionesSet'
ALTER TABLE [dbo].[VacacionesSet]
ADD CONSTRAINT [PK_VacacionesSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'PermisosSet'
ALTER TABLE [dbo].[PermisosSet]
ADD CONSTRAINT [PK_PermisosSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'LicenciasSet'
ALTER TABLE [dbo].[LicenciasSet]
ADD CONSTRAINT [PK_LicenciasSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Cargos_Id], [Empleados_Id] in table 'CargosEmpleados'
ALTER TABLE [dbo].[CargosEmpleados]
ADD CONSTRAINT [PK_CargosEmpleados]
    PRIMARY KEY CLUSTERED ([Cargos_Id], [Empleados_Id] ASC);
GO

-- Creating primary key on [Empleados_Id], [Salidas_Id] in table 'EmpleadosSalidas'
ALTER TABLE [dbo].[EmpleadosSalidas]
ADD CONSTRAINT [PK_EmpleadosSalidas]
    PRIMARY KEY CLUSTERED ([Empleados_Id], [Salidas_Id] ASC);
GO

-- Creating primary key on [Vacaciones_Id], [Empleados_Id] in table 'VacacionesEmpleados'
ALTER TABLE [dbo].[VacacionesEmpleados]
ADD CONSTRAINT [PK_VacacionesEmpleados]
    PRIMARY KEY CLUSTERED ([Vacaciones_Id], [Empleados_Id] ASC);
GO

-- Creating primary key on [Empleados_Id], [Licencias_Id] in table 'EmpleadosLicencias'
ALTER TABLE [dbo].[EmpleadosLicencias]
ADD CONSTRAINT [PK_EmpleadosLicencias]
    PRIMARY KEY CLUSTERED ([Empleados_Id], [Licencias_Id] ASC);
GO

-- Creating primary key on [Empleados_Id], [Permisos_Id] in table 'EmpleadosPermisos'
ALTER TABLE [dbo].[EmpleadosPermisos]
ADD CONSTRAINT [PK_EmpleadosPermisos]
    PRIMARY KEY CLUSTERED ([Empleados_Id], [Permisos_Id] ASC);
GO

-- Creating primary key on [Empleados_Id], [Departamentos_Id] in table 'EmpleadosDepartamentos'
ALTER TABLE [dbo].[EmpleadosDepartamentos]
ADD CONSTRAINT [PK_EmpleadosDepartamentos]
    PRIMARY KEY CLUSTERED ([Empleados_Id], [Departamentos_Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Cargos_Id] in table 'CargosEmpleados'
ALTER TABLE [dbo].[CargosEmpleados]
ADD CONSTRAINT [FK_CargosEmpleados_Cargos]
    FOREIGN KEY ([Cargos_Id])
    REFERENCES [dbo].[CargosSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Empleados_Id] in table 'CargosEmpleados'
ALTER TABLE [dbo].[CargosEmpleados]
ADD CONSTRAINT [FK_CargosEmpleados_Empleados]
    FOREIGN KEY ([Empleados_Id])
    REFERENCES [dbo].[EmpleadosSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CargosEmpleados_Empleados'
CREATE INDEX [IX_FK_CargosEmpleados_Empleados]
ON [dbo].[CargosEmpleados]
    ([Empleados_Id]);
GO

-- Creating foreign key on [Empleados_Id] in table 'EmpleadosSalidas'
ALTER TABLE [dbo].[EmpleadosSalidas]
ADD CONSTRAINT [FK_EmpleadosSalidas_Empleados]
    FOREIGN KEY ([Empleados_Id])
    REFERENCES [dbo].[EmpleadosSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Salidas_Id] in table 'EmpleadosSalidas'
ALTER TABLE [dbo].[EmpleadosSalidas]
ADD CONSTRAINT [FK_EmpleadosSalidas_Salidas]
    FOREIGN KEY ([Salidas_Id])
    REFERENCES [dbo].[SalidasSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EmpleadosSalidas_Salidas'
CREATE INDEX [IX_FK_EmpleadosSalidas_Salidas]
ON [dbo].[EmpleadosSalidas]
    ([Salidas_Id]);
GO

-- Creating foreign key on [Vacaciones_Id] in table 'VacacionesEmpleados'
ALTER TABLE [dbo].[VacacionesEmpleados]
ADD CONSTRAINT [FK_VacacionesEmpleados_Vacaciones]
    FOREIGN KEY ([Vacaciones_Id])
    REFERENCES [dbo].[VacacionesSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Empleados_Id] in table 'VacacionesEmpleados'
ALTER TABLE [dbo].[VacacionesEmpleados]
ADD CONSTRAINT [FK_VacacionesEmpleados_Empleados]
    FOREIGN KEY ([Empleados_Id])
    REFERENCES [dbo].[EmpleadosSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_VacacionesEmpleados_Empleados'
CREATE INDEX [IX_FK_VacacionesEmpleados_Empleados]
ON [dbo].[VacacionesEmpleados]
    ([Empleados_Id]);
GO

-- Creating foreign key on [Empleados_Id] in table 'EmpleadosLicencias'
ALTER TABLE [dbo].[EmpleadosLicencias]
ADD CONSTRAINT [FK_EmpleadosLicencias_Empleados]
    FOREIGN KEY ([Empleados_Id])
    REFERENCES [dbo].[EmpleadosSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Licencias_Id] in table 'EmpleadosLicencias'
ALTER TABLE [dbo].[EmpleadosLicencias]
ADD CONSTRAINT [FK_EmpleadosLicencias_Licencias]
    FOREIGN KEY ([Licencias_Id])
    REFERENCES [dbo].[LicenciasSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EmpleadosLicencias_Licencias'
CREATE INDEX [IX_FK_EmpleadosLicencias_Licencias]
ON [dbo].[EmpleadosLicencias]
    ([Licencias_Id]);
GO

-- Creating foreign key on [Empleados_Id] in table 'EmpleadosPermisos'
ALTER TABLE [dbo].[EmpleadosPermisos]
ADD CONSTRAINT [FK_EmpleadosPermisos_Empleados]
    FOREIGN KEY ([Empleados_Id])
    REFERENCES [dbo].[EmpleadosSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Permisos_Id] in table 'EmpleadosPermisos'
ALTER TABLE [dbo].[EmpleadosPermisos]
ADD CONSTRAINT [FK_EmpleadosPermisos_Permisos]
    FOREIGN KEY ([Permisos_Id])
    REFERENCES [dbo].[PermisosSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EmpleadosPermisos_Permisos'
CREATE INDEX [IX_FK_EmpleadosPermisos_Permisos]
ON [dbo].[EmpleadosPermisos]
    ([Permisos_Id]);
GO

-- Creating foreign key on [Empleados_Id] in table 'EmpleadosDepartamentos'
ALTER TABLE [dbo].[EmpleadosDepartamentos]
ADD CONSTRAINT [FK_EmpleadosDepartamentos_Empleados]
    FOREIGN KEY ([Empleados_Id])
    REFERENCES [dbo].[EmpleadosSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Departamentos_Id] in table 'EmpleadosDepartamentos'
ALTER TABLE [dbo].[EmpleadosDepartamentos]
ADD CONSTRAINT [FK_EmpleadosDepartamentos_Departamentos]
    FOREIGN KEY ([Departamentos_Id])
    REFERENCES [dbo].[DepartamentosSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EmpleadosDepartamentos_Departamentos'
CREATE INDEX [IX_FK_EmpleadosDepartamentos_Departamentos]
ON [dbo].[EmpleadosDepartamentos]
    ([Departamentos_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------