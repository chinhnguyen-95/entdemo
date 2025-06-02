lint {
  rule "hcl" "name" {
    src = [ "atlas.rule.hcl" ]
  }
}

env "local" {
  dev = "docker://mysql/8/ent"
  migration {
    dir = "file://./migrations"
  }
}