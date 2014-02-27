<?php

class ContactPage extends Page {

    public static $db = array(
        "EmailAdress" => "Varchar(255)"
    );

    function getCMSFields() {
        $fields = parent::getCMSFields();
        $fields->addFieldToTab("Root.Content.Email", new TextField("EmailAdress", "Email send contact enquiries to:"));
        return $fields;
    }

}

class ContactPage_Controller extends Page_Controller {

    private static $allowed_actions = array('Form');

    public function Form() {
        $fields = new FieldList(
                new TextField('Name', 'Name*'), 
                new NumericField('Number', 'Contact number'), 
                new EmailField('Email', 'Email*'), 
                new TextareaField('Message', 'Message*')
        );
        $actions = new FieldList(
                new FormAction('submit', 'Submit')
        );

        $validator = new RequiredFields('Name', 'Email','Message');
        return new Form($this, 'Form', $fields, $actions, $validator);
    }

    public function submit($data, $form) {
        $email = new Email();

        $email->setTo($this->EmailAdress);
        $email->setFrom($data['Email']);
        $email->setSubject("Contact Message from {$data["Name"]}");

        $messageBody = "
            <p><strong>Name:</strong> {$data['Name']}</p>
            <p><strong>Contact number:</strong> {$data['Number']}</p>
            <p><strong>Message:</strong> {$data['Message']}</p>
        ";
        $email->setBody($messageBody);
        $email->send();
        return array(
            'Content' => '<p>Thank you for your enquiry.</p>',
            'Form' => ''
        );
    }

}