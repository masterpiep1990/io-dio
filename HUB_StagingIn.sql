--ik ben het er niet meer mee eens
 
 USE [HUB_StagingIn]
GO
/****** Object:  UserDefinedFunction [dbo].[ATTR]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION [dbo].[ATTR] (
@ATTR_COL nvarchar(1024))
RETURNS nvarchar(1024)
AS
BEGIN
  declare @value nvarchar(1024)
  set @value = 
     isnull(nullif(cast(@ATTR_COL as nvarchar(1024)), ''),'null')
  return @value
END


GO
/****** Object:  UserDefinedFunction [dbo].[BK1]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION [dbo].[BK1] (
@BK_COL1 nvarchar(1024))
RETURNS nvarchar(1024)
AS
BEGIN
  declare @concat nvarchar(1024)
  set @concat = 
          isnull(nullif(ltrim(rtrim(@BK_COL1)),''),'#EBK')
  return @concat
END



GO
/****** Object:  UserDefinedFunction [dbo].[BK2]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION [dbo].[BK2] (
@BK_COL1 nvarchar(1024), 
@BK_COL2 nvarchar(1024))
RETURNS nvarchar(1024)
AS
BEGIN
  declare @concat nvarchar(1024)
  set @concat = 
          isnull(nullif(ltrim(rtrim(@BK_COL1)),''),'#EBK')
  + '~' + isnull(nullif(ltrim(rtrim(@BK_COL2)),''),'#EBK')
  return @concat
END



GO
/****** Object:  UserDefinedFunction [dbo].[BK3]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION [dbo].[BK3] (
@BK_COL1 nvarchar(1024), 
@BK_COL2 nvarchar(1024), 
@BK_COL3 nvarchar(1024))
RETURNS nvarchar(1024)
AS
BEGIN
  declare @concat nvarchar(1024)
  set @concat = 
          isnull(nullif(ltrim(rtrim(@BK_COL1)),''),'#EBK')
  + '~' + isnull(nullif(ltrim(rtrim(@BK_COL2)),''),'#EBK')
  + '~' + isnull(nullif(ltrim(rtrim(@BK_COL3)),''),'#EBK')
  return @concat
END



GO
/****** Object:  UserDefinedFunction [dbo].[BK4]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION [dbo].[BK4] (
@BK_COL1 nvarchar(1024), 
@BK_COL2 nvarchar(1024), 
@BK_COL3 nvarchar(1024), 
@BK_COL4 nvarchar(1024))
RETURNS nvarchar(1024)
AS
BEGIN
  declare @concat nvarchar(1024)
  set @concat = 
          isnull(nullif(ltrim(rtrim(@BK_COL1)),''),'#EBK')
  + '~' + isnull(nullif(ltrim(rtrim(@BK_COL2)),''),'#EBK')
  + '~' + isnull(nullif(ltrim(rtrim(@BK_COL3)),''),'#EBK')
  + '~' + isnull(nullif(ltrim(rtrim(@BK_COL4)),''),'#EBK')
  return @concat
END



GO
/****** Object:  UserDefinedFunction [dbo].[BK5]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION [dbo].[BK5] (
@BK_COL1 nvarchar(1024), 
@BK_COL2 nvarchar(1024), 
@BK_COL3 nvarchar(1024), 
@BK_COL4 nvarchar(1024),
@BK_COL5 nvarchar(1024))
RETURNS nvarchar(1024)
AS
BEGIN
  declare @concat nvarchar(1024)
  set @concat = 
          isnull(nullif(ltrim(rtrim(@BK_COL1)),''),'#EBK')
  + '~' + isnull(nullif(ltrim(rtrim(@BK_COL2)),''),'#EBK')
  + '~' + isnull(nullif(ltrim(rtrim(@BK_COL3)),''),'#EBK')
  + '~' + isnull(nullif(ltrim(rtrim(@BK_COL4)),''),'#EBK')
  + '~' + isnull(nullif(ltrim(rtrim(@BK_COL5)),''),'#EBK')
  return @concat
END



GO
/****** Object:  UserDefinedFunction [dbo].[BSK1]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE FUNCTION [dbo].[BSK1] (
@BK_COL1 nvarchar(1024))
RETURNS nvarchar(1024)
AS
BEGIN
  declare @concat nvarchar(1024)
  set @concat = 
          isnull(nullif(@BK_COL1,''),'#EBK') + char(3)
  return @concat
END





GO
/****** Object:  UserDefinedFunction [dbo].[BSK2]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE FUNCTION [dbo].[BSK2] (
@BK_COL1 nvarchar(1024), 
@BK_COL2 nvarchar(1024))
RETURNS nvarchar(1024)
AS
BEGIN
  declare @concat nvarchar(1024)
  set @concat = 
          isnull(nullif(@BK_COL1,''),'#EBK')
  + '~' + isnull(nullif(@BK_COL2,''),'#EBK') + char(3)
  return @concat
END





GO
/****** Object:  UserDefinedFunction [dbo].[BSK3]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE FUNCTION [dbo].[BSK3] (
@BK_COL1 nvarchar(1024), 
@BK_COL2 nvarchar(1024), 
@BK_COL3 nvarchar(1024))
RETURNS nvarchar(1024)
AS
BEGIN
  declare @concat nvarchar(1024)
  set @concat = 
          isnull(nullif(@BK_COL1,''),'#EBK')
  + '~' + isnull(nullif(@BK_COL2,''),'#EBK')
  + '~' + isnull(nullif(@BK_COL3,''),'#EBK') + char(3)
  return @concat
END





GO
/****** Object:  UserDefinedFunction [dbo].[BSK4]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE FUNCTION [dbo].[BSK4] (
@BK_COL1 nvarchar(1024), 
@BK_COL2 nvarchar(1024), 
@BK_COL3 nvarchar(1024), 
@BK_COL4 nvarchar(1024))
RETURNS nvarchar(1024)
AS
BEGIN
  declare @concat nvarchar(1024)
  set @concat = 
          isnull(nullif(@BK_COL1,''),'#EBK')
  + '~' + isnull(nullif(@BK_COL2,''),'#EBK')
  + '~' + isnull(nullif(@BK_COL3,''),'#EBK')
  + '~' + isnull(nullif(@BK_COL4,''),'#EBK') + char(3)
  return @concat
END





GO
/****** Object:  UserDefinedFunction [dbo].[BSK5]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE FUNCTION [dbo].[BSK5] (
@BK_COL1 nvarchar(1024), 
@BK_COL2 nvarchar(1024), 
@BK_COL3 nvarchar(1024), 
@BK_COL4 nvarchar(1024),
@BK_COL5 nvarchar(1024))
RETURNS nvarchar(1024)
AS
BEGIN
  declare @concat nvarchar(1024)
  set @concat = 
          isnull(nullif(@BK_COL1,''),'#EBK')
  + '~' + isnull(nullif(@BK_COL2,''),'#EBK')
  + '~' + isnull(nullif(@BK_COL3,''),'#EBK')
  + '~' + isnull(nullif(@BK_COL4,''),'#EBK')
  + '~' + isnull(nullif(@BK_COL5,''),'#EBK') + char(3)
  return @concat
END





GO
/****** Object:  UserDefinedFunction [dbo].[BSKV1]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE FUNCTION [dbo].[BSKV1] (
@BK_COL1 nvarchar(1024))
RETURNS nvarchar(1024)
AS
BEGIN
  declare @concat nvarchar(1024)
  set @concat = 
          isnull(nullif(@BK_COL1,''),'#EBK') 
  return @concat
END






GO
/****** Object:  UserDefinedFunction [dbo].[BSKV2]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE FUNCTION [dbo].[BSKV2] (
@BK_COL1 nvarchar(1024), 
@BK_COL2 nvarchar(1024))
RETURNS nvarchar(1024)
AS
BEGIN
  declare @concat nvarchar(1024)
  set @concat = 
          isnull(nullif(@BK_COL1,''),'#EBK')
  + '~' + isnull(nullif(@BK_COL2,''),'#EBK')
  return @concat
END






GO
/****** Object:  UserDefinedFunction [dbo].[BSKV3]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE FUNCTION [dbo].[BSKV3] (
@BK_COL1 nvarchar(1024), 
@BK_COL2 nvarchar(1024), 
@BK_COL3 nvarchar(1024))
RETURNS nvarchar(1024)
AS
BEGIN
  declare @concat nvarchar(1024)
  set @concat = 
          isnull(nullif(@BK_COL1,''),'#EBK')
  + '~' + isnull(nullif(@BK_COL2,''),'#EBK')
  + '~' + isnull(nullif(@BK_COL3,''),'#EBK') 
  return @concat
END






GO
/****** Object:  UserDefinedFunction [dbo].[BSKV4]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE FUNCTION [dbo].[BSKV4] (
@BK_COL1 nvarchar(1024), 
@BK_COL2 nvarchar(1024), 
@BK_COL3 nvarchar(1024), 
@BK_COL4 nvarchar(1024))
RETURNS nvarchar(1024)
AS
BEGIN
  declare @concat nvarchar(1024)
  set @concat = 
          isnull(nullif(@BK_COL1,''),'#EBK')
  + '~' + isnull(nullif(@BK_COL2,''),'#EBK')
  + '~' + isnull(nullif(@BK_COL3,''),'#EBK')
  + '~' + isnull(nullif(@BK_COL4,''),'#EBK') 
  return @concat
END






GO
/****** Object:  UserDefinedFunction [dbo].[BSKV5]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE FUNCTION [dbo].[BSKV5] (
@BK_COL1 nvarchar(1024), 
@BK_COL2 nvarchar(1024), 
@BK_COL3 nvarchar(1024), 
@BK_COL4 nvarchar(1024),
@BK_COL5 nvarchar(1024))
RETURNS nvarchar(1024)
AS
BEGIN
  declare @concat nvarchar(1024)
  set @concat = 
          isnull(nullif(@BK_COL1,''),'#EBK')
  + '~' + isnull(nullif(@BK_COL2,''),'#EBK')
  + '~' + isnull(nullif(@BK_COL3,''),'#EBK')
  + '~' + isnull(nullif(@BK_COL4,''),'#EBK')
  + '~' + isnull(nullif(@BK_COL5,''),'#EBK') 
  return @concat
END






GO
/****** Object:  UserDefinedFunction [hub].[Fn_Alias]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
CREATE FUNCTION [hub].[Fn_Alias](@SchemaName varchar(100), @TableName varchar(100))
RETURNS varchar(100)
WITH EXECUTE AS OWNER as
BEGIN
/*
	this function gives the actual tablename if an alias is used.
*/
	--declarations
	DECLARE @Original varchar(100)
	
	--constants/parameters
	SELECT @SchemaName= hub.Fn_ValidInput('schema',@SchemaName)
	SELECT @TableName= hub.Fn_ValidInput('table',@TableName)

	--checks
		-- not possible within a function

	-- check if the parameter is an alias
	select 	@Original=TableName
	from (
		select SchemaName,
			hub.Fn_ValidInput('table',TableName) TableName, 
			hub.Fn_ValidInput('table',TableAlias) TableAlias 
		from (	select * 
				from hub.Exceptions 
				where ExceptionType='ALIAS')A ) E
	WHERE SchemaName=@SchemaName
	AND @TableName =TableAlias

	--return value
	RETURN isnull(@Original,@TableName)
END
GO
/****** Object:  UserDefinedFunction [hub].[Fn_StatisticDateTime]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [hub].[Fn_StatisticDateTime]( @object_id bigint, @index_id bigint)
RETURNS datetime 
AS
BEGIN
	RETURN STATS_DATE(@object_id, @index_id)
END
GO
/****** Object:  UserDefinedFunction [hub].[Fn_ValidDelivery]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
CREATE FUNCTION [hub].[Fn_ValidDelivery](@schemaname varchar(10), @TableName varchar(100), @xml xml)
RETURNS @Resultaat TABLE 
( DELIVERY_SQN numeric(22,0)) AS
BEGIN
	/*
	This function lists the DELIVERY_SQN that a view will show.
	If an interface has a succesfull DLV check, that only valid deliveries after the first check will be shown
	all deliveries before the first DLV check will be shown.

	if the interface is used in a "sluis" view, only the next delivery will be shown.
	*/
	WITH 
	Aanwezig AS (-- all the unique DELIVERY_SQN from the table (via XML)
		SELECT  x.v.value('@DELIVERY_SQN', 'decimal(22,0)') AS DELIVERY_SQN
		FROM    @xml.nodes('//T') x(v)),
	Geldig AS (-- all deliveries that passed the DLV check
		SELECT  DISTINCT DD.DELIVERY_SQN_CRNT_RUN DELIVERY_SQN, ISNULL(DD.LOAD_ST_CODE,'')LOAD_ST_CODE
		FROM	log.LOG_DD_DATA_DELIVERY DD
		WHERE	DD.TRG_ENT_NM = @TableName),
	Rivier AS ( -- if DLV is active, only valid deliveries
		SELECT G.DELIVERY_SQN
		FROM Geldig G
			INNER JOIN Aanwezig A
				on G.DELIVERY_SQN=A.DELIVERY_SQN
				AND G.LOAD_ST_CODE ='DLV OK'
		UNION--  if DLV is not active, all deliveries
		SELECT DELIVERY_SQN
		FROM Aanwezig
		where (SELECT count(*) FROM Geldig)=0
		UNION --If DLV is recently activated, all deliverie prior to the first check are valid.
		SELECT A.DELIVERY_SQN
		FROM Aanwezig A
		WHERE  A.DELIVERY_SQN < (select min(DELIVERY_SQN) from Geldig)		
		),
	Sluis AS ( -- determining if the view is a "sluis" view
		SELECT  FeedbackIsMandatory, LastDelivery 
		FROM hub.Subscribers 
		where TableName=@TableName
			AND SchemaNameSubscriber= @schemaname),
	Resultaat AS (   
		SELECT MIN(R.DELIVERY_SQN) DELIVERY_SQN -- the lowest unproceesed delivery for the "sluis" view
		FROM Rivier R
			INNER JOIN Sluis S
				ON S.FeedbackIsMandatory=1
				AND R.DELIVERY_SQN > S.LastDelivery
		UNION
		SELECT R.DELIVERY_SQN --all DELIVERY_SQN for "rivier" views
		FROM Rivier R
			INNER JOIN Sluis S
				ON S.FeedbackIsMandatory=0)

	--returning a table as output
   INSERT @Resultaat
   SELECT DISTINCT DELIVERY_SQN
   FROM Resultaat
   WHERE NOT DELIVERY_SQN is NULL
   RETURN
END

GO
/****** Object:  UserDefinedFunction [hub].[Fn_ValidInput]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION [hub].[Fn_ValidInput] (@InputType varchar(100), @Value varchar(8000)) RETURNS varchar(8000) AS
BEGIN
	/*
	This procedure checks and corrects the formating of recurring variables. this to insure that variables are more predictable and also as a prevention of sql-injection.
	*/
	--declarations
	DECLARE @Value2 varchar(8000)=''

	--constants/parameters
	SET @InputType=LOWER(RTRIM(LTRIM(@InputType)))

	--general cleanup
	while ( @Value2 <> @Value and @InputType <> 'environmentname' )
	BEGIN
		SET @Value2= @Value
		SET @Value= RTRIM(LTRIM(@Value))
		IF LEFT(@Value,1)='[' AND RIGHT(@Value,1)=']'
			SET @Value= SUBSTRING(@Value,2,LEN(@Value)-2)
		IF LEFT(@Value,1)='''' AND RIGHT(@Value,1)=''''
			SET @Value= SUBSTRING(@Value,2,LEN(@Value)-2)
		IF LEFT(@Value,1)='{' AND RIGHT(@Value,1)='}'
			SET @Value= SUBSTRING(@Value,2,LEN(@Value)-2)
		IF LEFT(@Value,1)='"' AND RIGHT(@Value,1)='"'
			SET @Value= SUBSTRING(@Value,2,LEN(@Value)-2)
	END

	SET @Value= RTRIM(LTRIM(@Value))

	-- correcting the value if needed.
	IF @InputType in ('schema')
	BEGIN
		SET @Value= LOWER(@Value)
		if @Value in ('tmp','xxx','transf')
			SET @Value= UPPER(@Value)
	END
	IF @InputType in ('clause','column','table','environment','location','mode')
	BEGIN
		SET @Value= UPPER(@Value)
	END
	IF @InputType in ('login')
	BEGIN
		SELECT @Value=ISNULL(name,@Value) from master.sys.server_principals where lower(name) =lower(@Value)
	END
	IF @InputType in ('count')
	BEGIN
		SET @Value=ISNULL(@Value,0)
		IF @Value <0 
			SET @Value=0
	END
	IF @InputType in ('lastdelivery')
	BEGIN
		IF @Value <0 
			SET @Value=0
	END
	IF @InputType in ('bit0')
	BEGIN
		SET @Value=ISNULL(@Value,0)
	END
	--IF @InputType in ('database')
	--BEGIN
	--	if not exists (select * from hub.Parameters where ParamName in ('StagingInDB','StagingOutDB') and ParamValue=@Value)
	--		SET @Value = null
	--END
	-- catch all/template for new inputtypes
	--IF @InputType in ('')
	--BEGIN
	--	SET @Value=@Value
	--END

	-- returning the corrected value
	if @Value=''
	BEGIN
		set @Value = NULL
	END

	RETURN @Value

END
GO
/****** Object:  UserDefinedFunction [log].[Fn_TRG_ENT_DATABASE]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
CREATE FUNCTION [log].[Fn_TRG_ENT_DATABASE]
(@TRG_ENT_NM varchar(50))
RETURNS varchar(100)
AS
BEGIN
	DECLARE @TRG_ENT_DATABASE varchar(100)
	select @TRG_ENT_DATABASE= P.ParamValue
	from hub.Suppliers S
	inner join hub.Namespaces N
	on N.SchemaName=S.SchemaNameSupplier
	inner join hub.Parameters P
	On (P.ParamName ='StagingInDB' and N.Location ='E')
	OR (P.ParamName ='StagingOutDB' and N.Location ='I')
	where S.TableName = @TRG_ENT_NM
	RETURN  @TRG_ENT_DATABASE
END
GO
/****** Object:  UserDefinedFunction [log].[Fn_TRG_ENT_SCHEMA]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [log].[Fn_TRG_ENT_SCHEMA]
(@TRG_ENT_NM varchar(50))
RETURNS varchar(10)
AS
BEGIN
	DECLARE @TRG_ENT_SCHEMA varchar(10)
	select @TRG_ENT_SCHEMA= max(SchemaNameSupplier) from hub.Suppliers where TableName = @TRG_ENT_NM
	RETURN  @TRG_ENT_SCHEMA
END
GO
/****** Object:  Table [hub].[Logins]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [hub].[Logins](
	[LoginName] [varchar](100) NOT NULL,
	[SchemaName] [varchar](10) NOT NULL,
	[IsApplication] [bit] NOT NULL,
 CONSTRAINT [PK_Logins] PRIMARY KEY CLUSTERED 
(
	[LoginName] ASC,
	[SchemaName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [hub].[MyNamespaces]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE VIEW [hub].[MyNamespaces] AS
	select distinct SchemaName 
	from hub.Logins (nolock)
	where IS_ROLEMEMBER(LoginName, ORIGINAL_LOGIN())=1 or IS_MEMBER (LoginName)=1
	UNION 
	select '*' where IS_ROLEMEMBER('sysadmin', ORIGINAL_LOGIN()) =1 
	UNION
	
	select '*' 
	from HUB_StagingIn.sys.database_role_members m  (nolock)
		join HUB_StagingIn.sys.database_principals r (nolock)
			on m.role_principal_id = r.principal_id 
		join HUB_StagingIn.sys.database_principals p (nolock)
			on m.member_principal_id = p.principal_id 
	where r.name = 'db_owner'
	and (IS_ROLEMEMBER(p.name, ORIGINAL_LOGIN())=1 or IS_MEMBER (p.name)=1)
	
 UNION 

	select '*' 
	from HUB_StagingOut.sys.database_role_members m  (nolock)
		join HUB_StagingOut.sys.database_principals r (nolock)
			on m.role_principal_id = r.principal_id 
		join HUB_StagingOut.sys.database_principals p (nolock)
			on m.member_principal_id = p.principal_id 
	where r.name = 'db_owner'
	and (IS_ROLEMEMBER(p.name, ORIGINAL_LOGIN())=1 or IS_MEMBER (p.name)=1)
	
GO
/****** Object:  Table [hub].[Parameters]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [hub].[Parameters](
	[ParamName] [varchar](100) NOT NULL,
	[ParamValue] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Parameters] PRIMARY KEY CLUSTERED 
(
	[ParamName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [hub].[Namespaces]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [hub].[Namespaces](
	[SchemaName] [varchar](10) NOT NULL,
	[Location] [char](1) NOT NULL,
 CONSTRAINT [PK_Namespaces] PRIMARY KEY CLUSTERED 
(
	[SchemaName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [hub].[Suppliers]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [hub].[Suppliers](
	[TableName] [varchar](50) NOT NULL,
	[SchemaNameSupplier] [varchar](10) NOT NULL,
	[SuccessfulDeliveryCount] [int] NOT NULL,
	[DateColum] [varchar](30) NOT NULL,
	[DayCount] [int] NOT NULL,
	[CleanUpActive] [bit] NOT NULL,
	[LastExecuted] [datetime] NULL,
	[LastStatus] [varchar](1000) NULL,
	[InUseBy] [varchar](100) NULL,
	[IsSplit] [bit] NULL,
 CONSTRAINT [PK_Suppliers] PRIMARY KEY CLUSTERED 
(
	[TableName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [hub].[Subscribers]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [hub].[Subscribers](
	[TableName] [varchar](50) NOT NULL,
	[SchemaNameSubscriber] [varchar](10) NOT NULL,
	[FeedbackIsMandatory] [bit] NOT NULL,
	[LastDelivery] [numeric](22, 0) NOT NULL,
 CONSTRAINT [PK_Subscribers] PRIMARY KEY CLUSTERED 
(
	[TableName] ASC,
	[SchemaNameSubscriber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [hub].[CustomViewsConfig]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [hub].[CustomViewsConfig](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[SchemaName] [varchar](10) NOT NULL,
	[TableName] [varchar](100) NOT NULL,
	[Clause] [varchar](20) NOT NULL,
	[SqlCode] [varchar](8000) NOT NULL,
	[ColumnName] [varchar](100) NULL,
	[DatetimeStamp] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_CustomViewsConfig] PRIMARY KEY CLUSTERED 
(
	[SchemaName] ASC,
	[TableName] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [hub].[Exceptions]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [hub].[Exceptions](
	[TableName] [varchar](50) NOT NULL,
	[SchemaName] [varchar](10) NOT NULL,
	[ExceptionType] [varchar](20) NOT NULL,
	[TableAlias] [varchar](50) NULL,
	[NameIndex] [varchar](100) NULL,
	[CodeIndex] [varchar](8000) NULL,
	[ColumnExtra] [varchar](50) NULL,
	[DatatypeExtra] [varchar](30) NULL,
	[StatePermission] [varchar](1) NULL,
	[NamePermission] [varchar](15) NULL,
	[ColumnPermission] [varchar](50) NULL,
	[LoginName] [varchar](500) NULL
) ON [PRIMARY]
GO
/****** Object:  View [hub].[ObjectInfo]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE VIEW [hub].[ObjectInfo] AS
	select
		'[WSDE000873].[HUB_StagingIn]' as EnvironmentName,
		'O' as EnvironmentType,
		case when 'HUB_StagingIn' ='HUB_StagingIn' then 'StagingInDB' else 'StagingOutDB' end as DatabaseType,
	 	'HUB_StagingIn' as DatabaseName ,
		O.type as ObjectType,
		S.name as SchemaName, 
		O.name as ObjectName, 
		O.object_id ,
		M.definition as ViewDefinition,
		O.modify_date,
		O.create_date,
		PF.Name PartitionFunction
	from  HUB_StagingIn.sys.objects O (nolock)
			inner join HUB_StagingIn.sys.schemas S (nolock)
				on S.schema_id=O.schema_id
			left join HUB_StagingIn.sys.sql_modules M (nolock)
				ON M.object_id=O.object_id
				and O.type='V'
			left join HUB_StagingIn.sys.indexes I (nolock)
				on I.object_id=O.object_id 
				and I.type<2
				and O.type='U'
			left join HUB_StagingIn.sys.partition_schemes PS (nolock)
				on PS.data_space_id=I.data_space_id
			left join HUB_StagingIn.sys.partition_functions PF (nolock)
				on PF.function_id=PS.function_id
	where O.type in ('U','V')
		and O.name not in ('sysdiagrams')
	
 UNION 

	select
		'[WSDE000873].[HUB_StagingIn]' as EnvironmentName,
		'O' as EnvironmentType,
		case when 'HUB_StagingOut' ='HUB_StagingIn' then 'StagingInDB' else 'StagingOutDB' end as DatabaseType,
	 	'HUB_StagingOut' as DatabaseName ,
		O.type as ObjectType,
		S.name as SchemaName, 
		O.name as ObjectName, 
		O.object_id ,
		M.definition as ViewDefinition,
		O.modify_date,
		O.create_date,
		PF.Name PartitionFunction
	from  HUB_StagingOut.sys.objects O (nolock)
			inner join HUB_StagingOut.sys.schemas S (nolock)
				on S.schema_id=O.schema_id
			left join HUB_StagingOut.sys.sql_modules M (nolock)
				ON M.object_id=O.object_id
				and O.type='V'
			left join HUB_StagingOut.sys.indexes I (nolock)
				on I.object_id=O.object_id 
				and I.type<2
				and O.type='U'
			left join HUB_StagingOut.sys.partition_schemes PS (nolock)
				on PS.data_space_id=I.data_space_id
			left join HUB_StagingOut.sys.partition_functions PF (nolock)
				on PF.function_id=PS.function_id
	where O.type in ('U','V')
		and O.name not in ('sysdiagrams')
	
GO
/****** Object:  View [hub].[ColumnInfo]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE VIEW [hub].[ColumnInfo] AS
	select 
		'[WSDE000873].[HUB_StagingIn]' as EnvironmentName,
		'O' as EnvironmentType,
		case when 'HUB_StagingIn' ='HUB_StagingIn' then 'StagingInDB' else 'StagingOutDB' end as DatabaseType,
		'HUB_StagingIn'as DatabaseName ,
		S.name as SchemaName, 
		O.type as ObjectType,
		O.name as ObjectName, 
		O.object_id ,
		C.name as ColumnName, 
		RANK() OVER (partition by O.object_id order by C.column_id asc)  as ColumnId,	
		case 
			when ST.xtype in (61,42) then ST.name+ '('+convert(varchar,C.scale)+')'
			when ST.xtype in (40,127,56,52,104,48) then ST.name
			when ST.xtype in(108,106) then 'decimal('+convert(varchar,C.precision)+','+convert(varchar,isnull(C.scale,0))+')'
			when ST.xtype in(167,175) then ST.name+'('+convert(varchar,C.max_length)+')'
			when ST.xtype in(231,239) then ST.name+'('+convert(varchar,C.max_length/2)+')'
			else NULL end + case when C.is_nullable =0 then ' NOT' else '' 
		end + ' NULL' as  DatatypeTotal,
		case 
			when ST.xtype in(108,106) then 'decimal'
			else ST.name 
		end as  Datatype,
		case 
			when ST.xtype in (61,42) then  C.scale
			when ST.xtype in(108,106) then C.precision
			when ST.xtype in(167,175) then C.max_length
			when ST.xtype in(231,239) then C.max_length/2
			else NULL 
		end  as  DatatypeDetail1,
		case 
			when ST.xtype in(108,106) then C.scale
			else NULL 
		end  as  DatatypeDetail2,
		CASE WHEN cc.name IS NOT NULL THEN 0 ELSE C.is_nullable END as is_nullable
	from HUB_StagingIn.sys.objects O (nolock)
		inner join HUB_StagingIn.sys.columns C (nolock)
			on O.object_id=C.object_id
		inner join HUB_StagingIn.sys.schemas S (nolock)
			on S.schema_id=O.schema_id
		inner join HUB_StagingIn.sys.systypes ST (nolock)
			on ST.xusertype=C.user_type_id
		left join HUB_StagingIn.sys.check_constraints cc (nolock)
			on  O.object_id = cc.parent_object_id
			and cc.is_disabled = 0
			and cc.name = O.name + '_' + C.name + '_NOTNULL'
	where S.name not in ('sys')
	and O.type in ('U','V')
	and O.name not in ('sysdiagrams')
	
 UNION 

	select 
		'[WSDE000873].[HUB_StagingIn]' as EnvironmentName,
		'O' as EnvironmentType,
		case when 'HUB_StagingOut' ='HUB_StagingIn' then 'StagingInDB' else 'StagingOutDB' end as DatabaseType,
		'HUB_StagingOut'as DatabaseName ,
		S.name as SchemaName, 
		O.type as ObjectType,
		O.name as ObjectName, 
		O.object_id ,
		C.name as ColumnName, 
		RANK() OVER (partition by O.object_id order by C.column_id asc)  as ColumnId,	
		case 
			when ST.xtype in (61,42) then ST.name+ '('+convert(varchar,C.scale)+')'
			when ST.xtype in (40,127,56,52,104,48) then ST.name
			when ST.xtype in(108,106) then 'decimal('+convert(varchar,C.precision)+','+convert(varchar,isnull(C.scale,0))+')'
			when ST.xtype in(167,175) then ST.name+'('+convert(varchar,C.max_length)+')'
			when ST.xtype in(231,239) then ST.name+'('+convert(varchar,C.max_length/2)+')'
			else NULL end + case when C.is_nullable =0 then ' NOT' else '' 
		end + ' NULL' as  DatatypeTotal,
		case 
			when ST.xtype in(108,106) then 'decimal'
			else ST.name 
		end as  Datatype,
		case 
			when ST.xtype in (61,42) then  C.scale
			when ST.xtype in(108,106) then C.precision
			when ST.xtype in(167,175) then C.max_length
			when ST.xtype in(231,239) then C.max_length/2
			else NULL 
		end  as  DatatypeDetail1,
		case 
			when ST.xtype in(108,106) then C.scale
			else NULL 
		end  as  DatatypeDetail2,
		CASE WHEN cc.name IS NOT NULL THEN 0 ELSE C.is_nullable END as is_nullable
	from HUB_StagingOut.sys.objects O (nolock)
		inner join HUB_StagingOut.sys.columns C (nolock)
			on O.object_id=C.object_id
		inner join HUB_StagingOut.sys.schemas S (nolock)
			on S.schema_id=O.schema_id
		inner join HUB_StagingOut.sys.systypes ST (nolock)
			on ST.xusertype=C.user_type_id
		left join HUB_StagingOut.sys.check_constraints cc (nolock)
			on  O.object_id = cc.parent_object_id
			and cc.is_disabled = 0
			and cc.name = O.name + '_' + C.name + '_NOTNULL'
	where S.name not in ('sys')
	and O.type in ('U','V')
	and O.name not in ('sysdiagrams')
	
GO
/****** Object:  Table [hub].[Deploys]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [hub].[Deploys](
	[DeployType] [varchar](20) NOT NULL,
	[SchemaName] [varchar](10) NOT NULL,
	[TableName] [varchar](50) NOT NULL,
	[ScriptDatetime] [datetime2](7) NULL,
	[DeployDatetime] [datetime2](7) NOT NULL,
	[PXFilename] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  View [hub].[Report]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [hub].[Report] AS 
	select 
		'[WSDE000873].[HUB_StagingIn]' as EnvironmentName,
		'O' as EnvironmentType,
		DatabaseType,
		case when DatabaseType ='StagingInDB' then 'HUB_StagingIn' 
			else 'HUB_StagingOut' 
		end as DatabaseName,
		Type,
		SchemaName,
		TableName,
		MAX(CRC) CRC,
		max(isnull(InConfig,0)) InConfig, 
		max(isnull(InDatabase,0)) InDatabase,
		max(isnull(InDeploy,0)) InDeploy,
		max(isnuLL(SuccessfulDeliveryCount,0)) SuccessfulDeliveryCount,
		max(DateColum) DateColum,
		max(isnull(DayCount,0)) DayCount,
		max(isnull(CleanUpActive,0)) CleanUpActive,
		max(isnull(FeedbackIsMandatory,0)) FeedbackIsMandatory,
		convert(varchar,max(modify_date),120) modify_date,
		case  when max(ScriptDatetime) is null  and not max(DeployDatetime) is null then 'handmatig' else convert(varchar,max(ScriptDatetime),120) end ScriptDatetime,
		convert(varchar,max(DeployDatetime),120) DeployDatetime
	from (
--Supplier configuratie
		select 
			case when N.Location ='E' then 'StagingInDB' 
				else 'StagingOutDB' 
			end DatabaseType,
			'Supplier' Type, 
			SchemaNameSupplier SchemaName, 
			TableName,
			1 InConfig,
			0 InDatabase,
			0 InDeploy,
			SuccessfulDeliveryCount,
			DateColum,
			DayCount,
			CleanUpActive,
			0 FeedbackIsMandatory,
			NULL modify_date,
			NULL ScriptDatetime,
			NULL DeployDatetime,
			convert(bigint,null) CRC
		from hub.Suppliers S (nolock)
			inner join hub.Namespaces N (nolock)
				on N.SchemaName=S.SchemaNameSupplier 
		union
--Subscriber configuratie
		select 
			case when N.Location ='I' then 'StagingInDB' 
				else 'StagingOutDB' 
			end,
			'Subscriber' Type, 
			SchemaNameSubscriber SchemaName,
			TableName,
			1 InConfig
			,0 InDatabase,
			0 InDeploy,
			NULL SuccessfulDeliveryCount,
			NULL DateColum,
			NULL DayCount,
			0 CleanUpActive,
			FeedbackIsMandatory,
			NULL create_date,
			NULL ScriptDatetime,
			NULL DeployDatetime,
			null CRC
		from hub.Subscribers S (nolock)
		inner join hub.Namespaces N (nolock)
		on N.SchemaName=S.SchemaNameSubscriber 
		union
-- Deploy informatie
		select case when D.DeployType ='Supplier'  then
					case when N.Location ='E' then 'StagingInDB' 
						else 'StagingOutDB' 
					end
				else
					case when N.Location ='I' then 'StagingInDB' 
						else 'StagingOutDB' 
					end
				end,
				D.[DeployType] Type, 
				D.SchemaName, 
				D.TableName,
				0 InConfig,
				0 InDatabase,
				1 InDeploy,
				0 SuccessfulDeliveryCount,
				null DateColum,
				0 DayCount,
				0 CleanUpActive,
				0 FeedbackIsMandatory,
				null create_date,
				convert(datetime,D.[ScriptDatetime]) ScriptDatetime, 
				convert(datetime,D.DeployDatetime) DeployDatetime,
				null CRC
		from hub.Deploys D (nolock)
			inner join (
					select [DeployType], 
						SchemaName, 
						TableName,
						max(DeployDatetime) DeployDatetime
					from hub.Deploys (nolock)
					group by 
						[DeployType], 
						SchemaName, 
						TableName) L
					on L.TableName=D.TableName
					and L.SchemaName=D.SchemaName
					and L.DeployDatetime=D.DeployDatetime
					and L.[DeployType]=D.[DeployType]
			inner join hub.Namespaces N (nolock)
				on N.SchemaName=D.SchemaName
		union
-- object informatie
		select  P.ParamName,
			case when O.ObjectType ='U' then 'Supplier' 
				when O.ObjectType ='V' then 'Subscriber' 
				else '' 
			end,
			O.SchemaName,
			O.ObjectName,
			0,
			1,
			0,
			0,
			null,
			null,
			0,
			0,
			modify_date,
			null,
			null,
			NULL CRC
		from hub.ObjectInfo O (nolock)
		inner join hub.Namespaces N (nolock)
			on N.SchemaName=O.SchemaName
			and N.SchemaName not in ('log','XXX')
		left join hub.Exceptions E (nolock)
			on E.ExceptionType='ALIAS'
			and E.TableAlias=O.ObjectName
			and E.SchemaName=O.SchemaName
		inner join  hub.Parameters P (nolock)
			on P.ParamValue=DatabaseName
		where E.SchemaName is null
			and RIGHT(O.ObjectName,1) <>'@' 
		union	
--CRC tables		
		select case when N.Location ='E' then 'StagingInDB' 
			else 'StagingOutDB' end,
			'Supplier',
			B.[SchemaName]
			,[ObjectName],
			0,
			0,
			0,
			0,
			null,
			null,
			0,
			0,
			NULL,
			null,
			null,
			CHECKSUM_AGG (CRC) CRC
		from (		SELECT [SchemaName]
						,[ObjectName]
						,CHECKSUM([SchemaName],[ObjectName],[ColumnName],[DatatypeTotal], row_number() over (partition by [SchemaName],[ObjectName] order by [ColumnId])) CRC
					FROM [hub].[ColumnInfo] (nolock)
					where [ObjectType] ='U'
				UNION 
					SELECT E.SchemaName, E.TableName
						,CHECKSUM(ExceptionType, TableAlias, NameIndex, CodeIndex, ColumnExtra, DatatypeExtra, StatePermission, NamePermission, ColumnPermission)
					FROM hub.Suppliers S(nolock)
						INNER JOIN hub.Exceptions E(nolock)
							ON E.SchemaName=S.SchemaNameSupplier
							AND E.TableName=S.TableName
					) B
				inner join hub.Namespaces N (nolock)
					on N.SchemaName=B.SchemaName
		group by B.[SchemaName]
			,[ObjectName]
			,N.Location
		union
-- CRC views
		select 
			case when N.Location ='I' then 'StagingInDB' 
			else 'StagingOutDB' end,
			'Subscriber',
			B.SchemaName,
			TableName,
			0,
			0,
			0,
			0,
			null,
			null,
			0,
			0,
			NULL,
			null,
			null,
			CHECKSUM_AGG (CRC) CRC
		from (SELECT [SchemaName]
				,[TableName]
				,CHECKSUM(row_number() over (partition by [SchemaName],[TableName] order by [ID]),[SchemaName],[TableName],[Clause],[SqlCode],[ColumnName]) CRC
				FROM [hub].[CustomViewsConfig] (nolock)
			UNION
				select SchemaNameSubscriber , TableName ,CHECKSUM(TableName, SchemaNameSubscriber, FeedbackIsMandatory)
				from hub.Subscribers (nolock)
			UNION 
				SELECT E.SchemaName, E.TableName
					,CHECKSUM(ExceptionType, TableAlias, NameIndex, CodeIndex, ColumnExtra, DatatypeExtra, StatePermission, NamePermission, ColumnPermission)
				FROM hub.Subscribers S(nolock)
					INNER JOIN hub.Exceptions E(nolock)
						ON E.SchemaName=S.SchemaNameSubscriber
						AND E.TableName=S.TableName) B
				inner join hub.Namespaces N (nolock)
					on N.SchemaName=B.SchemaName
		group by 
			B.[SchemaName]
			,[TableName]
			,N.Location	
			 )B
	where TableName <>'sysdiagrams'
	group by DatabaseType,
		Type,
		SchemaName,
		TableName
GO
/****** Object:  View [hub].[PartitionInfo]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE VIEW [hub].[PartitionInfo] AS
SELECT 
	'[WSDE000873].[HUB_StagingIn]' as EnvironmentName,
	'O' as EnvironmentType,
	case when 'HUB_StagingIn' ='HUB_StagingIn' then 'StagingInDB' else 'StagingOutDB' end as DatabaseType,
	'HUB_StagingIn' DatabaseName, 
	S.name SchemaName, 
	O.name TableName, 
	P.partition_id PartitionId, 
	P.partition_number PartitionNumber, 
	P.rows Records, 
	PRV.value UpperBoundary,
	AU.used_pages Pages,
	I.data_space_id,
	PF.name PartitionFunction
from HUB_StagingIn.sys.partitions P(nolock)
	inner join HUB_StagingIn.sys.objects O(nolock)
		on P.object_id=O.object_id
	inner join HUB_StagingIn.sys.indexes I (nolock)
		on I.object_id=O.object_id 
		and P.index_id=I.index_id 
		and I.type<2
	inner join HUB_StagingIn.sys.schemas S(nolock)
		on S.schema_id=O.schema_id
		and S.name not in ('log','hub','XXX')
	inner join HUB_StagingIn.hub.Namespaces N(nolock)
		on S.name =N.SchemaName
	INNER JOIN HUB_StagingIn.sys.allocation_units AU (nolock)
		ON P.partition_id = AU.container_id
		and AU.type=1	
	left join HUB_StagingIn.sys.partition_schemes PS (nolock)
		ON PS.data_space_id=I.data_space_id
	left join HUB_StagingIn.sys.partition_functions PF(nolock) 
		on  PF.function_id=PS.function_id
	left join HUB_StagingIn.sys.partition_range_values PRV (nolock)
		on PF.function_id=PRV.function_id
		and PRV.boundary_id=P.partition_number
where 	P.rows>0 			
 UNION 

SELECT 
	'[WSDE000873].[HUB_StagingIn]' as EnvironmentName,
	'O' as EnvironmentType,
	case when 'HUB_StagingOut' ='HUB_StagingIn' then 'StagingInDB' else 'StagingOutDB' end as DatabaseType,
	'HUB_StagingOut' DatabaseName, 
	S.name SchemaName, 
	O.name TableName, 
	P.partition_id PartitionId, 
	P.partition_number PartitionNumber, 
	P.rows Records, 
	PRV.value UpperBoundary,
	AU.used_pages Pages,
	I.data_space_id,
	PF.name PartitionFunction
from HUB_StagingOut.sys.partitions P(nolock)
	inner join HUB_StagingOut.sys.objects O(nolock)
		on P.object_id=O.object_id
	inner join HUB_StagingOut.sys.indexes I (nolock)
		on I.object_id=O.object_id 
		and P.index_id=I.index_id 
		and I.type<2
	inner join HUB_StagingOut.sys.schemas S(nolock)
		on S.schema_id=O.schema_id
		and S.name not in ('log','hub','XXX')
	inner join HUB_StagingOut.hub.Namespaces N(nolock)
		on S.name =N.SchemaName
	INNER JOIN HUB_StagingOut.sys.allocation_units AU (nolock)
		ON P.partition_id = AU.container_id
		and AU.type=1	
	left join HUB_StagingOut.sys.partition_schemes PS (nolock)
		ON PS.data_space_id=I.data_space_id
	left join HUB_StagingOut.sys.partition_functions PF(nolock) 
		on  PF.function_id=PS.function_id
	left join HUB_StagingOut.sys.partition_range_values PRV (nolock)
		on PF.function_id=PRV.function_id
		and PRV.boundary_id=P.partition_number
where 	P.rows>0 			
GO
/****** Object:  View [hub].[CoreInfo]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [hub].[CoreInfo] AS
with 
Parameters as (select 
		'[WSDE000873].[HUB_StagingIn]' as  Omgeving,
		max(case when P1.ParamName='Environment' then P1.ParamValue else null end) EnvironmentType,
		max(case when P1.ParamName='StagingInDB' then P1.ParamValue else null end) StagingInDB,
		max(case when P1.ParamName='StagingOutDB' then P1.ParamValue else null end) StagingOutDB
		,P2.ParamValue DatabaseName, 
		P2.ParamName DatabaseType
		from HUB_StagingIn.hub.Parameters P1(nolock)
	cross join HUB_StagingIn.hub.Parameters P2 (nolock)
	where P2.ParamName in ('StagingOutDB','StagingInDB')
	group by P2.ParamValue,P2.ParamName
		),
objects as (select 'HUB_StagingIn' DBN, * from HUB_StagingIn.sys.objects(nolock)
		UNION select 'HUB_StagingOut' DBN, * from HUB_StagingOut.sys.objects(nolock)),
schemas as (select 'HUB_StagingIn' DBN, * from HUB_StagingIn.sys.schemas(nolock)
		UNION select 'HUB_StagingOut' DBN, * from HUB_StagingOut.sys.schemas(nolock)),
columns as (select 'HUB_StagingIn' DBN, * from HUB_StagingIn.sys.columns(nolock)
		UNION select 'HUB_StagingOut' DBN, * from HUB_StagingOut.sys.columns(nolock)),
sql_module as (select 'HUB_StagingIn' DBN, * from HUB_StagingIn.sys.sql_modules(nolock)
		UNION select 'HUB_StagingOut' DBN, * from HUB_StagingOut.sys.sql_modules(nolock)),
sql_modules AS (SELECT  DBN, object_id,  lower(REPLACE(REPLACE(REPLACE(REPLACE(definition,' ',''), CHAR(13),''), CHAR(10),''), CHAR(9),'')) definition FROM sql_module),
synonyms as (select 'HUB_StagingIn' DBN, * from HUB_StagingIn.sys.synonyms(nolock)
		UNION select 'HUB_StagingOut' DBN, * from HUB_StagingOut.sys.synonyms(nolock)),
check_constraints as (select 'HUB_StagingIn' DBN, * from HUB_StagingIn.sys.check_constraints(nolock)
		UNION select 'HUB_StagingOut' DBN, * from HUB_StagingOut.sys.check_constraints(nolock)),
foreign_keys as (select 'HUB_StagingIn' DBN, * from HUB_StagingIn.sys.foreign_keys(nolock)
		UNION select 'HUB_StagingOut' DBN, * from HUB_StagingOut.sys.foreign_keys(nolock)),
foreign_key_columns as (select 'HUB_StagingIn' DBN, * from HUB_StagingIn.sys.foreign_key_columns(nolock)
		UNION select 'HUB_StagingOut' DBN, * from HUB_StagingOut.sys.foreign_key_columns(nolock)),
indexes as (select 'HUB_StagingIn' DBN, * from HUB_StagingIn.sys.indexes(nolock)
		UNION select 'HUB_StagingOut' DBN, * from HUB_StagingOut.sys.indexes(nolock)),
index_columns as (select 'HUB_StagingIn' DBN, * from HUB_StagingIn.sys.index_columns(nolock)
		UNION select 'HUB_StagingOut' DBN, * from HUB_StagingOut.sys.index_columns(nolock))
select  Omgeving EnvironmentName , EnvironmentType, DatabaseType , P.DatabaseName, 
		'HubVersion' ObjectType,convert(varchar(100),'NVT')SchemaName,convert(varchar(100),'NVT') ObjectName, convert(varchar(100),ParamValue) CRC  from HUB_StagingIn.hub.Parameters P1(nolock)
	inner join Parameters P(nolock)
	on DatabaseName='HUB_StagingIn'
where ParamName='HubVersion'
UNION
select  max(Omgeving), max(EnvironmentType),max(DatabaseType) ,O.DBN, 
	'Tables' ObjectType,
	S.name SchemaName,
	O.name TableName,
	CHECKSUM_AGG(checksum(C.name,C.column_id2, C.system_type_id, C.user_type_id, C.max_length, C.precision, C.scale, C.collation_name, C.is_nullable, C.is_ansi_padded, C.is_rowguidcol, C.is_identity, C.is_computed, C.is_filestream, C.is_replicated, C.is_non_sql_subscribed, C.is_merge_published, C.is_dts_replicated, C.is_xml_document, C.xml_collection_id, C.rule_object_id, C.is_sparse, C.is_column_set)) CRC
from objects O
	inner join schemas S
		on O.schema_id=S.schema_id
		and S.name in ('hub','log')
		and O.DBN=S.DBN
	inner join ( select *, ROW_NUMBER() over (partition by DBN, object_id order by column_id asc) column_id2 from columns) C
		on C.object_id=O.object_id
		and O.DBN=C.DBN
	inner join Parameters P
	on O.DBN=DatabaseName
where O.type='U'
group by S.name, O.name,O.DBN
UNION
select   max(Omgeving), max(EnvironmentType),max(DatabaseType) ,O.DBN, 
		case when O.type ='V' then 'Views'
			when O.type in ('IF','FN','TF') then 'Function'
			when O.type ='P ' then 'Procedure'
			when O.type ='TR' then 'Trigger'
			else  O.type end,
	S.name SchemaName, O.name ObjectName
	,CHECKSUM_AGG(checksum(replace(replace(
		replace( replace( replace( replace(convert(varchar(max), M.definition)
		,'''O''','''X''')
		,'''T''','''X''')
		,'''A''','''X''')
		,'''P''','''X''')
		,P.StagingInDB,'StagingInDB'),P.StagingOutDB,'StagingOutDB')))
from objects O
	inner join schemas S
		on O.schema_id=S.schema_id
		and S.name in ('hub','log','dbo')
		and O.DBN=S.DBN
	inner join sql_modules M (nolock)
		ON M.object_id=O.object_id
		and M.DBN=S.DBN
	inner join Parameters P
		on O.DBN=DatabaseName
		where not (S.name ='dbo' and O.type ='V')
		and not (O.name not like 'stp%' and O.type ='P')
		and not (O.name not like 'Fn%' and O.type in ('IF','FN'))
		and O.name <>'fn_diagramobjects'
group by O.type, S.name, O.name , O.DBN
UNION
select   max(Omgeving), max(EnvironmentType),max(DatabaseType) ,FK.DBN, 
		'ForeignKey',
	FKS.name SchemaName,
	FK.name ObjectName,
	CHECKSUM_AGG(checksum(POS.name,PO.name, POC.name,ROS.name,RO.name,ROC.name))
from foreign_keys FK
inner join schemas FKS
	on FKS.schema_id=FK.schema_id
	and FKS.name in ('hub','log')
	and FK.DBN=FKS.DBN
inner join foreign_key_columns FKC
	on FKC.constraint_object_id=FK.object_id
	and FK.DBN=FKC.DBN
inner join objects PO
	on PO.object_id=FK.parent_object_id
	and PO.DBN=FK.DBN
inner join schemas POS
	on POS.schema_id=PO.schema_id
	and POS.DBN=PO.DBN
inner join columns POC
	on POC.column_id =FKC.parent_column_id
	and POC.object_id = FKC.parent_object_id
	and POC.DBN=FKC.DBN
inner join objects RO
	on RO.object_id=FKC.referenced_object_id
	and RO.DBN=FKC.DBN
inner join schemas ROS
	on ROS.schema_id=PO.schema_id
	and ROS.DBN=PO.DBN
inner join columns ROC
	on ROC.column_id =FKC.referenced_column_id
	and ROC.object_id = FKC.referenced_object_id
	and ROC.DBN=FKC.DBN
	inner join Parameters P
	on FK.DBN=DatabaseName
group by FKS.name, FK.name , FK.DBN

UNION
select   max(Omgeving), max(EnvironmentType),max(DatabaseType) ,I.DBN, 
		lower(I.type_desc)+ 'Index',
	S.name SchemaName,
	I.name ObjectName,
	CHECKSUM_AGG(checksum(
	I.is_unique,
	I.ignore_dup_key,
	I.ignore_dup_key,
	I.is_unique_constraint,
	I.is_padded,
	I.allow_page_locks,
	I.allow_row_locks,
	I.has_filter,
	I.filter_definition,
	IC.index_column_id,
	IC.is_descending_key,
	IC.is_included_column,
	IC.key_ordinal,
	IC.partition_ordinal,
	C.name))
from indexes I
	inner join objects O
		on O.object_id=I.object_id
		and O.DBN=I.DBN
	inner join schemas S
		on O.schema_id=S.schema_id
		and S.name in ('hub','log')
		and O.DBN=S.DBN
	inner join index_columns IC
		on IC.index_id=I.index_id
		and IC.object_id=I.object_id
		and IC.DBN=I.DBN
	inner join columns C
		on C.object_id=O.object_id
		and C.column_id=IC.column_id
		and C.DBN=IC.DBN
	inner join Parameters P
	on I.DBN=DatabaseName
group by I.DBN,
lower(I.type_desc),
	S.name,
	I.name
UNION
select   max(Omgeving), max(EnvironmentType),max(DatabaseType) ,O.DBN, 
		'synonyms',
	S.name, 
	O.name,
	CHECKSUM_AGG(checksum(
	O.is_ms_shipped,
	O.is_published,
	O.is_schema_published,
		replace(replace(O.base_object_name,P.StagingInDB,'StagingInDB'),P.StagingOutDB,'StagingOutDB')
	))	
from synonyms O
	inner join schemas S
		on O.schema_id=S.schema_id
		and S.name in ('hub','log')
		and O.DBN=S.DBN
	inner join Parameters P
	on O.DBN=DatabaseName
group by O.DBN,
	S.name,
	O.name

UNION
select   max(Omgeving), max(EnvironmentType),max(DatabaseType) ,O.DBN, 
		lower(CC.type_desc),
	S.name,
	O.name+'.'+ CC.name,  CHECKSUM_AGG(checksum(CC.is_ms_shipped,CC.is_published, CC.is_schema_published,CC.is_disabled, CC.is_not_for_replication, CC.is_not_trusted,CC.definition, CC.uses_database_collation, CC.is_system_named) )
from check_constraints CC
inner join objects O
on O.object_id=CC.parent_object_id 
and O.DBN=CC.DBN
inner join schemas S
on S.schema_id=O.schema_id
and S.name in ('hub','log')
and O.DBN=S.DBN
	inner join Parameters P
	on O.DBN=DatabaseName
	group by 
	O.DBN, CC.type_desc, S.name, O.name, CC.name
GO
/****** Object:  Table [hub].[PartitionContent]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [hub].[PartitionContent](
	[TableName] [varchar](50) NOT NULL,
	[PartitionId] [bigint] NOT NULL,
	[Records] [bigint] NOT NULL,
	[DELIVERY_SQN] [decimal](22, 0) NULL,
	[ACT_DTS] [datetime2](7) NULL,
	[STI_LOAD_DTS] [datetime2](7) NULL,
	[LOAD_DTS] [datetime2](7) NULL
) ON [PRIMARY]
GO
/****** Object:  View [hub].[PointerInfo]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [hub].[PointerInfo] AS
	with 
	Valids AS (
		SELECT DISTINCT TRG_ENT_NM TableName, DELIVERY_SQN_CRNT_RUN DELIVERY_SQN 
		FROM log.LOG_DD_DATA_DELIVERY (nolock)
		WHERE LOAD_ST_CODE='DLV OK'),
	DLVs AS (
		SELECT DISTINCT TableName 
		FROM Valids),
	Deliveries AS (
		SELECT A.SchemaNameSubscriber SchemaName, A.TableName, PC.DELIVERY_SQN ,PC.ACT_DTS, PC.Records,
		CASE WHEN DLVs.TableName IS NULL THEN 'Valids'
				WHEN not Valids.TableName IS NULL THEN 'Valids'
				ELSE 'SKIP' END Visibility,
			CASE WHEN FeedbackIsMandatory=1 THEN 
				CASE WHEN LastDelivery>= PC.DELIVERY_SQN THEN 'DONE' 
					ELSE 'TODO' END
			ELSE 'RIVER' END pointer, A.LastDelivery
		FROM ( select TableName,DELIVERY_SQN,ACT_DTS, sum(Records )Records  from hub.PartitionContent (nolock) group by TableName,DELIVERY_SQN,ACT_DTS ) PC
			INNER JOIN hub.Subscribers A(nolock)
				ON A.TableName=PC.TableName
			LEFT JOIN DLVs
				ON DLVs.TableName=PC.TableName
			LEFT JOIN Valids
				ON Valids.TableName=PC.TableName AND Valids.DELIVERY_SQN=PC.DELIVERY_SQN	),
	Volgende AS (
		SELECT SchemaName, TableName, MIN(DELIVERY_SQN) DELIVERY_SQN  
		FROM Deliveries  
		WHERE pointer='TODO' 
			AND Visibility ='Valids' 
		GROUP BY SchemaName, TableName)
SELECT 
	D.SchemaName, 
	D.TableName, 
	D.DELIVERY_SQN, 
	D.Records, 
	D.ACT_DTS,
	CASE WHEN pointer='RIVER' AND Visibility='Valids' THEN 'RIVER'
		WHEN pointer='RIVER' AND Visibility<> 'Valids'THEN 'SKIP'
		WHEN Visibility='SKIP' THEN Visibility
		WHEN pointer='DONE' THEN pointer
		WHEN D.DELIVERY_SQN=V.DELIVERY_SQN THEN 'NEXT'
		WHEN D.LastDelivery<D.DELIVERY_SQN AND Visibility<>'SKIP' THEN pointer
	ELSE 'XXX' END  pointer
FROM Deliveries D
	LEFT JOIN Volgende V
		ON V.SchemaName=D.SchemaName AND V.TableName=D.TableName AND V.DELIVERY_SQN=D.DELIVERY_SQN 
GO
/****** Object:  View [hub].[DeliveryInfo]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create view [hub].[DeliveryInfo] as
	with 
	Valids AS (
		SELECT DISTINCT TRG_ENT_NM TableName, DELIVERY_SQN_CRNT_RUN DELIVERY_SQN 
		FROM log.LOG_DD_DATA_DELIVERY (nolock)
		WHERE LOAD_ST_CODE='DLV OK'),
	DLVs AS (
		SELECT DISTINCT TableName 
		FROM Valids),
		
		SplitOK as (select distinct TABLENAME TableName, DELIVERY_SQN from [log].[SPLITTER_SPLIT_LOG] where STATUS='SUCCEEDED'),
		SplitNeeded as (
			select CVC.SchemaName, CVC.TableName 
		from hub.CustomViewsConfig CVC
			inner join hub.Suppliers S
				on  S.TableName = CVC.TableName
				and S.IsSplit = 1
		where Clause='WHERE' 
			and SqlCode like '%DST_CODE%'),	
		Deliveries AS (
		SELECT A.SchemaNameSubscriber SchemaName, A.TableName, PC.DELIVERY_SQN ,PC.ACT_DTS, PC.Records,
		CASE WHEN not DLVs.TableName IS NULL and Valids.TableName IS NULL THEN 'SKIP'
			WHEN not SN.TableName IS NULL and SO.TableName IS NULL THEN 'SPLIT_NOK'
			ELSE 'Valids' END Visibility,
		CASE WHEN FeedbackIsMandatory=1 THEN 
				CASE WHEN LastDelivery>= PC.DELIVERY_SQN THEN 'DONE' 
					ELSE 'TODO' END
			ELSE 'RIVER' END pointer, A.LastDelivery
		FROM ( select TableName,DELIVERY_SQN,ACT_DTS, sum(Records )Records  from hub.PartitionContent (nolock) group by TableName,DELIVERY_SQN,ACT_DTS ) PC
			INNER JOIN hub.Subscribers A(nolock)
				ON A.TableName=PC.TableName
			LEFT JOIN DLVs
				ON DLVs.TableName=PC.TableName
			LEFT JOIN Valids
				ON Valids.TableName=PC.TableName AND Valids.DELIVERY_SQN=PC.DELIVERY_SQN
			left join SplitNeeded SN
				on SN.TableName= A.TableName
				and SN.SchemaName=A.SchemaNameSubscriber
			left join SplitOK SO
				on SO.TableName=A.TableName
				and SO.DELIVERY_SQN=PC.DELIVERY_SQN
				),
	Volgende AS (
		SELECT SchemaName, TableName, MIN(DELIVERY_SQN) DELIVERY_SQN  
		FROM Deliveries  
		WHERE pointer='TODO' 
			AND Visibility ='Valids' 
		GROUP BY SchemaName, TableName)
SELECT 
	D.SchemaName, 
	D.TableName, 
	D.DELIVERY_SQN, 
	D.Records, 
	D.ACT_DTS,
	CASE WHEN pointer='RIVER' AND Visibility='Valids' THEN 'RIVER'
		WHEN Visibility<> 'Valids' THEN Visibility
		WHEN pointer='DONE' THEN pointer
		WHEN D.DELIVERY_SQN=V.DELIVERY_SQN THEN 'NEXT'
		WHEN D.LastDelivery<D.DELIVERY_SQN THEN pointer
	ELSE 'XXX' END  pointer
FROM Deliveries D
	LEFT JOIN Volgende V
		ON V.SchemaName=D.SchemaName AND V.TableName=D.TableName AND V.DELIVERY_SQN=D.DELIVERY_SQN	
GO
/****** Object:  View [hub].[ConstraintInfo]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE VIEW [hub].[ConstraintInfo] AS
	select 
		'[WSDE000873].[HUB_StagingIn]' as EnvironmentName,
		'O' as EnvironmentType,
		case when 'HUB_StagingIn' ='HUB_StagingIn' then 'StagingInDB' else 'StagingOutDB' end as DatabaseType,
	 	'HUB_StagingIn' as DatabaseName ,
		S.name as SchemaName, 
		O.type as ObjectType,
		O.name as ObjectName,
		CC.name as ConstraintName,
		CC.definition as ConstraintDefinition,
		CC.is_not_trusted as WithNoCheck
from HUB_StagingIn.sys.check_constraints CC (nolock)
	inner join HUB_StagingIn.sys.objects O (nolock)
		on CC.parent_object_id=O.object_id
	inner join HUB_StagingIn.sys.schemas S (nolock)
		on S.schema_id=O.schema_id
	
 UNION 

	select 
		'[WSDE000873].[HUB_StagingIn]' as EnvironmentName,
		'O' as EnvironmentType,
		case when 'HUB_StagingOut' ='HUB_StagingIn' then 'StagingInDB' else 'StagingOutDB' end as DatabaseType,
	 	'HUB_StagingOut' as DatabaseName ,
		S.name as SchemaName, 
		O.type as ObjectType,
		O.name as ObjectName,
		CC.name as ConstraintName,
		CC.definition as ConstraintDefinition,
		CC.is_not_trusted as WithNoCheck
from HUB_StagingOut.sys.check_constraints CC (nolock)
	inner join HUB_StagingOut.sys.objects O (nolock)
		on CC.parent_object_id=O.object_id
	inner join HUB_StagingOut.sys.schemas S (nolock)
		on S.schema_id=O.schema_id
	
GO
/****** Object:  View [hub].[DlvInfo]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [hub].[DlvInfo] AS
SELECT 
	SRC_ENT_NM,
	SRC_DELIVR_TP_CODE,
	SRC_DELIVR_INTRVL_CODE,
	TRG_ENT_DATABASE,
	TRG_ENT_SCHEMA,
	TRG_ENT_NM,
	MAPPING_NM,
	CHECKS,
	 LTRIM(RTRIM(
	 REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(
		SUBSTRING(UNIQUE_KEY_SQL,1,CHARINDEX('HAVING',UNIQUE_KEY_SQL)-1)
		,char(10),' ')   ,char(32),' ')    ,char(13),' ')    ,char(10),' ')   ,'  ',' ')    ,'  ',' '))) UNIQUE_KEY
FROM (
	SELECT 
		TE.TRG_ENT_DATABASE, 
		SE.SRC_ENT_NM, 
		TE.TRG_ENT_NM, 
		TE.TRG_ENT_SCHEMA,
		SE.SRC_DELIVR_TP_CODE,
		SE.SRC_DELIVR_INTRVL_CODE,
		TE.MAPPING_NM,
		SUBSTRING(TE.UNIQUE_KEY_SQL, CHARINDEX('TRG_ID,',UNIQUE_KEY_SQL,CHARINDEX('GROUP BY',UNIQUE_KEY_SQL))+7,1000) UNIQUE_KEY_SQL,
		REPLACE (REPLACE ((	
			SELECT 
				DLV_RULE_NO X 
			FROM log.CONF_DLV_STR_MAP_RULE MR
				INNER JOIN log.CONF_DLV_RULE R
					on MR.DLV_RULE_ID=R.DLV_RULE_ID
			WHERE 
				MR.IND_PERFORM_RULE_YN='Y'
				and TRG_ID=TE.TRG_ID
			ORDER BY 
				R.DLV_RULE_ID 
			FOR XML auto
		),'<R X="',''),'"/>',';') CHECKS
	FROM			log.CONF_MD_TARGET_ENTITY TE(nolock)
		INNER JOIN	log.CONF_MD_SOURCE_ENTITY SE(nolock)
			on TE.SRC_ID=SE.SRC_ID) B		
GO
/****** Object:  View [hub].[IndexInfo]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE VIEW [hub].[IndexInfo] AS

		select distinct
		'[WSDE000873].[HUB_StagingIn]' as EnvironmentName,
		'O' as EnvironmentType,
		MAX(case when 'HUB_StagingIn' ='HUB_StagingIn' then 'StagingInDB' else 'StagingOutDB' end) as DatabaseType,
		'HUB_StagingIn' as DatabaseName
		,max(B.SchemaName) as SchemaName
		,max(B.ObjectName) as ObjectName
		,B.object_id
		,max(B.IndexType) as IndexType
		,max(B.IndexName) as IndexName
		,max(B.is_unique) is_unique
		,replace(replace(replace((
				select C.name X
				from HUB_StagingIn.sys.index_columns IC
					inner join HUB_StagingIn.sys.columns C
						on IC.column_id=C.column_id
						and IC.object_id=C.object_id
				where IC.index_id=B.index_id
					and IC.object_id=B.object_id
				order by IC.key_ordinal, IC.index_column_id for xml auto),'"/><C X="',', '),'<C X="',''),'"/>','') IndexColumns
		,max(case when B.data_compression=0 then 1 else 0 end) HasNoCompression
		,max(case when B.data_compression=1 then 1 else 0 end) HasRowCompression
		,max(case when B.data_compression=2 then 1 else 0 end) HasPageCompression
		,max(HUB_StagingIn.hub.Fn_StatisticDateTime (B.[object_id], B.index_id)) StatisticDateTime
		,max(PS.name) PartitionScheme
		,max(PF.name)  PartitionFunction	
    FROM	(	select distinct
				O.object_id, 
				O.name ObjectName, 
				S.name  SchemaName, 
				I.type_desc IndexType, 
				I.name IndexName, 
				convert(tinyint,I.is_unique) is_unique, 
				I.index_id, 
				P.data_compression, 
				I.data_space_id
		from 		HUB_StagingIn.sys.objects O(nolock)
		inner join HUB_StagingIn.sys.schemas S(nolock)
			on S.schema_id=O.schema_id
			and  O.type ='U'
			and O.name not in ('sysdiagrams')
		INNER JOIN HUB_StagingIn.sys.indexes			I(nolock)
			on I.object_id=O.object_id
		INNER JOIN  HUB_StagingIn.sys.partitions		P(nolock)
			ON P.object_id = I.object_id
			AND P.index_id = I.index_id
			) B
		left join HUB_StagingIn.sys.partition_schemes PS (nolock)
			on PS.data_space_id=B.data_space_id
		left join HUB_StagingIn.sys.partition_functions PF (nolock)
			on PF.function_id=PS.function_id
	group by 
	B.object_id, B.index_id

 UNION 


		select distinct
		'[WSDE000873].[HUB_StagingIn]' as EnvironmentName,
		'O' as EnvironmentType,
		MAX(case when 'HUB_StagingOut' ='HUB_StagingIn' then 'StagingInDB' else 'StagingOutDB' end) as DatabaseType,
		'HUB_StagingOut' as DatabaseName
		,max(B.SchemaName) as SchemaName
		,max(B.ObjectName) as ObjectName
		,B.object_id
		,max(B.IndexType) as IndexType
		,max(B.IndexName) as IndexName
		,max(B.is_unique) is_unique
		,replace(replace(replace((
				select C.name X
				from HUB_StagingOut.sys.index_columns IC
					inner join HUB_StagingOut.sys.columns C
						on IC.column_id=C.column_id
						and IC.object_id=C.object_id
				where IC.index_id=B.index_id
					and IC.object_id=B.object_id
				order by IC.key_ordinal, IC.index_column_id for xml auto),'"/><C X="',', '),'<C X="',''),'"/>','') IndexColumns
		,max(case when B.data_compression=0 then 1 else 0 end) HasNoCompression
		,max(case when B.data_compression=1 then 1 else 0 end) HasRowCompression
		,max(case when B.data_compression=2 then 1 else 0 end) HasPageCompression
		,max(HUB_StagingOut.hub.Fn_StatisticDateTime (B.[object_id], B.index_id)) StatisticDateTime
		,max(PS.name) PartitionScheme
		,max(PF.name)  PartitionFunction	
    FROM	(	select distinct
				O.object_id, 
				O.name ObjectName, 
				S.name  SchemaName, 
				I.type_desc IndexType, 
				I.name IndexName, 
				convert(tinyint,I.is_unique) is_unique, 
				I.index_id, 
				P.data_compression, 
				I.data_space_id
		from 		HUB_StagingOut.sys.objects O(nolock)
		inner join HUB_StagingOut.sys.schemas S(nolock)
			on S.schema_id=O.schema_id
			and  O.type ='U'
			and O.name not in ('sysdiagrams')
		INNER JOIN HUB_StagingOut.sys.indexes			I(nolock)
			on I.object_id=O.object_id
		INNER JOIN  HUB_StagingOut.sys.partitions		P(nolock)
			ON P.object_id = I.object_id
			AND P.index_id = I.index_id
			) B
		left join HUB_StagingOut.sys.partition_schemes PS (nolock)
			on PS.data_space_id=B.data_space_id
		left join HUB_StagingOut.sys.partition_functions PF (nolock)
			on PF.function_id=PS.function_id
	group by 
	B.object_id, B.index_id
GO
/****** Object:  View [hub].[PartitionFunctionInfo]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE VIEW [hub].[PartitionFunctionInfo] AS
	select
		'[WSDE000873].[HUB_StagingIn]' as EnvironmentName,
		'O' as EnvironmentType,
		case when 'HUB_StagingIn' ='HUB_StagingIn' then 'StagingInDB' else 'StagingOutDB' end as DatabaseType,
	 	'HUB_StagingIn' as DatabaseName ,
		PF.name PartitionFunction, 
		PS.name PartitionSchema, 
		P.data_space_id,
		PRV.value UpperBoundary, 
		PRV.boundary_id PartitionNumber, 
		isnull(P.Rows,0) Rows
from HUB_StagingIn.sys.partition_range_values PRV(nolock)
	INNER JOIN HUB_StagingIn.sys.partition_schemes PS (nolock)
		ON PS.function_id = PRV.function_id
	INNER JOIN HUB_StagingIn.sys.partition_functions PF (nolock)
		on PF.function_id=PS.function_id
	LEFT JOIN (
			select data_space_id, P.partition_number, SUM(P.rows) Rows
			from HUB_StagingIn.sys.indexes I (nolock)
				INNER JOIN HUB_StagingIn.sys.partitions  P (nolock)
					on P.index_id=I.index_id
				INNER JOIN HUB_StagingIn.sys.objects O (nolock)
					on O.object_id=P.object_id
					and O.type ='U'
					and I.object_id=O.object_id
			where I.type<2
			GROUP BY data_space_id, P.partition_number) P
		on PS.data_space_id=P.data_space_id	
		and P.partition_number=PRV.boundary_id

	
 UNION 

	select
		'[WSDE000873].[HUB_StagingIn]' as EnvironmentName,
		'O' as EnvironmentType,
		case when 'HUB_StagingOut' ='HUB_StagingIn' then 'StagingInDB' else 'StagingOutDB' end as DatabaseType,
	 	'HUB_StagingOut' as DatabaseName ,
		PF.name PartitionFunction, 
		PS.name PartitionSchema, 
		P.data_space_id,
		PRV.value UpperBoundary, 
		PRV.boundary_id PartitionNumber, 
		isnull(P.Rows,0) Rows
from HUB_StagingOut.sys.partition_range_values PRV(nolock)
	INNER JOIN HUB_StagingOut.sys.partition_schemes PS (nolock)
		ON PS.function_id = PRV.function_id
	INNER JOIN HUB_StagingOut.sys.partition_functions PF (nolock)
		on PF.function_id=PS.function_id
	LEFT JOIN (
			select data_space_id, P.partition_number, SUM(P.rows) Rows
			from HUB_StagingOut.sys.indexes I (nolock)
				INNER JOIN HUB_StagingOut.sys.partitions  P (nolock)
					on P.index_id=I.index_id
				INNER JOIN HUB_StagingOut.sys.objects O (nolock)
					on O.object_id=P.object_id
					and O.type ='U'
					and I.object_id=O.object_id
			where I.type<2
			GROUP BY data_space_id, P.partition_number) P
		on PS.data_space_id=P.data_space_id	
		and P.partition_number=PRV.boundary_id

	
GO
/****** Object:  View [hub].[PermissionInfo]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE VIEW [hub].[PermissionInfo] AS
	select 
		'[WSDE000873].[HUB_StagingIn]' as EnvironmentName,
		'O' as EnvironmentType,
		case when 'HUB_StagingIn' ='HUB_StagingIn' then 'StagingInDB' else 'StagingOutDB' 
		end as DatabaseType,
		'HUB_StagingIn' as DatabaseName,
		Prin.name as LoginName,
		case when minor_id =0 then 'OBJECT' else 'COLUMN' 
		end collate Latin1_General_100_BIN AS ClassDescription ,
		Perm.permission_name collate Latin1_General_100_BIN as permission_name, 
		Perm.state_desc collate Latin1_General_100_BIN as state_desc,
		S.name as SchemaName,
		T.name as TableName,
		C.name as ColumnName
	from HUB_StagingIn.sys.database_principals Prin (nolock)
		INNER JOIN HUB_StagingIn.sys.database_permissions Perm (nolock)
			on Prin.principal_id= Perm.grantee_principal_id
		INNER JOIN HUB_StagingIn.sys.objects T (nolock)
			on T.object_id=Perm.major_id
		INNER JOIN HUB_StagingIn.sys.schemas S (nolock)
			on S.schema_id=T.schema_id 
		left join HUB_StagingIn.sys.columns C (nolock)
			on T.object_id=C.object_id
			and C.column_id =Perm.minor_id
		where Perm.class=1
	union
	SELECT 
		'[WSDE000873].[HUB_StagingIn]' as EnvironmentName,
		'O' as EnvironmentType,
		case when 'HUB_StagingIn' ='HUB_StagingIn' then 'StagingInDB' else 'StagingOutDB' end as DatabaseType,
		'HUB_StagingIn' as DatabaseName,
		Prin.name as LoginName,
		Perm.class_desc,
		Perm.permission_name, 
		Perm.state_desc ,
		S.name as SchemaName,
		NULL,
		NULL
	from HUB_StagingIn.sys.database_principals Prin (nolock)
		INNER JOIN HUB_StagingIn.sys.database_permissions Perm (nolock)
			on Prin.principal_id= Perm.grantee_principal_id
		INNER JOIN HUB_StagingIn.sys.schemas S (nolock)
			on  S.schema_id=Perm.major_id
	where Perm.class=3
	union
	select 
		'[WSDE000873].[HUB_StagingIn]' as EnvironmentName,
		'O' as EnvironmentType,
		case when 'HUB_StagingIn' ='HUB_StagingIn' then 'StagingInDB' else 'StagingOutDB' end as DatabaseType,
		'HUB_StagingIn' as DatabaseName,
		Prin.name as LoginName,
		Perm.class_desc,
		Perm.permission_name, 
		Perm.state_desc ,
		NULL,
		NULL,
		NULL
	FROM HUB_StagingIn.sys.database_principals Prin (nolock)
		INNER JOIN HUB_StagingIn.sys.database_permissions Perm (nolock)
			on Perm.grantee_principal_id=Prin.principal_id 
			and Perm.class =0

 UNION 

	select 
		'[WSDE000873].[HUB_StagingIn]' as EnvironmentName,
		'O' as EnvironmentType,
		case when 'HUB_StagingOut' ='HUB_StagingIn' then 'StagingInDB' else 'StagingOutDB' 
		end as DatabaseType,
		'HUB_StagingOut' as DatabaseName,
		Prin.name as LoginName,
		case when minor_id =0 then 'OBJECT' else 'COLUMN' 
		end collate Latin1_General_100_BIN AS ClassDescription ,
		Perm.permission_name collate Latin1_General_100_BIN as permission_name, 
		Perm.state_desc collate Latin1_General_100_BIN as state_desc,
		S.name as SchemaName,
		T.name as TableName,
		C.name as ColumnName
	from HUB_StagingOut.sys.database_principals Prin (nolock)
		INNER JOIN HUB_StagingOut.sys.database_permissions Perm (nolock)
			on Prin.principal_id= Perm.grantee_principal_id
		INNER JOIN HUB_StagingOut.sys.objects T (nolock)
			on T.object_id=Perm.major_id
		INNER JOIN HUB_StagingOut.sys.schemas S (nolock)
			on S.schema_id=T.schema_id 
		left join HUB_StagingOut.sys.columns C (nolock)
			on T.object_id=C.object_id
			and C.column_id =Perm.minor_id
		where Perm.class=1
	union
	SELECT 
		'[WSDE000873].[HUB_StagingIn]' as EnvironmentName,
		'O' as EnvironmentType,
		case when 'HUB_StagingOut' ='HUB_StagingIn' then 'StagingInDB' else 'StagingOutDB' end as DatabaseType,
		'HUB_StagingOut' as DatabaseName,
		Prin.name as LoginName,
		Perm.class_desc,
		Perm.permission_name, 
		Perm.state_desc ,
		S.name as SchemaName,
		NULL,
		NULL
	from HUB_StagingOut.sys.database_principals Prin (nolock)
		INNER JOIN HUB_StagingOut.sys.database_permissions Perm (nolock)
			on Prin.principal_id= Perm.grantee_principal_id
		INNER JOIN HUB_StagingOut.sys.schemas S (nolock)
			on  S.schema_id=Perm.major_id
	where Perm.class=3
	union
	select 
		'[WSDE000873].[HUB_StagingIn]' as EnvironmentName,
		'O' as EnvironmentType,
		case when 'HUB_StagingOut' ='HUB_StagingIn' then 'StagingInDB' else 'StagingOutDB' end as DatabaseType,
		'HUB_StagingOut' as DatabaseName,
		Prin.name as LoginName,
		Perm.class_desc,
		Perm.permission_name, 
		Perm.state_desc ,
		NULL,
		NULL,
		NULL
	FROM HUB_StagingOut.sys.database_principals Prin (nolock)
		INNER JOIN HUB_StagingOut.sys.database_permissions Perm (nolock)
			on Perm.grantee_principal_id=Prin.principal_id 
			and Perm.class =0
GO
/****** Object:  Table [hub].[ActivityLog]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [hub].[ActivityLog](
	[SPID] [smallint] NOT NULL,
	[DatetimeStamp] [datetime2](7) NOT NULL,
	[Username] [varchar](4000) NOT NULL,
	[Procedure] [varchar](4000) NOT NULL,
	[Parameters] [varchar](4000) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [hub].[Archive]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [hub].[Archive](
	[TableName] [varchar](50) NOT NULL,
	[DELIVERY_SQN] [numeric](22, 0) NULL,
	[ACT_Y] [varchar](4) NULL,
	[ACT_M] [varchar](2) NULL,
	[ACT_D] [varchar](2) NULL,
	[Remarks] [varchar](8000) NULL,
	[ExpirationDate] [date] NULL,
	[SchemaNameRequester] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [hub].[ErrorLog]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [hub].[ErrorLog](
	[SPID] [smallint] NOT NULL,
	[DatetimeStamp] [datetime2](7) NOT NULL,
	[Username] [varchar](4000) NOT NULL,
	[Procedure] [varchar](4000) NOT NULL,
	[Message] [varchar](max) NULL,
	[Severity] [int] NULL,
	[State] [smallint] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [hub].[MutationsLog]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [hub].[MutationsLog](
	[Table] [varchar](8000) NULL,
	[Action] [varchar](1) NOT NULL,
	[user] [varchar](8000) NOT NULL,
	[MutationDate] [datetime2](7) NOT NULL,
	[K1] [varchar](8000) NULL,
	[K2] [varchar](8000) NULL,
	[K3] [varchar](8000) NULL,
	[K4] [varchar](8000) NULL,
	[K5] [varchar](8000) NULL,
	[K6] [varchar](8000) NULL,
	[K7] [varchar](8000) NULL,
	[K8] [varchar](8000) NULL,
	[K9] [varchar](8000) NULL,
	[K10] [varchar](8000) NULL,
	[K11] [varchar](8000) NULL,
	[Source] [varchar](1) NULL,
	[K12] [varchar](8000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [hub].[Partitions]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [hub].[Partitions](
	[TableName] [varchar](50) NOT NULL,
	[PartitionId] [bigint] NOT NULL,
	[Records] [bigint] NOT NULL,
	[Pages] [decimal](22, 0) NOT NULL,
	[SizeMB]  AS (([Pages]*(8.00))/(1024)),
	[Fase] [varchar](10) NOT NULL,
	[MutationDate] [datetime2](7) NOT NULL,
	[data_space_id] [int] NULL,
 CONSTRAINT [PK_PartitionsLevel] PRIMARY KEY CLUSTERED 
(
	[TableName] ASC,
	[PartitionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [hub].[CustomViewsConfig] ADD  CONSTRAINT [DF_CustomViewsConfig_DatetiimeStamp]  DEFAULT (getdate()) FOR [DatetimeStamp]
GO
ALTER TABLE [hub].[Logins] ADD  DEFAULT ((0)) FOR [IsApplication]
GO
ALTER TABLE [hub].[Suppliers] ADD  CONSTRAINT [DF_Suppliers_IsSplit]  DEFAULT ((0)) FOR [IsSplit]
GO
ALTER TABLE [hub].[Archive]  WITH NOCHECK ADD  CONSTRAINT [FK_Archive_Suppliers] FOREIGN KEY([TableName])
REFERENCES [hub].[Suppliers] ([TableName])
NOT FOR REPLICATION 
GO
ALTER TABLE [hub].[Archive] NOCHECK CONSTRAINT [FK_Archive_Suppliers]
GO
ALTER TABLE [hub].[Exceptions]  WITH CHECK ADD  CONSTRAINT [FK_Exceptions_Namespaces] FOREIGN KEY([SchemaName])
REFERENCES [hub].[Namespaces] ([SchemaName])
GO
ALTER TABLE [hub].[Exceptions] CHECK CONSTRAINT [FK_Exceptions_Namespaces]
GO
ALTER TABLE [hub].[Logins]  WITH CHECK ADD  CONSTRAINT [FK_Logins_Namespaces] FOREIGN KEY([SchemaName])
REFERENCES [hub].[Namespaces] ([SchemaName])
GO
ALTER TABLE [hub].[Logins] CHECK CONSTRAINT [FK_Logins_Namespaces]
GO
ALTER TABLE [hub].[PartitionContent]  WITH CHECK ADD  CONSTRAINT [FK_PartitionContent_Partitions] FOREIGN KEY([TableName], [PartitionId])
REFERENCES [hub].[Partitions] ([TableName], [PartitionId])
GO
ALTER TABLE [hub].[PartitionContent] CHECK CONSTRAINT [FK_PartitionContent_Partitions]
GO
ALTER TABLE [hub].[Subscribers]  WITH CHECK ADD  CONSTRAINT [FK_Subscriptions_Namespaces] FOREIGN KEY([SchemaNameSubscriber])
REFERENCES [hub].[Namespaces] ([SchemaName])
GO
ALTER TABLE [hub].[Subscribers] CHECK CONSTRAINT [FK_Subscriptions_Namespaces]
GO
ALTER TABLE [hub].[Subscribers]  WITH CHECK ADD  CONSTRAINT [FK_Subscriptions_Suppliers] FOREIGN KEY([TableName])
REFERENCES [hub].[Suppliers] ([TableName])
ON UPDATE CASCADE
GO
ALTER TABLE [hub].[Subscribers] CHECK CONSTRAINT [FK_Subscriptions_Suppliers]
GO
ALTER TABLE [hub].[Suppliers]  WITH CHECK ADD  CONSTRAINT [FK_Suppliers_Namespaces] FOREIGN KEY([SchemaNameSupplier])
REFERENCES [hub].[Namespaces] ([SchemaName])
GO
ALTER TABLE [hub].[Suppliers] CHECK CONSTRAINT [FK_Suppliers_Namespaces]
GO
ALTER TABLE [hub].[Archive]  WITH CHECK ADD  CONSTRAINT [CK_Day] CHECK  ((isnumeric(replace(isnull([ACT_D],(0)),'*','0'))=(1)))
GO
ALTER TABLE [hub].[Archive] CHECK CONSTRAINT [CK_Day]
GO
ALTER TABLE [hub].[Archive]  WITH CHECK ADD  CONSTRAINT [CK_Month] CHECK  ((isnumeric(replace(isnull([ACT_M],(0)),'*','0'))=(1)))
GO
ALTER TABLE [hub].[Archive] CHECK CONSTRAINT [CK_Month]
GO
ALTER TABLE [hub].[Archive]  WITH CHECK ADD  CONSTRAINT [CK_Year] CHECK  ((isnumeric(replace(isnull([ACT_Y],(0)),'*','0'))=(1)))
GO
ALTER TABLE [hub].[Archive] CHECK CONSTRAINT [CK_Year]
GO
/****** Object:  StoredProcedure [dbo].[stp_AddArchive]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[stp_AddArchive] (@SchemaNameRequester varchar(10), @TableName varchar(100), @DELIVERY_SQN decimal(22,0), @ACT_Y varchar(4),@ACT_M varchar(2), @ACT_D varchar(2), @Remarks varchar(8000), @ExpirationDate Date )
as 
begin
-- procedure code:  AA
BEGIN TRY
/*
 deze procedure voegt een regel toe om iets veilig te stellen voor opschonen.
 De tabelnaam is verplicht maar voor de ACT_DT velden kun je een * gebruiken als wildcard.
 de schema naam (van de aanvrager!) en de tabelnaam zijn verplicht omdat meerdere afnemers om verschillende redenen dezelfde data willen vasthouden. 
 De schema naam houd deze verzoeken apart terwijl de remakr voor de aanvragen een hint is waarom ze deze data ook al weer wilden vasthouden.
 */
	SET NOCOUNT ON
	INSERT INTO [hub].[ActivityLog]([SPID],[DatetimeStamp],[Username],[Procedure],[Parameters])
	VALUES(@@SPID,getdate(),ORIGINAL_LOGIN (),OBJECT_NAME(@@PROCID),ISNULL(@SchemaNameRequester,'')+'#'+ISNULL(@TableName,'')+'#'+ISNULL(convert(varchar,@DELIVERY_SQN),'')+'#'+ISNULL(@ACT_Y,'')+'#'+ISNULL(@ACT_M,'')+'#'+ISNULL(@ACT_D,'')+'#'+ISNULL(convert(varchar,@ExpirationDate,120),''))

	--declarations
	DECLARE @RetentionDuration int

	--constants/parameters
	SELECT @RetentionDuration = ParamValue from hub.Parameters where ParamName='RetentionDuration'
	set @SchemaNameRequester= hub.Fn_ValidInput('schema',@SchemaNameRequester)
	SELECT @TableName= hub.Fn_Alias (@SchemaNameRequester,@TableName)
	if @ExpirationDate > dateadd(month,@RetentionDuration,getdate()) or @ExpirationDate is null
		set @ExpirationDate=dateadd(month,@RetentionDuration,getdate())
	
	--checks
	IF @SchemaNameRequester is null
	BEGIN
		raiserror('The parameter @SchemaNameRequester needs to be filled.(stp_AddArchive)',16,3)
		RETURN
	END	
	if (select top 1 1 from hub.Namespaces where SchemaName= @SchemaNameRequester)is null 
	BEGIN
		RAISERROR('The schemaname of the requester is unknown.(stp_AddArchive)',16,1)
		RETURN
	END
  	IF NOT EXISTS (SELECT * FROM hub.MyNamespaces 
	where SchemaName in (@SchemaNameRequester,'*'))
	BEGIN
		raiserror('you do not have access to this schema.(stp_AddArchive)',16,3)
		RETURN
	END	
	IF @TableName is null
	BEGIN
		raiserror('The parameter @TableName needs to be filled.(stp_AddArchive)',16,3)
		RETURN
	END	
	if (select top 1 1 from hub.Suppliers where TableName= @TableName)is null 
	BEGIN
		RAISERROR('The tablename is not a valid suppliertable.(stp_AddArchive)',16,1)
		RETURN
	END
		IF (SELECT COUNT(*) from hub.Subscribers where @SchemaNameRequester =SchemaNameSubscriber and TableName=@TableName)=0 
	BEGIN
		raiserror('Table is not subscribed to by this schema.(stp_AddArchive)',16,3)
		RETURN
	END	
	if ISNUMERIC(isnull(replace(@ACT_Y,'*','0'),'0'))=0
		BEGIN
			raiserror('The parameter @ACT_Y needs to be numeric or ''*''.(stp_AddArchive)',16,3)	
		END		
	if ISNUMERIC( isnull(replace(@ACT_M,'*','0'),'0'))=0
		BEGIN
			raiserror('The parameter @ACT_M needs to be numeric or ''*''.(stp_AddArchive)',16,3)	
		END		
	if ISNUMERIC( isnull(replace(@ACT_D,'*','0'),'0'))=0
		BEGIN
			raiserror('The parameter @ACT_D needs to be numeric or ''*''.(stp_AddArchive)',16,3)	
		END		
	if @DELIVERY_SQN is null and (@ACT_Y is null or @ACT_M is null or @ACT_D is null)
		BEGIN
			raiserror('Either DELIVERY_SQN or ACT_DTS needs to be used (stp_AddArchive)',16,3)	
		END		
	if isnull(@ACT_Y,'*') <>'*'
	begin
		if @ACT_Y*1 >year(getdate())+1
			raiserror('The parameter @ACT_Y is too far into the future.(stp_AddArchive)',16,3)	
	end
	if isnull(@ACT_M,'*') <>'*'
	begin
		if @ACT_M*1 >12 or @ACT_M*1<1
			raiserror('The parameter @ACT_M is not a valid month.(stp_AddArchive)',16,3)	
	end
	if isnull(@ACT_D,'*') <>'*'
	begin
		if @ACT_D*1 >31 or @ACT_D*1<1
			raiserror('The parameter @ACT_D is not a valid day.(stp_AddArchive)',16,3)	
	end

INSERT INTO hub.Archive
           (TableName
           ,DELIVERY_SQN
           ,ACT_Y
           ,ACT_M
           ,ACT_D
           ,Remarks
		   ,ExpirationDate
		   ,SchemaNameRequester)
     VALUES
           (@TableName
           ,@DELIVERY_SQN
           ,@ACT_Y
           ,@ACT_M
           ,@ACT_D
           ,@Remarks,
		   @ExpirationDate,
		   @SchemaNameRequester)
END TRY
BEGIN CATCH
	 DECLARE @ErrorMessage varchar(MAX) = ERROR_MESSAGE(),
				@ErrorSeverity int = ERROR_SEVERITY(),
				@ErrorState smallint = ERROR_STATE()
 	INSERT INTO [hub].ErrorLog([SPID],[DatetimeStamp],[Username],[Procedure],Message, Severity, State)
	VALUES(@@SPID,getdate(),ORIGINAL_LOGIN (),OBJECT_NAME(@@PROCID),@ErrorMessage, @ErrorSeverity,@ErrorState);
	
	RAISERROR ( @ErrorMessage, @ErrorSeverity, @ErrorState)  ;
	
END CATCH
end
GO
/****** Object:  StoredProcedure [dbo].[stp_AddCustomView]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[stp_AddCustomView] (@SchemaName varchar(10), @TableName varchar(100), @Clause varchar(20), @SqlCode varchar(8000), @ColumnName varchar(100))
AS
BEGIN
/*
	this proc adds one customazation to a view on a table. the view starts identical to the tabel and each customization makes 1(!) deviation from this definition. 
	These statements will be executed in the order they were added.
	syntax:

	hide column:	exec stp_AddCustomView '<schema>','<tablename>','SELECT','NULL','<TableColumnName>'
	add column:		exec stp_AddCustomView '<schema>','<tablename>','SELECT','<formula>','<NewColumnName>'
	filter rows:	exec stp_AddCustomView '<schema>','<tablename>','WHERE','<condition>',NULL
	move to end:	exec stp_AddCustomView '<schema>','<tablename>','SELECT','TableColumnName','<TableColumnName>'

*/
	SET NOCOUNT ON
	INSERT INTO [hub].[ActivityLog]([SPID],[DatetimeStamp],[Username],[Procedure],[Parameters])
	VALUES(@@SPID,getdate(),ORIGINAL_LOGIN (),OBJECT_NAME(@@PROCID),ISNULL(@SchemaName,'')+'#'+ISNULL(@TableName,'')+'#'+ISNULL(@Clause,'')+'#'+ISNULL(@ColumnName,''))


	--declarations
	DECLARE @ISERROR int=0
	
	--constants/parameters
	SELECT @SchemaName= hub.Fn_ValidInput('schema',@SchemaName)
	SELECT @TableName= hub.Fn_Alias (@SchemaName,@TableName)
	SELECT @SqlCode= hub.Fn_ValidInput('sql',@SqlCode)
	SELECT @ColumnName= hub.Fn_ValidInput('column',@ColumnName)
	SELECT @Clause= hub.Fn_ValidInput('clause',@Clause)
	
	-- checks
	IF NOT EXISTS (SELECT * FROM hub.MyNamespaces 
	where SchemaName = '*') and not exists (select * from hub.Parameters where ParamName='Environment' and ParamValue='O')
	BEGIN
		raiserror('Users can only modify their views in Development.(stp_AddCustomView)',16,3)
		RETURN
	END	
  	IF NOT EXISTS (SELECT * FROM hub.MyNamespaces 
	where SchemaName in (@SchemaName,'*'))
	BEGIN
		raiserror('you do not have access to this schema.(stp_AddCustomView)',16,3)
		RETURN
	END	
	if @TableName is null
	BEGIN
		RAISERROR('The parameter @TableName needs to be filled.(stp_AddCustomView)',16,1)
		RETURN
	END
	IF @SchemaName is null
	BEGIN
		raiserror('The parameter @SchemaName needs to be filled.(stp_AddCustomView)',16,3)
		RETURN
	END	
	IF @Clause is null
	BEGIN
		raiserror('The parameter @Clause needs to be filled.(stp_AddCustomView)',16,3)
		RETURN
	END	
	IF @SqlCode is null
	BEGIN
		raiserror('The parameter @SqlCode needs to be filled.(stp_AddCustomView)',16,3)
		RETURN
	END	
	IF (SELECT COUNT(*) from hub.Subscribers where @SchemaName =SchemaNameSubscriber and TableName=@TableName)=0
	BEGIN
		raiserror('Table is not subscribed to by this schema.(stp_AddCustomView)',16,3)
		RETURN
	END	
	IF not @Clause in ('SELECT','WHERE')
	BEGIN
		raiserror('@Clause is not correctly filled.(stp_AddCustomView)',16,3)
		RETURN
	END	
	IF @ColumnName is null and @Clause ='SELECT'
	BEGIN
		raiserror('ColumnName is not filled.(stp_AddCustomView)',16,3)
		RETURN
	END	
	
	--deployment?
	exec stp_DeployCheck  'Subscriber',@SchemaName, @TableName

	--adding the customization for the view
	insert into hub.CustomViewsConfig (SchemaName, TableName, Clause, SqlCode, ColumnName)
	select @SchemaName, @TableName, @Clause, @SqlCode, @ColumnName
	
END
GO
/****** Object:  StoredProcedure [dbo].[stp_AfterCare]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[stp_AfterCare] AS
BEGIN
-- procedure code:  AC
BEGIN TRY
	/*
		this proc is a catch-all whose goal is to be obsolete.
		it's purpose is to check and correct any and all settings of the hub.
		all code here should find a place in the other procs
		these is a job that checks every 5 minutes if the parameter AfterCareNeeded= YES, if so, it runs this proc





		alias:
		een functie of van de alias de tabelnaam te maken
		een proc om , zoals voor dih, een view te maken met de alias.
	*/	
		SET NOCOUNT ON 
		INSERT INTO [hub].[ActivityLog]([SPID],[DatetimeStamp],[Username],[Procedure],[Parameters])
		VALUES(@@SPID,getdate(),ORIGINAL_LOGIN (),OBJECT_NAME(@@PROCID),'')

		--checks
		IF NOT EXISTS (SELECT * FROM hub.MyNamespaces where SchemaName ='*')
		BEGIN
			raiserror('you do not have access to this procedure.(stp_AfterCare)',16,3)
			RETURN
		END

		--reset indicator, first step to prevent double activations
		UPDATE hub.Parameters set ParamValue='NO' WHERE ParamName='AfterCareNeeded'

		--declarations
		DECLARE @Environment char(1)
		Declare @StagingInDB varchar(100) 
		Declare @StagingOutDB varchar(100) 
		DECLARE @SQL			varchar(8000) 
		DECLARE @SQLdb			varchar(8000) 
		declare @TableName varchar(100)
		declare @SchemaName varchar(100)
		declare @StagingDB varchar(100)
		declare @Unlinked tinyint
		declare @AfterCareNeeded bit =0
		create table #CMD_Aftercare(
			nr int identity(1,1),
			code varchar(8000)COLLATE Latin1_General_100_BIN)

		--constants/parameters
		select @StagingInDB  = hub.Fn_ValidInput('database',ParamValue) FROM hub.Parameters where  ParamName = 'StagingInDB'
		select @StagingOutDB = hub.Fn_ValidInput('database',ParamValue) FROM hub.Parameters where ParamName = 'StagingOutDB' 
		select @Environment = hub.Fn_ValidInput('environment',ParamValue) FROM hub.Parameters where ParamName ='Environment'

	--------------------------------------------------------------------------------------------------------------------------------------------------------------------
	-- is now handeled in stp_ExceptionAlias
												---- exception ALIAS
												--create table #Alias (code varchar(8000))

												--insert into #CMD_Aftercare
												--select 'USE '+DB_NAME() +'; DROP VIEW ['+E.SchemaName+'].['+E.TableAlias +']' 
												--from hub.Exceptions E
												--inner join hub.ObjectInfo O
												--	on O.ObjectName =E.TableAlias
												--	and O.SchemaName=E.SchemaName
												--	and O.ObjectType='V'
												--left join hub.Subscribers A
												--	on A.SchemaNameSubscriber=E.SchemaName
												--	and A.TableName=E.TableName
												--where E.ExceptionType in('ALIAS')
												--and A.TableName is null


												--UPDATE E
												--set ExceptionType ='ALIAS_inactive'-- oud, herschrijven, we zetten geen aliassen inactief
												--from hub.Exceptions E
												--inner join hub.Subscribers A
												--on E.SchemaName=A.SchemaNameSubscriber
												--and E.TableAlias=A.TableName
												--and E.ExceptionType='ALIAS'

												--SET @SQL='
												--INSERT INTO #Alias
												--SELECT ''USE ''+DB_NAME()+'';''+CHAR(10)+
												--	case 
												--		when M.definition is  NULL then ''''
												--		when M.definition <>  Module then ''DROP VIEW [''+SchemaName+''].[''+TableAlias+''];'' 
												--		else NULL end +CHAR(10)+
												--		case 
												--			when  isnull(M.definition,'''') <>  Module then ''EXEC(''''''+ Module +'''''')'' 
												--		else NULL end code
												--from (	select *, ''CREATE VIEW [''+SchemaName+''].[''+TableAlias+''] AS SELECT * from [''+SchemaName+''].[''+TableName+'']'' Module 
												--		from hub.Exceptions
												--		where ExceptionType =''ALIAS'') E
												--	inner join sys.schemas S
												--		on S.name = E.SchemaName
												--	inner join sys.views V
												--		on S.schema_id=V.schema_id 
												--		and V.name =TableName
												--	left join  sys.views A
												--		on S.schema_id=A.schema_id 
												--		and A.name =TableAlias
												--	left join sys.sql_modules M
												--		on M.object_id=A.object_id '
												--	SET @SQLdb ='use '+@StagingInDB+';'+@SQL
												--	EXEC(@SQLdb)
												--	SET @SQLdb ='use '+@StagingOutDB+';'+@SQL
												--	EXEC(@SQLdb)

												--insert into #CMD_Aftercare
												--select code
												--from #Alias
												--where not code is null

												--if @@ROWCOUNT >0
												--	set @AfterCareNeeded=1
	--------------------------------------------------------------------------------------------------------------------------------------------------------------------
	
	-- is now handeled in stp_ExceptionAlias
												---- dbo views for diH
												--create table #dihdbo (
												--	DatabaseName varchar(1000)COLLATE Latin1_General_100_BIN, 
												--	SchemaName varchar(1000)COLLATE Latin1_General_100_BIN, 
												--	ObjectName varchar(1000)COLLATE Latin1_General_100_BIN)

												--SET @SQL='
												--insert into #dihdbo (DatabaseName,SchemaName,ObjectName )
												--select db_name() DatabaseName, S.name as SchemaName, O.name as ObjectName
												--from sys.objects O
												--inner join sys.schemas S
												--on S.schema_id=O.schema_id
												--left join sys.sql_modules M
												--			ON M.object_id=O.object_id
												--where S.name =''dih''
												--or (S.name =''dbo'' and O.type =''V'' and charindex (''dih.'',M.definition)+charindex (''[dih].'',M.definition) >0 )
												--	'
												--	SET @SQLdb ='use '+@StagingInDB+';'+@SQL
												--	EXEC(@SQLdb)
												--	SET @SQLdb ='use '+@StagingOutDB+';'+@SQL
												--	EXEC(@SQLdb)

												--insert into #CMD_Aftercare
												--select 'USE '+R.DatabaseName+'; EXEC('''+ REPLACE('CREATE VIEW [dbo].['+R.ObjectName+'] AS SELECT * FROM [dih].['+R.ObjectName+']','''','''''')+''')'
												-- from 
												--(select * from #dihdbo where SchemaName ='dih') R
												--left join (select * from #dihdbo where SchemaName ='dbo') D
												--on R.DatabaseName=D.DatabaseName
												--and R.ObjectName=D.ObjectName
												--where D.ObjectName is null
	--------------------------------------------------------------------------------------------------------------------------------------------------------------------

	--view refresh
	create table #RefreshT (
		DatabaseName varchar(100)COLLATE Latin1_General_100_BIN,
		TableName varchar(100)COLLATE Latin1_General_100_BIN,
		SchemaName  varchar(100)COLLATE Latin1_General_100_BIN,
		ModifyDate datetime2)

	create table #RefreshV (
		DatabaseName varchar(100)COLLATE Latin1_General_100_BIN,
		TableName varchar(100)COLLATE Latin1_General_100_BIN,
		SchemaName  varchar(100)COLLATE Latin1_General_100_BIN,
		ModifyDate datetime2)

		SET @SQL='
			insert into #RefreshT
			SELECT DB_NAME(),T.name, S.name,T.modify_date 
			from sys.tables T
				inner join sys.schemas S
					on S.schema_id=T.schema_id
				inner join hub.Namespaces N
					on N.SchemaName=S.name 

			insert into #RefreshV
			SELECT DB_NAME(),T.name, S.name,T.modify_date 
			from sys.views T
				inner join sys.schemas S
					on S.schema_id=T.schema_id
				inner join hub.Namespaces N
					on N.SchemaName=S.name or S.name =''dbo''
		'
		SET @SQLdb ='use '+@StagingInDB+';'+@SQL
		EXEC(@SQLdb)
		SET @SQLdb ='use '+@StagingOutDB+';'+@SQL
		EXEC(@SQLdb)

-- this is now done in stp_NewSupply
									--insert into #CMD_Aftercare -- refresh the views on tables that are younger than their view
									--select 'use ['+V.DatabaseName+']; EXEC sp_refreshview  '''+'['+V.SchemaName+'].['+V.TableName+']'+''''
									--from #RefreshV V
									--	inner join #RefreshT T
									--		on V.TableName =T.TableName 
									--where T.ModifyDate >= V.ModifyDate 

	insert into #CMD_Aftercare --dbo views van dih
	select 'use ['+V.DatabaseName+']; EXEC sp_refreshview  '''+'['+V.SchemaName+'].['+V.TableName+']'+''''
	from #RefreshV V
		inner join #RefreshV T
			on V.TableName =T.TableName 
			and V.DatabaseName=T.DatabaseName 
			and T.SchemaName='dih' 
			and V.SchemaName='dbo'
	where T.ModifyDate >= V.ModifyDate 

	insert into #CMD_Aftercare--alias
	select 'use ['+V.DatabaseName+']; EXEC sp_refreshview  '''+'['+V.SchemaName+'].['+V.TableName+']'+''''
	from #RefreshV V
		inner join hub.Exceptions E
		on E.ExceptionType='ALIAS'
		and E.TableAlias= V.TableName 
		inner join #RefreshT T
			on E.TableName =T.TableName 
	where T.ModifyDate >= V.ModifyDate 
	--------------------------------------------------------------------------------------------------------------------------------------------------------------------

	-- uitvoeren
	DECLARE EachCommand_AC CURSOR
	READ_ONLY
	FOR select code from #CMD_Aftercare order by nr
	OPEN EachCommand_AC

	FETCH NEXT FROM EachCommand_AC INTO @SQL
	WHILE (@@fetch_status <> -1)
	BEGIN
		IF (@@fetch_status <> -2)
		BEGIN
			BEGIN TRY
					--print @SQL
					exec (@SQL)
			END TRY
			BEGIN CATCH
					PRINT '--fout: ' + @SQL
			END CATCH
		END
		FETCH NEXT FROM EachCommand_AC INTO @SQL
	END

	CLOSE EachCommand_AC
	DEALLOCATE EachCommand_AC

	if @AfterCareNeeded=1
		exec stp_AfterCare 

	--nieuwe wereld
	exec stp_Indexes null,null
	exec [stp_Permissions]
END TRY
BEGIN CATCH
	 DECLARE @ErrorMessage varchar(MAX) = ERROR_MESSAGE(),
				@ErrorSeverity int = ERROR_SEVERITY(),
				@ErrorState smallint = ERROR_STATE()
 	INSERT INTO [hub].ErrorLog([SPID],[DatetimeStamp],[Username],[Procedure],Message, Severity, State)
	VALUES(@@SPID,getdate(),ORIGINAL_LOGIN (),OBJECT_NAME(@@PROCID),@ErrorMessage, @ErrorSeverity,@ErrorState);
	
	exec hub.stp_CloseCursor 'EachCommand_AC'
	RAISERROR ( @ErrorMessage, @ErrorSeverity, @ErrorState)  ;
	
END CATCH
end
GO
/****** Object:  StoredProcedure [dbo].[stp_CheckIfCanBeDeployed]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[stp_CheckIfCanBeDeployed] (@SchemaName varchar(50),@ObjectName varchar(50),@ScriptDatetime varchar(30), @ReleaseType varchar(2), @CanBeDeployed varchar(2) OUTPUT) AS

/********************************************************************************************************************************************************
**     Procedure:				[dbo].[stp_CheckIfCanBeDeployed] 
**     Created By:              Casper ter Lüün
**     Creation Date:           16-03-2020
**     Description:				checks if a script can be deployed on an environment
**     
**     Parameters:				@SchemaName @ObjectName   --Incoming tablename, schemaname (from request form)
								@ScriptDatetime  -- will be filled by @now by [DEV].[stp_CreateDeployScript]
								@ReleaseType
**     
**     Returns:					@CanBeDeployed 1 or null
								

**     
**     Note:					Checks deploy based on [HUB_DBA].[Hub_D].[OtapReport] that is copied from ACC to the other environments
								and on sys.objects
********************************************************************************************************************************************************/
begin
	begin try

		set nocount on
		
		insert into [hub].[ActivityLog]([SPID],[DatetimeStamp],[Username],[Procedure],[Parameters])
			values(@@SPID,getdate(),ORIGINAL_LOGIN (),OBJECT_NAME(@@PROCID),ISNULL(@SchemaName,'')   +'#'+ISNULL(@ObjectName,''))

		--declarations
		declare @Environment varchar(1)
		declare @PreviousEnvironment varchar(1)
		declare @ColumnScriptDatetime varchar(30)
		declare @NumberOfEarlierEnvironments varchar(30)
		declare @CanBeDeployedHubObjects int
		declare @CanBeDeployedMetaData int
		
		
		--constants/parameters
		select @SchemaName= hub.Fn_ValidInput('schema',@SchemaName)
		select @ObjectName= hub.Fn_Alias (@SchemaName,@ObjectName)
		select @Environment= ParamValue from hub.[Parameters] where ParamName='Environment'
		

		set @PreviousEnvironment= Case when @Environment='T' then 'O'
										when @Environment='A' then 'T'
										when @Environment='P' then 'A'
									end
		set @ColumnScriptDatetime=@ScriptDatetime
		set @NumberOfEarlierEnvironments= Case when @Environment='T' then '1'
												when @Environment='A' then '2'
												when @Environment='P' then '3'
											end
		set @CanBeDeployedHubObjects=0
		set @CanBeDeployedMetaData=0

		set @CanBeDeployed=0

		
		
		--checks
		IF  (SELECT * FROM hub.MyNamespaces where SchemaName ='*') is null
		THROW 51000, 'You do not have access to this procedure.(stp_CheckIfCanBeDeployed)', 1;

		IF (select @SchemaName) IS NULL
		THROW 51000, 'The parameter @SchemaName needs to be filled.(stp_CheckIfCanBeDeployed)', 1;
		
	
		IF (select @ObjectName) IS NULL
		THROW 51000, 'The parameter @ObjectName needs to be filled.(stp_CheckIfCanBeDeployed)', 1;

		IF (select @ScriptDatetime) IS NULL
		THROW 51000, 'The parameter @ScriptDatetime needs to be filled.(stp_CheckIfCanBeDeployed)', 1;
			
		if (select @ReleaseType where @ReleaseType in ('CT','DT','CV','DV')) is null 
		     THROW 51000, 'Wrong ReleaseType  (stp_CheckIfCanBeDeployed)', 1;

		if (select top 1 1 from hub.Namespaces where SchemaName= @SchemaName) is null 
		     THROW 51000, 'Wrong SchemaName Not existing in Namespaces (stp_CheckIfCanBeDeployed)', 1;
		
	

		--Objects in the hub
		if (select @ReleaseType where @ReleaseType in ('CT')) is not null
			begin
				set @CanBeDeployedHubObjects=1
			end

		
		if (select @ReleaseType where @ReleaseType in ('DV')) is not null 
			begin
				if ( 		    
					select top (1) 1
					 from [HUB_DBA].[Hub_C].[ObjectInfo]
					 where 1=1
					and [EnvironmentType]=@Environment
					and [MetaDataEndDate]='9999-12-31 00:00:00.000'
					and [DatabaseName] in ('HUB_StagingIn','HUB_StagingOut')
					 and ObjectType in ('V')
					 and SchemaName not in ('XXX','hub','log','dbo')
					 and ObjectName=@ObjectName
					 and SchemaName=@SchemaName
					
					 ) is not null
						begin
							set @CanBeDeployedHubObjects=1
						end
			end
		
		if (select @ReleaseType where @ReleaseType in ('CV')) is not null 
			begin
				if ( 		    
					select top (1) 1
					from [HUB_DBA].[Hub_C].[ObjectInfo]
					 where 1=1
					and [EnvironmentType]=@Environment
					and [MetaDataEndDate]='9999-12-31 00:00:00.000'
					and [DatabaseName] in ('HUB_StagingIn','HUB_StagingOut')
					 and ObjectType in ('U')
					 and SchemaName  not in ('XXX','hub','log','dbo')
					 and ObjectName=@ObjectName
					 ) is not null
						begin
							set @CanBeDeployedHubObjects=1
						end
			end
		
		if (select @ReleaseType where @ReleaseType in ('DT')) is not null 
			begin
				if ( 		    
					select top (1) 1
					from [HUB_DBA].[Hub_C].[ObjectInfo]
					 where 1=1
					and [EnvironmentType]=@Environment
					and [MetaDataEndDate]='9999-12-31 00:00:00.000'
					 and ObjectType in ('V')
					 and SchemaName not in ('XXX','hub','log','dbo')
					 and ObjectName=@ObjectName
					) is null 
						begin
							 if ( 		    
								select top 1 1
								from [HUB_DBA].[Hub_C].[ObjectInfo]
								 where 1=1
									and [EnvironmentType]=@Environment
									and [MetaDataEndDate]='9999-12-31 00:00:00.000'
									and ObjectType in ('U')
									and SchemaName not in ('XXX','hub','log','dbo')
									and ObjectName=@ObjectName
									and SchemaName=@SchemaName
								 ) is not null
									begin
										set @CanBeDeployedHubObjects=1
									end
							end
			end
		-- If environment is O/DEV then it checks if the ScriptDatetime is not the same as the current version. Else it is the first or new version and can it always be deployed after the script is checkt for CT and CV. 
	If (select @ReleaseType where @ReleaseType in ('CT','CV')) is not null 
	begin
		if (select @Environment) ='O'
		begin
			if (select  1
				from [HUB_DBA].[Hub_D].[OtapReport]
				where 1=1
					and TableName=@ObjectName
					and SchemaName=@SchemaName
					and [InConfig_O]+[InDatabase_O]+[InDeploy_O]=3
					and [ScriptDatetime_O]= @ScriptDatetime) is null 
					begin
					set @CanBeDeployedMetaData=1
					end
		end
		
		-- If environment is not O/DEV then the script should already be deployed on the earlier environment. If so the script can be deployed after the script is checkt
		if (select @Environment) <>'O'
		begin
			if (
				select  1 AS [Result]
						from [HUB_DBA].[Hub_D].[OtapReport]
						where 1=1
								and TableName=@ObjectName
								and SchemaName=@SchemaName
								and ( ( @Environment='T' AND [ScriptDatetime_O]= @ScriptDatetime  and [ScriptDatetime_T]<@ScriptDatetime ) OR
								                ( @Environment='A' AND [ScriptDatetime_T]= @ScriptDatetime and [ScriptDatetime_A]<@ScriptDatetime ) OR
								                ( @Environment='P' AND [ScriptDatetime_A]= @ScriptDatetime and [ScriptDatetime_P]<@ScriptDatetime) )
								and [InConfig_O]+[InConfig_T]+[InConfig_A]+[InConfig_P]>=@NumberOfEarlierEnvironments
								and [InDatabase_O]+ [InDatabase_T]+[InDatabase_A] +[InDatabase_P]>=@NumberOfEarlierEnvironments
								and [InDeploy_O]+ [InDeploy_T]+ [InDeploy_A]+ [InDeploy_P]>=@NumberOfEarlierEnvironments) is not null 
			begin
					set @CanBeDeployedMetaData=1
					end	
		end
	end
-- If environment is O/DEV then it checks if the ScriptDatetime bigger then the current version and that there is a version to delete. 
	If (select @ReleaseType where @ReleaseType in ('DT','DV')) is not null 
		begin
			if (select @Environment) ='O'
			begin
				if (select  1 AS [Result]
					from [HUB_DBA].[Hub_D].[OtapReport]
					where 1=1
						and TableName=@ObjectName
						and SchemaName=@SchemaName
						and [InConfig_O]+[InDatabase_O]=2
						and [ScriptDatetime_O]< @ScriptDatetime) is not null 
						begin
						set @CanBeDeployedMetaData=1
						end
			end
			
			-- If environment is not O/DEV then the delete script should already be deployed on the earlier environment. If so the script can be deployed after thescript is checkt. The delete script should have the same scriptdatetime as the earlier environment and the delete script must have set InConfig and InDatabase to 0 in the earlier environment.
			if (select @Environment) <>'O'
			begin
				if (
					select  1 AS [Result]
							from [HUB_DBA].[Hub_D].[OtapReport]
							where 1=1
									and TableName=@ObjectName
									and SchemaName=@SchemaName
									and ( ( @Environment='T' AND [ScriptDatetime_O]= @ScriptDatetime and [InConfig_O]+[InDatabase_O]=0 ) OR
									                ( @Environment='A' AND [ScriptDatetime_T]= @ScriptDatetime and [InConfig_O]+[InConfig_T]+[InDatabase_O]+	[InDatabase_T]=0 ) OR
									                ( @Environment='P' AND [ScriptDatetime_A]= @ScriptDatetime and [InConfig_O]+[InConfig_T]+[InConfig_A]   +[InDatabase_O]+ [InDatabase_T]+[InDatabase_A]=0) )
								) is not null 
					begin
						set @CanBeDeployedMetaData=1
					end	
			end
		end
	

		set @CanBeDeployed= case when @CanBeDeployedHubObjects + @CanBeDeployedMetaData=2 then '1' else '0' end
		--select @CanBeDeployed
	end try
	begin catch
	set @CanBeDeployed= '-1'
		declare @ErrorMessage varchar(MAX) = ERROR_MESSAGE(),
				@ErrorSeverity int = ERROR_SEVERITY(),
				@ErrorState smallint = ERROR_STATE()
 		insert into [hub].ErrorLog([SPID],[DatetimeStamp],[Username],[Procedure],Message, Severity, State)
		values(@@SPID,getdate(),ORIGINAL_LOGIN (),OBJECT_NAME(@@PROCID),@ErrorMessage, @ErrorSeverity,@ErrorState);
	end catch
end
	

GO
/****** Object:  StoredProcedure [dbo].[stp_CheckIfHasBeenDeployed]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[stp_CheckIfHasBeenDeployed] (
@SchemaName VARCHAR(50),@ObjectName VARCHAR(100),@ScriptDatetime VARCHAR(30),@VersionType VARCHAR(2),@HasBeenDeployed VARCHAR(800) OUTPUT)
AS

/************************************************************************************************************************************************

**     Procedure	:       [dbo].[stp_CheckIfHasBeenDeployed]
**     Created By	:		Vijay Ananth Ramakrishnan
**     Creation Date:		13-MAY-2020
**	   Parameters	:		@SchemaName, @ObjectName, @ScriptDatetime, @VersionType
**     Description	:		Created this stored procedure to check the deployment status and to ensure the deployment is complete as we expect
**     Returns		:		This will print one of the two output on the screen based on the Deployment type (@VersionType)
							1. Success Message - If the deployment is success
							2. Failure Message - If something is wrong with the deployment
**     

Change Date			Changed By					Change Description
------------	---------------------		----------------------------

  
************************************************************************************************************************************************/


BEGIN

	--BEGIN TRY

			SET NOCOUNT ON
			INSERT INTO [hub].[ActivityLog]([SPID],[DatetimeStamp],[Username],[Procedure],[Parameters])
				VALUES(@@SPID,getdate(),ORIGINAL_LOGIN (),OBJECT_NAME(@@PROCID),ISNULL(@SchemaName,'')   +'#'+ISNULL(@ObjectName,''))


		--Parameters for Testing

		--DECLARE @SchemaName VARCHAR(50)
		--DECLARE @ObjectName VARCHAR(100)
		--DECLARE @ScriptDatetime VARCHAR(30)
		--DECLARE @VersionType VARCHAR(2)

		--SET @ObjectName = 'LSE_LOAN_AC_DS'
		--SET @SchemaName = NULL--'dih'
		--SET @ScriptDatetime = '2021-01-01'
		--SET @VersionType = NULL--'CT'


		--CHECKS
		IF  (SELECT * FROM hub.MyNamespaces where SchemaName ='*') is null
		BEGIN
			RAISERROR('You do not have access to this procedure.(stp_CheckIfHasBeenDeployed)',16,3)
			RETURN
		END
		IF (@SchemaName IS NULL AND @VersionType <> 'DT')
		BEGIN
			RAISERROR('The parameter @SchemaName needs to be filled.(stp_CheckIfHasBeenDeployed)',16,3)
			RETURN
		END	
		IF @VersionType IS NULL
		BEGIN
			RAISERROR('The parameter @VersionType needs to be filled.(stp_CheckIfHasBeenDeployed)',16,3)
			RETURN
		END
		IF @VersionType NOT IN ('CT','DT','CV','DV','CU','DU','CS','DS')
		BEGIN
			RAISERROR('The parameter @VersionType filled is InValid.(stp_CheckIfHasBeenDeployed)',16,3)
			RETURN
		END
		IF (@ScriptDatetime IS NULL AND @VersionType IN ('CT','CV'))
		BEGIN
			RAISERROR('The parameter @ScriptDatetime needs to be filled.(stp_CheckIfHasBeenDeployed)',16,3)
			RETURN
		END
		IF (@ScriptDatetime > GETDATE())
		BEGIN
			RAISERROR('The parameter @ScriptDatetime is InValid.(stp_CheckIfHasBeenDeployed)',16,3)
			RETURN
		END
		IF (@ObjectName IS NULL AND @VersionType NOT IN ('CS','DS'))
		BEGIN
			RAISERROR('The parameter @ObjectName needs to be filled.(stp_CheckIfHasBeenDeployed)',16,3)
			RETURN
		END	


		--Create Table
		IF @VersionType = 'CT'
		BEGIN
			IF EXISTS
				(
				SELECT 1 FROM [hub].[ObjectInfo] 
				WHERE ObjectName = @ObjectName
				AND SchemaName   = @SchemaName
				AND modify_date  > @ScriptDatetime
				AND ObjectType   = 'U'
				)
					SET @HasBeenDeployed = 'Table - '+@SchemaName+'.'+@ObjectName+' has been created successfully'
			ELSE 
					SET @HasBeenDeployed = 'Something went wrong!!!! Table - '+@SchemaName+'.'+@ObjectName+' has not been created'
		END



		--Create View
		IF @VersionType = 'CV'
		BEGIN
			IF EXISTS
				(
				SELECT 1 FROM [hub].[ObjectInfo] 
				WHERE ObjectName = @ObjectName
				AND SchemaName   = @SchemaName
				AND modify_date  > @ScriptDatetime
				AND ObjectType   = 'V'
				)
					SET @HasBeenDeployed = 'View - '+@SchemaName+'.'+@ObjectName+' has been created successfully'
			ELSE 
					SET @HasBeenDeployed = 'Something went wrong!!!! View - '+@SchemaName+'.'+@ObjectName+' has not been created'
		END



		--Delete Table
		IF @VersionType = 'DT'
		BEGIN
			IF NOT EXISTS
				(
				SELECT 1 FROM [hub].[ObjectInfo] 
				WHERE ObjectName = @ObjectName
				AND SchemaName <> 'XXX'
				AND ObjectType = 'U'
				)
					SET @HasBeenDeployed = 'Table - '+@ObjectName+' has been dropped successfully'
			ELSE 
					SET @HasBeenDeployed = 'Something went wrong!!!! Table - '+@ObjectName+' not dropped yet, it still exists'
		END


	   
		--Delete View
		IF @VersionType = 'DV'
		BEGIN
			IF NOT EXISTS
				(
				SELECT 1 FROM [hub].[ObjectInfo] 
				WHERE ObjectName = @ObjectName
				AND SchemaName	= @SchemaName
				AND ObjectType	= 'V'
				)
					SET @HasBeenDeployed = 'View - '+@SchemaName+'.'+@ObjectName+' has been dropped successfully'
			ELSE 
					SET @HasBeenDeployed = 'Something went wrong!!!! View - '+@SchemaName+'.'+@ObjectName+' not dropped yet, it still exists'
		END



		--Create User
		IF @VersionType = 'CU'
		BEGIN
			DECLARE @Cnt_CU INT
			SELECT  @Cnt_CU =	COUNT(1) FROM hub.PermissionInfo
								WHERE LoginName = @ObjectName
								AND SchemaName  = @SchemaName

			IF @Cnt_CU >= 7
		
				SET @HasBeenDeployed = 'User - '+@ObjectName+' has been added successfully on Schema '+@SchemaName
			ELSE 
				SET @HasBeenDeployed = 'Something went wrong!!!! User - '+@ObjectName+' has not been added on Schema '+@SchemaName+' properly'
		END



		--Delete User
		IF @VersionType = 'DU'
		BEGIN
			DECLARE @Cnt_DU INT
			SELECT  @Cnt_DU =	COUNT(1) FROM hub.PermissionInfo 
								WHERE LoginName = @ObjectName
								AND SchemaName  = @SchemaName

			IF @Cnt_DU >= 7
		
				SET @HasBeenDeployed = 'Something went wrong!!!! User - '+@ObjectName+' still has removable access on Schema '+@SchemaName
			ELSE
				SET @HasBeenDeployed = 'Access of User - '+@ObjectName+' has been removed successfully from Schema '+@SchemaName
		END



		--Create Schema
		IF @VersionType = 'CS'
		BEGIN
			IF EXISTS
				(
				SELECT 1 FROM sys.schemas
				WHERE name = @SchemaName
				)
				SET @HasBeenDeployed = 'Schema - '+@SchemaName+' has been created successfully'
			ELSE 
				SET @HasBeenDeployed = 'Something went wrong!!!! Schema - '+@SchemaName+' has not been created'
		END

	
	
		--Delete Schema
		IF @VersionType = 'DS'
		BEGIN
			IF NOT EXISTS
				(
				SELECT 1 FROM sys.schemas
				WHERE name = @SchemaName
				)
				SET @HasBeenDeployed = 'Schema - '+@SchemaName+' has been removed successfully'
			ELSE 
				SET @HasBeenDeployed = 'Something went wrong!!!! Schema - '+@SchemaName+' has not been removed yet'
		END

	--END TRY
	

	--BEGIN CATCH
	--	SET @HasBeenDeployed= 'Error in executing the Stored Procedure (stp_CheckIfHasBeenDeployed)'
	--		DECLARE @ErrorMessage VARCHAR(MAX)	= ERROR_MESSAGE(),
	--				@ErrorSeverity INT			= ERROR_SEVERITY(),
	--				@ErrorState SMALLINT		= ERROR_STATE()
 			
	--		INSERT INTO [hub].ErrorLog([SPID],[DatetimeStamp],[Username],[Procedure],Message, Severity, State)
	--		VALUES(@@SPID,getdate(),ORIGINAL_LOGIN (),OBJECT_NAME(@@PROCID),@ErrorMessage, @ErrorSeverity,@ErrorState);
	--END CATCH

END
GO
/****** Object:  StoredProcedure [dbo].[stp_CleanUpData]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[stp_CleanUpData] AS
BEGIN
-- procedure code:  CUD
BEGIN TRY
/*
this procedure checks if data can de deleted bases on criteris:
	only if the cleanup is active for this table.
	if the number of days  between today and the STI_LOAD_DTS exceeds the Daycount
	if the numder of deliveries higher than the delivery being considered is bigger that SuccesfullDeliveyCount
	if the delivery isn't mentioned in the table hub.Archive

for metadata, it cleans logging and removes tables that should only have existed temporarily.
*/
	SET NOCOUNT ON
	INSERT INTO [hub].[ActivityLog]([SPID],[DatetimeStamp],[Username],[Procedure],[Parameters])
	VALUES(@@SPID,getdate(),ORIGINAL_LOGIN (),OBJECT_NAME(@@PROCID),'')

	--declarations
	Declare @StagingInDB varchar(100)
	Declare @StagingOutDB varchar(100)
	DECLARE @TableName varchar(50)
	DECLARE @SchemaName varchar(40)
	DECLARE @DBName varchar(40)
	declare @SQL varchar(8000)
	declare @DateColum varchar(30)
	declare @DayCount int
	declare @SuccessfulDeliveryCount int
	declare @DeliveryLimit decimal(22,0)
	declare @LastDelivery decimal(22,0)
	declare @Rank int
	declare @PartitionNumber int
	declare @PartitionId bigint
	declare @score  decimal(19,18)
	create table #INFO(
		DELIVERY_SQN decimal(22,0),
		ACT_DTS datetime2,
		DATUM Datetime2)
	create table #INFO2(
		DELIVERY_SQN decimal(22,0))
	create table #DELIVERY_SQN (
		DELIVERY_SQN decimal(22,0),
		Ranking int)

	--constants/parameters
	select @StagingOutDB = hub.Fn_ValidInput('database',ParamValue) FROM hub.Parameters where ParamName ='StagingOutDB'
	select @StagingInDB = hub.Fn_ValidInput('database',ParamValue) FROM hub.Parameters where ParamName ='StagingInDB'

	--checks
	IF NOT EXISTS (SELECT * FROM hub.MyNamespaces where SchemaName ='*')
	BEGIN
		raiserror('you do not have access to this procedure.(stp_CleanUpData)',16,3)
		RETURN
	END
	
	/*
	RemoveS XXX tables that didn't have a deployment within the last 2 months and all TMP tables
	XXX tables are a fallback mechanism in case a table change needs to be reversed.
	TMP tables a used exclusively for deleting data and shouldn't exist outside of this procedure.
	*/
	DECLARE EachXXX_CUD CURSOR
	READ_ONLY
	FOR 	select 'DROP TABLE '+DatabaseName+'.'+SchemaName+'.'+ObjectName
			from hub.ObjectInfo
			where SchemaName='XXX'
			and ObjectType='U'
				and ObjectName not in (
					select distinct TableName from hub.Deploys
					where DeployType='Supplier'
					and DeployDatetime >DATEADD(month,-2,getdate()))					
			union
			select 'DROP TABLE '+DatabaseName+'.TMP.'+ObjectName
			from hub.ObjectInfo
			where SchemaName='TMP' and ObjectType='U'
	OPEN EachXXX_CUD
	FETCH NEXT FROM EachXXX_CUD INTO @SQL
	WHILE (@@fetch_status <> -1)
	BEGIN
		IF (@@fetch_status <> -2)
		BEGIN
			EXEC(@SQL)
		END
		FETCH NEXT FROM EachXXX_CUD INTO @SQL
	END
	CLOSE EachXXX_CUD
	DEALLOCATE EachXXX_CUD

	-- remove expired safeguards from hub.Archive so it no longer prevents deleteing the data.
	delete from hub.Archive where ExpirationDate < convert(date,getdate())

	/*
	removing old logging. DLV logging is kept 5 years, other loggin is 1 year.
	*/
	-- removing mutation logging that did not constitute a change
	delete from T
	from [hub].[MutationsLog] T
		inner join (SELECT [Table],[Action],[user],[MutationDate],[K1],[K2],[K3],[K4],[K5],[K6],[K7],[K8],[K9],[K10],[K11]
					FROM [hub].[MutationsLog]
					group by [Table],[Action],[user],[MutationDate],[K1],[K2],[K3],[K4],[K5],[K6],[K7],[K8],[K9],[K10],[K11]
					having count(*) =2)F
			on T.[Table]=F.[Table]
			and T.[Action]=F.[Action] and T.[user]=F.[user]
			and T.[MutationDate]=F.[MutationDate] and isnull(T.K1,'')=isnull(F.K1,'')
			and isnull(T.K2,'')=isnull(F.K2,'') and isnull(T.K3,'')=isnull(F.K3,'')
			and isnull(T.K4,'')=isnull(F.K4,'') and isnull(T.K5,'')=isnull(F.K5,'')
			and isnull(T.K6,'')=isnull(F.K6,'') and isnull(T.K7,'')=isnull(F.K7,'')
			and isnull(T.K8,'')=isnull(F.K8,'') and isnull(T.K9,'')=isnull(F.K9,'')
			and isnull(T.K10,'')=isnull(F.K10,'') and isnull(T.K11,'')=isnull(F.K11,'')
			and T.[MutationDate] <dateadd(month,-3,getdate())

	--remove hub logging
	delete from hub.ActivityLog where DatetimeStamp <DATEADD(year,-1,getdate())
	delete from hub.MutationsLog where MutationDate <DATEADD(year,-1,getdate()) and [Table] <>'LOG_DD_DATA_DELIVERY'
	delete from hub.MutationsLog where MutationDate <DATEADD(year,-5,getdate())
	delete from D
	from hub.Deploys D
		left join (	select DeployType, SchemaName, TableName, max(DeployDatetime) DeployDatetime 
					from hub.Deploys 
					where not ScriptDatetime is null
					group by DeployType, SchemaName, TableName ) F 
			on D.DeployType=F.DeployType
			and D.SchemaName=F.SchemaName
			and D.TableName=F.TableName
			and D.DeployDatetime<F.DeployDatetime
	where D.DeployDatetime <DATEADD(year,-1,getdate())
	and not F.TableName is null -- the last version is always present.
	
	-- removingoude DLV logging, in an order that respects the foreign keys.
	select BTCH_ID, TRG_ENT_NM , TRG_ID, 1 Modus
	into #DlvOud
	from log.LOG_DD_DATA_DELIVERY 
	where  DATEADD(year,-5,getdate())> STRT_DTS_LD
		and LOAD_ST_CODE <>'DLV OK'

	--of deleted data, the detail logging is also deleted.
	insert into #DlvOud
	select DD.BTCH_ID, DD.TRG_ENT_NM , DD.TRG_ID, 2 Modus 
	from log.LOG_DD_DATA_DELIVERY DD
	inner join log.LOG_DLV_RULE_EXEC RE
		on RE.BTCH_ID=DD.BTCH_ID
	where DD.LOAD_ST_CODE='CLEANED'

	--of manually deleted data, the detail logging is also deleted when the final delivery is deleted.
	insert into #DlvOud
	select distinct D1.BTCH_ID, D1.TRG_ENT_NM , D1.TRG_ID, 3 Modus 
	from log.LOG_DD_DATA_DELIVERY D1
	inner join log.LOG_DLV_RULE_EXEC RE
		on RE.BTCH_ID=D1.BTCH_ID
	inner join log.LOG_DD_DATA_DELIVERY D2
		on D1.TRG_ENT_NM=D2.TRG_ENT_NM
		and D1.DELIVERY_SQN_CRNT_RUN <D2.DELIVERY_SQN_CRNT_RUN 
		and D1.LOAD_ST_CODE='DELETED'
		and D2.LOAD_ST_CODE='CLEANED'

	delete from T 
	from log.LOG_DD_LOAD_ERROR_FIELD  T
		inner join #DlvOud F
			on T.BTCH_ID=F.BTCH_ID
			and T.TRG_ID=F.TRG_ID
	delete from T 
	from log.LOG_DD_LOAD_ERROR_RECORD  T
		inner join #DlvOud F
			on T.BTCH_ID=F.BTCH_ID
			and T.TRG_ID=F.TRG_ID
	delete from T 
	from log.LOG_DLV_INPT_PARAM_USED  T
		inner join #DlvOud F
			on T.BTCH_ID=F.BTCH_ID
			and T.TRG_ID=F.TRG_ID
	delete from T 
	from log.LOG_DLV_RULE_EXEC  T
		inner join #DlvOud F
			on T.BTCH_ID=F.BTCH_ID
			and T.TRG_ID=F.TRG_ID
	delete from T 
	from log.LOG_DLV_RULE_OUTPT_DETAIL  T
		inner join #DlvOud F
			on T.BTCH_ID=F.BTCH_ID
			and T.TRG_ID=F.TRG_ID
	delete from T 
	from log.LOG_PWC_LOAD_ERROR  T
		inner join #DlvOud F
			on T.BTCH_ID=F.BTCH_ID
			and T.TRG_ID=F.TRG_ID
	delete from T 
	from log.LOG_DLV_EXECUTION  T
		inner join #DlvOud F
			on T.BTCH_ID=F.BTCH_ID
			and T.TRG_ID=F.TRG_ID
	delete from T 
	from log.LOG_DD_DATA_DELIVERY  T
		inner join #DlvOud F
			on T.BTCH_ID=F.BTCH_ID
			and T.TRG_ID=F.TRG_ID
			and F.Modus in(1)

	delete from log.CONF_DLV_STR_MAP_RULE
	where TRG_ID in (
		SELECT TE.TRG_ID
		FROM log.CONF_MD_TARGET_ENTITY TE
			left join ( select TRG_ID from log.LOG_DD_DATA_DELIVERY) DD
				on DD.TRG_ID=TE.TRG_ID
		where TE.TRG_ENT_SCHEMA is null	-- no longer exists in the database
			and DD.TRG_ID is null) -- not found in the delivery logging, so never had DLV or the last delivery is cleaned.
		
	delete from TE
	FROM log.CONF_MD_TARGET_ENTITY TE
		left join ( select TRG_ID from log.LOG_DD_DATA_DELIVERY) DD
			on DD.TRG_ID=TE.TRG_ID
	where TE.TRG_ENT_SCHEMA is null	-- - no longer exists in the database
		and DD.TRG_ID is null -- not found in the delivery logging, so never had DLV or the last delivery is cleaned.

	delete from log.CONF_MD_SOURCE_ENTITY
	where not SRC_ID  in (select distinct SRC_ID from log.LOG_DD_DATA_DELIVERY) -- not found in the delivery logging, so never had DLV or the last delivery is cleaned.
		and not SRC_ID  in (select distinct SRC_ID from log.CONF_MD_TARGET_ENTITY)--source is no linger used

	--removing old deliveries one table at a time
	DECLARE EachTable_CUD CURSOR
	KEYSET
	FOR	SELECT DISTINCT
			TableName, 
			case when N.Location='E' then @StagingInDB else @StagingOutDB end,
			N.SchemaName
		FROM hub.Suppliers S
			INNER JOIN hub.Namespaces N
				On S.SchemaNameSupplier=N.SchemaName
		WHERE ISNULL(CleanUpActive,0)=1
		ORDER BY TableName
	OPEN EachTable_CUD
	FETCH NEXT FROM EachTable_CUD INTO @TableName,@DBName,@SchemaName
	WHILE (@@fetch_status <> -1)
	BEGIN
		IF (@@fetch_status <> -2)
		BEGIN
			-- constanten per tabel
			SET @DateColum = null
			SET @DayCount = null
			SET @SuccessfulDeliveryCount = null
			SELECT 
				@DateColum=DateColum,
				@DayCount=DayCount,
				@SuccessfulDeliveryCount=SuccessfulDeliveryCount
			from [hub].[Suppliers]
			WHERE TableName=@TableName

			BEGIN TRY
				-- prep work making a table to switch with
				SET @SQL ='
				USE '+@DBName+'
				SELECT * 
				into TMP.'+@TableName+'
				FROM '+@SchemaName+'.'+@TableName+' 
				WHERE 1=0'
				EXEC (@SQL)
									
				--preperation
				TRUNCATE TABLE #DELIVERY_SQN
				TRUNCATE TABLE #INFO
				SET @LastDelivery = null
				SET @Rank = null
				SET @DeliveryLimit = null

				-- list of deliveries present in the table, the deliveres that remain in the end will be deleted.
				INSERT INTO #INFO
				SELECT DISTINCT DELIVERY_SQN, ACT_DTS, STI_LOAD_DTS from hub.PartitionContent where TableName=@TableName	

				-- ranking deliveries
				INSERT INTO #DELIVERY_SQN (DELIVERY_SQN,Ranking )
				SELECT DISTINCT
					DELIVERY_SQN, 
					DENSE_RANK () OVER (order by DELIVERY_SQN ASC)
				FROM #INFO
				GROUP BY DELIVERY_SQN

				-- ophalen van de laagste DELIVERY_SQN van de sluisviews, vanaf die gaan we tellen voor het aantale leveringen erna
				SELECT @LastDelivery= MIN(LastDelivery)
				FROM			hub.Subscribers S
					INNER JOIN	#DELIVERY_SQN D
						ON D.DELIVERY_SQN=LastDelivery
				WHERE TableName=@TableName 
					AND FeedbackIsMandatory=1
					and LastDelivery>0
	
				--als er geen sluisviews zijn of sluisviews genegeerd worden, dan nemen we de hoogste DELIVERY_SQN 
				IF (@LastDelivery is null or exists (select * from hub.Parameters where ParamName='CleanUpFromLastDelivery' and ParamValue='NO'))
					SELECT @LastDelivery = MAX(DELIVERY_SQN) from #DELIVERY_SQN
	 	
				--bepaal de rang van de levering vanaf waarvan we gaan tellen voor het aantal leveringen erna
				SELECT @Rank = Ranking
				FROM #DELIVERY_SQN
				WHERE DELIVERY_SQN=@LastDelivery

				--determine the highest delivery that van be deleted based on the retention .
				SELECT @DeliveryLimit = DELIVERY_SQN
				FROM #DELIVERY_SQN
				WHERE Ranking=@Rank-@SuccessfulDeliveryCount

				-- removing deliveries that do not meet the SuccesfullDeliveires count
				DELETE FROM #INFO
				WHERE DELIVERY_SQN > ISNULL(@DeliveryLimit,0)

				-- removing deliveries that do not meet the Daycount
				delete from #INFO
				where DATUM >= dateadd(day,-@DayCount,convert(datetime,convert(date,getdate())))

				--removing deliveries that are safeguarded based on DELIVERY_SQn
				delete from #INFO
				where DELIVERY_SQN IN
				(	SELECT DISTINCT DELIVERY_SQN
					from hub.Archive
					where [TableName] = @TableName)

				----removing deliveries that are safeguarded based on ACT_DTS
				DELETE FROM #INFO
				where DELIVERY_SQN IN(
					SELECT DISTINCT I.DELIVERY_SQN
					from hub.Archive A
					inner join #INFO I
						on DAY(I.ACT_DTS) = REPLACE(A.ACT_D,'*',DAY(I.ACT_DTS))*1
						and MONTH(I.ACT_DTS) = REPLACE(A.ACT_M,'*',MONTH(I.ACT_DTS))*1
						and YEAR(I.ACT_DTS) = REPLACE(A.ACT_Y,'*',YEAR(I.ACT_DTS))*1
					where A.TableName in('*', @TableName))

				--af this point, #IFO oly contains deliveries that should be deleted.
				if (select count(*) from #INFO)>0 
				begin
					-- finishing TMP table, only now because it takes time and we actually are going to use the TMP table
					exec stp_Indexes 'TMP',@TableName
					exec hub.stp_Constraints @TableName, 'TMP',@SchemaName

					-- updating DLV informatie ( Delivery immediately becomes invisible for subscribers)
					Update log.LOG_DD_DATA_DELIVERY
					SET LOAD_ST_CODE='CLEANED'
					where TRG_ENT_NM=@TableName
					and DELIVERY_SQN_CRNT_RUN in (SELECT DELIVERY_SQN FROM #INFO)

					-- removing data by switching
					DECLARE EachPartitionNumber_CUD CURSOR
					READ_ONLY
					FOR SELECT P.PartitionId,
							P.PartitionNumber,
							AVG(convert(decimal(19,5),case when I.DELIVERY_SQN is null then 0 else 1 end)) score
						FROM hub.PartitionContent PC
							inner join hub.PartitionInfo P
								on P.TableName=PC.TableName
								and P.PartitionId=PC.PartitionId
							left join (select distinct DELIVERY_SQN from #INFO) I
								on I.DELIVERY_SQN=PC.DELIVERY_SQN
						where P.TableName= @TableName
						group by P.PartitionNumber, P.PartitionId
						having AVG(convert(decimal(19,5),case when I.DELIVERY_SQN is null then 0 else 1 end))=1.0-- all deliveries in the partition can be removed.
						and sum(PC.Records) = min(P.Records) -- dubbelcheck if rowcount hasn't changed 
						order by 2 desc -- by going from highest partition number down, the lowers partitionnumbers remain unchanged.
					OPEN EachPartitionNumber_CUD
					FETCH NEXT FROM EachPartitionNumber_CUD INTO @PartitionId,@PartitionNumber,@score
					WHILE (@@fetch_status <> -1)
					BEGIN
						IF (@@fetch_status <> -2)
						BEGIN		
							--logging the switch
							select @SQL = 'Switch '''+@TableName+''' for '+CONVERT(varchar,UpperBoundary,112)
							from hub.PartitionInfo
							where DatabaseName=@DBName
								and PartitionNumber=@PartitionNumber
								and TableName=@TableName
								and SchemaName=@SchemaName

							INSERT INTO [hub].[ActivityLog]([SPID],[DatetimeStamp],[Username],[Procedure],[Parameters])
							VALUES(@@SPID,getdate(),ORIGINAL_LOGIN (),OBJECT_NAME(@@PROCID),@SQL)

							--marking that we are going to alter the content of the table
							update P 
							set Fase='Transfer'
							from hub.Partitions P
							where P.TableName=@TableName 
								and P.PartitionId=@PartitionId

							SET @SQL =
							'USE '+@DBName +';
							ALTER TABLE ['+@SchemaName+'].[' + @TableName + '] 
							SWITCH PARTITION '+convert(varchar,@PartitionNumber)+' TO TMP.[' + @TableName +'] PARTITION '+convert(varchar,@PartitionNumber)+';									
							TRUNCATE TABLE TMP.'+@TableName
							EXEC (@SQL)

							-- update the list of deleveries to be deleted.
							DELETE FROM #INFO
							where DELIVERY_SQN in (select DELIVERY_SQN from hub.PartitionContent where TableName=@TableName and PartitionId=@PartitionId)
							and not DELIVERY_SQN in (select DELIVERY_SQN from hub.PartitionContent where TableName=@TableName and PartitionId<>@PartitionId)
							
															
						END
						FETCH NEXT FROM EachPartitionNumber_CUD INTO @PartitionId,@PartitionNumber,@score
					END
					CLOSE EachPartitionNumber_CUD
					DEALLOCATE EachPartitionNumber_CUD

					-- if there are still deliveries to be deleted, then max 3 to not lock the table for too long while still recuding the backlog of deliveries to be deleted.
					truncate table #INFO2
					insert into #INFO2
					select distinct top 3 DELIVERY_SQN from #INFO

					-- removing data by DELETE
					DECLARE EachDeletedDelivery_CUD CURSOR
					READ_ONLY
					FOR SELECT distinct DELIVERY_SQN  FROM #INFO2
					OPEN EachDeletedDelivery_CUD
					FETCH NEXT FROM EachDeletedDelivery_CUD INTO @DeliveryLimit
					WHILE (@@fetch_status <> -1)
					BEGIN
						IF (@@fetch_status <> -2)
						BEGIN
							--logging that DELETE is used.
							SET @SQL = 'Delete '''+@TableName+''' for '+CONVERT(varchar,@DeliveryLimit)
											
							INSERT INTO [hub].[ActivityLog]([SPID],[DatetimeStamp],[Username],[Procedure],[Parameters])
							VALUES(@@SPID,getdate(),ORIGINAL_LOGIN (),OBJECT_NAME(@@PROCID),@SQL)

							--we mark that the content of the table is going to change.
							update P 
							set Fase='Transfer'
							from hub.Partitions P
							inner join hub.PartitionContent  PC
							on P.TableName=PC.TableName
							and P.PartitionId=PC.PartitionId
							where PC.TableName=@TableName 
								and PC.DELIVERY_SQN =@DeliveryLimit

							-- we delete 5.000.000 rows at a time
							SET @SQL ='
							USE '+@DBName+'
							SELECT 1 x into #Each5Million
							WHILE @@ROWCOUNT >0
							BEGIN
								DELETE top(5000000)
								FROM '+@SchemaName+'.'+@TableName+'
								WHERE DELIVERY_SQN ='+convert(varchar,@DeliveryLimit)+'
							END'
							EXEC (@SQL)

						END
						FETCH NEXT FROM EachDeletedDelivery_CUD INTO @DeliveryLimit
					END
					CLOSE EachDeletedDelivery_CUD
					DEALLOCATE EachDeletedDelivery_CUD	
						
					--update status
					update hub.Suppliers
					set LastStatus='Data Cleaned', 
						LastExecuted=getdate()
					where TableName=@TableName
					and SchemaNameSupplier=@SchemaName
				end
				-- cleaning switch table
				SET @SQL ='
				USE '+@DBName+'
				DROP TABLE TMP.'+@TableName
				EXEC (@SQL)
				END TRY
				BEGIN CATCH
					print ERROR_MESSAGE ( ) 
					update hub.Suppliers
					set LastStatus='error occurred', 
						LastExecuted=getdate()
					where TableName=@TableName
					and SchemaNameSupplier=@SchemaName

					-- cleaning switch table
					SET @SQL ='
					USE '+@DBName+'
					DROP TABLE TMP.'+@TableName
					EXEC (@SQL)
					-- cleaning cursors
					exec hub.stp_CloseCursor 'EachPartitionNumber_CUD'
					exec hub.stp_CloseCursor 'EachDeletedDelivery_CUD'
				END CATCH
			END		
			FETCH NEXT FROM EachTable_CUD INTO @TableName,@DBName,@SchemaName
			END
			CLOSE EachTable_CUD
			DEALLOCATE EachTable_CUD

			INSERT INTO [hub].[ActivityLog]([SPID],[DatetimeStamp],[Username],[Procedure],[Parameters])
			VALUES(@@SPID,getdate(),ORIGINAL_LOGIN (),OBJECT_NAME(@@PROCID),'end cleanup')

			-- perform maintenance on partitions
			exec hub.stp_PartitionMaintenance 'B'

			--tightning constraints
			exec  hub.[stp_Constraints] NULL,NULL,NULL
		END TRY
		BEGIN CATCH
			 DECLARE @ErrorMessage varchar(MAX) = ERROR_MESSAGE(),
						@ErrorSeverity int = ERROR_SEVERITY(),
						@ErrorState smallint = ERROR_STATE()
 			INSERT INTO [hub].ErrorLog([SPID],[DatetimeStamp],[Username],[Procedure],Message, Severity, State)
			VALUES(@@SPID,getdate(),ORIGINAL_LOGIN (),OBJECT_NAME(@@PROCID),@ErrorMessage, @ErrorSeverity,@ErrorState);
	
			exec hub.stp_CloseCursor 'EachXXX_CUD'
			exec hub.stp_CloseCursor 'EachTable_CUD'
			exec hub.stp_CloseCursor 'EachPartitionNumber_CUD'
			exec hub.stp_CloseCursor 'EachDeletedDelivery_CUD'

			RAISERROR ( @ErrorMessage, @ErrorSeverity, @ErrorState)  ;
	
		END CATCH
end
GO
/****** Object:  StoredProcedure [dbo].[stp_ConfigCustomViews]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[stp_ConfigCustomViews] (@SchemaName varchar(10),@TableName varchar(100)=null) 
AS
BEGIN
/*	
	this proc is ONLY used in DEV. It scripts the configuration of a subscriber view and generates a version-script.
	this version script still needs to be deployed on DEV in order to set the version for this view on DEV.
	it can also script all the views for a subscriber, @TableName is NULL in that case.
*/
	SET NOCOUNT ON
	INSERT INTO [hub].[ActivityLog]([SPID],[DatetimeStamp],[Username],[Procedure],[Parameters])
	VALUES(@@SPID,getdate(),ORIGINAL_LOGIN (),OBJECT_NAME(@@PROCID),ISNULL(@SchemaName,'')+'#'+ISNULL(@TableName,''))

	--declarations
	DECLARE @Environment char(1)
	DECLARE @Clause varchar(8000)
	DECLARE @SqlCode varchar(8000)
	DECLARE @ColumnName varchar(8000)
	DECLARE @FeedbackIsMandatory bit
	declare @TableAlias varchar(100)
	declare @nu varchar(100)
	DECLARE @ExceptionType varchar(8000)
	DECLARE @SchemaNameSubscriber varchar(8000)
	DECLARE @StatePermission varchar(8000)
	DECLARE @NamePermission varchar(8000)
	DECLARE @ColumnPermission varchar(8000)

	--constants/parameters
	SELECT @SchemaName= hub.Fn_ValidInput('schema',@SchemaName)
	SELECT @TableName= hub.Fn_Alias (@SchemaName,@TableName)
	select @Environment = hub.Fn_ValidInput('environment',ParamValue) FROM hub.Parameters where ParamName ='Environment'
	
-- checks
  	IF @Environment <>'O'
	BEGIN
		raiserror('stp_ConfigCustomViews can only be used in DEV.(stp_ConfigCustomViews)',16,3)
		RETURN
	END
	IF NOT EXISTS (SELECT * FROM hub.MyNamespaces 
	where SchemaName in (@SchemaName,'*'))
	BEGIN
		raiserror('you do not have access to this schema.(stp_ConfigCustomViews)',16,3)
		RETURN
	END	
	IF @SchemaName is null
	BEGIN
		raiserror('The parameter @SchemaName needs to be filled.(stp_ConfigCustomViews)',16,3)
		RETURN
	END	
	IF (SELECT COUNT(*) from hub.Subscribers where @SchemaName =SchemaNameSubscriber and TableName=ISNULL(@TableName,TableName))=0 
	BEGIN
		raiserror('Table is not subscribed to by this schema.(stp_ConfigCustomViews)',16,3)
		RETURN
	END

	-- script the views	
	DECLARE EachTable CURSOR
	READ_ONLY
	FOR SELECT TableName, FeedbackIsMandatory from hub.Subscribers 
			where SchemaNameSubscriber = @SchemaName
			and (	TableName = @TableName 
					or @TableName is null) 
	OPEN EachTable
	FETCH NEXT FROM EachTable INTO @TableName,@FeedbackIsMandatory
	WHILE (@@fetch_status <> -1)
	BEGIN
		IF (@@fetch_status <> -2)
		BEGIN 
			set @nu =convert(varchar,getdate(),120)
			print replicate('-',30) +'     '+@SchemaName+'.'+@TableName+'     '+replicate('-',30)
			print replicate('-',35) +@nu+replicate('-',35)
			-- signal that this is a deployment
			print 'EXEC [stp_Deploy] '''+@SchemaName+''','''+@TableName+''','''+@nu+''',''Subscriber'',NULL,NULL'
			-- add subscription
			print 'exec [dbo].[stp_NewSubsciption] '''+@TableName+''','''+@SchemaName+''','+convert(varchar,@FeedbackIsMandatory)+''
			print ''
			-- script exceptions
			DECLARE EachException CURSOR
			READ_ONLY
			FOR select TableName, SchemaName, ExceptionType, TableAlias,StatePermission, NamePermission, ColumnPermission
				from hub.Exceptions
				where SchemaName=@SchemaName
				and TableName=@TableName
			OPEN EachException
			FETCH NEXT FROM EachException INTO @TableName,@SchemaNameSubscriber,@ExceptionType,@TableAlias,@StatePermission, @NamePermission, @ColumnPermission
			WHILE (@@fetch_status <> -1)
			BEGIN
				IF (@@fetch_status <> -2)
				BEGIN
					print 'insert into hub.Exceptions(TableName, SchemaName, ExceptionType, TableAlias,StatePermission, NamePermission, ColumnPermission)'
					print 'SELECT '+isnull(''''+@TableName+'''','NULL')+','++isnull(''''+@SchemaNameSubscriber+'''','NULL')+','++isnull(''''+@ExceptionType+'''','NULL')+','++isnull(''''+@TableAlias+'''','NULL')+','++isnull(''''+@StatePermission+'''','NULL')+','++isnull(''''+@NamePermission+'''','NULL')+','++isnull(''''+@ColumnPermission+'''','NULL')
					print ''
				END
				FETCH NEXT FROM EachException INTO @TableName,@SchemaNameSubscriber,@ExceptionType,@TableAlias,@StatePermission, @NamePermission, @ColumnPermission
			END
			CLOSE EachException
			DEALLOCATE EachException

			-- instruction to cleanup previous customizations			
			print 'exec [dbo].[stp_DeleteCustomView] '''+@SchemaName+''','''+@TableName+''''

			--instructions to add customazations as in current database.
			DECLARE EachRecord CURSOR
			READ_ONLY
			FOR select Clause, replace(SqlCode,'''',''''''), ColumnName from hub.CustomViewsConfig
			where @SchemaName= SchemaName
			and @TableName=TableName
			order by ID
			OPEN EachRecord
			FETCH NEXT FROM EachRecord INTO @Clause,@SqlCode,@ColumnName
			WHILE (@@fetch_status <> -1)
			BEGIN
				IF (@@fetch_status <> -2)
				BEGIN
					print 'exec [dbo].[stp_AddCustomView] '''+@SchemaName+''','''+@TableName+''','''+@Clause+''' ,'''+@SqlCode+''','''+isnull(@ColumnName,'')+''''
				END
				FETCH NEXT FROM EachRecord INTO @Clause,@SqlCode,@ColumnName
			END
			CLOSE EachRecord
			DEALLOCATE EachRecord
			
			IF (select COUNT(*) from hub.CustomViewsConfig
			where @SchemaName= SchemaName
			and @TableName=TableName)>0
				print 'GO'

			-- instruction to refresh (=realize) the configured view
			print '--exec [dbo].[stp_ScriptCustomViews] '''+@SchemaName+''','''+@TableName+''''
			print 'exec [dbo].[stp_RefreshCustomViews] '''+@SchemaName+''','''+@TableName+''''
			print 'GO'
			print ''
		END
		FETCH NEXT FROM EachTable INTO @TableName,@FeedbackIsMandatory
	END
	CLOSE EachTable
	DEALLOCATE EachTable
END

GO
/****** Object:  StoredProcedure [dbo].[stp_DLV_DeleteDelivery]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[stp_DLV_DeleteDelivery] (@BTCH_ID bigint )
AS
begin
	SET NOCOUNT ON
	INSERT INTO [hub].[ActivityLog]([SPID],[DatetimeStamp],[Username],[Procedure],[Parameters])
	VALUES(@@SPID,getdate(),ORIGINAL_LOGIN (),OBJECT_NAME(@@PROCID),ISNULL(convert(varchar,@BTCH_ID),'') )

	-- Dit script verwijderd een levering op basis van BTCH_ID die op status DLV NOT OK staat in log.LOG_DD_DATA_DELIVERY
	-- Hij bepaald zelf welk DELIVERY_SQN die moet verwijderen aan de hand van LOG_DD_DATA_DELIVERY en hub.Suppliers
	
	--declarations
	declare @SchemaName  varchar(10)
	declare @TableName  varchar(50)
	declare @DELIVERY_SQN  decimal (22,0)
	declare @SQL  nvarchar (500)
	declare @ParameterDefinition  nvarchar (100)
	DECLARE @RowsDeleted INTEGER
	declare @LOAD_ST_CODE varchar(100)
	DECLARE @Environment char(1)

	--constants/parameters
	select @Environment = hub.Fn_ValidInput('environment',ParamValue) FROM hub.Parameters where ParamName ='Environment'	
	SELECT @SchemaName= TE.TRG_ENT_SCHEMA, 
		@TableName=DD.TRG_ENT_NM, 
		@DELIVERY_SQN=DD.DELIVERY_SQN_CRNT_RUN,
		@LOAD_ST_CODE=LOAD_ST_CODE
	FROM log.LOG_DD_DATA_DELIVERY DD
		inner join log.CONF_MD_TARGET_ENTITY TE
			on DD.TRG_ID=TE.TRG_ID
	WHERE BTCH_ID = @BTCH_ID;

	--checks
	IF @Environment in ('A','P') and NOT EXISTS (SELECT * FROM hub.MyNamespaces where SchemaName ='*')
	BEGIN
		raiserror('you do not have access to this procedure.(stp_DLV_DeleteDelivery)',16,3)
		RETURN
	END
	if @SchemaName is null
	BEGIN
		RAISERROR('The parameter @BTCH_ID is not found in log.LOG_DD_DATA_DELIVERY.(stp_DLV_DeleteDelivery)',16,1)
		RETURN
	END
	if @LOAD_ST_CODE <>'DLV NOT OK'
	BEGIN
		RAISERROR('The parameter @BTCH_ID does not point to a failed DLV check.(stp_DLV_DeleteDelivery)',16,1)
		RETURN
	END
	IF @SchemaName is null
	BEGIN
		RAISERROR('No SchemaName is found.(stp_DLV_DeleteDelivery)',16,1)
		RETURN
	END
	IF @TableName is null
	BEGIN
		RAISERROR('No TableName is found.(stp_DLV_DeleteDelivery)',16,1)
		RETURN
	END
	IF @DELIVERY_SQN is null
	BEGIN
		RAISERROR('No DELIVERY_SQN is found.(stp_DLV_DeleteDelivery)',16,1)
		RETURN
	END

	-- data verwijderen
	select @SQL = ' DELETE TOP (5000000) from '+DatabaseName+'.'+SchemaName+'.'+TableName+' where DELIVERY_SQN = '+convert(varchar,@DELIVERY_SQN)
	from hub.Report
	where SchemaName =@SchemaName
	and TableName=@TableName
	and Type ='Supplier'
	and InDatabase=1

	SET @RowsDeleted = 1
	WHILE (@RowsDeleted > 0)
	BEGIN
		EXECUTE (@SQL)
		SET @RowsDeleted = @@ROWCOUNT
	END

	-- DLV bijwerken
	UPDATE log.LOG_DD_DATA_DELIVERY 
	set LOAD_ST_CODE = 'DELETED'
	WHERE BTCH_ID = @BTCH_ID
	AND LOAD_ST_CODE = 'DLV NOT OK'
	and TRG_ENT_NM=@TableName;

end

GO
/****** Object:  StoredProcedure [dbo].[stp_DLV_GetDeliveryInfo]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[stp_DLV_GetDeliveryInfo] @TableName VARCHAR(100), @DELIVERY_SQN DECIMAL(15,0)
AS
BEGIN
-- procedure code:  I
/********************************************************************************************************************************************************
**     Procedure:               [dbo].[stp_DLV_GetDeliveryInfo]
**     Created By:              Alistair Stoddart
**     Creation Date:           2020-03-03
**     Description:				Called as part of the DLV checks to get required DLV information for latest Delivery
**     
**     Parameters:				@TableName : Table to query
**								@DELIVERY_SQN : Last known DELIVERY_SQN
**     
**     Returns:					1 record
**									STI_LOAD_DTS varchar(29), ACT_DTS varchar(29), PREV_ACT_DTS varchar(29), DELIVERY_SQN DECIMAL(15,0)

**     
**     Version History
**	Changed By		Change Date		Change
**
********************************************************************************************************************************************************/
	BEGIN TRY

		SET NOCOUNT ON

		/* -- DEV PARAMETERS
		DECLARE @TableName VARCHAR(100) = 'TRD_AGRM_ACR_DS', @DELIVERY_SQN DECIMAL(15,0) = 155
		*/


		DECLARE @Next_DELIVERY_SQN DECIMAL(15,0)
		DECLARE @SchemaName VARCHAR(100)
		DECLARE @StagingDB VARCHAR(100)
		DECLARE @StagingInDB VARCHAR(100)
		DECLARE @StagingOutDB VARCHAR(100)
		DECLARE @SQLCommand NVARCHAR(1000)
		DECLARE @DateColumn VARCHAR(100)


		-- Check Parameter supplied
		IF @TableName is null
		BEGIN
			RAISERROR('The parameter @TableName needs to be filled.(stp_DLV_GetDeliveryInfo)',16,3)
			RETURN
		END	
		-- check Table exists
		IF ISNULL((SELECT COUNT(1) FROM hub.Suppliers WHERE TableName = @TableName),0) <> 1
		BEGIN
			RAISERROR('The parameter @TableName is unknown in hub.Suppliers.(stp_DLV_GetDeliveryInfo)',16,3)
			RETURN
		END	
		-- DELIVERY_SN must be > 0
		IF @DELIVERY_SQN <= 0
		BEGIN
			RAISERROR('There parameter @DELIVERY_SQN must be greater than 0.(stp_DLV_GetDeliveryInfo)',16,3)
			RETURN
		END	


		-- Get Staging DBs from Parameters table
		SELECT @StagingInDB = ParamValue FROM hub.Parameters WHERE ParamName = 'StagingInDB'
		SELECT @StagingOutDB = ParamValue FROM hub.Parameters WHERE ParamName = 'StagingOutDB'


		-- Get SchemaName and DateColumn for table
		SELECT 
			@SchemaName = SchemaNameSupplier,
			@DateColumn = DateColum
		FROM hub.Suppliers sup
		WHERE sup.TableName = @TableName
		
		-- Get database where table is located
		SELECT @StagingDB = CASE WHEN nm.[Location] = 'I' THEN @StagingOutDB ELSE @StagingInDB END
		FROM hub.Namespaces nm
		WHERE nm.SchemaName = @SchemaName

		-- If supplied DELIVERY_SQN is NULL, set to 0
		IF @DELIVERY_SQN IS NULL 
			SET @DELIVERY_SQN = 0



		-- Get Next DELIVERY_SQN in table
		SET @SQLCommand = 'SELECT @Next_DELIVERY_SQN = MIN(DELIVERY_SQN) ' +
						  'FROM ' + @StagingDB + '.' + @SchemaName + '.' + @TableName + ' ' +
						  'WHERE DELIVERY_SQN > ' + CAST(@DELIVERY_SQN AS VARCHAR)
		-- Get results into table
		EXEC sp_executesql @SQLCommand, N'@Next_DELIVERY_SQN DECIMAL(15,0) OUTPUT', @Next_DELIVERY_SQN = @Next_DELIVERY_SQN OUTPUT


		-- If no delivery found
		IF @Next_DELIVERY_SQN IS NULL
		BEGIN
			RAISERROR('There is no next delivery available.(stp_DLV_GetDeliveryInfo)',16,3)
			RETURN
		END	



		-- Now return results to caller
		SET @SQLCommand = 'SELECT TOP 1 ' + 
						  '  CONVERT(varchar(29), ' + @DateColumn + ', 120) as STI_LOAD_DTS, ' + 
						  '  CONVERT(varchar(29), ACT_DTS, 120) as ACT_DTS, ' + 
						  '  CONVERT(varchar(29), PREV_ACT_DTS, 120) as PREV_ACT_DTS, ' + 
						  '  DELIVERY_SQN as DELIVERY_SQN ' + 
						  'FROM ' + @StagingDB + '.' + @SchemaName + '.' + @TableName + ' ' +
						  'WHERE DELIVERY_SQN = ' + CAST(@Next_DELIVERY_SQN AS VARCHAR)
		EXEC(@SQLCommand)


	END TRY
	BEGIN CATCH
		 DECLARE @ErrorMessage varchar(MAX) = ERROR_MESSAGE(),
					@ErrorSeverity int = ERROR_SEVERITY(),
					@ErrorState smallint = ERROR_STATE()

 		INSERT INTO [hub].ErrorLog([SPID],[DatetimeStamp],[Username],[Procedure],Message, Severity, State)
		VALUES(@@SPID,getdate(),ORIGINAL_LOGIN (),OBJECT_NAME(@@PROCID),@ErrorMessage, @ErrorSeverity,@ErrorState);

		RAISERROR ( @ErrorMessage, @ErrorSeverity, @ErrorState)  ;
	
	END CATCH
END

GO
/****** Object:  StoredProcedure [dbo].[stp_DLV_History]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[stp_DLV_History] ( @TableName varchar(100))
AS
BEGIN
	SET NOCOUNT ON
	INSERT INTO [hub].[ActivityLog]([SPID],[DatetimeStamp],[Username],[Procedure],[Parameters])
	VALUES(@@SPID,getdate(),ORIGINAL_LOGIN (),OBJECT_NAME(@@PROCID),ISNULL(@TableName,'') )

	--declarations
	DECLARE @SQL varchar(8000)
	declare @STI_LOAD_DTS varchar(1000)
	DECLARE @MIN BIGINT
	DECLARE @Environment char(1)
	CREATE TABLE #DELIVERY(
		DELIVERY_SQN decimal(22,0),
		STI_LOAD_DTS datetime2,
		ACT_DTS datetime2)

	--constants/parameters
	select @Environment = hub.Fn_ValidInput('environment',ParamValue) FROM hub.Parameters where ParamName ='Environment'
	SELECT @TableName= hub.Fn_ValidInput('table',@TableName)

	SELECT @STI_LOAD_DTS=
	COALESCE(
		max(case when ColumnName='DIH__PUBLICATION_INSTANCE_DATE' then ColumnName else null end),
		max(case when ColumnName='STI_LOAD_DTS' then ColumnName else null end),
		max(case when ColumnName='LOAD_DTS' then ColumnName else null end))
  FROM [hub].[ColumnInfo]
  where ObjectType='U'
  and ObjectName=@TableName
  and ColumnName in ('DIH__PUBLICATION_INSTANCE_DATE','LOAD_DTS','STI_LOAD_DTS')
  and SchemaName not in ('XXX','TMP','dbo')

	--checks
		--checks
	IF @Environment in ('A','P') and NOT EXISTS (SELECT * FROM hub.MyNamespaces where SchemaName ='*')
	BEGIN
		raiserror('you do not have access to this procedure.(stp_DLV_History)',16,3)
		RETURN
	END
	if nullif(@TableName,'') is null
	BEGIN
		RAISERROR('The parameter @TableName needs to be filled.(stp_DLV_History)',16,1)
		RETURN
	END

	if (select top 1 1 from hub.Suppliers where TableName= @TableName)is null 
	BEGIN
		RAISERROR('The information from the Supplier needs to be added before a DLV history can be made.(stp_DLV_History)',16,1)
		RETURN
	END

	if (select top 1 1 from log.CONF_MD_TARGET_ENTITY where TRG_ENT_NM= @TableName)is null 
	BEGIN
		RAISERROR('The target needs to be added to DLV before a DLV history can be made.(stp_DLV_History)',16,1)
		RETURN
	END


	select @SQL = ' 
	insert into #DELIVERY
	select DELIVERY_SQN, max('+@STI_LOAD_DTS+'), max(ACT_DTS)
	from ['+DatabaseName+'].['+SchemaName+'].['+TableName+'] with (nolock)
	group by DELIVERY_SQN'
	from hub.Report
	where TableName=@TableName
	and Type ='Supplier'
	and InDatabase =1
	exec(@SQL)


	SELECT @MIN = min(BTCH_ID) from log.LOG_DD_DATA_DELIVERY
	SET @MIN=ISNULL(@MIN,0)

	INSERT INTO log.LOG_DD_DATA_DELIVERY(
		BTCH_ID,
		TRG_ID ,
		SRC_ID,
		TRG_ENT_NM,
		SRC_ENT_NM,
		WF_RUNID_LD,
		ACT_DTS_CRNT_RUN,
		DELIVERY_SQN_CRNT_RUN,
		STRT_DTS_LD,
		END_DTS_LD,
		STI_LOAD_DTS ,
		LOAD_ST_CODE,
		SRC_DELIVR_TP_CODE,
		SRC_DELIVR_INTRVL_CODE)
	SELECT
		@MIN-ROW_NUMBER () OVER (ORDER BY DELIVERY_SQN,TAB.STI_LOAD_DTS) AS BTCH_ID,
		TE.TRG_ID                                  AS TRG_ID ,
		SE.SRC_ID                                  AS SRC_ID,
		TE.TRG_ENT_NM                              AS TRG_ENT_NM,
		SE.SRC_ENT_NM                              AS SRC_ENT_NM,
		-ROW_NUMBER () OVER (ORDER BY DELIVERY_SQN,TAB.STI_LOAD_DTS) AS WF_RUNID_LD,
		TAB.ACT_DTS                                AS ACT_DTS_CRNT_RUN,
		TAB.DELIVERY_SQN                           AS DELIVERY_SQN_CRNT_RUN,
		TAB.STI_LOAD_DTS         AS STRT_DTS_LD,
		TAB.STI_LOAD_DTS         AS END_DTS_LD,
		TAB.STI_LOAD_DTS         AS STI_LOAD_DTS ,
		'DLV OK'                                   AS LOAD_ST_CODE,
		SE.SRC_DELIVR_TP_CODE                      AS SRC_DELIVR_TP_CODE,
		SE.SRC_DELIVR_INTRVL_CODE                  AS SRC_DELIVR_INTRVL_CODE
	FROM #DELIVERY AS TAB with (nolock)
		INNER JOIN log.CONF_MD_TARGET_ENTITY TE with (nolock)
			ON TRG_ENT_NM = @TableName 
		INNER JOIN log.CONF_MD_SOURCE_ENTITY SE with (nolock)
			ON TE.SRC_ID = SE.SRC_ID
		LEFT JOIN log.LOG_DD_DATA_DELIVERY F
			on F.TRG_ENT_NM=TE.TRG_ENT_NM 
			and isnull(F.DELIVERY_SQN_CRNT_RUN,-1)=isnull(TAB.DELIVERY_SQN,-1)
	WHERE F.TRG_ENT_NM is null
END

GO
/****** Object:  StoredProcedure [dbo].[stp_DLV_RuleMap]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[stp_DLV_RuleMap] (@TRG_ENT_NM VARCHAR(100),@DLV_RULE_NO VARCHAR(10),@IND_PERFORM_RULE_YN VARCHAR(1))AS
BEGIN
	SET NOCOUNT ON
	INSERT INTO [hub].[ActivityLog]([SPID],[DatetimeStamp],[Username],[Procedure],[Parameters])
	VALUES(@@SPID,getdate(),ORIGINAL_LOGIN (),OBJECT_NAME(@@PROCID),ISNULL(@TRG_ENT_NM,'')   +'#'+ISNULL(@DLV_RULE_NO,'')   +'#'+ISNULL(@IND_PERFORM_RULE_YN,'')  )

	--declarations
	DECLARE @Environment char(1)

	--constants/parameters
	select @Environment = hub.Fn_ValidInput('environment',ParamValue) FROM hub.Parameters where ParamName ='Environment'
	SELECT @TRG_ENT_NM= hub.Fn_ValidInput('table',@TRG_ENT_NM)
	SELECT @IND_PERFORM_RULE_YN = hub.Fn_ValidInput('clause',@IND_PERFORM_RULE_YN) 
	
	--checks
		--checks
	IF @Environment in ('A','P') and NOT EXISTS (SELECT * FROM hub.MyNamespaces where SchemaName ='*')
	BEGIN
		raiserror('you do not have access to this procedure.(stp_DLV_RuleMap)',16,3)
		RETURN
	END
	if nullif(@TRG_ENT_NM,'') is null
	BEGIN
		RAISERROR('The parameter @TRG_ENT_NM needs to be filled.(stp_DLV_RuleMap)',16,1)
		RETURN
	END
	IF isnull((select count(*)
	from [log].[CONF_MD_TARGET_ENTITY]
	where TRG_ENT_NM=@TRG_ENT_NM),0)=0
	BEGIN
		RAISERROR('The parameter @TRG_ENT_NM is not found in log.CONF_MD_TARGET_ENTITY.(stp_DLV_RuleMap)',16,1)
		RETURN
	END
	if nullif(@DLV_RULE_NO,'') is null
	BEGIN
		RAISERROR('The parameter @DLV_RULE_NO needs to be filled.(stp_DLV_RuleMap)',16,1)
		RETURN
	END
	IF isnull((select count(*)
	from [log].CONF_DLV_RULE
	where DLV_RULE_NO=@DLV_RULE_NO),0)=0
	BEGIN
		RAISERROR('The parameter @DLV_RULE_NO is not found in log.CONF_DLV_RULE.(stp_DLV_RuleMap)',16,1)
		RETURN
	END
	if not ISNULL(@IND_PERFORM_RULE_YN,'N') in ('Y','N') 
	BEGIN
		RAISERROR('The parameter @IND_PERFORM_RULE_YN is not NULL, Y or N.(stp_DLV_RuleMap)',16,1)
		RETURN
	END
	;

    MERGE
        log.CONF_DLV_STR_MAP_RULE AS T
    USING(	SELECT
                TE.TRG_ID,
                R.DLV_RULE_ID,
                @IND_PERFORM_RULE_YN IND_PERFORM_RULE_YN
            FROM
                log.CONF_MD_TARGET_ENTITY TE
            CROSS JOIN
                log.CONF_DLV_RULE R
            WHERE
                R.DLV_RULE_NO =@DLV_RULE_NO
				AND TE.TRG_ENT_NM=@TRG_ENT_NM) AS S
    ON
        T.TRG_ID = S.TRG_ID
		AND T.DLV_RULE_ID=S.DLV_RULE_ID
    WHEN MATCHED THEN
		UPDATE SET IND_PERFORM_RULE_YN = S.IND_PERFORM_RULE_YN
    WHEN NOT MATCHED THEN
		INSERT(
            TRG_ID,
            DLV_RULE_ID,
            IND_PERFORM_RULE_YN)
        VALUES(
			S.TRG_ID,
            S.DLV_RULE_ID,
            S.IND_PERFORM_RULE_YN); 
END 

GO
/****** Object:  StoredProcedure [dbo].[stp_DLV_Source]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[stp_DLV_Source] (@SRC_ENT_NM varchar(100), @SRC_DELIVR_TP_CODE varchar(2), @SRC_DELIVR_INTRVL_CODE varchar(1))
as
begin
	SET NOCOUNT ON
	INSERT INTO [hub].[ActivityLog]([SPID],[DatetimeStamp],[Username],[Procedure],[Parameters])
	VALUES(@@SPID,getdate(),ORIGINAL_LOGIN (),OBJECT_NAME(@@PROCID),ISNULL(@SRC_ENT_NM,'')+'#'+ISNULL(@SRC_DELIVR_TP_CODE,'')+'#'+ISNULL(@SRC_DELIVR_INTRVL_CODE,''))

	--declarations
	declare @Aanwezig tinyint
	declare @SchemaNameSupplier varchar(10)
	DECLARE @Environment char(1)

	--constants/parameters
	select @Environment = hub.Fn_ValidInput('environment',ParamValue) FROM hub.Parameters where ParamName ='Environment'
	SELECT @SRC_ENT_NM= hub.Fn_ValidInput('table',@SRC_ENT_NM)
	set @Aanwezig= isnull((
		select count(*)
		from [log].[CONF_MD_SOURCE_ENTITY]
		where SRC_ENT_NM=@SRC_ENT_NM),0)

	-- checks
		--checks
	IF @Environment in ('A','P') and NOT EXISTS (SELECT * FROM hub.MyNamespaces where SchemaName ='*')
	BEGIN
		raiserror('you do not have access to this procedure.(stp_DLV_Source)',16,3)
		RETURN
	END
	if nullif(@SRC_ENT_NM,'') is null
	BEGIN
		RAISERROR('The parameter @SRC_ENT_NM needs to be filled.(stp_DLV_Source)',16,1)
		RETURN
	END
	if not isnull(len(@SRC_DELIVR_TP_CODE),2)=2
	BEGIN
		RAISERROR('The parameter @SRC_DELIVR_TP_CODE has an invalid length.(stp_DLV_Source)',16,1)
		RETURN
	END
	if not isnull(left(@SRC_DELIVR_TP_CODE,1),'S') in ('S','D','I')
	BEGIN
		RAISERROR('The parameter @SRC_DELIVR_TP_CODE has an invalid first character.(stp_DLV_Source)',16,1)
		RETURN
	END
	if not isnull(right(@SRC_DELIVR_TP_CODE,1),'F') in ('F','D','I')
	BEGIN
		RAISERROR('The parameter @SRC_DELIVR_TP_CODE has an invalid last character.(stp_DLV_Source)',16,1)
		RETURN
	END
	if not isnull(len(@SRC_DELIVR_INTRVL_CODE),1)=1
	BEGIN
		RAISERROR('The parameter @SRC_DELIVR_INTRVL_CODE has an invalid length.(stp_DLV_Source)',16,1)
		RETURN
	END
	if not isnull(right(@SRC_DELIVR_INTRVL_CODE,1),'A') in ('A','D','W','M','Q','Y')
	BEGIN
		RAISERROR('The parameter @SRC_DELIVR_INTRVL_CODE has an invalid code.(stp_DLV_Source)',16,1)
		RETURN
	END


	if @Aanwezig=0
	begin
		SELECT @SchemaNameSupplier=SchemaName
		from hub.Report
		where TableName=@SRC_ENT_NM
		and InDatabase=1
		and Type='Supplier'

		if @SRC_DELIVR_TP_CODE is null
		begin
			set @SRC_DELIVR_TP_CODE= 
			case when  @SRC_ENT_NM like '%[_]A[DWMQYA][SDI]' or @SRC_ENT_NM like '%[_][DWMQYA][SDI]' then
				case when right(@SRC_ENT_NM,1) in ('S','D') then  
					right(@SRC_ENT_NM,1) 
				else 
					'X'  
				end
				+case when @SchemaNameSupplier is null then 
					'X'
				when @SchemaNameSupplier='dih' then 
					'D' 
				when @SchemaNameSupplier like 'crgff%' then 
					'F' 
				else 
					'I' 
				end
			else 
				'XX' 
			end
		end

		if @SRC_DELIVR_INTRVL_CODE is null
		begin
			set @SRC_DELIVR_INTRVL_CODE=
			case when  @SRC_ENT_NM like '%[_]A[DWMQYA][SDI]' or @SRC_ENT_NM like '%[_][DWMQYA][SDI]' then 
				left(right(@SRC_ENT_NM,2),1) 
			else 
				'X' 
			end
		end

		insert into [log].[CONF_MD_SOURCE_ENTITY](
			SRC_ENT_NM, 
			SRC_DELIVR_TP_CODE,
			SRC_DELIVR_INTRVL_CODE)
		select
			@SRC_ENT_NM, 
			@SRC_DELIVR_TP_CODE,
			@SRC_DELIVR_INTRVL_CODE	  
	end
	else
	begin
		UPDATE [log].[CONF_MD_SOURCE_ENTITY]
		set SRC_DELIVR_TP_CODE= isnull(@SRC_DELIVR_TP_CODE,SRC_DELIVR_TP_CODE),
			SRC_DELIVR_INTRVL_CODE=isnull(@SRC_DELIVR_INTRVL_CODE,SRC_DELIVR_INTRVL_CODE)
		where SRC_ENT_NM=@SRC_ENT_NM
	end

end

GO
/****** Object:  StoredProcedure [dbo].[stp_DLV_Target]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create proc [dbo].[stp_DLV_Target] (@TRG_ENT_NM varchar(50), @SRC_ENT_NM varchar(100), @NO_OF_DELIVERIES_STORED smallint, @MAPPING_NM varchar(50), @THRS_PERC smallint, @EXPC_DAY_OF_MO smallint, @PERM_DEV smallint)
AS
BEGIN
	SET NOCOUNT ON
	INSERT INTO [hub].[ActivityLog]([SPID],[DatetimeStamp],[Username],[Procedure],[Parameters])
	VALUES(@@SPID,getdate(),ORIGINAL_LOGIN (),OBJECT_NAME(@@PROCID),ISNULL(@TRG_ENT_NM,'')   +'#'+ISNULL(@SRC_ENT_NM,'')  +'#'+ISNULL(convert(varchar,@NO_OF_DELIVERIES_STORED),'')  +'#'+ISNULL(@MAPPING_NM,'')  +'#'+ISNULL(convert(varchar,@THRS_PERC),'')  +'#'+ISNULL(convert(varchar,@EXPC_DAY_OF_MO),'') +'#'+ISNULL(convert(varchar,@PERM_DEV),''))

	--declarations
	declare @Aanwezig_TRG tinyint
	declare @Aanwezig_SRC tinyint
	DECLARE @Environment char(1)

	--constants/parameters
	select @Environment = hub.Fn_ValidInput('environment',ParamValue) FROM hub.Parameters where ParamName ='Environment'

	--checks
	IF @Environment in ('A','P') and NOT EXISTS (SELECT * FROM hub.MyNamespaces where SchemaName ='*')
	BEGIN
		raiserror('you do not have access to this procedure.(stp_DLV_Target)',16,3)
		RETURN
	END
	if nullif(@TRG_ENT_NM,'') is null
	BEGIN
		RAISERROR('The parameter @TRG_ENT_NM needs to be filled.(stp_DLV_Target)',16,1)
		RETURN
	END
	if nullif(@MAPPING_NM,'') is null
	BEGIN
		RAISERROR('The parameter @MAPPING_NM needs to be filled.(stp_DLV_Target)',16,1)
		RETURN
	END


	if @SRC_ENT_NM is null
		set @SRC_ENT_NM=@TRG_ENT_NM

	set @Aanwezig_TRG= isnull((select count(*)
	from [log].[CONF_MD_TARGET_ENTITY]
	where TRG_ENT_NM=@TRG_ENT_NM),0)

	if @Aanwezig_TRG=0
	begin
		set @Aanwezig_SRC= isnull((select count(*)
		from [log].[CONF_MD_SOURCE_ENTITY]
		where SRC_ENT_NM=@SRC_ENT_NM),0)

		if @Aanwezig_SRC=0
			exec dbo.stp_DLV_Source @SRC_ENT_NM, NULL, NULL

		insert into [log].[CONF_MD_TARGET_ENTITY](
			TRG_ENT_NM, 
			SRC_ID, 
			NO_OF_DELIVERIES_STORED,
			MAPPING_NM,
			THRS_PERC,
			EXPC_DAY_OF_MO,
			PERM_DEV) 
		select
			@TRG_ENT_NM TRG_NM, 
			S.SRC_ID,
			@NO_OF_DELIVERIES_STORED,
			@MAPPING_NM, 
			@THRS_PERC, 
			@EXPC_DAY_OF_MO, 
			@PERM_DEV
		from log.CONF_MD_SOURCE_ENTITY S
		where S.SRC_ENT_NM=@SRC_ENT_NM

	end
	else
	begin
		UPDATE [log].[CONF_MD_TARGET_ENTITY]
		SET NO_OF_DELIVERIES_STORED =isnull(@NO_OF_DELIVERIES_STORED,NO_OF_DELIVERIES_STORED),  
			MAPPING_NM = isnull(@MAPPING_NM,MAPPING_NM), 
			THRS_PERC =isnull(@THRS_PERC,THRS_PERC), 
			EXPC_DAY_OF_MO =isnull(@EXPC_DAY_OF_MO,EXPC_DAY_OF_MO), 
			PERM_DEV =isnull(@PERM_DEV,PERM_DEV)
		WHERE TRG_ENT_NM=@TRG_ENT_NM
	end



END


GO
/****** Object:  StoredProcedure [dbo].[stp_DLV_TargetKey]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[stp_DLV_TargetKey] (@TableName varchar(8000),@Key1 varchar(1000),@Key2 varchar(1000),@Key3 varchar(1000),@Key4 varchar(1000),@Key5 varchar(1000))
AS
BEGIN
-- procedure code:  DLVTK
/********************************************************************************************************************************************************
**     Procedure:               [dbo].[stp_DLV_TargetKey]
**     Created By:              Ard Goossens
**     Creation Date:           Unknown
**     Description:				Sets the log.[CONF_MD_TARGET_ENTITY].UNIQUE_KEY_SQL column based on supplied params
**     
**     Parameters:				@TableName : Table to query
**								@Keyx : 5 key column values
**     
**     Returns:					Return no rows if successful. Returns duplicates if any found.
**								Returns data if any of the BK columns are NULL
**     
**     
**     Version History
**	Changed By		Change Date		Change
**	AStoddart		14/05/2020		Optimised structure of SQL
********************************************************************************************************************************************************/

BEGIN TRY
	SET NOCOUNT ON
	INSERT INTO [hub].[ActivityLog]([SPID],[DatetimeStamp],[Username],[Procedure],[Parameters])
	VALUES(@@SPID,getdate(),ORIGINAL_LOGIN (),OBJECT_NAME(@@PROCID),ISNULL(@TableName,'')   +'#'+ISNULL(@Key1,'')   +'#'+ISNULL(@Key2,'')   +'#'+ISNULL(@Key3,'')   +'#'+ISNULL(@Key4,'')   +'#'+ISNULL(@Key5,'')  )

	--declarations
	declare @SQL varchar(8000)
	declare @temp varchar(1000)
	declare @schema varchar(1000)
	declare @database varchar(1000)
	DECLARE @Environment char(1)

	--constants/parameters
	select @Environment = hub.Fn_ValidInput('environment',ParamValue) FROM hub.Parameters where ParamName ='Environment'
	SELECT @TableName= hub.Fn_ValidInput('table',@TableName)

	--checks
	IF @Environment in ('A','P') and NOT EXISTS (SELECT * FROM hub.MyNamespaces where SchemaName ='*')
	BEGIN
		raiserror('you do not have access to this procedure.(stp_DLV_TargetKey)',16,3)
		RETURN
	END
	if nullif(@TableName,'') is null
	BEGIN
		RAISERROR('The parameter @TableName needs to be filled.(stp_DLV_TargetKey)',16,1)
		RETURN
	END
	IF COALESCE (@Key1,@Key2,@Key3,@Key4,@Key5) is null
	BEGIN
		RAISERROR('Al least one of the @Keys needs to be filled.(stp_DLV_TargetKey)',16,1)
		RETURN
	END
	IF isnull((select count(*)
	from [log].[CONF_MD_TARGET_ENTITY]
	where TRG_ENT_NM=@TableName),0)=0
	BEGIN
		RAISERROR('The parameter @TableName is not found in log.CONF_MD_TARGET_ENTITY.(stp_DLV_TargetKey)',16,1)
		RETURN
	END


	-- Here we build the SQL statement. It is in two parts as it must return no rows if successful. Returns duplicates if any found.
	-- The second part of the query returns data if any of the BK columns are NULL
	SET @SQL = 'SELECT DELIVERY.BTCH_ID AS BTCH_ID, DELIVERY.TRG_ID  AS TRG_ID, ' +
					CASE WHEN @Key1 IS NULL THEN 'NULL' ELSE @Key1 END + ' AS BK1, ' +
					CASE WHEN @Key2 IS NULL THEN 'NULL' ELSE @Key2 END + ' AS BK2, ' +
					CASE WHEN @Key3 IS NULL THEN 'NULL' ELSE @Key3 END + ' AS BK3, ' +
					CASE WHEN @Key4 IS NULL THEN 'NULL' ELSE @Key4 END + ' AS BK4, ' +
					CASE WHEN @Key5 IS NULL THEN 'NULL' ELSE @Key5 END + ' AS BK5 ' +
				'FROM ' + @TableName + ' TGT WITH (NOLOCK) ' +
				'INNER JOIN log.LOG_DD_DATA_DELIVERY DELIVERY WITH (NOLOCK) ' +
					'ON  TGT.DELIVERY_SQN = DELIVERY.DELIVERY_SQN_CRNT_RUN ' +
					'AND DELIVERY.LOAD_ST_CODE = ''DLV in progress'' ' +
				'INNER JOIN log.CONF_MD_TARGET_ENTITY CONF WITH (NOLOCK) ' +
					'ON  DELIVERY.TRG_ID = CONF.TRG_ID ' +
					'AND CONF.TRG_ENT_NM = ''' + @TableName + ''' ' +
				'GROUP BY DELIVERY.BTCH_ID, DELIVERY.TRG_ID' +
					CASE WHEN @Key1 IS NULL THEN '' ELSE ', ' + @Key1 END + 
					CASE WHEN @Key2 IS NULL THEN '' ELSE ', ' + @Key2 END + 
					CASE WHEN @Key3 IS NULL THEN '' ELSE ', ' + @Key3 END + 
					CASE WHEN @Key4 IS NULL THEN '' ELSE ', ' + @Key4 END + 
					CASE WHEN @Key5 IS NULL THEN '' ELSE ', ' + @Key5 END + 
				' HAVING (COUNT(1)>1) ' +
				'UNION ' +
				'SELECT DELIVERY.BTCH_ID AS BTCH_ID, DELIVERY.TRG_ID  AS TRG_ID, ' +
					CASE WHEN @Key1 IS NULL THEN 'NULL' ELSE @Key1 END + ' AS BK1, ' +
					CASE WHEN @Key2 IS NULL THEN 'NULL' ELSE @Key2 END + ' AS BK2, ' +
					CASE WHEN @Key3 IS NULL THEN 'NULL' ELSE @Key3 END + ' AS BK3, ' +
					CASE WHEN @Key4 IS NULL THEN 'NULL' ELSE @Key4 END + ' AS BK4, ' +
					CASE WHEN @Key5 IS NULL THEN 'NULL' ELSE @Key5 END + ' AS BK5 ' +
				'FROM log.LOG_DD_DATA_DELIVERY DELIVERY WITH (NOLOCK) ' +
				'INNER JOIN log.CONF_MD_TARGET_ENTITY CONF WITH (NOLOCK) ' +
					'ON  DELIVERY.TRG_ID = CONF.TRG_ID ' +
					'AND DELIVERY.LOAD_ST_CODE = ''DLV in progress'' ' +
					'AND CONF.TRG_ENT_NM = ''' + @TableName + ''' ' +
				'LEFT OUTER JOIN ' + @TableName + ' TGT WITH (NOLOCK) ' +
					'ON  TGT.DELIVERY_SQN = DELIVERY.DELIVERY_SQN_CRNT_RUN ' +
				'WHERE ( ' +
					CASE WHEN @Key1 IS NULL THEN '1' ELSE @Key1 END + ' IS NULL OR ' + 
					CASE WHEN @Key2 IS NULL THEN '1' ELSE @Key2 END + ' IS NULL OR ' + 
					CASE WHEN @Key3 IS NULL THEN '1' ELSE @Key3 END + ' IS NULL OR ' + 
					CASE WHEN @Key4 IS NULL THEN '1' ELSE @Key4 END + ' IS NULL OR ' + 
					CASE WHEN @Key5 IS NULL THEN '1' ELSE @Key5 END + ' IS NULL ' + 
				' )'

	-- Now update metadata
	update log.[CONF_MD_TARGET_ENTITY]
	set UNIQUE_KEY_SQL =@SQL
	where  [TRG_ENT_NM]=@TableName
END TRY
BEGIN CATCH
	 DECLARE @ErrorMessage varchar(MAX) = ERROR_MESSAGE(),
				@ErrorSeverity int = ERROR_SEVERITY(),
				@ErrorState smallint = ERROR_STATE()
 	INSERT INTO [hub].ErrorLog([SPID],[DatetimeStamp],[Username],[Procedure],Message, Severity, State)
	VALUES(@@SPID,getdate(),ORIGINAL_LOGIN (),OBJECT_NAME(@@PROCID),@ErrorMessage, @ErrorSeverity,@ErrorState);
	
	RAISERROR ( @ErrorMessage, @ErrorSeverity, @ErrorState)  ;
	
END CATCH
end 

GO
/****** Object:  StoredProcedure [dbo].[stp_DeleteArchive]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[stp_DeleteArchive]  (@SchemaNameRequester varchar(10),@TableName varchar(100),@DELIVERY_SQN decimal(22,0), @ACT_Y varchar(4),@ACT_M varchar(2), @ACT_D varchar(2))
as 
begin
-- procedure code:  DA
BEGIN TRY
/*
 deze procedure verwijderd een regel toe om iets veilig te stellen voor opschonen. Het maakt het dus weer mogelijk om een levering op te schonen.
 de opgegeven waarden moeten wel 1 op 1 overeenkomen met de bestaande regel.
 maar records uit deze tabel worden ook automatisch na een X aantal maanden verwijderd.
 */

	SET NOCOUNT ON
	INSERT INTO [hub].[ActivityLog]([SPID],[DatetimeStamp],[Username],[Procedure],[Parameters])
	VALUES(@@SPID,getdate(),ORIGINAL_LOGIN (),OBJECT_NAME(@@PROCID),ISNULL(@SchemaNameRequester,'')+'#'+ISNULL(@TableName,'')+'#'+ISNULL(convert(varchar,@DELIVERY_SQN),'')+'#'+ISNULL(@ACT_Y,'')+'#'+ISNULL(@ACT_M,'')+'#'+ISNULL(@ACT_D,''))
	--declarations

	--constants/parameters
	set @SchemaNameRequester= hub.Fn_ValidInput('schema',@SchemaNameRequester)
	SELECT @TableName= hub.Fn_Alias (@SchemaNameRequester,@TableName)
	
	--checks
	IF @SchemaNameRequester is null
	BEGIN
		raiserror('The parameter @SchemaNameRequester needs to be filled.(stp_DeleteArchive)',16,3)
		RETURN
	END	
	if (select top 1 1 from hub.Namespaces where SchemaName= @SchemaNameRequester)is null 
	BEGIN
		RAISERROR('The schemaname of the requester is unknown.(stp_DeleteArchive)',16,1)
		RETURN
	END
  	IF NOT EXISTS (SELECT * FROM hub.MyNamespaces 
	where SchemaName in (@SchemaNameRequester,'*'))
	BEGIN
		raiserror('you do not have access to this schema.(stp_DeleteArchive)',16,3)
		RETURN
	END	
	IF @TableName is null
	BEGIN
		raiserror('The parameter @TableName needs to be filled.(stp_DeleteArchive)',16,3)
		RETURN
	END	
	if (select top 1 1 from hub.Suppliers where TableName= @TableName)is null 
	BEGIN
		RAISERROR('The tablename is not a valid suppliertable.(stp_DeleteArchive)',16,1)
		RETURN
	END
	IF (SELECT COUNT(*) from hub.Subscribers where @SchemaNameRequester =SchemaNameSubscriber and TableName=@TableName)=0 
	BEGIN
		raiserror('Table is not subscribed to by this schema.(stp_DeleteArchive)',16,3)
		RETURN
	END			
	if ISNUMERIC(isnull(replace(@ACT_Y,'*','0'),'0'))=0
		BEGIN
			raiserror('The parameter @ACT_Y needs to be numeric or ''*''.(stp_DeleteArchive)',16,3)	
		END		
	if ISNUMERIC( isnull(replace(@ACT_M,'*','0'),'0'))=0
		BEGIN
			raiserror('The parameter @ACT_M needs to be numeric or ''*''.(stp_DeleteArchive)',16,3)	
		END		
	if ISNUMERIC( isnull(replace(@ACT_D,'*','0'),'0'))=0
		BEGIN
			raiserror('The parameter @ACT_D needs to be numeric or ''*''.(stp_DeleteArchive)',16,3)	
		END		
	if isnull(@ACT_Y,'*') <>'*'
	begin
		if @ACT_Y*1 >year(getdate())+1
			raiserror('The parameter @ACT_Y is too far into the future.(stp_DeleteArchive)',16,3)	
	end
	if isnull(@ACT_M,'*') <>'*'
	begin
		if @ACT_M*1 >12 or @ACT_M<1
			raiserror('The parameter @ACT_M is not a valid month.(stp_DeleteArchive)',16,3)	
	end
	if isnull(@ACT_D,'*') <>'*'
	begin
		if @ACT_D*1 >31 or @ACT_D<1
			raiserror('The parameter @ACT_D is not a valid day.(stp_DeleteArchive)',16,3)	
	end

	delete from hub.Archive
	WHERE
		@TableName=TableName
		AND @SchemaNameRequester=SchemaNameRequester
		and DELIVERY_SQN= isnull(@DELIVERY_SQN,DELIVERY_SQN)
		and ACT_Y=isnull(@ACT_Y,ACT_Y)
		and ACT_M=isnull(@ACT_M,ACT_M)
		and ACT_D=isnull(@ACT_D,ACT_D)       
END TRY
BEGIN CATCH
	 DECLARE @ErrorMessage varchar(MAX) = ERROR_MESSAGE(),
				@ErrorSeverity int = ERROR_SEVERITY(),
				@ErrorState smallint = ERROR_STATE()
 	INSERT INTO [hub].ErrorLog([SPID],[DatetimeStamp],[Username],[Procedure],Message, Severity, State)
	VALUES(@@SPID,getdate(),ORIGINAL_LOGIN (),OBJECT_NAME(@@PROCID),@ErrorMessage, @ErrorSeverity,@ErrorState);
	
	RAISERROR ( @ErrorMessage, @ErrorSeverity, @ErrorState)  ;
	
END CATCH
end
GO
/****** Object:  StoredProcedure [dbo].[stp_DeleteCustomView]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[stp_DeleteCustomView] (@SchemaName varchar(10),@TableName varchar(100) = null) 
AS
BEGIN
/*
	this proc deletes any customizations of a subscription. it does not delete the subscription.
*/
	SET NOCOUNT ON
	INSERT INTO [hub].[ActivityLog]([SPID],[DatetimeStamp],[Username],[Procedure],[Parameters])
	VALUES(@@SPID,getdate(),ORIGINAL_LOGIN (),OBJECT_NAME(@@PROCID),ISNULL(@SchemaName,'')+'#'+ISNULL(@TableName,''))

	--declarations
	DECLARE @Environment char(1)

	--constants/parameters
	SELECT @SchemaName= hub.Fn_ValidInput('schema',@SchemaName)
	SELECT @TableName= hub.Fn_Alias (@SchemaName,@TableName)
	select @Environment = hub.Fn_ValidInput('environment',ParamValue) FROM hub.Parameters where ParamName ='Environment'
	
	-- checks
	IF NOT EXISTS (SELECT * FROM hub.MyNamespaces 
	where SchemaName = '*') and not exists (select * from hub.Parameters where ParamName='Environment' and ParamValue='O')
	BEGIN
		raiserror('Users can only modify their views in Development.(stp_DeleteCustomView)',16,3)
		RETURN
	END	
	IF NOT EXISTS (SELECT * FROM hub.MyNamespaces 
	where SchemaName in (@SchemaName,'*'))
	BEGIN
		raiserror('you do not have access to this schema.(stp_DeleteCustomView)',16,3)
		RETURN
	END	
	if @TableName is null
	BEGIN
		RAISERROR('The parameter @TableName needs to be filled.(stp_DeleteCustomView)',16,1)
		RETURN
	END
	IF @SchemaName is null
	BEGIN
		raiserror('The parameter @SchemaName needs to be filled.(stp_DeleteCustomView)',16,3)
		RETURN
	END		
	IF (SELECT COUNT(*) from hub.Subscribers where @SchemaName =SchemaNameSubscriber and TableName=@TableName)=0
	BEGIN
		raiserror('Table is not subscribed to by this schema.(stp_DeleteCustomView)',16,3)
		RETURN
	END	

	--deployment?
	exec stp_DeployCheck  'Subscriber',@SchemaName, @TableName

	--deleting any customizations for the view
	delete
	from hub.CustomViewsConfig
	where SchemaName= @SchemaName
	and TableName = @TableName
END
GO
/****** Object:  StoredProcedure [dbo].[stp_DeleteSchema]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[stp_DeleteSchema] (@SchemaName VARCHAR(10)) AS
BEGIN

BEGIN TRY

    /*    This procedure deletes the Schema if there are no more logins present     */

	SET NOCOUNT ON
	INSERT INTO [hub].[ActivityLog]([SPID],[DatetimeStamp],[Username],[Procedure],[Parameters])
	VALUES(@@SPID,getdate(),ORIGINAL_LOGIN (),OBJECT_NAME(@@PROCID),ISNULL(@SchemaName,''))

	--declarations

	DECLARE @SQL VARCHAR(8000)
	DECLARE @UserCount INT

	--constants/parameters

	SELECT @SchemaName= hub.Fn_ValidInput('schema',@SchemaName)
	SELECT @UserCount= isnull(count(*),0) FROM hub.Logins WHERE @SchemaName=SchemaName 

	--checks

	IF NOT EXISTS (SELECT * FROM hub.MyNamespaces WHERE SchemaName ='*')
	BEGIN
		RAISERROR('you do not have access to this procedure.(stp_DeleteSchema)',16,3)
		RETURN
	END
		
	IF @SchemaName is null 
	BEGIN
		RAISERROR('The parameter @SchemaName needs to be filled.(stp_DeleteSchema)',16,1)
		RETURN
	END
		IF (SELECT TOP 1 1 FROM hub.Namespaces WHERE SchemaName= @SchemaName) is null
	BEGIN
		RAISERROR('The namespace is unknown.(stp_DeleteSchema)',16,1)
		RETURN
	END
		
	-- delete schema
	IF @UserCount=0
	BEGIN
		SELECT @SQL ='USE ['+ParamValue+']; 
		DROP SCHEMA ['+@SchemaName+']'
		FROM hub.Parameters WHERE ParamName='StagingInDB'
		EXEC (@SQL)

		SELECT @SQL ='USE ['+ParamValue+']; 
		DROP SCHEMA ['+@SchemaName+']'
		FROM hub.Parameters WHERE ParamName='StagingOutDB'
		EXEC (@SQL)

		DELETE FROM hub.Namespaces WHERE SchemaName=@SchemaName
	END
	ELSE
	BEGIN
		RAISERROR('The Schema has users associated with it.So it cannot be deleted.(stp_DeleteSchema)',16,1)
		RETURN
	END

	--reset permissions 
	exec [stp_Permissions]

	-- initiate aftercare
	UPDATE hub.Parameters set ParamValue='YES' WHERE ParamName='AfterCareNeeded'

END TRY
BEGIN CATCH
	 DECLARE @ErrorMessage VARCHAR(MAX) = ERROR_MESSAGE(),
				@ErrorSeverity INT = ERROR_SEVERITY(),
				@ErrorState SMALLINT = ERROR_STATE()
 	INSERT INTO [hub].ErrorLog([SPID],[DatetimeStamp],[Username],[Procedure],Message, Severity, State)
	VALUES(@@SPID,getdate(),ORIGINAL_LOGIN (),OBJECT_NAME(@@PROCID),@ErrorMessage, @ErrorSeverity,@ErrorState);
	
	RAISERROR ( @ErrorMessage, @ErrorSeverity, @ErrorState)  ;
	
END CATCH

END


GO
/****** Object:  StoredProcedure [dbo].[stp_DeleteSubscription]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[stp_DeleteSubscription] (@SchemaName varchar(10), @TableName varchar(1000))
as
BEGIN
	/*
	This subscription deletes the fact that someone has subscribed to the data.
	It also deletes the defintion of the view including exceptions.

	*/
	SET NOCOUNT ON
	INSERT INTO [hub].[ActivityLog]([SPID],[DatetimeStamp],[Username],[Procedure],[Parameters])
	VALUES(@@SPID,getdate(),ORIGINAL_LOGIN (),OBJECT_NAME(@@PROCID),ISNULL(@SchemaName,'')+'#'+ISNULL(@TableName,''))

	--declarations
	Declare @StagingInDB varchar(100)
	Declare @StagingOutDB varchar(100)
	DECLARE @SQL			varchar(8000)
	
	--constants/parameters
	SELECT @SchemaName= hub.Fn_ValidInput('schema',@SchemaName)
	SELECT @TableName= hub.Fn_Alias(@SchemaName,@TableName)
	select @StagingOutDB = hub.Fn_ValidInput('database',ParamValue) FROM hub.Parameters where ParamName = 'StagingOutDB'
	select @StagingInDB = hub.Fn_ValidInput('database',ParamValue) FROM hub.Parameters where ParamName =  'StagingInDB'

	--checks
	IF NOT EXISTS (SELECT * FROM hub.MyNamespaces 
	where SchemaName in (@SchemaName,'*'))
	BEGIN
		raiserror('you do not have access to this schema.(stp_DeleteSubscription)',16,3)
		RETURN
	END	
	if @TableName is null
	BEGIN
		RAISERROR('The parameter @TableName needs to be filled.(stp_DeleteSubscription)',16,1)
		RETURN
	END
	IF @SchemaName is null
	BEGIN
		raiserror('The parameter @SchemaName needs to be filled.(stp_DeleteSubscription)',16,3)
		RETURN
	END			
	if (select top 1 1 from hub.Suppliers where TableName= @TableName) is null 
	BEGIN
		RAISERROR('The information from the Supplier needs to be added before a subscription can be made.(stp_DeleteSubscription)',16,1)
		RETURN
	END
	IF (SELECT COUNT(*) from hub.Subscribers where @SchemaName =SchemaNameSubscriber and TableName=@TableName)=0
	BEGIN
		raiserror('Table is not subscribed to by this schema.(stp_DeleteSubscription)',16,3)
		RETURN
	END	

	--deployment?
	exec stp_DeployCheck  'Subscriber',@SchemaName, @TableName

	--dropping views
	DECLARE EachObject CURSOR
	READ_ONLY
	FOR 
		select  'USE '+DatabaseName +';DROP VIEW ['+SchemaName+'].['+ObjectName +']'
		from hub.ObjectInfo
		where SchemaName=@SchemaName
			and ObjectName=@TableName
			and ObjectType='V'
	OPEN EachObject
	FETCH NEXT FROM EachObject INTO @SQL
	WHILE (@@fetch_status <> -1)
	BEGIN
		IF (@@fetch_status <> -2)
		BEGIN
			exec (@SQL)
		END
		FETCH NEXT FROM EachObject INTO @SQL
	END
	CLOSE EachObject
	DEALLOCATE EachObject

	-- ALIAS Exception
	exec stp_ExceptionAlias @SchemaName,@TableName
	
	--deleting any customizations for the view
	exec stp_DeleteCustomView @SchemaName, @TableName

	--deleting any exceptions for the view
	delete from hub.Exceptions
	where TableName =@TableName
	and SchemaName= @SchemaName

	--deleting the configuration for the view
	delete from hub.Subscribers
	where TableName =@TableName
	and SchemaNameSubscriber= @SchemaName


END
GO
/****** Object:  StoredProcedure [dbo].[stp_DeleteSupply]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[stp_DeleteSupply] (@TableName varchar(1000))
as
begin
/*
	This proc deletes the fact that data is supplied.
	it also deletes the table and any exceptions relating to that table.
	A requirement is that no subscriptions are active on this table. These need to be deleted first as a conscious fact that these subscriptions are also stopping.
*/
	SET NOCOUNT ON
	INSERT INTO [hub].[ActivityLog]([SPID],[DatetimeStamp],[Username],[Procedure],[Parameters])
	VALUES(@@SPID,getdate(),ORIGINAL_LOGIN (),OBJECT_NAME(@@PROCID),ISNULL(@TableName,''))
	--declarations
	Declare @StagingInDB varchar(100)
	Declare @StagingOutDB varchar(100)
	DECLARE @SQL			varchar(8000)
	DECLARE @Location varchar(1)
	declare @DeployDatetime datetime2
	declare @ScriptDatetime datetime2
	declare @SchemaName varchar(10)

	--constants/parameters
	SELECT @TableName= hub.Fn_ValidInput('table',@TableName)
	SELECT	@SchemaName= hub.Fn_ValidInput('schema',S.SchemaNameSupplier)
	FROM hub.Suppliers S
		left join hub.Exceptions E
			On E.SchemaName=S.SchemaNameSupplier
			and E.TableName=S.TableName
			and E.ExceptionType='ALIAS'
	WHERE @TableName in (E.TableName ,E.TableAlias ,S.TableName)
	SELECT @TableName= hub.Fn_Alias (@SchemaName,@TableName)
	SELECT @Location =hub.Fn_ValidInput('location',Location) FROM hub.Namespaces where SchemaName= @SchemaName 
	SELECT @StagingInDB = hub.Fn_ValidInput('database',ParamValue) FROM hub.Parameters where ParamName = CASE WHEN @Location='E' then'StagingOutDB' ELSE 'StagingInDB' END
	SELECT @StagingOutDB = hub.Fn_ValidInput('database',ParamValue) FROM hub.Parameters where ParamName = CASE WHEN @Location='I' then'StagingOutDB' ELSE 'StagingInDB' END

	--checks
	IF NOT EXISTS (SELECT * FROM hub.MyNamespaces where SchemaName ='*')
	BEGIN
		raiserror('you do not have access to this procedure.(stp_DeleteSupply)',16,3)
		RETURN
	END
	if @TableName is null
	BEGIN
		RAISERROR('The parameter @TableName needs to be filled.(stp_DeleteSupply)',16,1)
		RETURN
	END
	if (select top 1 1 from hub.Suppliers where TableName= @TableName)is null 
	RETURN
	if (select count(*) from hub.Subscribers
	where TableName =@TableName)>0
	begin
		RAISERROR('A Supply with active subscriptions cannot be deleted.(stp_DeleteSupply)',16,1)
		RETURN
	end

	--deployment?
	exec stp_DeployCheck  'Supplier',@SchemaName, @TableName

	--transfer the table to XXX schema
	set @SQL='use '+@StagingOutDB+';
	if exists (select 1 from  sysobjects where  id = object_id(''XXX.'+@TableName+''') and   type = ''U'')
		exec(''drop table XXX.'+@TableName+''')'
	exec(@SQL)
	set @SQL='use '+@StagingOutDB+';
		exec(''ALTER SCHEMA XXX TRANSFER '+@SchemaName+'.'+@TableName+''')'
	exec(@SQL)

	-- ALIAS Exception
	exec stp_ExceptionAlias @SchemaName,@TableName

	--deleting any exceptions for the table
	delete from hub.Exceptions
	where TableName =@TableName

	-- deleting the configuration for the table
	delete from hub.Suppliers
	where TableName =@TableName
end

GO
/****** Object:  StoredProcedure [dbo].[stp_DeleteUser]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[stp_DeleteUser] (@SchemaName VARCHAR(10),@Login VARCHAR(1000)) AS
BEGIN

BEGIN TRY

	SET NOCOUNT ON
	INSERT INTO [hub].[ActivityLog]([SPID],[DatetimeStamp],[Username],[Procedure],[Parameters])
	VALUES(@@SPID,getdate(),ORIGINAL_LOGIN (),OBJECT_NAME(@@PROCID),ISNULL(@SchemaName,'')+'#'+ISNULL(@Login,''))

	--Declarations

	DECLARE @SQL	VARCHAR(8000)
	DECLARE @LastUser BIT = 0

	--Constants/Parameters

	SELECT @Login= hub.Fn_ValidInput('login',@Login)
	SELECT @SchemaName= hub.Fn_ValidInput('schema',@SchemaName)
	SELECT @LastUser= CASE WHEN ISNULL(COUNT(*),0) =1 THEN 1 ELSE 0 END FROM hub.Logins WHERE @SchemaName=SchemaName 

	--Checks

	IF NOT EXISTS (SELECT * FROM hub.MyNamespaces WHERE SchemaName ='*')
	BEGIN
		RAISERROR('you do not have access to this procedure.(stp_DeleteUser)',16,3)
		RETURN
	END
	IF @Login IS NULL
	BEGIN
		RAISERROR('The parameter @Login needs to be filled.(stp_DeleteUser)',16,3)
		RETURN
	END	
	IF @SchemaName IS NULL
	BEGIN
		RAISERROR('The parameter @SchemaName needs to be filled.(stp_DeleteUser)',16,1)
		RETURN
	END
		IF (SELECT TOP 1 1 FROM hub.Namespaces WHERE SchemaName= @SchemaName) IS NULL
	BEGIN
		RAISERROR('The namespace is unknown.(stp_DeleteUser)',16,1)
		RETURN
	END
	IF ISNULL((SELECT COUNT(*) FROM hub.Logins WHERE LoginName = @Login),0)<>1
	BEGIN
		RAISERROR('The parameter @Login is unknown in hub.Logins.(stp_DeleteUser)',16,3)
		RETURN
	END	
	IF ISNULL((SELECT COUNT(DISTINCT [DatabaseType]) FROM hub.PermissionInfo WHERE [LoginName] = @Login),0)<>2
	BEGIN
		RAISERROR('The parameter @Login is not known in both databases.(stp_DeleteUser)',16,3)
		RETURN
	END	
	IF ISNULL((SELECT COUNT(*) FROM hub.Logins WHERE LoginName = @Login AND SchemaName= @SchemaName),0)<>1
	BEGIN
		RAISERROR('The Login is not known in this schema.(stp_DeleteUser)',16,3)
		RETURN
	END	
	IF  @LastUser=1 AND (SELECT COUNT(*) FROM hub.Subscribers WHERE SchemaNameSubscriber=@SchemaName)>0 
	BEGIN
		RAISERROR('You cannot delete the last user of a schema if Subscriptions exist for that schema(stp_DeleteUser)',16,3)
		RETURN
	END	
	IF  @LastUser=1 AND (select COUNT(*) FROM hub.Suppliers WHERE SchemaNameSupplier=@SchemaName)>0 
	BEGIN
		RAISERROR('You cannot delete the last user of a schema if Supplies exist for that schema(stp_DeleteUser)',16,3)
		RETURN
	END	
	IF  @LastUser=1 AND (SELECT COUNT(*) FROM hub.Report WHERE SchemaName =@SchemaName AND InDatabase=1)>0 
	BEGIN
		RAISERROR('You cannot delete the last user of a schema if objects exist for that schema(stp_DeleteUser)',16,3)
		RETURN
	END	

	-- Delete user

	SELECT @SQL ='USE ['+ParamValue+']; 
	DROP USER ['+@Login+']'
	FROM hub.Parameters WHERE ParamName='StagingInDB'
	EXEC (@SQL)

	SELECT @SQL ='USE ['+ParamValue+']; 
	DROP USER ['+@Login+']'
	FROM hub.Parameters WHERE ParamName='StagingOutDB'
	EXEC (@SQL)

	DELETE FROM hub.Logins WHERE hub.Fn_ValidInput('login',LoginName) =@Login AND SchemaName=@SchemaName


	--schema verwijderen
	IF @LastUser=1
	BEGIN
		-- Delete Schema if last user
		EXEC [dbo].[stp_DeleteSchema] @SchemaName
	END

	-- initiate aftercare
	UPDATE hub.Parameters set ParamValue='YES' WHERE ParamName='AfterCareNeeded'

END TRY
BEGIN CATCH
	 DECLARE @ErrorMessage varchar(MAX) = ERROR_MESSAGE(),
				@ErrorSeverity int = ERROR_SEVERITY(),
				@ErrorState smallint = ERROR_STATE()
 	INSERT INTO [hub].ErrorLog([SPID],[DatetimeStamp],[Username],[Procedure],Message, Severity, State)
	VALUES(@@SPID,getdate(),ORIGINAL_LOGIN (),OBJECT_NAME(@@PROCID),@ErrorMessage, @ErrorSeverity,@ErrorState);
	
	RAISERROR ( @ErrorMessage, @ErrorSeverity, @ErrorState)  ;
	
END CATCH

END


GO
/****** Object:  StoredProcedure [dbo].[stp_DeliveryStart]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
CREATE PROC [dbo].[stp_DeliveryStart] (@TableName varchar(100), @DELIVERY_SQN decimal(15,0) = null)
AS
BEGIN
-- procedure code:  DSt
/*
at the moment an informational procedure for suppliers to tell us that they start delivering data.
*/
	INSERT INTO [hub].[ActivityLog]([SPID],[DatetimeStamp],[Username],[Procedure],[Parameters])
	VALUES(@@SPID,getdate(),ORIGINAL_LOGIN (),OBJECT_NAME(@@PROCID),ISNULL(@TableName,'') +'#'+ isnull(convert(varchar(15),@DELIVERY_SQN),''))

--declarations
DECLARE @SchemaName varchar(10)

--constants
SELECT @TableName= hub.Fn_ValidInput('table',@TableName)
	SELECT	@SchemaName= hub.Fn_ValidInput('schema',S.SchemaNameSupplier)
	FROM hub.Suppliers S
		inner join hub.Namespaces N
			on S.SchemaNameSupplier=N.SchemaName
		inner join hub.Parameters P
			on ParamName = CASE WHEN Location='I' then'StagingOutDB' ELSE 'StagingInDB' END
		left join hub.Exceptions E
			On E.SchemaName=S.SchemaNameSupplier
			and E.TableName=S.TableName
			and E.ExceptionType='ALIAS'
	WHERE @TableName in (E.TableName ,E.TableAlias ,S.TableName)
	SELECT @TableName= hub.Fn_Alias (@SchemaName,@TableName)

	SELECT @TableName= hub.Fn_Alias (@SchemaName,@TableName)

	-- checks
  	IF NOT EXISTS (SELECT * FROM hub.MyNamespaces 
	where SchemaName in (@SchemaName, '*'))
	BEGIN
		raiserror('you do not have access to this schema.(stp_DeliveryStart)',16,3)
		RETURN
	END	
	if ISNULL(@TableName,'')=''
	BEGIN
		RAISERROR('The parameter @TableName needs to be filled.(stp_DeliveryStart)',16,1)
		RETURN
	END
	IF (SELECT COUNT(*) from hub.Suppliers where TableName=@TableName)=0
	BEGIN
		raiserror('The table is unknown.(stp_DeliveryStart)',16,3)
		RETURN
	END		

	SET NOCOUNT ON 
	INSERT INTO [hub].[ActivityLog]([SPID],[DatetimeStamp],[Username],[Procedure],[Parameters])
	VALUES(@@SPID,getdate(),ORIGINAL_LOGIN (),'START DELIVERY',ISNULL(@TableName,'') +'#'+ isnull(convert(varchar(15),@DELIVERY_SQN),''))

END

GO
/****** Object:  StoredProcedure [dbo].[stp_DeliverySuccesful]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
CREATE PROC [dbo].[stp_DeliverySuccesful] (@TableName varchar(100))
AS
BEGIN
-- procedure code:  DS
BEGIN TRY
/*
Een leverancier kan deze procedure aanroepen als hij klaar is met het leveren van data voor een tabel. Op dit moent werkt het alleen de statistieken bij maar zou eventueel voor DLV gebruikt kunnen worden.
*/
	SET NOCOUNT ON 
	INSERT INTO [hub].[ActivityLog]([SPID],[DatetimeStamp],[Username],[Procedure],[Parameters])
	VALUES(@@SPID,getdate(),ORIGINAL_LOGIN (),OBJECT_NAME(@@PROCID),ISNULL(@TableName,''))

	--declarations
	DECLARE @SchemaName varchar(10)
	declare @StagingDB varchar(100)
	DECLARE @SQL varchar(8000)
	
	-- constants & inputs
	SELECT @TableName= hub.Fn_ValidInput('table',@TableName)
	SELECT	@SchemaName= hub.Fn_ValidInput('schema',S.SchemaNameSupplier),
			@StagingDB = hub.Fn_ValidInput('database',ParamValue)
	FROM hub.Suppliers S
		inner join hub.Namespaces N
			on S.SchemaNameSupplier=N.SchemaName
		inner join hub.Parameters P
			on ParamName = CASE WHEN Location='I' then'StagingOutDB' ELSE 'StagingInDB' END
		left join hub.Exceptions E
			On E.SchemaName=S.SchemaNameSupplier
			and E.TableName=S.TableName
			and E.ExceptionType='ALIAS'
	WHERE @TableName in (E.TableName ,E.TableAlias ,S.TableName)
	SELECT @TableName= hub.Fn_Alias (@SchemaName,@TableName)
	
	-- checks
  	IF NOT EXISTS (SELECT * FROM hub.MyNamespaces 
	where SchemaName in ('log',@SchemaName, '*'))
	BEGIN
		raiserror('you do not have access to this schema.(stp_DeliverySuccesful)',16,3)
		RETURN
	END	
	if ISNULL(@TableName,'')=''
	BEGIN
		RAISERROR('The parameter @TableName needs to be filled.(stp_DeliverySuccesful)',16,1)
		RETURN
	END
	IF (SELECT COUNT(*) from hub.Suppliers where TableName=@TableName)=0
	BEGIN
		raiserror('The table is unknown.(stp_DeliverySuccesful)',16,3)
		RETURN
	END		
	if  @SchemaName is null or @StagingDB is null
	BEGIN
		RAISERROR('The information from the Supplier needs to be added before a Delivery can be made.(stp_DeliverySuccesful)',16,1)
		RETURN
	END
	
	-- updating statistics voor onder de 500 miljoen
	if isnull((select count(*) from (
			select TableName from hub.PartitionContent
			where @TableName=TableName
			group by TableName
			having sum(Records)>500000000)B),0)=0 
	begin
		-- het bijwerken van de statistics
		exec('use ['+@StagingDB+']; exec stp_UpdateStatistic '''+@SchemaName+''','''+@TableName+'''')
	end
END TRY
BEGIN CATCH
	 DECLARE @ErrorMessage varchar(MAX) = ERROR_MESSAGE(),
				@ErrorSeverity int = ERROR_SEVERITY(),
				@ErrorState smallint = ERROR_STATE()
 	INSERT INTO [hub].ErrorLog([SPID],[DatetimeStamp],[Username],[Procedure],Message, Severity, State)
	VALUES(@@SPID,getdate(),ORIGINAL_LOGIN (),OBJECT_NAME(@@PROCID),@ErrorMessage, @ErrorSeverity,@ErrorState);
	
	RAISERROR ( @ErrorMessage, @ErrorSeverity, @ErrorState)  ;
	
END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[stp_Deploy]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[stp_Deploy] (@SchemaName varchar(10), @TableName varchar(100),@ScriptDatetime datetime2, @DeployType varchar(20), @STISTO varchar(10), @PXFilename varchar(50) = NULL) 
AS
BEGIN
	-- procedure code:  D
	BEGIN TRY
	/*
		Deze procedure geeft aan dat er een interface uitgerold gaat worden. de primaire actie is dus het loggen van dit feit.
		Het verwijderd eventuele DBO objecten met die naam als er een tabel uitgerold word.
		Daarnaast worden alle uitzonderingen/ extra objecten die bij deze tabel horen verwijderd in voorbereiding op de nieuwe versie die deze misschien niet heeft.
	*/
		SET NOCOUNT ON
		INSERT INTO [hub].[ActivityLog]([SPID],[DatetimeStamp],[Username],[Procedure],[Parameters])
		VALUES(@@SPID,getdate(),ORIGINAL_LOGIN (),OBJECT_NAME(@@PROCID),ISNULL(@SchemaName,'')+'#'+ISNULL(@TableName,'')+'#'+ISNULL(convert(varchar,@ScriptDatetime,120),'')+'#'+ISNULL(@DeployType,'')+'#'+ISNULL(@STISTO,'')+'#'+ISNULL(@PXFilename,''))

		--declarations
		DECLARE @DeployDatetime datetime2
		DECLARE @SQL varchar(8000)
		CREATE TABLE #Code (
			code varchar(8000))

		--constants/parameters
		SELECT @SchemaName= hub.Fn_ValidInput('schema',@SchemaName)
		SELECT @TableName= hub.Fn_Alias (@SchemaName,@TableName)

		--checks
		IF NOT EXISTS (SELECT * FROM hub.MyNamespaces where SchemaName ='*')
		BEGIN
			raiserror('you do not have access to this procedure.(stp_Deploy)',16,3)
			RETURN
		END

		IF @SchemaName is null
		BEGIN
			raiserror('The parameter @SchemaName needs to be filled.(stp_Deploy)',16,3)
			RETURN
		END	
		if (select top 1 1 from hub.Namespaces where SchemaName= @SchemaName) is null
		BEGIN
			RAISERROR('The namespace needs to be added before a deploy can be used.(stp_Deploy)',16,1)
			RETURN
		END
		IF @TableName is null
		BEGIN
			raiserror('The parameter @TableName needs to be filled.(stp_Deploy)',16,3)
			RETURN
		END	
		IF @ScriptDatetime is null
		BEGIN
			raiserror('The parameter @ScriptDatetime needs to be filled.(stp_Deploy)',16,3)
			RETURN
		END	
		IF @DeployType is null
		BEGIN
			raiserror('The parameter @DeployType needs to be filled.(stp_Deploy)',16,3)
			RETURN
		END	
		IF not @DeployType in ('Subscriber','Supplier')
		BEGIN
			raiserror('The parameter @DeployType must have the value ''Subscriber'' or ''Supplier''.(stp_Deploy)',16,3)
			RETURN
		END	
		IF @STISTO is null and @DeployType='Supplier'
		BEGIN
			raiserror('The parameter @STISTO needs to be filled.(stp_Deploy)',16,3)
			RETURN
		END	
			IF @STISTO not in ('STI','STO') and @DeployType='Supplier'
		BEGIN
			raiserror('The parameter @STISTO must have the value ''STI'' or ''STO''.(stp_Deploy)',16,3)
			RETURN
		END	

		--Het verwijderen van eventuele aliassen en DBO views
		set @SQL=NULL
		DECLARE EachAlias_D CURSOR
		READ_ONLY
		FOR --alias op view/tabel
			select 'USE '+O.DatabaseName+'; DROP VIEW '+O.SchemaName+'.'+O.ObjectName 
			from hub.ObjectInfo O
				inner join hub.Exceptions E
					on O.SchemaName=E.SchemaName
					and E.ExceptionType='ALIAS'
					and E.TableAlias=O.ObjectName
			where @SchemaName=E.SchemaName
				and @TableName=E.TableName
				and O.ObjectType='V'
			UNION--dbo op view/tabel
			select  'USE '+O.DatabaseName+'; DROP VIEW '+O.SchemaName+'.'+O.ObjectName 
			from hub.ObjectInfo O
			where @SchemaName='dih'
				and SchemaName='dbo'
				and @TableName=ObjectName
				and O.ObjectType='V'
			UNION--dbo op alias
			select 'USE '+O.DatabaseName+'; DROP VIEW '+O.SchemaName+'.'+O.ObjectName 
			from hub.ObjectInfo O
				inner join hub.Exceptions E
					on E.SchemaName=@SchemaName
					and E.ExceptionType='ALIAS'
					and E.TableAlias=O.ObjectName
			where @SchemaName='dih'
				and O.SchemaName='dbo'
				and @TableName=E.TableName
				and O.ObjectType='V'

		OPEN EachAlias_D
		FETCH NEXT FROM EachAlias_D INTO @SQL
		WHILE (@@fetch_status <> -1)
		BEGIN
			IF (@@fetch_status <> -2)
			BEGIN
				exec(@SQL)
			END
			FETCH NEXT FROM EachAlias_D INTO @SQL
		END
		CLOSE EachAlias_D
		DEALLOCATE EachAlias_D
	
		-- het verwijderen van de uitzonderingen op deze tabel
		delete from hub.Exceptions 
		where @TableName=TableName
		and @SchemaName=SchemaName

		-- extra acties wanneer het een tabel betreft, ook DBO tabellen met die naam worden verwijderd.
		IF  @DeployType='Supplier'
		BEGIN
			set @SQL=NULL
			select @SQL='USE '+DatabaseName+'; DROP '+ case when ObjectType='U' then 'TABLE' else 'VIEW' end  +' dbo.'+ObjectName 
			from hub.ObjectInfo 
			where ObjectName=@TableName
				and SchemaName ='dbo' 
			exec (@SQL)
		END
		--ELSE
		---- extra acties wanneer het een view betreft
		--BEGIN
		--END

		--het corrigeren van een fout in deployment vanwege verouderde release statements
		SELECT @DeployDatetime = DeployDatetime
		from hub.Deploys
		where @DeployType = DeployType
			and @SchemaName = SchemaName
			and @TableName = TableName
			and ScriptDatetime is null
			and datediff(n,DeployDatetime,getdate()) <2
	
		IF not @DeployDatetime is null 
		begin
			DELETE FROM hub.Deploys
			where @DeployType = DeployType
			and @SchemaName = SchemaName
			and @TableName = TableName
			and ScriptDatetime is null
			and DeployDatetime = @DeployDatetime
		end

		-- het loggen van de start van de deploy
		INSERT INTO hub.Deploys(DeployType, SchemaName, TableName, ScriptDatetime, DeployDatetime, PXFilename)
		SELECT
			@DeployType as DeployType, 
			@SchemaName as SchemaName, 
			@TableName as TableName, 
			@ScriptDatetime as ScriptDatetime, 
			getdate() as DeployDatetime,
			@PXFilename as PXFilename
	END TRY
	BEGIN CATCH
		 DECLARE @ErrorMessage varchar(MAX) = ERROR_MESSAGE(),
					@ErrorSeverity int = ERROR_SEVERITY(),
					@ErrorState smallint = ERROR_STATE()
 		INSERT INTO [hub].ErrorLog([SPID],[DatetimeStamp],[Username],[Procedure],Message, Severity, State)
		VALUES(@@SPID,getdate(),ORIGINAL_LOGIN (),OBJECT_NAME(@@PROCID),@ErrorMessage, @ErrorSeverity,@ErrorState);
	
		exec hub.stp_CloseCursor 'EachAlias_D'
		RAISERROR ( @ErrorMessage, @ErrorSeverity, @ErrorState)  ;
	
	END CATCH
END

GO
/****** Object:  StoredProcedure [dbo].[stp_DeployCheck]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[stp_DeployCheck] (@DeployType varchar(100), @SchemaName varchar(10), @TableName varchar(100))
as
BEGIN
-- procedure code:  DC
BEGIN TRY
/*
	This proc checks if a deployment was recently started for this object, if not the version-date is set to NULL to indicate a manual action.
	in the old version-scripts the location of stp_deploy was wrong, this results in false "manuals".
*/
	SET NOCOUNT ON
	INSERT INTO [hub].[ActivityLog]([SPID],[DatetimeStamp],[Username],[Procedure],[Parameters])
	VALUES(@@SPID,getdate(),ORIGINAL_LOGIN (),OBJECT_NAME(@@PROCID),ISNULL(@DeployType,'')+'#'+ISNULL(@SchemaName,'')+'#'+ISNULL(@TableName,''))
	
	WAITFOR DELAY '0:00:00.003';  --omdat de checks elkaar soms snel opvolgen
	--declarations

	--constants/parameters
	SELECT @SchemaName= hub.Fn_ValidInput('schema',@SchemaName)
	SELECT @TableName= hub.Fn_Alias (@SchemaName,@TableName)

	-- checks
  	IF NOT EXISTS (SELECT * FROM hub.MyNamespaces 
	where SchemaName in (@SchemaName,'*'))
	BEGIN
		raiserror('you do not have access to this schema.(stp_DeployCheck)',16,3)
		RETURN
	END	
	IF @DeployType is null
	BEGIN
		raiserror('The parameter @DeployType needs to be filled.(stp_DeployCheck)',16,3)
		RETURN
	END	
	IF not @DeployType in ('Subscriber','Supplier')
	BEGIN
		raiserror('The parameter @DeployType must have the value ''Subscriber'' or ''Supplier''.(stp_DeployCheck)',16,3)
		RETURN
	END
	IF @SchemaName is null
	BEGIN
		raiserror('The parameter @SchemaName needs to be filled.(stp_DeployCheck)',16,3)
		RETURN
	END	
	if (select top 1 1 from hub.Namespaces where SchemaName= @SchemaName) is null
	BEGIN
		RAISERROR('The namespace needs to be added before a deploy can be used.(stp_DeployCheck)',16,1)
		RETURN
	END
	IF @TableName is null
	BEGIN
		raiserror('The parameter @TableName needs to be filled.(stp_DeployCheck)',16,3)
		RETURN
	END	

	--if not part of a deploy, add empty ScriptDatetime. this signifies this was a manual action not relating to a version script.
	IF (select max(DeployDatetime)
		from hub.Deploys
		where  SchemaName= @SchemaName
			and TableName = @TableName
			and DeployType =@DeployType
			and datediff(n,DeployDatetime,getdate()) <2) is null
	begin
		INSERT INTO hub.Deploys(
			DeployType, SchemaName, TableName, ScriptDatetime, DeployDatetime)
		SELECT
			@DeployType as DeployType, 
			@SchemaName as SchemaName, 
			@TableName as TableName, 
			NULL as ScriptDatetime, 
			getdate() as DeployDatetime
	end
END TRY
BEGIN CATCH
	 DECLARE @ErrorMessage varchar(MAX) = ERROR_MESSAGE(),
				@ErrorSeverity int = ERROR_SEVERITY(),
				@ErrorState smallint = ERROR_STATE()
 	INSERT INTO [hub].ErrorLog([SPID],[DatetimeStamp],[Username],[Procedure],Message, Severity, State)
	VALUES(@@SPID,getdate(),ORIGINAL_LOGIN (),OBJECT_NAME(@@PROCID),@ErrorMessage, @ErrorSeverity,@ErrorState);
	
	RAISERROR ( @ErrorMessage, @ErrorSeverity, @ErrorState)  ;
	
END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[stp_ExceptionAlias]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[stp_ExceptionAlias] (@SchemaName varchar(100), @TableName varchar(100)) AS
BEGIN
-- procedure code:  EA
BEGIN TRY
/*
	this proc handels the exception that some parties need a different name than the agreed tablename.
*/
	SET NOCOUNT ON
	INSERT INTO [hub].[ActivityLog]([SPID],[DatetimeStamp],[Username],[Procedure],[Parameters])
	VALUES(@@SPID,getdate(),ORIGINAL_LOGIN (),OBJECT_NAME(@@PROCID),ISNULL(@SchemaName,'')+'#'+ISNULL(@TableName,''))

	--declarations
	DECLARE @ObjectOriginal varchar(100)
	DECLARE @ObjectAlias varchar(100)
	DECLARE @DatabaseName varchar(100)
	DECLARE @SQL varchar(8000)
	DECLARE @orgineelBestaat varchar(100)
	DECLARE @AliasBestaat varchar(100)
	DECLARE @Dbobestaat varchar(100)
	DECLARE @DboAliasBestaat varchar(100)
	declare @ExceptieBestaat bit=0
	--constants/parameters
	SELECT @SchemaName= hub.Fn_ValidInput('schema',@SchemaName)
	SELECT @TableName= hub.Fn_ValidInput('table',@TableName)

	--checks
	IF NOT EXISTS (SELECT * FROM hub.MyNamespaces 
	where SchemaName in (@SchemaName,'*'))
	BEGIN
		raiserror('you do not have access to this schema.(stp_ExceptionAlias)',16,3)
		RETURN
	END	
	IF @SchemaName is null
	BEGIN
		raiserror('The parameter @SchemaName needs to be filled.(stp_ExceptionAlias)',16,3)
		RETURN
	END	
	IF @TableName is null
	BEGIN
		raiserror('The parameter @TableName needs to be filled.(stp_ExceptionAlias)',16,3)
		RETURN
	END	
	if (select top 1 1 from hub.Namespaces where SchemaName= @SchemaName) is null
	BEGIN
		RAISERROR('The namespace needs to be added before a alias can be used.(stp_ExceptionAlias)',16,1)
		RETURN
	END

	select 
		@ObjectOriginal= TableName,
		@ObjectAlias = TableAlias
	from (	select distinct
				hub.Fn_ValidInput('table',TableAlias) TableAlias,
				hub.Fn_ValidInput('table',TableName) TableName
			from hub.Exceptions 
			where ExceptionType='ALIAS'
				and SchemaName=@SchemaName) B
	where @TableName in (TableAlias,TableName)

	set @ObjectOriginal= isnull(@ObjectOriginal,@TableName)



	if exists (select * from hub.Exceptions where SchemaName=@SchemaName and TableName=@ObjectOriginal)
		set @ExceptieBestaat=1

	select @ObjectAlias = isnulL(@ObjectAlias,ObjectName) from hub.ObjectInfo 
	where SchemaName=@SchemaName 
	and ObjectType='V'
	and ObjectName <> @ObjectOriginal
	and charindex('['+@ObjectOriginal+']',ViewDefinition)>0
	/*
	todo: eerst bepalen wat er nodig is en daarna bepalen wat de modify dates zijn, want een alias/dbo moet ververst worden als de tabel wijzigt.


	*/
	select *
	into #ExceptionAlias
	from hub.ObjectInfo O
	where O.ObjectName IN (@ObjectOriginal, @ObjectAlias) 
		and (	O.SchemaName =@SchemaName 
				or
				(@SchemaName='dih' and O.SchemaName in ('dih','dbo') )
			) 
		

	select @orgineelBestaat=DatabaseName from #ExceptionAlias where SchemaName=@SchemaName and ObjectName=@ObjectOriginal
	select @AliasBestaat=DatabaseName from #ExceptionAlias where SchemaName=@SchemaName and ObjectName=@ObjectAlias 
	select @Dbobestaat=DatabaseName from #ExceptionAlias where @SchemaName ='dih' and SchemaName='dbo' and ObjectName=@ObjectOriginal 
	select @DboAliasBestaat=DatabaseName from #ExceptionAlias where @SchemaName ='dih' and SchemaName='dbo' and ObjectName=@ObjectAlias





	if not @orgineelBestaat is null and @AliasBestaat is null and not @ObjectAlias is null
	BEGIN
		--create the ALIAS view
		SET @SQL ='USE '+ @orgineelBestaat+'; EXEC('''+ REPLACE('CREATE VIEW ['+@SchemaName+'].['+@ObjectAlias+'] AS SELECT * FROM ['+@SchemaName+'].['+@ObjectOriginal+']','''','''''')+''')'
		exec (@SQL)
	END
	if not @orgineelBestaat is null  and @Dbobestaat is null  and @SchemaName ='dih'
	BEGIN
		--create the dbo view
		SET @SQL ='USE '+ @orgineelBestaat+'; EXEC('''+ REPLACE('CREATE VIEW [dbo].['+@ObjectOriginal+'] AS SELECT * FROM [dih].['+@ObjectOriginal+']','''','''''')+''')'
		exec (@SQL)
	END
	if not @orgineelBestaat is null  and @DboAliasBestaat is null  and @SchemaName ='dih' and not @ObjectAlias is null
	BEGIN
		--create the dbo ALIAS view
		SET @SQL ='USE '+ @orgineelBestaat+'; EXEC('''+ REPLACE('CREATE VIEW [dbo].['+@ObjectAlias+'] AS SELECT * FROM [dih].['+@ObjectAlias+']','''','''''')+''')'
		exec (@SQL)
	END
	if (@orgineelBestaat is null or @ExceptieBestaat=0)   and not @DboAliasBestaat is null 
	BEGIN
		-- delete the dbo ALIAS view
		SET @SQL ='USE '+@DboAliasBestaat+'; EXEC('''+ REPLACE('DROP VIEW [dbo].['+@ObjectAlias+'] ','''','''''')+''')'
		exec (@SQL)
	END
	if @orgineelBestaat is null and not @Dbobestaat is null 
	BEGIN
		--delete the dbo view
		SET @SQL ='USE '+@Dbobestaat+'; EXEC('''+ REPLACE('DROP VIEW [dbo].['+@ObjectOriginal+'] ','''','''''')+''')'
		exec (@SQL)
	END
	if (@orgineelBestaat is null or @ExceptieBestaat=0)  and not @AliasBestaat is null 
	BEGIN
		--delete the ALIAS view
		SET @SQL ='USE '+@AliasBestaat+'; EXEC('''+ REPLACE('DROP VIEW ['+@SchemaName+'].['+@ObjectAlias+'] ','''','''''')+''')'
		exec (@SQL)
	END

END TRY
BEGIN CATCH
	 DECLARE @ErrorMessage varchar(MAX) = ERROR_MESSAGE(),
				@ErrorSeverity int = ERROR_SEVERITY(),
				@ErrorState smallint = ERROR_STATE()
 	INSERT INTO [hub].ErrorLog([SPID],[DatetimeStamp],[Username],[Procedure],Message, Severity, State)
	VALUES(@@SPID,getdate(),ORIGINAL_LOGIN (),OBJECT_NAME(@@PROCID),@ErrorMessage, @ErrorSeverity,@ErrorState);
	
	RAISERROR ( @ErrorMessage, @ErrorSeverity, @ErrorState)  ;
	
END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[stp_HubInformationViews]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROC [dbo].[stp_HubInformationViews] AS
BEGIN
-- procedure code:  HIV
BEGIN TRY
/*
	this procedure makes views on the available metadata in the hub. any non-interface related view is created here.
	The views can be used by everyone but are also used by the software.
	as there are 2 databases to each hub, these views eliminate the need to code everything twice, these views are the go-to source for information.

*/
	SET NOCOUNT ON 
	INSERT INTO [hub].[ActivityLog]([SPID],[DatetimeStamp],[Username],[Procedure],[Parameters])
	VALUES(@@SPID,getdate(),ORIGINAL_LOGIN (),OBJECT_NAME(@@PROCID),'')

	--declarations
	DECLARE @Environment char(1)
	DECLARE @EnvironmentName varchar(100)
	Declare @StagingInDB varchar(100) 
	Declare @StagingOutDB varchar(100) 
	Declare @SplitterDB nvarchar(50)
	DECLARE @SQL1			varchar(8000) 
	DECLARE @SQL2			varchar(8000) 

	--constants/parameters
	select @StagingInDB  = hub.Fn_ValidInput('database',ParamValue) FROM hub.Parameters where  ParamName = 'StagingInDB'
	select @StagingOutDB = hub.Fn_ValidInput('database',ParamValue) FROM hub.Parameters where ParamName = 'StagingOutDB' 
	select @Environment = hub.Fn_ValidInput('environment',ParamValue) FROM hub.Parameters where ParamName ='Environment'
	select @EnvironmentName = hub.Fn_ValidInput('environmentname',ParamValue) FROM hub.Parameters where ParamName ='EnvironmentName'
	SELECT @SplitterDB=  [name] FROM sys.databases where [name] in (select hub.Fn_ValidInput('database',ParamValue)  from HUB_StagingIn.hub.Parameters where ParamName='SplitterDB') 

	--checks
	IF NOT EXISTS (SELECT * FROM hub.MyNamespaces where SchemaName ='*') 
	BEGIN
		raiserror('you do not have access to this procedure.(stp_HubInformationViews)',16,3)
		RETURN
	END

	--hub.MyNamespaces
	/* This views shows the schema rights of the caller. it is used by procedures to see if someone may perform ( based on the parameters given) a certain action.
	This means that people may have access to a procedure/table but cannot influence other projects property.
*/
	SET @SQL1 ='
	select ''*'' 
	from HUB_DBA_STX.sys.database_role_members m  (nolock)
		join HUB_DBA_STX.sys.database_principals r (nolock)
			on m.role_principal_id = r.principal_id 
		join HUB_DBA_STX.sys.database_principals p (nolock)
			on m.member_principal_id = p.principal_id 
	where r.name = ''db_owner''
	and (IS_ROLEMEMBER(p.name, ORIGINAL_LOGIN())=1 or IS_MEMBER (p.name)=1)
	'
	SET @SQL1 =' CREATE VIEW [hub].[MyNamespaces] AS
	select distinct SchemaName 
	from hub.Logins (nolock)
	where IS_ROLEMEMBER(LoginName, ORIGINAL_LOGIN())=1 or IS_MEMBER (LoginName)=1
	UNION 
	select ''*'' where IS_ROLEMEMBER(''sysadmin'', ORIGINAL_LOGIN()) =1 
	UNION
	' + replace(@SQL1,'HUB_DBA_STX',@StagingInDB) + char(10)+' UNION ' +char(10)+replace(@SQL1,'HUB_DBA_STX',@StagingOutDB)
	exec ('IF OBJECT_ID ( ''hub.MyNamespaces'', ''V'' ) IS NOT NULL 
	drop view hub.MyNamespaces')
	exec (@SQL1)

	--hub.ObjectInfo
/*
	all tables and views in the hub.
*/	SET @SQL1 ='
	select
		'''+@EnvironmentName+''' as EnvironmentName,
		'''+@Environment+''' as EnvironmentType,
		case when ''HUB_DBA_STX'' ='''+@StagingInDB+''' then ''StagingInDB'' else ''StagingOutDB'' end as DatabaseType,
	 	''HUB_DBA_STX'' as DatabaseName ,
		O.type as ObjectType,
		S.name as SchemaName, 
		O.name as ObjectName, 
		O.object_id ,
		M.definition as ViewDefinition,
		O.modify_date,
		O.create_date,
		PF.Name PartitionFunction
	from  HUB_DBA_STX.sys.objects O (nolock)
			inner join HUB_DBA_STX.sys.schemas S (nolock)
				on S.schema_id=O.schema_id
			left join HUB_DBA_STX.sys.sql_modules M (nolock)
				ON M.object_id=O.object_id
				and O.type=''V''
			left join HUB_DBA_STX.sys.indexes I (nolock)
				on I.object_id=O.object_id 
				and I.type<2
				and O.type=''U''
			left join HUB_DBA_STX.sys.partition_schemes PS (nolock)
				on PS.data_space_id=I.data_space_id
			left join HUB_DBA_STX.sys.partition_functions PF (nolock)
				on PF.function_id=PS.function_id
	where O.type in (''U'',''V'')
		and O.name not in (''sysdiagrams'')
	'
	SET @SQL1 =' CREATE VIEW [hub].[ObjectInfo] AS' + replace(@SQL1,'HUB_DBA_STX',@StagingInDB) + char(10)+' UNION ' +char(10)+replace(@SQL1,'HUB_DBA_STX',@StagingOutDB)
	exec ('IF OBJECT_ID ( ''hub.ObjectInfo'', ''V'' ) IS NOT NULL 
	drop view hub.ObjectInfo')
	exec (@SQL1)
	
	--hub.ColumnInfo
	/*
	all columns in all tables & views in the hub.
	*/
	SET @SQL1 ='
	select 
		'''+@EnvironmentName+''' as EnvironmentName,
		'''+@Environment+''' as EnvironmentType,
		case when ''HUB_DBA_STX'' ='''+@StagingInDB+''' then ''StagingInDB'' else ''StagingOutDB'' end as DatabaseType,
		''HUB_DBA_STX''as DatabaseName ,
		S.name as SchemaName, 
		O.type as ObjectType,
		O.name as ObjectName, 
		O.object_id ,
		C.name as ColumnName, 
		RANK() OVER (partition by O.object_id order by C.column_id asc)  as ColumnId,	
		case 
			when ST.xtype in (61,42) then ST.name+ ''(''+convert(varchar,C.scale)+'')''
			when ST.xtype in (40,127,56,52,104,48) then ST.name
			when ST.xtype in(108,106) then ''decimal(''+convert(varchar,C.precision)+'',''+convert(varchar,isnull(C.scale,0))+'')''
			when ST.xtype in(167,175) then ST.name+''(''+convert(varchar,C.max_length)+'')''
			when ST.xtype in(231,239) then ST.name+''(''+convert(varchar,C.max_length/2)+'')''
			else NULL end + case when C.is_nullable =0 then '' NOT'' else '''' 
		end + '' NULL'' as  DatatypeTotal,
		case 
			when ST.xtype in(108,106) then ''decimal''
			else ST.name 
		end as  Datatype,
		case 
			when ST.xtype in (61,42) then  C.scale
			when ST.xtype in(108,106) then C.precision
			when ST.xtype in(167,175) then C.max_length
			when ST.xtype in(231,239) then C.max_length/2
			else NULL 
		end  as  DatatypeDetail1,
		case 
			when ST.xtype in(108,106) then C.scale
			else NULL 
		end  as  DatatypeDetail2,
		CASE WHEN cc.name IS NOT NULL THEN 0 ELSE C.is_nullable END as is_nullable
	from HUB_DBA_STX.sys.objects O (nolock)
		inner join HUB_DBA_STX.sys.columns C (nolock)
			on O.object_id=C.object_id
		inner join HUB_DBA_STX.sys.schemas S (nolock)
			on S.schema_id=O.schema_id
		inner join HUB_DBA_STX.sys.systypes ST (nolock)
			on ST.xusertype=C.user_type_id
		left join HUB_DBA_STX.sys.check_constraints cc (nolock)
			on  O.object_id = cc.parent_object_id
			and cc.is_disabled = 0
			and cc.name = O.name + ''_'' + C.name + ''_NOTNULL''
	where S.name not in (''sys'')
	and O.type in (''U'',''V'')
	and O.name not in (''sysdiagrams'')
	'
	SET @SQL1 =' CREATE VIEW [hub].[ColumnInfo] AS' + replace(@SQL1,'HUB_DBA_STX',@StagingInDB) + char(10)+' UNION ' +char(10)+replace(@SQL1,'HUB_DBA_STX',@StagingOutDB)
	exec ('IF OBJECT_ID ( ''hub.ColumnInfo'', ''V'' ) IS NOT NULL 
	drop view hub.ColumnInfo')
	exec (@SQL1)
	
	--hub.IndexInfo
	/*
	all indexes in the hub including the columns used, partitioning and compression.
	*/
	SET @SQL1 ='

		select distinct
		'''+@EnvironmentName+''' as EnvironmentName,
		'''+@Environment+''' as EnvironmentType,
		MAX(case when ''HUB_DBA_STX'' ='''+@StagingInDB+''' then ''StagingInDB'' else ''StagingOutDB'' end) as DatabaseType,
		''HUB_DBA_STX'' as DatabaseName
		,max(B.SchemaName) as SchemaName
		,max(B.ObjectName) as ObjectName
		,B.object_id
		,max(B.IndexType) as IndexType
		,max(B.IndexName) as IndexName
		,max(B.is_unique) is_unique
		,replace(replace(replace((
				select C.name X
				from HUB_DBA_STX.sys.index_columns IC
					inner join HUB_DBA_STX.sys.columns C
						on IC.column_id=C.column_id
						and IC.object_id=C.object_id
				where IC.index_id=B.index_id
					and IC.object_id=B.object_id
				order by IC.key_ordinal, IC.index_column_id for xml auto),''"/><C X="'','', ''),''<C X="'',''''),''"/>'','''') IndexColumns
		,max(case when B.data_compression=0 then 1 else 0 end) HasNoCompression
		,max(case when B.data_compression=1 then 1 else 0 end) HasRowCompression
		,max(case when B.data_compression=2 then 1 else 0 end) HasPageCompression
		,max(HUB_DBA_STX.hub.Fn_StatisticDateTime (B.[object_id], B.index_id)) StatisticDateTime
		,max(PS.name) PartitionScheme
		,max(PF.name)  PartitionFunction	
    FROM	(	select distinct
				O.object_id, 
				O.name ObjectName, 
				S.name  SchemaName, 
				I.type_desc IndexType, 
				I.name IndexName, 
				convert(tinyint,I.is_unique) is_unique, 
				I.index_id, 
				P.data_compression, 
				I.data_space_id
		from 		HUB_DBA_STX.sys.objects O(nolock)
		inner join HUB_DBA_STX.sys.schemas S(nolock)
			on S.schema_id=O.schema_id
			and  O.type =''U''
			and O.name not in (''sysdiagrams'')
		INNER JOIN HUB_DBA_STX.sys.indexes			I(nolock)
			on I.object_id=O.object_id
		INNER JOIN  HUB_DBA_STX.sys.partitions		P(nolock)
			ON P.object_id = I.object_id
			AND P.index_id = I.index_id
			) B
		left join HUB_DBA_STX.sys.partition_schemes PS (nolock)
			on PS.data_space_id=B.data_space_id
		left join HUB_DBA_STX.sys.partition_functions PF (nolock)
			on PF.function_id=PS.function_id
	group by 
	B.object_id, B.index_id
'

	SET @SQL1 =' CREATE VIEW [hub].[IndexInfo] AS' + replace(@SQL1,'HUB_DBA_STX',@StagingInDB) + char(10)+' UNION ' +char(10)+replace(@SQL1,'HUB_DBA_STX',@StagingOutDB)
	exec ('IF OBJECT_ID ( ''hub.IndexInfo'', ''V'' ) IS NOT NULL 
	drop view hub.IndexInfo')
	exec (@SQL1)
	
	--hub.PermissionInfo
	/*
	a list of all permissions on column, object, schema and database level. excluded are database roles and server roles.
	*/
	SET @SQL1 ='
	select 
		'''+@EnvironmentName+''' as EnvironmentName,
		'''+@Environment+''' as EnvironmentType,
		case when ''HUB_DBA_STX'' ='''+@StagingInDB+''' then ''StagingInDB'' else ''StagingOutDB'' 
		end as DatabaseType,
		''HUB_DBA_STX'' as DatabaseName,
		Prin.name as LoginName,
		case when minor_id =0 then ''OBJECT'' else ''COLUMN'' 
		end collate Latin1_General_100_BIN AS ClassDescription ,
		Perm.permission_name collate Latin1_General_100_BIN as permission_name, 
		Perm.state_desc collate Latin1_General_100_BIN as state_desc,
		S.name as SchemaName,
		T.name as TableName,
		C.name as ColumnName
	from HUB_DBA_STX.sys.database_principals Prin (nolock)
		INNER JOIN HUB_DBA_STX.sys.database_permissions Perm (nolock)
			on Prin.principal_id= Perm.grantee_principal_id
		INNER JOIN HUB_DBA_STX.sys.objects T (nolock)
			on T.object_id=Perm.major_id
		INNER JOIN HUB_DBA_STX.sys.schemas S (nolock)
			on S.schema_id=T.schema_id 
		left join HUB_DBA_STX.sys.columns C (nolock)
			on T.object_id=C.object_id
			and C.column_id =Perm.minor_id
		where Perm.class=1
	union
	SELECT 
		'''+@EnvironmentName+''' as EnvironmentName,
		'''+@Environment+''' as EnvironmentType,
		case when ''HUB_DBA_STX'' ='''+@StagingInDB+''' then ''StagingInDB'' else ''StagingOutDB'' end as DatabaseType,
		''HUB_DBA_STX'' as DatabaseName,
		Prin.name as LoginName,
		Perm.class_desc,
		Perm.permission_name, 
		Perm.state_desc ,
		S.name as SchemaName,
		NULL,
		NULL
	from HUB_DBA_STX.sys.database_principals Prin (nolock)
		INNER JOIN HUB_DBA_STX.sys.database_permissions Perm (nolock)
			on Prin.principal_id= Perm.grantee_principal_id
		INNER JOIN HUB_DBA_STX.sys.schemas S (nolock)
			on  S.schema_id=Perm.major_id
	where Perm.class=3
	union
	select 
		'''+@EnvironmentName+''' as EnvironmentName,
		'''+@Environment+''' as EnvironmentType,
		case when ''HUB_DBA_STX'' ='''+@StagingInDB+''' then ''StagingInDB'' else ''StagingOutDB'' end as DatabaseType,
		''HUB_DBA_STX'' as DatabaseName,
		Prin.name as LoginName,
		Perm.class_desc,
		Perm.permission_name, 
		Perm.state_desc ,
		NULL,
		NULL,
		NULL
	FROM HUB_DBA_STX.sys.database_principals Prin (nolock)
		INNER JOIN HUB_DBA_STX.sys.database_permissions Perm (nolock)
			on Perm.grantee_principal_id=Prin.principal_id 
			and Perm.class =0
'
	SET @SQL1 =' CREATE VIEW [hub].[PermissionInfo] AS' + replace(@SQL1,'HUB_DBA_STX',@StagingInDB) + char(10)+' UNION ' +char(10)+replace(@SQL1,'HUB_DBA_STX',@StagingOutDB)
	exec ('IF OBJECT_ID ( ''hub.PermissionInfo'', ''V'' ) IS NOT NULL 
	drop view hub.PermissionInfo')
	exec (@SQL1)

	--hub.Report
	/*
	a list of the metadata per interface (tabel or view) This is the most useful view for users.
	*/
	SET @SQL1 ='CREATE VIEW [hub].Report AS 
	select 
		'''+@EnvironmentName+''' as EnvironmentName,
		'''+@Environment+''' as EnvironmentType,
		DatabaseType,
		case when DatabaseType =''StagingInDB'' then '''+@StagingInDB+''' 
			else '''+@StagingOutDB+''' 
		end as DatabaseName,
		Type,
		SchemaName,
		TableName,
		MAX(CRC) CRC,
		max(isnull(InConfig,0)) InConfig, 
		max(isnull(InDatabase,0)) InDatabase,
		max(isnull(InDeploy,0)) InDeploy,
		max(isnuLL(SuccessfulDeliveryCount,0)) SuccessfulDeliveryCount,
		max(DateColum) DateColum,
		max(isnull(DayCount,0)) DayCount,
		max(isnull(CleanUpActive,0)) CleanUpActive,
		max(isnull(FeedbackIsMandatory,0)) FeedbackIsMandatory,
		convert(varchar,max(modify_date),120) modify_date,
		case  when max(ScriptDatetime) is null  and not max(DeployDatetime) is null then ''handmatig'' else convert(varchar,max(ScriptDatetime),120) end ScriptDatetime,
		convert(varchar,max(DeployDatetime),120) DeployDatetime
	from (
--Supplier configuratie
		select 
			case when N.Location =''E'' then ''StagingInDB'' 
				else ''StagingOutDB'' 
			end DatabaseType,
			''Supplier'' Type, 
			SchemaNameSupplier SchemaName, 
			TableName,
			1 InConfig,
			0 InDatabase,
			0 InDeploy,
			SuccessfulDeliveryCount,
			DateColum,
			DayCount,
			CleanUpActive,
			0 FeedbackIsMandatory,
			NULL modify_date,
			NULL ScriptDatetime,
			NULL DeployDatetime,
			convert(bigint,null) CRC
		from hub.Suppliers S (nolock)
			inner join hub.Namespaces N (nolock)
				on N.SchemaName=S.SchemaNameSupplier 
		union
--Subscriber configuratie
		select 
			case when N.Location =''I'' then ''StagingInDB'' 
				else ''StagingOutDB'' 
			end,
			''Subscriber'' Type, 
			SchemaNameSubscriber SchemaName,
			TableName,
			1 InConfig
			,0 InDatabase,
			0 InDeploy,
			NULL SuccessfulDeliveryCount,
			NULL DateColum,
			NULL DayCount,
			0 CleanUpActive,
			FeedbackIsMandatory,
			NULL create_date,
			NULL ScriptDatetime,
			NULL DeployDatetime,
			null CRC
		from hub.Subscribers S (nolock)
		inner join hub.Namespaces N (nolock)
		on N.SchemaName=S.SchemaNameSubscriber 
		union
-- Deploy informatie
		select case when D.DeployType =''Supplier''  then
					case when N.Location =''E'' then ''StagingInDB'' 
						else ''StagingOutDB'' 
					end
				else
					case when N.Location =''I'' then ''StagingInDB'' 
						else ''StagingOutDB'' 
					end
				end,
				D.[DeployType] Type, 
				D.SchemaName, 
				D.TableName,
				0 InConfig,
				0 InDatabase,
				1 InDeploy,
				0 SuccessfulDeliveryCount,
				null DateColum,
				0 DayCount,
				0 CleanUpActive,
				0 FeedbackIsMandatory,
				null create_date,
				convert(datetime,D.[ScriptDatetime]) ScriptDatetime, 
				convert(datetime,D.DeployDatetime) DeployDatetime,
				null CRC
		from hub.Deploys D (nolock)
			inner join (
					select [DeployType], 
						SchemaName, 
						TableName,
						max(DeployDatetime) DeployDatetime
					from hub.Deploys (nolock)
					group by 
						[DeployType], 
						SchemaName, 
						TableName) L
					on L.TableName=D.TableName
					and L.SchemaName=D.SchemaName
					and L.DeployDatetime=D.DeployDatetime
					and L.[DeployType]=D.[DeployType]
			inner join hub.Namespaces N (nolock)
				on N.SchemaName=D.SchemaName
		union
-- object informatie
		select  P.ParamName,
			case when O.ObjectType =''U'' then ''Supplier'' 
				when O.ObjectType =''V'' then ''Subscriber'' 
				else '''' 
			end,
			O.SchemaName,
			O.ObjectName,
			0,
			1,
			0,
			0,
			null,
			null,
			0,
			0,
			modify_date,
			null,
			null,
			NULL CRC
		from hub.ObjectInfo O (nolock)
		inner join hub.Namespaces N (nolock)
			on N.SchemaName=O.SchemaName
			and N.SchemaName not in (''log'',''XXX'')
		left join hub.Exceptions E (nolock)
			on E.ExceptionType=''ALIAS''
			and E.TableAlias=O.ObjectName
			and E.SchemaName=O.SchemaName
		inner join  hub.Parameters P (nolock)
			on P.ParamValue=DatabaseName
		where E.SchemaName is null
			and RIGHT(O.ObjectName,1) <>''@'' 
		union	
--CRC tables		
		select case when N.Location =''E'' then ''StagingInDB'' 
			else ''StagingOutDB'' end,
			''Supplier'',
			B.[SchemaName]
			,[ObjectName],
			0,
			0,
			0,
			0,
			null,
			null,
			0,
			0,
			NULL,
			null,
			null,
			CHECKSUM_AGG (CRC) CRC
		from (		SELECT [SchemaName]
						,[ObjectName]
						,CHECKSUM([SchemaName],[ObjectName],[ColumnName],[DatatypeTotal], row_number() over (partition by [SchemaName],[ObjectName] order by [ColumnId])) CRC
					FROM [hub].[ColumnInfo] (nolock)
					where [ObjectType] =''U''
				UNION 
					SELECT E.SchemaName, E.TableName
						,CHECKSUM(ExceptionType, TableAlias, NameIndex, CodeIndex, ColumnExtra, DatatypeExtra, StatePermission, NamePermission, ColumnPermission)
					FROM hub.Suppliers S(nolock)
						INNER JOIN hub.Exceptions E(nolock)
							ON E.SchemaName=S.SchemaNameSupplier
							AND E.TableName=S.TableName
					) B
				inner join hub.Namespaces N (nolock)
					on N.SchemaName=B.SchemaName
		group by B.[SchemaName]
			,[ObjectName]
			,N.Location
		union
-- CRC views
		select 
			case when N.Location =''I'' then ''StagingInDB'' 
			else ''StagingOutDB'' end,
			''Subscriber'',
			B.SchemaName,
			TableName,
			0,
			0,
			0,
			0,
			null,
			null,
			0,
			0,
			NULL,
			null,
			null,
			CHECKSUM_AGG (CRC) CRC
		from (SELECT [SchemaName]
				,[TableName]
				,CHECKSUM(row_number() over (partition by [SchemaName],[TableName] order by [ID]),[SchemaName],[TableName],[Clause],[SqlCode],[ColumnName]) CRC
				FROM [hub].[CustomViewsConfig] (nolock)
			UNION
				select SchemaNameSubscriber , TableName ,CHECKSUM(TableName, SchemaNameSubscriber, FeedbackIsMandatory)
				from hub.Subscribers (nolock)
			UNION 
				SELECT E.SchemaName, E.TableName
					,CHECKSUM(ExceptionType, TableAlias, NameIndex, CodeIndex, ColumnExtra, DatatypeExtra, StatePermission, NamePermission, ColumnPermission)
				FROM hub.Subscribers S(nolock)
					INNER JOIN hub.Exceptions E(nolock)
						ON E.SchemaName=S.SchemaNameSubscriber
						AND E.TableName=S.TableName) B
				inner join hub.Namespaces N (nolock)
					on N.SchemaName=B.SchemaName
		group by 
			B.[SchemaName]
			,[TableName]
			,N.Location	
			 )B
	where TableName <>''sysdiagrams''
	group by DatabaseType,
		Type,
		SchemaName,
		TableName'
	exec ('IF OBJECT_ID ( ''hub.Report'', ''V'' ) IS NOT NULL 
	drop view hub.Report')
	exec (@SQL1)
	
	--hub.PartitionFunctionInfo
	/*
	givens information about the partitionfunction, not the partitions.
	*/
	SET @SQL1 ='
	select
		'''+@EnvironmentName+''' as EnvironmentName,
		'''+@Environment+''' as EnvironmentType,
		case when ''HUB_DBA_STX'' ='''+@StagingInDB+''' then ''StagingInDB'' else ''StagingOutDB'' end as DatabaseType,
	 	''HUB_DBA_STX'' as DatabaseName ,
		PF.name PartitionFunction, 
		PS.name PartitionSchema, 
		P.data_space_id,
		PRV.value UpperBoundary, 
		PRV.boundary_id PartitionNumber, 
		isnull(P.Rows,0) Rows
from HUB_DBA_STX.sys.partition_range_values PRV(nolock)
	INNER JOIN HUB_DBA_STX.sys.partition_schemes PS (nolock)
		ON PS.function_id = PRV.function_id
	INNER JOIN HUB_DBA_STX.sys.partition_functions PF (nolock)
		on PF.function_id=PS.function_id
	LEFT JOIN (
			select data_space_id, P.partition_number, SUM(P.rows) Rows
			from HUB_DBA_STX.sys.indexes I (nolock)
				INNER JOIN HUB_DBA_STX.sys.partitions  P (nolock)
					on P.index_id=I.index_id
				INNER JOIN HUB_DBA_STX.sys.objects O (nolock)
					on O.object_id=P.object_id
					and O.type =''U''
					and I.object_id=O.object_id
			where I.type<2
			GROUP BY data_space_id, P.partition_number) P
		on PS.data_space_id=P.data_space_id	
		and P.partition_number=PRV.boundary_id

	'
	SET @SQL1 =' CREATE VIEW [hub].[PartitionFunctionInfo] AS' + replace(@SQL1,'HUB_DBA_STX',@StagingInDB) + char(10)+' UNION ' +char(10)+replace(@SQL1,'HUB_DBA_STX',@StagingOutDB)
	exec ('IF OBJECT_ID ( ''hub.PartitionFunctionInfo'', ''V'' ) IS NOT NULL 
	drop view hub.PartitionFunctionInfo')
	exec (@SQL1)

	--hub.PartitionInfo
	/*
	a list of the existing partitions
	*/
	SET @SQL1 ='
SELECT 
	'''+@EnvironmentName+''' as EnvironmentName,
	'''+@Environment+''' as EnvironmentType,
	case when ''HUB_DBA_STX'' ='''+@StagingInDB+''' then ''StagingInDB'' else ''StagingOutDB'' end as DatabaseType,
	''HUB_DBA_STX'' DatabaseName, 
	S.name SchemaName, 
	O.name TableName, 
	P.partition_id PartitionId, 
	P.partition_number PartitionNumber, 
	P.rows Records, 
	PRV.value UpperBoundary,
	AU.used_pages Pages,
	I.data_space_id,
	PF.name PartitionFunction
from HUB_DBA_STX.sys.partitions P(nolock)
	inner join HUB_DBA_STX.sys.objects O(nolock)
		on P.object_id=O.object_id
	inner join HUB_DBA_STX.sys.indexes I (nolock)
		on I.object_id=O.object_id 
		and P.index_id=I.index_id 
		and I.type<2
	inner join HUB_DBA_STX.sys.schemas S(nolock)
		on S.schema_id=O.schema_id
		and S.name not in (''log'',''hub'',''XXX'')
	inner join HUB_DBA_STX.hub.Namespaces N(nolock)
		on S.name =N.SchemaName
	INNER JOIN HUB_DBA_STX.sys.allocation_units AU (nolock)
		ON P.partition_id = AU.container_id
		and AU.type=1	
	left join HUB_DBA_STX.sys.partition_schemes PS (nolock)
		ON PS.data_space_id=I.data_space_id
	left join HUB_DBA_STX.sys.partition_functions PF(nolock) 
		on  PF.function_id=PS.function_id
	left join HUB_DBA_STX.sys.partition_range_values PRV (nolock)
		on PF.function_id=PRV.function_id
		and PRV.boundary_id=P.partition_number
where 	P.rows>0 			'

		SET @SQL1 =' CREATE VIEW [hub].[PartitionInfo] AS' + replace(@SQL1,'HUB_DBA_STX',@StagingInDB) + char(10)+' UNION ' +char(10)+replace(@SQL1,'HUB_DBA_STX',@StagingOutDB)
	exec ('IF OBJECT_ID ( ''hub.PartitionInfo'', ''V'' ) IS NOT NULL 
	drop view hub.PartitionInfo')
	exec (@SQL1)

		--hub.ConstraintInfo
/*
	a list of all constraints in the environment
*/	SET @SQL1 ='
	select 
		'''+@EnvironmentName+''' as EnvironmentName,
		'''+@Environment+''' as EnvironmentType,
		case when ''HUB_DBA_STX'' ='''+@StagingInDB+''' then ''StagingInDB'' else ''StagingOutDB'' end as DatabaseType,
	 	''HUB_DBA_STX'' as DatabaseName ,
		S.name as SchemaName, 
		O.type as ObjectType,
		O.name as ObjectName,
		CC.name as ConstraintName,
		CC.definition as ConstraintDefinition,
		CC.is_not_trusted as WithNoCheck
from HUB_DBA_STX.sys.check_constraints CC (nolock)
	inner join HUB_DBA_STX.sys.objects O (nolock)
		on CC.parent_object_id=O.object_id
	inner join HUB_DBA_STX.sys.schemas S (nolock)
		on S.schema_id=O.schema_id
	'

	SET @SQL1 =' CREATE VIEW [hub].[ConstraintInfo] AS' + replace(@SQL1,'HUB_DBA_STX',@StagingInDB) + char(10)+' UNION ' +char(10)+replace(@SQL1,'HUB_DBA_STX',@StagingOutDB)
	exec ('IF OBJECT_ID ( ''hub.ConstraintInfo'', ''V'' ) IS NOT NULL 
	drop view hub.ConstraintInfo')
	exec (@SQL1)
	
	--hub.DLV_info
		/*
		a list of the current DLV configurations
		*/
	SET @SQL1 ='
CREATE VIEW [hub].[DlvInfo] AS
SELECT 
	SRC_ENT_NM,
	SRC_DELIVR_TP_CODE,
	SRC_DELIVR_INTRVL_CODE,
	TRG_ENT_DATABASE,
	TRG_ENT_SCHEMA,
	TRG_ENT_NM,
	MAPPING_NM,
	CHECKS,
	 LTRIM(RTRIM(
	 REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(
		SUBSTRING(UNIQUE_KEY_SQL,1,CHARINDEX(''HAVING'',UNIQUE_KEY_SQL)-1)
		,char(10),'' '')   ,char(32),'' '')    ,char(13),'' '')    ,char(10),'' '')   ,''  '','' '')    ,''  '','' ''))) UNIQUE_KEY
FROM (
	SELECT 
		TE.TRG_ENT_DATABASE, 
		SE.SRC_ENT_NM, 
		TE.TRG_ENT_NM, 
		TE.TRG_ENT_SCHEMA,
		SE.SRC_DELIVR_TP_CODE,
		SE.SRC_DELIVR_INTRVL_CODE,
		TE.MAPPING_NM,
		SUBSTRING(TE.UNIQUE_KEY_SQL, CHARINDEX(''TRG_ID,'',UNIQUE_KEY_SQL,CHARINDEX(''GROUP BY'',UNIQUE_KEY_SQL))+7,1000) UNIQUE_KEY_SQL,
		REPLACE (REPLACE ((	
			SELECT 
				DLV_RULE_NO X 
			FROM log.CONF_DLV_STR_MAP_RULE MR
				INNER JOIN log.CONF_DLV_RULE R
					on MR.DLV_RULE_ID=R.DLV_RULE_ID
			WHERE 
				MR.IND_PERFORM_RULE_YN=''Y''
				and TRG_ID=TE.TRG_ID
			ORDER BY 
				R.DLV_RULE_ID 
			FOR XML auto
		),''<R X="'',''''),''"/>'','';'') CHECKS
	FROM			log.CONF_MD_TARGET_ENTITY TE(nolock)
		INNER JOIN	log.CONF_MD_SOURCE_ENTITY SE(nolock)
			on TE.SRC_ID=SE.SRC_ID) B		'

	exec ('IF OBJECT_ID ( ''hub.DlvInfo'', ''V'' ) IS NOT NULL 
	DROP VIEW hub.DlvInfo')
	exec (@SQL1)

	--hub.Coreinfo
/*
	this lists all the non-interface software. it includes a CRC value to compare software across databases.
*/
SET @SQL1='
CREATE VIEW [hub].[CoreInfo] AS
with 
Parameters as (select 
		'''+@EnvironmentName+''' as  Omgeving,
		max(case when P1.ParamName=''Environment'' then P1.ParamValue else null end) EnvironmentType,
		max(case when P1.ParamName=''StagingInDB'' then P1.ParamValue else null end) StagingInDB,
		max(case when P1.ParamName=''StagingOutDB'' then P1.ParamValue else null end) StagingOutDB
		,P2.ParamValue DatabaseName, 
		P2.ParamName DatabaseType
		from HUB_DBA_STI.hub.Parameters P1(nolock)
	cross join HUB_DBA_STI.hub.Parameters P2 (nolock)
	where P2.ParamName in (''StagingOutDB'',''StagingInDB'')
	group by P2.ParamValue,P2.ParamName
		),
objects as (select ''HUB_DBA_STI'' DBN, * from HUB_DBA_STI.sys.objects(nolock)
		UNION select ''HUB_DBA_STO'' DBN, * from HUB_DBA_STO.sys.objects(nolock)),
schemas as (select ''HUB_DBA_STI'' DBN, * from HUB_DBA_STI.sys.schemas(nolock)
		UNION select ''HUB_DBA_STO'' DBN, * from HUB_DBA_STO.sys.schemas(nolock)),
columns as (select ''HUB_DBA_STI'' DBN, * from HUB_DBA_STI.sys.columns(nolock)
		UNION select ''HUB_DBA_STO'' DBN, * from HUB_DBA_STO.sys.columns(nolock)),
sql_module as (select ''HUB_DBA_STI'' DBN, * from HUB_DBA_STI.sys.sql_modules(nolock)
		UNION select ''HUB_DBA_STO'' DBN, * from HUB_DBA_STO.sys.sql_modules(nolock)),
sql_modules AS (SELECT  DBN, object_id,  lower(REPLACE(REPLACE(REPLACE(REPLACE(definition,'' '',''''), CHAR(13),''''), CHAR(10),''''), CHAR(9),'''')) definition FROM sql_module),
synonyms as (select ''HUB_DBA_STI'' DBN, * from HUB_DBA_STI.sys.synonyms(nolock)
		UNION select ''HUB_DBA_STO'' DBN, * from HUB_DBA_STO.sys.synonyms(nolock)),
check_constraints as (select ''HUB_DBA_STI'' DBN, * from HUB_DBA_STI.sys.check_constraints(nolock)
		UNION select ''HUB_DBA_STO'' DBN, * from HUB_DBA_STO.sys.check_constraints(nolock)),
foreign_keys as (select ''HUB_DBA_STI'' DBN, * from HUB_DBA_STI.sys.foreign_keys(nolock)
		UNION select ''HUB_DBA_STO'' DBN, * from HUB_DBA_STO.sys.foreign_keys(nolock)),
foreign_key_columns as (select ''HUB_DBA_STI'' DBN, * from HUB_DBA_STI.sys.foreign_key_columns(nolock)
		UNION select ''HUB_DBA_STO'' DBN, * from HUB_DBA_STO.sys.foreign_key_columns(nolock)),
indexes as (select ''HUB_DBA_STI'' DBN, * from HUB_DBA_STI.sys.indexes(nolock)
		UNION select ''HUB_DBA_STO'' DBN, * from HUB_DBA_STO.sys.indexes(nolock)),
index_columns as (select ''HUB_DBA_STI'' DBN, * from HUB_DBA_STI.sys.index_columns(nolock)
		UNION select ''HUB_DBA_STO'' DBN, * from HUB_DBA_STO.sys.index_columns(nolock))
select  Omgeving EnvironmentName , EnvironmentType, DatabaseType , P.DatabaseName, 
		''HubVersion'' ObjectType,convert(varchar(100),''NVT'')SchemaName,convert(varchar(100),''NVT'') ObjectName, convert(varchar(100),ParamValue) CRC  from HUB_DBA_STI.hub.Parameters P1(nolock)
	inner join Parameters P(nolock)
	on DatabaseName=''HUB_DBA_STI''
where ParamName=''HubVersion'''
set @SQL2='
UNION
select  max(Omgeving), max(EnvironmentType),max(DatabaseType) ,O.DBN, 
	''Tables'' ObjectType,
	S.name SchemaName,
	O.name TableName,
	CHECKSUM_AGG(checksum(C.name,C.column_id2, C.system_type_id, C.user_type_id, C.max_length, C.precision, C.scale, C.collation_name, C.is_nullable, C.is_ansi_padded, C.is_rowguidcol, C.is_identity, C.is_computed, C.is_filestream, C.is_replicated, C.is_non_sql_subscribed, C.is_merge_published, C.is_dts_replicated, C.is_xml_document, C.xml_collection_id, C.rule_object_id, C.is_sparse, C.is_column_set)) CRC
from objects O
	inner join schemas S
		on O.schema_id=S.schema_id
		and S.name in (''hub'',''log'')
		and O.DBN=S.DBN
	inner join ( select *, ROW_NUMBER() over (partition by DBN, object_id order by column_id asc) column_id2 from columns) C
		on C.object_id=O.object_id
		and O.DBN=C.DBN
	inner join Parameters P
	on O.DBN=DatabaseName
where O.type=''U''
group by S.name, O.name,O.DBN
UNION
select   max(Omgeving), max(EnvironmentType),max(DatabaseType) ,O.DBN, 
		case when O.type =''V'' then ''Views''
			when O.type in (''IF'',''FN'',''TF'') then ''Function''
			when O.type =''P '' then ''Procedure''
			when O.type =''TR'' then ''Trigger''
			else  O.type end,
	S.name SchemaName, O.name ObjectName
	,CHECKSUM_AGG(checksum(replace(replace(
		replace( replace( replace( replace(convert(varchar(max), M.definition)
		,''''''O'''''',''''''X'''''')
		,''''''T'''''',''''''X'''''')
		,''''''A'''''',''''''X'''''')
		,''''''P'''''',''''''X'''''')
		,P.StagingInDB,''StagingInDB''),P.StagingOutDB,''StagingOutDB'')))
from objects O
	inner join schemas S
		on O.schema_id=S.schema_id
		and S.name in (''hub'',''log'',''dbo'')
		and O.DBN=S.DBN
	inner join sql_modules M (nolock)
		ON M.object_id=O.object_id
		and M.DBN=S.DBN
	inner join Parameters P
		on O.DBN=DatabaseName
		where not (S.name =''dbo'' and O.type =''V'')
		and not (O.name not like ''stp%'' and O.type =''P'')
		and not (O.name not like ''Fn%'' and O.type in (''IF'',''FN''))
		and O.name <>''fn_diagramobjects''
group by O.type, S.name, O.name , O.DBN
UNION
select   max(Omgeving), max(EnvironmentType),max(DatabaseType) ,FK.DBN, 
		''ForeignKey'',
	FKS.name SchemaName,
	FK.name ObjectName,
	CHECKSUM_AGG(checksum(POS.name,PO.name, POC.name,ROS.name,RO.name,ROC.name))
from foreign_keys FK
inner join schemas FKS
	on FKS.schema_id=FK.schema_id
	and FKS.name in (''hub'',''log'')
	and FK.DBN=FKS.DBN
inner join foreign_key_columns FKC
	on FKC.constraint_object_id=FK.object_id
	and FK.DBN=FKC.DBN
inner join objects PO
	on PO.object_id=FK.parent_object_id
	and PO.DBN=FK.DBN
inner join schemas POS
	on POS.schema_id=PO.schema_id
	and POS.DBN=PO.DBN
inner join columns POC
	on POC.column_id =FKC.parent_column_id
	and POC.object_id = FKC.parent_object_id
	and POC.DBN=FKC.DBN
inner join objects RO
	on RO.object_id=FKC.referenced_object_id
	and RO.DBN=FKC.DBN
inner join schemas ROS
	on ROS.schema_id=PO.schema_id
	and ROS.DBN=PO.DBN
inner join columns ROC
	on ROC.column_id =FKC.referenced_column_id
	and ROC.object_id = FKC.referenced_object_id
	and ROC.DBN=FKC.DBN
	inner join Parameters P
	on FK.DBN=DatabaseName
group by FKS.name, FK.name , FK.DBN

UNION
select   max(Omgeving), max(EnvironmentType),max(DatabaseType) ,I.DBN, 
		lower(I.type_desc)+ ''Index'',
	S.name SchemaName,
	I.name ObjectName,
	CHECKSUM_AGG(checksum(
	I.is_unique,
	I.ignore_dup_key,
	I.ignore_dup_key,
	I.is_unique_constraint,
	I.is_padded,
	I.allow_page_locks,
	I.allow_row_locks,
	I.has_filter,
	I.filter_definition,
	IC.index_column_id,
	IC.is_descending_key,
	IC.is_included_column,
	IC.key_ordinal,
	IC.partition_ordinal,
	C.name))
from indexes I
	inner join objects O
		on O.object_id=I.object_id
		and O.DBN=I.DBN
	inner join schemas S
		on O.schema_id=S.schema_id
		and S.name in (''hub'',''log'')
		and O.DBN=S.DBN
	inner join index_columns IC
		on IC.index_id=I.index_id
		and IC.object_id=I.object_id
		and IC.DBN=I.DBN
	inner join columns C
		on C.object_id=O.object_id
		and C.column_id=IC.column_id
		and C.DBN=IC.DBN
	inner join Parameters P
	on I.DBN=DatabaseName
group by I.DBN,
lower(I.type_desc),
	S.name,
	I.name
UNION
select   max(Omgeving), max(EnvironmentType),max(DatabaseType) ,O.DBN, 
		''synonyms'',
	S.name, 
	O.name,
	CHECKSUM_AGG(checksum(
	O.is_ms_shipped,
	O.is_published,
	O.is_schema_published,
		replace(replace(O.base_object_name,P.StagingInDB,''StagingInDB''),P.StagingOutDB,''StagingOutDB'')
	))	
from synonyms O
	inner join schemas S
		on O.schema_id=S.schema_id
		and S.name in (''hub'',''log'')
		and O.DBN=S.DBN
	inner join Parameters P
	on O.DBN=DatabaseName
group by O.DBN,
	S.name,
	O.name

UNION
select   max(Omgeving), max(EnvironmentType),max(DatabaseType) ,O.DBN, 
		lower(CC.type_desc),
	S.name,
	O.name+''.''+ CC.name,  CHECKSUM_AGG(checksum(CC.is_ms_shipped,CC.is_published, CC.is_schema_published,CC.is_disabled, CC.is_not_for_replication, CC.is_not_trusted,CC.definition, CC.uses_database_collation, CC.is_system_named) )
from check_constraints CC
inner join objects O
on O.object_id=CC.parent_object_id 
and O.DBN=CC.DBN
inner join schemas S
on S.schema_id=O.schema_id
and S.name in (''hub'',''log'')
and O.DBN=S.DBN
	inner join Parameters P
	on O.DBN=DatabaseName
	group by 
	O.DBN, CC.type_desc, S.name, O.name, CC.name
'


SET @SQL1 = replace(replace(@SQL1,'HUB_DBA_STI',@StagingInDB) ,'HUB_DBA_STO',@StagingOutDB) 
	exec ('IF OBJECT_ID ( ''hub.CoreInfo'', ''V'' ) IS NOT NULL 
	drop view hub.CoreInfo')
	exec (@SQL1+@SQL2)

	--hub.PointerInfo
	/*
	information for subscribers to see if their data is ready. exixsts for backwards compatibility
	*/
SET @SQL1='
CREATE VIEW [hub].[PointerInfo] AS
	with 
	Valids AS (
		SELECT DISTINCT TRG_ENT_NM TableName, DELIVERY_SQN_CRNT_RUN DELIVERY_SQN 
		FROM log.LOG_DD_DATA_DELIVERY (nolock)
		WHERE LOAD_ST_CODE=''DLV OK''),
	DLVs AS (
		SELECT DISTINCT TableName 
		FROM Valids),
	Deliveries AS (
		SELECT A.SchemaNameSubscriber SchemaName, A.TableName, PC.DELIVERY_SQN ,PC.ACT_DTS, PC.Records,
		CASE WHEN DLVs.TableName IS NULL THEN ''Valids''
				WHEN not Valids.TableName IS NULL THEN ''Valids''
				ELSE ''SKIP'' END Visibility,
			CASE WHEN FeedbackIsMandatory=1 THEN 
				CASE WHEN LastDelivery>= PC.DELIVERY_SQN THEN ''DONE'' 
					ELSE ''TODO'' END
			ELSE ''RIVER'' END pointer, A.LastDelivery
		FROM ( select TableName,DELIVERY_SQN,ACT_DTS, sum(Records )Records  from hub.PartitionContent (nolock) group by TableName,DELIVERY_SQN,ACT_DTS ) PC
			INNER JOIN hub.Subscribers A(nolock)
				ON A.TableName=PC.TableName
			LEFT JOIN DLVs
				ON DLVs.TableName=PC.TableName
			LEFT JOIN Valids
				ON Valids.TableName=PC.TableName AND Valids.DELIVERY_SQN=PC.DELIVERY_SQN	),
	Volgende AS (
		SELECT SchemaName, TableName, MIN(DELIVERY_SQN) DELIVERY_SQN  
		FROM Deliveries  
		WHERE pointer=''TODO'' 
			AND Visibility =''Valids'' 
		GROUP BY SchemaName, TableName)
SELECT 
	D.SchemaName, 
	D.TableName, 
	D.DELIVERY_SQN, 
	D.Records, 
	D.ACT_DTS,
	CASE WHEN pointer=''RIVER'' AND Visibility=''Valids'' THEN ''RIVER''
		WHEN pointer=''RIVER'' AND Visibility<> ''Valids''THEN ''SKIP''
		WHEN Visibility=''SKIP'' THEN Visibility
		WHEN pointer=''DONE'' THEN pointer
		WHEN D.DELIVERY_SQN=V.DELIVERY_SQN THEN ''NEXT''
		WHEN D.LastDelivery<D.DELIVERY_SQN AND Visibility<>''SKIP'' THEN pointer
	ELSE ''XXX'' END  pointer
FROM Deliveries D
	LEFT JOIN Volgende V
		ON V.SchemaName=D.SchemaName AND V.TableName=D.TableName AND V.DELIVERY_SQN=D.DELIVERY_SQN '

	exec ('IF OBJECT_ID ( ''hub.PointerInfo'', ''V'' ) IS NOT NULL 
	drop view hub.PointerInfo')
	exec (@SQL1)
	
	--hub.DeliveryInfo
	/*
	the new name for hub.PointerInfo
	*/
set @SQL1='
create view hub.DeliveryInfo as
	with 
	Valids AS (
		SELECT DISTINCT TRG_ENT_NM TableName, DELIVERY_SQN_CRNT_RUN DELIVERY_SQN 
		FROM log.LOG_DD_DATA_DELIVERY (nolock)
		WHERE LOAD_ST_CODE=''DLV OK''),
	DLVs AS (
		SELECT DISTINCT TableName 
		FROM Valids),
		'+case when  @SplitterDB is not null then '
		SplitOK as (select distinct TABLENAME TableName, DELIVERY_SQN from [log].[SPLITTER_SPLIT_LOG] where STATUS=''SUCCEEDED''),
		SplitNeeded as (
			select CVC.SchemaName, CVC.TableName 
		from hub.CustomViewsConfig CVC
			inner join hub.Suppliers S
				on  S.TableName = CVC.TableName
				and S.IsSplit = 1
		where Clause=''WHERE'' 
			and SqlCode like ''%DST_CODE%''),	
		'
	else
		'SplitOK as (select distinct ''000'' TableName, 0 DELIVERY_SQN ), --will never match, so will be as if it does not exist
		SplitNeeded as (select ''XXX'' SchemaName, ''000''TableName),	--will never match, so will be as if it does not exist ' 
	end +
	'Deliveries AS (
		SELECT A.SchemaNameSubscriber SchemaName, A.TableName, PC.DELIVERY_SQN ,PC.ACT_DTS, PC.Records,
		CASE WHEN not DLVs.TableName IS NULL and Valids.TableName IS NULL THEN ''SKIP''
			WHEN not SN.TableName IS NULL and SO.TableName IS NULL THEN ''SPLIT_NOK''
			ELSE ''Valids'' END Visibility,
		CASE WHEN FeedbackIsMandatory=1 THEN 
				CASE WHEN LastDelivery>= PC.DELIVERY_SQN THEN ''DONE'' 
					ELSE ''TODO'' END
			ELSE ''RIVER'' END pointer, A.LastDelivery
		FROM ( select TableName,DELIVERY_SQN,ACT_DTS, sum(Records )Records  from hub.PartitionContent (nolock) group by TableName,DELIVERY_SQN,ACT_DTS ) PC
			INNER JOIN hub.Subscribers A(nolock)
				ON A.TableName=PC.TableName
			LEFT JOIN DLVs
				ON DLVs.TableName=PC.TableName
			LEFT JOIN Valids
				ON Valids.TableName=PC.TableName AND Valids.DELIVERY_SQN=PC.DELIVERY_SQN
			left join SplitNeeded SN
				on SN.TableName= A.TableName
				and SN.SchemaName=A.SchemaNameSubscriber
			left join SplitOK SO
				on SO.TableName=A.TableName
				and SO.DELIVERY_SQN=PC.DELIVERY_SQN
				),
	Volgende AS (
		SELECT SchemaName, TableName, MIN(DELIVERY_SQN) DELIVERY_SQN  
		FROM Deliveries  
		WHERE pointer=''TODO'' 
			AND Visibility =''Valids'' 
		GROUP BY SchemaName, TableName)
SELECT 
	D.SchemaName, 
	D.TableName, 
	D.DELIVERY_SQN, 
	D.Records, 
	D.ACT_DTS,
	CASE WHEN pointer=''RIVER'' AND Visibility=''Valids'' THEN ''RIVER''
		WHEN Visibility<> ''Valids'' THEN Visibility
		WHEN pointer=''DONE'' THEN pointer
		WHEN D.DELIVERY_SQN=V.DELIVERY_SQN THEN ''NEXT''
		WHEN D.LastDelivery<D.DELIVERY_SQN THEN pointer
	ELSE ''XXX'' END  pointer
FROM Deliveries D
	LEFT JOIN Volgende V
		ON V.SchemaName=D.SchemaName AND V.TableName=D.TableName AND V.DELIVERY_SQN=D.DELIVERY_SQN	'
	exec ('IF OBJECT_ID ( ''hub.DeliveryInfo'', ''V'' ) IS NOT NULL 
	drop view hub.DeliveryInfo')
	exec (@SQL1)

	-- all views created, set premissions
	exec stp_Permissions

END TRY
BEGIN CATCH
	 DECLARE @ErrorMessage varchar(MAX) = ERROR_MESSAGE(),
				@ErrorSeverity int = ERROR_SEVERITY(),
				@ErrorState smallint = ERROR_STATE()
 	INSERT INTO [hub].ErrorLog([SPID],[DatetimeStamp],[Username],[Procedure],Message, Severity, State)
	VALUES(@@SPID,getdate(),ORIGINAL_LOGIN (),OBJECT_NAME(@@PROCID),@ErrorMessage, @ErrorSeverity,@ErrorState);
	
	RAISERROR ( @ErrorMessage, @ErrorSeverity, @ErrorState)  ;
	
END CATCH
end

GO
/****** Object:  StoredProcedure [dbo].[stp_Indexes]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[stp_Indexes] (@SchemaName varchar(10)=null,@TableName varchar(100)=null) 
AS
BEGIN
-- procedure code:  I
/********************************************************************************************************************************************************
**     Procedure:               [dbo].[stp_Indexes]
**     Created By:              Ard Goossens
**     Creation Date:           Unknown
**     Description:				this proc checks and corrects all indexes and compressions on the interface tables. the source of the table determines the indexes used.
** 								the name of a clustered index is <tablename>_CI_
** 								the name of a non-clustered index is<tablename>_NI_
**     
**     Parameters:				@SchemaName : Schema to check indexes on 
** 								@TableName : Table to check
**     
**     Returns:					None
**     
**     Version History
**	Changed By		Change Date		Change
**  AStoddart		2020-03-03		Ensures does not check TMP schema unless explicitly provided
**
********************************************************************************************************************************************************/
BEGIN TRY

	SET NOCOUNT ON

	INSERT INTO [hub].[ActivityLog]([SPID],[DatetimeStamp],[Username],[Procedure],[Parameters])
	VALUES(@@SPID,getdate(),ORIGINAL_LOGIN (),OBJECT_NAME(@@PROCID),ISNULL(@SchemaName,'')+'#'+ISNULL(@TableName,''))

	--declarations
	declare @nu varchar(20)
	declare @SQL varchar(8000)

	CREATE TABLE #CurrentTables_I(
		DatabaseName varchar(100), 
		SchemaName varchar(100), 
		TableName varchar(100), 
		PartitionFunction  varchar(100))

	CREATE TABLE #Expected_I(
		DatabaseName varchar(100), 
		SchemaName varchar(100), 
		TableName varchar(100), 
		IndexType varchar(100), 
		IndexColumns varchar(1000), 
		PartitionFunction  varchar(100))

	CREATE TABLE #CurrentIndexes_I(
		DatabaseName varchar(100), 
		SchemaName varchar(100), 
		TableName varchar(100), 
		IndexType varchar(100), 
		IndexColumns varchar(1000), 
		PartitionFunction  varchar(100),
		IndexName varchar(100))
	
	--constants/parameters
	set @nu = replace(replace(replace(convert(varchar,getdate(),120),':',''),' ',''),'-','')

	--checks
	IF NOT EXISTS (SELECT * FROM hub.MyNamespaces where SchemaName ='*')
	BEGIN
		raiserror('you do not have access to this procedure.(stp_Indexes)',16,3)
		RETURN
	END
	
	-- all tables currently present
	insert into #CurrentTables_I
	select DatabaseName, SchemaName, ObjectName TableName, PartitionFunction 
	from hub.ObjectInfo OI
	WHERE OI.ObjectType='U'
	and ( OI.SchemaName<>'XXX'
		and ( @SchemaName='TMP' OR OI.SchemaName<>'TMP' ) 
		)
	and ObjectName in ( select TableName from hub.Suppliers )
	and SchemaName = isnull (@SchemaName,SchemaName)
	and ObjectName = isnull (@TableName,ObjectName) 

	--expected clustered index for unpartitioned tables
	insert into #Expected_I 
	select DatabaseName, SchemaName, TableName ,'CLUSTERED' IndexType, 'DELIVERY_SQN' IndexColumns,null PartitionFunction
	from #CurrentTables_I
	where PartitionFunction is null
	--expected clustered index for partitioned tables
	insert into #Expected_I 
	select DatabaseName, SchemaName, TableName ,'CLUSTERED' IndexType,'DELIVERY_SQN, ACT_DTS', PartitionFunction
	from #CurrentTables_I
	where not PartitionFunction is null

	-- expected non clustered index for tables
	insert into #Expected_I 
	select DatabaseName, SchemaName, TableName ,'NONCLUSTERED' IndexType, '*' , PartitionFunction
	from #CurrentTables_I

	-- set expected index columns for DIH tables
	update #Expected_I 
	set IndexColumns=replace(IndexColumns,'*','DELIVERY_SQN, DIH__PUBLICATION_INSTANCE_DATE, ACT_DTS, LOAD_DTS')
	where TableName in (
			SELECT distinct [ObjectName]
			  FROM [hub].[ColumnInfo] CI
			  where ObjectType ='U'
			  and ColumnName='DIH__PUBLICATION_INSTANCE_DATE'
			  and #Expected_I.SchemaName=CI.SchemaName)
		and IndexColumns='*'

	-- set expected index columns for flatfiles
	update #Expected_I
	set IndexColumns=replace(IndexColumns,'*','DELIVERY_SQN, STI_LOAD_DTS, ACT_DTS, LOAD_DTS')
	where TableName in (
			SELECT distinct [ObjectName]
			  FROM [hub].[ColumnInfo] CI
			  where ObjectType ='U'
			  and ColumnName='STI_LOAD_DTS'
			  and #Expected_I.SchemaName=CI.SchemaName)
		and IndexColumns='*'

	-- set expected index columns for others
	update #Expected_I
	set IndexColumns='DELIVERY_SQN, LOAD_DTS, ACT_DTS'
	where IndexColumns='*'
		
	--the indexes that are present
	insert into #CurrentIndexes_I
	select DatabaseName,SchemaName,ObjectName,IndexType,  IndexColumns,PartitionFunction, IndexName 
	from hub.IndexInfo II 
	where SchemaName = isnull (@SchemaName,SchemaName)
	and ObjectName = isnull (@TableName,ObjectName) 
	and ObjectName in (select TableName from hub.Suppliers)

	--if the existing non-clustered index has a different partition function, we pretend that the existing non-clustered index is wrong.
	update NI
	SET IndexColumns ='error(fake)'
	from #CurrentIndexes_I NI
	inner join #CurrentIndexes_I CI
	on NI.SchemaName=CI.SchemaName
	and NI.TableName=CI.TableName
	and NI.PartitionFunction is null and  not CI.PartitionFunction is null
	where NI.IndexType='NONCLUSTERED'
	
	-- determine what indexes need to be done
			select 
			ISNULL(V.DatabaseName, A.DatabaseName) DatabaseName,
			ISNULL(V.SchemaName, A.SchemaName) SchemaName,
			ISNULL(V.TableName, A.TableName) TableName,
			ISNULL(V.PartitionFunction, A.PartitionFunction) PartitionFunction,
			V.IndexType,
			V.IndexColumns,
			A.IndexName
			into #todo
		from #Expected_I V
			full join #CurrentIndexes_I A 
				on V.DatabaseName=A.DatabaseName
				and V.SchemaName=A.SchemaName
				and V.TableName=A.TableName
				and V.IndexType=A.IndexType
				and isnull(V.PartitionFunction,'')=isnull(A.PartitionFunction,'')
				and isnull(V.IndexColumns,'')=isnull(A.IndexColumns ,'')
		where isnull(V.DatabaseName,'')<>isnull(A.DatabaseName ,'') --missende of onverwachte indexen

		
	-- creating/altering the indexes
	DECLARE EachIndex_I CURSOR
	READ_ONLY
	FOR 
				select 
			isnull('
			USE '+DatabaseName+';
			CREATE '+IndexType+' INDEX ['+TableName+ case when IndexType ='CLUSTERED' then '_CI_' else '_NI_' end +@nu+'] ON ['+SchemaName+'].['+TableName+']
			( '+case when IndexType ='CLUSTERED' then 'DELIVERY_SQN, ACT_DTS' else IndexColumns end +')WITH ( DATA_COMPRESSION=PAGE,PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PS_Daily] (ACT_DTS)'
			,'
			USE '+DatabaseName+';
			DROP INDEX ['+IndexName+'] ON ['+SchemaName+'].['+TableName+'] WITH ( ONLINE = OFF )')			
		from #todo
		where SchemaName <>'XXX'
		order by TableName, IndexType asc, IndexName asc

	OPEN EachIndex_I
	FETCH NEXT FROM EachIndex_I INTO @SQL
	WHILE (@@fetch_status <> -1)
	BEGIN
		IF (@@fetch_status <> -2)
		BEGIN
			--print @SQL
			exec (@SQL)
		END
		FETCH NEXT FROM EachIndex_I INTO @SQL
	END
	CLOSE EachIndex_I
	DEALLOCATE EachIndex_I

	----adjust compression
	DECLARE EachTableCompression_I CURSOR
	READ_ONLY
	FOR 
		select
		case when IndexType='CLUSTERED' then
				'USE ['+DatabaseName+'];SET QUOTED_IDENTIFIER ON;ALTER TABLE ['+SchemaName+'].['+ ObjectName + '] REBUILD PARTITION = ALL WITH (DATA_COMPRESSION = PAGE)'
			else
				'USE ['+DatabaseName+'];SET QUOTED_IDENTIFIER ON;ALTER INDEX [' + IndexName + '] ON ['+SchemaName+'].[' + ObjectName + '] REBUILD PARTITION = ALL WITH (DATA_COMPRESSION = PAGE)'
			end SQLCode

		from  [hub].IndexInfo I
		where 1=1
		and I.SchemaName = isnull(@SchemaName,SchemaName)
		and ObjectName=isnull(@TableName,ObjectName)
		and IndexType <> 'HEAP'
		and HasNoCompression+HasRowCompression >0
		group by 
		DatabaseName, SchemaName, ObjectName, IndexName ,IndexType

	OPEN EachTableCompression_I
	FETCH NEXT FROM EachTableCompression_I INTO @SQL
	WHILE (@@fetch_status <> -1)
	BEGIN
		IF (@@fetch_status <> -2)
		BEGIN
			exec (@SQL)
		END
		FETCH NEXT FROM EachTableCompression_I INTO @SQL
	END
	CLOSE EachTableCompression_I
	DEALLOCATE EachTableCompression_I
END TRY
BEGIN CATCH
	 DECLARE @ErrorMessage varchar(MAX) = ERROR_MESSAGE(),
				@ErrorSeverity int = ERROR_SEVERITY(),
				@ErrorState smallint = ERROR_STATE()
 	INSERT INTO [hub].ErrorLog([SPID],[DatetimeStamp],[Username],[Procedure],Message, Severity, State)
	VALUES(@@SPID,getdate(),ORIGINAL_LOGIN (),OBJECT_NAME(@@PROCID),@ErrorMessage, @ErrorSeverity,@ErrorState);

	exec hub.stp_CloseCursor 'EachIndex_I'
	exec hub.stp_CloseCursor 'EachTableCompression_I'
		
	RAISERROR ( @ErrorMessage, @ErrorSeverity, @ErrorState)  ;
	
END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[stp_NewSchema]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC [dbo].[stp_NewSchema](@SchemaName VARCHAR(10),@Location VARCHAR(1)) AS
BEGIN

BEGIN TRY
	/*   This proc creates a new Schema If the schema doesnt exist.   */

	SET NOCOUNT ON
	INSERT INTO [hub].[ActivityLog]([SPID],[DatetimeStamp],[Username],[Procedure],[Parameters])
	VALUES(@@SPID,getdate(),ORIGINAL_LOGIN (),OBJECT_NAME(@@PROCID),ISNULL(@SchemaName,'')+'#'+ISNULL(@Location,''))


	--declarations
	DECLARE @Environment  CHAR(1)
	DECLARE @StagingInDB  VARCHAR(100)
	DECLARE @StagingOutDB VARCHAR(100)
	DECLARE @SQL		  VARCHAR(8000)
	DECLARE @SQLdb		  VARCHAR(8000)

	--constants/parameters
	SELECT @SchemaName = hub.Fn_ValidInput('schema',@SchemaName)
	SELECT @Location = hub.Fn_ValidInput('location',@Location)
	SELECT @StagingOutDB = hub.Fn_ValidInput('database',ParamValue) FROM hub.Parameters WHERE ParamName = CASE WHEN @Location='I' THEN'StagingOutDB' ELSE 'StagingInDB' END
	SELECT @StagingInDB = hub.Fn_ValidInput('database',ParamValue) FROM hub.Parameters WHERE ParamName = CASE WHEN @Location='E' THEN'StagingOutDB' ELSE 'StagingInDB' END
	SELECT @Environment = hub.Fn_ValidInput('environment',ParamValue) FROM hub.Parameters WHERE ParamName ='Environment'

	--checks
	IF NOT EXISTS (SELECT * FROM hub.MyNamespaces WHERE SchemaName ='*')
	BEGIN
		RAISERROR('you do not have access to this procedure.(stp_NewSchema)',16,3)
		RETURN
	END
	IF @SchemaName IS NULL
	BEGIN
		RAISERROR('The parameter @SchemaName needs to be filled.(stp_NewSchema)',16,3)
		RETURN
	END	
	IF @Location IS NULL
	BEGIN
		RAISERROR('The parameter @Location needs to be filled.(stp_NewSchema)',16,3)
		RETURN
	END	
	
	IF NOT @Location IN ('I','E')
	BEGIN
		RAISERROR('Location must be ''I'' or ''E''.(stp_NewSchema)',16,3)
		RETURN
	END
	
	IF (select Location FROM hub.Namespaces WHERE @SchemaName=SchemaName )<> @Location
	BEGIN
		RAISERROR('schema cannot change location.(stp_NewSchema)',16,3)
		RETURN
	END

	--creating the schema if it does not already exist in a database.

	SET @SQL='
	IF (SELECT TOP 1 1 FROM sys.schemas WHERE name ='''+@SchemaName+''') IS NULL
	EXEC(''CREATE SCHEMA '+@SchemaName+''');
	EXEC(''ALTER AUTHORIZATION ON SCHEMA::['+@SchemaName+'] TO [dbo]'')'
	SET @SQLdb ='use '+@StagingInDB+';'+@SQL
	EXEC(@SQLdb)
	SET @SQLdb ='use '+@StagingOutDB+';'+@SQL
	EXEC(@SQLdb)

	--adding the configuration for the schema if it does not already exist.
	INSERT INTO hub.Namespaces(
		SchemaName ,
		Location)
	SELECT
		@SchemaName,
		@Location
	WHERE (SELECT TOP 1 1 FROM hub.Namespaces WHERE @SchemaName=SchemaName) IS NULL

	--reset permissions 
	exec [stp_Permissions]

	-- initiate aftercare
	UPDATE hub.Parameters set ParamValue='YES' WHERE ParamName='AfterCareNeeded'

END TRY
BEGIN CATCH
	 DECLARE @ErrorMessage VARCHAR(MAX) = ERROR_MESSAGE(),
				@ErrorSeverity INT = ERROR_SEVERITY(),
				@ErrorState SMALLINT = ERROR_STATE()
 	INSERT INTO [hub].ErrorLog([SPID],[DatetimeStamp],[Username],[Procedure],Message, Severity, State)
	VALUES(@@SPID,getdate(),ORIGINAL_LOGIN (),OBJECT_NAME(@@PROCID),@ErrorMessage, @ErrorSeverity,@ErrorState);
	
	RAISERROR ( @ErrorMessage, @ErrorSeverity, @ErrorState)  ;
	
END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[stp_NewSubsciption]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[stp_NewSubsciption] (@TableName varchar(100),@SchemaName varchar(10),@FeedbackIsMandatory bit) 
AS
BEGIN
/*
	This proc adds the single fact that someone has a subscription on a table. it does nothing about the definition of the resulting view.
*/
SET NOCOUNT ON
--BEGIN TRY
	INSERT INTO [hub].[ActivityLog]([SPID],[DatetimeStamp],[Username],[Procedure],[Parameters])
	VALUES(@@SPID,getdate(),ORIGINAL_LOGIN (),OBJECT_NAME(@@PROCID),ISNULL(@TableName,'')+'#'+ISNULL(@SchemaName,'')+'#'+ISNULL(convert(varchar,@FeedbackIsMandatory),''))


	--declarations
	DECLARE @Environment char(1)
	DECLARE @Location varchar(1)
	Declare @StagingInDB varchar(100)
	Declare @StagingOutDB varchar(100)
	DECLARE @SQL varchar(8000)
	DECLARE @Suppliertable varchar(1000)
	DECLARE @subscribertable varchar(1000)
	DECLARE @SourceTable varchar(1000)
	DECLARE @viewdefinition varchar(8000)
	DECLARE @SupplierSchemaName varchar(10)

	CREATE TABLE #objects(
		DatabaseName varchar(100),
		ObjectType varchar(10),
		SchemaName varchar(10),
		ObjectName varchar(100),
		ViewDefinition varchar(8000))

	--constants/parameters
	-- Please note we DO NOT validate the FeedbackIsMandatory parameter value
	SELECT @SchemaName= hub.Fn_ValidInput('schema',@SchemaName)
	SELECT @TableName= hub.Fn_Alias (@SchemaName,@TableName)
	SELECT @Location =hub.Fn_ValidInput('location',Location) FROM hub.Namespaces where SchemaName= @SchemaName 
	SELECT @StagingOutDB = hub.Fn_ValidInput('database',ParamValue) FROM hub.Parameters where ParamName = CASE WHEN @Location='I' then'StagingOutDB' ELSE 'StagingInDB' END
	SELECT @StagingInDB = hub.Fn_ValidInput('database',ParamValue) FROM hub.Parameters where ParamName = CASE WHEN @Location='E' then'StagingOutDB' ELSE 'StagingInDB' END
	SELECT @Environment = hub.Fn_ValidInput('environment',ParamValue) FROM hub.Parameters where ParamName ='Environment'
	SELECT @SupplierSchemaName = SchemaName from hub.Report where TableName=@TableName and [Type]='Supplier' and InDatabase=1

	--checks
  	IF NOT EXISTS (SELECT * FROM hub.MyNamespaces 
	where SchemaName in (@SchemaName,'*'))
	BEGIN
		raiserror('you do not have access to this schema.(stp_NewSubsciption)',16,3)
		RETURN
	END	
	IF @SchemaName is null
	BEGIN
		raiserror('The parameter @SchemaName needs to be filled.(stp_NewSubsciption)',16,3)
		RETURN
	END	
	IF @TableName is null
	BEGIN
		raiserror('The parameter @TableName needs to be filled.(stp_NewSubsciption)',16,3)
		RETURN
	END	
	IF ( @FeedbackIsMandatory NOT IN (0, 1) OR @FeedbackIsMandatory IS NULL )
	BEGIN
		raiserror('The parameter @FeedbackIsMandatory must be either 0 or 1.(stp_NewSubsciption)',16,3)
		RETURN
	END	
	if (select top 1 1 from hub.Namespaces where SchemaName= @SchemaName) is null
	BEGIN
		RAISERROR('The namespace needs to be added before a subscription can be made.(stp_NewSubsciption)',16,1)
		RETURN
	END
	if @SupplierSchemaName is null 
	BEGIN
		RAISERROR('The information from the Supplier needs to be added before a subscription can be made.(stp_NewSubsciption)',16,1)
		RETURN
	END
	if @SupplierSchemaName=@SchemaName
	BEGIN
		RAISERROR('The subscriber can not be the same as the supplier.(stp_NewSubsciption)',16,1)
		RETURN
	END
	IF (SELECT COUNT(*) from hub.Subscribers where @SchemaName =SchemaNameSubscriber and TableName=@TableName)=0 and NOT EXISTS (SELECT * FROM hub.MyNamespaces where SchemaName='*')
	BEGIN
		raiserror('Table is not subscribed to by this schema.(stp_NewSubsciption)',16,3)
		RETURN
	END	
	IF EXISTS (SELECT * FROM hub.Subscribers where TableName= @TableName and SchemaNameSubscriber= @SchemaName) and NOT EXISTS (SELECT * FROM hub.MyNamespaces where SchemaName='*')
	BEGIN
		-- subscription already exists, no action required
		RETURN
	END

	--check if this a deployment
	exec stp_DeployCheck  'Subscriber',@SchemaName, @TableName

	--adding the configuration for the view if it does not already exist.
	IF (
	SELECT	1
	FROM	hub.Subscribers 
	WHERE	TableName=@TableName 
			and SchemaNameSubscriber=@SchemaName)is null
	BEGIN
		INSERT INTO hub.Subscribers(TableName, SchemaNameSubscriber, FeedbackIsMandatory, LastDelivery)
		SELECT @TableName, @SchemaName,@FeedbackIsMandatory,0
	END
	ELSE
	BEGIN
		UPDATE hub.Subscribers
		SET FeedbackIsMandatory=@FeedbackIsMandatory
		WHERE TableName=@TableName and SchemaNameSubscriber= @SchemaName
	END

	--refresh the subscriber view ( creates the actual view)
	exec stp_RefreshCustomViews  @SchemaName,@TableName

	--check permissions 
	exec stp_Permissions

	-- ALIAS Exception ( add alias if one should be there)
	exec stp_ExceptionAlias @SchemaName,@TableName

	-- initiate aftercare
	UPDATE hub.Parameters set ParamValue='YES' WHERE ParamName='AfterCareNeeded'--!!!!!!!!!!!!!!!!!!!!!is this still needed?
--END TRY
--BEGIN CATCH
--	 DECLARE @ErrorMessage varchar(MAX) = ERROR_MESSAGE(),
--				@ErrorSeverity int = ERROR_SEVERITY(),
--				@ErrorState smallint = ERROR_STATE()
-- 	INSERT INTO [hub].ErrorLog([SPID],[DatetimeStamp],[Username],[Procedure],Message, Severity, State)
--	VALUES(@@SPID,getdate(),ORIGINAL_LOGIN (),OBJECT_NAME(@@PROCID),@ErrorMessage, @ErrorSeverity,@ErrorState);
	
--	RAISERROR ( @ErrorMessage, @ErrorSeverity, @ErrorState)  ;
	
--END CATCH
END


GO
/****** Object:  StoredProcedure [dbo].[stp_NewSupply]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[stp_NewSupply](@TableName varchar(100),@SchemaName varchar(10),@SuccessfulDeliveryCount int , @DateColumn varchar(30), @DayCount int) AS
BEGIN
	/*
	This proc defines a new supply. If the interface doesn't exists, the configuration will be added. 
	Also, a default DLV configuration will be added if it doesn't exist. Any values that cannot be determined will get a default value that has no functional meaning ('X','NTB').
	this DLV configuration is meant as a rough draft of the configuration and needs checking/correcting/completing before using it

	a new table defintion is created as part of a deployment in the dbo schema, and this version will replace the current version after the data has been copied. 
	In that case, the current version will be moved to the XXX schema as a fallback

	if the table already has subscriber views, these will be redefined to reflect any changes made to the table they refer to.
	*/
	SET NOCOUNT ON
	INSERT INTO [hub].[ActivityLog]([SPID],[DatetimeStamp],[Username],[Procedure],[Parameters])
	VALUES(@@SPID,getdate(),ORIGINAL_LOGIN (),OBJECT_NAME(@@PROCID),ISNULL(@TableName,'')+'#'+ISNULL(@SchemaName,'')+'#'+ISNULL(convert(varchar,@SuccessfulDeliveryCount),'')+'#'+ISNULL(@DateColumn,'')+'#'+ISNULL(convert(varchar,@DayCount),''))

	--declarations
	DECLARE @Location varchar(1)
	DECLARE @StagingInDB varchar(100)
	DECLARE @StagingOutDB varchar(100)
	DECLARE @SQL			varchar(8000)
	DECLARE @CurrentSchema varchar(10)
	DECLARE @SchemaNameSubscriber varchar(10) 
	DECLARE @SQL2 varchar(8000)
	DECLARE @DELIVERY_SQN varchar(40)
	CREATE TABLE #DELIVERY_SQN (
		DELIVERY_SQN decimal(22))	

	--constants/parameters
	SELECT @SchemaName= hub.Fn_ValidInput('schema',@SchemaName)
	SELECT @TableName= hub.Fn_Alias (@SchemaName,@TableName)
	SET @SuccessfulDeliveryCount = ISNULL(@SuccessfulDeliveryCount,4)
	SET @DateColumn = ISNULL(@DateColumn,'DIH__PUBLICATION_INSTANCE_DATE')
	SET @DayCount = ISNULL(@DayCount,31)
	SELECT @SuccessfulDeliveryCount = hub.Fn_ValidInput('count',@SuccessfulDeliveryCount)
	SELECT @DateColumn = hub.Fn_ValidInput('Column',@DateColumn)
	SELECT @DayCount = hub.Fn_ValidInput('count',@DayCount)
	SELECT @Location =hub.Fn_ValidInput('location',Location) FROM hub.Namespaces where SchemaName= @SchemaName 
	SELECT @StagingOutDB = ParamValue FROM hub.Parameters where ParamName = CASE WHEN @Location='I' then'StagingOutDB' ELSE 'StagingInDB' END
	SELECT @StagingInDB = ParamValue FROM hub.Parameters where ParamName = CASE WHEN @Location='E' then'StagingOutDB' ELSE 'StagingInDB' END
	SELECT @CurrentSchema =SchemaNameSupplier FROM	hub.Suppliers WHERE	TableName=@TableName

	--checks
	IF NOT EXISTS (SELECT * FROM hub.MyNamespaces where SchemaName ='*')
	BEGIN
		raiserror('you do not have access to this procedure.(stp_NewSupply)',16,3)
		RETURN
	END
	if @SchemaName is null 
	BEGIN
		RAISERROR('The parameter @SchemaName needs to be filled.(stp_NewSupply)',16,1)
		RETURN
	END
	if (select top 1 1 from hub.Namespaces where SchemaName= @SchemaName) is null
	BEGIN
		RAISERROR('The namespace needs to be added before a suppply can be made.(stp_NewSupply)',16,1)
		RETURN
	END
	if @TableName is null
	BEGIN
		RAISERROR('The parameter @TableName needs to be filled.(stp_NewSupply)',16,1)
		RETURN
	END
	If not @CurrentSchema is null and @CurrentSchema <> @SchemaName
	BEGIN
		raiserror('Current SupplierSchema for the interface differs from submitted one.(stp_NewSupply)',16,2)
		RETURN
	END
	
	--check if this is a deployment
	exec stp_DeployCheck  'Supplier',@SchemaName, @TableName

	--adding the configuration for the table if it does not already exist/update if different from existing
	MERGE INTO hub.Suppliers AS TARGET 
	USING (	SELECT 
				@TableName AS TableName,
				@SchemaName AS SchemaNameSupplier,  
				@SuccessfulDeliveryCount AS SuccessfulDeliveryCount, 
				@DateColumn AS DateColum, 
				@DayCount AS DayCount, 
				1 AS CleanUpActive    ) AS SOURCE
		ON ( SOURCE.TableName = TARGET.TableName
			AND SOURCE.SchemaNameSupplier = TARGET.SchemaNameSupplier ) 
	WHEN NOT MATCHED BY TARGET
		THEN INSERT (TableName, SchemaNameSupplier, SuccessfulDeliveryCount, DateColum, DayCount, CleanUpActive)
				VALUES (SOURCE.TableName, 
						SOURCE.SchemaNameSupplier, 
						SOURCE.SuccessfulDeliveryCount, 
						SOURCE.DateColum, 
						SOURCE.DayCount, 
						SOURCE.CleanUpActive)
	WHEN MATCHED AND ( SOURCE.SuccessfulDeliveryCount <> TARGET.SuccessfulDeliveryCount
						OR SOURCE.DateColum <> TARGET.DateColum
						OR SOURCE.DayCount <> TARGET.DayCount
						OR SOURCE.CleanUpActive <> TARGET.CleanUpActive )
		THEN UPDATE
			SET TARGET.SuccessfulDeliveryCount = SOURCE.SuccessfulDeliveryCount, 
				TARGET.DateColum = SOURCE.DateColum, 
				TARGET.DayCount = SOURCE.DayCount, 
				TARGET.CleanUpActive = SOURCE.CleanUpActive;


	-- adding the default DLV configuration for the source entity
	insert into [log].[CONF_MD_SOURCE_ENTITY](
		SRC_ENT_NM, 
		SRC_DELIVR_TP_CODE,
		SRC_DELIVR_INTRVL_CODE)
		select
		L.TableName SRC_ENT_NM, 
		case when  TableName like '%[_]A[DWMQYA][SDI]' or TableName like '%[_][DWMQYA][SDI]' then
			case when right(TableName,1) in ('S','D') then  
				right(TableName,1) 
			else 
				'X'  
			end
			+case when SchemaNameSupplier='dih' then 
				'D' 
			when SchemaNameSupplier like 'crgff%' then 
				'F' 
			else 
				'X' 
			end
		else 
			'XX' 
		end SRC_DELIVR_TP_CODE,
		case when  TableName like '%[_]A[DWMQYA][SDI]' or TableName like '%[_][DWMQYA][SDI]' then 
			left(right(TableName,2),1) 
		else 
			'X' 
		end SRC_DELIVR_INTRVL_CODE	  
	from (select @TableName TableName, @SchemaName SchemaNameSupplier ) L
	left join log.CONF_MD_SOURCE_ENTITY S
	on S.SRC_ENT_NM=L.TableName
	left join log.CONF_MD_TARGET_ENTITY T
	on T.TRG_ENT_NM=L.TableName
	WHERE S.SRC_ID is null and T.TRG_ID is null

	-- adding the default DLV configuration for the target entity
	insert into [log].[CONF_MD_TARGET_ENTITY](
		TRG_ENT_NM, 
		SRC_ID, 
		MAPPING_NM) 
	select
		S.SRC_ENT_NM TRG_NM, 
		S.SRC_ID,
		'NTB' MAPPING_NM
	from (select @TableName TableName, @SchemaName SchemaNameSupplier ) L
	inner join log.CONF_MD_SOURCE_ENTITY S
	on S.SRC_ENT_NM=L.TableName
	left join log.[CONF_MD_TARGET_ENTITY] T
	on T.SRC_ID=S.SRC_ID or T.TRG_ENT_NM=L.TableName
	where T.TRG_ID is null

	-- adding the default DLV configuration for the rules on this table
	insert into [log].[CONF_DLV_STR_MAP_RULE] (
		TRG_ID, 
		DLV_RULE_ID, 
		IND_PERFORM_RULE_YN)
	select  
		E.TRG_ID,
		R.DLV_RULE_ID,
		'Y'
	from  (select @TableName TableName, @SchemaName SchemaNameSupplier) L
		inner join [log].[CONF_MD_TARGET_ENTITY] E
			on E.TRG_ENT_NM=L.TableName
		cross join [log].[CONF_DLV_RULE] R				
		left join  [log].[CONF_DLV_STR_MAP_RULE] T
			on T.TRG_ID=E.TRG_ID
			and T.DLV_RULE_ID = R.DLV_RULE_ID
	where T.IND_PERFORM_RULE_YN is null 
	and ( DLV_RULE_NO='PC8.4' -- always ON
		or (L.SchemaNameSupplier='dih' and DLV_RULE_NO in('PC8.2','PC8.3')) -- always ON for DIH
	)


	--adding/replacing the table in the hub
		exec dbo.stp_NewTable @StagingOutDB,@TableName,@SchemaName
	
	--refresh any existing subscriber views
	DECLARE EachSubscription CURSOR
	READ_ONLY
	FOR SELECT SchemaNameSubscriber
		from hub.Subscribers 
		where TableName=@TableName
	OPEN EachSubscription
	FETCH NEXT FROM EachSubscription INTO @SchemaNameSubscriber
	WHILE (@@fetch_status <> -1)
	BEGIN
		IF (@@fetch_status <> -2)
		BEGIN
			EXEC stp_RefreshCustomViews @SchemaNameSubscriber,@TableName
		END
		FETCH NEXT FROM EachSubscription INTO @SchemaNameSubscriber
	END
	CLOSE EachSubscription
	DEALLOCATE EachSubscription

	-- re-create any aliases for this table 
	exec stp_ExceptionAlias @SchemaName,@TableName

	-- initiate aftercare
	UPDATE hub.Parameters set ParamValue='YES' WHERE ParamName='AfterCareNeeded'--!!!!!!!!!!!!!!!!!!!!!do we still need this?
END
GO
/****** Object:  StoredProcedure [dbo].[stp_NewTable]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[stp_NewTable] (@StagingDB varchar(100), @TableName varchar(100), @SchemaName varchar(10)) AS
BEGIN
-- procedure code:  NT
BEGIN TRY
	/*
	This proc checks if there is a dbo tabel of the supplied name in the stagingOut database of the supplier. If so, it will transfer that table to the correct schema.
	If a table of that name already exists in that schema, it will be transfereed to the XXX schema.
	the XXX schema is the fall-back and last schema a table will have before deletion.
	There is an exception "EXTRA" that impact the definition of a table. this exception is implemented here.
	*/
	SET NOCOUNT ON
	INSERT INTO [hub].[ActivityLog]([SPID],[DatetimeStamp],[Username],[Procedure],[Parameters])
	VALUES(@@SPID,getdate(),ORIGINAL_LOGIN (),OBJECT_NAME(@@PROCID),ISNULL(@StagingDB,'')+'#'+ISNULL(@TableName,'')+'#'+ISNULL(@SchemaName,''))

	--declarations
	DECLARE @SQL varchar(8000)
	DECLARE @SQL2 varchar(8000)
	declare @object_id int
	DECLARE @DELIVERY_SQN varchar(40)
	DECLARE @add int
	DECLARE @alter int
	DECLARE @drop int
	DECLARE @DatabaseName varchar(100)
	DECLARE @ObjectName varchar(100)
	DECLARE @ColumnExtra varchar(100)
	DECLARE @DatatypeExtra varchar(100)
	DECLARE @SchemaExtra varchar(100)
	DECLARE @ObjectSchema varchar(100)
	CREATE TABLE #KolomInfo_NT(
		SchemaName varchar(10),
		TableName varchar(100),
		ColumnName varchar(100),
		DataType varchar(100))
	CREATE TABLE #DELIVERY_SQN (
		DELIVERY_SQN decimal(22))	
	CREATE TABLE #New (
		naam varchar(1000))

	--constants/parameters
	SET @StagingDB = hub.Fn_ValidInput('database',@StagingDB)
	SET @SchemaName= hub.Fn_ValidInput('schema',@SchemaName)
	SELECT @TableName= hub.Fn_Alias (@SchemaName,@TableName)

	--checks
	IF NOT EXISTS (SELECT * FROM hub.MyNamespaces where SchemaName ='*')
	BEGIN
		raiserror('you do not have access to this procedure.(stp_NewTable)',16,3)
		RETURN
	END
	if @SchemaName is null
	BEGIN
		RAISERROR('The parameter @SchemaName needs to be filled.(stp_NewTable)',16,1)
		RETURN
	END
	if (select top 1 1 from hub.Namespaces where SchemaName= @SchemaName) is null
	BEGIN
		RAISERROR('The namespace needs to be added before a suppply can be made.(stp_NewTable)',16,1)
		RETURN
	END
	if @TableName is null
	BEGIN
		RAISERROR('The parameter @TableName needs to be filled.(stp_NewTable)',16,1)
		RETURN
	END
	if (select count(*) from hub.Suppliers where TableName=@TableName )=0
		BEGIN
		RAISERROR('The information from the Supplier needs to be added before a table can be made.(stp_NewTable)',16,1)
		RETURN
	END
	if (select count(*) from hub.Suppliers where TableName=@TableName and @SchemaName=SchemaNameSupplier)=0
		BEGIN
		RAISERROR('Current SupplierSchema for the interface differs from submitted one.(stp_NewTable)',16,1)
		RETURN
	END
	if @StagingDB is null
	BEGIN
		RAISERROR('The parameter @StagingDB needs to be filled.(stp_NewTable)',16,1)
		RETURN
	END	
		if (select count(*) from hub.Parameters where ParamValue= @StagingDB and ParamName in ('StagingInDB','StagingOutDB') )=0
	BEGIN
		RAISERROR('The parameter @StagingDB points to a database that is not a part of this hub.(stp_NewTable)',16,1)
		RETURN
	END	
	if (select count(*) from hub.ObjectInfo
		where ObjectName = @TableName
		and SchemaName in ('dbo',@SchemaName)
		and ObjectType ='U'
		and DatabaseName=@StagingDB)=0
	BEGIN
		RETURN
	END

	-- exception "EXTRA": adding extra columns to the table 
	DECLARE EachExtra_NT CURSOR
	READ_ONLY
	FOR	select  E.ColumnExtra, E.DatatypeExtra, T.SchemaName
		from hub.Exceptions E		
			inner join hub.ObjectInfo T
				on T.DatabaseName=@StagingDB
				and T.ObjectName =@TableName
				and T.ObjectType='U'
			left join hub.ColumnInfo C
				on C.DatabaseName=@StagingDB
				and C.ObjectName =@TableName
				and C.SchemaName=T.SchemaName
				and C.ColumnName=E.ColumnExtra
				and C.ObjectType='U'
		where 
			E.TableName=@TableName
			and E.ExceptionType='EXTRA'
			and C.DatabaseName is null
		order by 
			ColumnExtra
	OPEN EachExtra_NT
	FETCH NEXT FROM EachExtra_NT INTO @ColumnExtra,@DatatypeExtra, @SchemaExtra
	WHILE (@@fetch_status <> -1)
	BEGIN
		IF (@@fetch_status <> -2)
		BEGIN
			SET @SQL='USE '+@StagingDB+' ;ALTER TABLE '+@SchemaExtra+'.'+@TableName+' ADD '+@ColumnExtra+' '+@DatatypeExtra+' NULL'
			exec (@SQL)
		END
		FETCH NEXT FROM EachExtra_NT INTO  @ColumnExtra,@DatatypeExtra, @SchemaExtra
	END
	CLOSE EachExtra_NT
	DEALLOCATE EachExtra_NT

	-- exception "NOTNULL": zetten contraints voor dbo  tabel
	exec hub.stp_Constraints  @TableName, 'dbo',@SchemaName

	-- setting indexes and compression
	exec stp_Indexes null,@TableName

	-- comparing the old and new table
	insert into #KolomInfo_NT (SchemaName,TableName,ColumnName,DataType)
	select SchemaName, ObjectName, ColumnName, DatatypeTotal
	 from hub.ColumnInfo
		where [ObjectName] =@TableName
		and SchemaName in ('dbo',@SchemaName)
		and DatabaseName=@StagingDB
		and ObjectType='U'

	select 
		isnull(O.ColumnName,N.ColumnName) ColumnName,
		N.DataType ,
		case 
			when O.ColumnName is null then 'ADD'
			when N.ColumnName is null then 'DROP'
			when isnull(O.DataType,'')<> isnull(N.DataType,'') then 'ALTER'
		else 'OK' 
		end STATUS
	into #diff
		from 
			(select ColumnName, DataType
			from #KolomInfo_NT
			where SchemaName = @SchemaName
			and TableName =@TableName) O
	full join (
			select ColumnName, DataType
			from #KolomInfo_NT
			where SchemaName ='dbo'
			and TableName =@TableName) N
		on O.ColumnName = N.ColumnName

	select @add = count(*) from #diff where STATUS ='ADD'
	select @alter = count(*) from #diff where STATUS ='ALTER'
	select @drop = count(*) from #diff where STATUS ='DROP'
	set @SQL =''


	-- no existing table found
	if (select count(*) from #KolomInfo_NT where SchemaName=@SchemaName)=0
	BEGIN
		set @SQL='use '+@StagingDB+';
		exec(''ALTER SCHEMA '+@SchemaName+' TRANSFER dbo.'+@TableName+''')'
		exec(@SQL)
		set @add =-1
	END
	
	-- no new table found
	if (select count(*) from #KolomInfo_NT where SchemaName='dbo')=0
	BEGIN
		set @add =-1
	END
		
	-- old and new table are identical 
	if @add=0 and @alter=0 and @drop =0 
	begin 
		SET @SQL= 'use '+@StagingDB+';
		DROP TABLE dbo.'+@TableName
		exec(@SQL)
		set @add =-1
	end

	-- if old and new table differ, transfer the data when columnnames match (per delivery)
	if @add>=0
	begin
		SELECT @SQL ='use '+@StagingDB+';
		INSERT INTO #DELIVERY_SQN SELECT DISTINCT DELIVERY_SQN FROM '+@SchemaName+'.'+@TableName
		exec( @SQL)

		select @SQL2 = replace(replace(replace(STUFF(( SELECT ColumnName X FROM #diff  T  where  STATUS in ('OK','ALTER') FOR XML PATH(N'')),4,0,N''),'</X><X>',', '),'<X>',''),'</X>','')
		SELECT @SQL2 ='use '+@StagingDB+';
		INSERT INTO dbo.'+@TableName+'('+@SQL2+') SELECT '+@SQL2+' FROM '+@SchemaName+'.'+@TableName +' WHERE DELIVERY_SQN='

		DECLARE EachDelivery_NT CURSOR
		KEYSET
		FOR select DELIVERY_SQN from #DELIVERY_SQN
		OPEN EachDelivery_NT
		FETCH NEXT FROM EachDelivery_NT INTO @DELIVERY_SQN
		WHILE (@@fetch_status <> -1)
		BEGIN
			IF (@@fetch_status <> -2)
			BEGIN
				set @SQL= @SQL2 + @DELIVERY_SQN
				exec(@SQL)
			END
			FETCH NEXT FROM EachDelivery_NT INTO @DELIVERY_SQN
		END
		CLOSE EachDelivery_NT
		DEALLOCATE EachDelivery_NT

		set @SQL='use '+@StagingDB+';
			if exists (select 1 from  sysobjects where  id = object_id(''XXX.'+@TableName+''') and   type = ''U'')
				exec(''drop table XXX.'+@TableName+''')'
		exec(@SQL)
		set @SQL='use '+@StagingDB+';
			exec(''ALTER SCHEMA XXX TRANSFER '+@SchemaName+'.'+@TableName+''')
			exec(''ALTER SCHEMA '+@SchemaName+' TRANSFER dbo.'+@TableName+''')'
		exec(@SQL)
	end

	--reset permissions 
	exec stp_Permissions

	-- statistics
	exec('use ['+@StagingDB+']; exec stp_UpdateStatistic '''+@SchemaName+''','''+@TableName+'''')
END TRY
BEGIN CATCH
	 DECLARE @ErrorMessage varchar(MAX) = ERROR_MESSAGE(),
				@ErrorSeverity int = ERROR_SEVERITY(),
				@ErrorState smallint = ERROR_STATE()
 	INSERT INTO [hub].ErrorLog([SPID],[DatetimeStamp],[Username],[Procedure],Message, Severity, State)
	VALUES(@@SPID,getdate(),ORIGINAL_LOGIN (),OBJECT_NAME(@@PROCID),@ErrorMessage, @ErrorSeverity,@ErrorState);
	
	exec hub.stp_CloseCursor 'EachExtra_NT'
	exec hub.stp_CloseCursor 'EachDelivery_NT'

	RAISERROR ( @ErrorMessage, @ErrorSeverity, @ErrorState)  ;
	
END CATCH
end

GO
/****** Object:  StoredProcedure [dbo].[stp_NewUser]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[stp_NewUser](@SchemaName VARCHAR(10),@Location VARCHAR(1), @Login VARCHAR(100), @IsApplication BIT) AS
BEGIN
-- procedure code:  NU
BEGIN TRY

	/* 

	This procedure creates a new user (that exists on the server) as a participant in the HUB. 
	The user is linked to 1(!) schema and will have acces to all objects within this schema.
	If the schema doesnt exist, it will be created.
	Since the hub consists of 2 databases, the user (and schema) will be created on both.

	*/

	SET NOCOUNT ON
	INSERT INTO [hub].[ActivityLog]([SPID],[DatetimeStamp],[Username],[Procedure],[Parameters])
	VALUES(@@SPID,getdate(),ORIGINAL_LOGIN (),OBJECT_NAME(@@PROCID),ISNULL(@SchemaName,'')+'#'+ISNULL(@Location,'')+'#'+ISNULL(@Login,'')+'#'+ISNULL(CONVERT(VARCHAR,@IsApplication),''))
	--declarations
	DECLARE @Environment  CHAR(1)
	DECLARE @StagingInDB  VARCHAR(100)
	DECLARE @StagingOutDB VARCHAR(100)
	DECLARE @SQL		  VARCHAR(8000)
	DECLARE @SQLdb		  VARCHAR(8000)

	--constants/parameters
	SELECT @SchemaName = hub.Fn_ValidInput('schema',@SchemaName)
	SELECT @Location = hub.Fn_ValidInput('location',@Location)
	SELECT @Login = hub.Fn_ValidInput('login',@Login)
	SELECT @StagingOutDB = hub.Fn_ValidInput('database',ParamValue) FROM hub.Parameters WHERE ParamName = CASE WHEN @Location='I' THEN'StagingOutDB' ELSE 'StagingInDB' END
	SELECT @StagingInDB = hub.Fn_ValidInput('database',ParamValue) FROM hub.Parameters WHERE ParamName = CASE WHEN @Location='E' THEN'StagingOutDB' ELSE 'StagingInDB' END
	SELECT @Environment = hub.Fn_ValidInput('environment',ParamValue) FROM hub.Parameters WHERE ParamName ='Environment'
	SELECT @IsApplication = hub.Fn_ValidInput('feedback',@IsApplication)

	--checks
	IF NOT EXISTS (SELECT * FROM hub.MyNamespaces WHERE SchemaName ='*')
	BEGIN
		RAISERROR('you do not have access to this procedure.(stp_NewUser)',16,3)
		RETURN
	END
	IF @SchemaName IS NULL
	BEGIN
		RAISERROR('The parameter @SchemaName needs to be filled.(stp_NewUser)',16,3)
		RETURN
	END	
	IF @Location IS NULL
	BEGIN
		RAISERROR('The parameter @Location needs to be filled.(stp_NewUser)',16,3)
		RETURN
	END	
	IF @Login IS NULL
	BEGIN
		RAISERROR('The parameter @Login needs to be filled.(stp_NewUser)',16,3)
		RETURN
	END	
	IF (SELECT TOP 1 1 FROM master.sys.server_principals
	WHERE name =@Login) IS NULL
	BEGIN
		RAISERROR('Login does not exist on server.(stp_NewUser)',16,3)
		RETURN
	END
	IF NOT @Location IN ('I','E')
	BEGIN
		RAISERROR('Location must be ''I'' or ''E''.(stp_NewUser)',16,3)
		RETURN
	END
	IF ( @IsApplication NOT IN (0, 1) OR @IsApplication IS NULL )
    BEGIN
        raiserror('The parameter @IsApplication must be either 0 or 1.(stp_NewUser)',16,3)
        RETURN
    END 
	IF (SELECT TOP 1 1 FROM hub.Logins WHERE @Login=LoginName and @SchemaName= SchemaName )=1
	BEGIN
		RAISERROR('Login already exists for this namespace.(stp_NewUser)',16,3)
		RETURN
	END
	IF (SELECT Location FROM hub.Namespaces WHERE @SchemaName=SchemaName )<> @Location
	BEGIN
		RAISERROR('schema cannot change location.(stp_NewUser)',16,3)
		RETURN
	END

	--creating the schema if it does not already exist in a database.
	
	IF (SELECT TOP 1 1 FROM sys.schemas WHERE name ='''+@SchemaName+''') IS NULL
		EXEC [dbo].[stp_NewSchema] @SchemaName,@Location

		  
	--creating the user if it does not already exist in a database.
	SET @SQL='
	IF EXISTS(SELECT 1 FROM sys.database_principals WHERE name ='''+@Login+''')
	BEGIN
		ALTER USER ['+@Login+'] WITH DEFAULT_SCHEMA='+@SchemaName+'
	END
	ELSE
	BEGIN
		CREATE USER ['+@Login+'] FOR LOGIN ['+@Login+'] WITH DEFAULT_SCHEMA='+@SchemaName+'
		
	END	'
	SET @SQLdb ='use '+@StagingInDB+';'+@SQL
	EXEC(@SQLdb)
	SET @SQLdb ='use '+@StagingOutDB+';'+@SQL	
	EXEC(@SQLdb)

	--adding the configuration for the user if it does not already exist.
	INSERT INTO hub.Logins (
		LoginName,
		SchemaName,
		IsApplication)
	SELECT
		@Login,
		@SchemaName,
		@IsApplication
	WHERE (SELECT TOP 1 1 FROM hub.Logins WHERE @SchemaName=SchemaName AND @Login =LoginName ) IS NULL

	--reset permissions 
	exec [stp_Permissions]

	-- initiate aftercare
	UPDATE hub.Parameters set ParamValue='YES' WHERE ParamName='AfterCareNeeded'
	
END TRY
BEGIN CATCH
	 DECLARE @ErrorMessage VARCHAR(MAX) = ERROR_MESSAGE(),
				@ErrorSeverity INT = ERROR_SEVERITY(),
				@ErrorState SMALLINT = ERROR_STATE()
 	INSERT INTO [hub].ErrorLog([SPID],[DatetimeStamp],[Username],[Procedure],Message, Severity, State)
	VALUES(@@SPID,getdate(),ORIGINAL_LOGIN (),OBJECT_NAME(@@PROCID),@ErrorMessage, @ErrorSeverity,@ErrorState);
	
	RAISERROR ( @ErrorMessage, @ErrorSeverity, @ErrorState)  ;
	
END CATCH

END
GO
/****** Object:  StoredProcedure [dbo].[stp_Permissions]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[stp_Permissions]  
AS
BEGIN
-- procedure code:  P
/*
	This proc reproduces the permissions based on the configuration and compares it to the current situation. 
	The permissions on the following classes are checked: database, schema, object and column. Role-memberships are NOT checked.
	All deviations are corrected until the current situation matches the configuered one.
*/
	SET NOCOUNT ON
	INSERT INTO [hub].[ActivityLog]([SPID],[DatetimeStamp],[Username],[Procedure],[Parameters])
	VALUES(@@SPID,getdate(),ORIGINAL_LOGIN (),OBJECT_NAME(@@PROCID),'')

	--declarations
	DECLARE @Environment char(1)
	DECLARE @StagingInDB varchar(100) 
	DECLARE @StagingOutDB varchar(100) 
	DECLARE @SQL varchar(8000)

	CREATE TABLE #ActualGrants_P (
		DatabaseName varchar(100), 
		LoginName varchar(100), 
		ClassDescription varchar(100), 
		permission_name varchar(100), 
		SchemaName varchar(100), 
		TableName varchar(100), 
		ColumnName varchar(100))
/*
the logic for determining what grants should be there are added into #PredictedGrants_P per type of prediction.
the column EnvironmentType tells it in which environemtn the grant should be given. Meaning that the grants can differ between O,T,A and P.	
	So the code adds all possible grants for all types of environments and later filters them for the environment involved.
the column DatabaseName is tricky because sometimes this can be the StagingIn of the hub and sometimes the StagingIn of the project involved. 
	So the placeholders 'StagingInDB' and 'StagingOutDB' are used ( instead of the variables) to link with the data prepared in #LoginInfo
the column PredictionType is used when debugging as to see why a grant was given.
*/
	CREATE TABLE #PredictedGrants_P (
		ID bigint identity(1,1),
		ClassDescription varchar(100), 
		permission_name varchar(100), 
		EnvironmentType varchar(4),
		LoginName varchar(100),
		DatabaseName varchar(100), 
		SchemaName varchar(100), 
		TableName varchar(100), 
		ColumnName varchar(100),
		PredictionType varchar(1000))

	CREATE TABLE #CMD_P (
		code varchar(8000))

	--constants/parameters
	SELECT @Environment= ParamValue FROM hub.Parameters  WHERE ParamName ='Environment'
	SELECT @StagingInDB  = hub.Fn_ValidInput('database',ParamValue) FROM hub.Parameters WHERE  ParamName = 'StagingInDB'
	SELECT @StagingOutDB = hub.Fn_ValidInput('database',ParamValue) FROM hub.Parameters WHERE ParamName = 'StagingOutDB'	

	--checks
	IF NOT EXISTS (SELECT * FROM hub.MyNamespaces where SchemaName ='*')
	BEGIN
		raiserror('you do not have access to this procedure.(stp_Permissions)',16,3)
		RETURN
	END

	-- correct ownership of schema's if necessary. this to facilitate cross database chaining
		set @SQL='
		USE ['+@StagingInDB+'];
		insert into #CMD_P (code)
		select ''USE ['+@StagingInDB+'];ALTER AUTHORIZATION ON SCHEMA::[''+S.name+''] TO [dbo]''
		from sys.schemas S
		inner join sys.database_principals P
		on S.principal_id=P.principal_id
		and P.name <>''dbo''
		inner join hub.Namespaces N
		on N.SchemaName=S.name;

		USE ['+@StagingOutDB+'];
		insert into #CMD_P (code)
		select ''USE ['+@StagingOutDB+'];ALTER AUTHORIZATION ON SCHEMA::[''+S.name+''] TO [dbo]''
		from sys.schemas S
		inner join sys.database_principals P
		on S.principal_id=P.principal_id
		and P.name <>''dbo''
		inner join hub.Namespaces N
		on N.SchemaName=S.name;'
		exec (@SQL)

	-- getting the active grants
	insert into #ActualGrants_P
	select distinct DatabaseName, P.LoginName, ClassDescription, permission_name, SchemaName, TableName, ColumnName
	from hub.PermissionInfo  P
	left join (select distinct LoginName from  hub.Logins union select 'public') L
		on is_rolemember(L.LoginName,P.LoginName)=1
	-- Added InternalReporting Groups to be excluded from these checks as permissions granted outside HUB model
	where P.LoginName not in (	'guest', 
								'RABOBANK\AS-CFO DATAHUB-P-INTREP-W-C-Operator', 
								'RABOBANK\AS-CFO DATAHUB-P-INTREP-W-R-Monitor', 
								'RABOBANK\AS-CFO DATAHUB-PA-INTREP-W-C-Operator', 
								'RABOBANK\AS-CFO DATAHUB-PA-INTREP-W-R-Monitor',
								'RABOBANK\AS-CFO DATAHUB-T-INTREP-W-R-Monitor')
		and permission_name not in ('CONNECT')
		-- BIC tables outside main HUB process, so excluded here from check
		and ( TableName not in ('/BIC/OHLDMAD02X1','/BIC/OHLDMAD03X1','/BIC/OHLDMAD04X1','/BIC/OHLDMAD04X2','/BIC/OHLDMAD04X3','OHLDMAD02X','OHLDMAD03X','OHLDMAD04X')
				OR TableName  IS NULL )
						
	--preselecting the information for logins.
	SELECT L.LoginName, L.IsApplication, L.SchemaName, P.Stagingname, P.ParamValue DatabaseName
	INTO #LoginInfo
	FROM hub.Logins L
		inner join hub.Namespaces N
			on N.SchemaName=L.SchemaName
		inner join (select * 
					from hub.Parameters P 
					cross join (select 'StagingInDB' Stagingname union select 'StagingOutDB') C
					where ParamName in ('StagingInDB','StagingOutDB')) P
			on (Location ='I' and P.ParamName =P.Stagingname)
			or (Location ='E' and P.ParamName <>P.Stagingname)



	-- database level grants
	insert into #PredictedGrants_P (EnvironmentType,DatabaseName,ClassDescription,permission_name,LoginName,PredictionType)
	select distinct C.EnvironmentType,isnull(L.DatabaseName,C.Stagingname),C.ClassDescription,C.permission_name,isnull(L.LoginName,C.LoginName),C.PredictionType
	from (	select convert(varchar(100),null) EnvironmentType,convert(varchar(100),null)Stagingname,convert(varchar(100),null)ClassDescription, convert(varchar(100),null)permission_name,convert(varchar(100),null) LoginName,convert(varchar(100),null)PredictionType
	union	select 'OTAP','StagingInDB' ,'DATABASE', 'CREATE VIEW',null ,'Database general Grants'
	union	select 'OTAP','StagingOutDB','DATABASE', 'CREATE VIEW',null ,'Database general Grants'
	union	select 'OTAP',@StagingInDB  ,'DATABASE', 'VIEW DEFINITION','definition','Database DQ Grants'
	union	select 'OTAP',@StagingOutDB ,'DATABASE', 'VIEW DEFINITION','definition','Database DQ Grants' )C
	left join #LoginInfo L
		on L.Stagingname=C.Stagingname
	where not PredictionType is null -- generic
		and isnull(L.IsApplication,-1) in (-1,1,0)--team and application

-- schema level grants: public							  
	insert into #PredictedGrants_P (EnvironmentType,DatabaseName,ClassDescription,permission_name,LoginName,SchemaName,PredictionType)
	select C.EnvironmentType,C.DatabaseName,C.ClassDescription,C.permission_name,C.LoginName,C.SchemaName,C.PredictionType
	FROM (	select convert(varchar(100),null)EnvironmentType,convert(varchar(100),null) DatabaseName,convert(varchar(100),null)ClassDescription, convert(varchar(100),null)permission_name,convert(varchar(100),null)LoginName, convert(varchar(100),null) SchemaName, convert(varchar(100),null)PredictionType
	union	select 'OTAP',@StagingInDB ,'SCHEMA', 'SELECT','public', 'hub', 'schema public'
	union	select 'OTAP',@StagingInDB ,'SCHEMA', 'EXECUTE','public', 'hub', 'schema public'
	union	select 'OTAP',@StagingOutDB,'SCHEMA', 'SELECT','public', 'hub', 'schema public'
	union	select 'OTAP',@StagingOutDB,'SCHEMA', 'EXECUTE','public', 'hub', 'schema public'
	union	select 'OTAP',@StagingInDB ,'SCHEMA', 'INSERT','public', 'log', 'schema public'
	union	select 'OTAP',@StagingInDB ,'SCHEMA', 'SELECT','public', 'log', 'schema public'
	union	select 'OTAP',@StagingInDB ,'SCHEMA', 'UPDATE','public', 'log', 'schema public'
	union	select 'OTAP',@StagingInDB ,'SCHEMA', 'DELETE','public', 'log', 'schema public'
	union	select 'OTAP',@StagingInDB ,'SCHEMA', 'EXECUTE','public', 'log', 'schema public'
	union	select 'OTAP',@StagingOutDB,'SCHEMA', 'INSERT','public', 'log', 'schema public'
	union	select 'OTAP',@StagingOutDB,'SCHEMA', 'SELECT','public', 'log', 'schema public'
	union	select 'OTAP',@StagingOutDB,'SCHEMA', 'UPDATE','public', 'log', 'schema public'
	union	select 'OTAP',@StagingOutDB,'SCHEMA', 'DELETE','public', 'log', 'schema public'
	union	select 'OTAP',@StagingOutDB,'SCHEMA', 'EXECUTE','public', 'log', 'schema public'
	union	select 'OTAP',@StagingInDB ,'SCHEMA', 'EXECUTE','public', 'dbo', 'schema public'
	union	select 'OTAP',@StagingOutDB,'SCHEMA', 'EXECUTE','public', 'dbo', 'schema public' )C	
	where not PredictionType is null -- generic

	-- schema level grants: all logins on own schema
	insert into #PredictedGrants_P (EnvironmentType,DatabaseName,ClassDescription,permission_name,LoginName,SchemaName,PredictionType)
	select distinct C.EnvironmentType,L.DatabaseName,C.ClassDescription,C.permission_name,L.LoginName,L.SchemaName,C.PredictionType
	from (	select convert(varchar(100),null) EnvironmentType,convert(varchar(100),null) Stagingname,convert(varchar(100),null) ClassDescription, convert(varchar(100),null) permission_name, convert(varchar(100),null) PredictionType -- generic
	union   select 'OTAP','StagingInDB' ,'SCHEMA', 'SELECT', 'schema 4 application'
	union	select 'OTAP','StagingOutDB','SCHEMA', 'SELECT', 'schema 4 application'
	union	select 'OTAP','StagingOutDB','SCHEMA', 'INSERT','schema 4 application'
	union	select 'OTAP','StagingInDB' ,'SCHEMA', 'ALTER', 'schema 4 application'
	union	select 'OTAP','StagingOutDB','SCHEMA', 'ALTER', 'schema 4 application'
	union	select 'OTAP','StagingInDB' ,'SCHEMA', 'VIEW DEFINITION', 'schema 4 application'
	union	select 'OTAP','StagingOutDB','SCHEMA', 'VIEW DEFINITION', 'schema 4 application' )C
	inner join #LoginInfo L
		on L.Stagingname=C.Stagingname
	where not PredictionType is null -- generic
		and isnull(L.IsApplication,-1) in (1,0)--team and application

	-- schema level grants: team only on own schema
	insert into #PredictedGrants_P (EnvironmentType,DatabaseName,ClassDescription,permission_name,LoginName,SchemaName,PredictionType)
	select distinct C.EnvironmentType,L.DatabaseName,C.ClassDescription,C.permission_name,L.LoginName,L.SchemaName,C.PredictionType
	from (	select convert(varchar(100),null)EnvironmentType,convert(varchar(100),null)Stagingname,convert(varchar(100),null)ClassDescription, convert(varchar(100),null)permission_name,convert(varchar(100),null)PredictionType
	union	select 'OT  ','StagingOutDB','SCHEMA', 'UPDATE','schema 4 team'
	union	select 'OT  ','StagingOutDB','SCHEMA', 'DELETE','schema 4 team'
	union	select 'OT  ','StagingInDB' ,'SCHEMA', 'TAKE OWNERSHIP','schema 4 team'
	union	select 'OT  ','StagingOutDB','SCHEMA', 'TAKE OWNERSHIP','schema 4 team')C
	inner join #LoginInfo L
		on L.Stagingname=C.Stagingname
	where not PredictionType is null -- generic
		and isnull(L.IsApplication,-1) in (0)--team only


	-- schema level grants: log application only
	insert into #PredictedGrants_P (EnvironmentType,DatabaseName,ClassDescription,permission_name,LoginName,SchemaName,PredictionType)
	select distinct C.EnvironmentType,L.DatabaseName,C.ClassDescription,C.permission_name,L.LoginName,isnull(C.SchemaName,N.SchemaName),C.PredictionType
	from (	select convert(varchar(100),null)EnvironmentType,convert(varchar(100),null)Stagingname,convert(varchar(100),null)ClassDescription, convert(varchar(100),null)permission_name, convert(varchar(100),null) SchemaName,convert(varchar(100),null)PredictionType
	union	select 'OTAP','StagingOutDB','SCHEMA', 'ALTER', NULL ,'schema log'
	union	select 'OTAP','StagingInDB' ,'SCHEMA', 'ALTER', NULL,'schema log'
	union	select 'OTAP','StagingInDB' ,'SCHEMA', 'DELETE', 'log','schema log'
	union	select 'OTAP','StagingInDB' ,'SCHEMA', 'INSERT', 'log','schema log'
	union	select 'OTAP','StagingInDB' ,'SCHEMA', 'REFERENCES', 'log','schema log'
	union	select 'OTAP','StagingInDB' ,'SCHEMA', 'UPDATE', 'log','schema log')C
	inner join #LoginInfo L
		on L.Stagingname=C.Stagingname
	cross join hub.Namespaces N
	where not PredictionType is null -- generic
		and isnull(L.IsApplication,-1) in (1)--application only
		and L.SchemaName='log' -- log only

	-- schema level grants: dih application only (all schema grants on dih that the DIH app has, it also gets on dbo.)
	insert into #PredictedGrants_P (EnvironmentType,DatabaseName,ClassDescription,permission_name,LoginName,SchemaName,PredictionType)
	select distinct P.EnvironmentType,P.DatabaseName,P.ClassDescription,P.permission_name,P.LoginName,'dbo','DIH on dbo'
	from #PredictedGrants_P P
	inner join ( select distinct LoginName from #LoginInfo where IsApplication=1 and SchemaName='dih')L
		on P.LoginName=L.LoginName
		and P.SchemaName='dih'
	where not PredictionType is null

-- table level grants: public
	insert into #PredictedGrants_P (EnvironmentType,DatabaseName,ClassDescription,permission_name,LoginName,SchemaName,TableName,PredictionType)
	select C.EnvironmentType,C.DatabaseName,C.ClassDescription,C.permission_name,C.LoginName,C.SchemaName,C.TableName,C.PredictionType
	FROM (	select convert(varchar(100),null)EnvironmentType,convert(varchar(100),null) DatabaseName,convert(varchar(100),null)ClassDescription, convert(varchar(100),null)permission_name,convert(varchar(100),null)LoginName, convert(varchar(100),null) SchemaName,convert(varchar(100),null) TableName, convert(varchar(100),null)PredictionType
	union	select 'OTAP',@StagingInDB,'OBJECT','DELETE','public','hub','Archive', 'public table grant'
	union 	select 'OT  ',@StagingInDB,'OBJECT','DELETE','public','hub','CustomViewsConfig', 'public table grant'
	union 	select 'OTAP',@StagingInDB,'OBJECT','INSERT','public','hub','ActivityLog', 'public table grant'
	union 	select 'OTAP',@StagingInDB,'OBJECT','INSERT','public','hub','Archive', 'public table grant'
	union 	select 'OT  ',@StagingInDB,'OBJECT','INSERT','public','hub','CustomViewsConfig', 'public table grant'
	union 	select 'OT  ',@StagingInDB,'OBJECT','INSERT','public','hub','Deploys', 'public table grant'
	union 	select 'OTAP',@StagingInDB,'OBJECT','INSERT','public','hub','ErrorLog', 'public table grant'
	union 	select 'OTAP',@StagingInDB,'OBJECT','INSERT','public','hub','MutationsLog', 'public table grant' )C	
	where not PredictionType is null -- generic


	-- table level grants: on subscribed tables
	insert into #PredictedGrants_P (EnvironmentType,DatabaseName,ClassDescription,permission_name,LoginName,SchemaName,TableName,PredictionType)
	select C.EnvironmentType,R.DatabaseName,'OBJECT',C.permission_name,L.LoginName,R.SchemaName,R.TableName,C.PredictionType
	from  hub.Subscribers A
	inner join hub.Logins L
		on L.SchemaName=A.SchemaNameSubscriber
		and L.IsApplication =0 --team only
	inner join hub.Suppliers B
		on A.TableName=B.TableName
	inner join hub.Report R
		on R.TableName=B.TableName
		and R.SchemaName=B.SchemaNameSupplier
		and R.InDatabase=1
		and R.Type='Supplier'
	cross join
	(select convert(varchar(100),null)EnvironmentType ,convert(varchar(100),null)permission_name,convert(varchar(100),null) PredictionType
	union	select 'OTAP' ,'SELECT'  ,'table 4 subscribers'
	union 	select 'OT  ','ALTER','table 4 subscribers'
	union 	select 'OT  ','DELETE','table 4 subscribers'
	union 	select 'OT  ','INSERT','table 4 subscribers'
	union 	select 'OT  ','UPDATE','table 4 subscribers'
	union 	select 'OT  ','VIEW DEFINITION','table 4 subscribers'
	union 	select 'OT  ','TAKE OWNERSHIP','table 4 subscribers')  C
	where not PredictionType is null -- generic


		
	-- public column grants
	insert into #PredictedGrants_P (EnvironmentType,DatabaseName,ClassDescription,permission_name,LoginName,SchemaName,TableName,ColumnName,PredictionType)		
	select distinct 
	C.EnvironmentType,@StagingInDB,'COLUMN',C.permission_name,'public',C.Schemaname,C.TableName,C.ColumnName, C.PredictionType
	from (		select convert(varchar(100),null)EnvironmentType,convert(varchar(100),null)permission_name,convert(varchar(100),null)Schemaname,convert(varchar(100),null)TableName,convert(varchar(100),null)ColumnName,convert(varchar(100),null) PredictionType
	union	select 'OTAP','UPDATE' , 'hub','Parameters','ParamValue','public column grants'  
	union	select 'OTAP','UPDATE', 'hub','Subscribers','FeedbackIsMandatory' ,'public column grants'  
	union	select 'OTAP','UPDATE', 'hub','Subscribers','LastDelivery','public column grants') C
	where not PredictionType is null -- generic					
	
	-- public column grants for filtered lock views to be able to complete a delivery where no records come through the filter.
	insert into #PredictedGrants_P (EnvironmentType,DatabaseName,ClassDescription,permission_name,LoginName,SchemaName,TableName,ColumnName,PredictionType)
	SELECT distinct 'OTAP', CI.DatabaseName, 'COLUMN','SELECT','public',CI.SchemaName,CI.ObjectName,'DELIVERY_SQN','filtered lock view'
	FROM hub.CustomViewsConfig CVC
	inner join hub.Subscribers S
		on S.SchemaNameSubscriber=CVC.SchemaName
		and S.TableName=CVC.TableName
		and S.FeedbackIsMandatory=1
		and CVC.Clause='WHERE'
	inner join hub.ColumnInfo CI
		on CI.ObjectName=CVC.TableName
		and CI.ObjectType='U'
		and CI.ColumnName='DELIVERY_SQN'
		and CI.SchemaName not in ('XXX','TMP','dbo')

	--exception grants
	insert into #PredictedGrants_P (EnvironmentType,DatabaseName,ClassDescription,permission_name,LoginName,SchemaName,TableName,ColumnName,PredictionType)
	select 'OTAP',R.DatabaseName,case when ColumnPermission is null then 'OBJECT' else 'COLUMN' end,E.NamePermission,L.LoginName,R.SchemaName,R.TableName, E.ColumnPermission,'Exceptions'
	from hub.Exceptions E
	inner join hub.Logins L
		on E.SchemaName=L.SchemaName
	inner join hub.Report R
		on R.TableName=E.TableName
		and R.Type='Supplier'
		and R.InDatabase=1
		and R.InConfig=1
	where ExceptionType='PERMISSION'

	insert into #PredictedGrants_P (EnvironmentType,DatabaseName,ClassDescription,permission_name,LoginName,SchemaName,TableName,ColumnName,PredictionType)
	Select distinct 'OTAP',
	R.DatabaseName,
	case when ColumnPermission is null then 'OBJECT' else 'COLUMN' end,
	NamePermission, 
	E.LoginName, 
	R.SchemaName,
	E.TableName, 
	E.ColumnPermission,
	'/adhoc/'
	from hub.Exceptions E
	inner join hub.Report R
		on R.TableName=E.TableName
		and R.Type='Supplier'
		and R.InDatabase=1
		and R.InConfig=1
	where ExceptionType='ADHOC'


	-- fitering for the environment
	delete from #PredictedGrants_P where charindex(@Environment,EnvironmentType)=0

	-- determining the differences and generating the code to fix them.
	;with Diff as (
	select 
	isnull(A.DatabaseName,P.DatabaseName)DatabaseName ,
	isnull(A.LoginName,P.LoginName) LoginName,
	isnull(A.ClassDescription,P.ClassDescription)ClassDescription ,
	isnull(A.permission_name,P.permission_name)permission_name ,
	isnull(A.SchemaName,P.SchemaName)SchemaName ,
	isnull(A.TableName,P.TableName)TableName ,
	isnull(A.ColumnName,P.ColumnName)ColumnName ,
	case when A.DatabaseName is null then 'only Predicted'
		when P.DatabaseName is null then 'only Actual'
		else 'match' end Situation
	
	from #ActualGrants_P A
	full join #PredictedGrants_P P
		on isnull(A.DatabaseName,'')=isnull(P.DatabaseName,'')
		and LOWER(isnull(A.LoginName,''))=LOWER(isnull(P.LoginName,''))
		and isnull(A.ClassDescription,'')=isnull(P.ClassDescription,'')
		and isnull(A.permission_name,'')=isnull(P.permission_name,'')
		and isnull(A.SchemaName,'')=isnull(P.SchemaName,'')
		and isnull(A.TableName,'')=isnull(P.TableName,'')
		and isnull(A.ColumnName,'')=isnull(P.ColumnName,'')
	where 1=1
		and  ( A.DatabaseName is null or P.DatabaseName is null)
	)
	insert into #CMD_P (code)
	SELECT DISTINCT 
	'USE '+D.DatabaseName+';'+
		CASE WHEN Situation ='only Actual' then
			' REVOKE '
		when Situation='only Predicted' then
			 ' GRANT '
		else 
			NULL
		end
		+D.permission_name +
			case 
				when D.ClassDescription ='COLUMN' then ' ON ['+D.SchemaName+'].['+D.TableName+']('+D.ColumnName +')'
				when D.ClassDescription ='OBJECT' then ' ON ['+D.SchemaName+'].['+D.TableName+']'
				when D.ClassDescription ='SCHEMA' then ' ON SCHEMA::['+D.SchemaName+']'
				when D.ClassDescription ='DATABASE' then ''
			end  +' TO ['+  D.LoginName +']'
	from Diff D

	DECLARE EachPermission_P CURSOR
	READ_ONLY
	FOR
	select distinct code from #CMD_P
	OPEN EachPermission_P
	FETCH NEXT FROM EachPermission_P INTO @SQL
	WHILE (@@fetch_status <> -1)
	BEGIN
		IF (@@fetch_status <> -2)
		BEGIN
			--print @SQL
			--begin try
				exec(@SQL)
			--end try
			--begin catch
			--	print '--fout:'+@SQL
			--end catch
		END
		FETCH NEXT FROM EachPermission_P INTO @SQL
	END
	CLOSE EachPermission_P
	DEALLOCATE EachPermission_P
END
GO
/****** Object:  StoredProcedure [dbo].[stp_PointerSet]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[stp_PointerSet] ( @SchemaName varchar(10), @TableName varchar(100), @DELIVERY_SQN decimal(22,0), @Mode as char(1)) AS
BEGIN
-- procedure code:  PS
BEGIN TRY
/*
Deze rpocedure maakt het vmakkelijker om de getoonde levering van een sluisview aan te passen.
Hiermee kunnen afnemers ook hun eigen sluisview aanpassen.
*/
	SET NOCOUNT ON
	INSERT INTO [hub].[ActivityLog]([SPID],[DatetimeStamp],[Username],[Procedure],[Parameters])
	VALUES(@@SPID,getdate(),ORIGINAL_LOGIN (),OBJECT_NAME(@@PROCID),ISNULL(@SchemaName,'')+'#'+ISNULL(@TableName,'')+'#'+ISNULL(convert(varchar,@DELIVERY_SQN),'')+'#'+ISNULL(@Mode,''))

	--declarations
	
	--constants/parameters
	SELECT @SchemaName= hub.Fn_ValidInput('schema',@SchemaName)
	SELECT @TableName= hub.Fn_Alias (@SchemaName,@TableName)
	SELECT @Mode = hub.Fn_ValidInput('mode',@Mode)
--checks
	IF NOT EXISTS (SELECT * FROM hub.MyNamespaces 
	where SchemaName in (@SchemaName,'*'))
	BEGIN
		raiserror('you do not have access to this schema.(stp_PointerSet)',16,3)
		RETURN
	END	
	if @TableName IS NULL
	BEGIN
		RAISERROR('The parameter @TableName needs to be filled.(stp_PointerSet)',16,1)
		RETURN
	END
	if @Mode IS NULL
	BEGIN
		RAISERROR('The parameter @Mode needs to be filled.(stp_PointerSet)',16,1)
		RETURN
	END
	if @Mode not in ('S','H')
	BEGIN
		RAISERROR('The parameter @Mode needs to have the value S(how) or H(ide).(stp_PointerSet)',16,1)
		RETURN
	END
	IF @SchemaName IS NULL
	BEGIN
		raiserror('The parameter @SchemaName needs to be filled.(stp_PointerSet)',16,3)
		RETURN
	END	
	IF @DELIVERY_SQN IS NULL
	BEGIN
		raiserror('The parameter @DELIVERY_SQN needs to be filled.(stp_PointerSet)',16,3)
		RETURN
	END	
	IF @DELIVERY_SQN <0
	BEGIN
		raiserror('The parameter @DELIVERY_SQN needs to be equal to or greather than 0 .(stp_PointerSet)',16,3)
		RETURN
	END	
	if (select top 1 1 from hub.Suppliers where TableName= @TableName)is null 
	BEGIN
		RAISERROR('The information from the Supplier needs to be added before a feedbackpointer can be changed.(stp_PointerSet)',16,1)
		RETURN
	END
	IF (SELECT COUNT(*) from hub.Subscribers where @SchemaName =SchemaNameSubscriber and TableName=@TableName)=0
	BEGIN
		raiserror('Table is not subscribed to by this schema.(stp_PointerSet)',16,3)
		RETURN
	END	
	IF (SELECT FeedbackIsMandatory from hub.Subscribers where @SchemaName =SchemaNameSubscriber and TableName=@TableName)<>1
	BEGIN
		raiserror('This subscription is not a "sluis" view and therefore does not use feedback.(stp_PointerSet)',16,3)
		RETURN
	END	

	--pointer zetten
	update hub.Subscribers 
	SET LastDelivery=@DELIVERY_SQN- case when @Mode='S' then 1 else 0 end
	where SchemaNameSubscriber=@SchemaName
	and TableName=@TableName

END TRY
BEGIN CATCH
	 DECLARE @ErrorMessage varchar(MAX) = ERROR_MESSAGE(),
				@ErrorSeverity int = ERROR_SEVERITY(),
				@ErrorState smallint = ERROR_STATE()
 	INSERT INTO [hub].ErrorLog([SPID],[DatetimeStamp],[Username],[Procedure],Message, Severity, State)
	VALUES(@@SPID,getdate(),ORIGINAL_LOGIN (),OBJECT_NAME(@@PROCID),@ErrorMessage, @ErrorSeverity,@ErrorState);
	
	RAISERROR ( @ErrorMessage, @ErrorSeverity, @ErrorState)  ;
	
END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[stp_RefreshCustomViews]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[stp_RefreshCustomViews](@SchemaName varchar(10),@TableName varchar(100) = null) 
AS
BEGIN

/*
	this proc uses the code for a view and replaces the view if the definition has changed.
	if @TableName is null, all views for that subscriber will be refreshed.
*/
	SET NOCOUNT ON
	INSERT INTO [hub].[ActivityLog]([SPID],[DatetimeStamp],[Username],[Procedure],[Parameters])
	VALUES(@@SPID,getdate(),ORIGINAL_LOGIN (),OBJECT_NAME(@@PROCID),ISNULL(@SchemaName,'')+'#'+ISNULL(@TableName,''))

	--declarations
	DECLARE @Environment char(1)
	declare @SQLUSE varchar(8000)
	declare @SQLDrop varchar(8000)
	declare @SQLCreate varchar(8000)
	declare @SQLOriginal varchar(8000)
	CREATE TABLE #Views ( 
		TableName varchar(1000),
		ToDo int)
	
	--constants/parameters
	SELECT @SchemaName= hub.Fn_ValidInput('schema',@SchemaName)
	SELECT @TableName= hub.Fn_Alias (@SchemaName,@TableName)
	select @Environment = hub.Fn_ValidInput('environment',ParamValue) FROM hub.Parameters where ParamName ='Environment'
	
	-- checks
	IF NOT EXISTS (SELECT * FROM hub.MyNamespaces 
	where SchemaName in (@SchemaName,'*'))
	BEGIN
		raiserror('you do not have access to this schema.(stp_RefreshCustomViews)',16,3)
		RETURN
	END	
	IF @SchemaName is null  	
	BEGIN
		raiserror('The parameter @SchemaName needs to be filled.(stp_RefreshCustomViews)',16,3)
		RETURN
	END	
	IF (SELECT COUNT(*) from hub.Subscribers where SchemaNameSubscriber= @SchemaName )=0  and @TableName is null
	BEGIN
		-- no error but nothing needs to be done
		RETURN
	END	
	IF (SELECT COUNT(*) from hub.Subscribers where SchemaNameSubscriber= @SchemaName  and TableName=isnull(@TableName,TableName))=0 and not @TableName is null
	BEGIN
		raiserror('Table is not subscribed to by this schema.(stp_RefreshCustomViews)',16,3)
		RETURN
	END	

	-- for each view that meets the criteria, script the view and if it differs from the current view definition, replace it.	
	INSERT INTO #Views (TableName)
	SELECT distinct TableName
		from hub.Report 
		where SchemaName = @SchemaName
			and TableName = isnull(@TableName ,TableName)
			and Type='Subscriber'
			and InConfig=1

	 WHILE (SELECT COUNT(*) from #Views) >0
	 BEGIN
		SELECT @TableName= min(TableName) from #Views
		SET @SQLUSE =null
		SET @SQLDrop =null
		SET @SQLCreate =null
		SET @SQLOriginal =null

		EXEC stp_ScripterCustomView @SchemaName,@TableName,@SQLUSE output,@SQLDrop output ,@SQLCreate output , @SQLOriginal OUTPUT
		if  isnull(@SQLOriginal,'') <> isnull(@SQLCreate,'')
		begin
			SET @SQLDrop =@SQLUSE+ @SQLDrop
			exec (@SQLDrop)
						
			-- ALIAS Exception
			exec stp_ExceptionAlias @SchemaName,@TableName
						
			SET @SQLCreate = @SQLUSE+ 'EXEC('''+CHAR(10)+''+ REPLACE(@SQLCreate,'''','''''')+''')'
			exec (@SQLCreate)
						
			-- ALIAS Exception
			exec stp_ExceptionAlias @SchemaName,@TableName
		end

		IF not @SQLCreate is null and not @SQLDrop is null and (select top 1 1 from hub.Report where TableName=@TableName and SchemaName=@SchemaName and InConfig=1 and InDatabase=1 and Type='Subscriber')=1
			delete from #Views where TableName=@TableName
	 END
	
	-- initiate aftercare
	UPDATE hub.Parameters set ParamValue='YES' WHERE ParamName='AfterCareNeeded' --!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! wat hebben we nodig om dit weg te halen?

END

GO
/****** Object:  StoredProcedure [dbo].[stp_ScriptCustomViews]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[stp_ScriptCustomViews] (@SchemaName varchar(10),@TableName varchar(100)=null) 
AS
BEGIN
/*
	this proc prints the code needed to generate a view.
	if @TableName is null, all views for that subscriber will be scripted
*/
	SET NOCOUNT ON
	INSERT INTO [hub].[ActivityLog]([SPID],[DatetimeStamp],[Username],[Procedure],[Parameters])
	VALUES(@@SPID,getdate(),ORIGINAL_LOGIN (),OBJECT_NAME(@@PROCID),ISNULL(@SchemaName,'')+'#'+ISNULL(@TableName,''))

	--declarations
	DECLARE @Environment char(1)
	declare @SQLUSE varchar(8000)
	declare @SQLDrop varchar(8000)
	declare @SQLCreate varchar(8000)
	declare @SQLOriginal varchar(8000)
	
	--constants/parameters
	SELECT @SchemaName= hub.Fn_ValidInput('schema',@SchemaName)
	SELECT @TableName= hub.Fn_Alias (@SchemaName,@TableName)
	select @Environment = hub.Fn_ValidInput('environment',ParamValue) FROM hub.Parameters where ParamName ='Environment'

	-- checks
  	IF NOT EXISTS (SELECT * FROM hub.MyNamespaces 
	where SchemaName in (@SchemaName,'*'))
	BEGIN
		raiserror('you do not have access to this schema.(stp_ScriptCustomViews)',16,3)
		RETURN
	END	
	IF @SchemaName is null
	BEGIN
		raiserror('The parameter @SchemaName needs to be filled.(stp_ScriptCustomViews)',16,3)
		RETURN
	END	
	IF (SELECT COUNT(*) from hub.Subscribers where @SchemaName =SchemaNameSubscriber and TableName=isnull(@TableName,TableName))=0
	BEGIN
		raiserror('Table is not subscribed to by this schema.(stp_ScriptCustomViews)',16,3)
		RETURN
	END	

	-- scripting each view that needs the criteria	
	DECLARE EachTable CURSOR
	READ_ONLY
	FOR SELECT TableName from hub.Subscribers 
			where SchemaNameSubscriber = @SchemaName
			and (	TableName = @TableName 
					or @TableName is null) 
	OPEN EachTable
	FETCH NEXT FROM EachTable INTO @TableName
	WHILE (@@fetch_status <> -1)
	BEGIN
		IF (@@fetch_status <> -2)
		BEGIN
			EXEC stp_ScripterCustomView @SchemaName,@TableName,@SQLUSE output,@SQLDrop output ,@SQLCreate output , @SQLOriginal OUTPUT
			print @SQLUSE+@SQLDrop+'GO'+CHAR(10)+ @SQLCreate+'GO'+CHAR(10)+CHAR(10)
		END
		FETCH NEXT FROM EachTable INTO @TableName
	END
	CLOSE EachTable
	DEALLOCATE EachTable
END

GO
/****** Object:  StoredProcedure [dbo].[stp_ScripterCustomView]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create proc [dbo].[stp_ScripterCustomView]  (@SchemaName varchar(10),@TableName varchar(100), @SQLUSE varchar(8000) OUTPUT, @SQLDrop varchar(8000) OUTPUT, @SQLCreate varchar(8000) OUTPUT, @SQLOriginal varchar(8000) OUTPUT) 
AS
BEGIN
/*
deze procedure genereerd het view statement op basis van de configuratie van die view.
het genereert een drop statement, een create statement en vraagt de huidige definitie op.
*/
	SET NOCOUNT ON
	INSERT INTO [hub].[ActivityLog]([SPID],[DatetimeStamp],[Username],[Procedure],[Parameters])
	VALUES(@@SPID,getdate(),ORIGINAL_LOGIN (),OBJECT_NAME(@@PROCID),ISNULL(@SchemaName,'')+'#'+ISNULL(@TableName,''))

	--declarations
	DECLARE @Environment char(1)
	DECLARE @SQL varchar(8000)
	DECLARE @Location varchar(1)
	Declare @StagingInDB varchar(100)
	Declare @StagingOutDB varchar(100)
	declare @DatabaseName varchar(100)
	DECLARE @SchemaNameSubscriber varchar(100)
	DECLARE @SchemaNameSupplier varchar(100)
	declare @SQLSelect varchar(8000)=''
	declare @SQLFrom varchar(8000)=''
	declare @SQLWith varchar(8000)=''
	declare @SQLWhere varchar(8000)=''
	declare @DlvCount tinyint
	declare @ID decimal(30,10)
	DECLARE @ColumnName varchar(100)
	declare @ExtraColumn varchar(8000)
	Declare @WhereStatement varchar(8000)
	declare @ColumnDefinition varchar(8000)
	CREATE TABLE #Table (
		DatabaseName varchar(100),
		Schemaname varchar(10),
		Tablename varchar(100),
		ColumnName varchar(100),
		ColumnId int)
	CREATE TABLE #View (
		ColumnName varchar(100),
		ColumnDefinition varchar(8000),
		ColumnId decimal(38,3),
		Visible smallint)
		/*	+1 zichtbaar
			+0 hopelijk zichtbaar
			-1 verborgen*/

	--constants/parameters
	SELECT @SchemaName= hub.Fn_ValidInput('schema',@SchemaName)
	SELECT @TableName= hub.Fn_Alias (@SchemaName,@TableName)
	SET @SQLDrop=''
	SEt @SQLUSE=''
	SET @SQLCreate=''
	SELECT @Environment = hub.Fn_ValidInput('environment',ParamValue) FROM hub.Parameters where ParamName ='Environment'
	SELECT @Location =hub.Fn_ValidInput('location',Location) FROM hub.Namespaces where SchemaName= @SchemaName 
	SELECT @StagingOutDB = hub.Fn_ValidInput('database',ParamValue) FROM hub.Parameters WHERE ParamName = CASE WHEN @Location='I' then'StagingOutDB' ELSE 'StagingInDB' END
	SELECT @StagingInDB = hub.Fn_ValidInput('database',ParamValue) FROM hub.Parameters WHERE ParamName = CASE WHEN @Location='E' then'StagingOutDB' ELSE 'StagingInDB' END
	SELECT 
		@SchemaNameSupplier= hub.Fn_ValidInput('schema',L.SchemaNameSupplier),
		@SchemaNameSubscriber= hub.Fn_ValidInput('schema',A.SchemaNameSubscriber),
		@SQLOriginal =isnull(M.ViewDefinition,'')
	FROM	 hub.Subscribers A
		inner join hub.Suppliers L
			on L.TableName=A.TableName
			and A.TableName =@TableName
			and A.SchemaNameSubscriber=@SchemaName
		left join hub.ObjectInfo M
			on M.ObjectName= @TableName
			and M.SchemaName=@SchemaName
			and M.ObjectType='V'

	-- checks
  	IF NOT EXISTS (SELECT * FROM hub.MyNamespaces 
	where SchemaName in (@SchemaName,'*'))
	BEGIN
		raiserror('you do not have access to this schema.(stp_ScripterCustomView)',16,3)
		RETURN
	END	
	IF @SchemaName is null
	BEGIN
		raiserror('SchemaName is mandatory.(stp_ScripterCustomView)',16,3)
		RETURN
	END	
	IF @TableName is null
	BEGIN
		raiserror('TableName is mandatory.(stp_ScripterCustomView)',16,3)
		RETURN
	END	
	IF (select COUNT(*) from hub.Suppliers where @TableName=TableName )=0
	BEGIN
		raiserror('TableName does not exist.(stp_ScripterCustomView)',16,3)
		RETURN
	END	
	IF (SELECT COUNT(*) from hub.Subscribers where @SchemaName =SchemaNameSubscriber and TableName=@TableName)=0
	BEGIN
		raiserror('Table is not subscribed to by this schema.(stp_ScripterCustomView)',16,3)
		RETURN
	END	
		
	-- ophalen tabel definitie (=basis voor de view)
	insert into #Table (DatabaseName,Schemaname, Tablename,ColumnName,ColumnId )
	select DatabaseName ,SchemaName , ObjectName Tablename, ColumnName, ColumnId
	from hub.ColumnInfo
	where ObjectType='U'
	and ObjectName=@TableName
	and SchemaName=@SchemaNameSupplier
	-- AS HOT FIX - exclude STI_LOAD_DTS from Table columns as added later for views
	and ColumnName <> 'STI_LOAD_DTS'
	
	SELECT @DatabaseName = MAX(DatabaseName)from #Table
			
	-- code voor het verwijderen van de view aanmaken
	SEt @SQLUSE ='USE '+@StagingInDB+';'+CHAR(10)
	SET @SQLDrop= 'IF (SELECT count(*) FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME ='''+@TableName+''' AND TABLE_SCHEMA='''+@SchemaNameSubscriber+''' and TABLE_TYPE=''VIEW'')>0'+CHAR(10)
	SET @SQLDrop= @SQLDrop + CHAR(9)+ 'DROP VIEW ['+@SchemaNameSubscriber+'].['+@TableName+']'+CHAR(10)
	
	-- CREATE VIEW definitie elementen aanmaken 
		-- als eerste word de tabel defintie overgenomen voor de kolommen in het SELECT statement
	insert into #View(
		ColumnName,
		ColumnDefinition,
		ColumnId,
		Visible)
	SELECT
		ColumnName,
		ColumnName,
		convert(decimal(38,3),ColumnId)/1000,
		1
	FROM #Table

		-- fixed view : als de configuratie aangeeft dat dit een fixed view is, dan word als 1ste stap alle kolommen verborgen in de view
	if exists (select * 
				from hub.CustomViewsConfig C
			where  C.SchemaName= @SchemaNameSubscriber
			and C.TableName=@TableName
			and C.Clause ='SELECT' -- columns
			and C.SqlCode ='NULL'-- fixed view deel1
			and C.ColumnName='NULL'--fixed view deel2 
			)
		update #View set Visible=-1

	-- toevoegen extra kolommen: formules worden toegeveogd maar onzichtbaar totdat ze getest zijn.
	insert into #View(
		ColumnName,
		ColumnDefinition,
		ColumnId,
		Visible)
	select 
		C.ColumnName,
		RTRIM(LTRIM(SqlCode)),
		ID,
		0
	from hub.CustomViewsConfig C
	left join #View T
			on C.ColumnName= T.ColumnName
	where T.ColumnName is null -- no replacing of existing columns allowd
		and C.SchemaName= @SchemaNameSubscriber
		and C.TableName=@TableName
		and C.Clause ='SELECT' -- columns
		and C.SqlCode <>'NULL'-- not hidden columns = extra columns
		and  C.SqlCode <> C.ColumnName -- actual calculated columns
	
	-- Exception: OBSCURE - nogmaals formules toevoegen maar nu mag de formule naam identiek aan aan een reeds bestaande kolom.
	UPDATE T
	SET ColumnDefinition=C.SqlCode, Visible=0, ColumnId=ID
	from hub.CustomViewsConfig C
	inner join #View T
			on C.ColumnName= T.ColumnName
	inner join hub.Exceptions E
		ON E.TableName=@TableName
		and E.SchemaName= C.SchemaName
		and E.ExceptionType ='OBSCURE'
	where C.SchemaName= @SchemaNameSubscriber
		and C.TableName=@TableName
		and C.Clause ='SELECT' -- columns
		and C.SqlCode <>'NULL'-- not hidden columns = extra columns
		and  C.SqlCode <> C.ColumnName -- actual calculated columns

	-- toevoegen STI_LOAD_DTS, deze kolom als vaste naam voor het moment waarop het op de hub binnenkomt. 
	if (select COUNT(*) from #Table where ColumnName ='DIH__PUBLICATION_INSTANCE_DATE')=1 
		BEGIN
			insert into #View(
				ColumnName,
				ColumnDefinition,
				ColumnId,
				Visible)
			select 
				'STI_LOAD_DTS',
				'DIH__PUBLICATION_INSTANCE_DATE',
				99999999999999999999,
				1
		END
	if (select COUNT(*) from #Table where ColumnName in ('DIH__PUBLICATION_INSTANCE_DATE','STI_LOAD_DTS'))=0
		BEGIN
			insert into #View(
				ColumnName,
				ColumnDefinition,
				ColumnId,
				Visible)
			select 
				'STI_LOAD_DTS',
				'LOAD_DTS',
				99999999999999999999,
				1
		END


-- hidden columns: kolommen die expliciet verborgen moeten worden, worden onzichtbaar gemaakt.
	update V
	set Visible=-1
	from #View V
		inner join hub.CustomViewsConfig C
			on  C.SchemaName= @SchemaNameSubscriber
			and C.TableName=@TableName
			and C.Clause ='SELECT' -- columns
			and C.SqlCode ='NULL'-- hidden columns
			and C.ColumnName=V.ColumnName


	-- update order of columns: kolommen die op een andere plaats moeten komen, worden in volgorde van ID gesorteerd en zichtbaar gemaakt.
	UPDATE V
	SET ColumnId=ID, Visible =1
	FROM #View V
	inner join  hub.CustomViewsConfig C
		on C.ColumnName=V.ColumnName
		and C.SchemaName= @SchemaNameSubscriber
		and C.TableName=@TableName
		and C.Clause ='SELECT' -- columns
		and  C.SqlCode =C.ColumnName

	-- controle of een kolom zichtbaar kan zijn: voor elke kolom word gekeken of deze geen foutmelding geeft.
	DECLARE EachHiddenColumn CURSOR
	FOR 
		select ColumnId, ColumnDefinition from #View where Visible=0
	OPEN EachHiddenColumn
	FETCH NEXT FROM EachHiddenColumn INTO @ID, @ColumnDefinition
	WHILE (@@fetch_status <> -1)
	BEGIN
		IF (@@fetch_status <> -2)
		BEGIN
			begin try
				SET @SQL = 'SELECT  top 10 ('+@ColumnDefinition+') X into #t FROM ['+@DatabaseName+'].['+@SchemaNameSupplier+'].['+@TableName+ '] (nolock)'
				exec(@SQL)
				update #View set Visible=1 where ColumnId=@ID
			end try
			begin catch
				print 'tested SELECT code: '+@ColumnDefinition
				print error_message()
				update #View set Visible=-1 where ColumnId=@ID
			end catch
		END
		FETCH NEXT FROM EachHiddenColumn INTO @ID, @ColumnDefinition
	END
	CLOSE EachHiddenColumn
	DEALLOCATE EachHiddenColumn

	-- het aanmaken van de SELECT sectie
	DECLARE EachSelectColumn CURSOR
	READ_ONLY
	FOR 
			SELECT ColumnName, ColumnDefinition
			FROM #View 
			where Visible=1
			order by ColumnId asc
	OPEN EachSelectColumn
	FETCH NEXT FROM EachSelectColumn INTO @ColumnName,@ColumnDefinition
	WHILE (@@fetch_status <> -1)
	BEGIN
		IF (@@fetch_status <> -2)
		BEGIN
			IF @ColumnName=@ColumnDefinition
				set @SQLSelect = @SQLSelect+CHAR(9) +'['+ @ColumnName+'],'+CHAR(10)
			else
				set @SQLSelect = @SQLSelect+CHAR(9) +@ColumnDefinition+' AS ['+ @ColumnName+'],'+CHAR(10)
		END
		FETCH NEXT FROM EachSelectColumn INTO @ColumnName,@ColumnDefinition
	END
	CLOSE EachSelectColumn
	DEALLOCATE EachSelectColumn
	SET @SQLSelect = +'SELECT'+CHAR(10) +LEFT(@SQLSelect,len(@SQLSelect)-2) +CHAR(10)

	-- het aanmaken van de FROM sectie
	SET @SQLFrom='FROM ['+@DatabaseName+'].['+@SchemaNameSupplier+'].['+@TableName+ '] (nolock)' +CHAR(10) +
	' INNER JOIN  Valid_SQN
		ON F_DELIVERY_SQN=DELIVERY_SQN'+CHAR(10)

	-- het aanmaken van de WITH sectie op basis van het feit of de tabel DLV heeft of niet.
	set @DlvCount=0
	set @DlvCount=(select top 1 1 from log.LOG_DD_DATA_DELIVERY where TRG_ENT_NM =@TableName and LOAD_ST_CODE ='DLV OK')
	IF @DlvCount>0
	BEGIN
		select @SQLWith='WITH Valid_SQN (F_DELIVERY_SQN) AS
		(	SELECT DELIVERY_SQN
			FROM hub.Fn_ValidDelivery ('''+@SchemaNameSubscriber+''', '''+@TableName + ''',
				(SELECT DISTINCT DELIVERY_SQN_CRNT_RUN DELIVERY_SQN FROM ['+ParamValue+'].log.LOG_DD_DATA_DELIVERY T (nolock)
					where TRG_ENT_NM ='''+@TableName+''' FOR XML AUTO)))'+CHAR(10)
		FROM hub.Parameters WHERE ParamName = 'StagingInDB'
	END
	ELSE
	BEGIN
		SET @SQLWith='WITH Valid_SQN(F_DELIVERY_SQN) AS
		 (	SELECT DELIVERY_SQN
			FROM hub.Fn_ValidDelivery ('''+@SchemaNameSubscriber+''', '''+@TableName + ''',
				(SELECT DISTINCT DELIVERY_SQN FROM ['+@DatabaseName+'].['+@SchemaNameSupplier+'].['+@TableName + '] T (nolock) FOR XML AUTO)))'+CHAR(10)
	END

	-- het aanmaken van de WHERE sectie
	SET @SQLWhere =''
	DECLARE EachWhere CURSOR
	READ_ONLY
	FOR 	select ID, RTRIM(LTRIM(SqlCode)) 
			from hub.CustomViewsConfig C
			left join #Table T
					on C.TableName=T.Tablename
					and C.ColumnName= T.ColumnName
			where T.ColumnName is null -- no replacing of existing columns allowd
				and C.SchemaName= @SchemaNameSubscriber
				and C.TableName=@TableName
				and C.Clause ='WHERE' -- WHERE staements
			order by ID			
	OPEN EachWhere
	FETCH NEXT FROM EachWhere INTO @ID, @WhereStatement
	WHILE (@@fetch_status <> -1)
	BEGIN
		IF (@@fetch_status <> -2)
		BEGIN
			begin try
				SET @SQL = 'SELECT  top 10 *  into #t FROM ['+@DatabaseName+'].['+@SchemaNameSupplier+'].['+@TableName+ '] (nolock)
				WHERE ('+@WhereStatement+')'
				exec(@SQL)
				SET @SQLWhere= @SQLWhere +CHAR(9)+'AND (' +@WhereStatement +')'+CHAR(10)   
			end try
			begin catch
				print 'tested WHERE code: '+ @SQLWhere
				print error_message()
				SET @WhereStatement=''
			end catch 
		END
		FETCH NEXT FROM EachWhere INTO @ID, @WhereStatement
	END
	CLOSE EachWhere
	DEALLOCATE EachWhere
	IF len(@SQLWhere)>5
		SET @SQLWhere = 'WHERE' + substring(@SQLWhere,5,8000)

--samenstellen CREATE VIEW definitie
	SET @SQLCreate= CHAR(10) +'CREATE VIEW ['+@SchemaNameSubscriber+'].['+@TableName+'] AS'+CHAR(10)+@SQLWith + @SQLSelect + @SQLFrom + @SQLWhere
	--print @SQLCreate
	--print @SQLOriginal
END

GO
/****** Object:  StoredProcedure [dbo].[stp_SetViewToLastDelivery]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[stp_SetViewToLastDelivery] (@TableName varchar(100)) 
AS
BEGIN
BEGIN TRY
/*
	This proc is called by the subscriber to signal that it wants to view the LAST delivery available
	It causes the "sluis" view to show the last delivery
	This is done by taking the higest DELIVERY_SQN, subtracting 1 and setting this to the last succesfully processed delivery.
	We use hub.DeliveryInfo to determine the deliveries available in the table
*/
	-- Log Execution of SP
	SET NOCOUNT ON
	INSERT INTO [hub].[ActivityLog]([SPID],[DatetimeStamp],[Username],[Procedure],[Parameters])
	VALUES(@@SPID,getdate(),ORIGINAL_LOGIN (),OBJECT_NAME(@@PROCID),ISNULL(@TableName,''))

	-- Variables
	DECLARE @StagingInDB	varchar(100)
	DECLARE @StagingOutDB	varchar(100)
	Declare @databaseName	varchar(100)
	DECLARE @SchemaName		varchar(10)
	DECLARE @SQL			varchar(8000)
	DECLARE @LastDelivery	numeric(22,0)
	DECLARE @pos			integer

	--constants/parameters
	SELECT @StagingOutDB = hub.Fn_ValidInput('database',ParamValue) FROM hub.Parameters where ParamName ='StagingOutDB'
	SELECT @StagingInDB = hub.Fn_ValidInput('database',ParamValue) FROM hub.Parameters where ParamName ='StagingInDB'
	SELECT @TableName= hub.Fn_ValidInput('table',@TableName)
	SELECT @SchemaName = hub.Fn_ValidInput('schema',max(N.SchemaName))
	from hub.MyNamespaces N
		inner join hub.Subscribers S
			on S.SchemaNameSubscriber =N.SchemaName
		left join hub.Exceptions E
			on E.ExceptionType='ALIAS'
				and E.SchemaName=N.SchemaName 
				and @TableName in (E.TableAlias ,E.TableName)
		where 
			S.TableName in(@TableName,E.TableAlias,E.TableName)

	SELECT @databaseName= hub.Fn_ValidInput('database',case when N.Location='I'  then @StagingInDB ELSE @StagingOutDB END)
	from hub.Namespaces	N
	where N.SchemaName = @SchemaName

	SELECT @TableName= hub.Fn_Alias (@SchemaName,@TableName)
	
	if @TableName IS NULL
	BEGIN
		RAISERROR('The parameter @TableName needs to be filled.(stp_SetViewToLastDelivery)',16,1)
		RETURN
	END
	if (select top 1 1 from hub.Suppliers where TableName= @TableName)is null 
	BEGIN
		RAISERROR('The information from the Supplier needs to be added.(stp_SetViewToLastDelivery)',16,1)
		RETURN
	END

	-- in order to work, there must be exactly 1 view of that name within the namespaces where the user is part of.
	IF(	SELECT
			count(*) 
		FROM hub.MyNamespaces N
		INNER JOIN  hub.Subscribers S
			on S.SchemaNameSubscriber =N.SchemaName
			and S.TableName=@TableName ) <> 1
	BEGIN
		RAISERROR('You do not have access to this schema.(stp_SetViewToLastDelivery)',16,3)
		RETURN		
	END

	-- the object must exist
	IF (SELECT 1 
		FROM hub.Report 
		WHERE DatabaseName =@databaseName
		AND SchemaName=@SchemaName
		AND TableName=@TableName
		AND Type='Subscriber') is null
	BEGIN
		RAISERROR('No Subscriber view exists for this Supplier.(stp_SetViewToLastDelivery)',16,3)
		RETURN		
	END
	
	-- function only works for lock views
	IF (SELECT FeedbackIsMandatory
		FROM hub.Subscribers
		WHERE TableName=@TableName
		AND SchemaNameSubscriber=@SchemaName) <> 1
	BEGIN
		RAISERROR('The Subscriber view for this Supplier must be a Sluis view.(stp_SetViewToLastDelivery)',16,3)
		RETURN		
	END


	-- get max DELIVERY_SQN from DLV table
	select @LastDelivery = MAX(DELIVERY_SQN_CRNT_RUN)
	FROM log.LOG_DD_DATA_DELIVERY 
	WHERE TRG_ENT_NM = @TableName
	AND LOAD_ST_CODE ='DLV OK'


	-- if NULL, check available deliveries (use hub.DeliveryInfo)
	IF (@LastDelivery IS NULL)
	BEGIN
		select @LastDelivery = max(DELIVERY_SQN)
		from hub.DeliveryInfo
		where SchemaName=@SchemaName
		and TableName=@TableName
		and pointer in ('NEXT','TODO','DONE','RIVER')
	END
	
	-- Now subtract 1 from value to use in hub.Subscribers (if null (empty table) set to 0)
	set @LastDelivery= ISNULL(@LastDelivery, 1) -1

	-- update Subscriptions table
	UPDATE hub.Subscribers
	SET LastDelivery= @LastDelivery
	WHERE SchemaNameSubscriber = @SchemaName
	AND TableName = @TableName

END TRY
BEGIN CATCH
	 DECLARE @ErrorMessage varchar(MAX) = ERROR_MESSAGE(),
				@ErrorSeverity int = ERROR_SEVERITY(),
				@ErrorState smallint = ERROR_STATE()
 	INSERT INTO [hub].ErrorLog([SPID],[DatetimeStamp],[Username],[Procedure],Message, Severity, State)
	VALUES(@@SPID,getdate(),ORIGINAL_LOGIN (),OBJECT_NAME(@@PROCID),@ErrorMessage, @ErrorSeverity,@ErrorState);
	
	RAISERROR ( @ErrorMessage, @ErrorSeverity, @ErrorState)  ;
	
END CATCH
END


GO
/****** Object:  StoredProcedure [dbo].[stp_SubscriptionSuccesful]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[stp_SubscriptionSuccesful] (@TableName varchar(100)) 
AS
BEGIN
-- procedure code:  SbS
BEGIN TRY
/*
	this proc is called by the subscriber to signal that it is done with a certain delivery.
	It causes the "sluis" view to hide that delivery and show the next delivery (if a new delivery is present).
	This is done by taking the higest DELIVERY_SQN and setting is as the last succesfully processed delivery.
*/
	--declarations
	SET NOCOUNT ON
	INSERT INTO [hub].[ActivityLog]([SPID],[DatetimeStamp],[Username],[Procedure],[Parameters])
	VALUES(@@SPID,getdate(),ORIGINAL_LOGIN (),OBJECT_NAME(@@PROCID),ISNULL(@TableName,''))

	DECLARE @StagingInDB	varchar(100)
	DECLARE @StagingOutDB	varchar(100)
	Declare @databaseName	varchar(100)
	DECLARE @SchemaName		varchar(10)
	DECLARE @SQL			varchar(8000)
	DECLARE @LastDelivery	numeric(22,0)
	DECLARE @pos			integer
	CREATE TABLE #res (
			Value numeric(22,0))

	--constants/parameters
	SELECT @StagingOutDB = hub.Fn_ValidInput('database',ParamValue) FROM hub.Parameters where ParamName ='StagingOutDB'
	SELECT @StagingInDB = hub.Fn_ValidInput('database',ParamValue) FROM hub.Parameters where ParamName ='StagingInDB'
	SELECT @TableName= hub.Fn_ValidInput('table',@TableName)
	SELECT @SchemaName = hub.Fn_ValidInput('schema',max(N.SchemaName))
	from hub.MyNamespaces N
		inner join hub.Subscribers S
			on S.SchemaNameSubscriber =N.SchemaName
		left join hub.Exceptions E
			on E.ExceptionType='ALIAS'
				and E.SchemaName=N.SchemaName 
				and @TableName in (E.TableAlias ,E.TableName)
		where 
			S.TableName in(@TableName,E.TableAlias,E.TableName)

	SELECT @databaseName= hub.Fn_ValidInput('database',case when N.Location='I'  then @StagingInDB ELSE @StagingOutDB END)
	from hub.Namespaces	N
	where N.SchemaName = @SchemaName

	SELECT @TableName= hub.Fn_Alias (@SchemaName,@TableName)
	
	--checks
	if @TableName IS NULL
	BEGIN
		RAISERROR('The parameter @TableName needs to be filled.(stp_SubscriptionSuccesful)',16,1)
		RETURN
	END
	if (select top 1 1 from hub.Suppliers where TableName= @TableName)is null 
	BEGIN
		RAISERROR('The information from the Supplier needs to be added.(stp_SubscriptionSuccesful)',16,1)
		RETURN
	END
	-- there must be exactly one view of that name within the namespaces of that user.
	IF (SELECT count(*) 
		FROM hub.MyNamespaces N
		INNER JOIN hub.Subscribers S
			ON  S.SchemaNameSubscriber =N.SchemaName
			AND S.TableName=@TableName ) <>1
	BEGIN
		RAISERROR('You do not have access to this schema.(stp_SubscriptionSuccesful)',16,3)
		RETURN		
	END


	-- the object must exist
	IF (SELECT 1 
		FROM hub.Report 
		WHERE DatabaseName =@databaseName
		AND SchemaName=@SchemaName
		AND TableName=@TableName
		AND Type='Subscriber') IS NULL
	BEGIN
		RAISERROR('No Subscriber view exists for this Supplier.(stp_SubscriptionSuccesful)',16,3)
		RETURN		
	END
	
	-- function only works for sluis views
	IF (SELECT FeedbackIsMandatory
		FROM hub.Subscribers
		WHERE TableName=@TableName
		AND SchemaNameSubscriber=@SchemaName) <> 1
	BEGIN
		RAISERROR('The Subscriber view for this Supplier must be a Sluis view.(stp_SubscriptionSuccesful)',16,3)
		RETURN		
	END


	-- get max DELIVERY_SQN from subscriber view
	SET @SQL='
		INSERT INTO #res(
			Value)
		SELECT 
			MAX(DELIVERY_SQN)
		FROM  ['+@databaseName+'].['+@SchemaName+'].['+@TableName+']'
	EXEC(@SQL)

	SELECT @LastDelivery= Value
	FROM #res

	--extra step in case of empty filtered views so we can find the DELIVERY_SQN
	IF @LastDelivery IS NULL and (select count(*) from hub.CustomViewsConfig where Clause ='WHERE' and SchemaName=@SchemaName and TableName=@TableName)>0
	BEGIN
		SELECT @SQL = ViewDefinition 
		FROM [hub].[ObjectInfo]
		where SchemaName =@SchemaName and ObjectName=@TableName
		set @pos = charindex ('FOR XML AUTO))',@SQL) 
		SET @SQL =left(@SQL,@pos+13)
		set @pos = charindex ('FROM',@SQL)
		SET @SQL = substring(@SQL,@pos,8000)
		set @SQL = 'INSERT INTO #res(Value)
				SELECT MIN(DELIVERY_SQN) '+ @SQL

		truncate table #res
		exec( @SQL)

		SELECT @LastDelivery= Value
		FROM #res

	END

	-- update Subscriptions table
	IF NOT(@LastDelivery IS NULL)
	BEGIN
		UPDATE hub.Subscribers
		SET LastDelivery= @LastDelivery
		WHERE 
			SchemaNameSubscriber = @SchemaName
			AND TableName = @TableName
	END
END TRY
BEGIN CATCH
	 DECLARE @ErrorMessage varchar(MAX) = ERROR_MESSAGE(),
				@ErrorSeverity int = ERROR_SEVERITY(),
				@ErrorState smallint = ERROR_STATE()
 	INSERT INTO [hub].ErrorLog([SPID],[DatetimeStamp],[Username],[Procedure],Message, Severity, State)
	VALUES(@@SPID,getdate(),ORIGINAL_LOGIN (),OBJECT_NAME(@@PROCID),@ErrorMessage, @ErrorSeverity,@ErrorState);
	
	RAISERROR ( @ErrorMessage, @ErrorSeverity, @ErrorState)  ;
	
END CATCH
END


GO
/****** Object:  StoredProcedure [dbo].[stp_UpdateStatistic]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROC  [dbo].[stp_UpdateStatistic]  (@SchemaName varchar(10), @TableName varchar(100) )
--WITH EXECUTE AS OWNER
as
begin
	-- procedure code:  US
	begin try
		SET NOCOUNT ON 
		INSERT INTO [hub].[ActivityLog]([SPID],[DatetimeStamp],[Username],[Procedure],[Parameters])
		VALUES(@@SPID,getdate(),ORIGINAL_LOGIN (),OBJECT_NAME(@@PROCID),ISNULL(@TableName,'')+'#'+ISNULL(@SchemaName,''))

		--declarations
		declare @SQL varchar(8000)
		declare @StagingDb varchar(100)
	
		----constants/parameters=	
		SELECT @SchemaName= hub.Fn_ValidInput('schema',@SchemaName)
		SELECT @TableName= hub.Fn_Alias (@SchemaName,@TableName)
		SELECT @StagingDb = DatabaseName from hub.Report where SchemaName=@SchemaName and TableName=@TableName and InDatabase=1 and [Type]='Supplier'

		--checks
		IF NOT EXISTS (SELECT * FROM hub.MyNamespaces where SchemaName in (@SchemaName,'*','log'))
		BEGIN
			raiserror('you do not have access to this schema.(stp_UpdateStatistic)',16,3)
			RETURN
		END
		IF @SchemaName is null
		BEGIN
			raiserror('The parameter @SchemaName needs to be filled.(stp_UpdateStatistic)',16,3)
			RETURN
		END	
		IF @TableName is null
		BEGIN
			raiserror('The parameter @TableName needs to be filled.(stp_UpdateStatistic)',16,3)
			RETURN
		END	
		if @StagingDb IS NULL
		BEGIN
			RAISERROR('The table does not exists in this database.(stp_UpdateStatistic)',16,1)
			RETURN
		END
		if (select top 1 1 from hub.Namespaces where SchemaName= @SchemaName) is null
		BEGIN
			RAISERROR('The namespace needs to be added before statistics can be updated.(stp_UpdateStatistic)',16,1)
			RETURN
		END
		if (select top 1 1 from hub.Suppliers where TableName= @TableName)is null 
		BEGIN
			RAISERROR('The information from the Supplier needs to be added before statistics can be updated.(stp_UpdateStatistic)',16,1)
			RETURN
		END

		begin
			-- updating the statistic	
			set @SQL ='USE '+@StagingDb+'; UPDATE STATISTICS ['+@SchemaName+'].['+@TableName+']'
			exec (@SQL)
		end
	END TRY
	BEGIN CATCH
		 DECLARE @ErrorMessage varchar(MAX) = ERROR_MESSAGE(),
					@ErrorSeverity int = ERROR_SEVERITY(),
					@ErrorState smallint = ERROR_STATE()
 		INSERT INTO [hub].ErrorLog([SPID],[DatetimeStamp],[Username],[Procedure],Message, Severity, State)
		VALUES(@@SPID,getdate(),ORIGINAL_LOGIN (),OBJECT_NAME(@@PROCID),@ErrorMessage, @ErrorSeverity,@ErrorState);
	
		RAISERROR ( @ErrorMessage, @ErrorSeverity, @ErrorState)  ;
	
	END CATCH
end
GO
/****** Object:  StoredProcedure [dbo].[stp_UpdateSubscription]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
create proc [dbo].[stp_UpdateSubscription] (@TableName varchar(100), @SchemaName varchar(10),  @LastDelivery numeric(22,0), @FeedbackIsMandatory bit =null)
as
begin
-- procedure code:  Usb
--BEGIN TRY
/*
	This proc updates the settings for a subscription. Only properties that are filled will overwrite the current property.
	This proc can also be called by the alias of the view ( if the view has one).
*/
	--declarations
	SET NOCOUNT ON
	INSERT INTO [hub].[ActivityLog]([SPID],[DatetimeStamp],[Username],[Procedure],[Parameters])
	VALUES(@@SPID,getdate(),ORIGINAL_LOGIN (),OBJECT_NAME(@@PROCID),ISNULL(@TableName,'')+'#'+ISNULL(@SchemaName,'')+'#'+ISNULL(convert(varchar,@LastDelivery),'')+'#'+ISNULL(convert(varchar,@FeedbackIsMandatory),''))

	--constants/parameters
	SELECT @SchemaName= hub.Fn_ValidInput('schema',@SchemaName)
	SELECT @TableName= hub.Fn_Alias (@SchemaName,@TableName)
	SELECT @LastDelivery= hub.Fn_ValidInput('LastDelivery',@LastDelivery)	
	SELECT @FeedbackIsMandatory= hub.Fn_ValidInput('feedback',@FeedbackIsMandatory)
	
	--checks
	IF NOT EXISTS (SELECT * FROM hub.MyNamespaces 
	where SchemaName in (@SchemaName,'*'))
	BEGIN
		raiserror('you do not have access to this schema.(stp_UpdateSubscription)',16,3)
		RETURN
	END	
	if @TableName IS NULL
	BEGIN
		RAISERROR('The parameter @TableName needs to be filled.(stp_UpdateSubscription)',16,1)
		RETURN
	END
	IF @SchemaName IS NULL
	BEGIN
		raiserror('The parameter @SchemaName needs to be filled.(stp_UpdateSubscription)',16,3)
		RETURN
	END	
	if (select top 1 1 from hub.Suppliers where TableName= @TableName)is null 
	BEGIN
		RAISERROR('The information from the Supplier needs to be added before a subscription can be made.(stp_UpdateSubscription)',16,1)
		RETURN
	END
	IF (SELECT COUNT(*) from hub.Subscribers where @SchemaName =SchemaNameSubscriber and TableName=@TableName)=0
	BEGIN
		raiserror('Table is not subscribed to by this schema.(stp_UpdateSubscription)',16,3)
		RETURN
	END	
	
	-- update the properties		
	update hub.Subscribers
	set FeedbackIsMandatory=ISNULL(@FeedbackIsMandatory,FeedbackIsMandatory),
	LastDelivery =isnull(@LastDelivery,LastDelivery)
	WHERE TableName = @TableName
		and SchemaNameSubscriber =@SchemaName
--END TRY
--BEGIN CATCH
--	 DECLARE @ErrorMessage varchar(MAX) = ERROR_MESSAGE(),
--				@ErrorSeverity int = ERROR_SEVERITY(),
--				@ErrorState smallint = ERROR_STATE()
-- 	INSERT INTO [hub].ErrorLog([SPID],[DatetimeStamp],[Username],[Procedure],Message, Severity, State)
--	VALUES(@@SPID,getdate(),ORIGINAL_LOGIN (),OBJECT_NAME(@@PROCID),@ErrorMessage, @ErrorSeverity,@ErrorState);
	
--	RAISERROR ( @ErrorMessage, @ErrorSeverity, @ErrorState)  ;
	
--END CATCH
end
GO
/****** Object:  StoredProcedure [dbo].[stp_UpdateSupply]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[stp_UpdateSupply] (@TableName varchar(100), @SuccessfulDeliveryCount varchar(4)=null, @DateColum varchar(30)=null , @DayCount int=null, @CleanUpActive bit=null)
AS
begin
/*
	This proc updates the settings for a supply. Only properties that are filled will overwrite the current property
*/
	SET NOCOUNT ON
	INSERT INTO [hub].[ActivityLog]([SPID],[DatetimeStamp],[Username],[Procedure],[Parameters])
	VALUES(@@SPID,getdate(),ORIGINAL_LOGIN (),OBJECT_NAME(@@PROCID),ISNULL(@TableName,'')+'#'+ISNULL(@SuccessfulDeliveryCount,'')+'#'+ISNULL(@DateColum,'')+'#'+ISNULL(convert(varchar,@DayCount),'')+'#'+ISNULL(convert(varchar,@CleanUpActive),''))

	--declarations
	DECLARE @SchemaName varchar(10)

	--constants/parameters
	SELECT @TableName= hub.Fn_ValidInput('table',@TableName)
	SELECT	@SchemaName= hub.Fn_ValidInput('schema',S.SchemaNameSupplier)
	FROM hub.Suppliers S
		left join hub.Exceptions E
			On E.SchemaName=S.SchemaNameSupplier
			and E.TableName=S.TableName
			and E.ExceptionType='ALIAS'
	WHERE @TableName in (E.TableName ,E.TableAlias ,S.TableName)
	
	SELECT @TableName= hub.Fn_Alias (@SchemaName,@TableName)
	
	SELECT @SuccessfulDeliveryCount = hub.Fn_ValidInput('count',ISNULL(@SuccessfulDeliveryCount,SuccessfulDeliveryCount))
	FROM	hub.Suppliers WHERE	TableName =@TableName

	SET @SuccessfulDeliveryCount= CASE WHEN ISNUMERIC(@SuccessfulDeliveryCount)=0 THEN Null ELSE @SuccessfulDeliveryCount END 
	
	SELECT @DateColum = hub.Fn_ValidInput('Column',ISNULL(@DateColum,DateColum))
	FROM	hub.Suppliers WHERE	TableName =@TableName
	
	SELECT @DayCount = hub.Fn_ValidInput('count',ISNULL(@DayCount,DayCount))
	FROM	hub.Suppliers WHERE	TableName =@TableName
	
	SELECT	@CleanUpActive= hub.Fn_ValidInput('bit0', ISNULL(@CleanUpActive,CleanUpActive))
	FROM	hub.Suppliers WHERE	TableName =@TableName

	--checks
  	IF NOT EXISTS (SELECT * FROM hub.MyNamespaces 
	where SchemaName in (@SchemaName,'*'))
	BEGIN
		raiserror('you do not have access to this schema.(stp_UpdateSupply)',16,3)
		RETURN
	END	
	if @TableName is null
	BEGIN
		RAISERROR('The parameter @TableName needs to be filled.(stp_UpdateSupply)',16,1)
		RETURN
	END
	if (select top 1 1 from hub.Suppliers where TableName= @TableName)is null 
	BEGIN
		RAISERROR('The information from the Supplier needs to be added before a Supply can be updated.(stp_UpdateSupply)',16,1)
		RETURN
	END

	-- updating the supply properties
	update hub.Suppliers
	set SuccessfulDeliveryCount=isnull(@SuccessfulDeliveryCount,SuccessfulDeliveryCount),
		DateColum=isnull(@DateColum,DateColum),
		DayCount=isnull(@DayCount,DayCount),
		CleanUpActive =ISNULL(@CleanUpActive,CleanUpActive)
	WHERE TableName =@TableName
end

GO
/****** Object:  StoredProcedure [hub].[RefreshAvailableDeliveries]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [hub].[RefreshAvailableDeliveries] (@TableName NVARCHAR(50)) 
/********************************************************************************************************************************************************
Procedure:		[hub].[RefreshAvailableDeliveries]
Description:	Refreshes hub.AvailableDeliveries table data for a given TableName. Matches against all columns so an update works like a Delete/Insert.

Created By:		AStoddart
Creation Date:	2020-04-22

Parameters
	@TableName		Table to refresh deliveries for

Returns
	N/A


********************************************************************************************************************************************************/
AS
BEGIN
	
	SET NOCOUNT ON
	
	-- Declarations


	--checks
	IF NOT EXISTS (SELECT * FROM hub.MyNamespaces where SchemaName ='*') 
	BEGIN
		raiserror('you do not have access to this procedure.(RefreshAvailableDeliveries)',16,3)
		RETURN
	END

	BEGIN TRY

		-- Merge Latest Deliveries
		;WITH
			Valids AS 
		(
				SELECT DISTINCT 
					TRG_ENT_NM AS TableName, 
					DELIVERY_SQN_CRNT_RUN AS DELIVERY_SQN 
				FROM log.LOG_DD_DATA_DELIVERY (nolock)
				WHERE LOAD_ST_CODE = 'DLV OK'
				AND TRG_ENT_NM = @TableName
		),
			DLVs AS 
		(
				SELECT DISTINCT TableName 
				FROM Valids
		),
			SplitOK AS 
		(
				SELECT DISTINCT 
					TABLENAME AS TableName, 
					DELIVERY_SQN 
				FROM SPLITTER.[dbo].[SPLIT_LOG] 
				WHERE [STATUS] = 'SUCCEEDED'
				AND TABLENAME = @TableName
		),
			SplitNeeded AS 
		(
				SELECT 
					CVC.SchemaName, 
					CVC.TableName 
				FROM hub.CustomViewsConfig CVC
				INNER JOIN hub.ColumnInfo CI
					ON  CI.ObjectName=CVC.TableName
					AND CI.ColumnName = 'DST_CODE'
					AND CI.ObjectType = 'U'
					AND CI.SchemaName NOT IN ('XXX','TMP')
				WHERE Clause = 'WHERE' 
				AND SqlCode LIKE '%DST_CODE%'
				AND CVC.TableName = @TableName
		),	
			Deliveries AS 
		(
				SELECT 
					A.SchemaNameSubscriber AS SchemaName, 
					A.TableName, 
					PC.DELIVERY_SQN,
					PC.ACT_DTS,
					PC.Records,
					CASE WHEN DLVs.TableName IS NOT NULL AND Valids.TableName IS NULL THEN 'SKIP'
						 WHEN SN.TableName IS NOT NULL AND SO.TableName IS NULL THEN 'SPLIT_NOK'
						 ELSE 'Valids' 
						END AS Visibility,
					CASE WHEN FeedbackIsMandatory=1 THEN CASE WHEN LastDelivery>= PC.DELIVERY_SQN THEN 'DONE' ELSE 'TODO' END
						 ELSE 'RIVER' 
						END AS pointer, 
					A.LastDelivery
				FROM (	SELECT 
							TableName,
							DELIVERY_SQN,
							ACT_DTS, 
							ISNULL(sum(Records), 0) Records  
						FROM hub.PartitionContent (nolock) 
						WHERE TableName = @TableName
						GROUP BY
							TableName,
							DELIVERY_SQN,
							ACT_DTS ) PC
					INNER JOIN hub.Subscribers A(nolock)
						ON A.TableName = PC.TableName
					LEFT JOIN DLVs
						ON DLVs.TableName = PC.TableName
					LEFT JOIN Valids
						ON  Valids.TableName = PC.TableName 
						AND Valids.DELIVERY_SQN = PC.DELIVERY_SQN
					LEFT JOIN SplitNeeded SN
						ON  SN.TableName = A.TableName
						AND SN.SchemaName = A.SchemaNameSubscriber
					LEFT JOIN SplitOK SO
						ON  SO.TableName = A.TableName
						AND SO.DELIVERY_SQN = PC.DELIVERY_SQN
		),
			FollowingDelivery AS 
		(
				SELECT 
					SchemaName, 
					TableName, 
					MIN(DELIVERY_SQN) AS DELIVERY_SQN  
				FROM Deliveries  
				WHERE pointer='TODO' 
				AND Visibility ='Valids' 
				GROUP BY 
					SchemaName, TableName
		)
		MERGE INTO [hub].[AvailableDeliveries] AS TARGET
		USING (	SELECT 
					D.SchemaName, 
					D.TableName, 
					D.DELIVERY_SQN, 
					D.Records, 
					D.ACT_DTS,
					CASE WHEN pointer = 'RIVER' AND Visibility = 'Valids' THEN 'RIVER'
						 WHEN Visibility <> 'Valids' THEN Visibility
						 WHEN pointer = 'DONE' THEN pointer
						 WHEN D.DELIVERY_SQN = V.DELIVERY_SQN THEN 'NEXT'
						 WHEN D.LastDelivery < D.DELIVERY_SQN THEN pointer
					ELSE 'XXX' END AS pointer

				FROM Deliveries D
				LEFT JOIN FollowingDelivery V
					ON V.SchemaName = D.SchemaName 
					AND V.TableName = D.TableName 
					AND V.DELIVERY_SQN = D.DELIVERY_SQN	
				-- exclude unavailable deliveries
				WHERE  CASE WHEN pointer = 'RIVER' AND Visibility = 'Valids' THEN 'RIVER'
							WHEN Visibility <> 'Valids' THEN Visibility
							WHEN pointer = 'DONE' THEN pointer
							WHEN D.DELIVERY_SQN = V.DELIVERY_SQN THEN 'NEXT'
							WHEN D.LastDelivery < D.DELIVERY_SQN THEN pointer
						ELSE 'XXX' END NOT IN ('SPLIT_NOK', 'SKIP', 'DONE', 'TODO')
				) AS SOURCE
			ON (	SOURCE.SchemaName = TARGET.SchemaName 
				AND SOURCE.TableName = TARGET.TableName 
				AND SOURCE.DELIVERY_SQN = TARGET.DELIVERY_SQN 
				AND SOURCE.Records = TARGET.Records 
				AND SOURCE.ACT_DTS = TARGET.ACT_DTS 
				AND SOURCE.pointer = TARGET.pointer )
		-- When no longer an available delivery we delete from target table
		WHEN NOT MATCHED BY SOURCE 
			THEN DELETE 
		-- When now an available delivery we add to the target table
		WHEN NOT MATCHED BY TARGET
			THEN INSERT (SchemaName, TableName, DELIVERY_SQN, Records, ACT_DTS, pointer)
				 VALUES (SOURCE.SchemaName, 
						 SOURCE.TableName, 
						 SOURCE.DELIVERY_SQN, 
						 SOURCE.Records, 
						 SOURCE.ACT_DTS, 
						 SOURCE.pointer);
						 

	END TRY
	BEGIN CATCH
		DECLARE @ErrorMessage varchar(MAX) = ERROR_MESSAGE(),
				@ErrorSeverity int = ERROR_SEVERITY(),
				@ErrorState smallint = ERROR_STATE()

		INSERT INTO [hub].ErrorLog([SPID],[DatetimeStamp],[Username],[Procedure],Message, Severity, State)
		VALUES(@@SPID,getdate(),ORIGINAL_LOGIN (),OBJECT_NAME(@@PROCID),@ErrorMessage, @ErrorSeverity,@ErrorState);
	
		RAISERROR ( @ErrorMessage, @ErrorSeverity, @ErrorState);		
	END CATCH
END


GO
/****** Object:  StoredProcedure [hub].[stp_CloseCursor]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [hub].[stp_CloseCursor] (@CursorName varchar(1000))
AS
BEGIN
	DECLARE @SQL varchar(8000)
	SET @SQL ='
		if  CURSOR_STATUS(''global'','''+@CursorName+''') in (1,0)
			CLOSE '+@CursorName
	EXEC(@SQL)
	SET @SQL ='
		if  CURSOR_STATUS(''global'','''+@CursorName+''') =-1
			DEALLOCATE '+@CursorName+''
	EXEC(@SQL)
END
GO
/****** Object:  StoredProcedure [hub].[stp_Constraints]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [hub].[stp_Constraints] ( @TableName varchar(100), @SchemaNameTo varchar(10), @SchemaNameFrom varchar(10)) AS
BEGIN

-- procedure code:  C

/* 
this procedure will add (NOT NULL)contraints to tables based on the configurtion. at the moment based on the exceptions but when we add column-level configuration for tables,
it can be based on that.
in order to have flexibility and handle the case when a new column gets added that is also mandatory. We opted not for setting the column mandatory but to have a constraint that, based on the data present, tightents over time.
the typical progesion is in 3 steps:
	1. the column is mandatory when ACT_DTS is greater than 31-12-9999 (meaning not mandatory at all)
	2. the column is mandatory when ACT_DTS is greater than a certain date. this date will be the first time that alle values for that ACT_DTS for that column are filled. (meaning mandatory from now on)
	3. the column is mandatory (when there are no ACT_DTS present that aren;t completely filled)

PREV_ACT_DTS is an exception because we need to allow the first delivery to have NULL values, so this is excluded from going directly to step 3  

the procedure gets called in 4 specific situations which calls for 4 sets of specific actions
	* when a new tables is begin deployed (dbo.stp_NewTable where @SchemaNameTo ='dbo' and @SchemaNameFrom is null )
		this will skip to step 3 for all contraints to make sure the supplier fails when testing for not adhering to their own specifications
	* when an existing table is being altered (dbo.stp_NewTable  where @SchemaNameTo ='dbo' and @SchemaNameFrom is not null )
		This will copy the existing constraints from the current version to the new one before adding possible new ones.
	* when we need a table for switching when deleting data  (dbo.stp_CleanUpData  where @SchemaNameTo ='TMP' and @SchemaNameFrom not is null )
		This will copy the existing constraints from the current version to the TMP one.
	* to check all tables if anything can be further constrained (dbo.stp_CleanUpData  where @SchemaNameTo is null and @SchemaNameFrom is null )
		This will check if any constraint in step 1 or 2 can be moved a step further.


*/
BEGIN TRY
	DECLARE @StagingDB varchar(100)
	DECLARE @LastNull datetime
	DECLARE @FirstFill datetime
	DECLARE @MAX_ACT_DTS datetime
	DECLARE @MIN_ACT_DTS datetime
	DECLARE @SQL varchar(8000)
	DECLARE @SchemaName varchar(10)
	DECLARE @ObjectName varchar(100)
	DECLARE @ColumnName varchar(100)
	DECLARE @Indicator int
	DECLARE @Definition varchar(8000)
	DECLARE @WithNoCheck bit
	declare @CopyConstraints bit=0
	declare @AddConstraints bit=0
	declare @LimitConstraints bit=0
	declare @MaxConstraints bit=0
	declare @FromTableExists bit=0
	declare @ToTableExists bit=0

	CREATE TABLE #MinMAx (
		id int,
		LastNull datetime, 
		FirstFill datetime )

	--constants/parameters
	SELECT @SchemaNameFrom= hub.Fn_ValidInput('schema',@SchemaNameFrom)
	SELECT @SchemaNameTo= hub.Fn_ValidInput('schema',@SchemaNameTo)
	SELECT @TableName= hub.Fn_Alias (@SchemaName,@TableName)
	if exists(select top 1 1 from hub.PartitionInfo where TableName=@TableName and SchemaName=@SchemaNameFrom) -- if table is emptpy, it might as well not exist.
		set @FromTableExists=1
	if exists(select top 1 1 from hub.ObjectInfo where ObjectName=@TableName and SchemaName=@SchemaNameTo)
		set @ToTableExists=1

	--checks
	IF NOT EXISTS (SELECT * FROM hub.MyNamespaces where SchemaName ='*') 
	BEGIN
		raiserror('you do not have access to this procedure.(stp_Constraints)',16,3)
		RETURN
	END
	IF (select count(*) from hub.Suppliers where TableName= isnull( @TableName,TableName))=0
	BEGIN
		raiserror('The parameter @TableName is unknowm.(stp_Constraints)',16,3)
		RETURN
	END

	IF (select count(*) from hub.Namespaces where SchemaName= isnull( @SchemaNameTo,SchemaName))=0 and @SchemaNameTo not in ('dbo','TMP', 'TRANSF')
	BEGIN
		raiserror('The parameter @SchemaNameTo is unknowm.(stp_Constraints)',16,3)
		RETURN
	END	
	IF (select count(*) from hub.Namespaces where SchemaName= isnull( @SchemaNameFrom,SchemaName))=0 
	BEGIN
		raiserror('The parameter @SchemaNameFrom is unknowm.(stp_Constraints)',16,3)
		RETURN
	END	
	IF not @SchemaNameFrom is null and not @TableName is null
	begin
		IF (select count(*) from hub.Suppliers where TableName= @TableName and @SchemaNameFrom=SchemaNameSupplier)=0
		BEGIN
			raiserror('The parameters @TableName and @SchemaNameFrom do not match.(stp_Constraints)',16,3)
			RETURN
		END
	end

	-- TMP TABLE
	if @SchemaNameTo IN ('TMP', 'TRANSF')
	begin
		set @CopyConstraints=1
	end
	-- new/first version of table
	if @SchemaNameTo='dbo' 
	begin
		if @FromTableExists =1
		begin
			set @CopyConstraints=1
			set @AddConstraints=1
		end
		if @FromTableExists =0
			set @MaxConstraints=1		
	end
	-- check for tighter constrains
	if @SchemaNameTo is null 
	begin
		set @AddConstraints=1
		set @LimitConstraints=1
	end

	-- removing illegal constraints on existing table(s)
	DECLARE EachIllegal_C CURSOR
	READ_ONLY
	FOR		SELECT DISTINCT 'USE '+CC.DatabaseName+';
			IF EXISTS(select * from sys.check_constraints where parent_object_id = object_id('''+CC.SchemaName+'.'+CC.ObjectName+''') and name='''+CC.ConstraintName+''')
			ALTER TABLE ['+CC.SchemaName+'].['+CC.ObjectName+'] DROP CONSTRAINT ['+CC.ConstraintName+']; '
			FROM  hub.ConstraintInfo CC (nolock)
			left join hub.Exceptions E
				on E.TableName=CC.ObjectName
				and CC.ConstraintDefinition like '%'+E.ColumnExtra +'%'
				and E.ExceptionType='NOT NULL'
				AND CC.ConstraintName = E.TableName+'_'+E.ColumnExtra+'_NOTNULL'
			where E.ExceptionType is null
				and CC.SchemaName not in ('log','hub','XXX')
				and CC.ObjectName=isnull(@TableName,CC.ObjectName)
				and (	CC.SchemaName = coalesce(@SchemaNameFrom,@SchemaNameTo,CC.SchemaName)
						or CC.SchemaName = coalesce(@SchemaNameTo,@SchemaNameFrom,CC.SchemaName)
					)
	OPEN EachIllegal_C
	FETCH NEXT FROM EachIllegal_C INTO @SQL
	WHILE (@@fetch_status <> -1)
	BEGIN
		IF (@@fetch_status <> -2)
		BEGIN
			EXEC(@SQL)
		END
		FETCH NEXT FROM EachIllegal_C INTO @SQL
	END
	CLOSE EachIllegal_C
	DEALLOCATE EachIllegal_C
	
	if @CopyConstraints=1 -- wil only be done when tablename is filled
	begin
		DECLARE EachCopy_C CURSOR
		READ_ONLY
		FOR 	select DISTINCT 
				 'USE '+CI_from.DatabaseName+' ;ALTER TABLE '+@SchemaNameTo+'.['+ CI_from.ObjectName +'] WITH ' + CASE WHEN CI_from.WithNoCheck = 1 THEN 'NOCHECK' ELSE 'CHECK' END + ' ADD CONSTRAINT ['+CI_from.ConstraintName+'] 
				 CHECK (' + CI_from.ConstraintDefinition +')'
				from hub.ConstraintInfo CI_from  
				left join hub.ConstraintInfo CI_to  
					on CI_to.ObjectName=CI_from.ObjectName
					and CI_to.SchemaName=@SchemaNameTo
				WHERE  CI_from.ObjectName=@TableName						
						and CI_from.SchemaName =@SchemaNameFrom
						and CI_to.ObjectName is null
		OPEN EachCopy_C
		FETCH NEXT FROM EachCopy_C INTO @SQL
		WHILE (@@fetch_status <> -1)
		BEGIN
			IF (@@fetch_status <> -2)
			BEGIN
				exec (@SQL)
			END
			FETCH NEXT FROM EachCopy_C INTO @SQL
		END
		CLOSE EachCopy_C
		DEALLOCATE EachCopy_C
	end

if @AddConstraints=1
	begin
	-- adding new empty contraints, either only dbo or only current table
	DECLARE EachNew_C CURSOR
	READ_ONLY
	FOR		SELECT DISTINCT 'USE '+ C.DatabaseName+';
			ALTER TABLE ['+C.SchemaName+'].['+C.ObjectName+']  WITH CHECK ADD  CONSTRAINT ['+C.ObjectName+'_'+C.ColumnName+'_NOTNULL] CHECK  ((NOT ['+C.ColumnName+'] IS NULL AND [ACT_DTS]>''99991231'') OR [ACT_DTS]<=''99991231''); '
			from hub.Exceptions E
				inner join hub.ColumnInfo C
					on E.TableName=C.ObjectName
					and  C.SchemaName = case when @SchemaNameTo='dbo' then 'dbo' else isnull(@SchemaNameFrom,C.SchemaName) end
					and C.ObjectType='U'
					and C.ColumnName=E.ColumnExtra
					and E.SchemaName=C.SchemaName
				left join hub.ConstraintInfo CI
					on CI.ObjectName=E.TableName
					and CI.ConstraintName = E.TableName+'_'+E.ColumnExtra+'_NOTNULL'
					and CI.ConstraintDefinition like '%'+E.ColumnExtra +'%'
					and CI.SchemaName=C.SchemaName
				where E.ExceptionType='NOT NULL'
				and E.TableName = isnull(@TableName, E.TableName)
				and CI.ObjectName is null
	OPEN EachNew_C
	FETCH NEXT FROM EachNew_C INTO @SQL
	WHILE (@@fetch_status <> -1)
	BEGIN
		IF (@@fetch_status <> -2)
		BEGIN
			EXEC(@SQL)
		END
		FETCH NEXT FROM EachNew_C INTO @SQL
	END
	CLOSE EachNew_C
	DEALLOCATE EachNew_C
	end

if @MaxConstraints=1 -- means there's only a dbo table and nothing else
	begin
	DECLARE EachMax_C CURSOR
	READ_ONLY
	FOR		SELECT DISTINCT 'USE '+ C.DatabaseName+';
			ALTER TABLE ['+C.SchemaName+'].['+C.ObjectName+']  WITH CHECK ADD  CONSTRAINT ['+C.ObjectName+'_'+C.ColumnName+'_NOTNULL] CHECK  ((NOT ['+C.ColumnName+'] IS NULL)); '
			from hub.Exceptions E
				inner join hub.ColumnInfo C
					on E.TableName=C.ObjectName
					and  C.SchemaName = 'dbo'
					and C.ObjectType='U'
					and C.ColumnName=E.ColumnExtra
				left join hub.ConstraintInfo CI
					on CI.ObjectName=E.TableName
					and CI.ConstraintName = E.TableName+'_'+E.ColumnExtra+'_NOTNULL'
					and CI.ConstraintDefinition like '%'+E.ColumnExtra +'%'
					and CI.SchemaName=C.SchemaName
				where E.ExceptionType='NOT NULL'
				and E.TableName = @TableName
				and CI.ObjectName is null
				and C.ColumnName <>'PREV_ACT_DTS'
	OPEN EachMax_C
	FETCH NEXT FROM EachMax_C INTO @SQL
	WHILE (@@fetch_status <> -1)
	BEGIN
		IF (@@fetch_status <> -2)
		BEGIN
			EXEC(@SQL)
		END
		FETCH NEXT FROM EachMax_C INTO @SQL
	END
	CLOSE EachMax_C
	DEALLOCATE EachMax_C

	end

if @LimitConstraints=1
	begin

		DECLARE EachLimit_C CURSOR

		FOR 
			select DISTINCT DatabaseName, SchemaName, ObjectName, replace(replace(ConstraintName,isnull(@TableName,ObjectName) +'_',''),'_NOTNULL','') ColumnName, case when charindex('99991231',ConstraintDefinition)>0 then 1 else 0 end Indicator , ConstraintDefinition, WithNoCheck
			from hub.ConstraintInfo
			where  charindex('[ACT_DTS]',ConstraintDefinition)>0 
				and SchemaName not in ('dbo','XXX','TMP','hub','log','TRANSF')
				and ObjectName = isnull(@TableName,ObjectName)
				and SchemaName = isnull(@SchemaNameTo,SchemaName)
				and ConstraintName like  isnull(@TableName,ObjectName)+'_%_NOTNULL'
		OPEN EachLimit_C

		FETCH NEXT FROM EachLimit_C INTO @StagingDB, @SchemaName, @ObjectName, @ColumnName, @Indicator, @Definition, @WithNoCheck
		WHILE (@@fetch_status <> -1)
		BEGIN
			IF (@@fetch_status <> -2)
			BEGIN
				set @MAX_ACT_DTS = null
				set @MIN_ACT_DTS = null
				
				select	@MAX_ACT_DTS=MAX(ACT_DTS) , 
						@MIN_ACT_DTS=MIN(ACT_DTS) 
				from hub.PartitionContent 
				where TableName=@ObjectName

				if @Indicator =1 -- no enforcing of NOT NULL yet, check if there is a delivery from when it's always filled
				begin
					truncate table #MinMAx
					
					set @SQL = '
					insert into  #MinMAx (LastNull,FirstFill)
					select max(case when ['+@ColumnName+'] is null then ACT_DTS else NULL end) LastNull,
						 MIN(case when ['+@ColumnName+'] is null then NULL else ACT_DTS end)  FirstFill
					from ['+@StagingDB+'].['+@SchemaName+'].['+@ObjectName+']  '
					exec (@SQL)
					
					set @LastNull = null
					set @FirstFill = null
					select @LastNull=CONVERT(VARCHAR,max(LastNull),120) from #MinMAx
					select @FirstFill=CONVERT(VARCHAR,max(FirstFill),120) from #MinMAx

				
					if (not @FirstFill is null and not @LastNull is null and @LastNull<@MAX_ACT_DTS) -- when, from a delivery onwards, the column is always filled
					begin
						set @SQL='USE '+@StagingDB+';
							IF EXISTS(select * from sys.check_constraints where parent_object_id = object_id('''+@SchemaName+'.'+@ObjectName+''') and name='''+@ObjectName+'_'+@ColumnName+'_NOTNULL'')
							ALTER TABLE ['+@SchemaName+'].['+@ObjectName+'] DROP CONSTRAINT ['+@ObjectName+'_'+@ColumnName+'_NOTNULL]; 
							ALTER TABLE ['+@SchemaName+'].['+@ObjectName+']  WITH ' + CASE WHEN @WithNoCheck = 1 THEN 'NOCHECK' ELSE 'CHECK' END + ' ADD  CONSTRAINT ['+@ObjectName+'_'+@ColumnName+'_NOTNULL] CHECK  ((NOT ['+@ColumnName+'] IS NULL AND [ACT_DTS]>'''+convert(varchar,dateadd(second,1,@LastNull),120)+''') OR [ACT_DTS]<='''+convert(varchar,dateadd(second,1,@LastNull),120)+''')'
						exec (@SQL)
					end
					if (not @FirstFill is null and @LastNull is null) -- when the column is filled from the first delivery
					begin
						set @SQL='USE '+@StagingDB+';
							IF EXISTS(select * from sys.check_constraints where parent_object_id = object_id('''+@SchemaName+'.'+@ObjectName+''') and name='''+@ObjectName+'_'+@ColumnName+'_NOTNULL'')
							ALTER TABLE ['+@SchemaName+'].['+@ObjectName+'] DROP CONSTRAINT ['+@ObjectName+'_'+@ColumnName+'_NOTNULL]; 
							ALTER TABLE ['+@SchemaName+'].['+@ObjectName+']  WITH ' + CASE WHEN @WithNoCheck = 1 THEN 'NOCHECK' ELSE 'CHECK' END + ' ADD  CONSTRAINT ['+@ObjectName+'_'+@ColumnName+'_NOTNULL] CHECK  (NOT ['+@ColumnName+'] IS NULL )'
						exec (@SQL)
					end
				end
				if @Indicator =0
				begin
					  SET @Definition = SUBSTRING(@Definition, CHARINDEX('OR [ACT_DTS]<=',@Definition)+14,100)
					SET @Definition= CONVERT(VARCHAR,CONVERT(DATETIME, REPLACE( REPLACE(@Definition,')',''),'''','')),120)

					if @MIN_ACT_DTS >@Definition	-- after the last delivery containing NULL is cleaned.
					begin
						set @SQL='USE '+@StagingDB+';
							IF EXISTS(select * from sys.check_constraints where parent_object_id = object_id('''+@SchemaName+'.'+@ObjectName+''') and name='''+@ObjectName+'_'+@ColumnName+'_NOTNULL'')
							ALTER TABLE ['+@SchemaName+'].['+@ObjectName+'] DROP CONSTRAINT ['+@ObjectName+'_'+@ColumnName+'_NOTNULL]; 
							ALTER TABLE ['+@SchemaName+'].['+@ObjectName+']  WITH ' + CASE WHEN @WithNoCheck = 1 THEN 'NOCHECK' ELSE 'CHECK' END + ' ADD  CONSTRAINT ['+@ObjectName+'_'+@ColumnName+'_NOTNULL] CHECK  (NOT ['+@ColumnName+'] IS NULL )'
						exec (@SQL)
					end
				end
			END
			FETCH NEXT FROM EachLimit_C INTO @StagingDB, @SchemaName, @ObjectName, @ColumnName, @Indicator, @Definition, @WithNoCheck
		END
		CLOSE EachLimit_C
		DEALLOCATE EachLimit_C


	

	END
END TRY
BEGIN CATCH
	 DECLARE @ErrorMessage varchar(MAX) = ERROR_MESSAGE(),
				@ErrorSeverity int = ERROR_SEVERITY(),
				@ErrorState smallint = ERROR_STATE()
 	INSERT INTO [hub].ErrorLog([SPID],[DatetimeStamp],[Username],[Procedure],Message, Severity, State)
	VALUES(@@SPID,getdate(),ORIGINAL_LOGIN (),OBJECT_NAME(@@PROCID),@ErrorMessage, @ErrorSeverity,@ErrorState);

	exec hub.stp_CloseCursor 'EachIllegal_C'
	exec hub.stp_CloseCursor 'EachCopy_C'
	exec hub.stp_CloseCursor 'EachNew_C'
	exec hub.stp_CloseCursor 'EachMax_C'
	exec hub.stp_CloseCursor 'EachLimit_C'

	RAISERROR ( @ErrorMessage, @ErrorSeverity, @ErrorState)  ;
	
END CATCH

END


GO
/****** Object:  StoredProcedure [hub].[stp_PartitionMaintenance]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [hub].[stp_PartitionMaintenance]( @Mode varchar(1))  AS
BEGIN
	/* code: PM
	this procedure adds and deleted new partitions on both databases.
	adding partitions depends on the time ( always 31 days in the past and future) and on the data present.
	Each ACT_DTS that exists should have it's own partition PLUS the day before/after.
	if there are 3 partitions in a row that are empty, the middle one gets deleted. This to ensure than deleting a partition will never trigger moving data to a new partition.
	there are 3 modes:
		A: only add partitions ( eg. called from RefreshPartitions in case an unexpected ACT_DTS is found)
		D: only delete partitions 
		B: both add and delete partitions ( eg. called from CleanUpData since that will delete data and gives rise to the possibility of partitions being eligible for deletion)
	*/

	--declarations
	DECLARE @SQL varchar(8000)
	Create table #Filegroup ( -- using a table since a filegroup may not exist in both databases.
		DatabaseName varchar(100), 
		filegroupName varchar(100))

	--constants/parameters
	SELECT @Mode = hub.Fn_ValidInput('mode',@Mode)
	set @SQL=''
	select @SQL ='use '+ParamValue+';
		if (select top 1 1  from sys.filegroups where name =''DATA'')=1 
		insert into #Filegroup select '''+ParamValue+''',''DATA''
	else
		insert into #Filegroup select '''+ParamValue+''',''PRIMARY'' 
		'
		from hub.Parameters where ParamName='StagingInDB'
	exec (@SQL) -- the DATA filegroup supersedes the PRIMARY filegroup for data storage

	set @SQL=''
	select @SQL ='use '+ParamValue+';
		if (select top 1 1  from sys.filegroups where name =''DATA'')=1 
		insert into #Filegroup select '''+ParamValue+''',''DATA''
	else
		insert into #Filegroup select '''+ParamValue+''',''PRIMARY'' 
		'
		from hub.Parameters where ParamName='StagingOutDB'
	exec (@SQL)

	--checks
	IF NOT EXISTS (SELECT * FROM hub.MyNamespaces where SchemaName ='*') 
	BEGIN
		raiserror('you do not have access to this procedure.(stp_PartitionMaintenance)',16,3)
		RETURN
	END
	if @Mode not in ('A','D','B')
	BEGIN
		RAISERROR('The parameter @Mode needs to have the value A(dd), D(elete) or B(oth).(stp_PartitionMaintenance)',16,1)
		RETURN
	END

	-- mandatory partitions: partitions for 31 days round today are always present.
	select top 62 P.ParamValue Databasename, convert(datetime2,dateadd(DD,ROW_NUMBER() over( order by object_id)-31,convert(date,GETDATE()))) Boundary
	into #MandatoryPartitions_PM
	from sys.objects
	inner join hub.Parameters P
	on P.ParamName in ('StagingInDB')

	insert into #MandatoryPartitions_PM
	select top 62 P.ParamValue Databasename, convert(datetime2,dateadd(DD,ROW_NUMBER() over( order by object_id)-31,convert(date,GETDATE()))) Boundary
	from sys.objects
	inner join hub.Parameters P
	on P.ParamName in ('StagingOutDB')

	-- mandatory partitions based on data: the filled partion plus the day before plus the day after.
	;with	Bron as (
				SELECT distinct O.DatabaseName,
					convert(date,[ACT_DTS]) ACT_DT
				FROM [hub].[PartitionContent] PC
				inner join hub.Suppliers S
					on S.TableName=PC.TableName
				inner join hub.ObjectInfo O
					on O.ObjectName=S.TableName
					and O.SchemaName=S.SchemaNameSupplier
					and O.ObjectType='U')
			, Nodig as( select DatabaseName, ACT_DT from Bron -- partition 1 day earlier
						UNIOn select DatabaseName,dateadd (DAY,1,ACT_DT) from Bron  -- the partition for the ACT_DTS having data
						UNIOn select DatabaseName,dateadd(DAY,2,ACT_DT) from Bron ) -- partition 1 day later
	insert into #MandatoryPartitions_PM
	select DatabaseName, convert(datetime2,convert(date,ACT_DT)) Boundary
	from Nodig

	--adding partitions
	if @Mode in ('A','B')
	BEGIN
		set @SQL=''

		SELECT  DISTINCT 
			'USE '+M.Databasename+'; ALTER PARTITION SCHEME [PS_Daily] NEXT USED ['+FG.filegroupName+']; ALTER PARTITION FUNCTION [PF_Daily] ()  SPLIT RANGE ('''+CONVERT(varchar,Boundary,112)+''');' Code
		into #AddPartition_PM
		from #MandatoryPartitions_PM M
			inner join #Filegroup FG
				on FG.DatabaseName=M.Databasename
			left join hub.PartitionFunctionInfo PF
				on CONVERT(varchar,PF.UpperBoundary,112) = CONVERT(varchar,M.Boundary,112)
				and PF.DatabaseName=M.Databasename
		where PF.DatabaseName is null

		DECLARE AddPartition_PM CURSOR
		READ_ONLY
		FOR	SELECT Code from #AddPartition_PM
		OPEN AddPartition_PM
		FETCH NEXT FROM AddPartition_PM INTO @SQL
		WHILE (@@fetch_status <> -1)
		BEGIN
			IF (@@fetch_status <> -2)
			BEGIN
				--print @SQL
				EXEC(@SQL)
			END
			FETCH NEXT FROM AddPartition_PM INTO @SQL
		END
		CLOSE AddPartition_PM
		DEALLOCATE AddPartition_PM

		-- adding records to hub.Partitions for the newly created partitionId's
		insert into hub.Partitions(TableName, PartitionId, Records, Pages, Fase, MutationDate, data_space_id)
		select PIN.TableName, PIN.PartitionId, PIN.Records, PIN.Pages, 'Transfer' Fase, getdate() MutationDate, PIN.data_space_id
		from hub.PartitionInfo PIN
			left join hub.Partitions P
				on P.PartitionId=PIN.PartitionId
				and P.TableName=PIN.TableName
		where PIN.Records>0
			and P.PartitionId is null
	END

	if @Mode in ('D','B')
	BEGIN
		-- determine all empty partitions
		select DatabaseName,PartitionFunction,PartitionSchema,PartitionNumber,UpperBoundary
		into #PFI_PM
		from hub.PartitionFunctionInfo PFI
		WHERE PFI.Rows=0

		-- determine empty partions where both neighbours are empty too and the partition isn't mandatory.
		select 'USE '+E2.DatabaseName+'; ALTER PARTITION FUNCTION '+E2.PartitionFunction+'() MERGE RANGE ('''+CONVERT(varchar,E2.UpperBoundary,112)+''')' code
		into #DeletePartitions_PM
		from #PFI_PM E1
			inner join #PFI_PM E2
				on E1.PartitionNumber+1=E2.PartitionNumber
				and E1.DatabaseName=E2.DatabaseName
				and E1.PartitionSchema=E2.PartitionSchema
			inner join #PFI_PM E3
				on E2.PartitionNumber+1=E3.PartitionNumber
				and E2.DatabaseName=E3.DatabaseName
				and E2.PartitionSchema=E3.PartitionSchema					
			left join  #MandatoryPartitions_PM F
				on E2.UpperBoundary=F.Boundary
				and E2.DatabaseName=F.Databasename
		WHERE F.Databasename is null

		set @SQL=''
		DECLARE DeletePartitions_PM CURSOR
		READ_ONLY
		FOR	SELECT code from #DeletePartitions_PM
		OPEN DeletePartitions_PM
		FETCH NEXT FROM DeletePartitions_PM INTO @SQL
		WHILE (@@fetch_status <> -1)
		BEGIN
			IF (@@fetch_status <> -2)
			BEGIN
				--print @SQL
				EXEC(@SQL)
			END
			FETCH NEXT FROM DeletePartitions_PM INTO @SQL
		END
		CLOSE DeletePartitions_PM
		DEALLOCATE DeletePartitions_PM
	END
END
GO
/****** Object:  StoredProcedure [hub].[stp_RefreshPartition]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [hub].[stp_RefreshPartition]  AS
BEGIN
-- procedure code:  RP
/*
this procedure determines whether the partiiondata needs to be refreshed, but doesn't actually do it. RefreshPartitionContent does that.
the purpose is to monitor when a table is eligible to be refreshed and keeping the metadata consistent between hub.Partitions and hub.PartitionContent
the determination is based on record count.
if the record count differs from the stored one, the Fase becomes 'Transfer' and the record count is updated.
if the record count is the same as the stored one and the fase is 'Transfer', the fase becomes 'Stable'. this means the metadate should be refreshed.
the refresh is done by RefreshPartitionContent and will eventualy make the fase 'Processed', meaning the metadata is up to date for this partition.


*/
	SET NOCOUNT ON
	--declarations
	Declare @StagingInDB varchar(100)
	Declare @StagingOutDB varchar(100)
	DECLARE @SQL			varchar(8000)
	DECLARE @SQLdb			varchar(8000)
	DECLARE @MutationDate datetime2
	DECLARE @TableName varchar(100)
	DECLARE @PartitionId varchar(100)

	create table #Partition(
		DatabaseName varchar(50),
		SchemaName varchar(10),
		TableName varchar(50),
		PartitionId bigint,
		Records bigint,
		Pages decimal(22,0))

	--constants/parameters
	set @MutationDate=getdate()
	select @StagingOutDB = hub.Fn_ValidInput('database',ParamValue) FROM hub.Parameters where ParamName = 'StagingOutDB' 
	select @StagingInDB = hub.Fn_ValidInput('database',ParamValue) FROM hub.Parameters where ParamName ='StagingInDB'
	
	--checks
	IF NOT EXISTS (SELECT * FROM hub.MyNamespaces where SchemaName ='*') 
	BEGIN
		raiserror('you do not have access to this procedure.(stp_RefreshPartition)',16,3)
		RETURN
	END

	--current partition data
	INSERT INTO #Partition (DatabaseName,SchemaName,TableName,PartitionId,Records,Pages)
	select DatabaseName,SchemaName,I.TableName,PartitionId,sum(Records),sum(Pages) 
	from hub.PartitionInfo I
		inner join hub.Suppliers S
			on S.SchemaNameSupplier=I.SchemaName
			and S.TableName=I.TableName
	GROUP BY
		DatabaseName,
		SchemaName,
		I.TableName, 
		PartitionId

	-- deleting missing partitions
		delete from P
		from hub.PartitionContent P
			left join #Partition S
				on S.TableName=P.TableName
				and S.PartitionId=P.PartitionId
		where S.TableName is null

		delete from P
		from hub.Partitions P
			left join #Partition S		
				on S.TableName=P.TableName
				and S.PartitionId=P.PartitionId
		where S.TableName is null

		DELETE 
		FROM D
		FROM hub.PartitionContent D
		left join hub.Partitions P
			on D.TableName=P.TableName
			and D.PartitionId=P.PartitionId
		WHERE P.TableName is null

		DELETE 
		FROM P
		FROM hub.Partitions P
		left join hub.PartitionContent D
			on D.TableName=P.TableName
			and D.PartitionId=P.PartitionId
		WHERE D.TableName is null and P.Fase ='Processed'

	--update partition table for Fase "Stable" ( no change since last time)
	update P
	set
		P.Records=T.Records,
		P.Pages=T.Pages,
		P.Fase='Stable',
		P.MutationDate=@MutationDate
	from hub.Partitions P
		inner join #Partition T
			on T.TableName=P.TableName
			and T.PartitionId=P.PartitionId
			and T.Records=P.Records
			and P.Fase<>'Processed'

	--update partition table for Fase "Transfer" (changes since last time)
	update P
	set
		P.Records=isnull(T.Records,-1),
		P.Pages=isnull(T.Pages,-1),
		P.Fase='Transfer',
		P.MutationDate=@MutationDate
	from hub.Partitions P
		inner join #Partition T
			on T.TableName=P.TableName
			and T.PartitionId=P.PartitionId
	where 
		isnull(T.Records,-1) <> isnull(P.Records,-1)


	--update partition table for Fase "Transfer" (new since last time)
	insert into hub.Partitions (TableName, PartitionId, Records, Pages, Fase, MutationDate)
	select T.TableName, T.PartitionId, T.Records, T.Pages,  'Transfer', @MutationDate
	from #Partition T
		left join hub.Partitions P
			on T.TableName=P.TableName
			and T.PartitionId=P.PartitionId
	where P.TableName is null

	-- processing stable partitions
	while (select count(*) from hub.Partitions 	where Fase ='Stable')>0
	begin
		select top 1 @TableName=TableName, @PartitionId=PartitionId
		from hub.Partitions 
		where Fase ='Stable'
		order by TableName asc, PartitionId asc
		
		exec hub.stp_RefreshPartitionContent @TableName, @PartitionId
	end

	--adding partitions if needed
	exec hub.[stp_PartitionMaintenance] 'A'
END
GO
/****** Object:  StoredProcedure [hub].[stp_RefreshPartitionContent]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [hub].[stp_RefreshPartitionContent] (@TableName varchar(8000),@PartitionId varchar(100))  AS
BEGIN
/*
this procedure refreshes the partition metadata for 1 table or an partition within that table.
it first puts the fase of hub.Partitions as 'Processing' to indicate this is currently done.

also from this side, the 2 hub tables about partitions are kept in sync.
then a count is made an the PartitionContent is updated based on the data found.

lastely, the partition is defragmented to improve performance. 
this is done on a table level and not on a partition level to simplyfy the code while with the fragmentation threshold, it is expected that only new partitions will qualify.

*/
	SET NOCOUNT ON
	--declarations
	declare @ColumnName varchar(8000)
	declare @SchemaName varchar(10)
	declare @DatabaseName varchar(100)
	declare @PartitionFunction varchar(100)
	declare @PartitionNumber varchar(10)
	DECLARE @MutationDate datetime2
	DECLARE @ObjectId bigint
	declare @SQL varchar(8000)

	--constants/parameters
	set @MutationDate=getdate()
	SELECT @TableName= hub.Fn_ValidInput('table',@TableName)
	
	SELECT	@SchemaName= hub.Fn_ValidInput('schema',S.SchemaNameSupplier)
	FROM hub.Suppliers S
		left join hub.Exceptions E
			On E.SchemaName=S.SchemaNameSupplier
			and E.TableName=S.TableName
			and E.ExceptionType='ALIAS'
	WHERE @TableName in (E.TableName ,E.TableAlias ,S.TableName)
	SELECT @TableName= hub.Fn_Alias (@SchemaName,@TableName)

	select @DatabaseName= DatabaseName, @PartitionFunction=PartitionFunction from hub.PartitionInfo
	where TableName=@TableName
	and SchemaName=@SchemaName

	set ANSI_WARNINGS OFF
	select @ColumnName = max(isnull(
			case when ColumnName='DIH__PUBLICATION_INSTANCE_DATE' then ColumnName else null end,
			case when ColumnName='STI_LOAD_DTS' then ColumnName else null end))
	from hub.ColumnInfo CI
	where CI.ObjectName=@TableName
	and CI.ObjectType='U'
	and CI.SchemaName =@SchemaName
	set ANSI_WARNINGS ON
	
	--checks
	IF NOT EXISTS (SELECT * FROM hub.MyNamespaces where SchemaName ='*') 
	BEGIN
		raiserror('you do not have access to this procedure.(stp_RefreshPartitionContent)',16,3)
		RETURN
	END
	if @TableName is null
	BEGIN
		RAISERROR('The parameter @TableName needs to be filled.(stp_RefreshPartitionContent)',16,1)
		RETURN
	END
	IF (SELECT COUNT(*) from hub.Suppliers where TableName=@TableName)=0 
	BEGIN
		raiserror('Table does not exist.(stp_RefreshPartitionContent)',16,3)
		RETURN
	END	

	--update status
	update hub.Partitions
	set Fase ='Processing'
	where 
	TableName=@TableName 
	and PartitionId=isnull(@PartitionId,PartitionId)

	--live partition data (not stored)
	select 
		DatabaseName, 
		PartitionFunction,
		PartitionNumber,					
		I.TableName, 
		PartitionId, 
		Records ,
		Pages
	into #PartitionInfo_RPC
	from hub.PartitionInfo I
		inner join hub.Suppliers S
			on S.SchemaNameSupplier=I.SchemaName
			and S.TableName=I.TableName
	where 
		I.TableName=@TableName 
		and SchemaName=@SchemaName
		and PartitionId=isnull(@PartitionId,PartitionId)

	--inserting new partitions in metadata
	insert into hub.Partitions (TableName, PartitionId, Records, Pages, Fase, MutationDate)
	select T.TableName, T.PartitionId, sum(T.Records), sum(T.Pages),  'Processing', @MutationDate
	from #PartitionInfo_RPC T
		inner join hub.Suppliers S
			on S.SchemaNameSupplier=@SchemaName
			and S.TableName=T.TableName
		left join hub.Partitions P
			on T.TableName=P.TableName
			and T.PartitionId=P.PartitionId
	where P.TableName is null
	group by  T.TableName, T.PartitionId

	-- deleting partitions from metadata that are no longer found
	delete from PC
	from hub.PartitionContent PC
	left join #PartitionInfo_RPC PIN
	on PIN.TableName=PC.TableName
	and PIN.PartitionId=PC.PartitionId
	where PC.PartitionId=isnull(@PartitionId,PC.PartitionId)
	and PIN.PartitionId = null

	delete from P
	from hub.Partitions P
	left join #PartitionInfo_RPC PIN
	on PIN.TableName=P.TableName
	and PIN.PartitionId=P.PartitionId
	where P.PartitionId=isnull(@PartitionId,P.PartitionId)
	and PIN.PartitionId = null


	-- find the partition(s) in the table that need to be refreshed.
	select 
	isnull(PC.PartitionId, PIN.PartitionId) PartitionId,
	isnull(PIN.PartitionNumber,0) PartitionNumber
	into #ToDo_RPC
	from (	select 
				TableName, 
				PartitionId, 
				sum(Records) Records 
			from hub.PartitionContent 
			where 
				TableName=@TableName  
				and PartitionId=isnull(@PartitionId,PartitionId) 
			group by 
				TableName, 
				PartitionId) PC
		full join #PartitionInfo_RPC PIN
			on PC.TableName=PIN.TableName
			and PC.PartitionId=PIN.PartitionId
	where isnull(PC.Records,0) <> isnull(PIN.Records,0)

	DECLARE EachStablePartion_RFC CURSOR
	READ_ONLY
	FOR	select PartitionId, PartitionNumber
		from #ToDo_RPC
		order by 1 asc
	OPEN EachStablePartion_RFC
	FETCH NEXT FROM EachStablePartion_RFC INTO @PartitionId, @PartitionNumber
	WHILE (@@fetch_status <> -1)
	BEGIN
		IF (@@fetch_status <> -2)
		BEGIN

			set @SQL=''
			select @SQL ='
					SELECT 
						'''+@TableName+''' TableName
						,'+@PartitionId+' PartitionId
						,count(*) Records
						,DELIVERY_SQN
						,ACT_DTS
						,MAX(LOAD_DTS) LOAD_DTS
						,convert(datetime2,'+isnull(@ColumnName,'NULL')+') STI_LOAD_DTS'+'
					INTO #T
					from '+ @DatabaseName +'.'+@SchemaName+'.'+@TableName+' 
					where '+ @DatabaseName +'.$PARTITION.'+ @PartitionFunction+'(ACT_DTS) = '+@PartitionNumber+'
					GROUP BY DELIVERY_SQN
						,ACT_DTS'+isnull('
						,'+@ColumnName,'')+';
					
					BEGIN TRANSACTION
					BEGIN TRY  
						delete from P
						FROM hub.PartitionContent P
						WHERE '''+@TableName+'''= TableName
						and '+@PartitionId+'= PartitionId
						
						delete from P
						FROM hub.PartitionContent P			
						inner join (select distinct TableName, DELIVERY_SQN, ACT_DTS, STI_LOAD_DTS from #T) F
						on F.TableName=P.TableName
						and F.DELIVERY_SQN = P.DELIVERY_SQN
						and F.ACT_DTS = P.ACT_DTS
						and isnull(P.[STI_LOAD_DTS],''99991231'')=isnull(F.[STI_LOAD_DTS],''99991231'')

						INSERT INTO hub.PartitionContent (TableName, PartitionId, Records, DELIVERY_SQN, ACT_DTS, STI_LOAD_DTS,LOAD_DTS)
						SELECT TableName, PartitionId, Records, DELIVERY_SQN, ACT_DTS, STI_LOAD_DTS,LOAD_DTS
						from #T;
										
						update hub.[Partitions]	
						set Fase =''Processed'', Records=T.Records
						from (select sum(Records) Records from #T) T
						where TableName='''+@TableName+''' and PartitionId='+@PartitionId+';
					END TRY  
					BEGIN CATCH  
						IF @@TRANCOUNT > 0  
							ROLLBACK TRANSACTION;  
					END CATCH

					IF @@TRANCOUNT > 0  
						COMMIT TRANSACTION'
			from #ToDo_RPC

			exec (@SQL)

	END
		FETCH NEXT FROM EachStablePartion_RFC INTO @PartitionId, @PartitionNumber
	END
	CLOSE EachStablePartion_RFC
	DEALLOCATE EachStablePartion_RFC

	-- defragment data in the table
	SET @SQL=''
	select @SQL= 'use ['+DatabaseName+'];
	declare @SQL varchar(8000)
	select  distinct
	''use ['+DatabaseName+']; alter index [''+I.name+''] on ['+SchemaName+'].['+ObjectName+'] rebuild PARTITION = ''+ convert(varchar, T.partition_number) Code
	into #cmd
	from (select * FROM sys.dm_db_index_physical_stats (DB_ID(), '+convert(varchar,object_id)+', NULL, NULL , ''SAMPLED'') where avg_fragmentation_in_percent >5) T
	inner join sys.indexes I
		on I.object_id= T.object_id
		and I.index_id=T.index_id
		
	while (select count(*) from #cmd )>0
	begin
		select @SQL = max(Code) from #cmd
		exec(@SQL)
		delete from #cmd where Code=@SQL
	end'
	from hub.ObjectInfo 
	where ObjectType='U'
		and SchemaName not in ('XXX','TMP','log','hub')
		and ObjectName=@TableName
	exec (@SQL)

	--update status to 'Transfer' in case something went wrong
	update hub.Partitions 
	set Fase ='Transfer'
	where 
	TableName=@TableName 
	and PartitionId=isnull(@PartitionId,PartitionId)
	and Fase <>'Processed'
END
GO
/****** Object:  StoredProcedure [hub].[stp_SyncDeploy]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [hub].[stp_SyncDeploy] ( @DatabaseNaam varchar(100),@Type varchar(100),@SchemaNaam varchar(100),@TabelNaam varchar(100))
as
begin
-- procedure code:  SD

/*
this procedure syncs the DLL of the interface objects from a source hub to a target hub. This can be improved for performance.

it starts by comparing the 2 hub.Report views on both hubs and determine the differences.
Since this procedure has parameters to filter what to sync on various levels, only those objects are considered.

the filter can be on any combination of:
	Type: supplier of subscriber
	schemaname
	Tablename.
as a result the filter can go from very specific to very broad.


*/
BEGIN TRY
	set nocount on
	--declarations
	declare @SQL varchar(8000)
	declare @ID int
	declare @CODE varchar(8000)
	declare @DB varchar(8000)
	declare @nu datetime2=getdate()
	declare @SchemaName varchar(100)
	declare @TableName varchar(100)
	declare @Server varchar(100)=''
	declare @Score int

	create table #CMD_SD (
		code varchar(8000))
	create table #CREATETABLE_SD ( 
			ID int,
			CODE varchar(8000))

	CREATE TABLE #info_SD(
		todo int,
		score int,
		[Type] [varchar](1000) NOT NULL,
		[SchemaName] [nvarchar](1000) NULL,
		[TableName] [nvarchar](1000) NULL,
		[EnvironmentName_S] [varchar](1000) NOT NULL,
		[EnvironmentType_S] [varchar](1000) NOT NULL,
		[DatabaseType_S] [varchar](1000) NOT NULL,
		[DatabaseName_S] [varchar](1000) NOT NULL,		
		[InConfig_S] [int] NOT NULL,
		[InDatabase_S] [int] NOT NULL,
		[InDeploy_S] [int] NOT NULL,
		[SuccessfulDeliveryCount_S] [int] NOT NULL,
		[DateColum_S] [varchar](1000) NOT NULL,
		[DayCount_S] [int] NOT NULL,
		[CleanUpActive_S] [int] NOT NULL,
		[FeedbackIsMandatory_S] [int] NOT NULL,
		[modify_date_S] [varchar](1000) NOT NULL,
		[ScriptDatetime_S] [varchar](1000) NOT NULL,
		[DeployDatetime_S] [varchar](1000) NOT NULL,
		[EnvironmentName_T] [varchar](1000) NOT NULL,
		[EnvironmentType_T] [varchar](1000) NOT NULL,
		[DatabaseType_T] [varchar](1000) NOT NULL,
		[DatabaseName_T] [varchar](100) NOT NULL,
		[InConfig_T] [int] NOT NULL,
		[InDatabase_T] [int] NOT NULL,
		[InDeploy_T] [int] NOT NULL,
		[SuccessfulDeliveryCount_T] [int] NOT NULL,
		[DateColum_T] [varchar](1000) NOT NULL,
		[DayCount_T] [int] NOT NULL,
		[CleanUpActive_T] [int] NOT NULL,
		[FeedbackIsMandatory_T] [int] NOT NULL,
		[modify_date_T] [varchar](1000) NOT NULL,
		[ScriptDatetime_T] [varchar](1000) NOT NULL,
		[DeployDatetime_T] [varchar](1000) NOT NULL,
		CRC_T bigint,
		CRC_S bigint	) 

	--constants
	if charindex('.',@DatabaseNaam ,1)>0
		set @Server= left(@DatabaseNaam,charindex('.',@DatabaseNaam ,1))

	-- checks
       if	(	DB_NAME() in ('HUB_StagingIn', 'HUB_StagingOut') 
				and @@servername in ('WSDE000873\DEINSTANCE00','WSAE000831\DEINSTANCE00','WSDE000872\DEINSTANCE00','WSPE001384\DEINSTANCE00')
			)
	   BEGIN
             RAISERROR('This proc may never be used in OTAP, only dead-end databases.(stp_SyncDeploy)',16,1)
             RETURN
       END
 
       BEGIN TRY
             SET @SQL ='use ' + ISNULL( @DatabaseNaam,'')
             EXEC(@SQL)
       END TRY
       BEGIN CATCH
             RAISERROR('The database is unknown.(stp_SyncDeploy)',16,1)
             RETURN
       END CATCH

	IF ISNULL(@Type,'Subscriber') NOT IN ('Subscriber','Supplier')
	BEGIN
		RAISERROR('The parameter @Type has an invalid value.(stp_SyncDeploy)',16,1)
		RETURN
	END

	-- gather Report data 
	select * 
	into #Report_T_SD
	from hub.Report T

	alter table #Report_T_SD alter column [EnvironmentName] varchar(1000)
	alter table #Report_T_SD alter column [DatabaseName] varchar(1000)

	select * into #Report_S_SD
	from #Report_T_SD
	where 1=0

	set @SQL='
	insert into #Report_S_SD
	select * 
	FROM '+@DatabaseNaam+'.[hub].[Report] S
	'
	exec (@SQL)

	/*
	a score is calculated to determine what action is to be taken:
		-20: delete a view				about a Subscriber where the config isn't present in source or target
		-10: delete a subscription		about a Subscriber where the config is only present in the target
		-2:delete a table				about a Supplier where the config isn't present in source or target
		-1: delete a supply				about a Supplier where the config is only present in the target
		1: add supply					about a Supplier where the config is present in the source
		10: add subscription			about a Subscriber where the config is present in the source

	*/

	-- combining the 2 reports
	insert into #info_SD
	SELECT 
	0 as todo,
	case when ISNULL(S.Type,T.Type)='Subscriber' then 10 
				when ISNULL(S.Type,T.Type)='Supplier' then 1
				else 0 end
			* case when ISNULL(S.InConfig,0)=1 then 1 
			when ISNULL(T.InConfig,0)=1 then -1 
			when ISNULL(T.InConfig,0)+ISNULL(S.InConfig,0)=0 then -2
			else 0 end as score, 
	ISNULL(S.Type,T.Type) AS Type,
	ISNULL(S.SchemaName,T.SchemaName) AS SchemaName,
	ISNULL(S.TableName,T.TableName) AS TableName,
	ISNULL(S.EnvironmentName,'') AS EnvironmentName_S,
	ISNULL(S.EnvironmentType,'') AS EnvironmentType_S,
	ISNULL(S.DatabaseType,'') AS DatabaseType_S,
	ISNULL(S.DatabaseName,'') AS DatabaseName_S,
	ISNULL(S.InConfig,0) AS InConfig_S,
	ISNULL(S.InDatabase,0) AS InDatabase_S,
	ISNULL(S.InDeploy,0) AS InDeploy_S,
	ISNULL(S.SuccessfulDeliveryCount,0) AS SuccessfulDeliveryCount_S,
	ISNULL(S.DateColum,'') AS DateColum_S,
	ISNULL(S.DayCount,0) AS DayCount_S,
	ISNULL(S.CleanUpActive,0) AS CleanUpActive_S,
	ISNULL(S.FeedbackIsMandatory,0) AS FeedbackIsMandatory_S,
	ISNULL(S.modify_date,'') AS modify_date_S,
	ISNULL(S.ScriptDatetime,'') AS ScriptDatetime_S,
	ISNULL(S.DeployDatetime,'') AS DeployDatetime_S,
	ISNULL(T.EnvironmentName,'') AS EnvironmentName_T,
	ISNULL(T.EnvironmentType,'') AS EnvironmentType_T,
	ISNULL(T.DatabaseType,'') AS DatabaseType_T,
	ISNULL(T.DatabaseName,'') AS DatabaseName_T,
	ISNULL(T.InConfig,0) AS InConfig_T,
	ISNULL(T.InDatabase,0) AS InDatabase_T,
	ISNULL(T.InDeploy,0) AS InDeploy_T,
	ISNULL(T.SuccessfulDeliveryCount,0) AS SuccessfulDeliveryCount_T,
	ISNULL(T.DateColum,'') AS DateColum_T,
	ISNULL(T.DayCount,0) AS DayCount_T,
	ISNULL(T.CleanUpActive,0) AS CleanUpActive_T,
	ISNULL(T.FeedbackIsMandatory,0) AS FeedbackIsMandatory_T,
	ISNULL(T.modify_date,'') AS modify_date_T,
	ISNULL(T.ScriptDatetime,'') AS ScriptDatetime_T,
	ISNULL(T.DeployDatetime,'') AS DeployDatetime_T,
	ISNULL(T.CRC,0) as CRC_T,
	ISNULL(S.CRC,0) as CRC_S
	FROM #Report_T_SD T
		full join  #Report_S_SD S
			on T.TableName=S.TableName
			and T.SchemaName=S.SchemaName
			and T.Type=S.Type

	--add records to the 'to-do' list  that meet the filter cirteria.
	update #info_SD
	set todo=1
		where 
		SchemaName =coalesce(@SchemaNaam,SchemaName)
		and Type =coalesce(@Type,Type)
		and TableName =coalesce(@TabelNaam,TableName)

	-- take records off the 'to-do' list  records that are not active in both source and target.
	update #info_SD
	set todo=0
	where InConfig_S+InConfig_T+ InDatabase_S+InDatabase_T=0

	-- take records off the 'to-do' list  records that are inconsistent in the source.
	update #info_SD
	set todo=0
	where InConfig_S <> InDatabase_S

	-- take records off the 'to-do' list that are identical between source an target
	update #info_SD
	set todo=0
	where	[InConfig_S]=[InConfig_T]
			and [InDatabase_S]=[InDatabase_T]
			and [InDeploy_S]=[InDeploy_T]
			and [SuccessfulDeliveryCount_S]=[SuccessfulDeliveryCount_T]
			and [DateColum_S]=[DateColum_T]
			and [DayCount_S]=[DayCount_T]
			and [FeedbackIsMandatory_S]=[FeedbackIsMandatory_T]
			and [DeployDatetime_S]=[DeployDatetime_T]
			and [CRC_S]=[CRC_T]

	-- re-add dependent objects to the 'to-do' list 
		-- dependent objects on deleted supplies
			update #info_SD
			set todo=1
			where Type='Subscriber' 
			and TableName in (select distinct TableName from #info_SD where score =-1 and todo=1)
		--dependent objects on added subscribtions
			update #info_SD
			set todo=1
			where Type='Supplier' 
			and TableName in (select distinct TableName from #info_SD where score =10 and todo=1)

	--adding logins if needed
	set @SQL='
	insert into #CMD_SD
	select ''exec stp_NewUser ''''''+L.SchemaName+'''''',''''''+N.Location+'''''',''''''+isnull(min(P.name),''rabobank\svcSqlBackup'')+'''''',1''
	from #info_SD I
		inner join '+@DatabaseNaam+'.hub.Logins L
			on I.SchemaName=L.SchemaName
			and IsApplication=1
		inner join  '+@DatabaseNaam+'.hub.Namespaces N
			ON L.SchemaName=N.SchemaName
		left join sys.server_principals  P
			on P.name=L.LoginName
		left join hub.Namespaces F
			ON I.SchemaName=F.SchemaName
	where 
		F.SchemaName is null
		and todo=1
	group by L.SchemaName,N.Location'
	exec (@SQL)
	
	DECLARE EachLogin_SD CURSOR
	READ_ONLY
	FOR 
		select code from #CMD_SD
	OPEN EachLogin_SD
	FETCH NEXT FROM EachLogin_SD INTO @SQL
	WHILE (@@fetch_status <> -1)
	BEGIN
		IF (@@fetch_status <> -2)
		BEGIN
			exec(@SQL)
		END
		FETCH NEXT FROM EachLogin_SD INTO @SQL
	END
	CLOSE EachLogin_SD
	DEALLOCATE EachLogin_SD

	-- do all the 'to-do' interface object in the proper order
	DECLARE EachObjectForce_SD CURSOR
	READ_ONLY
	FOR SELECT distinct
			SchemaName,
			TableName,
			score
		from #info_SD
		where todo=1
		order by 3 asc

	OPEN EachObjectForce_SD
	FETCH NEXT FROM EachObjectForce_SD INTO @SchemaName, @TableName,@Score
	WHILE (@@fetch_status <> -1)
	BEGIN
		IF (@@fetch_status <> -2)
		BEGIN
			print @SchemaName+'.'+@TableName+': '+ case when @Score <0 then 'Delete ' else 'Add ' end  + case when abs(@Score) >5  then 'Subscription' else 'Supply' end 
				-- delete Aliases always
				DECLARE EachAlias_SD CURSOR
				READ_ONLY
				FOR	--alias on view/table
					select 'USE '+O.DatabaseName+'; DROP VIEW '+O.SchemaName+'.'+O.ObjectName 
					from hub.ObjectInfo O
						inner join hub.Exceptions E
							on O.SchemaName=E.SchemaName
							and E.ExceptionType='ALIAS'
							and E.TableAlias=O.ObjectName
					where @SchemaName=E.SchemaName
						and @TableName=E.TableName
						and O.ObjectType='V'
					UNION--dbo on view/table
					select  'USE '+O.DatabaseName+'; DROP VIEW '+O.SchemaName+'.'+O.ObjectName 
					from hub.ObjectInfo O
					where @SchemaName='dih'
						and SchemaName='dbo'
						and @TableName=ObjectName
						and O.ObjectType='V'
					UNION--dbo on alias
					select 'USE '+O.DatabaseName+'; DROP VIEW '+O.SchemaName+'.'+O.ObjectName 
					from hub.ObjectInfo O
						inner join hub.Exceptions E
							on E.SchemaName=@SchemaName
							and E.ExceptionType='ALIAS'
							and E.TableAlias=O.ObjectName
					where @SchemaName='dih'
						and O.SchemaName='dbo'
						and @TableName=E.TableName
						and O.ObjectType='V'
				OPEN EachAlias_SD

				FETCH NEXT FROM EachAlias_SD INTO @SQL
				WHILE (@@fetch_status <> -1)
				BEGIN
					IF (@@fetch_status <> -2)
					BEGIN
						exec(@SQL)
					END
					FETCH NEXT FROM EachAlias_SD INTO @SQL
				END

				CLOSE EachAlias_SD
				DEALLOCATE EachAlias_SD

				-- always delete Exceptions and re-add them
				DELETE
				FROM hub.Exceptions
				where 
					TableName=@TableName 
					and SchemaName=@SchemaName
				SET @SQL='
				INSERT INTO hub.Exceptions(
						TableName, SchemaName, ExceptionType, TableAlias, NameIndex, CodeIndex, ColumnExtra, DatatypeExtra, StatePermission, NamePermission, ColumnPermission)
				SELECT TableName, SchemaName, ExceptionType, TableAlias, NameIndex, CodeIndex, ColumnExtra, DatatypeExtra, StatePermission, NamePermission, ColumnPermission
				FROM '+@DatabaseNaam+'.hub.Exceptions
				where 
					TableName='''+@TableName+''' 
					and SchemaName='''+@SchemaName+''''
				exec (@SQL)
		
				--always delete deploy information and re-add it
				delete 
				from hub.Deploys 
				where 
					TableName=@TableName 
					and SchemaName=@SchemaName
		
				SET @SQL='
				INSERT INTO hub.Deploys(
						DeployType, SchemaName, TableName, ScriptDatetime, DeployDatetime)
				SELECT	DeployType, SchemaName, TableName, ScriptDatetime, DeployDatetime
				from '+@DatabaseNaam+'.hub.Deploys 
				where 
					TableName='''+@TableName+''' 
					and SchemaName='''+@SchemaName+''''
				exec (@SQL)

				-- always delete CustomViewsConfig and re-add it
				DELETE
				FROM hub.CustomViewsConfig
				where 
					TableName=@TableName 
					and SchemaName=@SchemaName

				SET @SQL='
				set IDENTITY_INSERT hub.CustomViewsConfig ON
				INSERT INTO hub.CustomViewsConfig(
						ID,SchemaName, TableName, Clause, SqlCode, ColumnName, DatetimeStamp)
				SELECT ID,SchemaName, TableName, Clause, SqlCode, ColumnName, DatetimeStamp
				FROM '+@DatabaseNaam+'.hub.CustomViewsConfig
				where 
					TableName='''+@TableName+''' 
					and SchemaName='''+@SchemaName+'''
				set IDENTITY_INSERT hub.CustomViewsConfig OFF'
				exec (@SQL)


				if @Score =-20 --about a Subscriber where the config isn't present in source or target
				begin
					SET @SQL=''
					--delete view
					select @SQL=  'USE '+O.DatabaseName+'; DROP VIEW '+O.SchemaName+'.'+O.ObjectName 
					from hub.ObjectInfo O
					where @SchemaName=SchemaName
						and @TableName=ObjectName
						and O.ObjectType='V'
					--print @SQL
					exec (@SQL)
				end

				if @Score =-10	--about a Subscriber where the config is only present in the target
				begin
					--delete subscription
					SET @SQL ='exec stp_DeleteSubscription '''+@SchemaName+''','''+@TableName+''''
					--print @SQL
					exec (@SQL)
				end
				if @Score =-2	--about a Supplier where the config isn't present in source or target
				begin
					--delete table
					SET @SQL=''
					select @SQL=  'USE '+O.DatabaseName+'; DROP TABLE '+O.SchemaName+'.'+O.ObjectName 
					from hub.ObjectInfo O
					where @SchemaName=SchemaName
						and @TableName=ObjectName
						and O.ObjectType='U'
					--print @SQL
					exec (@SQL)
				end
				if @Score =-1	--about a Supplier where the config is only present in the target
				begin
					--delete supply
					SET @SQL ='exec stp_DeleteSupply '''+@TableName+''''
					--print @SQL
					exec (@SQL)
				end
				if @Score =1	--about a Supplier where the config is present in the source
				begin
					--add supply
						-- delete dbo objects
							while (select count(*) from hub.ObjectInfo
							where SchemaName='dbo'
							and ObjectName=@TableName)>0
							begin
								SET @SQL=''
								SELECT @SQL = 'USE '+DatabaseName+' ;DROP '+case when [ObjectType] ='U' then 'TABLE' else 'VIEW' end+'  dbo.'+@TableName
								from hub.ObjectInfo 
								where SchemaName='dbo'
								and ObjectName=@TableName 
								--print @SQL
								exec (@SQL)
							end

						--create dbo tabel
							delete from #CREATETABLE_SD
							set @SQL ='
							Insert into #CREATETABLE_SD
							SELECT 
								ROW_NUMBER () over (order by ColumnId) ID,
								[ColumnName] +'' ''+[DatatypeTotal] 
								FROM '+@DatabaseNaam+'.[hub].[ColumnInfo] #T
								where [ObjectName] ='''+@TableName+''' 
								and SchemaName='''+@SchemaName+''' 
								and ObjectType=''U''
								order by ColumnId'
							exec (@SQL)

							SELECT @DB= P.ParamValue
							FROM #info_SD
							inner join hub.Parameters P
							on P.ParamName=DatabaseType_S
							where @TableName=TableName
							and @SchemaName=SchemaName					

							DECLARE EachColumn_SD CURSOR
							READ_ONLY
							FOR select ID,CODE 
								from #CREATETABLE_SD
								order by ID
							OPEN EachColumn_SD
							FETCH NEXT FROM EachColumn_SD INTO @ID, @CODE
							WHILE (@@fetch_status <> -1)
							BEGIN
								IF (@@fetch_status <> -2)
								BEGIN
									if @ID =1
										SET @SQL= 'USE '+@DB+';CREATE TABLE dbo.'+@TableName+'('+@CODE+')'
									else
										SET @SQL= 'USE '+@DB+';ALTER TABLE dbo.'+@TableName+' ADD '+@CODE+''
									EXEC(@SQL)
								END
								FETCH NEXT FROM EachColumn_SD INTO @ID, @CODE
							END
							CLOSE EachColumn_SD
							DEALLOCATE EachColumn_SD
						
						SET @SQL=''
						SELECT @SQL = 'exec stp_NewSupply '''+@TableName+''','''+@SchemaName+''','''+convert(varchar,SuccessfulDeliveryCount_S)+''','''+DateColum_S+''','''+convert(varchar,DayCount_S)+''';'
						from #info_SD
						where @TableName=TableName 
						and @SchemaName=SchemaName
						--print @SQL
						exec (@SQL)
				end
				if @Score =10	--about a Subscriber where the config is present in the source
				begin
					--add subscription		
						SET @SQL=''
						SELECT @SQL = 'exec stp_NewSubsciption '+@TableName+', '''+@SchemaName+''', '+convert(varchar,FeedbackIsMandatory_S)
						from #info_SD
						where @TableName=TableName and @SchemaName=SchemaName
						--print @SQL
						exec (@SQL)

						SET @SQL=''
						SELECT @SQL = 'exec stp_UpdateSubscription '+@TableName+', '''+@SchemaName+''',NULL, '+convert(varchar,FeedbackIsMandatory_S)
						from #info_SD
						where @TableName=TableName and @SchemaName=SchemaName
						--print @SQL
						exec (@SQL)

				end
		END
		FETCH NEXT FROM EachObjectForce_SD INTO @SchemaName, @TableName,@Score
	END

	CLOSE EachObjectForce_SD
	DEALLOCATE EachObjectForce_SD

	-- clean the deploy table of records that the per-object syncing created.
	delete from hub.Deploys where DeployDatetime>@nu
	UPDATE hub.Parameters set ParamValue='YES' WHERE ParamName='AfterCareNeeded'
END TRY
BEGIN CATCH
	 DECLARE @ErrorMessage varchar(MAX) = ERROR_MESSAGE(),
				@ErrorSeverity int = ERROR_SEVERITY(),
				@ErrorState smallint = ERROR_STATE()
 	INSERT INTO [hub].ErrorLog([SPID],[DatetimeStamp],[Username],[Procedure],Message, Severity, State)
	VALUES(@@SPID,getdate(),ORIGINAL_LOGIN (),OBJECT_NAME(@@PROCID),@ErrorMessage, @ErrorSeverity,@ErrorState);
	
	exec hub.stp_CloseCursor 'EachLogin_SD'
	exec hub.stp_CloseCursor 'EachObjectForce_SD'
	exec hub.stp_CloseCursor 'EachAlias_SD'
	exec hub.stp_CloseCursor 'EachColumn_SD'

	RAISERROR ( @ErrorMessage, @ErrorSeverity, @ErrorState)  ;
	
END CATCH
END
GO
/****** Object:  StoredProcedure [hub].[stp_refreshStagingOut]    Script Date: 27-7-2020 11:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [hub].[stp_refreshStagingOut] AS
BEGIN
-- procedure code:  RSO
/*
this procedure replaces all non-interface objects in the stagingout. it is the last step in any non-inferface related release.

*/
BEGIN TRY
	set nocount on
	--declaraties
	declare @start datetime =getdate()
	Declare @StagingInDB varchar(100)
	Declare @StagingOutDB varchar(100)
	DECLARE @SQL			varchar(8000)
	declare @x int

	create table #Proc (
		object_id bigint,
		ObjectType varchar(1000),
		SchemaName varchar(1000),
		ObjectName varchar(1000),
		ParamLang varchar(8000),
		ParamKort varchar(8000))

	create table #CMD(
		nr int identity(1,1),
		code varchar(8000)COLLATE Latin1_General_100_BIN)
	create table #delete (
	code varchar(8000)COLLATE Latin1_General_100_BIN)

	--constanten
	select @StagingOutDB = ParamValue FROM hub.Parameters where ParamName = 'StagingOutDB'
	select @StagingInDB = ParamValue FROM hub.Parameters where ParamName =  'StagingInDB'

	--checks
	IF NOT EXISTS (SELECT * FROM hub.MyNamespaces where SchemaName ='*') 
	BEGIN
		raiserror('you do not have access to this procedure.(stp_refreshStagingOut)',16,3)
		RETURN
	END
	
	-- special role for IDQ to see definitions
	insert into #CMD
	select 
'use ['+DB+'];
	if not exists(select * from sys.database_principals where type=''R'' and name =''definition'')
BEGIN
	CREATE ROLE [definition]
	GRANT SELECT ON [sys].[sql_expression_dependencies] TO [definition] AS [dbo]

END'
	from ( select @StagingInDB DB union select @StagingOutDB) B

	-- making sure the default schema's are present in both databases
		SET @SQL='
		IF NOT EXISTS (select * from sys.schemas where name =''hub'')
		exec(''CREATE SCHEMA hub AUTHORIZATION dbo'');'
		insert into #CMD
		select 'use ['+@StagingInDB+'];'+@SQL
		insert into #CMD
		select 'use ['+@StagingOutDB+'];'+@SQL

		SET @SQL='
		IF NOT EXISTS (select * from sys.schemas where name =''log'')
		exec(''CREATE SCHEMA log AUTHORIZATION dbo'');'
		insert into #CMD
		select 'use ['+@StagingInDB+'];'+@SQL
		insert into #CMD
		select 'use ['+@StagingOutDB+'];'+@SQL

		SET @SQL='IF NOT EXISTS (select * from sys.schemas where name =''XXX'')
		exec(''CREATE SCHEMA XXX AUTHORIZATION dbo'');'
		insert into #CMD
		select 'use ['+@StagingInDB+'];'+@SQL
		insert into #CMD
		select 'use ['+@StagingOutDB+'];'+@SQL

		SET @SQL='IF NOT EXISTS (select * from sys.schemas where name =''TMP'')
		exec(''CREATE SCHEMA TMP AUTHORIZATION dbo'');	'
		insert into #CMD
		select 'use ['+@StagingInDB+'];'+@SQL
		insert into #CMD
		select 'use ['+@StagingOutDB+'];'+@SQL
	
	-- setting up partitionering
	SET @SQL=
	'if not exists (select * from sys.partition_functions where name=''PF_Daily'')
		CREATE PARTITION FUNCTION [PF_Daily](datetime2(7)) AS RANGE RIGHT FOR VALUES (N''2000-01-01T00:00:00.000'',  N''2018-02-06T00:00:00.000'')'
		insert into #CMD
		select 'use ['+@StagingInDB+'];'+@SQL
		insert into #CMD
		select 'use ['+@StagingOutDB+'];'+@SQL

		SET @SQL='
	if not exists (select * from sys.partition_schemes where name=''PS_Daily'')
	BEGIN
		if (select top 1 1  from sys.filegroups where name =''DATA'')=1 
			CREATE PARTITION SCHEME [PS_Daily] AS PARTITION [PF_Daily] TO ([DATA], [DATA], [DATA])
		else
			CREATE PARTITION SCHEME [PS_Daily] AS PARTITION [PF_Daily] TO ([PRIMARY], [PRIMARY], [PRIMARY])
	END
	'	
	insert into #CMD
		select 'use ['+@StagingInDB+'];'+@SQL
		insert into #CMD
		select 'use ['+@StagingOutDB+'];'+@SQL


	--hub schema tables & views become synonyms in staging out, so queries can always be used in either database
		insert into #CMD
		select
		'USE '+@StagingOutDB+';
		IF EXISTS(SELECT * FROM sys.synonyms WHERE name = N'''+TABLE_NAME+''')
			DROP SYNONYM hub.'+TABLE_NAME+';
		CREATE SYNONYM [hub].['+TABLE_NAME+'] FOR ['+@StagingInDB+'].[hub].['+TABLE_NAME+'];'
		from INFORMATION_SCHEMA.TABLES 
		where TABLE_SCHEMA ='hub'

	-- procedures in Staging Out refer to the procedure in Staging In.
		insert into #Proc (object_id,ObjectType, SchemaName,ObjectName ,ParamLang,ParamKort)
		select O.object_id
			,O.type
			,S.name
			,O.name
			,'',''
		from sys.objects O
			inner join sys.schemas S
				on O.schema_id=S.schema_id
		where  O.type in ('P','FN*','TF*')	

		-- procedure parameters
		select @x=0
		while @@ROWCOUNT>0
		begin
			set @x=@x+1
			update C
			set  ParamKort=CASE WHEN is_output = 1 THEN ParamKort + P.name +' OUTPUT'+',' ELSE ParamKort + P.name +',' END
			,ParamLang=ParamLang + P.name +' '+ case 
				when user_type_id = 42 then 'datetime2'
				when user_type_id = 52 then 'smallint'
				when user_type_id = 56 then 'int'
				when user_type_id = 61 then 'datetime'
				when user_type_id = 104 then 'bit'
				when user_type_id = 127 then 'bigint'
				when user_type_id = 241 then 'xml'
				when user_type_id in (106,108) then 'decimal ('+convert(varchar,precision)+','+convert(varchar,scale)+')'
				when user_type_id = 167 then 'varchar('+convert(varchar,max_length)+')'
				when user_type_id = 175 then 'char('+convert(varchar,max_length)+')'
				when user_type_id = 231 then 'nvarchar('+convert(varchar,max_length/2)+')'
				ELSE null
			end+CASE WHEN is_output = 1 THEN ' OUTPUT' ELSE '' END +','
			from #Proc C
			inner join sys.all_parameters P
			on P.object_id=C.object_id
			and P.parameter_id=@x
		end

		update #Proc
		set ParamKort = left(ParamKort,len(ParamKort)-1)
			,ParamLang = '('+left(ParamLang,len(ParamLang)-1)+')'
			where len(ParamKort) >1

		insert into #CMD
		select 
		'USE ['+@StagingOutDB+'];
		exec(''IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N''''['+SchemaName+'].['+ObjectName+']'''') )
		DROP PROCEDURE ['+SchemaName+'].['+ObjectName+']'');
		exec(''CREATE PROC ['+SchemaName+'].['+ObjectName+']'+ParamLang+' AS
		BEGIN
			exec ['+@StagingInDB+'].['+SchemaName+'].['+ObjectName+']
			'+ParamKort+'
		END'');'
		 from #Proc
	
	-- objects that cannot refer staging for some reason
		-- functie Fn_ValidDelivery
	insert into #CMD
	select 
'use ['+@StagingOutDB+'];
exec(''IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N''''[hub].[Fn_ValidDelivery]'''') AND type in (N''''FN'''', N''''IF'''', N''''TF'''', N''''FS'''', N''''FT''''))
DROP FUNCTION [hub].[Fn_ValidDelivery]'');
exec(''CREATE FUNCTION [hub].[Fn_ValidDelivery](@schemaname varchar(10), @TableName varchar(100), @xml xml)
RETURNS @Resultaat TABLE (DELIVERY_SQN numeric(22,0) )
AS
BEGIN
   INSERT @Resultaat
   SELECT	DELIVERY_SQN
   FROM ['+@StagingInDB+'].hub.[Fn_ValidDelivery](@schemaname, @TableName, @xml)
   RETURN
END'');
GRANT SELECT ON [hub].[Fn_ValidDelivery] TO [public];'

	-- functie Fn_StatisticDateTime
	set @SQL= '
exec(''IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N''''[hub].[Fn_StatisticDateTime]'''') AND type in (N''''FN'''', N''''IF'''', N''''TF'''', N''''FS'''', N''''FT''''))
DROP FUNCTION [hub].Fn_StatisticDateTime'');
exec(''CREATE FUNCTION hub.Fn_StatisticDateTime( @object_id bigint, @index_id bigint)
RETURNS datetime 
AS
BEGIN
	RETURN STATS_DATE(@object_id, @index_id)
END'');'
		insert into #CMD
		select 'use ['+@StagingInDB+'];'+@SQL
		insert into #CMD
		select 'use ['+@StagingOutDB+'];'+@SQL

	-- executing commands
	DECLARE EachCommand_RSO CURSOR
	READ_ONLY
	FOR select code from #CMD order by nr
	OPEN EachCommand_RSO

	FETCH NEXT FROM EachCommand_RSO INTO @SQL
	WHILE (@@fetch_status <> -1)
	BEGIN
		IF (@@fetch_status <> -2)
		BEGIN
			BEGIN TRY
					exec (@SQL)
			END TRY
			BEGIN CATCH
					PRINT '--fout: ' + @SQL
			END CATCH
		END
		FETCH NEXT FROM EachCommand_RSO INTO @SQL
	END

	CLOSE EachCommand_RSO
	DEALLOCATE EachCommand_RSO
	drop table #CMD
	drop table #Proc

	--removing any objects that didn;t get refreshed and are therefore obsolete
	set @SQL= 'insert into #delete
	select ''USE '+@StagingOutDB+'''+'';''+
		case when type =''SN'' then '' DROP SYNONYM '' 
		when type =''P'' then ''DROP PROCEDURE ''
		when type in(''FN'',''TF'') then '' DROP FUNCTION ''
		end +S.name+''.''+O.name
	from '+@StagingOutDB+'.sys.objects O
		inner join  '+@StagingOutDB+'.sys.schemas S
			on S.schema_id=O.schema_id
	where O.type in (''SN'',''P'',''FN'',''TF'') 
		and convert(varchar,create_date, 120) < '''+convert(varchar,@start, 120)+''''
		exec (@SQL)

-- executing
	DECLARE EachDelete_RSO CURSOR
	READ_ONLY
	FOR select code from #delete 
	OPEN EachDelete_RSO

	FETCH NEXT FROM EachDelete_RSO INTO @SQL
	WHILE (@@fetch_status <> -1)
	BEGIN
		IF (@@fetch_status <> -2)
		BEGIN
			BEGIN TRY
					exec (@SQL)
			END TRY
			BEGIN CATCH
					PRINT '--fout: ' + @SQL
			END CATCH
		END
		FETCH NEXT FROM EachDelete_RSO INTO @SQL
	END

	CLOSE EachDelete_RSO
	DEALLOCATE EachDelete_RSO

	--refreshing information views 
	exec stp_HubInformationViews
	exec stp_AfterCare

END TRY
BEGIN CATCH
	 DECLARE @ErrorMessage varchar(MAX) = ERROR_MESSAGE(),
				@ErrorSeverity int = ERROR_SEVERITY(),
				@ErrorState smallint = ERROR_STATE()
 	INSERT INTO [hub].ErrorLog([SPID],[DatetimeStamp],[Username],[Procedure],Message, Severity, State)
	VALUES(@@SPID,getdate(),ORIGINAL_LOGIN (),OBJECT_NAME(@@PROCID),@ErrorMessage, @ErrorSeverity,@ErrorState);
	
	RAISERROR ( @ErrorMessage, @ErrorSeverity, @ErrorState)  ;
	
END CATCH
end

GO
