<h1>ENUNCIADO</h1>

<p>
    Este PHP va a ejecutar una transformación XSL y nos va a mostrar el resultado.  
</p>

<h1>RESULTADO</h1>

<?php

$xml = new DOMDocument;

$xml->load('database.xml');

$xsl = new DOMDocument;

$xsl->load('surpriseAttack.xsl');

$proc = new XSLTProcessor;

$proc->importStyleSheet($xsl);

echo $proc->transformToXML($xml);

?>