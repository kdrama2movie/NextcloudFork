<?php
$CONFIG = array (
  'objectstore' => array(
    'class' => '\\OC\\Files\\ObjectStore\\S3',
    'arguments' => array(
      'bucket' => getenv('OBJECTSTORE_S3_BUCKET'),
      'autocreate' => true,
      'key'    => getenv('OBJECTSTORE_S3_KEY'),
      'secret' => getenv('OBJECTSTORE_S3_SECRET'),
      'hostname' => getenv('OBJECTSTORE_S3_HOST'),
      'port' => getenv('OBJECTSTORE_S3_PORT'),
      'use_ssl' => false,
      'region' => 'optional',
      'use_path_style' => true,
    ),
  ),
);
