# Databricks notebook source
import os

s3_path = os.getenv('S3_PATH', 'noentro S3')
db_url = os.getenv('DB_URL', 'noentro DBURL')
operation_mode = os.getenv('OPERATION_MODE', 'noentro OPERATIONMODE')
db_secrets_scope = os.getenv('DB_SECRETS_SCOPE', 'noentro DBSECRETSSCOPE')
s3_read_prefix = os.getenv('S3_READ_PREFIX', 'noentro S3READ')
s3_write_prefix = os.getenv('S3_WRITE_PREFIX', 'noentro S3WRITE')

print("S3PATH")
print(s3_path)

print("DBURL")
print(db_url)

print("OPERATION_MODE")
print(operation_mode)

print("DB_SECRETS_SCOPE")
print(db_secrets_scope)

print("S3_READ_PREFIX")
print(s3_read_prefix)

print("S3_WRITE_PREFIX")
print(s3_write_prefix)

print("email sent porfin xD dev7 xDDD")
