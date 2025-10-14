while IFS=, read -r id name email age city sub
do
  if [[ "$age" =~ [0-9]+$ ]]; then
  echo "$id, $email, $age, $city, $sub" >> formatted_customer_profiles.csv
  echo "added"
  fi
done < customer_profiles.csv

while IFS=, read -r id name email age city sub
do
  
done < customer_profiles.csv