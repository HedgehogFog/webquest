package data;

import model.User;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

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

    private List<User> users = new ArrayList<User>();

	public User getUser(String ip) {
		for (int i = 0; i < users.size(); i++) {
            System.out.println(users.get(i).getIpAddress());
            if (users.get(i).getIpAddress().equals(ip))
                return users.get(i);
        }
			
		return null;
	}
	
    public List<User> getUsers() {
        return users;
    }
}
