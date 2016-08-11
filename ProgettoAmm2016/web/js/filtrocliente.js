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
                document.getElementById("stampa").innerHTML = text+"AAAA";
                aggiornaListaArticoli(data);
            },
            error : function(data, state)
            {
                document.getElementById("stampa").innerHTML = text+"BBB";
            }
        }
    );
    
    function aggiornaListaArticoli(listaAlunni)
    {
        // Prende il testo
        var testo = document.getElementById("textfiltro").value;

        // Stampa
        document.getElementById("stampa").innerHTML = testo;

        var table = document.getElementById("tabella_oggetti");
        
        //TABLE ROWS
        var stock = new Array()
        stock[0] = new Array("Cars", "88.625", "85.50", "85.81", "987")
        stock[1] = new Array("Veggies", "88.625", "85.50", "85.81", "988")
        stock[2] = new Array("Colors", "88.625", "85.50", "85.81", "989")
        stock[3] = new Array("Numbers", "88.625", "85.50", "85.81", "990")
        stock[4] = new Array("Requests", "88.625", "85.50", "85.81", "991")

        for (i = 0; i < stock.length; i++) 
        {
            var tr = document.createElement('TR');
            table.appendChild(tr);

            for (j = 0; j < stock[i].length; j++) 
            {
                var td = document.createElement('TD')
                td.appendChild(document.createTextNode(stock[i][j]));
                tr.appendChild(td)
            }
        }
    }
}
