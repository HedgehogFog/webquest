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
                class="bitoktext"><%= Data.getInstance().getUser(request.getRemoteAddr()== null) ? 13 : Data.getInstance().getUser(request.getRemoteAddr()).getCoins() %>
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
        var current = 18;
        var currentTune = 11;
        var currentCompozer = 7;

        var let1 = document.getElementById("letter1");
        var let2 = document.getElementById("letter2");
        var let3 = document.getElementById("letter3");
        var let4 = document.getElementById("letter4");
        var let5 = document.getElementById("letter5");
        var let6 = document.getElementById("letter6");
        var let7 = document.getElementById("letter7");
        var let8 = document.getElementById("letter8");
        var let9 = document.getElementById("letter9");
        //
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
            current--;
            currentTune--;

            if (let1.value == ""){
                current++;
                currentTune++;
            }
            else if (let1.value.toUpperCase() != "F") {
                document.getElementById('result').innerHTML = "Error";
                current++;
                currentTune++;
            } else
                document.getElementById('result').innerHTML = "";

            if (current == 0)
                document.getElementById('result').innerHTML = "<a href=/"/"> Success </a>";

            if (currentTune == 0){
                <%
                if (!Data.getInstance().getUser(request.getRemoteAddr()).hasTone){
                    Data.getInstance().getUser(request.getRemoteAddr()).setCoins( Data.getInstance().getUser(request.getRemoteAddr()).getCoins() + 15);
                    Data.getInstance().getUser(request.getRemoteAddr()).hasTone = true;
                }
                %>
            }
        }
        let2.oninput = function () {
            current--;
            currentTune--;

            if (let2.value == "") {
                current++;
                currentTune++;
            }
            else if (let2.value.toUpperCase() != "O") {
                document.getElementById('result').innerHTML = "Error";
                current++;
                currentTune++;
            } else
                document.getElementById('result').innerHTML = "";

            if (current == 0)
                document.getElementById('result').innerHTML = "<a href=/"/"> Success </a>";

            if (currentTune == 0){
                <%
                if (!Data.getInstance().getUser(request.getRemoteAddr()).hasTone){
                    Data.getInstance().getUser(request.getRemoteAddr()).setCoins( Data.getInstance().getUser(request.getRemoteAddr()).getCoins() + 15);
                    Data.getInstance().getUser(request.getRemoteAddr()).hasTone = true;
                }
                %>
            }
        }
        let3.oninput = function () {
            current--;
            currentTune--;

            if (let3.value == "") {current++;
                currentTune++;}
            else if (let3.value.toUpperCase() != "U") {
                document.getElementById('result').innerHTML = "Error";
                current++;
                currentTune++;
            } else
                document.getElementById('result').innerHTML = "";

            if (current == 0)
                document.getElementById('result').innerHTML = "<a href=/"/"> Success </a>";

            if (currentTune == 0){
                <%
                if (!Data.getInstance().getUser(request.getRemoteAddr()).hasTone){
                    Data.getInstance().getUser(request.getRemoteAddr()).setCoins( Data.getInstance().getUser(request.getRemoteAddr()).getCoins() + 15);
                    Data.getInstance().getUser(request.getRemoteAddr()).hasTone = true;
                }
                %>
            }
        }
        let4.oninput = function () {
            current--;
            currentTune--;

            if (let4.value == "") {
                current++;
                currentTune++;
            }
            else if (let4.value.toUpperCase() != "R") {
                document.getElementById('result').innerHTML = "Error";
                current++;
                currentTune++;
            } else
                document.getElementById('result').innerHTML = "";
            if (current == 0)
                document.getElementById('result').innerHTML = "<a href=/"/"> Success </a>";

            if (currentTune == 0){
                <%
                if (!Data.getInstance().getUser(request.getRemoteAddr()).hasTone){
                    Data.getInstance().getUser(request.getRemoteAddr()).setCoins( Data.getInstance().getUser(request.getRemoteAddr()).getCoins() + 15);
                    Data.getInstance().getUser(request.getRemoteAddr()).hasTone = true;
                }
                %>
            }
        }

        let5.oninput = function () {
            current--;
            currentTune--;

            if (let5.value == "") {
                current++;
                currentTune++;
            }
            else if (let5.value.toUpperCase() != "S") {
                document.getElementById('result').innerHTML = "Error";
                current++;
                currentTune++;
            } else
                document.getElementById('result').innerHTML = "";

            if (current == 0)
                document.getElementById('result').innerHTML = "<a href=/"/"> Success </a>";

            if (currentTune == 0){
                <%
                if (!Data.getInstance().getUser(request.getRemoteAddr()).hasTone){
                    Data.getInstance().getUser(request.getRemoteAddr()).setCoins( Data.getInstance().getUser(request.getRemoteAddr()).getCoins() + 15);
                    Data.getInstance().getUser(request.getRemoteAddr()).hasTone = true;
                }
                %>
            }
        }
        let6.oninput = function () {
            current--;
            currentTune--;

            if (let6.value == "") {
                current++;
                currentTune++;
            }
            else if (let6.value.toUpperCase() != "E") {
                document.getElementById('result').innerHTML = "Error";
                current++;
                currentTune++;
            } else
                document.getElementById('result').innerHTML = "";
            if (current == 0)
                document.getElementById('result').innerHTML = "<a href=/"/"> Success </a>";

            if (currentTune == 0){
                <%
                if (!Data.getInstance().getUser(request.getRemoteAddr()).hasTone){
                    Data.getInstance().getUser(request.getRemoteAddr()).setCoins( Data.getInstance().getUser(request.getRemoteAddr()).getCoins() + 15);
                    Data.getInstance().getUser(request.getRemoteAddr()).hasTone = true;
                }
                %>
            }
        }
        let7.oninput = function () {
            current--;
            currentTune--;

            if (let7.value == "") {
                current++;
                currentTune++;
            }
            else if (let7.value.toUpperCase() != "A") {
                document.getElementById('result').innerHTML = "Error";
                current++;
                currentTune++;
            } else
                document.getElementById('result').innerHTML = "";

            if (current == 0)
                document.getElementById('result').innerHTML = "<a href=/"/"> Success </a>";

            if (currentTune == 0){
                <%
                if (!Data.getInstance().getUser(request.getRemoteAddr()).hasTone){
                    Data.getInstance().getUser(request.getRemoteAddr()).setCoins( Data.getInstance().getUser(request.getRemoteAddr()).getCoins() + 15);
                    Data.getInstance().getUser(request.getRemoteAddr()).hasTone = true;
                }
                %>
            }
        }
        let8.oninput = function () {
            current--;
            currentTune--;

            if (let8.value == "") {
                current++;
                currentTune++;
            }
            else if (let8.value.toUpperCase() != "S") {
                document.getElementById('result').innerHTML = "Error";
                current++;
                currentTune++;
            } else
                document.getElementById('result').innerHTML = "";

            if (current == 0)
                document.getElementById('result').innerHTML = "<a href=/"/"> Success </a>";

            if (currentTune == 0){
                <%
                if (!Data.getInstance().getUser(request.getRemoteAddr()).hasTone){
                    Data.getInstance().getUser(request.getRemoteAddr()).setCoins( Data.getInstance().getUser(request.getRemoteAddr()).getCoins() + 15);
                    Data.getInstance().getUser(request.getRemoteAddr()).hasTone = true;
                }
                %>
            }
        }
        let9.oninput = function () {
            current--;
            currentTune--;

            if (let9.value == "") {
                current++;
                currentTune++;
            }
            else if (let9.value.toUpperCase() != "O") {
                document.getElementById('result').innerHTML = "Error";
                current++;
                currentTune++;
            } else
                document.getElementById('result').innerHTML = "";

            if (current == 0)
                document.getElementById('result').innerHTML = "<a href=/"/"> Success </a>";

            if (currentTune == 0){
                <%
                if (!Data.getInstance().getUser(request.getRemoteAddr()).hasTone){
                    Data.getInstance().getUser(request.getRemoteAddr()).setCoins( Data.getInstance().getUser(request.getRemoteAddr()).getCoins() + 15);
                    Data.getInstance().getUser(request.getRemoteAddr()).hasTone = true;
                }
                %>
            }
        }
        let10.oninput = function () {
            current--;
            currentTune--;

            if (let10.value == "") {
                current++;
                currentTune++;
            }
            else if (let10.value.toUpperCase() != "N") {
                document.getElementById('result').innerHTML = "Error";
                current++;
                currentTune++;
            } else
                document.getElementById('result').innerHTML = "";

            if (current == 0)
                document.getElementById('result').innerHTML = "<a href=/"/"> Success </a>";

            if (currentTune == 0){
                <%
                if (!Data.getInstance().getUser(request.getRemoteAddr()).hasTone){
                    Data.getInstance().getUser(request.getRemoteAddr()).setCoins( Data.getInstance().getUser(request.getRemoteAddr()).getCoins() + 15);
                    Data.getInstance().getUser(request.getRemoteAddr()).hasTone = true;
                }
                %>
            }
        }
        let11.oninput = function () {
            current--;
            currentTune--;

            if (let11.value == "") {
                current++;
                currentTune++;
            }
            else if (let11.value.toUpperCase() != "S") {
                document.getElementById('result').innerHTML = "Error";
                current++;
                currentTune++;
            } else
                document.getElementById('result').innerHTML = "";

            if (current == 0)
                document.getElementById('result').innerHTML = "<a href=/"/"> Success </a>";

            if (currentTune == 0){
                <%
                if (!Data.getInstance().getUser(request.getRemoteAddr()).hasTone){
                    Data.getInstance().getUser(request.getRemoteAddr()).setCoins( Data.getInstance().getUser(request.getRemoteAddr()).getCoins() + 15);
                    Data.getInstance().getUser(request.getRemoteAddr()).hasTone = true;
                }
                %>
            }
        }

        let12.oninput = function () {
            current--;
            currentCompozer--;

            if (let12.value == "") {
                current++;
                currentCompozer++;
            }
            else if (let12.value.toUpperCase() != "V") {
                document.getElementById('result').innerHTML = "Error";
                current++;
                currentCompozer++;
            } else
                document.getElementById('result').innerHTML = "";

            if (current == 0)
                document.getElementById('result').innerHTML = "<a href=/"/"> Success </a>";

            if (currentCompozer == 0){
                <%
                if (!Data.getInstance().getUser(request.getRemoteAddr()).hasComposer){
                    Data.getInstance().getUser(request.getRemoteAddr()).setCoins( Data.getInstance().getUser(request.getRemoteAddr()).getCoins() + 15);
                    Data.getInstance().getUser(request.getRemoteAddr()).hasComposer = true;
                }
                %>
            }
        }
        let13.oninput = function () {
            current--;
            currentCompozer--;

            if (let13.value == "") {
                current++;
                currentCompozer++;
            }
            else if (let13.value.toUpperCase() != "I") {
                document.getElementById('result').innerHTML = "Error";
                current++;
                currentCompozer++;
            } else
                document.getElementById('result').innerHTML = "";

            if (current == 0)
                document.getElementById('result').innerHTML = "<a href=/"/"> Success </a>";

            if (currentCompozer == 0){
                <%
                if (!Data.getInstance().getUser(request.getRemoteAddr()).hasComposer){
                    Data.getInstance().getUser(request.getRemoteAddr()).setCoins( Data.getInstance().getUser(request.getRemoteAddr()).getCoins() + 15);
                    Data.getInstance().getUser(request.getRemoteAddr()).hasComposer = true;
                }
                %>
            }
        }
        let14.oninput = function () {
            current--;
            currentCompozer--;

            if (let14.value == "") {
                current++;
                currentCompozer++;
            }
            else if (let14.value.toUpperCase() != "V") {
                document.getElementById('result').innerHTML = "Error";
                current++;
                currentCompozer++;
            } else
                document.getElementById('result').innerHTML = "";

            if (current == 0)
                document.getElementById('result').innerHTML = "<a href=/"/"> Success </a>";

            if (currentCompozer == 0){
                <%
                if (!Data.getInstance().getUser(request.getRemoteAddr()).hasComposer){
                    Data.getInstance().getUser(request.getRemoteAddr()).setCoins( Data.getInstance().getUser(request.getRemoteAddr()).getCoins() + 15);
                    Data.getInstance().getUser(request.getRemoteAddr()).hasComposer = true;
                }
                %>
            }
        }
        let15.oninput = function () {
            current--;
            currentCompozer--;

            if (let15.value == "") {
                current++;
                currentCompozer++;
            }
            else if (let15.value.toUpperCase() != "A") {
                document.getElementById('result').innerHTML = "Error";
                current++;
                currentCompozer++;
            } else
                document.getElementById('result').innerHTML = "";
            if (current == 0)
                document.getElementById('result').innerHTML = "<a href=/"/"> Success </a>";

            if (currentCompozer == 0){
                <%
                if (!Data.getInstance().getUser(request.getRemoteAddr()).hasComposer){
                    Data.getInstance().getUser(request.getRemoteAddr()).setCoins( Data.getInstance().getUser(request.getRemoteAddr()).getCoins() + 15);
                    Data.getInstance().getUser(request.getRemoteAddr()).hasComposer = true;
                }
                %>
            }
        }
        let16.oninput = function () {
            current--;
            currentCompozer--;

            if (let16.value == "") {
                current++;
                currentCompozer++;
            }
            else if (let16.value.toUpperCase() != "L") {
                document.getElementById('result').innerHTML = "Error";
                current++;
                currentCompozer++;
            } else
                document.getElementById('result').innerHTML = "";

            if (current == 0)
                document.getElementById('result').innerHTML = "<a href=/"/"> Success </a>";

            if (currentCompozer == 0){
                <%
                if (!Data.getInstance().getUser(request.getRemoteAddr()).hasComposer){
                    Data.getInstance().getUser(request.getRemoteAddr()).setCoins( Data.getInstance().getUser(request.getRemoteAddr()).getCoins() + 15);
                    Data.getInstance().getUser(request.getRemoteAddr()).hasComposer = true;
                }
                %>
            }
        }
        let17.oninput = function () {
            current--;
            currentCompozer--;

            if (let17.value == "") {
                current++;
                currentCompozer++;
            }
            else if (let17.value.toUpperCase() != "D") {
                document.getElementById('result').innerHTML = "Error";
                current++;
                currentCompozer++;
            } else
                document.getElementById('result').innerHTML = "";

            if (current == 0)
                document.getElementById('result').innerHTML = "<a href=/"/"> Success </a>";

            if (currentCompozer == 0){
                <%
                if (!Data.getInstance().getUser(request.getRemoteAddr()).hasComposer){
                    Data.getInstance().getUser(request.getRemoteAddr()).setCoins( Data.getInstance().getUser(request.getRemoteAddr()).getCoins() + 15);
                    Data.getInstance().getUser(request.getRemoteAddr()).hasComposer = true;
                }
                %>
            }
        }
        let18.oninput = function () {
            current--;
            currentCompozer--;

            if (let18.value == "") {
                current++;
                currentCompozer++;
            }
            else if (let18.value.toUpperCase() != "I") {
                document.getElementById('result').innerHTML = "Error";
                current++;
                currentCompozer++;
            } else
                document.getElementById('result').innerHTML = "";

            if (current == 0)
                document.getElementById('result').innerHTML = "<a href=/"/"> Success </a>";

            if (currentCompozer == 0){
                <%
                if (!Data.getInstance().getUser(request.getRemoteAddr()).hasComposer){
                    Data.getInstance().getUser(request.getRemoteAddr()).setCoins( Data.getInstance().getUser(request.getRemoteAddr()).getCoins() + 15);
                    Data.getInstance().getUser(request.getRemoteAddr()).hasComposer = true;
                }
                %>
            }
        }

    </script>
</div>

</body>
</html>
