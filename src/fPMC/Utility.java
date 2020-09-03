package fPMC;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;

public class Utility {
	
	private static String fileName = "config.properties";
	private static Properties properties;
	
	private static void loadPropertiesInstance(){
		try {
			if (properties == null){
				properties = new Properties();
				properties.load(new FileInputStream(fileName));
			}
		} 
		catch (IOException e) {
			e.printStackTrace();
			System.exit(0);
		}
	}

	public static String getProperty (String key){
		try {
		loadPropertiesInstance();
		String result = properties.getProperty(key).strip(); 
		if (result == null)
			  throw new IllegalArgumentException(key.toUpperCase() + " name not found!");

		return result;
		}
		catch (IllegalArgumentException | NullPointerException e) {
			System.err.println(e.getMessage());
			System.exit(0);
		}
		return null;		
	}
	
	
	public static String getProperty (String key, String defaultValue){
		loadPropertiesInstance();
		String output = properties.getProperty(key);
		return (output != null ? output : defaultValue);
	}	
}
