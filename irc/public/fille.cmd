#!/usr/bin/env php
<?php

$port = $argv[1];
$server	= $argv[2];
$channel = $argv[3];
$user = $argv[4];
$priority = 1;
$params = array();

for ($i = 5; $i < sizeof($argv); ++$i)
  {
    $params[$i - 5] = $argv[$i];
  }

$sock = fsockopen("localhost", $port);

if (!$sock)
  {
    die(sprintf("can't connect to localhost %d\n", $port));
  }

function	send_message($str)
{
  global	$sock, $priority, $channel, $server, $user;
  fwrite($sock, sprintf("%s %d PRIVMSG %s :%s -> %s\n", $server, $priority, $channel, $user, $str));
}

function	grand_garcon()
{
  global	$params;

  if (!count($params))
  {
	send_message("t'es pas trop une petite fille");
  }

  foreach ($params as $garcon)
  {
	send_message("t'es une vraie grande fille " . $garcon);
  }
}

grand_garcon($argv);
fclose($sock);
