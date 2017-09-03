package app;

import java.awt.Desktop;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Optional;
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
import org.apache.fop.messaging.MessageHandler;

import com.sun.javafx.image.impl.ByteIndexed.Getter;

import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.Node;
import javafx.scene.control.Alert;
import javafx.scene.control.Button;
import javafx.scene.control.ButtonType;
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
	
	public void initialize(URL location, ResourceBundle resources) {
		
	}
	
	@FXML
	public void generate(){

		logScreen.setText("");
		
		Double progress = 0.0;
		String configFile = "src//userconfig.xml";
		ArrayList<TextField> textFields = new ArrayList<TextField> ();
		
		textFields.add(XMLFilePath);
		textFields.add(XSLFilePath);
		textFields.add(outputFilePath);
		textFields.add(outputFileName);
		
		String messages = checkFields(textFields);
		
		if(!messages.equals("")){
			Alert alert = new Alert(AlertType.ERROR, messages, ButtonType.OK);
			alert.showAndWait();
			return;
		}
		
		
		String outFile = outputFile.getAbsolutePath() + "\\" + outputFileName.getText();
		String xmlFile = this.xmlFile.getAbsolutePath();
		String xslFile = this.xslFile.getAbsolutePath();
		
		FileOutputStream output = null;
		File userConfigFile = new File(configFile);
		Driver driver = new Driver();		
		Logger logger = new ConsoleLogger(ConsoleLogger.LEVEL_INFO);
		
		MessageHandler.setScreenLogger(logger);
		driver.setLogger(logger);		
		driver.setRenderer(Driver.RENDER_PDF);		
		
		try {
			Options options = new Options(userConfigFile);
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
			transformer.transform(src, res);

			output.close();
			
			 File myFile = new File(outFile);
		     Desktop.getDesktop().open(myFile);
			
		} catch (FOPException e) {
			logScreen.appendText(e.getMessage());
			e.printStackTrace();
		} catch (FileNotFoundException e) {
			logScreen.appendText(e.getMessage());
			e.printStackTrace();
		} catch (TransformerConfigurationException e) {
			logScreen.appendText(e.getMessage());
			e.printStackTrace();
		} catch (TransformerException e) {
			logScreen.appendText(e.getMessage());
			e.printStackTrace();
		} catch (IOException e) {
			logScreen.appendText(e.getMessage());
			e.printStackTrace();
		}
		
		
	}
	
	@FXML
	public void chooseXMLFile(ActionEvent ae){
		
		String[] extension = {"XML", "*.xml"};
		xmlFile = fileChooser(ae, extension);
		
		XMLFilePath.setText(xmlFile != null ? xmlFile.getAbsolutePath() : "");

	}
	
	@FXML
	public void chooseXSLFile(ActionEvent ae){
		
		String[] extension = {"XSL", "*.xsl"};
		xslFile = fileChooser(ae, extension);
		
		XSLFilePath.setText(xslFile != null ? xslFile.getAbsolutePath() : "");

	}	

	@FXML
	public void chooseOutputFolder(ActionEvent ae){
		
		outputFile = directoryChooser(ae);
		
		outputFilePath.setText(outputFile != null ? outputFile.getAbsolutePath() : "");

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
	
	private String checkFields(ArrayList<TextField> fieldList){
		
		String message = "";
		
		for(TextField textField : fieldList){
			if (textField != null && !textField.getText().equals("")){
				textField.setStyle("");
				
			}else{
				textField.setStyle("-fx-effect: innershadow( three-pass-box, rgba( 255, 0, 0, 0.5 ), 10, 0, 0, 0 );");
				
				if(textField.getId().equals("XMLFilePath")){
					message = "XML file path is invalid\n";
				}else if(textField.getId().equals("XSLFilePath")){
					message = message + "XSL file path is invalid\n";
				}else if(textField.getId().equals("outputFilePath")){
					message = message + "Output file path is invalid\n";
				}else if(textField.getId().equals("outputFileName")){
					message = message + "Output file name is invalid";
				}
			}
		}
		return message;
	}
}
