DBHOST=$1
DBPASSWORD=$2
DBNAME=$3
ACCESSKEY=$4
SECRET=$5
DATE=$(date +%H-%M-%S)
BUCKET=$6
BACKUP=db-$DATE.sql

mysqldump --column_statistics=0 -u root -h $DBHOST -p$DBPASSWORD $DBNAME > /tmp/$BACKUP && \
export AWS_ACCESS_KEY_ID=$ACCESSKEY && \
export AWS_SECRET_ACCESS_KEY=$SECRET && \
echo "Uploading db backup" && \
aws s3 cp /tmp/db-$DATE.sql s3://$BUCKET/$BACKUP
