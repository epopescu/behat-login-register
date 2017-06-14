<?php

class TraitedFeatureContext extends Behat\Behat\Context\BehatContext
{
    use Behat\MinkExtension\Context\MinkDictionary;

     /**
     * @Then /^i should see "([^"]*)"$/
     */
    public function iShouldSee($arg1)
    {
          $this->getSession()->wait(5000, "document.getElementByClassName(arg1).length > 0");
    }

}
