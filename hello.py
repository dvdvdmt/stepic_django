def app(env, start_response):
    data = str(env['QUERY_STRING']).replace('&', '\n')
    start_response("200 OK", [
        ("Content-Type", "text/plain")
    ])
    return [data]
