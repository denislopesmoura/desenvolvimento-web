/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function init(){
    
    let formData = new FormData(document.forms[0]);
    
    let xhr = new XMLHttpRequest();
    xhr.open("post", "Servlet", false);

    xhr.onreadystatechange = function(){
        if(xhr.readyState === 4 && xhr.status === 200){
            let p = document.querySelector("#resposta");
            let obj = JSON.parse(xhr.responseText);
            
            p.textContent = `olá ${obj.nome}, você tem  ${obj.idade} anos de idade`;
            
            console.log(xhr.status +" "+ xhr.statusText);
        }
    };
    
    xhr.send(formData);
    
}


function registerEvents(){
    
    let botao = document.querySelector("input[name=botao]");
    botao.onclick = init;
  
}

onload = registerEvents;

