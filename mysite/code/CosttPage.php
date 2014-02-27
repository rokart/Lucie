<?php

class CosttPage extends Page {

    public static $db = array(
        'SubContent' => 'HTMLText'
    );

    function getCMSFields() {
        $fields = parent::getCMSFields();

        $fields->addFieldToTab("Root.Content.Main", new HTMLEditorField("SubContent", "Sub Content:"));

        return $fields;
    }

}

class CosttPage_Controller extends Page_Controller {
    
}
