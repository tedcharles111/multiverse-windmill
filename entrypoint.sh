#!/bin/sh
echo "Setting CockroachDB default int size to 4..."
psql ${DATABASE_URL} -c "ALTER ROLE ALL SET default_int_size = 4; ALTER DATABASE defaultdb SET default_int_size = 4;" 2>/dev/null
echo "Starting Windmill..."
exec /usr/local/bin/windmill-server
