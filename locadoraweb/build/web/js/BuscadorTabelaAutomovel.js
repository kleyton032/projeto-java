/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function doSearch(){
    var tableReg = document.getElementById('dadosauto');
    var searchText = document.getElementById('searchTermauto').value.toLowerCase();
    var buscar = document.getElementById('buscarauto').value;
    var tipo = document.querySelector('input[name="tipo"]:checked').value;
    var cellsOfRow = "";
    var found = false;
    var compareWith = "";
    var compareWithTipo = "";

    // Recorremos todas las filas con contenido de la tabla
    for (var i = 1; i < tableReg.rows.length; i++)
    {
        cellsOfRow = tableReg.rows[i].getElementsByTagName('td');
        found = false;
        // Recorremos todas las celdas
        
        if(tipo == 0){
            compareWith = cellsOfRow[buscar].innerHTML.toLowerCase();
            // Buscamos el texto en el contenido de la celda
            if (searchText.length == 0 || (compareWith.indexOf(searchText) > -1))
            {
                found = true;
            }
        }else{
            compareWith = cellsOfRow[buscar].innerHTML.toLowerCase();
            compareWithTipo = cellsOfRow[0].innerHTML.length;
            // Buscamos el texto en el contenido de la celda
            if (searchText.length == 0 && (compareWithTipo == tipo) || (compareWith.indexOf(searchText) > -1) && (compareWithTipo == tipo))
            {
                found = true;
            }
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
