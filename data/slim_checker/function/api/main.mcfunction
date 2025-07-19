

function slim_checker:core/0.start


# returnする

execute if entity @s[scores={slim_checker.is_slim=1}] run \
    return 1


return fail

