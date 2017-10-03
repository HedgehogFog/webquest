package model;

import java.net.InetAddress;

/**
 * Created by hedgehog on 10/2/17.
 */
public class User {
    private String ipAddress;
    private int coins;

    public User(String ipAddress){
        this.ipAddress = ipAddress;
    }
	
	public int getCoins() {
		return coins;
	}

    public void setCoins(int coins) {
        this.coins = coins;
    }

    public String getIpAddress() {
        return ipAddress;
    }
}
