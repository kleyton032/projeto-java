var form = document.getElementById('formulario');

form.addEventListener("submit", validar, false);

function validar(e){
    var check = 0;
    if(matricula.value.length != 7){
        document.getElementById("matricula").style.border="2px solid #FF0000";
        var erro = document.getElementById("erromatricula");
        erro.innerHTML ="O campo Matrícula deve conter 7 dígitos";
        erro.style.color="#FF0000";
        erro.style.fontWeight="normal";
        matricula.focus();
        e.preventDefault();
        check = 1;
    }else{
        document.getElementById("matricula").style.border="1px solid #000";
        document.getElementById("erromatricula").innerHTML ="";
    }
    if(nome.value == ""){
        document.getElementById("nome").style.border="2px solid #FF0000";
        var erro = document.getElementById("erronome");
        erro.innerHTML ="Preencha o campo Nome";
        erro.style.color="#FF0000";
        erro.style.fontWeight="normal";
        e.preventDefault();
        if(check == 0){
        nome.focus();
        check = 1;
        }
    }else{
        document.getElementById("nome").style.border="1px solid #000";
        document.getElementById("erronome").innerHTML ="";
    }
    if(cpf.value.length != 11){
        document.getElementById("cpf").style.border="2px solid red";
        var erro = document.getElementById("errocpf");
        erro.innerHTML ="O CPF deve conter 11 dígitos";
        erro.style.color="red";
        erro.style.fontWeight="normal";
        e.preventDefault();
        if(check == 0){
        cpf.focus();
        check = 1;
        }
    }else{
        document.getElementById("cpf").style.border="1px solid #000";
        document.getElementById("errocpf").innerHTML ="";
    }

    if(email.value == ""){
        document.getElementById("email").style.border="2px solid red";
        var erro = document.getElementById("erroemail");
        erro.innerHTML ="Preencha o campo Email";
        erro.style.color="red";
        erro.style.fontWeight="normal";
        e.preventDefault();
        if(check == 0){
        email.focus();
        check = 1;
        }		
    }else{
        document.getElementById("email").style.border="1px solid #000";
        document.getElementById("erroemail").innerHTML ="";
    }
    if(tel.value.length != 10){
        document.getElementById("tel").style.border="2px solid red";
        var erro = document.getElementById("errotel");
        erro.innerHTML ="O telefone deve conter 10 dígitos";
        erro.style.color="red";
        erro.style.fontWeight="normal";
        e.preventDefault();
        if(check == 0){
        tel.focus();
        check = 1;
        }		
    }else{
        document.getElementById("tel").style.border="1px solid #000";
        document.getElementById("errotel").innerHTML ="";
    }

    if(cidade.value == ""){
        document.getElementById("cidade").style.border="2px solid red";
        var erro = document.getElementById("errocidade");
        erro.innerHTML ="Preencha o campo Cidade";
        erro.style.color="red";
        erro.style.fontWeight="normal";
        e.preventDefault();
        if(check == 0){
        cidade.focus();
        check = 1;
        }		
    }else{
        document.getElementById("cidade").style.border="1px solid #000";
        document.getElementById("errocidade").innerHTML ="";
    }
    if(bairro.value == ""){
        document.getElementById("bairro").style.border="2px solid red";
        var erro = document.getElementById("errobairro");
        erro.innerHTML ="Preencha o campo Bairro";
        erro.style.color="red";
        erro.style.fontWeight="normal";
        e.preventDefault();
        if(check == 0){
        bairro.focus();
        check = 1;
        }		
    }else{
        document.getElementById("bairro").style.border="1px solid #000";
        document.getElementById("errobairro").innerHTML ="";
    }
    if(rua.value == ""){
        document.getElementById("rua").style.border="2px solid red";
        var erro = document.getElementById("errorua");
        erro.innerHTML ="Preencha o campo Rua";
        erro.style.color="red";
        erro.style.fontWeight="normal";
        e.preventDefault();
        if(check == 0){
        rua.focus();
        check = 1;
        }		
    }else{
        document.getElementById("rua").style.border="1px solid #000";
        document.getElementById("errorua").innerHTML ="";
    }
    if(check == 0){
            alert("Cadastro efetuado com sucesso.")
    }
	
	
}

function limpar() {
    document.getElementById("formulario").reset();
}