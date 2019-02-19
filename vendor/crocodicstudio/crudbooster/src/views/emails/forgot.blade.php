@include("crudbooster::emails.header")

<!-- Email Body -->
<tr>
    <td class="email-body" width="100%" cellpadding="0" cellspacing="0">
        <table class="email-body_inner" align="center" width="570" cellpadding="0" cellspacing="0">
            <!-- Body content -->
            <tr>
                <td class="content-cell">
                    <h1>Hola <?php CRUDBooster::myName() ?>,</h1>
                    <p>Recientemente con dirección IP <?php $_SERVER['REMOTE_ADDR']?> en <?php date('Y-m-d H:i:s')?> ha solicitado que se restablezca la contraseña de su cuenta de SCHEDUS. la siguiente es su nueva contraseña para restablecerlo.</p>
                    <!-- Action -->
                    <table class="body-action" align="center" width="100%" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center">
                                <!-- Border based button https://litmus.com/blog/a-guide-to-bulletproof-buttons-in-email-design -->
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <td align="center">
                                            <table border="0" cellspacing="0" cellpadding="0">
                                                <tr>
                                                    <td>
                                                        Restablecer contraseña contraseña: <span class="button button--green"><strong>[password]</strong></span>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                    <!-- <p><strong><em>Este enlace es válido hasta hoy a medianoche y sólo puede utilizarse una vez.</em></strong></p> -->
                    <p>Si no ha solicitado un restablecimiento de contraseña, ignore este correo electrónico o póngase en contacto con el <a href="<?php support_url?>">servicio de asistencia</a> si tiene alguna pregunta.</p>
                    <p>Gracias,<br>El equipo de SCHEDUS</p>
                    <!-- Sub copy -->
                    <!-- <table class="body-sub">
                        <tr>
                            <td>
                                <p class="sub">Si tiene problemas con el botón de arriba, copie y pegue la URL de abajo
                                    en su navegador web.</p>
                                <p class="sub">Enlace copiable:<a href="<?php action_url?>" target="_blank" tabindex="-1"
                                        rel="external"><?php action_url?></a>
                                </p>
                            </td>
                        </tr>
                    </table> -->
                </td>
            </tr>
        </table>
    </td>
</tr>
<tr>
    <td>
        <table class="email-footer" align="center" width="570" cellpadding="0" cellspacing="0">
            <tr>
                <td class="content-cell" align="center">
                    <p class="sub align-center">&copy;
                        <?php echo date('Y')?> SCHEDUS. Todos los derechos reservados.</p>
                    <p class="sub align-center">
                        <a href=https://schedus.herokuapp.com/" target="_blank" title="<?php CRUDBooster::getSetting('appname')?>"
                            tabindex="-1" rel="external" style="-ms-interpolation-mode: bicubic;border: 0;border-style: none;text-decoration: none">
                            SCHEDUS - SENA
                            <img height="20" width="20" border="0" style="-ms-interpolation-mode: bicubic;border: 0;border-style: none;text-decoration: none"
                                src="<?php asset('images\Logo_SENA_White.png') ?>">
                        </a>
                        <br>CP 11121
                        <br>Bogotá D.C., Colombia
                    </p>
                </td>
            </tr>
        </table>
    </td>
</tr>
</table>
</td>
</tr>
</table>
</body>

</html>
