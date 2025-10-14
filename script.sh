while IFS=, read -r id name email age city sub
do
  if [[ "$age" =~ [0-9]+$ ]]; then
  echo "$id,$email,$age,$city,$sub" >> formatted_customer_profiles.csv
  echo "added"
  fi
done < customer_profiles.csv

while IFS=, read -r id date content_id type duration
do
  if [[ "$date" =~ ^(0[1-9]|1[012])[- /.](0[1-9]|[12][0-9]|3[01])[- /.](19|20)\d\d$ ]]; then
  if [[ "$duration" =~ [0-9]+$ ]]; then
  echo "$id,$date,$content_id,$type,$duration," >> formated_viewing_data.csv
  fi
  fi
done < viewing_data.csv