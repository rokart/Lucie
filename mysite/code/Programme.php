<?php

class Programme extends DataObject {

    public static $db = array(
        'TextField' => 'Varchar(255)',
        'Sdesc' => 'Text',
        'TextareaField' => 'Text'
    );
    
    
    public static $has_one = array(
        'ProgrammesPage' => 'ProgrammesPage',
        'Photo' => 'Image',
    );

    public function getCMSFields() {
        return new FieldList(
                new UploadField('Photo', 'Image'),
                new TextField('TextField', 'Title'),
                new TextField('Sdesc', 'Short description'), 
                new TextareaField('TextareaField', 'Description')
               
        );
    }
    //resize image for small list 
      public function getThumbnail() {
      if ($Image = $this->Photo()) {
         return $Image->CMSThumbnail();
        } else {
         return '(No Image)';
      }
   } 

}