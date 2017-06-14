<?php

class InheritedFeatureContext extends Behat\MinkExtension\Context\MinkContext
{



    /**
     * @Then /^i should see "([^"]*)"$/
     */
    public function iShouldSee($arg1)
    {
          $this->getSession()->wait(5000, "document.getElementByClassName(arg1).length > 0");
    }

    /**
     * @Then /^i should be on "([^"]*)"$/
     */
    public function iShouldBeOn($arg1)
    {
        $this->getSession()->wait(500, "window.location == $arg1");
    }
}
