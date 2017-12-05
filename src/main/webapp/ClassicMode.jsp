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
        <div class="bitokpos"><p
                class="bitoktext"><%= (Data.getInstance().getUser(request.getRemoteAddr()) == null) ? 13 : Data.getInstance().getUser(request.getRemoteAddr()).getCoins() %>
            <img src="img/bit.png"></p></div>
    </div>
    <div class="classicmodetune">
        <div class="classicmodetunetext"><p> Great! <a class="classicmodelinks" href="Picturemode.html">Guess that
            tune</a> <img width="110px" height="110px" src="img/sha.jpg"></p></div>
        <div class="classicmodetuned">
            <audio src="mel/1.mp3" controls></audio>
        </div>
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
        <div class="classicmodetunetext2"><p><a class="classicmodelinks" href="indev.html">Guess composer</a></p></div>
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
        var errorLetterHas = false;

        var let1 = document.getElementById("letter1");
        var let2 = document.getElementById("letter2");
        var let3 = document.getElementById("letter3");
        var let4 = document.getElementById("letter4");
        var let5 = document.getElementById("letter5");
        var let6 = document.getElementById("letter6");
        var let7 = document.getElementById("letter7");
        var let8 = document.getElementById("letter8");
        var let9 = document.getElementById("letter9");

        var let10 = document.getElementById("letter10");
        var let11 = document.getElementById("letter11");
        var let12 = document.getElementById("letter12");
        var let13 = document.getElementById("letter13");
        var let14 = document.getElementById("letter14");
        var let15 = document.getElementById("letter15");
        var let16 = document.getElementById("letter16");
        var let17 = document.getElementById("letter17");
        var let18 = document.getElementById("letter18");

        let1.oninput = function () {
            if (let1.value.toUpperCase() == "F" && let1.value != "")
                errorLetterHas = true;
        }

        let2.oninput = function () {
            if (let2.value.toUpperCase() == "O" && let1.value != "")
                errorLetterHas = true;
        }

        let2.oninput = function () {
            if (let2.value.toUpperCase() == "O" && let1.value != "")
                errorLetterHas = true;
        }

        let3.oninput = function () {
            if (let3.value.toUpperCase() == "U" && let1.value != "")
                errorLetterHas = true;
        }

        let4.oninput = function () {
            if (let4.value.toUpperCase() == "R" && let1.value != "")
                errorLetterHas = true;
        }

        let5.oninput = function () {
            if (let5.value.toUpperCase() == "S" && let1.value != "")
                errorLetterHas = true;
        }

        let6.oninput = function () {
            if (let6.value.toUpperCase() == "E" && let1.value != "")
                errorLetterHas = true;
        }

        let7.oninput = function () {
            if (let7.value.toUpperCase() == "A" && let1.value != "")
                errorLetterHas = true;
        }


        // var secretWord = "FOURSEASONVIVALDI"
        // for (i = 0; i < 19; i++) {
        //     arr[i].oninput = function () {
        //         if (arr[i].value.toUpperCase() != secretWord[i] && arr[i].value != "")
        //             errorLetterHas = true;
        //     }
        // }

        if (!errorLetterHas)
            document.getElementById('result').innerHTML = "Success!";
        else
            document.getElementById('result').innerHTML = "Error";

    </script>
</div>

</body>
</html>
