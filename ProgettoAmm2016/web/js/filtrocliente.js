function filtra(event)
{
    text = document.getElementById("textfiltro").value;
        
    $.ajax
    (
        {
            url: "FiltroAjax",
            data:
            {
              cmd: "search",
              text: text
            },
            dataType: 'json',
            success : function(data, state)
            {
                aggiornaListaArticoli(data);
            },
            error : function(data, state)
            {  }
        }
    );
    
    function aggiornaListaArticoli(listaArticoli)
    {
        var count=0;
        
        for(var articolo in listaArticoli)
        {
            count++;
        }

        //Eimino l'attuale contenuto della tabella
        var table = document.getElementById("tabella_oggetti");
        $("#tabella_oggetti tbody").remove(); 
        $("#tabella_oggetti thead").remove(); 
        
        if(count>0)
        {
            if(count == 1)
                document.getElementById("stampa").innerHTML = "Trovata " + count + " corrispondenza";
            else
                document.getElementById("stampa").innerHTML = "Trovate " + count + " corrispondenze";
            
            var thead = document.createElement('THEAD');
            table.appendChild(thead);

            var tr0 = document.createElement('TR');
                thead.appendChild(tr0);

            var th1 = document.createElement('TH');
            th1.appendChild(document.createElement('B').appendChild(document.createTextNode("Nome dell'oggetto")));
            tr0.appendChild(th1);

            var th2 = document.createElement('TH');
            th2.appendChild(document.createElement('B').appendChild(document.createTextNode("Foto descrittiva")));
            tr0.appendChild(th2);

            var th3 = document.createElement('TH');
            th3.appendChild(document.createElement('B').appendChild(document.createTextNode("Pezzi disponibili")));
            tr0.appendChild(th3);

            var th4 = document.createElement('TH');
            th4.appendChild(document.createElement('B').appendChild(document.createTextNode("Prezzo")));
            tr0.appendChild(th4);

            var th5 = document.createElement('TH');
            th5.appendChild(document.createElement('B').appendChild(document.createTextNode("Link")));
            tr0.appendChild(th5);
        
            var tbody = document.createElement('TBODY');
            table.appendChild(tbody);

            for(var articolo in listaArticoli)
            {
                var tr = document.createElement('TR');
                tbody.appendChild(tr);

                //Nome            
                var td1 = document.createElement('TD');
                var bold = document.createElement('b');
                bold.appendChild(document.createTextNode(listaArticoli[articolo].nome));
                td1.appendChild(bold);
                tr.appendChild(td1);

                //Immagine
                var td2 = document.createElement('TD');
                var image = document.createElement('IMG');
                td2.appendChild(image);
                image.setAttribute("src", listaArticoli[articolo].urlImage);
                image.setAttribute("width", "50");
                image.setAttribute("height", "50");
                tr.appendChild(td2);

                //Pezzi
                var td3 = document.createElement('TD');
                if(listaArticoli[articolo].quantita > 1) {
                    td3.appendChild(document.createTextNode(listaArticoli[articolo].quantita + " pezzi"));
                } else {
                    td3.appendChild(document.createTextNode(listaArticoli[articolo].quantita + " pezzo"));
                }
                tr.appendChild(td3);

                //Prezzo
                var td4 = document.createElement('TD');
                if(listaArticoli[articolo].prezzo > 1) {
                    td4.appendChild(document.createTextNode(listaArticoli[articolo].prezzo + " coins"));
                } else {
                    td4.appendChild(document.createTextNode(listaArticoli[articolo].prezzo + " coin"));
                }
                tr.appendChild(td4);

                //Link            
                var td2 = document.createElement('TD');
                var link = document.createElement('A');
                link.appendChild(document.createTextNode("Link all'articolo"));
                td2.appendChild(link);
                link.setAttribute("href", "ArticoloServlet?articoloId="+listaArticoli[articolo].id);
                tr.appendChild(td2);
            }
        }
        else
        {
            document.getElementById("stampa").innerHTML = "Nessun oggetto corrispondente";
        }
        
        return;
    }
}


