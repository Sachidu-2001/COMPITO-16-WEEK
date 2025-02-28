
---esercizio 1 

select count(*) as ConteggioVerbali  from verbale


---esercizio 2

SELECT 
    ANAGRAFICA.idanagrafica, 
    CONCAT(ANAGRAFICA.Cognome, ' ', ANAGRAFICA.Nome) AS Utente, 
    COUNT(VERBALE.idverbale) AS ConteggioVerbali
FROM VERBALE
JOIN ANAGRAFICA ON VERBALE.idanagrafica = ANAGRAFICA.idanagrafica
GROUP BY ANAGRAFICA.idanagrafica, ANAGRAFICA.Cognome, ANAGRAFICA.Nome;


----esercizio 3

SELECT 
    TIPO_VIOLAZIONE.idviolazione,
	TIPO_VIOLAZIONE.descrizione as Descrizione,
	count( verbale.idverbale) as ConteggioVerbali
	from VERBALE
join TIPO_VIOLAZIONE on verbale.idviolazione = TIPO_VIOLAZIONE.idviolazione
group by TIPO_VIOLAZIONE.idviolazione, TIPO_VIOLAZIONE.descrizione;


----esercizio 4

select
    ANAGRAFICA.idanagrafica,
	CONCAT(anagrafica.cognome, ' ', anagrafica.Nome) as Utente,
	sum( VERBALE.DecurtamentoPunti) as TotalePuntiDecurtati
	from VERBALE
join ANAGRAFICA on verbale.idanagrafica = ANAGRAFICA.idanagrafica
group by ANAGRAFICA.idanagrafica, ANAGRAFICA.Cognome, ANAGRAFICA.Nome;


---esercizio 5

SELECT 
    ANAGRAFICA.Cognome, 
    ANAGRAFICA.Nome, 
    VERBALE.DataViolazione as 'Data',
    VERBALE.IndirizzoViolazione as 'Indirizzo',
    TIPO_VIOLAZIONE.descrizione AS Violazione, 
    VERBALE.Importo, 
    VERBALE.DecurtamentoPunti
FROM VERBALE
JOIN ANAGRAFICA ON VERBALE.idanagrafica = ANAGRAFICA.idanagrafica
JOIN TIPO_VIOLAZIONE ON VERBALE.idviolazione = TIPO_VIOLAZIONE.idviolazione
WHERE ANAGRAFICA.Città = 'Palermo';


----esercizio 6



----esercizio 7

SELECT
    ANAGRAFICA.idanagrafica,
	CONCAT (ANAGRAFICA.Nome, ' ',ANAGRAFICA.Cognome) as Utente,
	SUM ( VERBALE.Importo) as ImportoTotale 
	FROM VERBALE
JOIN ANAGRAFICA ON VERBALE.idanagrafica = ANAGRAFICA.idanagrafica
GROUP BY ANAGRAFICA.idanagrafica, ANAGRAFICA.Nome, ANAGRAFICA.Cognome;


----esercizio 8 

select 
   ANAGRAFICA.Nome,
   ANAGRAFICA.Cognome,
   ANAGRAFICA.Città
   from VERBALE
JOIN ANAGRAFICA on VERBALE.idanagrafica = ANAGRAFICA.idanagrafica
WHERE ANAGRAFICA.Città = 'Palermo'


---esercizio 9

---esercizio 10

select 
  VERBALE.Nominativo_Agente as Agente,
  count (VERBALE.idverbale) as ConteggioViolazioni
from VERBALE
group by Nominativo_Agente










