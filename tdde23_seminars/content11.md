### Något i kursen som varit extra svårt?


--

### Undantagshantering

Lägg in undantagshantering i följande funktioner


```python
def run_with_lock():
    while file_exists("/tmp/lock")
        pass
    create_file("/tmp/lock")
    do_some_processing()
    remove_file("/tmp/lock") # What happens if this is never run?
```


```python
days = ["monday", "tuesday", ... "sunday"]
def get_nth_day(n):
    return days[n]
```

```python
def user_function():
    day_number = input("Enter day number")
    day_name = get_nth_day(day_number)
    print("The name of day {} is {}".format(day_number, day_name))
```
