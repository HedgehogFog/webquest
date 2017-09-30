<%@ page import="java.util.Calendar" %>
<html>
<head>
    <%@ page contentType="text/html;charset=utf-8" %>

    <title>
        Shedule
    </title>
</head>

<body>
Понедельник<br>
I Информ(лаб) Широкий 1-02В gr2<br>
II Информ(лаб) Широкий 1-02В gr2<br>
III Информ(лаб) Широкий 3-02А gr1<br>
IV Информ(лаб) Широкий 3-02А gr1<br>
Вторник<br>
I Физра Рандом 3-XX gr0<br>
II Тех. прогр Internet(л) Широкий 3-05А gr0<br>
III Матан(л) Святлов 1-01Б gr0<br>
Среда<br>
I Тех.прогр(лаб) Широкий 1-02В gr2<br>
II Дифы(л) Королев 4-05А gr0<br>
III Тех.прогр(лаб) Широкий 1-02В gr1<br>
III Тех ПО(лаб) Помельников 4-03А gr2<br>
IV Тех ПО(лаб) Помельников 1-02В gr1<br>
Четверг<br>
<% if (isNum()) {%>
    <font color="red">TI Дифы(с) Панченко 33-08А gr0 denum</font><br>
<%} else {%>
I Дифы(с) Панченко 33-08А gr0 denum<br>
<%} %>

II Тех ПО(л) Помельников 3-05А gr0<br>
III ОС и оболочки(л) Светлов 4-08А gr0<br>
Пятница<br>
I Инф и прогр (л) Клячин 4-05А gr0<br>
II Физра Рандом 3-XX gr0<br>
Cуббота<br>
I ОС(Ад)(лаб) Чебаненко 1-02В gr2<br>
II ОС(Ад)(лаб) Чебаненко 1-02В gr2<br>
III Матан(с) Филатов 3-05А gr0<br>
IV ОС(Ад)(лаб) Чебаненко 4-03А gr1<br>
V ОС(Ад)(лаб) Чебаненко 4-03А gr1<br>
</body>
</html>

<%!
    public boolean isNum() {
        Calendar calendar = Calendar.getInstance();
        int month = calendar.get(Calendar.MONTH);
        int day = calendar.get(Calendar.DAY_OF_MONTH);
        if (month == Calendar.SEPTEMBER) {
            if (day <= 3)
                return true;
            else if (day < 10)
                return false;
            else if (day < 17)
                return true;
            else if (day < 24)
                return false;
            else if (day < 31)
                return true;
        } else if (month == Calendar.OCTOBER) {
            if (day < 8)
                return false;
            else if (day < 15)
                return true;
            else if (day < 22)
                return false;
            else if (day < 29)
                return true;
            else
                return false;
        } else if (month == Calendar.NOVEMBER) {
            if (day < 5)
                return false;
            else if (day < 12)
                return true;
            else if (day < 19)
                return false;
            else if (day < 26)
                return true;
            else
                return false;
        } else if (month == Calendar.DECEMBER) {
            if (day < 3)
                return false;
            else if (day < 10)
                return true;
            else if (day < 17)
                return false;
            else if (day < 24)
                return true;
            else
                return false;
        }

        return true;
    }

%>