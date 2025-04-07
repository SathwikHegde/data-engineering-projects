<?php 
    require 'vendor/autoload.php';

    class SendEmail{

        public static function SendMail($to,$subject,$content){
            $key = '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';

            $email = new \SendGrid\Mail\Mail();
            $email->setFrom("pjgawand@gmail.com", "Pratik Gawand");
            $email->setSubject($subject);
            $email->addTo($to);
            $email->addContent("text/plain", $content);
            //$email->addContent("text/html", $content);

            $sendgrid = new \SendGrid($key);

            try{
                $response = $sendgrid->send($email);
                return $response;
            }catch(Exception $e){
                echo 'Email exception Caught : '. $e->getMessage() ."\n";
                return false;
            }
        }
    }
?>