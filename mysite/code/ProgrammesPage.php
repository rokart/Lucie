<?php

class ProgrammesPage extends Page {

    public static $has_many = array(
        'Programmes' => 'Programme'
    );

    public function getCMSFields() {
        $fields = parent::getCMSFields();
        $config = GridFieldConfig_RecordEditor::create();

        $config->getComponentByType('GridFieldDataColumns')->setDisplayFields(array(
            'Thumbnail' => 'Thumbnail',
            'TextField' => 'Title',
            'Sdesc' => 'Short description', 
            'TextareaField' => 'Description'
        ));
        $ProgrammesField = new GridField(
                'Programmes', 'Programmes', $this->Programmes(), $config
        );
        $fields->addFieldToTab('Root.Programmes', $ProgrammesField);
        return $fields;
    }

}

class ProgrammesPage_Controller extends Page_Controller {
    
}
