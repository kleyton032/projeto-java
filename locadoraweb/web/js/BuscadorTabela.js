/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function doSearch(){
    var tableReg = document.getElementById('dados');
    var searchText = document.getElementById('searchTerm').value.toLowerCase();
    var buscar = document.getElementById('buscar').value;
    var cellsOfRow = "";
    var found = false;
    var compareWith = "";

    // Recorremos todas las filas con contenido de la tabla
    for (var i = 1; i < tableReg.rows.length; i++)
    {
        cellsOfRow = tableReg.rows[i].getElementsByTagName('td');
        found = false;
        // Recorremos todas las celdas
        
        
        compareWith = cellsOfRow[buscar].innerHTML.toLowerCase();
        // Buscamos el texto en el contenido de la celda
        if (searchText.length == 0 || (compareWith.indexOf(searchText) > -1))
        {
            found = true;
        }
            
        if (found)
        {
            tableReg.rows[i].style.display = '';
        } else {
            // si no ha encontrado ninguna coincidencia, esconde la
            // fila de la tabla
            tableReg.rows[i].style.display = 'none';
        }
    }
}

function teste(elem){
    document.getElementById('matricula').value=elem.cells["0"].innerText;
    $('#mymodalfuncionario').modal('toggle');
}
