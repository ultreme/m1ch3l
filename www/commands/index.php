<?php

error_reporting(E_ALL);

define("COMMANDS_DIR", "/home/m1ch3l/gorobot/root/scripts/public");

function commands_list()
{
	$entries = scandir(COMMANDS_DIR);
	$commands = array();
	foreach ($entries as $file)
	{
		if (preg_match_all('/^([a-zA-Z0-9]+)\.cmd$/', $file, $out))
		{
                      $commands[] = $out[1][0];
		}
	}
	return $commands;
}

function command_get_name($input)
{
	# Remove potential null-bytes
	$input = str_replace("\0", "", $input);
	
	if (preg_match('/^[a-zA-Z0-9]+$/', $input))
	{
		return "$input" . ".cmd";
	}

	return NULL;
}

function command_get_desc($input)
{
	return substr(escapeshellcmd(str_replace("\n", " ", $input)), 0, 150);
}

$commands = commands_list();
$error = NULL;
$success = NULL;

if (isset($_POST) && isset($_POST['command']) && isset($_POST['output']))
{
	$name = command_get_name($_POST['command']);
	if (!$name)
	{
		$error = "Nom de comm4nde invalid3, que d3s chiffr3s et des l3ttres!";
	}
	else
	{
		$desc = command_get_desc($_POST['output']);
		if (!$desc)
		{
			$error = "c0ntenu 1valid3!";
		}
		else
		{
			$cmd = "#!/usr/bin/env bash\n";
			$cmd.= "po=\$1\n";
			$cmd.= "se=\$2\n";
			$cmd.= "ch=\$3\n";
			$cmd.= "us=\$4\n";
			$cmd.= "\n";
			$cmd.= 'echo "$se 1 PRIVMSG $ch :${us}> ' . $desc . '" | nc -q 1 localhost $po';

			$target = COMMANDS_DIR . "/" . $name;
			if (!file_exists($target))
			{
				file_put_contents($target, $cmd);
				chmod($target, 0777);
				$success = "comm4nd3 add3d!!!!";
				$commands = commands_list();
			}
			else
			{
				$error = "3rr0r: 7 comm4nde exist3 deja!";
			}
		}
	}
}
?>
<html>
  <head>
  </head>
  <body>

    <h1>m1ch3l contr0l center 2000</h1>
    <form action="" method="POST">
      <input type="text" name="command" value="nom" />
      <input type="text" name="output" value="contenu" />
      <input type="submit" value="4jout3r l@ comm4nde" />
    </form>

    <?php if ($error) : ?>
    <h1><?php echo $error; ?></h1>
    <?php endif; ?>

    <?php if ($success) : ?>
    <h1><?php echo $success; ?></h1>
    <?php endif; ?>

    <h2>Command3s disponibl3s (<?php echo count($commands); ?>)</h2>
    <ul>
      <?php foreach ($commands as $command) : ?>
      <li><?php echo $command; ?></li>
      <?php endforeach; ?>
    </ul>
  </body>
</html>

