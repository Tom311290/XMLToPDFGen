package app;

import java.awt.Desktop;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.Optional;
import java.util.Properties;
import java.util.ResourceBundle;

import javax.xml.transform.ErrorListener;
import javax.xml.transform.Result;
import javax.xml.transform.Source;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.sax.SAXResult;
import javax.xml.transform.stream.StreamSource;

import org.apache.avalon.framework.logger.ConsoleLogger;
import org.apache.avalon.framework.logger.Logger;
import org.apache.fop.apps.Driver;
import org.apache.fop.apps.FOPException;
import org.apache.fop.apps.Options;
import org.apache.fop.configuration.ConfigurationReader;
import org.apache.fop.messaging.MessageHandler;

import com.sun.javafx.image.impl.ByteIndexed.Getter;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.Node;
import javafx.scene.control.Alert;
import javafx.scene.control.Button;
import javafx.scene.control.ButtonType;
import javafx.scene.control.ProgressBar;
import javafx.scene.control.ProgressIndicator;
import javafx.scene.control.TextArea;
import javafx.scene.control.TextField;
import javafx.scene.control.Alert.AlertType;
import javafx.stage.DirectoryChooser;
import javafx.stage.FileChooser;
import javafx.stage.Stage;

public class Generator implements Initializable{

	@FXML
	public Button selectXMLFile;
	@FXML
	public Button selectXSLFile;
	@FXML
	public Button selectOutputFolder;
	@FXML
	public Button submit;
	@FXML
	public TextField XMLFilePath;
	@FXML
	public TextField XSLFilePath;
	@FXML
	public TextField outputFilePath;
	@FXML
	public TextField outputFileName;
	@FXML
	public TextArea logScreen;
	@FXML
	public ProgressIndicator progressBar;
	
	private File xmlFile;
	private File xslFile;
	private File outputFile;
	private Double progress = 0.0;
	private String configFile = "";
	private File userConfigFile;
	private Options options;
		
	public void initialize(URL location, ResourceBundle resources) {
		
		try {
			
			Properties prop = new Properties();
			
			logScreen.appendText("Loading application properties\n");
			configFile = "config/AppConfiguration.properties";			
			InputStream appConfig = getClass().getResourceAsStream(configFile);
			// load a properties file
			prop.load(appConfig);
			logScreen.appendText("Application properties loaded!\n");
			
			logScreen.appendText("Fetching FOP property file path\n");
			String FOPpropertyFile = prop.getProperty("FOPconfigFilePath");
			logScreen.appendText("FOP property file path fetched: " + FOPpropertyFile + "\n");			

			logScreen.appendText("Loading FOP configuration\n");			
			File file = new File(FOPpropertyFile);
			options = new Options(file);
			
			logScreen.appendText("FOP user configuration succsessfully loaded!\n");
			
		} catch (FOPException e) {
			logScreen.appendText(e.toString() + "\n");
			
		} catch (FileNotFoundException e) {
			logScreen.appendText(e.toString() + "\n");
		} catch (IOException e) {
			logScreen.appendText(e.toString() + "\n");
		}
	}
	
	@FXML
	public void generate(){	
		
		logScreen.appendText("XML --> PDF conversion started!\n");		

		String messages = "";
		
		messages = checkField(XMLFilePath);
		messages = messages + checkField(XSLFilePath);
		messages = messages + checkField(outputFilePath);
		messages = messages + checkField(outputFileName);
		
		if(!messages.equals("")){
			Alert alert = new Alert(AlertType.ERROR, messages, ButtonType.OK);
			logScreen.appendText("XML --> PDF conversion stopped! Some of selected path/s is/are invalid!\n");
			logScreen.appendText("\n");
			alert.showAndWait();
			return;
		}		
		
		String outFile = outputFile.getAbsolutePath() +  "\\" + outputFileName.getText();
		
		logScreen.appendText("Loading selected files.\n");
		FileOutputStream output = null;
		
		Driver driver = new Driver();		
		Logger logger = new ConsoleLogger(ConsoleLogger.LEVEL_INFO);
		
		MessageHandler.setScreenLogger(logger);
		driver.setLogger(logger);
		driver.setRenderer(Driver.RENDER_PDF);		
		
		try {
		
			//Setup the OutputStream for FOP
			output = new FileOutputStream(outFile);
			driver.setOutputStream(output);
			
			//Make sure the XSL transformation's result is piped through to FOP
			Result res = new SAXResult(driver.getContentHandler());
			
			//Setup XML input
			Source src = new StreamSource(xmlFile);

			//Setup Transformer
			Source xsltSrc = new StreamSource(xslFile);
			TransformerFactory transformerFactory = TransformerFactory.newInstance();        
			Transformer transformer;
			//Setup the OutputStream for FOP
			transformer = transformerFactory.newTransformer(xsltSrc);
			//Start the transformation and rendering process
			logScreen.appendText("Starting transformation.\n");
			transformer.transform(src, res);
			logScreen.appendText("Transformation completed! Opening file:" + outFile +"\n");

			output.close();
			
			File myFile = new File(outFile);
			Desktop.getDesktop().open(myFile);
			
		} catch (FileNotFoundException e) {
			logScreen.appendText(e.toString() + "\n");
		} catch (TransformerConfigurationException e) {
			logScreen.appendText(e.toString() + "\n");
		} catch (TransformerException e) {
			logScreen.appendText(e.toString() + "\n");
		} catch (IOException e) {
			logScreen.appendText(e.toString() + "\n");
		}		
	}
	
	@FXML
	public void chooseXMLFile(ActionEvent ae){
		
		String[] extension = {"XML", "*.xml"};
		xmlFile = fileChooser(ae, extension);		
		XMLFilePath.setText(xmlFile != null ? xmlFile.getAbsolutePath() : "");
		
		checkField(XMLFilePath);
	}
	
	@FXML
	public void chooseXSLFile(ActionEvent ae){
		
		String[] extension = {"XSL", "*.xsl"};
		xslFile = fileChooser(ae, extension);		
		XSLFilePath.setText(xslFile != null ? xslFile.getAbsolutePath() : "");
		
		checkField(XSLFilePath);
	}	

	@FXML
	public void chooseOutputFolder(ActionEvent ae){
		
		outputFile = directoryChooser(ae);		
		outputFilePath.setText(outputFile != null ? outputFile.getAbsolutePath() : "");
		
		checkField(outputFilePath);
	}
	
	private File fileChooser(ActionEvent ae, String[] extension){
		
		FileChooser fileChooser = new FileChooser();
		fileChooser.setTitle("Select path");
		fileChooser.getExtensionFilters().addAll(new FileChooser.ExtensionFilter(extension[0], extension[1]));

		File file = fileChooser.showOpenDialog(getStage(ae));		
		
		return file;
	}
	
	private File directoryChooser(ActionEvent ae){
		
		DirectoryChooser chooser = new DirectoryChooser();
		chooser.setTitle("Select directory");
		File selectedDirectory = chooser.showDialog(getStage(ae));
		
		return selectedDirectory;
	}

	private Stage getStage(ActionEvent ae){
		Node source = (Node) ae.getSource();
	    Stage theStage = (Stage) source.getScene().getWindow();
	    
	    return theStage;
	}
	
	private String checkField(TextField field){
		
		String message = "";
		
		if (field != null && !field.getText().equals("")){
			field.setStyle("");
			
		}else{
			field.setStyle("-fx-effect: innershadow( three-pass-box, rgba( 255, 0, 0, 0.5 ), 10, 0, 0, 0 );");
			
			if(field.getId().equals("XMLFilePath")){
				message = "XML file path is invalid\n";
			}else if(field.getId().equals("XSLFilePath")){
				message = "XSL file path is invalid\n";
			}else if(field.getId().equals("outputFilePath")){
				message = "Output file path is invalid\n";
			}else if(field.getId().equals("outputFileName")){
				message = "Output file name is invalid";
			}
		}
		
		return message;
	}
}
