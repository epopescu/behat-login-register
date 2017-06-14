<?php

class SubcontextedFeatureContext extends Behat\Behat\Context\BehatContext
{
    public function __construct()
    {
        $this->useContext('mink', new Behat\MinkExtension\Context\MinkContext);
    }

     /**
     * @Then /^i should see "([^"]*)"$/
     */
    public function iShouldSee($arg1)
    {
          $this->getSession()->wait(5000, "document.getElementByClassName(arg1).length > 0");
    }


}
