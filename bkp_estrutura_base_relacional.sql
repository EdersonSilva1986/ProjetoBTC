USE [BTC]
GO
/****** Object:  User [usr_pentaho]    Script Date: 10/03/2019 15:21:42 ******/
CREATE USER [usr_pentaho] FOR LOGIN [usr_pentaho] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [usr_pentaho]
GO
ALTER ROLE [db_datareader] ADD MEMBER [usr_pentaho]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [usr_pentaho]
GO
/****** Object:  Schema [PRD]    Script Date: 10/03/2019 15:21:42 ******/
CREATE SCHEMA [PRD]
GO
/****** Object:  Schema [STG]    Script Date: 10/03/2019 15:21:42 ******/
CREATE SCHEMA [STG]
GO
/****** Object:  Table [PRD].[Conta_BTC]    Script Date: 10/03/2019 15:21:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [PRD].[Conta_BTC](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](300) NULL,
	[saldo] [float] NULL,
	[dt_criacao] [datetime] NULL,
	[criado_por] [varchar](100) NULL,
	[dt_delete] [datetime] NULL,
	[deletado_por] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [PRD].[Conta_BTC_old]    Script Date: 10/03/2019 15:21:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [PRD].[Conta_BTC_old](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[symbol] [varchar](30) NULL,
	[saldo] [float] NULL,
	[id_tatus_trade] [tinyint] NULL,
	[qtd_compra] [float] NULL,
	[valor_compra] [float] NULL,
	[dt_compra] [datetime] NULL,
	[qtd_venda] [float] NULL,
	[valor_venda] [float] NULL,
	[dt_venda] [datetime] NULL,
	[valor_lucro] [float] NULL,
	[perc_Lucro] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [PRD].[Historico_BTC]    Script Date: 10/03/2019 15:21:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [PRD].[Historico_BTC](
	[DataHora] [datetime] NULL,
	[Data] [date] NULL,
	[symbol] [varchar](50) NULL,
	[priceChange] [numeric](10, 6) NULL,
	[priceChangePercent] [float] NULL,
	[weightedAvgPrice] [numeric](10, 6) NULL,
	[prevClosePrice] [numeric](10, 6) NULL,
	[lastPrice] [numeric](10, 6) NULL,
	[lastQty] [float] NULL,
	[bidPrice] [numeric](10, 6) NULL,
	[bidQty] [float] NULL,
	[askPrice] [numeric](10, 6) NULL,
	[askQty] [float] NULL,
	[openPrice] [numeric](10, 6) NULL,
	[highPrice] [numeric](10, 6) NULL,
	[lowPrice] [numeric](10, 6) NULL,
	[volume] [float] NULL,
	[quoteVolume] [float] NULL,
	[openTime] [bigint] NULL,
	[closeTime] [bigint] NULL,
	[firstId] [bigint] NULL,
	[lastId] [bigint] NULL,
	[count] [bigint] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [PRD].[Historico_Trade]    Script Date: 10/03/2019 15:21:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [PRD].[Historico_Trade](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[data_hora] [datetime] NULL,
	[id_conta] [int] NULL,
	[id_status_trade] [tinyint] NULL,
	[symbol] [varchar](30) NULL,
	[valor_compra] [float] NULL,
	[qtd_compra] [float] NULL,
	[valor_venda] [float] NULL,
	[qtd_venda] [float] NULL,
	[valor_lucro] [float] NULL,
	[perc_Lucro] [float] NULL,
	[timestamp] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [PRD].[Parametro]    Script Date: 10/03/2019 15:21:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [PRD].[Parametro](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nome_parametro] [varchar](50) NULL,
	[descricao] [varchar](300) NULL,
	[dt_cadastro] [datetime] NULL,
	[criado_por] [varchar](50) NULL,
	[dt_delete] [datetime] NULL,
	[deletado_por] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [PRD].[Parametro_Trade]    Script Date: 10/03/2019 15:21:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [PRD].[Parametro_Trade](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_parametro] [int] NULL,
	[valor] [varchar](50) NULL,
	[dt_cadastro] [datetime] NULL,
	[criado_por] [varchar](50) NULL,
	[dt_delete] [datetime] NULL,
	[deletado_por] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [PRD].[Status_Trade]    Script Date: 10/03/2019 15:21:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [PRD].[Status_Trade](
	[id] [tinyint] IDENTITY(1,1) NOT NULL,
	[nome_status] [varchar](50) NULL,
	[descricao_status] [varchar](300) NULL,
	[dt_criacao] [datetime] NULL,
	[criado_por] [varchar](50) NULL,
	[dt_delete] [datetime] NULL,
	[deletado_por] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[Status_BTC]    Script Date: 10/03/2019 15:21:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [STG].[Status_BTC](
	[symbol] [varchar](50) NULL,
	[priceChange] [varchar](50) NULL,
	[priceChangePercent] [varchar](50) NULL,
	[weightedAvgPrice] [varchar](50) NULL,
	[prevClosePrice] [varchar](50) NULL,
	[lastPrice] [varchar](50) NULL,
	[lastQty] [varchar](50) NULL,
	[bidPrice] [varchar](50) NULL,
	[bidQty] [varchar](50) NULL,
	[askPrice] [varchar](50) NULL,
	[askQty] [varchar](50) NULL,
	[openPrice] [varchar](50) NULL,
	[highPrice] [varchar](50) NULL,
	[lowPrice] [varchar](50) NULL,
	[volume] [varchar](50) NULL,
	[quoteVolume] [varchar](50) NULL,
	[openTime] [varchar](50) NULL,
	[closeTime] [varchar](50) NULL,
	[firstId] [varchar](50) NULL,
	[lastId] [varchar](50) NULL,
	[count] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [STG].[Status_BTC_OK]    Script Date: 10/03/2019 15:21:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [STG].[Status_BTC_OK](
	[DataHora] [datetime] NULL,
	[Data] [date] NULL,
	[symbol] [varchar](50) NULL,
	[priceChange] [numeric](10, 6) NULL,
	[priceChangePercent] [float] NULL,
	[weightedAvgPrice] [numeric](10, 6) NULL,
	[prevClosePrice] [numeric](10, 6) NULL,
	[lastPrice] [numeric](10, 6) NULL,
	[lastQty] [float] NULL,
	[bidPrice] [numeric](10, 6) NULL,
	[bidQty] [float] NULL,
	[askPrice] [numeric](10, 6) NULL,
	[askQty] [float] NULL,
	[openPrice] [numeric](10, 6) NULL,
	[highPrice] [numeric](10, 6) NULL,
	[lowPrice] [numeric](10, 6) NULL,
	[volume] [float] NULL,
	[quoteVolume] [float] NULL,
	[openTime] [bigint] NULL,
	[closeTime] [bigint] NULL,
	[firstId] [bigint] NULL,
	[lastId] [bigint] NULL,
	[count] [bigint] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  UserDefinedFunction [PRD].[Preco_Atual]    Script Date: 10/03/2019 15:21:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE function [PRD].[Preco_Atual](@symbol varchar(50))
returns table
as 
return( 
	select top 1
		symbol
		,lastPrice
	from [PRD].[Historico_BTC]
	where --Data >= cast(getdate() as date) and @Data >= Data    
	symbol = @symbol
	order by DataHora desc
);

GO
/****** Object:  UserDefinedFunction [PRD].[Trade]    Script Date: 10/03/2019 15:21:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--trade for ONGUSDT
--use BTC 
CREATE function [PRD].[Trade](@symbol varchar(50))
returns table
as 
return( 
	select top 1
		symbol
		,lastPrice
		,'0.6250' as Price_BUY
		,'0.6282' as Price_SELL
		,'590.00' as Quantity_BUY
		,'590.00' as Quantity_SELL
		,datediff(second,'1970-01-01',getdate()) as timestamp
	from [PRD].[Historico_BTC]
	where --Data >= cast(getdate() as date) and @Data >= Data    
	symbol = @symbol
	order by DataHora desc
);

GO
/****** Object:  StoredProcedure [PRD].[Trade_BTC]    Script Date: 10/03/2019 15:21:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [PRD].[Trade_BTC](@Data date null,@Cryptocurrency varchar(10) null)
as 
begin

--declare 
--	@Cryptocurrency varchar(10) 
--	,@Data date 

--set @Cryptocurrency = 'NULSUSDT'
--set @Data = '2019-02-06'


if @Cryptocurrency is null
begin
	set @Cryptocurrency = '%USDT'
end

if object_id('tempdb..#Resumo_Historico_BTC') is not null 
drop table #Resumo_Historico_BTC
select 
	 --substring(convert(varchar(10),a.Data,120),1,7) as Mes	-- Estratégia Mês
	 a.Data -- Estratégia Dia
	 ,datepart(hour,a.DataHora) as Hora --Estratégia Hora
	 ,a.symbol
	 ,min(cast(a.volume as float)) firstVolume
	 ,max(cast(a.volume as float)) lastVolume
	 ,min(cast(a.lastPrice as float)) firstPrice
	 ,max(cast(a.lastPrice as float)) lastPrice
	 ,round((max(cast(a.lastPrice as float)) - min(cast(a.lastPrice as float))) / max(cast(nullif(a.lastPrice,1) as float))*100,2) percentPrice
	 ,stdevp(cast(a.lastPrice as float)) desvioPadrao
	 ,cast(b.lastPrice as float) PrecoAtual
	 ,round((max(cast(nullif(a.lastPrice,0) as float)) - cast(nullif(b.lastPrice,0) as float)) / cast(nullif(b.lastPrice,1) as float)*100,2) PercPrevisaoLucro
	 into #Resumo_Historico_BTC
from [PRD].[Historico_BTC] a outer apply PRD.Preco_Atual(a.symbol) b
where a.DataHora >=	@Data 
and a.symbol like @Cryptocurrency 
and a.Volume <> '0.00000000' 
group by
	--substring(convert(varchar(10),a.Data,120),1,7)
	 a.Data
	 ,datepart(hour,a.DataHora)
	 ,a.symbol
	 ,b.lastPrice

select * 
from #Resumo_Historico_BTC 
where Hora = datepart(hour,getdate())
order by 
	--symbol
	--,data desc
	--,hora desc
	PercPrevisaoLucro desc

end


GO
