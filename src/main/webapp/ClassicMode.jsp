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
                class="bitoktext">
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
    <a id="nextLevel"></a>

    <script>
        var wordKnow = false;
        var current = 18;
        // var currentTune = 11;
        // var currentCompozer = 7;

        var let1 = document.getElementById("letter1");var let2 = document.getElementById("letter2"); var let3 = document.getElementById("letter3");
        var let4 = document.getElementById("letter4");var let5 = document.getElementById("letter5"); var let6 = document.getElementById("letter6");
        var let7 = document.getElementById("letter7");var let8 = document.getElementById("letter8");var let9 = document.getElementById("letter9");
        //
        var let10 = document.getElementById("letter10"); var let11 = document.getElementById("letter11"); var let12 = document.getElementById("letter12");
        var let13 = document.getElementById("letter13"); var let14 = document.getElementById("letter14"); var let15 = document.getElementById("letter15");
        var let16 = document.getElementById("letter16"); var let17 = document.getElementById("letter17"); var let18 = document.getElementById("letter18");

        function successfully() {
            wordKnow = true;
            document.getElementById('result').innerHTML = "The Best Of The Best Mind!";
            var a = document.getElementById('nextLevel');
            a.textContent = "Next";
            a.href = "index.jsp"
        }

        function checkLet(letter, symbol) {
            if (!wordKnow){
                if (letter.value.toUpperCase() != symbol && letter.value != "") {
                    document.getElementById('result').innerHTML = "Error";
                } else {
                    current--;
                    // currentTune--;
                    document.getElementById('result').innerHTML = "";
                }

                if (current == 0)
                    successfully();

            }
        }

        let1.oninput = function() {
            checkLet(let1, "F");
        }

        let2.oninput = function () {
           checkLet(let2, "O");
        }
        let3.oninput = function () {
           checkLet(let3, "U");
        }
        let4.oninput = function () {
           checkLet(let4, "R");
        }

        let5.oninput = function () {
            checkLet(let5, "S");
        }
        let6.oninput = function () {
            checkLet(let6, "E");
        }
        let7.oninput = function () {
           checkLet(let7, "A");
        }
        let8.oninput = function () {
            checkLet(let8, "S");
        }
        let9.oninput = function () {
            checkLet(let9, "O");
        }
        let10.oninput = function () {
           checkLet(let10, "N");
        }
        let11.oninput = function () {
            checkLet(let11, "S");
        }

        let12.oninput = function () {
            checkLet(let12, "V");
        }
        let13.oninput = function () {
           checkLet(let13, "I");
        }
        let14.oninput = function () {
           checkLet(let14, "V");
        }
        let15.oninput = function () {
            checkLet(let15, "A");
        }
        let16.oninput = function () {
           checkLet(let16, "L");
        }
        let17.oninput = function () {
           checkLet(let17, "D");
        }
        let18.oninput = function () {
            checkLet(let18, "I");
        }

    </script>
</div>

</body>
</html>
