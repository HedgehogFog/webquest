<%@ page import="data.Data" %>
<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/html">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<div class="classicmode">
    <div class="classicmodebitgallery">
        <div class="bitokpos"> <p class="bitoktext"> <%= (Data.getInstance().getUser(request.getRemoteAddr()) == null) ? 13 : Data.getInstance().getUser(request.getRemoteAddr()).getCoins() %> <img src="img/bit.png"></p></div>
    </div>
<div class="classicmodetune">
<div class="classicmodetunetext"> <p> Great! <a class="classicmodelinks" href="Picturemode.html">Guess that tune</a> <img  width="110px" height="110px" src="img/sha.jpg"></p></div>
<div class="classicmodetuned"> <audio src="mel/1.mp3" controls >  </audio>  </div>
    <div class="classicmodeguesstablepos">
        <form>
            <input maxlength="1" class="guesstable">
            <input maxlength="1" class="guesstable">
            <input maxlength="1" class="guesstable">
            <input maxlength="1" class="guesstable">
            <input maxlength="0" readonly class="zeroguesstable">
            <input maxlength="1" class="guesstable">
            <input maxlength="1" class="guesstable">
            <input maxlength="1" class="guesstable">
            <input maxlength="1" class="guesstable">
            <input maxlength="1" class="guesstable">
            <input maxlength="1" class="guesstable">
            <input maxlength="1" class="guesstable">
            <script>
                var input = document.body.getElementsByClassName("classicmodetuned")

                input.oninput = function() {
                    if (input.value == "A")
                        document.getElementById('result').innerHTML = input.value;
                };
            </script>
        </form>
    </div>
</div>
    <div class="classicmodecomposer">
    <div class="classicmodetunetext2"> <p><a class="classicmodelinks" href="indev.html">Guess composer</a> </p></div>
        <div class="classicmodeguesstablepos2">
            <form>
                <input maxlength="1" class="guesstable">
                <input maxlength="1" class="guesstable">
                <input maxlength="1" class="guesstable">
                <input maxlength="1" class="guesstable">
                <input maxlength="1" class="guesstable">
                <input maxlength="1" class="guesstable">
                <input maxlength="1" class="guesstable">

            </form>
        </div>
</div>
    <span id="result"></span>
</div>

</body>
</html>
