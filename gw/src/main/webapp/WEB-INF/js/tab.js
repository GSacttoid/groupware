
/* detail menu 열고 닫는 기능 */
$(function () {
    $("#open").click(function(){
        $("#open").addClass("active-all");
        $("#close").removeClass("active-all");
        $(".accordion-content").show();
        $(".accordion-header").addClass("active");

    });
    $("#close").click(function(){
        $("#close").addClass("active-all");
        $("#open").removeClass("active-all");
        $(".accordion-content").hide();
        $(".accordion-header").removeClass("active");
    });
});
/*/detail menu 열고 닫는 기능 */

/* detail menu 열고 닫는 버튼 색변경 */
$(function(){
    $(".accordion-header").click(function(){
        $(this).toggleClass("active").next().toggle();
    });
});
/*/detail menu 열고 닫는 버튼 색변경 */

/* icon menu 클릭시 버튼 색변경 */
$(function () {
    $(".menu-icon").on("click", function () {
        $(".menu-icon").removeClass("active-menu");
        $(this).addClass("active-menu");
        e.preventDefault();
    });
});
/*/icon menu 클릭시 버튼 색변경 */