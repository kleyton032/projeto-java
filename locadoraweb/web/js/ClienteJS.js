
    var cpf = document.getElementById('cpf').value.toLowerCase();
    function validar(){
    if(cpf.length == 11){
        document.getElementByName("cpf").style.border =  "1px solid #FF0000";
    }
}

