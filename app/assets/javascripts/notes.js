$(document).ready(function(){
  hljs.initHighlightingOnLoad();
  
  new Vue({
    el: '#editor',
    data: {
    input: ''
    },
    filters: {
      marked: marked
    }
  });
}); 