# A predicate that checks if a column is not null or has a default value.
predicate "column" "not_null_or_have_default" {
  or {
    default {
      ne = null
    }
    null {
      eq = false
    }
  }
}

rule "schema" "disallow-null-columns" {
  description = "require columns to be not null or have a default value"
  table {
    column {
      assert {
        predicate = predicate.column.not_null_or_have_default
        message   = "column ${self.name} must be not null or have a default value"
      }
    }
  }
}