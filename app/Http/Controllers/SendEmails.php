<?php
//Import PHPMailer classes into the global namespace
//These must be at the top of your script, not inside a function
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;

//Load Composer's autoloader
require '../vendor/autoload.php';

function notificarExpositor($correoExpositor, $msgEdit, $project_name, $url){
    try {
        //Create an instance; passing `true` enables exceptions
        $mail = new PHPMailer(true);
    
        //Server settings
        $mail->SMTPDebug = SMTP::DEBUG_SERVER;                      //Enable verbose debug output
        $mail->isSMTP();                                            //Send using SMTP
        $mail->Host = 'smtp-mail.outlook.com';                //Set the SMTP server to send through
        // ↑ aquí, va el smtp, como yo lo estaba haciendo con mi correo univeristario y es outlook pues es ese, en caso de querer usar otro abria que cambiarlo
        //  se que si es gmail el smtp es este: 'smtp.gmail.com'
        //  de todas formas, supongo que el correo que se usara sera el del departamento o de la carrera, no se, pero si es asi, entocnes es outlook por lo que seria el mismo que ya tiene jajaj
    
        $mail->SMTPAuth = true;                                   //Enable SMTP authentication
        $mail->Username = 'correo@outlook.com';                     //SMTP username
        // ↑ aqui pues literal el correo desde el que se envia xd
    
        $mail->Password = '1234';                               //SMTP password
        // ↑ pues la contraseña del correo jajaja
    
        $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;           //Enable implicit TLS encryption
        $mail->Port = 587;                                    //TCP port to connect to; use 587 if you have set `SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS`
        // ↑ aqui va el ´puerto de coneccion que usa el phpmailer con el smpt del correo
        //  de las cuales, 587 es la que usa outlook y la de gmail es 465
    
        //Recipients
        $mail->setFrom('correo@outlook.com', 'EXPO LMAD');
        // ↑ aqui se ponde de nuevo el correo que se usara para enviar correos, valga la redundancia
        $mail->addAddress($correoExpositor);     //Add a recipient 
        // ↑ aqui va el correo destinatario y el nombre del destinatario (opcional)
        
        //$mail->addAddress('ellen@example.com');               //Name is optional
        //$mail->addReplyTo('info@example.com', 'Information');
        //$mail->addCC('cc@example.com');
        //$mail->addBCC('bcc@example.com');
        // ↑ todos estos son lo de, por orden, agregar otro destinatario, agregar una copia, agregar un con copia a, y agregar una copia secreta xd
    
        //Attachments
        //$mail->addAttachment('/var/tmp/file.tar.gz');         //Add attachments
        //$mail->addAttachment('/tmp/image.jpg', 'new.jpg');    //Optional name
        // ↑ estas dos de arriba es para agregar imagenes o documentos y asi jajaja
    
        //Content
        $mail->isHTML(true);                                  //Set email format to HTML
        $mail->Subject = 'EXPO LMAD 2025';                        //preguntar a la profe Abby sobre el contenido del mensaje
        $mail->Body    = "<body>
                            <p>Estimado estudiante,</p>
                            <p>Su proyecto enviado a la plataforma <strong>EXPO LMAD</strong> <strong>{$project_name}</strong> ha sido devuelto por no cumplir con las indicaciones pertinentes.</p>
                            <p>Agradecemos que atienda lo siguiente:</p>
                            <p><em>{$msgEdit}</em></p>
                            <p>A continuaci&#243;n, deber&#225; ingresar a la siguiente liga: <a href='{$url}'>{$url}</a> para poder realizar las correcciones en un plazo m&#225;ximo de 48 horas. Posterior a eso, la plataforma ser&#225; cerrada y su proyecto no ser&#225; visible en la plataforma.</p>
                            <p>Saludos cordiales,</p>
                            <p><em><strong>Equipo LMAD</strong></em></p>
                            <p><strong>EXPO LMAD 2025</strong> <em>Expandiendo la realidad</em></p>
                        </body>
                        </html>
                        ";

        $mail->AltBody = 'Este es por si el destinatario no puede ver html jajajaja';
    
        $mail->send();
        echo "<script>console.log('Mensaje enviado');</script>";
        return true;
    } catch (Exception $e) {
        return false;
    
    }

}

function notificarMaestro($correoMaestro, $pass, $clave){
    try {
        //Create an instance; passing `true` enables exceptions
        $mail = new PHPMailer(true);
    
        //Server settings
        $mail->SMTPDebug = SMTP::DEBUG_SERVER;                      //Enable verbose debug output
        $mail->isSMTP();                                            //Send using SMTP
        $mail->Host = 'smtp-mail.outlook.com';                //Set the SMTP server to send through
        // ↑ aquí, va el smtp, como yo lo estaba haciendo con mi correo univeristario y es outlook pues es ese, en caso de querer usar otro abria que cambiarlo
        //  se que si es gmail el smtp es este: 'smtp.gmail.com'
        //  de todas formas, supongo que el correo que se usara sera el del departamento o de la carrera, no se, pero si es asi, entocnes es outlook por lo que seria el mismo que ya tiene jajaj
    
        $mail->SMTPAuth = true;                                   //Enable SMTP authentication
        $mail->Username = 'correo@outlook.com';                     //SMTP username
        // ↑ aqui pues literal el correo desde el que se envia xd
    
        $mail->Password = '1234';                               //SMTP password
        // ↑ pues la contraseña del correo jajaja
    
        $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;           //Enable implicit TLS encryption
        $mail->Port = 587;                                    //TCP port to connect to; use 587 if you have set `SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS`
        // ↑ aqui va el ´puerto de coneccion que usa el phpmailer con el smpt del correo
        //  de las cuales, 587 es la que usa outlook y la de gmail es 465
    
        //Recipients
        $mail->setFrom('correo@outlook.com', 'EXPO LMAD');
        // ↑ aqui se ponde de nuevo el correo que se usara para enviar correos, valga la redundancia
        $mail->addAddress($correoMaestro);     //Add a recipient 
        // ↑ aqui va el correo destinatario y el nombre del destinatario (opcional)
        
        //$mail->addAddress('ellen@example.com');               //Name is optional
        //$mail->addReplyTo('info@example.com', 'Information');
        //$mail->addCC('cc@example.com');
        //$mail->addBCC('bcc@example.com');
        // ↑ todos estos son lo de, por orden, agregar otro destinatario, agregar una copia, agregar un con copia a, y agregar una copia secreta xd
    
        //Attachments
        //$mail->addAttachment('/var/tmp/file.tar.gz');         //Add attachments
        //$mail->addAttachment('/tmp/image.jpg', 'new.jpg');    //Optional name
        // ↑ estas dos de arriba es para agregar imagenes o documentos y asi jajaja
    
        //Content
        $mail->isHTML(true);                                  //Set email format to HTML
        $mail->Subject = 'EXPO LMAD 2025';                        //preguntar a la profe Abby sobre el contenido del mensaje
        $mail->Body    = "<body>
                            <p>Estimado maestro,</p>
                            
                            <p>Su clave de usuario es: </p>
                            <p><strong>{$clave}</strong></p>
                            
                            <p>Su contrase&#241;a es: </p>
                            <p><strong>{$pass}</strong></p>

                            <p>Saludos cordiales,</p>
                            <p><em><strong>Equipo LMAD</strong></em></p>
                            <p><strong>EXPO LMAD 2025</strong> <em>Expandiendo la realidad</em></p>
                        </body>
                        </html>
                        ";

        $mail->AltBody = 'Este es por si el destinatario no puede ver html jajajaja';
    
        $mail->send();
        echo "<script>console.log('Mensaje enviado');</script>";
        return true;
    } catch (Exception $e) {

        return false;
    
    }

}

?>
