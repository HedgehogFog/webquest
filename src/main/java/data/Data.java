package data;

import java.util.Calendar;

/**
 * Created by hedgehog on 11.09.17.
 */
public class Data
{
    private static Data ourInstance = new Data();

    public static Data getInstance() {
        return ourInstance;
    }

    private Data() {
    }

    private int length = 1;
    private int lastUpdate = 14;
    public int getLength() {
        Calendar calendar = Calendar.getInstance();
        if (calendar.get(Calendar.HOUR_OF_DAY) == lastUpdate){
            length++;
            if (++lastUpdate >= 25)
                lastUpdate = 0;
        }
        return length;
    }

    public void setLength(int length) {
        this.length = length;
    }
}
