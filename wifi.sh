#!/bin/bash

# Full list of usernames and passwords (starts at 2)
declare -A credentials=(
  [2]="codne241f-002 Qab11083"
  [3]="codne241f-003 Dow32074"
  [4]="codne241f-004 Yay23080"
  [5]="codne241f-005 Sag63038"
  [6]="codne241f-006 Dok66231"
  [7]="codne241f-007 Mol62687"
  [8]="codne241f-008 Cam21482"
  [9]="codne241f-009 Yod09151"
  [10]="codne241f-010 Cuh18999"
  [11]="codne241f-011 Pol97346"
  [12]="codne241f-012 Nod67291"
  [13]="codne241f-013 Fob47879"
  [14]="codne241f-014 Jas72113"
  [15]="codne241f-015 Koj10788"
  [16]="codne241f-016 Maq51859"
  [17]="codne241f-017 Suc49343"
  [18]="codne241f-018 Yop58735"
  [19]="codne241f-019 Gof83772"
  [20]="codne241f-020 Puv68503"
  [21]="codne241f-021 Dum31159"
  [22]="codne241f-022 Jok95532"
  [23]="codne241f-023 Gay69241"
  [24]="codne241f-024 Ruf28710"
  [25]="codne241f-025 Nak75088"
  [26]="codne241f-026 Luw92304"
  [27]="codne241f-027 Hop45519"
  [28]="codne241f-028 Mog96382"
  [29]="codne241f-029 Bar58019"
  [30]="codne241f-030 Pal46831"
  [31]="codne241f-031 Kuv19334"
  [32]="codne241f-032 Mat73709"
  [33]="codne241f-033 Roy82014"
  [34]="codne241f-034 Xaw54393"
  [35]="codne241f-035 Vuy37802"
  [36]="codne241f-036 Hok28131"
  [37]="codne241f-037 Goc63463"
  [38]="codne241f-038 But73923"
  [39]="codne241f-039 Buc96079"
  [40]="codne241f-040 Yor70709"
  [41]="codne241f-041 Saj45475"
  [42]="codne241f-042 Duj67989"
  [43]="codne241f-043 Lom98232"
  [44]="codne241f-044 Tud51869"
  [45]="codne241f-045 Low71614"
  [46]="codne241f-046 Rux89914"
  [47]="codne241f-047 Fut70541"
  [48]="codne241f-048 Quk53546"
  [49]="codne241f-049 Doq90088"
  [50]="codne241f-050 Zat48519"
  [51]="codne241f-051 Zap68001"
  [52]="codne241f-052 Mof52838"
  [53]="codne241f-053 Kuj74577"
  [54]="codne241f-054 Wuh18425"
  [55]="codne241f-055 Bav62511"
  [56]="codne241f-056 Bah08874"
  [57]="codne241f-057 Bur54719"
  [58]="codne241f-058 Guc45978"
  [59]="codne241f-059 Gak21756"
  [60]="codne241f-060 Pac99781"
  [61]="codne241f-061 Nun64089"
  [62]="codne241f-062 Bug17450"
  [63]="codne241f-063 Cas48538"
)

# Display menu
echo "======= DNE-FT Wi-Fi Login Selector ======="
for i in $(seq 2 63); do
  echo "$i) ${credentials[$i]%% *}"
done

read -p "Enter the number of the account you want to use: " choice

cred="${credentials[$choice]}"
username="${cred%% *}"
password="${cred##* }"

if [ -z "$username" ]; then
  echo "❌ Invalid choice. Please enter a number from 2 to 63."
  exit 1
fi

echo "🔐 Logging in with $username..."

# Simulate Cyberoam login (adjust URL/port if needed)
curl -s -X POST "http://192.168.31.254:8090/httpclient.html" \
  -d "mode=191" \
  -d "username=$username" \
  -d "password=$password" \
  -d "a=$(date +%s%3N)" \
  -d "producttype=0"

echo -e "\n✅ Login attempted with $username. Check if you're online!"
