var form = document.getElementById('formulario');

form.addEventListener("submit", validar, false);

function validar(e){
    var check = 0;
    if(placa.value.length != 7){
        document.getElementById("placa").style.border="2px solid #FF0000";
        var erro = document.getElementById("erroplaca");
        erro.innerHTML ="O campo Placa deve conter 7 dígitos";
        erro.style.color="#FF0000";
        erro.style.fontWeight="normal";
        placa.focus();
        e.preventDefault();
        check = 1;
    }else{
        document.getElementById("placa").style.border="1px solid #000";
        document.getElementById("erroplaca").innerHTML ="";
    }
    
    if(modelo.value == ""){
        document.getElementById("modelo").style.border="2px solid #FF0000";
        var erro = document.getElementById("erromodelo");
        erro.innerHTML ="Preencha o campo Modelo";
        erro.style.color="#FF0000";
        erro.style.fontWeight="normal";
        e.preventDefault();
        if(check == 0){
        modelo.focus();
        check = 1;
        }
    }else{
        document.getElementById("modelo").style.border="1px solid #000";
        document.getElementById("erromodelo").innerHTML ="";
    }
    if(cor.value == ""){
        document.getElementById("cor").style.border="2px solid #FF0000";
        var erro = document.getElementById("errocor");
        erro.innerHTML ="Preencha o campo Cor";
        erro.style.color="#FF0000";
        erro.style.fontWeight="normal";
        e.preventDefault();
        if(check == 0){
        cor.focus();
        check = 1;
        }
    }else{
        document.getElementById("cor").style.border="1px solid #000";
        document.getElementById("errocor").innerHTML ="";
    }
    if(preco.value == ""){
        document.getElementById("preco").style.border="2px solid #FF0000";
        var erro = document.getElementById("erropreco");
        erro.innerHTML ="Prencha o campo Preço";
        erro.style.color="#FF0000";
        erro.style.fontWeight="normal";
        e.preventDefault();
        check = 2;
        if(check == 0){
        preco.focus();
        }
    }else{
        document.getElementById("preco").style.border="1px solid #000";
        document.getElementById("erropreco").innerHTML ="";
    }
    if(preco.value.length > 4){
        document.getElementById("preco").style.border="2px solid #FF0000";
        var erro = document.getElementById("erropreco");
        erro.innerHTML ="O Preço máximo é 9999,00";
        erro.style.color="#FF0000";
        erro.style.fontWeight="normal";
        e.preventDefault();
        if(check == 0){
        preco.focus();
        check = 1;
        }
    }else{
        if(check == 2){
            
        }else{
        document.getElementById("preco").style.border="1px solid #000";
        document.getElementById("erropreco").innerHTML ="";
        }
    }
    if(chassi.value.length != 17){
        document.getElementById("chassi").style.border="2px solid #FF0000";
        var erro = document.getElementById("errochassi");
        erro.innerHTML ="O campo Chassi deve conter 17 dígitos";
        erro.style.color="#FF0000";
        erro.style.fontWeight="normal";
        e.preventDefault();
        if(check == 0){
        chassi.focus();
        check = 1;
        }
    }else{
        document.getElementById("chassi").style.border="1px solid #000";
        document.getElementById("errochassi").innerHTML ="";
    }
    if(check == 0){
            alert("Cadastro efetuado com sucesso.")
    }
	
	
}

function limpar() {
    document.getElementById("formulario").reset();
}