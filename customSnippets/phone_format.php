<?php

$input_without_spaces = trim($input);
$pattern = '/^(\d)(\d{3})(\d{3})(\d{2})(\d{2})$/';
$replacement = '8 (\2) \3-\4-\5';
$output = preg_replace($pattern, $replacement, $input_without_spaces);
return $output;