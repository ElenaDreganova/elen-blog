//викликаємо функцію за кліком на неї

$('.likeBtn').on('click', function(e) {
  let that = $(this)
  //oтримуємо дата-атрибут 'likeBtn'
  $.post( "/api.php?p=like", { post_id: that.data('id')})
   .done(function(data) {
    
     data = JSON.parse(data); 

     if(data.status == 'liked') {
      that.addClass('liked');
     } else {
       that.removeClass('liked');
     }
     that.find('b').text(data.count);
   });
    
});

