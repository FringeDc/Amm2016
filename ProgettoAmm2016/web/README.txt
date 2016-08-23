PUSHER MARIO BROS.

1. Breve descrizione dell'applicazione

Il progetto e' stato principalmente realizzato per il browser Google Chrome per via della maggior compatibilita' di proprieta' css rispetto agli altri browser.
Il progetto si propone come un sito di compravendita di oggettistica di campo videoludico.

2. Requisiti soddisfatti

Il progetto è stato realizzato impiegando 
- HTML + CSS (validati secondi W3C)
- Java
- MySQL
- Javascript

Il progetto, essendo di natura commerciale, prevede una transazione "monetaria" (seppur fittizia), descritta nella pagina Acquisto.java.
Inoltre, e' stata implementata una funzionalita' Ajax nella pagina filtrocliente.js per poter filtrare la lista degli articoli tramite input.


3. Credenziali di autenticazione

Verranno qui elencati tutti gli account salvati nel database dell'applicazione, differenziati per tipologia.

Clienti:

Username: Peach		Passsword: 111
Username: Wario		Passsword: 222
Username: Bowser	Passsword: 333
Username: Luigi		Passsword: 444
Username: Toad		Passsword: 555

Venditori:

Username: Alessio	Passsword: aaa
Username: Andrea	Passsword: nnn
Username: Davide	Passsword: ddd
Username: Matteo	Passsword: mmm
Username: Emanuel	Passsword: eee

Ognuno di questi account possiede un differente numero di coin (valuta impiegata nel progetto).

Clienti e Venditori sono tipologie di utente rappresentate da una classe a se' stante, cio' vuol dire che non hanno alcun collegamento tra loro (nessuna superclasse 'Utente').

Nel database sono gia' presenti svariati articoli, ognuno dei quali e' stato 'messo in vendita' da un account di un venditore.