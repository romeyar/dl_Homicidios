-- DataWareHouse.dbo.DIM_Fechas definition

-- Drop table

-- DROP TABLE DataWareHouse.dbo.DIM_Fechas;

CREATE TABLE DataWareHouse.dbo.DIM_Fechas (
	FechaHecho date NOT NULL,
	Annio int NOT NULL,
	Mes tinyint NOT NULL,
	Dia tinyint NOT NULL,
	DiaSemana tinyint NOT NULL,
	Semana tinyint NOT NULL,
	Trimestre tinyint NOT NULL,
	CONSTRAINT DIM_Fechas_PK PRIMARY KEY (FechaHecho),
	CONSTRAINT DIM_Fechas_DIM_Dias_Semana_FK FOREIGN KEY (DiaSemana) REFERENCES DataWareHouse.dbo.DIM_Dias_Semana(DiaSemana),
	CONSTRAINT DIM_Fechas_DIM_Meses_FK FOREIGN KEY (Mes) REFERENCES DataWareHouse.dbo.DIM_Meses(Mes),
	CONSTRAINT DIM_Fechas_DIM_Trimestres_FK FOREIGN KEY (Trimestre) REFERENCES DataWareHouse.dbo.DIM_Trimestres(Trimestre)
);
