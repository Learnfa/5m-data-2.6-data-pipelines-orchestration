Connect to your project
Get the connection strings and environment variables for your app.

Connection String
App Frameworks
Mobile Frameworks
ORMs
MCP
Type

URI
Source

Primary database
Method

Session pooler
Learn how to connect to your Postgres databases.
Read docs

Session pooler
Shared Pooler
Only recommended as an alternative to Direct Connection, when connecting via an IPv4 network.

postgresql://postgres.kahgcnexowsyuvtllvcn:[YOUR-PASSWORD]@aws-1-ap-northeast-2.pooler.supabase.com:5432/postgres
pizza_skxw1234

View parameters
host:
aws-1-ap-northeast-2.pooler.supabase.com

port:
5432

database:
postgres

user:
postgres.kahgcnexowsyuvtllvcn

pool_mode:
session

For security reasons, your database password is never shown.
IPv4 compatible
Session pooler connections are IPv4 proxied for free
Only use on a IPv4 network
Session pooler connections are IPv4 proxied for free.

Use Direct Connection if connecting via an IPv6 network.


-------------------
direct conn

Direct connection
Ideal for applications with persistent and long-lived connections, such as those running on virtual machines or long-standing containers.

postgresql://postgres:[YOUR_PASSWORD]@db.kahgcnexowsyuvtllvcn.supabase.co:5432/postgres


View parameters
host:
db.kahgcnexowsyuvtllvcn.supabase.co

port:
5432

database:
postgres

user:
postgres

For security reasons, your database password is never shown.
Not IPv4 compatible
Use Session Pooler if on a IPv4 network or purchase IPv4 add-on
IPv4 add-on
Pooler settings

Some platforms are IPv4-only:
A few major platforms are IPv4-only and may not work with a Direct Connection:

Vercel
GitHub Actions
Render
Retool
If you wish to use a Direct Connection with these, please purchase IPv4 support.

You may also use the Session Pooler or Transaction Pooler if you are on a IPv4 network.