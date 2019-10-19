/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function agregarCategoriaPlato( id){
    console.log(id);
    nom_cat_pla = document.getElementById("nom"+id).innerHTML;
    console.log(nom_cat_pla);
    document.formCategoriaPlato.inputCategoriaPlato.value = nom_cat_pla;
    
    let panel = document.getElementById("modCatPla");
    panel.clasList.remove("active");
    panel.clasList.add("active");
  
    
    //$("nomCatPla").val(nom_cat_pla);
}

