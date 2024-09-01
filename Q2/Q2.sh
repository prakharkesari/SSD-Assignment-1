#!/bin/bash

#password generation

passwordlength=$((RANDOM % 3 + 8))

# Ensure at least one of each type
upper=$(LC_ALL=C tr -dc 'A-Z' < /dev/urandom | head -c 1)
lower=$(LC_ALL=C tr -dc 'a-z' < /dev/urandom | head -c 1)
special=$(LC_ALL=C tr -dc '%&#$@()!' < /dev/urandom | head -c 1)

# Fill the remaining characters randomly
remaining_length=$((passwordlength - 3))
remaining=$(LC_ALL=C tr -dc 'A-Za-z%&#$@()!' < /dev/urandom | head -c $remaining_length)

# Concatenate and shuffle to mix the characters
password="$upper$lower$special$remaining"
password=$(echo "$password" | fold -w1 | shuf | tr -d '\n')




#account number generation
DIFF=$((14-12+1))
accountlength=$(($(($RANDOM%$DIFF))+12))

is_fib() { #check  for fibonacci in the series
    local number="$1"
    local length="${#number}"
    
    i=0
    while (( i < length - 2 )); do
        a=${number:i:1}
        b=${number:i+1:1}
        c=${number:i+2:1}
    
    if (( a + b == c )); then
        return 0
    fi
    
    ((i++))  # Increment the loop variable
done
return 1

}

account() {

    local DIFF=$((14-12+1))
    local length=$(($(($RANDOM%$DIFF))+12))

    while :; do
        account_no=""

        firstDigit=$((RANDOM % 9 + 1)) #first digit shoukd not contain zero
        account_no="$firstDigit"

        i=1
        while (( i < length )); do
            account_no+=$((RANDOM % 10))
            ((i++))  # Increment the loop counter
        done


        if is_fib "$account_no"; then
            continue
        fi

        if [[ "$account_no" =~ ([0-9])\1\1 ]]; then
            continue
        fi

        break
    done

    echo "$account_no" 
}

account_no=$(account)

echo "Account Number :$account_no"

echo "Password :$password"