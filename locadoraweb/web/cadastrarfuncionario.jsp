<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="pt-br">
    <head>
        <meta charset="utf-8"/>
        <meta name="description" content="AUTO Meu Carro - Sistema de Aluguel"/>
        <meta name="author" content="Mateus de Castro Domingos"/>
        <link rel="icon" type="image/png" href="img/icone.ico" />
        <link href="css/style.css" rel="stylesheet" type="text/css" />
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <title>AUTO MC - Cadastrar funcionário</title>
    </head>
    <body>
        <header>
            <div class="navgar">
                <img src="img/logo.png"/>
                <nav>
                    <ul>
                        <li><a href="home.jsp">HOME</a></li>

                        <!-- Menu Dropdown -->
                        <li class="dropdown"><a data-toggle="dropdown" href="#">CADASTROS</a>
                            <ul class="dropdown-menu">
                                <li><a class="dropmenu" href="#">CADASTRAR FUNCIONÁRIO</a></li>  					
                                <li><a class="dropmenu" href="cadastrarcliente.jsp">CADASTRAR CLIENTE</a></li>
                                <li><a class="dropmenu" href="cadastrarautomovel.jsp">CADASTRAR AUTOMÓVEL</a></li>  
                            </ul>
                        </li>

                        <li><a href="fazerreserva.jsp">FAZER RESERVA</a></li>

                        <!-- Menu Dropdown -->
                        <li class="dropdown"><a data-toggle="dropdown" href="#">CONSULTAS</a>
                            <ul class="dropdown-menu">
                                <li><a class="dropmenu" href="consultafuncionario.jsp">CONSULTAR FUNCIONÁRIO</a></li>
                                <li><a class="dropmenu" href="consultacliente.jsp">CONSULTAR CLIENTE</a></li>
                                <li><a class="dropmenu" href="consultaautomovel.jsp">CONSULTAR AUTOMÓVEL</a></li>
                                <li><a class="dropmenu" href="consultareserva.jsp">CONSULTAR RESERVAS</a></li>
                            </ul>
                        </li>
                        <li><a href="Sair">SAIR</a></li>
                    </ul>        
                </nav>
            </div>
        </header>

        <section>
            <h1>Cadastro de funcionários</h1></br></br>
            <form action="InserirFormFuncionario" method="post" id="formulario">
                <label for="matricula">Matrícula: </label></br>
                <input class="campos" type="number" name="matricula" id=matricula placeholder="0000000" value=""/></br><label id="erromatricula"></label></br>

                <label for="nome">Nome completo do funcionário: </label></br>
                <input class="campos" type="text" name="nome" id=nome placeholder="Coloque o nome completo" value="" /></br><label id="erronome"></label></br>

                <label for="cpf">CPF: </label></br>
                <input class="campos" type="number" name="cpf" placeholder="00000000000" id=cpf value="" /></br><label id="errocpf"></label></br>

                <label for="data">Data de nascimento: </label></br></br>

                <label for="dia">Dia: </label>
                <select id="dia" name="dia" >
                    <option value="01">01</option>
                    <option value="02">02</option>
                    <option value="03">03</option>
                    <option value="04">04</option>
                    <option value="05">05</option>
                    <option value="06">06</option>
                    <option value="07">07</option>
                    <option value="08">08</option>
                    <option value="09">09</option>
                    <option value="10">10</option>
                    <option value="11">11</option>
                    <option value="12">12</option>
                    <option value="13">13</option>
                    <option value="14">14</option>
                    <option value="15">15</option>
                    <option value="16">16</option>
                    <option value="17">17</option>
                    <option value="18">18</option>
                    <option value="19">19</option>
                    <option value="20">20</option>
                    <option value="21">21</option>
                    <option value="22">22</option>
                    <option value="23">23</option>
                    <option value="24">24</option>
                    <option value="25">25</option>
                    <option value="26">26</option>
                    <option value="27">27</option>
                    <option value="28">28</option>
                    <option value="29">29</option>
                    <option value="30">30</option>
                    <option value="31">31</option>
                </select>

                <label for="mes">mês: </label>
                <select id="mes" name="mes">
                    <option value="01">Janeiro</option>
                    <option value="02">Fevereiro</option>
                    <option value="03">Março</option>
                    <option value="04">Abril</option>
                    <option value="05">Maio</option>
                    <option value="06">Junho</option>
                    <option value="07">Julho</option>
                    <option value="08">Agosto</option>
                    <option value="09">Setembro</option>
                    <option value="10">Outubro</option>
                    <option value="11">Novembro</option>
                    <option value="12">Dezembro</option>
                </select>

                <label for="ano">Ano: </label>
                <select id="ano" name="ano">
                    <option value="2017">2017</option>
                    <option value="2016">2016</option>
                    <option value="2015">2015</option>
                    <option value="2014">2014</option>
                    <option value="2013">2013</option>
                    <option value="2012">2012</option>
                    <option value="2011">2011</option>
                    <option value="2010">2010</option>
                    <option value="2009">2009</option>
                    <option value="2008">2008</option>
                    <option value="2007">2007</option>
                    <option value="2006">2006</option>
                    <option value="2005">2005</option>
                    <option value="2004">2004</option>
                    <option value="2003">2003</option>
                    <option value="2002">2002</option>
                    <option value="2001">2001</option>
                    <option value="2000">2000</option>
                    <option value="1999">1999</option>
                    <option value="1998">1998</option>
                    <option value="1997">1997</option>
                    <option value="1996">1996</option>
                    <option value="1995">1995</option>
                    <option value="1994">1994</option>
                    <option value="1993">1993</option>
                    <option value="1992">1992</option>
                    <option value="1991">1991</option>
                    <option value="1990">1990</option>
                    <option value="1989">1989</option>
                    <option value="1988">1988</option>
                    <option value="1987">1987</option>
                    <option value="1986">1986</option>
                    <option value="1985">1985</option>
                    <option value="1984">1984</option>
                    <option value="1983">1983</option>
                    <option value="1982">1982</option>
                    <option value="1981">1981</option>
                    <option value="1980">1980</option>
                    <option value="1979">1979</option>
                    <option value="1978">1978</option>
                    <option value="1977">1977</option>
                    <option value="1976">1976</option>
                    <option value="1975">1975</option>
                    <option value="1974">1974</option>
                    <option value="1973">1973</option>
                    <option value="1972">1972</option>
                    <option value="1971">1971</option>
                    <option value="1970">1970</option>
                    <option value="1969">1969</option>
                    <option value="1968">1968</option>
                    <option value="1967">1967</option>
                    <option value="1966">1966</option>
                    <option value="1965">1965</option>
                    <option value="1964">1964</option>
                    <option value="1963">1963</option>
                    <option value="1962">1962</option>
                    <option value="1961">1961</option>
                    <option value="1960">1960</option>
                    <option value="1959">1959</option>
                    <option value="1958">1958</option>
                    <option value="1957">1957</option>
                    <option value="1956">1956</option>
                    <option value="1955">1955</option>
                    <option value="1954">1954</option>
                    <option value="1953">1953</option>
                    <option value="1952">1952</option>
                    <option value="1951">1951</option>
                    <option value="1950">1950</option>
                    <option value="1949">1949</option>
                    <option value="1948">1948</option>
                    <option value="1947">1947</option>
                    <option value="1946">1946</option>
                    <option value="1945">1945</option>
                    <option value="1944">1944</option>
                    <option value="1943">1943</option>
                    <option value="1942">1942</option>
                    <option value="1941">1941</option>
                    <option value="1940">1940</option>
                    <option value="1939">1939</option>
                    <option value="1938">1938</option>
                    <option value="1937">1937</option>
                    <option value="1936">1936</option>
                    <option value="1935">1935</option>
                    <option value="1934">1934</option>
                    <option value="1933">1933</option>
                    <option value="1932">1932</option>
                    <option value="1931">1931</option>
                    <option value="1930">1930</option>
                    <option value="1929">1929</option>
                    <option value="1928">1928</option>
                    <option value="1927">1927</option>
                    <option value="1926">1926</option>
                    <option value="1925">1925</option>
                    <option value="1924">1924</option>
                    <option value="1923">1923</option>
                    <option value="1922">1922</option>
                    <option value="1921">1921</option>
                    <option value="1920">1920</option>
                    <option value="1919">1919</option>
                    <option value="1918">1918</option>
                    <option value="1917">1917</option>
                    <option value="1916">1916</option>
                    <option value="1915">1915</option>
                    <option value="1914">1914</option>
                    <option value="1913">1913</option>
                    <option value="1912">1912</option>
                    <option value="1911">1911</option>
                    <option value="1910">1910</option>
                    <option value="1909">1909</option>
                    <option value="1908">1908</option>
                    <option value="1907">1907</option>
                    <option value="1906">1906</option>
                    <option value="1905">1905</option>
                    <option value="1904">1904</option>
                    <option value="1903">1903</option>
                    <option value="1902">1902</option>
                    <option value="1901">1901</option>
                    <option value="1900">1900</option>
                </select></br></br>

                <label for="email">Email: </label></br>
                <input class="campos" type="email" name="email" id=email placeholder="exemplo@exemplo.com" value="" /></br><label id="erroemail"></label></br>

                <label for="tel">Telefone: </label></br>
                <input class="campos" type="number" name="tel" id=tel placeholder="0000000000" value="" /></br><label id="errotel"></label></br>

                <label for="Sexo">Sexo: </label></br>
                
                <div class="radio">
                    <input type="radio" class="sexo" name="sexo" value="m" checked/> Masculino
                </div>
                
                <div class="radio">
                    <input type="radio" class="sexo" name="sexo" value="f"> Feminino</br></br>
                </div>
                
                
                <label for="estado">Selecione um estado</label>
                <select id="estado" name="estado">
                    <option value="Acre">Acre</option>
                    <option value="Alagoas">Alagoas</option>
                    <option value="Amapá">Amapá</option>
                    <option value="Amazonas">Amazonas</option>
                    <option value="Bahia">Bahia</option>
                    <option value="Ceará">Ceará</option>
                    <option value="Distrito Federal">Distrito Federal</option>
                    <option value="Espirito Santo">Espirito Santo</option>
                    <option value="Maranhão">Maranhão</option>
                    <option value="Mato Grosso">Mato Grosso</option>
                    <option value="Mato Grosso do Sul">Mato Grosso do Sul</option>
                    <option value="Minas Gerais">Minas Gerais</option>
                    <option value="Pará">Pará</option>
                    <option value="Paraíba">Paraíba</option>
                    <option value="Paraná">Paraná</option>
                    <option value="Pernambuco">Pernambuco</option>
                    <option value="Piauí">Piauí</option>
                    <option value="Rio de Janeiro">Rio de Janeiro</option>
                    <option value="Rio Grande do Norte">Rio Grande do Norte</option>
                    <option value="Rio Grande do Sul">Rio Grande do Sul</option>
                    <option value="Rondônia">Rondônia</option>
                    <option value="Roraima">Roraima</option>
                    <option value="Santa Catarina">Santa Catarina</option>
                    <option value="São Paulo">São Paulo</option>
                    <option value="Sergipe">Sergipe</option>
                    <option value="Tocantins">Tocantins</option>
                </select></br></br>

                <label for="cidade">Cidade: </label></br>
                <input class="campos" type="text" name="cidade" id=cidade placeholder="Exemplo" value="" /></br><label id="errocidade"></label></br>

                <label for="bairro">Bairro: </label></br>
                <input class="campos" type="text" name="bairro" id=bairro placeholder="Exemplo" value="" /></br><label id="errobairro"></label></br>

                <label for="rua">Rua: </label></br>
                <input class="campos" type="text" name="rua" id=rua placeholder="Exemplo" value="" /></br><label id="errorua"></label></br>

                <input class="btn-form" type="submit" class="bt" value="Cadastrar" />
                <input class="btn-form" type="reset" class="bt" onclick="limpar()" value="Limpar" />

            </form>  
        </section>

        <footer>
            <p class="rod">@2017 AUTO Meu Carro - Todos os direitos reservados</p>
        </footer>

        <script type="text/javascript" src="js/javascriptFuncionario.js" charset="UTF-8"></script>
    </body>
</html>