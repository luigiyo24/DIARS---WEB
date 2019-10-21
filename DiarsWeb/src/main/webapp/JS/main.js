/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
    let panel1 = document.getElementById("modCatPla1");
    let panel2 = document.getElementById("modCatPla2");
    let modal = document.getElementById("panel52");
    
    function agregarCategoriaPlato( id){
        console.log(id);
        nom_cat_pla = document.getElementById("nom"+id).innerHTML;
        console.log(nom_cat_pla);
        document.formCategoriaPlato.inputCategoriaPlato.value = nom_cat_pla;    

        panel2.setAttribute("aria-selected","false");
        panel1.setAttribute("aria-selected","true");

        panel2.classList.remove("active");
        panel1.classList.add("active");
        modal.classList.add("active","show");
    }

