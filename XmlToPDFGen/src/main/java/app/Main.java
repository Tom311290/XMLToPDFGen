package app;

import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.stage.Stage;

public class Main extends Application{

	
	public static void main(String[] args) {
		launch(args);
	}
	
	public void start(Stage primaryStage) {
		try {
			
			Parent root = FXMLLoader.load(getClass().getResource("ParameterWindow.fxml"));
			Scene scene = new Scene(root, 800, 500);
			primaryStage.setTitle("XML to PDF converter");
			primaryStage.setScene(scene);
			primaryStage.show();

		} catch(Exception e) {
			e.printStackTrace();
		}
	}
}
