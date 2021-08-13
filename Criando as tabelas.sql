CREATE SCHEMA Dimensional;



CREATE SEQUENCE Dimensional.ChaveVendedorWil;

CREATE TABLE Dimensional.DimensaoVendedorWil(

  ChaveVendedor int default nextval('Dimensional.ChaveVendedor'::regclass) PRIMARY KEY,

  IDVendedor int,

  Nome Varchar(50),

  DataInicioValidade date not null,

  DataFimValidade date

);



CREATE SEQUENCE Dimensional.ChaveClienteWil;

CREATE TABLE Dimensional.DimensaoClienteWil(

  ChaveCliente int default nextval('Dimensional.ChaveCliente'::regclass) PRIMARY KEY,

  IDCliente int,

  Cliente Varchar(50),

  Estado Varchar(2),

  Sexo Char(1),

  Status Varchar(50),

  DataInicioValidade date not null,

  DataFimValidade date

);



CREATE SEQUENCE Dimensional.ChaveProdutoWil;

CREATE TABLE Dimensional.DimensaoProdutoWil(

  ChaveProduto int default nextval('Dimensional.ChaveProduto'::regclass) PRIMARY KEY,

  IDProduto int,

  Produto Varchar(100),

  DataInicioValidade date not null,

  DataFimValidade date

);



CREATE SEQUENCE Dimensional.ChaveTempoWil;

CREATE TABLE Dimensional.DimensaoTempoWil(

  ChaveTempo int default nextval('Dimensional.ChaveTempo'::regclass) PRIMARY KEY,

  Data Date,

  Dia int,

  Mes int,

  Ano int,

  DiaSemana int,

  Trimestre int

);



CREATE SEQUENCE Dimensional.ChaveVendasWil;

CREATE TABLE Dimensional.FatoVendasWil(

  ChaveVendas int default nextval('Dimensional.ChaveVendas'::regclass) PRIMARY KEY,

  ChaveVendedor int references Dimensional.DimensaoVendedor (ChaveVendedor),

  ChaveCliente int references Dimensional.DimensaoCliente (ChaveCliente),

  ChaveProduto int references Dimensional.DimensaoProduto (ChaveProduto),

  ChaveTempo int references Dimensional.DimensaoTempo (ChaveTempo),

  Quantidade int,

  ValorUnitario Numeric(10,2),

  ValorTotal Numeric(10,2),

  Desconto Numeric(10,2)

);

