                    <!-- <p><strong><em>Este enlace es válido hasta hoy a medianoche y sólo puede utilizarse una vez.</em></strong></p> -->
                    
                    <p>Si no ha solicitado un restablecimiento de contraseña, <!-- ignore este correo electrónico o --> póngase en contacto con el <a href="{{ CRUDBooster::getSetting("email_sender") }}">servicio de asistencia</a> si tiene alguna pregunta.</p>
                    <p>Gracias,<br>El equipo de SCHEDUS</p>
                    <!-- Sub copy -->
                    <!-- <table class="body-sub">
                        <tr>
                            <td>
                                <p class="sub">Si tiene problemas con el botón de arriba, copie y pegue la URL de abajo en su navegador web.</p>
                                <p class="sub">Enlace copiable:
                                    <a href="{{ CRUDBooster::getSetting("email_sender") }}" target="_blank" tabindex="-1" rel="external">{{ CRUDBooster::getSetting("email_sender") }}</a>
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
                        <?php echo date('Y'); ?> SCHEDUS. Todos los derechos reservados.</p>
                    <p class="sub align-center">
                        <a href="https://schedus.herokuapp.com" target="_blank" title="{{ CRUDBooster::getSetting('appname')}}" tabindex="-1" rel="external" style="-ms-interpolation-mode: bicubic;border: 0;border-style: none;text-decoration: none">
                            SCHEDUS - SENA
                            <img height="20" width="20" border="0" style="-ms-interpolation-mode: bicubic;border: 0;border-style: none;text-decoration: none" src="{{ asset('images\Logo_SENA_White.png') }}">
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
