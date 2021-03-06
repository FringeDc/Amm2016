/*
drop table clienti;
drop table venditori;
/*
*/
CREATE TABLE CLIENTI 
( id INTEGER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
nickname VARCHAR(128),
password VARCHAR(128),
acquisti INTEGER,
soldi INTEGER);

CREATE TABLE VENDITORI 
( id INTEGER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
nickname VARCHAR(128),
password VARCHAR(128),
venduti INTEGER,
soldi INTEGER);

CREATE TABLE ARTICOLI
( id INTEGER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
nome VARCHAR(128),
prezzo INTEGER,
quantita INTEGER,
url VARCHAR(128),
descrizione VARCHAR(256),
venditoreid INTEGER,
FOREIGN KEY (venditoreid) REFERENCES venditori(id)
);

INSERT INTO CLIENTI (id, nickname, password, acquisti, soldi)
VALUES (default, 'Peach', '111', 5, 102),
 (default, 'Wario', '222', 4, 74),
 (default, 'Bowser', '333', 3, 5004),
 (default, 'Luigi', '444', 15, 36),
 (default, 'Toad', '555', 1, 91);

INSERT INTO VENDITORI (id, nickname, password, venduti, soldi)
VALUES (default, 'Alessio', 'aaa', 5, 10),
 (default, 'Andrea', 'nnn', 7, 15),
 (default, 'Davide', 'ddd', 8, 155),
 (default, 'Matteo', 'mmm', 19, 1578),
 (default, 'Emanuel', 'eee', 1, 22);

INSERT INTO ARTICOLI (id, nome, prezzo, quantita, url, descrizione, venditoreid)
VALUES 
 (default, 'Super Fungo', 1, 233, 'objects/sells/super_fungo.png', 'Sotto l''effetto di questo fungo, si diventa più alti e si può sconfiggere quasi tutti i nemici con un Salto.', 1),
 (default, 'Stella', 15, 101, 'objects/sells/stella.png', 'Rende l''utilizzatore temporaneamente invincibile, in modo da sconfiggere facilmente i nemici con un solo tocco.', 5),
 (default, 'Super Campanella', 12, 13, 'objects/sells/campanello.png', 'Ha il potere di trasformare Mario, Luigi, Peach e Toad Blu nelle rispettive trasformazioni da gatto.', 1),
 (default, 'Fiore Boomerang', 6, 51, 'objects/sells/fiore_boomerang.png', 'Il Fiore Boomerang trasforma Mario in Mario Boomerang, e come potere gli conferisce di lanciare un Boomerang blu alla volta.', 2),
 (default, 'Fiore Dorato', 15, 17, 'objects/sells/fiore_dorato.png', 'Il Fiore Dorato permetterà a Mario di trasformarsi in Mario Dorato e di sparare Palle Dorate.', 3),
 (default, 'Fiore di Fuoco', 4, 81, 'objects/sells/fiore_fuoco.png', 'Quando Mario prende un Fiore di Fuoco, può trasformarsi in Mario Fuoco, che gli permette anche di lanciare delle palle di fuoco.', 4),
 (default, 'Fiore di Ghiaccio', 5, 59, 'objects/sells/fiore_ghiaccio.png', 'Permette di lanciare delle palle di ghiaccio.', 5),
 (default, 'Fiore Nuvola', 9, 21, 'objects/sells/fiore_nuvola.png', 'Si acquisisce il potere di creare sotto di sè delle candide nuvole, a forma di piattaforma, per poterci camminare sopra.', 1),
 (default, 'SuperFoglia', 7, 47, 'objects/sells/foglia.png', 'Trasforma Mario/Luigi in Mario Procione/Luigi Volpe, e gli permette di eseguire Giracodate, Volare e di Planare sui nemici.', 2),
 (default, 'Fungo 1UP', 2, 97, 'objects/sells/fungo_1up.png', 'Sono funghi verdi a pois bianchi, che donano a chi li ottiene una vita extra.', 3),
 (default, 'Fungo Ape', 10, 25, 'objects/sells/fungo_ape.png', 'Permette di volare per un certo tempo, di camminare sulle nuvole e sui fiori e arrampicarsi sulle pareti coperte di miele.', 4),
 (default, 'Fungo Elica', 6, 47, 'objects/sells/fungo_elicottero.png', 'Come suggerisce il nome, serve per fluttuare nell''aria e atterrare più lentamente.', 5),
 (default, 'Fungo Spettro', 11, 7, 'objects/sells/fungo_fantasma.png', 'Dà il potere di levitare e di diventare incorporeo per qualche secondo per passare attraverso alcuni muri.', 1),
 (default, 'Super Ghianda', 9, 39, 'objects/sells/ghianda.png', 'Quando si raccoglie una Super Ghianda, ci si trasforma in Mario Scoiattolo Volante e si può planare.', 2),
 (default, 'Mega Fungo', 8, 43, 'objects/sells/fungo_gigante.png', 'Permette di diventare giganteschi e invincibili. Si può distruggere qualsiasi tipo di nemico e i vari blocchi.', 3),
 (default, 'Fungo Molla', 10, 3, 'objects/sells/fungo_molla.png', 'Dà il potere di eseguire giganteschi salti e di fare Salti a Parete automatici, e anche di rimbalzare su qualsiasi cosa.', 4),
 (default, 'Fungo Roccia', 11, 16, 'objects/sells/fungo_roccia.png', 'Permette di racchiudersi in una roccia e lanciarsi contro i nemici ad una velocità incredibile.', 5),
 (default, 'Fungo Scatto', 20, 3, 'objects/sells/fungo_scatto.png', 'Fa aumentare la velocità del proprio mezzo di trasporto ogni volta che lo si usa.', 1),
 (default, 'Fungo Velenoso', 12, 56, 'objects/sells/fungo_velenoso.png', 'Come fa capire il nome, il Fungo Velenoso danneggia il possessore.', 2),
 (default, 'Guscio Blu', 11, 41, 'objects/sells/guscio_blu.png', 'Insegue l''obiettivo per farlo ribaltare con un''esplosione che coinvolge anche chi gli sta intorno.', 3),
 (default, 'Guscio Dorato', 17, 13, 'objects/sells/guscio_dorato.png', 'E'' un raro tipo di guscio che, se lanciato, crea una scia di monete dietro di esso.', 4),
 (default, 'Guscio Rosso', 6, 81, 'objects/sells/guscio_rosso.png', 'Se lanciato, ha la capacità di seguire automaticamente gli avversari e colpirli.', 5),
 (default, 'Guscio Verde', 3, 41, 'objects/sells/guscio_verde.png', 'Il loro uso principale è quello di essere lanciati per colpire i giocatori avversari o i nemici sulla traiettoria.', 1);
 /*(default, 'Minifungo', 10, 61, 'objects/sells/minifungo.png', 'Rimpicciolisce chi lo utilizza così da poter attraversare sentieri stretti e correre sulla superficie dell''acqua.', 2),
 (default, 'Costume Pinguino', 7, 41, 'objects/sells/pinguino.png', 'Permette di scivolare su superfici ghiacciate e distruggere blocchi e nemici con cui si scontra in scivolata.', 3),
 (default, 'Piuma', 7, 23, 'objects/sells/piuma.png', 'Permette di eseguire dei salti due volte più alti del normale, potendo creare scorciatoie saltando le barriere.', 4);

