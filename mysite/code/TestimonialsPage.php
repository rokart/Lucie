<?php

class TestimonialsPage extends Page {

    public static $has_many = array(
        'Testimonials' => 'Testimonial' 
    );

    public function getCMSFields() {
        $fields = parent::getCMSFields();
        $config = GridFieldConfig_RecordEditor::create();
                
        $config->getComponentByType('GridFieldDataColumns')->setDisplayFields(array(
            'Name' => 'Name',
            'Testimonial' => 'Testimonial'
        ));
        $testimonialsField = new GridField(
                'Testimonials', 'Testimonials', $this->Testimonials(), $config
        );
        $fields->addFieldToTab('Root.Testimonials', $testimonialsField);
        return $fields;
    }

} 
class TestimonialsPage_Controller extends Page_Controller {
    }


