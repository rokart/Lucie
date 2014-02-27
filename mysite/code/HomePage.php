<?php

class HomePage extends Page {

    private static $db = array(
    );
    private static $has_one = array(
    );

    function getCMSFields() {
        $fields = parent::getCMSFields();

        return $fields;
    }

}

class HomePage_Controller extends Page_Controller {

    public function getgoalobject() {
        $getgoalobject = DataObject::get("Programme");
        return $getgoalobject;
    }

}
