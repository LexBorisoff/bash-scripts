if command -v web &>/dev/null; then
  alias mdn='web --engine=mdn'
  alias npmjs='web --engine=npm'
  alias github='web --engine=github'
  alias youtube='web --engine=youtube'
  alias yt='web --engine=youtube'
  alias ff='web --browser=firefox'
fi

domain() {
  curl --silent --write-out "%{http_code}\n" "https://www.whois.com/whois/$1" | grep -E "Creation Date:|Registry Expiry Date:"
}
