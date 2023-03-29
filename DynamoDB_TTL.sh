for i in {1..100}
do
        epocDate=$(date -d '10 mins' "+%s")
        EmpID=$epocDate
        EmpName="EmpName$epocDate"

        echo $epocDate + $EmpID + $EmpName
        sleep 1
        aws dynamodb put-item --table-name SMTestDynamoDB --item '{"EmpID":{"N":"'$EmpID'"}, "EmpName":{"S":"'$EmpName'"}, "TTL":{"N":"'$epocDate'"}}'
done
