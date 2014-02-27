<?php

class Testimonial extends DataObject {

    public static $db = array(
        'Name' => 'Varchar(255)',
        'Testimonial' => 'Text'
    );
    public static $has_one = array(
        'TestimonialsPage' => 'TestimonialsPage'
    );

    public function getCMSFields() {
        return new FieldList(
                new TextField('Name', 'Name'), 
                new TextareaField('Testimonial', 'Testimonial')
        );
    }

}