# No cache

Running 10s test @ http://localhost:8080/
  1 threads and 1 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     1.95ms  380.23us  15.61ms   91.61%
    Req/Sec   512.75     45.11   555.00     85.00%
  Latency Distribution
     50%    1.87ms
     75%    1.94ms
     90%    2.30ms
     99%    2.66ms
  5109 requests in 10.01s, 1.31MB read
  Non-2xx or 3xx responses: 5109
Requests/sec:    510.53
Transfer/sec:    133.62KB

Running 10s test @ http://localhost:8080/
  2 threads and 2 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     2.16ms  268.47us   8.02ms   75.32%
    Req/Sec   460.63     41.61   540.00     68.00%
  Latency Distribution
     50%    2.11ms
     75%    2.29ms
     90%    2.52ms
     99%    2.93ms
  9174 requests in 10.01s, 2.34MB read
  Non-2xx or 3xx responses: 9174
Requests/sec:    916.82
Transfer/sec:    239.96KB

Running 10s test @ http://localhost:8080/
  5 threads and 5 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     2.33ms  327.11us   9.66ms   77.46%
    Req/Sec   427.59     25.07   460.00     87.20%
  Latency Distribution
     50%    2.30ms
     75%    2.48ms
     90%    2.69ms
     99%    3.30ms
  21297 requests in 10.01s, 5.66MB read
  Non-2xx or 3xx responses: 17068
Requests/sec:   2127.69
Transfer/sec:    578.75KB

Running 10s test @ http://localhost:8080/
  10 threads and 10 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     2.84ms  633.73us  14.02ms   78.55%
    Req/Sec   352.06     28.35   400.00     84.20%
  Latency Distribution
     50%    2.74ms
     75%    3.10ms
     90%    3.55ms
     99%    4.92ms
  35085 requests in 10.01s, 8.97MB read
  Non-2xx or 3xx responses: 35085
Requests/sec:   3505.10
Transfer/sec:      0.90MB

# With cache

Running 10s test @ http://localhost:8080/
  1 threads and 1 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     0.96ms  140.41us   6.42ms   87.57%
    Req/Sec     1.04k    81.63     1.12k    80.00%
  Latency Distribution
     50%    0.91ms
     75%    1.00ms
     90%    1.11ms
     99%    1.33ms
  10329 requests in 10.00s, 3.11MB read
Requests/sec:   1032.71
Transfer/sec:    318.70KB

Running 10s test @ http://localhost:8080/
  2 threads and 2 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     2.72ms  339.43us   5.11ms   75.99%
    Req/Sec   367.38     33.38   404.00     79.50%
  Latency Distribution
     50%    2.63ms
     75%    2.84ms
     90%    3.21ms
     99%    3.83ms
  7325 requests in 10.01s, 1.87MB read
  Non-2xx or 3xx responses: 7325
Requests/sec:    731.53
Transfer/sec:    191.45KB

Running 10s test @ http://localhost:8080/
  5 threads and 5 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     3.90ms  535.65us   8.85ms   74.33%
    Req/Sec   256.36     15.51   290.00     75.40%
  Latency Distribution
     50%    3.87ms
     75%    4.19ms
     90%    4.53ms
     99%    5.40ms
  12776 requests in 10.01s, 3.27MB read
  Non-2xx or 3xx responses: 12776
Requests/sec:   1276.38
Transfer/sec:    334.08KB

Running 10s test @ http://localhost:8080/
  10 threads and 10 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     7.82ms    2.12ms  22.74ms   81.50%
    Req/Sec   128.20     15.20   171.00     70.40%
  Latency Distribution
     50%    7.72ms
     75%    8.46ms
     90%    9.94ms
     99%   14.60ms
  12780 requests in 10.02s, 3.32MB read
  Non-2xx or 3xx responses: 11299
Requests/sec:   1275.85
Transfer/sec:    339.43KB