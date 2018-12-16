def give_change(value_back, currency_values=[100,50,20,10,5,1]):
    if value_back == 0:
        return []
    else:
        amount_of_this = value_back // currency_values[0]
        value_left = value_back % currency_values[0]
        bills = (amount_of_this * [currency_values[0]])
        return bills + give_change(value_left, currency_values[1:])


