--TIPOS DE DADOS

--1.booleanos: por padr�o � iniciado como NULO e pode receber 1 ou 0 => BIT
--2.caractere: 
	--tem tamanho fixo ou quantidade fixa de caracteres => CHAR; 
	--tamanho vari�vel de amplitude que pode ter o caractere, usando somente a quantidade exata, embora tenha reservado mais => VARCHAR ou NVARCHAR
--3.n�meros:
	--#VALORES EXATOS
	--sem valores fracionados => TINYINT (limite muito baixo, 1byte), SMALLINT(limite pouco baixo, 2bytes); INT (limite medio, 4bytes); BIGINT (limite grande, 8bytes) 
	--valores exatos que permitem fracionamento, podendo ser especificada a escala decimal com os par�metros (n digitos, n casas decimais) => NUMERIC ou DECIMAL
	--#VALORES APROXIMADOS
	--precis�o aproximada de at� 15 digitos ap�s a v�rgula =>REAL e FLOAT
--4.temporais:
	--ano, mes e dia => DATE
	--ano, mes e dia + hora, minuto, segundo => DATETIME
	--ano, mes e dia + hora, minuto, MILIsegundos => DATETIME2
	--ano, mes e dia + hora, minuto, segundo + limite '1900-01-01:00:00:00 at� 2079-06-06:23:59:59'=> SMALLDATETIME
	--hora, minuto, segundo + limite '00:00:00 at� 23:59:59'=> TIME 
	--ano, mes e dia + hora, minuto, segundo + fuso hor�rio => DATETIMEOFFSET