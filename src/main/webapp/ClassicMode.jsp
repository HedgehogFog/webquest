<%@ page import="data.Data" %>
<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/html">
<head>
    <meta charset="UTF-8">
    <title>Find Out Everythin</title>
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
        <div class="classicmodetunetext" style="align-content: center   "><p> Great! <a class="classicmodelinks" href="Picturemode.html">Guess that
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
    <br>
    <span id="result" class="result"></span><br>
    <a id="nextLevel" class="resultA" style="color: aqua"></a>

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

        var lets = [];
        var i;
        for (i = 0; i < 18; i++){
            var name = "letter" + (i + 1);
            lets[i] =  document.getElementById(name);
        }

        for (i = 0; i < 18; i++){
            lets[i].onkeydown = function () {
                var key = event.keyCode || event.charCode;

                if (key == 8 || key == 46) {
                    if (i == 0){
                        let1.focus();
                    } else if (i == 17){
                        let18.focus();
                    } else {
                        lets[i - 1].focus();
                    }
                }
            }
        }
        function successfully() {
            wordKnow = true;
            document.getElementById('result').innerHTML = "The Best Of The Best Mind!";
            var a = document.getElementById('nextLevel');
            a.textContent = "Next";
            a.href = "Picturemode.html"
        }

        function checkLet(letter, symbol, letleft, letright) {
            if (!wordKnow){
                current--;

                if (letter.value.toUpperCase() != symbol && letter.value != "") {
                    document.getElementById('result').innerHTML = "Error";
                    var audio = new Audio();
                    audio.src = "audio/Chomp.wav"
                    audio.play();
                    letter.value = "";

                    current++;

                } else if (letter.value == ""){
                    current++;
                    document.getElementById('result').innerHTML = "";
                    letleft.focus();
                    letle
                } else {
                    letright.focus();
                    document.getElementById('result').innerHTML = "";
                }

                if (current == 0)
                    successfully();

            }
        }

        let1.oninput = function() {
            checkLet(let1, "F", let1, let2);
            if (event.KEYDOWN == 27){
                let1.focus();
            }
        }

        let2.oninput = function () {
           checkLet(let2, "O", let1, let3);
            if (event.KEYDOWN == 27){
                let1.focus();
            }
        }
        let3.oninput = function () {
           checkLet(let3, "U", let2, let4);
            if (event.KEYDOWN == 27){
                let2.focus();
            }
        }
        let4.oninput = function () {
           checkLet(let4, "R", let3, let5);
            if (event.KEYDOWN == 27){
                let3.focus();
            }
        }

        let5.oninput = function () {
            checkLet(let5, "S", let4, let6);
            if (event.KEYDOWN == 27){
                let4.focus();
            }
        }
        let6.oninput = function () {
            checkLet(let6, "E", let5, let7);
            if (event.KEYDOWN == 27){
                let5.focus();
            }
        }
        let7.oninput = function () {
           checkLet(let7, "A", let6, let8);
            if (event.KEYDOWN == 27){
                let6.focus();
            }
        }
        let8.oninput = function () {
            checkLet(let8, "S", let7, let9);
            if (event.KEYDOWN == 27){
                let7.focus();
            }
        }
        let9.oninput = function () {
            checkLet(let9, "O", let8, let10);
            if (event.KEYDOWN == 27){
                let8.focus();
            }
        }
        let10.oninput = function () {
           checkLet(let10, "N", let9, let11);
            if (event.KEYDOWN == 27){
                let9.focus();
            }
        }
        let11.oninput = function () {
            checkLet(let11, "S", let10, let12);
            if (event.KEYDOWN == 27){
                let10.focus();
            }
        }

        let12.oninput = function () {
            checkLet(let12, "V", let11, let13);
            if (event.KEYDOWN == 27){
                let11.focus();
            }
        }
        let13.oninput = function () {
           checkLet(let13, "I", let12, let14);
            if (event.KEYDOWN == 27){
                let12.focus();
            }
        }
        let14.oninput = function () {
           checkLet(let14, "V", let13, let15);
            if (event.KEYDOWN == 27){
                let13.focus();
            }
        }
        let15.oninput = function () {
            checkLet(let15, "A", let14, let16);
            if (event.KEYDOWN == 27){
                let14.focus();
            }
        }
        let16.oninput = function () {
           checkLet(let16, "L", let15, let17);
            if (event.KEYDOWN == 27){
                let15.focus();
            }
        }
        let17.oninput = function () {
           checkLet(let17, "D", let16, let18);
            if (event.KEYDOWN == 27){
                let16.focus();
            }
        }
        let18.oninput = function () {
            checkLet(let18, "I", let17, let18);
            if (event.KEYDOWN == 27){
                let17.focus();
            }
        }

    </script>
</div>

</body>
</html>
