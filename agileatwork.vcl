vcl 4.0;

backend default {
  .host = "agileatwork";
  .port = "7800";
}

sub vcl_deliver {
  if (obj.hits > 0) {
    set resp.http.X-Cache = "HIT";
  } else {
    set resp.http.X-Cache = "MISS";
  }
}

