# Silver Layer Overview

## Tables

The silver layer contains three tables.

### silver_airports
Dimension table containing airport information.

### silver_runways
Dimension table containing runway information.

### silver_airport_comments
This table contains omments about airports. 

## Relationships

All three tables are connected through the `airport_ident` field:

```
silver_airports (parent)
    |
    +-- silver_runways (one airport has many runways)
    |
    +-- silver_airport_comments (one airport has many comments)
```

## Data Quality

- Unknown runway surfaces are standardized to `__UNKNOWN__`
- Unknown commenter nicknames are standardized to `__UNKNOWN__`
- Empty or null comment bodies are filtered out
- All primary keys are unique and not null
