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
                    if (document.activeElement == let1){
                        let1.focus();
                        let1.value = "";
                    } else if (document.activeElement == let2){
                        let1.focus();
                        // let2.value = "";
                    } else if (document.activeElement == let3){
                        let2.focus();
                        // let3.value = "";
                    } else if (document.activeElement == let4){
                        let3.focus();
                        let4.value = "";
                    }else if (document.activeElement == let5){
                        let4.focus();
                        let5.value = "";
                    }else if (document.activeElement == let6){
                        let6.value = "";
                        let5.focus();
                    }else if (document.activeElement == let7){
                        let7.value = "";
                        let6.focus();
                    }else if (document.activeElement == let8){
                        let8.value = "";
                        let7.focus();
                    }else if (document.activeElement == let9){
                        let9.value = "";
                        let8.focus();
                    }else if (document.activeElement == let10){
                        let10.value = "";
                        let9.focus();
                    }else if (document.activeElement == let11){
                        let11.value = "";
                        let10.focus();
                    }else if (document.activeElement == let12){
                        let12.value = "";
                        let11.focus();
                    }else if (document.activeElement == let13){
                        let13.value = "";
                        let12.focus();
                    }else if (document.activeElement == let14){
                        let14.value = "";
                        let13.focus();
                    }else if (document.activeElement == let15){
                        let15.value = "";
                        let14.focus();
                    }else if (document.activeElement == let16){
                        let16.value = "";
                        let15.focus();
                    }else if (document.activeElement == let17){
                        let17.value = "";
                        let16.focus();
                    }else if (document.activeElement == let18){
                        let18.value = "";
                        let17.focus();
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

                // if (letter.value.toUpperCase() != symbol && letter.value != "") {
                //     document.getElementById('result').innerHTML = "Error";
                //     var audio = new Audio();
                //     audio.src = "audio/Chomp.wav"
                //     audio.play();
                //     // letter.value = "";
                //
                //     current++;
                //
                // } else if (letter.value == ""){
                //     current++;
                //     document.getElementById('result').innerHTML = "";
                //     letleft.focus();
                // } else {
                //     letright.focus();
                //     document.getElementById('result').innerHTML = "";
                // }
                //
                // if (current == 0)
                //     successfully();

            }
        }

        let1.oninput = function() {
            checkLet(let1, "F", let1, let2);
        }

        let2.oninput = function () {
           checkLet(let2, "O", let1, let3);
        }
        let3.oninput = function () {
           checkLet(let3, "U", let2, let4);
        }
        let4.oninput = function () {
           checkLet(let4, "R", let3, let5);
        }

        let5.oninput = function () {
            checkLet(let5, "S", let4, let6);
        }
        let6.oninput = function () {
            checkLet(let6, "E", let5, let7);
        }
        let7.oninput = function () {
           checkLet(let7, "A", let6, let8);
        }
        let8.oninput = function () {
            checkLet(let8, "S", let7, let9);
        }
        let9.oninput = function () {
            checkLet(let9, "O", let8, let10);
        }
        let10.oninput = function () {
           checkLet(let10, "N", let9, let11);
        }
        let11.oninput = function () {
            checkLet(let11, "S", let10, let12);
        }

        let12.oninput = function () {
            checkLet(let12, "V", let11, let13);
        }
        let13.oninput = function () {
           checkLet(let13, "I", let12, let14);
        }
        let14.oninput = function () {
           checkLet(let14, "V", let13, let15);
        }
        let15.oninput = function () {
            checkLet(let15, "A", let14, let16);
        }
        let16.oninput = function () {
           checkLet(let16, "L", let15, let17);
        }
        let17.oninput = function () {
           checkLet(let17, "D", let16, let18);
        }
        let18.oninput = function () {
            checkLet(let18, "I", let17, let18);
        }

    </script>
</div>

</body>
</html>
