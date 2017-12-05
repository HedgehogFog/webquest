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
            <input maxlength="1" class="guesstable" id="letter1">
            <input maxlength="1" class="guesstable" id="letter2">
            <input maxlength="1" class="guesstable" id="letter3">
            <input maxlength="1" class="guesstable" id="letter4">
            <input maxlength="0" readonly class="zeroguesstable">
            <input maxlength="1" class="guesstable" id="letter5">
            <input maxlength="1" class="guesstable" id="letter6">
            <input maxlength="1" class="guesstable" id="letter7">
            <input maxlength="1" class="guesstable" id="letter8">
            <input maxlength="1" class="guesstable" id="letter9">
            <input maxlength="1" class="guesstable" id="letter10">
            <input maxlength="1" class="guesstable" id="letter11">

        </form>
    </div>
</div>
    <div class="classicmodecomposer">
    <div class="classicmodetunetext2"> <p><a class="classicmodelinks" href="indev.html">Guess composer</a> </p></div>
        <div class="classicmodeguesstablepos2">
            <form>
                <input maxlength="1" class="guesstable" id="letter12">
                <input maxlength="1" class="guesstable" id="letter13">
                <input maxlength="1" class="guesstable" id="letter14">
                <input maxlength="1" class="guesstable" id="letter15">
                <input maxlength="1" class="guesstable" id="letter16">
                <input maxlength="1" class="guesstable" id="letter17">
                <input maxlength="1" class="guesstable" id="letter18">

            </form>
        </div>
</div>
    <span id="result"></span>

    <script>
        var arr = [];

        var i;

        for (i = 0; i < 18; i++) {
            arr[i] = document.getElementById("letter" + (i + 1))
        }

        input.oninput = function() {
            var i;
            var secretWord = "fourseasonvivaldi"
            var errorLetterHas = false;
            for (i = 0; i < 19; i++){
                if (arr[i].value.toUpperCase() != secretWord[i] && arr[i].value != "")
                    errorLetterHas = true;
            }

            if (!errorLetterHas)
                document.getElementById('result').innerHTML = input.value;
            else
                document.getElementById('result').innerHTML = "Error"

        };
    </script>
</div>

</body>
</html>
