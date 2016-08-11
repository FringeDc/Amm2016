function stampa(event)
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
        var a=0;
        
        for(var articolo in listaArticoli)
        {
            a = a+1;
        }
        
        // Prende il testo
        var testo = document.getElementById("textfiltro").value;

        // Stampa
        document.getElementById("stampa").innerHTML = testo+" risultati: "+a;

        //Eimino l'attuale contenuto della tabella
        var table = document.getElementById("tabella_oggetti");
        $("#tabella_oggetti tbody tr").remove();
        
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
        
        return;
    }
}


