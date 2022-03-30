/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */



$('#rating-form').on('change','[name="rating"]',function(){
 $('#selected-rating').text($('[name="rating"]:checked').val());
});