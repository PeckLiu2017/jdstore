//product.show页面的下方商品详情和商品评价切换按钮
$(document).on('click.product.show.menu', '[data-toggle="tab"]', function(e) {
    //得到被点击的元素，并取出它的option，看是“商品详情”还是“商品评论”
    var $this = $(this);
    var option = $this.attr('data-option');

    var i, tabcontent, tablinks;
    //先将所有tabcontent隐藏
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tabcontent[0].style.display = "block";
    // Get all elements with class="tablinks" and remove the class "active"
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }

    // Show the current tab, and add an "active" class to the button that opened the tab
    document.getElementById(option).style.display = "block";
    e.currentTarget.className += " active";

})

//显示商品评价的星级
$(
  function () {
    var selectedCssClass = 'selected'
    $this = $('.star-experience')
    var width = $('.star-experience').attr('data-score')
    console.log(width);
    var star_html = "<ul class='rating'>"
    for (var i = 0; i < 5; i++) {
      star_html += "<li> &star;</li>"
    }
      star_html += "</ul>"
    $this.html(star_html);
    var $selected_star = $('.star-experience li').eq(width-1)
    $selected_star.addClass(selectedCssClass)
    $selected_star.prevAll().addClass(selectedCssClass)
  }
)
