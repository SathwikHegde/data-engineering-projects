
##Need to Login to Twillio and update the API Key

##Still facing issues with the API Key

<?php
require 'vendor/autoload.php';

class SendEmail {

    public static function SendMail($to, $subject, $content) {
        // Load the API key from an environment variable
        $key = getenv('SENDGRID_API_KEY');

        if (!$key) {
            error_log("SendGrid API Key is missing.");
            return false;
        }

        $email = new \SendGrid\Mail\Mail();
        $email->setFrom("satwikhegde14@gmail.com", "Sathwik Hegde");
        $email->setSubject($subject);
        $email->addTo($to);
        $email->addContent("text/plain", $content);

        $sendgrid = new \SendGrid($key);

        try {
            $response = $sendgrid->send($email);
            return $response;
        } catch (Exception $e) {
            error_log('Email exception caught: ' . $e->getMessage());
            return false;
        }
    }
}
?>
