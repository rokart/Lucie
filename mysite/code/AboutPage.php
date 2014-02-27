<?php

class AboutPage extends Page {

    private static $has_one = array(
        'Photo1' => 'Image',
    );

    function getCMSFields() {
        $fields = parent::getCMSFields();
        $fields->addFieldToTab("Root.Main", new UploadField('Photo1', 'Photo1'));
        return $fields;
    }

}

class AboutPage_Controller extends Page_Controller {
    
}

