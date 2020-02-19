/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function init(){
    
//    let nome = document.querySelector("input[name=nome]");
//    let idade = document.querySelector("input[name=idade]");
    let formData = new FormData(document.forms[0]);
    
    let xhr = new XMLHttpRequest();
    xhr.open("post", "Servlet", false);
//    xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");;
    xhr.onreadystatechange = function(){
        if(xhr.readyState === 4 && xhr.status === 200){
            let p = document.querySelector("#resposta");
//            let nomeXML = xhr.responseXML.getElementsByTagName("name")[0].textContent;
//            let idadeXML = xhr.responseXML.getElementsByTagName("idade")[0].textContent;;
            let obj = JSON.parse(xhr.responseText);
            //alert(obj);
            p.textContent = `olá ${obj.nome}, você tem  ${obj.idade} anos de idade`;
            
            console.log(xhr.status +" "+ xhr.statusText);
        }
    };
    
//    formData.append("nome", nome.value);
//    formData.append("idade", idade.value);
    
    xhr.send(formData);
    
}


function registerEvents(){
    
    let botao = document.querySelector("input[name=botao]");
    botao.onclick = init;
    
    let obj = {
        nome: "",
        idade: ""
    }
    
}

onload = registerEvents;

