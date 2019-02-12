#!/bin/bash
export MB_DB_TYPE=postgres
export MB_DB_DBNAME=reports
export MB_DB_PORT=5432
export MB_DB_USER=metabase
export MB_DB_PASS=metabase
export MB_DB_HOST=localhost
export MB_JETTY_PORT=80
## Limitando a memória alocada
java -Xmx512m -jar metabase.jar
