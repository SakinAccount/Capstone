package tek.sdet.capstone.steps;

import java.util.List;
import java.util.Map;

import org.junit.Assert;

import io.cucumber.datatable.DataTable;
import io.cucumber.java.en.And;

import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import tek.sdet.capstone.pages.POMFactory;
import tek.sdet.capstone.utilities.CommonUtility;

public class SignInSteps extends CommonUtility{

	POMFactory factory = new POMFactory();

	@When("User click on Sign in option")
	public void userClickOnSignInOption() {
		click(factory.homePage().signIn);
		logger.info("User clicked on Sign In option");
		
				
}
	@And("User enter email {string} and password {string}")
	public void userEnterEmailAndPassword(String email,String password) {
		sendText(factory.signInPage().emailField,email);
		sendText(factory.signInPage().passwordField,password);
		logger.info("User entered email" + email + "and password " + password);
		
	
}   @And("User click on login button")
public void userClickOnLoginButton() {
	click(factory.signInPage().logginButton);
	logger.info("User clicked on login button");

}
@Then("User should be logged in into Account")
	public void userShouldBeLoggedInIntoAccount() {
		Assert.assertTrue(isElementDisplayed(factory.homePage().account));
		logger.info("User logged in into account");


}

      @And ("User click on Create New Account button")
      public void userClickOnCreateNewAccountButton() {
	click(factory.signInPage().newAccountButton);
	logger.info("user clicked on Create New Account button");
	
      }
    
	  @And("User fill the signUp information with below data")
	    public void userFillTheSignUpInformationWithBelowData(DataTable data) {
		    List<Map<String, String>> signUpData = data.asMaps(String.class, String.class);
	        sendText(factory.signInPage().nameInput, signUpData.get(0).get("name"));
	        sendText(factory.signInPage().emailInput, signUpData.get(0).get("email"));
	        sendText(factory.signInPage().passwordInput, signUpData.get(0).get("password"));
	        sendText(factory.signInPage().confirmPasswordInput, signUpData.get(0).get("confirmPassword"));
	        logger.info("user_entered_required_informaiton_into_sign_up_form");

   
}
       @And("User click on SignUp button")
     public void userClickOnSignUpButton() {
	 click(factory.signInPage().signUpButton);
        logger.info("user clicked on Sign up Button");
	
}
        
        	 @Then("User should be logged into account page")
        	    public void userShouldBeLoggedIntoAccountPage() {
        	    	 Assert.assertTrue(isElementDisplayed(factory.homePage().account));
        	        logger.info("Account was created");

        	    	
}
        
        	 }     
