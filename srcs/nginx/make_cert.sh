openssl req -x509 -nodes -newkey rsa:2048 -days 365 -keyout $PATHKEY -out $PATHCERT -subj $SUBJ;